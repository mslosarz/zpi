package pl.edu.pk.biuropodrozy.domain;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Value;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "TRIP_SEQ")
@RooEquals
public class Trip {

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
    private BigDecimal cost;

    /**
     */
    @NotNull
    @Value("true")
    private Boolean breakfast;

    /**
     */
    @NotNull
    @ManyToOne
    private Hotel hotel;

    /**
     */
    @NotNull
    @ManyToOne
    private Location location;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "trip")
    private Set<TripMember> members = new HashSet<TripMember>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "trip")
    private Set<Image> images = new HashSet<Image>();
}
