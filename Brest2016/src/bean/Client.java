package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Required;

@Entity
@Table(name="t_client")
public class Client {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer idClient;
	
	@NotEmpty(message="Le nom ne peut pas être vide")
	@Size(min=3 , message="Le nom doit avoir au moins 3 caractères")
	private String nom = null;

	@NotEmpty(message="Le prénom ne peut pas être vide")
	@Size(min=3 , message="Le prénom doit avoir au moins 3 caractères")
	private String prenom = null;
	
	public Client() {
		
	}
	
	public Client(String nom, String prenom) {
		this.nom = nom;
		this.prenom = prenom;
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

	public Integer getIdClient() {
		return idClient;
	}

	public void setIdClient(Integer idClient) {
		this.idClient = idClient;
	}



}
