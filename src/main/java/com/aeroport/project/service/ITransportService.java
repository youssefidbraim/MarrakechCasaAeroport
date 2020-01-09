package com.aeroport.project.service;


import java.io.IOException;
import java.util.List;
import java.util.Optional;

import com.aeroport.project.model.Transport;


public interface ITransportService {
	
	List<Transport> getTransport();

	Optional<Transport> getTransport(String matricule);

	void updateTransport(Transport trans);

	boolean addTransport(Transport trans) throws IOException;

	void deleteTransport(String matricule);
	
	void saveTransport(Transport trans);
}
