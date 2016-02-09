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
	@Column(name="VISITEUR_ID")
	private Integer visiteur_id;
	
	@Column(name="visit_nom")
	private String visit_nom;
	

	@Column(name="visit_prenom")
	private String visit_prenom;
	
	@Column(name="visit_email")
	private String visit_email;
	
	@Column(name="visit_date_naissance")
	private String visit_date_naissance;
	

	
	@OneToMany(mappedBy="visiteur")
	@Cascade({CascadeType.ALL})
	public Set<Billet> billets ;//= new HashSet<Billet>();
	


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
	


	public Integer getVisiteur_id() {
		return visiteur_id;
	}



	public void setVisiteur_id(Integer visiteur_id) {
		this.visiteur_id = visiteur_id;
	}



	public String getVisit_nom() {
		return visit_nom;
	}



	public void setVisit_nom(String visit_nom) {
		this.visit_nom = visit_nom;
	}



	public String getVisit_prenom() {
		return visit_prenom;
	}



	public void setVisit_prenom(String visit_prenom) {
		this.visit_prenom = visit_prenom;
	}



	public String getVisit_email() {
		return visit_email;
	}



	public void setVisit_email(String visit_email) {
		this.visit_email = visit_email;
	}



	public String getVisit_date_naissance() {
		return visit_date_naissance;
	}



	public void setVisit_date_naissance(String visit_date_naissance) {
		this.visit_date_naissance = visit_date_naissance;
	}



	public Set<Billet> getBillets() {
		return billets;
	}



	public void setBillets(Set<Billet> billets) {
		this.billets = billets;
	}



	public void addBillet(Billet billet)
	{
		this.billets.add(billet);
	}


	

}
