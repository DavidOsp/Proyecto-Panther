import { Component, OnInit } from '@angular/core';
import { routerTransition } from '../router.animations';
import { AppService } from '../app.service';
import { Docente }  from '../entities/docente';

@Component({
    selector: 'app-signup',
    templateUrl: './signup.component.html',
    styleUrls: ['./signup.component.scss'],
    animations: [routerTransition()],
    providers: [AppService]
})
export class SignupComponent implements OnInit {
    
    public docente:Docente
    
    
    constructor(
        private _PHService: AppService
    ) { 
        this.docente= new Docente();

        this.docente.id_user='2';
    }
    ngOnInit() {}

 
     registerUser(){
                
        this._PHService.registerUser
        (  
           this.docente
        );
        console.log(this.docente);

       
     }


     validateUser(){
      
         this._PHService.loginUser(this.docente);

         
     }
}
