package entidades; // Declaração do pacote onde a classe está localizada

import io.quarkus.hibernate.orm.panache.PanacheEntityBase; // Importa a classe base PanacheEntityBase, que fornece métodos utilitários para manipulação de entidades
import jakarta.persistence.*; // Importa todas as classes da biblioteca de persistência JPA (como Entity, Id, GeneratedValue, etc.)
import lombok.ToString;

import java.time.LocalDate; // Importa a classe LocalDate para manipulação de datas
import java.util.Date;

@Entity // Declara que a classe é uma entidade JPA
@Table(name = "produto")
@ToString // Usa Lombok para gerar automaticamente o método toString() para a classe
public class Produto extends PanacheEntityBase { // Define a classe Produto que herda de PanacheEntityBase para utilizar os métodos utilitários de Panache

    @Id // Indica que o campo 'codigo' é a chave primária da entidade
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Especifica que o valor de 'codigo' será gerado automaticamente pelo banco de dados, usando a estratégia de identidade
    public Integer codigo; // Define o campo 'codigo' para armazenar o código do produto

    public String nome; // Define o campo 'nome' para armazenar o nome do produto

    public Integer quantidade; // Define o campo 'quantidade' para armazenar a quantidade do produto em estoque

    public Double preco; // Define o campo 'preco' para armazenar o preço do produto

    public Date validade; // Define o campo 'validade' para armazenar a data de validade do produto

    public Boolean ativo; // Define o campo 'ativo' para armazenar o status de atividade do produto

    @ManyToOne(fetch = FetchType.EAGER) // Define um relacionamento muitos-para-um entre Produto e Categoria e especifica o tipo de carregamento como "EAGER"
    public Categoria categoria; // Define o campo 'categoria' para associar o produto a uma categoria
}
