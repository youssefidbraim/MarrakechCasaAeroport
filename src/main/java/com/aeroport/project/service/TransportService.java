package com.aeroport.project.service;

import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aeroport.project.model.Transport;

import com.aeroport.project.repository.TransportRepository;

@Service
public class TransportService implements ITransportService{

	@Autowired
	private TransportRepository transportRepository;
	
	public static String uploadDirectory = System.getProperty("user.dir")+"/uploads";
	
	@Override
	public List<Transport> getTransport() {
		return transportRepository.findAll();
	}

	@Override
	public Optional<Transport> getTransport(String matricule) {
		return transportRepository.findById(matricule);
	}

	@Override
	public void updateTransport(Transport trans) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean addTransport(Transport trans) throws IOException {
		try {
			if(trans !=null) {
				transportRepository.save(trans);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		 return false;
	}

	@Override
	public void deleteTransport(String matricule) {
		Optional<Transport> trans = transportRepository.findById(matricule);
		if (trans.isPresent()) {
			transportRepository.delete(trans.get());
		
	}
	}

	@Override
	public void saveTransport(Transport trans) {
		// TODO Auto-generated method stub
		
	}
	
	

	
}
