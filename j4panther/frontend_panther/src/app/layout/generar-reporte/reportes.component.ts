import { Component, ViewChild, ElementRef } from '@angular/core';
import { routerTransition } from '../../router.animations';
import { AppService } from '../../app.service';
import { Pregunta } from '../../entities/pregunta';
import { Modulo } from '../../entities/modulo';
import { actividadesControladas } from "../../entities/actividadesControladas";
import html2canvas from 'html2canvas';





@Component({

  templateUrl: './reportes.html',
  styleUrls: ['./reportes.scss'],
  animations: [routerTransition()],
  providers: [AppService]
})

export class ReportesComponent {

  @ViewChild('content') content: ElementRef;



  public preguntas: Pregunta[];
  public pregunta: Pregunta;
  public modulos: Modulo[];
  public modulo: Modulo;
  public actividades: actividadesControladas[];
  public actividad: actividadesControladas;
  public tab: number = 1;
  public porcentaje: any;



  constructor(
    private _PHService: AppService
  ) {

  }

  ngOnInit() {
    this.porcentaje = this.randomInt(0, 100);
    this.porcentaje = this.porcentaje + '%';

    console.log(this.getModulos());
    this.getPreguntas();
    this.getActividades();


  }
  // Inicio de  metodo que obtiene las actividades controladas
  getActividades() {
    this._PHService.getActividades().subscribe(
      resultado => {
        this.actividades = resultado.data;
      },
      error => {
        console.log(<any>error);
      }
    )
  }
  // Fin de  metodo que obtiene las actividades controladas

  // Inicio de  metodo que obtiene los modulos
  getModulos() {
    this._PHService.getModulo().subscribe(
      resultado => {
        this.modulos = resultado.data;

      },
      error => {
        console.log(<any>error);
      }
    )
  }
  // Fin de  metodo que obtiene los modulos

  // Inicio de  metodo que obtiene las preguntas
  getPreguntas() {

    this._PHService.getPreguntas().subscribe(
      resultado => {
        this.preguntas = resultado.data;

      },
      error => {
        console.log(<any>error);
      }
    )
  }
  // Fin de  metodo que obtiene las preguntas


  // metodos que permiten asignar la pestaña de los modulos de preguntas
  setTab(tab: number) {
    this.tab = tab;
  }

  getTab() {
    return this.tab;
  }
  // Fin de metodos de pestaña



  /** Utiliozado como ejemplo practico para la simulacion de animacion de las barras de progreso, se borrará despues de usar datos reales...
  * generate a random integer between min and max
  * @param {Number} min 
  * @param {Number} max
  * @return {Number} random generated integer 
  */
  randomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }


  imprimir() {

    html2canvas(document.querySelector('#content'), {
      dpi: 300,
      scale: 3
    }).then(canvas => {
      const data = canvas.toDataURL('image/jpeg', 1.0);
      this.abrirVentana(data);
    });
  }

  abrirVentana(data:string){
    const ventana = window.open('', 'PRINT', 'top=0,left=0,height=auto,width=auto');
    ventana.document.write('<html><head><title> Reporte </title>');
    ventana.document.write('</head><body >');
    ventana.document.write(`<img src="${data}" width="100%" height="auto">`);
    ventana.document.write('</body></html>');
    ventana.document.close();
    ventana.focus();
    ventana.onload = function () {
      ventana.print();
      ventana.close();
    };
  }


}