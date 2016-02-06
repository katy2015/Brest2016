package bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="OPTION_ANIMATION")
public class Option {


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="option_id")
	private Integer ID_OptAnimation;
	
	@Column(name="nom_option")
	private String Nom_OptAnimation;
	
	
	 @ManyToMany(mappedBy="options")
	    private Set<Animation> animations = new HashSet<Animation>();
	
	public Option()
	{
		
	}
	 
	public Set<Animation> getAnimations() {
		return animations;
	}




	public void setAnimations(Set<Animation> animations) {
		this.animations = animations;
	}






	public Integer getID_OptAnimation() {
		return ID_OptAnimation;
	}




	public void setID_OptAnimation(Integer iD_OptAnimation) {
		ID_OptAnimation = iD_OptAnimation;
	}




	public String getNom_OptAnimation() {
		return Nom_OptAnimation;
	}




	public void setNom_OptAnimation(String nom_OptAnimation) {
		Nom_OptAnimation = nom_OptAnimation;
	}
	
	
	

}
