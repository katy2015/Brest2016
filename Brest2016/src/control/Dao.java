package control;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Service;

import bean.Client;
import bean.Visiteur;

@Service
public class Dao {
	
	//Dao dao = new Dao();
	

	EntityManagerFactory emf = null;
	EntityManager em = null;

	public Dao() {
		System.out.println("Dao xxxxx");
		emf = Persistence.createEntityManagerFactory("tphibernate");
		em = emf.createEntityManager();

	}
	
	public void enregistrerClient(Client c) {
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(c);
		tx.commit();
	}
	
	public void inscription(Visiteur v)
	{
		EntityTransaction tx = em.getTransaction();
		//tx.begin();
		//em.persist(v);
		//tx.commit();
	}
	
	
	public List<Client>listerClients()  {
		List <Client> lst = em.createQuery(
				"select g from Client g").getResultList();
		return lst;
	}
	
	public void init() {
		System.out.println("init dao");
	}

}
