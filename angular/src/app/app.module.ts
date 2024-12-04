import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { TelinhaaComponent } from './telinhaa/telinhaa.component';
import { TelinhaaServiceService } from './telinhaa-service.service';

@NgModule({
  declarations: [
    AppComponent,
    TelinhaaComponent,  // Ensure this component is declared here
  ],
  imports: [
    BrowserModule,
    ReactiveFormsModule,
    HttpClientModule,
  ],
  providers: [TelinhaaServiceService],
  bootstrap: [AppComponent]
})
export class AppModule { }
export interface Categoria {
  nome: string;
}
export interface UnidadeFederativa{
  nome: String;
  siglas: string;
}
