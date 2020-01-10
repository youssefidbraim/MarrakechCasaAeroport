package com.aeroport.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aeroport.project.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
