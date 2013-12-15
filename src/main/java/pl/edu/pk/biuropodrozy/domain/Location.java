package pl.edu.pk.biuropodrozy.domain;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "LOCATION_SEQ")
@RooEquals
public class Location {

    /**
     */
    @NotNull
    @Size(max = 32)
    private String city;

    /**
     */
    @NotNull
    @Size(max = 32)
    private String country;
}
