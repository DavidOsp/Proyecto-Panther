import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
import { routerTransition } from '../router.animations';
import { Docente} from '../entities/docente';
import { AppService } from '../app.service';


@Component({
    selector: 'app-login',
    templateUrl: './login.component.html',
    styleUrls: ['./login.component.scss'],
    animations: [routerTransition()],
    providers: [AppService],
})
export class LoginComponent implements OnInit {
    public data:Docente;
    constructor( public router:Router ) 
        {

        }

        


    
    ngOnInit() {}

    onLoggedin() {
                
       // this._PHService.loginUser().subscribe(data => this.data= data);   
        
       // console.log(this.data.email);
    
                  localStorage.setItem('isLoggedin', 'true');
                  //  console.log('  logeado ');
               
                
           
        
        
        

    }

      


        

    
}
