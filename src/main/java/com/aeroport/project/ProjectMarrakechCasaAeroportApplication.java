package com.aeroport.project;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.aeroport.project.controller.ChauffeurController;

@SpringBootApplication
@ComponentScan({"com.aeroport.project","com.aeroport.project.controller","com.aeroport.project.service"})
public class ProjectMarrakechCasaAeroportApplication {

	public static void main(String[] args) {
		new File(ChauffeurController.uploadDircetory).mkdir();
		SpringApplication.run(ProjectMarrakechCasaAeroportApplication.class, args);
	}

}
