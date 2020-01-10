package com.aeroport.project.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import com.aeroport.project.model.User;

public interface IUserService {
	List<User> getUsers();

	Optional<User> getUserById(int id);

	void updateUser(User use);

	boolean addUser(User use) throws IOException;

	void deleteUser(int id);
	
	void saveUser(User use);
}
