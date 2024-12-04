import { Component } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { TelinhaaServiceService } from '../telinhaa-service.service';
import { Categoria, UnidadeFederativa } from '../app.module'; // ajuste o caminho conforme o local do arquivo

@Component({
  selector: 'app-telinhaa',
  templateUrl: './telinhaa.component.html',
  styleUrls: ['./telinhaa.component.css']
})
export class TelinhaaComponent {
  form: FormGroup;

  constructor(
    private fb: FormBuilder,
    private telinhaaService: TelinhaaServiceService
  ) {
    // Criação do formulário com os campos 'nome', 'ufNome' e 'ufSiglas'
    this.form = this.fb.group({
      nome: [''],
      ufNome: [''],
      ufSiglas: ['']
    });
  }

  onSubmit() {
    if (this.form.valid) {
      // Captura os valores do formulário
      const categoria: Categoria = {
        nome: this.form.value.nome
      };

      const unidadeFederativa: UnidadeFederativa = {
        nome: this.form.value.ufNome,
        siglas: this.form.value.ufSiglas
      };

      // Envia a categoria ao backend
      this.telinhaaService.adicionarCategoria(categoria).subscribe(
        response => {
          console.log('Categoria enviada com sucesso:', response);

          // Após enviar a categoria, envia a unidade federativa
          this.telinhaaService.adicionarUf(unidadeFederativa).subscribe(
            ufResponse => {
              console.log('Unidade Federativa enviada com sucesso:', ufResponse);
            },
            ufError => {
              console.error('Erro ao enviar Unidade Federativa:', ufError);
            }
          );
        },
        error => {
          console.error('Erro ao enviar categoria:', error);
        }
      );
    }
  }
}
