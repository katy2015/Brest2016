package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name="BILLET")
public class Billet {


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="billet_id")
	private Integer billet_id;
	
	@Column(name="code_billet")
	private String code_billet;
	
	@ManyToOne
	@JoinColumn(name="visiteur_id")
	private Visiteur visiteur;
	
	public Billet()
	{
		
	}
	
	
	
	public Visiteur getVisiteur() {
		return visiteur;
	}

	public void setVisiteur(Visiteur visiteur) {
	this.visiteur=visiteur;
	}
	
	

	public Integer getID_Billet() {
		return billet_id;
	}



	public void setID_Billet(Integer iD_Billet) {
		billet_id = iD_Billet;
	}





	public String getCode_Billet() {
		return code_billet;
	}





	public void setCode_Billet(String code_Billet) {
		this.code_billet = code_Billet;
	}
	
	
	

}
