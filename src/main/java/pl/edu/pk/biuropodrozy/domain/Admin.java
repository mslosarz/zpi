package pl.edu.pk.biuropodrozy.domain;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "ADMIN_SEQ")
@RooEquals
public class Admin {

    /**
     */
    @NotNull
    @Size(min = 5, max = 32)
    private String login;

    /**
     */
    @NotNull
    @Size(max = 32)
    private String password;

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String firstName;

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String lastName;
}
