package pl.edu.pk.biuropodrozy.domain;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "HOTEL_SEQ")
@RooEquals
public class Hotel {

    /**
     */
    @NotNull
    @Size(max = 255)
    private String name;

    /**
     */
    @NotNull
    @Size(max = 1024)
    private String description;

    /**
     */
    @NotNull
    private int stars;
}
