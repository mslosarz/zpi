// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;
import pl.edu.pk.biuropodrozy.domain.Image;
import pl.edu.pk.biuropodrozy.domain.Trip;
import pl.edu.pk.biuropodrozy.web.ImageController;

privileged aspect ImageController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ImageController.create(@Valid Image image, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, image);
            return "images/create";
        }
        uiModel.asMap().clear();
        image.persist();
        return "redirect:/images/" + encodeUrlPathSegment(image.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ImageController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Image());
        return "images/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ImageController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("image", Image.findImage(id));
        uiModel.addAttribute("itemId", id);
        return "images/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ImageController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("images", Image.findImageEntries(firstResult, sizeNo));
            float nrOfPages = (float) Image.countImages() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("images", Image.findAllImages());
        }
        return "images/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ImageController.update(@Valid Image image, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, image);
            return "images/update";
        }
        uiModel.asMap().clear();
        image.merge();
        return "redirect:/images/" + encodeUrlPathSegment(image.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ImageController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Image.findImage(id));
        return "images/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ImageController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Image image = Image.findImage(id);
        image.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/images";
    }
    
    void ImageController.populateEditForm(Model uiModel, Image image) {
        uiModel.addAttribute("image", image);
        uiModel.addAttribute("trips", Trip.findAllTrips());
    }
    
    String ImageController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}