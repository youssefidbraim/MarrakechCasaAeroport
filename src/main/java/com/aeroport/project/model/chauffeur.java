package com.aeroport.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "chauffeurs")
public class chauffeur {

	@Id
	@Column(name="CIN")
	private String CIN;
	
	@Column(name="nom")
	private String nom;
	
	@Column(name="prenom")
	private String prenom;
	
	@Column(name="telephone")
	private String telephone;
	
	@Column(name="etat")
	private String etat;
	
	@Column(name="image")
    private String image;
	
	@Column(name="file_size")
    private String file_size;
	
	@Column(name="file_type")
    private String file_type;
	
	@Column(name="login")
	private String login;
	
	@Column(name="password")
	private String password;

	public chauffeur(String cIN, String nom, String prenom, String telephone, String etat, String image,
			String file_size, String file_type, String login, String password) {
		super();
		CIN = cIN;
		this.nom = nom;
		this.prenom = prenom;
		this.telephone = telephone;
		this.etat = etat;
		this.image = image;
		this.file_size = file_size;
		this.file_type = file_type;
		this.login = login;
		this.password = password;
	}

	public chauffeur() {
		super();
	}

	public String getCIN() {
		return CIN;
	}

	public void setCIN(String cIN) {
		CIN = cIN;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
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

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
}
