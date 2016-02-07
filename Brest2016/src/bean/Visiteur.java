package bean;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;
 

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;


 




@Entity
@Table(name="VISITEUR")
public class Visiteur {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="visiteur_id")
	private Integer visiteur_id;
	
	@Column(name="visit_nom")
	private String nom_visteur;
	

	@Column(name="visit_prenom")
	private String prenom_visiteur;
	
	@Column(name="visit_email")
	private String email_visiteur;
	
	@Column(name="visit_date_naissance")
	private String dateNaissance_visiteur;
	

	
	@OneToMany(mappedBy="visiteur")
	@Cascade({CascadeType.ALL})
	public Set<Billet> billets = new HashSet<Billet>();
	


	//@Cascade({CascadeType.ALL})
	
	 /*@ManyToMany(cascade = {CascadeType.ALL})
	    @JoinTable(name="VISITEUR_RESERVATION", 
	                joinColumns={@JoinColumn(name="RESERVATION_ID")}, 
	                inverseJoinColumns={@JoinColumn(name="VISITEUR_ID")})
	    private Set<Reservation> reservations = new HashSet<Reservation>();

	
	
	
	public Set<Reservation> getReservations() {
		return reservations;
	}



	public void setReservations(Set<Reservation> reservations) {
		this.reservations = reservations;
	}
*/
	 public Visiteur()
	 {
		 
	 }
	

	public Set<Billet> getBillets() {
		return billets;
	}



	public void setBillets(Set<Billet> billets) {
		this.billets = billets;
	}


	
	
	public Integer getID_Visiteur() {
		return visiteur_id;
	}



	public void setID_Visiteur(Integer iD_Visiteur) {
		visiteur_id = iD_Visiteur;
	}



	public String getNom_Visteur() {
		return nom_visteur;
	}



	public void setNom_Visteur(String nom_Visteur) {
		nom_visteur = nom_Visteur;
	}



	public String getPrenom_Visiteur() {
		return prenom_visiteur;
	}



	public void setPrenom_Visiteur(String prenom_Visiteur) {
		prenom_visiteur = prenom_Visiteur;
	}



	public String getEmail_Visiteur() {
		return email_visiteur;
	}



	public void setEmail_Visiteur(String email_Visiteur) {
		email_visiteur = email_Visiteur;
	}



	public String getDateNaissance_Visiteur() {
		return dateNaissance_visiteur;
	}



	public void setDateNaissance_Visiteur(String dateNaissance_Visiteur) {
		dateNaissance_visiteur = dateNaissance_Visiteur;
	}


	public void addBillet(Billet billet)
	{
		this.billets.add(billet);
	}


	

}
