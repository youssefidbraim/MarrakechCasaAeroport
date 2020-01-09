package com.aeroport.project.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aeroport.project.model.User;
import com.aeroport.project.model.chauffeur;
import com.aeroport.project.repository.UserRepository;

@Service
public class UserService implements IUserService{
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public Optional<User> getUserById(int id) {
		// TODO Auto-generated method stub
		return userRepository.findById(id);
	}

	@Override
	public void updateUser(User use) {
		// TODO Auto-generated method stub
		userRepository.save(use);
	}

	@Override
	public boolean addUser(User use) throws IOException {
		 try {
				if(use !=null) {
					userRepository.save(use);
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
			
			 return false;
	}

	@Override
	public void deleteUser(int id) {
		Optional<User> use = userRepository.findById(id);
		if (use.isPresent()) {
			userRepository.delete(use.get());
		}
		
	}

	@Override
	public void saveUser(User use) {
		// TODO Auto-generated method stub
		userRepository.save(use);
	}

}
