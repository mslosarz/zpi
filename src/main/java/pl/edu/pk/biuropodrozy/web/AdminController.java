package pl.edu.pk.biuropodrozy.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.edu.pk.biuropodrozy.domain.Admin;

@RequestMapping("/admins")
@Controller
@RooWebScaffold(path = "admins", formBackingObject = Admin.class)
public class AdminController {
}
