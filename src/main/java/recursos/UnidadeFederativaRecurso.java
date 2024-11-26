package recursos;
import entidades.*;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;

import java.util.List;
@Path("projeto/unidadefederativa")
public class UnidadeFederativaRecurso {
    @POST
    @Transactional
    public Response adicionarUf(UnidadeFederativa  unidadeFederativa){
        unidadeFederativa.persist();
        return Response.status(Response.Status.CREATED).entity(unidadeFederativa).build();
    }
}
