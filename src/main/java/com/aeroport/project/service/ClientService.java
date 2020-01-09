package com.aeroport.project.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.aeroport.project.model.Client;
import com.aeroport.project.model.Todo;
import com.aeroport.project.repository.ClientRepository;


public class ClientService implements IClientService{

	@Autowired
	private ClientRepository clientRepository;
	
	@Override
	public List<Client> getClients() {
		// TODO Auto-generated method stub
		return clientRepository.findAll();
	}

	@Override
	public Optional<Client> getClientById(int id) {
		// TODO Auto-generated method stub
		return clientRepository.findById(id);
	}

	@Override
	public void addClient(String name, String prenom, String email, String telephone, String login, String password) {
		clientRepository.save(new Client(name, prenom, email, telephone, login, password));
		
	}

	@Override
	public void deleteClient(int id) {
		Optional<Client> cli = clientRepository.findById(id);
		if (cli.isPresent()) {
		  clientRepository.delete(cli.get());
		}
		
	}

	@Override
	public void saveClient(Client client) {
		clientRepository.save(client);
		
	}

	

}
