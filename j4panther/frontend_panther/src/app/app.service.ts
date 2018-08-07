import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { User } from './entities/user';
import {Pregunta} from './entities/pregunta';
import {Modulo} from './entities/modulo';
import { Observable } from 'rxjs';
import { HttpHeaders } from '@angular/common/http';
import { Router } from '@angular/router';

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

  constructor(
    private http: HttpClient,
    private router: Router
  ) {}

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




}
