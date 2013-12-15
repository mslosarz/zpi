package pl.edu.pk.biuropodrozy.domain;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "PAYMENT_SEQ")
@RooEquals
public class Payment {

    /**
     */
    @NotNull
    @ManyToOne
    private Trip trip;

    /**
     */
    @NotNull
    @ManyToOne
    private Customer customer;

    /**
     */
    @NotNull
    @Value("false")
    private Boolean paid;
}
