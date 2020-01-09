package com.aeroport.project.service;


import java.util.List;
import java.util.Optional;

import com.aeroport.project.model.Client;


 

public interface IClientService {

	List<Client> getClients();

	Optional<Client> getClientById(int id);
	void addClient(String name, String prenom,String email,String telephone, String login,String password);

	void deleteClient(int id);
	
	void saveClient(Client client);

	
}
