package entidades; // Declaração do pacote onde a classe está localizada

import io.quarkus.panache.common.Sort; // Importa a classe Sort da biblioteca Panache para ordenação de consultas
import io.quarkus.test.junit.QuarkusTest; // Importa a anotação QuarkusTest para indicar que a classe é um teste do Quarkus
import jakarta.transaction.Transactional; // Importa a anotação Transactional para gerenciar transações durante o teste
import org.junit.jupiter.api.Test; // Importa a anotação Test da biblioteca JUnit para definir métodos de teste

import java.util.List; // Importa a classe List para manipulação de listas

@QuarkusTest // Indica que esta classe contém testes do Quarkus
public class CategoriaTestes { // Declaração da classe de testes para a entidade Categoria

    @Test // Indica que este método é um teste
    @Transactional // Garante que o método seja executado dentro de uma transação
    public void salvar(){ // Método de teste para salvar uma nova categoria
        Categoria categoria = new Categoria(); // Cria uma nova instância da entidade Categoria
        categoria.nome = "Eletrônicos"; // Define o nome da categoria
        categoria.ativo = true; // Define a categoria como ativa

        categoria.persist(); // Persiste a categoria no banco de dados
        System.out.println("Registro salvo com sucesso!: " + categoria); // Imprime uma mensagem de sucesso após salvar
    }

    @Test // Indica que este método é um teste
    public void buscarPorCodigo(){ // Método de teste para buscar uma categoria pelo código
        Categoria categoria = Categoria.findById(2); // Busca a categoria com código 2
        System.out.println("Registro buscado com sucesso!: " + categoria); // Imprime a categoria encontrada
    }

    @Test // Indica que este método é um teste
    public void buscarPorAtivo(){ // Método de teste para buscar categorias ativas
        List<Categoria> categorias = Categoria.find(
                "ativo",
                Sort.ascending("nome"),
                true)
                .list(); // Busca categorias ativas ordenadas por nome em ordem crescente

        System.out.println("Registros buscados com sucesso!: " + categorias); // Imprime as categorias encontradas
    }

    @Test // Indica que este método é um teste
    @Transactional // Garante que o método seja executado dentro de uma transação
    public void excluir(){ // Método de teste para desativar (excluir logicamente) uma categoria
        Categoria categoria = Categoria.findById(2); // Busca a categoria com código 2
        categoria.ativo = false; // Define a categoria como inativa

        categoria.persist(); // Persiste a alteração no banco de dados

        System.out.println("Registro excluido com sucesso!: " + categoria); // Imprime uma mensagem de sucesso após a exclusão lógica
    }

    @Test // Indica que este método é um teste
    @Transactional // Garante que o método seja executado dentro de uma transação
    public void editar(){ // Método de teste para editar uma categoria
        Categoria categoria = Categoria.findById(6); // Busca a categoria com código 6
        categoria.nome = "Confeitaria"; // Altera o nome da categoria para "Confeitaria"
        categoria.ativo = true; // Define a categoria como ativa

        categoria.persist(); // Persiste a edição no banco de dados

        System.out.println("Registro editado com sucesso!: " + categoria); // Imprime uma mensagem de sucesso após a edição
    }
}
