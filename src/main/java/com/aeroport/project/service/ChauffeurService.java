package com.aeroport.project.service;

import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.aeroport.project.model.Todo;
import com.aeroport.project.model.chauffeur;
import com.aeroport.project.repository.ChauffeurRepository;
import com.aeroport.project.repository.TodoRepository;

@Service
public class ChauffeurService implements IChauffeurService{

	@Autowired
	private ChauffeurRepository chauffeurRepository;
	
	public static String uploadDirectory = System.getProperty("user.dir")+"/uploads";
	
	

	@Override
	public List<chauffeur> getChauffeurs() {	
		return chauffeurRepository.findAll();
	}

	@Override
	public Optional<chauffeur> getChauffeur(String cin) {
		return chauffeurRepository.findById(cin);
		
	}

	@Override
	public void updateChauffeur(chauffeur chauff) {
		// TODO Auto-generated method stub
		
	}

	

	@Override
	public void deleteChauffeur(String cin) {
		Optional<chauffeur> chauff = chauffeurRepository.findById(cin);
		if (chauff.isPresent()) {
			chauffeurRepository.delete(chauff.get());
		}
		
	}

	@Override
	public void saveChauffeur(chauffeur chauff) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean addChauffeur(chauffeur chauf) throws IOException {
		 try {
			if(chauf !=null) {
				chauffeurRepository.save(chauf);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		 return false;
	}
	
	

	
}
