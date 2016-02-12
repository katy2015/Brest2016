package control;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Billet;
import bean.Client;
import bean.Reservation;
import bean.Visiteur;

@Controller
public class ClientControl {
	
	
	//List<Client> lclients = new ArrayList<Client>();

	@Resource
	Dao dao;

	@RequestMapping(value="/enregistrerClient",method=RequestMethod.GET)
	public String showForm1(){
		return "enregistrerClient";
	}
	

	@RequestMapping(value="/inscription",method=RequestMethod.GET)
	public String showForm(){
		return "inscription";
	}
	
	@RequestMapping(value="/reservation",method=RequestMethod.GET)
	public String showForm2(){
		return "reservation";
	}
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String showForm3(){
		return "login";
	}
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String showForm4(){
		return "index";
	}
	

//	@RequestMapping(value="/validerClient",method=RequestMethod.POST
//			)
//	public @ResponseBody Resultat validerClient(@ModelAttribute(value="client") @Valid Client client, BindingResult bres ){
//		System.out.println("validerClient");
//		Resultat res = valider(client,bres);
//		return res;
//	}

	@RequestMapping(value="/enregistrerClient",method=RequestMethod.POST)
	public @ResponseBody Resultat enregistrerClient(
			@RequestBody @Valid Client client, BindingResult bres) {
		System.out.println("enregistrerClient nom = "+client.getNom());
		Resultat res = convertBindingResult(bres);
	
		Client c = new Client();
		c.setNom(client.getNom());
		c.setPrenom(client.getPrenom());
		if(res.getRes().equals("SUCCESS")) {
			dao.enregistrerClient(c);
		}
		
		
		
		return res;
	}
	
	@RequestMapping(value="/inscription",method=RequestMethod.POST)
	public @ResponseBody Resultat inscription(
			@RequestBody @Valid Visiteur visiteur, BindingResult bres) {
		System.out.println("inscription nom = "+visiteur.getVisit_nom());
		Resultat res = convertBindingResult(bres);
	
		Visiteur v = new Visiteur();
		
		v.setVisit_nom(visiteur.getVisit_prenom());
		v.setVisit_prenom(visiteur.getVisit_prenom());
		v.setVisit_email(visiteur.getVisit_email());
		v.setVisit_date_naissance(visiteur.getVisit_date_naissance());
		//SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
       
		/*try {
			parsed = (Date) sdf.parse(visiteur.getDateNaissance_Visiteur().toString());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
        //java.sql.Date sql = new java.sql.Date(parsed.getTime());
		
		
		//Random r = new Random();
		//int valeur = 5 + r.nextInt(300 - 5);
       Billet b = new Billet();
       b.setCode_Billet("Abdou4445");
       b.setVisiteur(v);
        //b.setCode_Billet(v.getNom_Visteur().charAt(0)+ v.getPrenom_Visiteur()+valeur);
	   //v.addBillet(b);
		if(res.getRes().equals("SUCCESS")) {
			dao.inscription(v,b);
		}
		
		
		
		return res;
	}


	@RequestMapping(value="/listerClients",method=RequestMethod.GET)
	public @ResponseBody List <Client> listerClient() {
		System.out.println("listerClients");

		return dao.listerClients();
	}
	
	@RequestMapping(value="/listerVisiteurs",method=RequestMethod.GET)
	public @ResponseBody List <Visiteur> listerVisteur() {
		System.out.println("listerVisiteurs");

		return dao.listerVisiteurs();
	}
	
	
	
	
	
	@RequestMapping(value="/reservation",method=RequestMethod.POST)
	public @ResponseBody Resultat reservation(
			@RequestBody @Valid Reservation reservation, BindingResult bres) {
		System.out.println("reservation nom = "+reservation.getReservation_nom());
		Resultat ress = convertBindingResult(bres);
	
		Reservation r = new Reservation();
		
		r.setReservation_nom(reservation.getReservation_nom());		
		if(ress.getRes().equals("SUCCESS")) {
			dao.reservation(r);
		}	
		return ress;
	}
	
	


	
	
	

	public Resultat convertBindingResult(BindingResult bres) {
		Resultat res = new Resultat();
		if(!bres.hasErrors()){
			res.setRes("SUCCESS");
		}else{
			res.setRes("FAIL");
		}
		
		
		for (FieldError fe : bres.getFieldErrors()) {
			System.out.println(fe.getField()+" "+fe.getDefaultMessage());
			res.getErr().put(fe.getField(), fe.getDefaultMessage());
		}
		
		return res;

	}

}

