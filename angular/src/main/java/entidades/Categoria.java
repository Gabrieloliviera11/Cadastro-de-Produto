package entidades; // Declaração do pacote onde a classe está localizada

import io.quarkus.hibernate.orm.panache.PanacheEntityBase; // Importa a classe base PanacheEntityBase, que fornece métodos utilitários para manipulação de entidades
import jakarta.persistence.*;
import lombok.ToString; // Importa a anotação ToString da biblioteca Lombok para gerar automaticamente o método toString()

@Entity // Declara que a classe é uma entidade JPA
@Table(name = "categoria")
@ToString // Usa Lombok para gerar automaticamente o método toString() para a classe
public class Categoria extends PanacheEntityBase { // Define a classe Categoria que herda de PanacheEntityBase para utilizar os métodos utilitários de Panache

    @Id // Indica que o campo 'codigo' é a chave primária da entidade
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Especifica que o valor de 'codigo' será gerado automaticamente pelo banco de dados, usando a estratégia de identidade
    public Integer codigo; // Define o campo 'codigo' para armazenar o código da categoria

    public String nome; // Define o campo 'nome' para armazenar o nome da categoria

    public Boolean ativo; // Define o campo 'ativo' para armazenar o status de atividade da categoria
}