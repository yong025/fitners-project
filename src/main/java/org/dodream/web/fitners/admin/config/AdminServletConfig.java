package org.dodream.web.fitners.admin.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@EnableWebMvc
@ComponentScan(basePackages = "org.dodream.web.fitners.admin.controller")
public class AdminServletConfig implements WebMvcConfigurer {

}
