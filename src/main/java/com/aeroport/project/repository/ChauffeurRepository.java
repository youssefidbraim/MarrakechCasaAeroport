package com.aeroport.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aeroport.project.model.chauffeur;

public interface ChauffeurRepository extends JpaRepository<chauffeur, String> {

}
