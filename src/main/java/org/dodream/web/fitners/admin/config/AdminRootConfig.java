package org.dodream.web.fitners.admin.config;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@MapperScan(basePackages = "org.dodream.web.fitners.admin.mapper")
@ComponentScan(basePackages = "org.dodream.web.fitners.admin.service")
//@Import(AdminAOPConfig.class) //호출할 때 같이 호출하라는 의미
public class AdminRootConfig {

}
