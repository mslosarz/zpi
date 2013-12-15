package pl.edu.pk.biuropodrozy.domain;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Lob;
import org.springframework.roo.classpath.operations.jsr303.RooUploadedFile;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "IMAGE_SEQ")
@RooEquals
public class Image {

    /**
     */
    @RooUploadedFile(contentType = "image/jpeg")
    @Lob
    private byte[] image;

    /**
     */
    @ManyToOne
    private Trip trip;
}
