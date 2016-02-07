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
		System.out.println("inscription nom = "+visiteur.getNom_Visteur());
		Resultat res = convertBindingResult(bres);
	
		Visiteur v = new Visiteur();
		
		v.setNom_Visteur(visiteur.getNom_Visteur());
		v.setPrenom_Visiteur(visiteur.getPrenom_Visiteur());
		v.setEmail_Visiteur(visiteur.getEmail_Visiteur());
		v.setDateNaissance_Visiteur(visiteur.getDateNaissance_Visiteur());
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
        //b.setCode_Billet(v.getNom_Visteur().charAt(0)+ v.getPrenom_Visiteur()+valeur);
	   v.addBillet(b);
		if(res.getRes().equals("SUCCESS")) {
			dao.inscription(v);
		}
		
		
		
		return res;
	}


	@RequestMapping(value="/listerClients",method=RequestMethod.GET)
	public @ResponseBody List <Client> listerClient() {
		System.out.println("listerClients");

		return dao.listerClients();
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

