package recursos;
import entidades.*;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Path("projeto/categoria")
public class CategoriaRecurso {
    @POST
    @Transactional
    public Response adicionarCategoria(Categoria  categoria){
        categoria.persist();
        return Response.status(Response.Status.CREATED).entity(categoria).build();
    }
}
