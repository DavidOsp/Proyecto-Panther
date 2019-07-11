import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { User } from './entities/user';
import {Pregunta} from './entities/pregunta';
import {Modulo} from './entities/modulo';
import {Fecha} from './entities/fecha';
import { Observable } from 'rxjs';
import { HttpHeaders } from '@angular/common/http';
import { Router } from '@angular/router';
import {Docente} from './entities/docente';
import { actividadesControladas } from './entities/actividadesControladas';

const httpOptions = {
    headers: new HttpHeaders({
        'Content-Type':  'application/json',
        'authorization': '750e8b43e5ed564462c90ef0d382db26'
    })
};


@Injectable()
export class AppService {
    private _base = 'http://localhost/j4panther/rest/';
    private _urlUser = `${this._base}persons/`;
    private _urlPregunta= `${this._base}preguntas/`;
    private _urlModulo= `${this._base}modulos/`;
    private _urlFecha= `${this._base}fechas/`;
    private _urlDocente = `${this._base}docentes`;
    private _urlActividadesC = `${this._base}actividadesControladas`;
  constructor(
    private http: HttpClient,
    private router: Router
  ) {}


//  ----------- INICIO SERVICIO DE LOGIN Y REGISTRO DE USUARIOS EN LA PAGINA 

    loginUser(email): Observable<Docente[]> {
        return this.http.get<Docente[]>(`${this._urlDocente}${email}`);
      }
    

    registerUser(data) {
      this.http.post<Docente[]>(`${this._urlDocente}`, data, httpOptions).subscribe(
          () => { },
      );
    }


    
    
    

//  -----------  FIN SERVICIO DE LOGIN Y REGISTRO DE USUARIOS EN LA PAGINA     

//  -----------  INICIO DE SERVICIO DE PRUEBA DEREGISTRO DE USUARIOS EN LA PAGINA 
/**
 *  SERVICIO DE PRUEBA, DESCOMENTAR SI SE PRESENTAN FALLOS EN LOS USUARIOS DOCENTES PARA PRUEBAS DE CONEXION.
 
    getDocentes(): Observable<any>{
      return this.http.get<Docente[]>(this._urlDocente, httpOptions);
    }
 */  

//  -----------  FIN DE SERVICIO DE PRUEBA DE REGISTRO DE USUARIOS EN LA PAGINA


  getUsers(): Observable<User[]> {
    return this.http.get<User[]>(this._urlUser, httpOptions);
  }

  getUserId(id): Observable<User[]> {
    return this.http.get<User[]>(`${this._urlUser}${id}`);
  }

  editUser(data,id) {
    this.http.put<User[]>(`${this._urlUser}${id}`, data, httpOptions).subscribe(
      () => {});
  }

  createUser(data) {
    this.http.post<User[]>(`${this._urlUser}`, data, httpOptions).subscribe(
        () => { this.router.navigate(['/user-show']); },
    );
  }

  deleteUser(id) {
    this.http.delete(`${this._urlUser}${id}`, httpOptions).subscribe(
      () => {
        window.location.reload();
      });
  }

 //    elemento que obtiene las preguntas de la base de datos
     getPreguntas(): Observable<any>{
     return this.http.get<Pregunta[]>(this._urlPregunta, httpOptions);
   }


   //    elemento que obtiene los modulos  de la base de datos
        getModulo(): Observable<any>{
        return this.http.get<Modulo[]>(this._urlModulo, httpOptions);
      }

//  ----------- SERVICIO DE PARA VERIFICAR LA CONEXION A BASE DE DATOS DE LAS FECHAS

        getFecha(): Observable<any>{
        return this.http.get<Fecha[]>(this._urlFecha, httpOptions);
        }


        crearFecha(data,id:number) {
          console.log('Metodo crear');
          this.http.post<Fecha>(`${this._urlFecha}${id}`, data, httpOptions).subscribe(
              () => { this.router.navigate(['/lista']); },
          );
        }

        editarFecha(data,id) {
          console.log('Metodo editar');
          this.http.put<Fecha>(`${this._urlFecha}${id}`, data, httpOptions).subscribe(
            () => {});
        }
       
       
//  -----------  INICIO DEL SERVICIO DE PARA OBTENER LAS ACTIVIDADES CONTROLADAS

        getActividades():Observable<any>{
          return this.http.get<actividadesControladas[]>(this._urlActividadesC, httpOptions);
        }

//  ----------- FIN DEL SERVICIO DE PARA OBTENER LAS ACTIVIDADES CONTROLADAS

}
