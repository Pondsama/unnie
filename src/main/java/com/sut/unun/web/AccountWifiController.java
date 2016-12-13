package com.sut.unun.web;
import com.sut.unun.domain.AccountWifi;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/accountwifis")
@Controller
@RooWebScaffold(path = "accountwifis", formBackingObject = AccountWifi.class)
public class AccountWifiController {
}
