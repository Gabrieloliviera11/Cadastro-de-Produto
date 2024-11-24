package recursos;
import entidades.*;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.List;

@Path("projeto/produto")
public class ProdutoRecurso {
    @POST
    @Transactional
    public Response adicionarProduto(Produto produto){
        produto.persist();
        return Response.status(Response.Status.CREATED).entity(produto).build();
    }
}
