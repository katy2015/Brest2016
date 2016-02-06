package bean;

import java.sql.Date;
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

@Entity
@Table(name="ANIMATION")
public class Animation {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_Animation")
	private Integer ID_Animation;
	
	@Column(name="Date_Debut")
	private Date Date_Debut;
	
	@Column(name="Date_Fin")
	private Date Date_Fin;
	
	@Column(name="ID_Reservation")
	private Integer ID_Reservation;
	
	@Column(name="ID_OptAnimation")
	private Integer ID_OptAnimation;
	
	

	 @ManyToMany(mappedBy="animations")
	    private Set<Reservation> reservation = new HashSet<Reservation>();
	 
	 @ManyToMany(cascade = {CascadeType.ALL})
	    @JoinTable(name="ANIMATION_OPTION", 
	                joinColumns={@JoinColumn(name="OPTION_ID")}, 
	                inverseJoinColumns={@JoinColumn(name="ANIMATION_ID")})
	    private Set<Option> options = new HashSet<Option>();
	 
	 public Animation()
	 {
		 
	 }
	
	public Integer getID_Animation() {
		return ID_Animation;
	}


	public void setID_Animation(Integer iD_Animation) {
		ID_Animation = iD_Animation;
	}


	public Set<Reservation> getReservation() {
		return reservation;
	}


	public void setReservation(Set<Reservation> reservation) {
		this.reservation = reservation;
	}


	public Date getDate_Debut() {
		return Date_Debut;
	}


	public void setDate_Debut(Date date_Debut) {
		Date_Debut = date_Debut;
	}


	public Date getDate_Fin() {
		return Date_Fin;
	}



	public void setDate_Fin(Date date_Fin) {
		Date_Fin = date_Fin;
	}


	public Integer getID_Reservation() {
		return ID_Reservation;
	}


	public void setID_Reservation(Integer iD_Reservation) {
		ID_Reservation = iD_Reservation;
	}



	public Integer getID_OptAnimation() {
		return ID_OptAnimation;
	}



	public void setID_OptAnimation(Integer iD_OptAnimation) {
		ID_OptAnimation = iD_OptAnimation;
	}




}
