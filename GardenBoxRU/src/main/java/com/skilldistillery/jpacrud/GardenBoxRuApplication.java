package com.skilldistillery.jpacrud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class GardenBoxRuApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(GardenBoxRuApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(GardenBoxRuApplication.class, args);
	}

}
