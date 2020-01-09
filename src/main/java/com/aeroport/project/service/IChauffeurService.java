package com.aeroport.project.service;


import java.io.IOException;
import java.util.List;
import java.util.Optional;




import com.aeroport.project.model.chauffeur;

public interface IChauffeurService {
	
	List<chauffeur> getChauffeurs();

	Optional<chauffeur> getChauffeur(String cin);

	void updateChauffeur(chauffeur chauff);

	boolean addChauffeur(chauffeur chauf) throws IOException;

	void deleteChauffeur(String cin);
	
	void saveChauffeur(chauffeur chauff);
}
