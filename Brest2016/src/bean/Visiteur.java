package bean;

import java.util.HashSet;
import java.util.Set;
 
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
 




@Entity
@Table(name="VISITEUR")
public class Visiteur {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="visiteur_id")
	private Integer ID_Visiteur;
	
	@Column(name="visit_nom")
	private String Nom_Visteur;
	

	@Column(name="visit_prenom")
	private String Prenom_Visiteur;
	
	@Column(name="visit_email")
	private String Email_Visiteur;
	
	@Column(name="visit_date_naissance")
	private String DateNaissance_Visiteur;
	

	
	@OneToMany(mappedBy="visiteur")
	public Set<Billet> billets = new HashSet<Billet>();
	//@Cascade({CascadeType.ALL})
	
	 @ManyToMany(cascade = {CascadeType.ALL})
	    @JoinTable(name="VISITEUR_RESERVATION", 
	                joinColumns={@JoinColumn(name="RESERVATION_ID")}, 
	                inverseJoinColumns={@JoinColumn(name="VISITEUR_ID")})
	    private Set<Reservation> reservations = new HashSet<Reservation>();

	 public Visiteur()
	 {
		 
	 }
	
	
	
	public Set<Reservation> getReservations() {
		return reservations;
	}



	public void setReservations(Set<Reservation> reservations) {
		this.reservations = reservations;
	}



	public Set<Billet> getBillets() {
		return billets;
	}



	public void setBillets(Set<Billet> billets) {
		this.billets = billets;
	}


	
	
	public Integer getID_Visiteur() {
		return ID_Visiteur;
	}



	public void setID_Visiteur(Integer iD_Visiteur) {
		ID_Visiteur = iD_Visiteur;
	}



	public String getNom_Visteur() {
		return Nom_Visteur;
	}



	public void setNom_Visteur(String nom_Visteur) {
		Nom_Visteur = nom_Visteur;
	}



	public String getPrenom_Visiteur() {
		return Prenom_Visiteur;
	}



	public void setPrenom_Visiteur(String prenom_Visiteur) {
		Prenom_Visiteur = prenom_Visiteur;
	}



	public String getEmail_Visiteur() {
		return Email_Visiteur;
	}



	public void setEmail_Visiteur(String email_Visiteur) {
		Email_Visiteur = email_Visiteur;
	}



	public String getDateNaissance_Visiteur() {
		return DateNaissance_Visiteur;
	}



	public void setDateNaissance_Visiteur(String dateNaissance_Visiteur) {
		DateNaissance_Visiteur = dateNaissance_Visiteur;
	}


	public void addBillet(Billet billet)
	{
		this.billets.add(billet);
	}


	

}
