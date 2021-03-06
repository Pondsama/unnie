// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unun.web;

import com.sut.unun.domain.Chili;
import com.sut.unun.web.ChiliController;
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

privileged aspect ChiliController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ChiliController.create(@Valid Chili chili, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, chili);
            return "chilis/create";
        }
        uiModel.asMap().clear();
        chili.persist();
        return "redirect:/chilis/" + encodeUrlPathSegment(chili.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ChiliController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Chili());
        return "chilis/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ChiliController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("chili", Chili.findChili(id));
        uiModel.addAttribute("itemId", id);
        return "chilis/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ChiliController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("chilis", Chili.findChiliEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Chili.countChilis() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("chilis", Chili.findAllChilis(sortFieldName, sortOrder));
        }
        return "chilis/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ChiliController.update(@Valid Chili chili, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, chili);
            return "chilis/update";
        }
        uiModel.asMap().clear();
        chili.merge();
        return "redirect:/chilis/" + encodeUrlPathSegment(chili.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ChiliController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Chili.findChili(id));
        return "chilis/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ChiliController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Chili chili = Chili.findChili(id);
        chili.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/chilis";
    }
    
    void ChiliController.populateEditForm(Model uiModel, Chili chili) {
        uiModel.addAttribute("chili", chili);
    }
    
    String ChiliController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
