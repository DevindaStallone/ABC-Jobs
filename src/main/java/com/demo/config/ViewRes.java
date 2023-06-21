package com.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;



@Configuration
@EnableWebMvc
@ComponentScan("com.demo.*")
public class ViewRes implements WebMvcConfigurer{
	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() {
	    InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
	    viewResolver.setPrefix("/WEB-INF/views/");
	    viewResolver.setSuffix(".jsp");
	    return viewResolver;
}
@Override
public void addResourceHandlers(ResourceHandlerRegistry registry)
{
	   registry.addResourceHandler("/css/**")
       .addResourceLocations("/resource/css/") ;
	   registry.addResourceHandler("/js/**")
       .addResourceLocations("/resource/js/") ;
	   registry.addResourceHandler("/image/**")
       .addResourceLocations("/resource/image/") ;
	
}
}
