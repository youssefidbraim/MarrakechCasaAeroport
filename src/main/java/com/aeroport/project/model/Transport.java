package com.aeroport.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name = "transports")
public class Transport {

	@Id
	@Column(name="Matricule")
	private String matricule;
	
	@Column(name="marque")
	private String marque;
	
	@Column(name="categorie")
	private String categorie;
	
	@Column(name="etat")
    private String etat;
	
	@Column(name="image")
    private String image;
	
	@Column(name="file_size")
    private String file_size;
	
	@Column(name="file_type")
    private String file_type;

	public Transport(String matricule, String marque, String categorie, String image, String file_size,
			String file_type) {
		super();
		this.matricule = matricule;
		this.marque = marque;
		this.categorie = categorie;
		this.image = image;
		this.file_size = file_size;
		this.file_type = file_type;
	}

	public Transport() {
		super();
	}

	public String getMatricule() {
		return matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	public String getMarque() {
		return marque;
	}

	public void setMarque(String marque) {
		this.marque = marque;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getFile_size() {
		return file_size;
	}

	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}

	public String getFile_type() {
		return file_type;
	}

	public void setFile_type(String file_type) {
		this.file_type = file_type;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}
	
	

	

	
	
}
