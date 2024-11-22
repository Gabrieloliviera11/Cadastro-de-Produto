package entidades; // Declaração do pacote onde a classe está localizada

import io.quarkus.panache.common.Sort; // Importa a classe Sort da biblioteca Panache para ordenação de consultas
import io.quarkus.test.junit.QuarkusTest; // Importa a anotação QuarkusTest para indicar que a classe é um teste do Quarkus
import jakarta.transaction.Transactional; // Importa a anotação Transactional para gerenciar transações durante o teste
import org.junit.jupiter.api.Test; // Importa a anotação Test da biblioteca JUnit para definir métodos de teste

import java.util.List; // Importa a classe List para manipulação de listas

@QuarkusTest // Indica que esta classe contém testes do Quarkus
public class ProdutoTestes { // Declaração da classe de testes para a entidade Produto

    @Test // Indica que este método é um teste
    @Transactional // Garante que o método seja executado dentro de uma transação
    public void salvar(){ // Método de teste para salvar um novo produto
        Categoria categoria = Categoria.findById(2); // Busca a categoria com código 2

        Produto produto = new Produto(); // Cria uma nova instância da entidade Produto
        produto.nome = "Cebola"; // Define o nome do produto
        produto.preco = 10.0; // Define o preço do produto
        produto.quantidade = 5; // Define a quantidade do produto
        produto.ativo = true; // Define o produto como ativo
        produto.categoria = categoria; // Associa o produto à categoria encontrada

        produto.persist(); // Persiste o produto no banco de dados
        System.out.println("Registro salvo com sucesso!: " + produto); // Imprime uma mensagem de sucesso após salvar
    }

    @Test // Indica que este método é um teste
    @Transactional // Garante que o método seja executado dentro de uma transação
    public void excluir(){ // Método de teste para desativar (excluir logicamente) um produto
        Produto produto = Produto.findById(7); // Busca o produto com código 7
        produto.ativo = false; // Define o produto como inativo

        produto.persist(); // Persiste a alteração no banco de dados
        System.out.println("Registro excluido com sucesso!: " + produto); // Imprime uma mensagem de sucesso após a exclusão lógica
    }

    @Test // Indica que este método é um teste
    @Transactional // Garante que o método seja executado dentro de uma transação
    public void editar(){ // Método de teste para editar um produto
        Produto produto = Produto.findById(18); // Busca o produto com código 18
        produto.nome = "Suco de Uva"; // Altera o nome do produto para "Suco de Uva"

        produto.persist(); // Persiste a edição no banco de dados
        System.out.println("Registro editado com sucesso!: " + produto); // Imprime uma mensagem de sucesso após a edição
    }

    @Test // Indica que este método é um teste
    public void buscarPorCodigo(){ // Método de teste para buscar um produto pelo código
        Produto produto = Produto.findById(25); // Busca o produto com código 25
        System.out.println("Registro buscado com sucesso!: " + produto); // Imprime o produto encontrado
    }

    @Test // Indica que este método é um teste
    public void buscarPorAtivo(){ // Método de teste para buscar produtos ativos
        List<Produto> produtos = Produto.find(
                        "ativo", // Especifica o campo de busca "ativo"
                        Sort.ascending("nome"), // Define a ordenação crescente pelo nome do produto
                        true) // Define o valor de "ativo" como verdadeiro para filtrar produtos ativos
                .list(); // Executa a busca e retorna uma lista de produtos ativos

        System.out.println("Registros buscados com sucesso!: " + produtos); // Imprime os produtos encontrados
    }

    @Test // Indica que este método é um teste
    public void buscarPorAtivoEPorNome(){ // Método de teste para buscar produtos ativos que contenham um trecho específico no nome
        List<Produto> produtos = Produto.find(
                        "ativo = ?1 and nome like ?2", // Define a condição de busca: produtos ativos cujo nome contenha um determinado trecho
                        Sort.ascending("nome"), // Define a ordenação crescente pelo nome do produto
                        true, "%ce%") // Define os parâmetros da busca: produtos ativos cujo nome contenha "ce"
                .list(); // Executa a busca com os parâmetros e retorna a lista de produtos encontrados

        System.out.println("Registros buscados com sucesso!: " + produtos); // Imprime os produtos encontrados
    }
}
