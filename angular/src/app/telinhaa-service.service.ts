import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Categoria } from './app.module';
import { UnidadeFederativa } from './app.module';

@Injectable({
  providedIn: 'root'
})
export class TelinhaaServiceService {
  private categoriaUrl = 'http://localhost:8080/projeto/categoria';
  private unidadeFederativaUrl = 'http://localhost:8080/projeto/unidadefederativa';

  constructor(private http: HttpClient) {}

  adicionarCategoria(categoria: Categoria): Observable<Categoria> {
    return this.http.post<Categoria>(this.categoriaUrl, categoria);
  }

  adicionarUf(unidadeFederativa: UnidadeFederativa): Observable<UnidadeFederativa> {
    return this.http.post<UnidadeFederativa>(this.unidadeFederativaUrl, unidadeFederativa);
  }
}
