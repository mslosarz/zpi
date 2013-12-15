package pl.edu.pk.biuropodrozy.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.edu.pk.biuropodrozy.domain.TripMember;

@RequestMapping("/tripmembers")
@Controller
@RooWebScaffold(path = "tripmembers", formBackingObject = TripMember.class)
public class TripMemberController {
}
