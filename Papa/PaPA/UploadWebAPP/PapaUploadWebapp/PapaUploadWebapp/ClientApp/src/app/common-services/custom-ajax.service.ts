import { Injectable, ErrorHandler } from '@angular/core';
import { Observable, throwError, OperatorFunction } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { HttpClient, HttpErrorResponse, HttpResponse, HttpParams } from '@angular/common/http';
import { environment } from '../../environments/environment';
export declare interface UserDetails {
  name: string;
  emailId: string;
}
@Injectable({
  providedIn: 'root'
})
export class CustomAjaxService {

  constructor(private httpClient: HttpClient) { }

  signOut() {
    window.location.href = environment.subApplicationURl + "/Account/LogOut";
  }

  signIn(){
    window.location.href = environment.subApplicationURl + "/Account/ClearCookie";
  }

  private handleError(errorResponse: HttpErrorResponse): Observable<any>{
    if (errorResponse.status === 401) {
      window.location.href = environment.subApplicationURl + "/Account/ClearCookie";
    }
    console.log(errorResponse);
    return throwError(errorResponse.message || 'something went wrong');
  }

  getFlag(url: string): Observable<boolean> {
    return this.httpClient.get(url).pipe(
      catchError(this.handleError)
    );
  }
  getUserDetails(url: string): Observable<UserDetails> {
    return this.httpClient.get(url).pipe(
      catchError(this.handleError)
    );
  }

  getData(url: string): Observable<object>{
    return this.httpClient.get(url).pipe(
      catchError(this.handleError)
    );
  }

  getWithParamsData(url: string, param: HttpParams): Observable<object>{
    return this.httpClient.get(url, {
      params: param
    }).pipe(
      catchError(this.handleError)
    );
  }

  postWithParamData(url: string, data: object): Observable<object>{
    return this.httpClient.post(url, data).pipe(
      catchError(this.handleError)
    );
  }  
}
