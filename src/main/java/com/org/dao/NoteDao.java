package com.org.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.org.dto.Note;

public class NoteDao {
	
	   EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("shubham");
	   EntityManager entityManager = entityManagerFactory.createEntityManager();
	   EntityTransaction transaction = entityManager.getTransaction();
	   
	
	public Note fetchById(int id) {
		
		Note note = entityManager.find(Note.class, id);
		
		return note;
	}
	
	public void removeByid(int id)
	{
		Note note = entityManager.find(Note.class, id);
		
		
		transaction.begin();
		entityManager.remove(note);
		transaction.commit();
		
	}
	

}
