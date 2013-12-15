package pl.edu.pk.biuropodrozy.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.edu.pk.biuropodrozy.domain.Image;

@RequestMapping("/images")
@Controller
@RooWebScaffold(path = "images", formBackingObject = Image.class)
public class ImageController {
}
