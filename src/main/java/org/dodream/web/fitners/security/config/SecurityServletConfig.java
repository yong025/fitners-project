package org.dodream.web.fitners.security.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;

@Configuration
@ComponentScan(basePackages = "org.dodream.web.fitners.security.controller")
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityServletConfig {
}
