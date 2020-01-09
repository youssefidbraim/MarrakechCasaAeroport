package com.aeroport.project.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.aeroport.project.model.Client;

public interface ClientRepository extends JpaRepository<Client, Integer>{

}
