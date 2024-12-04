package entidades;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import lombok.ToString;

@Entity
@Table(name = "unidadefederativa")
@ToString
public class UnidadeFederativa extends PanacheEntityBase {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer codigo;
    public String nome;
    public String sigla;
    public boolean ativo;

}
