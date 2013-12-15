package pl.edu.pk.biuropodrozy.domain;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "TRIP_MEMBER_SEQ")
@RooEquals
public class TripMember {

    /**
     */
    @ManyToOne
    private Trip trip;

    /**
     */
    @ManyToOne
    private Member member;
}
