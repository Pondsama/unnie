package com.sut.unun.web;
import com.sut.unun.domain.Chili;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/chilis")
@Controller
@RooWebScaffold(path = "chilis", formBackingObject = Chili.class)
public class ChiliController {
}
