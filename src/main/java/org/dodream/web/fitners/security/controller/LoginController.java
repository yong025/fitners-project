package org.dodream.web.fitners.security.controller;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@Log4j2
public class LoginController {

    @GetMapping("/customLogin")
    public void loginCustom() {

        log.warn("=====================custom login get....=================");
    }

    @PostMapping("/logout")
    public void logout() {

        log.warn("=======================logout=======================");

    }

}
