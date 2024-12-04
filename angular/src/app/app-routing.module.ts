import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TelinhaaComponent } from './telinhaa/telinhaa.component';

const routes: Routes = [{path: '', component:TelinhaaComponent}];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
