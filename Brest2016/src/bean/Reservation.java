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
import javax.persistence.Table;

//@Entity
//@Table(name="RESERVATION")
public class Reservation {

	/*@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="reservation_id")
	private Integer ID_Reservation;
	
	
	@Column(name="ID_Animation")
	private Integer ID_Animation;
	
	@Column(name="NbRes_Animation")
	private double NbRes_Animation;
	
	@Column(name="NbRes_OptAnimation")
	private double NbRes_OptAnimationin;
	
	
	 @ManyToMany(mappedBy="reservations")
	    private Set<Visiteur> visiteur = new HashSet<Visiteur>();

	 @ManyToMany(cascade = {CascadeType.ALL})
	    @JoinTable(name="ANIMATION_RESERVATION", 
	                joinColumns={@JoinColumn(name="ANIMATION_ID")}, 
	                inverseJoinColumns={@JoinColumn(name="RESERVATION_ID")})
	    private Set<Animation> animations = new HashSet<Animation>();
	


	public Reservation()
	{}
	
	public Set<Visiteur> getVisiteur() {
		return visiteur;
	}

	public Set<Animation> getAnimations() {
		return animations;
	}

	public void setAnimations(Set<Animation> animations) {
		this.animations = animations;
	}

	public void setVisiteur(Set<Visiteur> visiteur) {
		this.visiteur = visiteur;
	}



	public Integer getID_Reservation() {
		return ID_Reservation;
	}



	public void setID_Reservation(Integer iD_Reservation) {
		ID_Reservation = iD_Reservation;
	}





	public Integer getID_Animation() {
		return ID_Animation;
	}


	public void setID_Animation(Integer iD_Animation) {
		ID_Animation = iD_Animation;
	}



	public double getNbRes_Animation() {
		return NbRes_Animation;
	}



	public void setNbRes_Animation(double nbRes_Animation) {
		NbRes_Animation = nbRes_Animation;
	}



	public double getNbRes_OptAnimationin() {
		return NbRes_OptAnimationin;
	}


	public void setNbRes_OptAnimationin(double nbRes_OptAnimationin) {
		NbRes_OptAnimationin = nbRes_OptAnimationin;
	}


*/
	

}
