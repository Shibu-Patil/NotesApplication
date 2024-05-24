package com.org.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.Note;
import com.org.dto.User;

public class UserDao {
	
	   EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("shubham");
	   EntityManager entityManager = entityManagerFactory.createEntityManager();
	   EntityTransaction transaction = entityManager.getTransaction();
	   
	
   public User saveAndUpdateByUser(User user)
   { 
	   transaction.begin();
	   entityManager.merge(user);
	   transaction.commit();
	   return user;
	   
   }
   public User emailandpassword(String email,String password)
   {
	   
	   
	   Query query = entityManager.createQuery("select u from User u where email=?1 AND password=?2");
	   
	   	query.setParameter(1,email);
		query.setParameter(2,password);
//		  User u = new User();
	  List<User> list = query.getResultList();
	
	  if (list.isEmpty())
	  {
		  return null;
	  }
	  
	  else {
		  
	  for (User user : list) {
		  return user;
		  
//		  int id = user.getId();
//		  String name = user.getName();
//		  int age = user.getAge();
//		  String email2 = user.getEmail();
//		  long mobile = user.getMobile();
//		  
//		  u.setId(id);
//		  u.setAge(age);
//		  u.setEmail(email);
//		  u.setName(name);
//		  System.out.println(name);
//		  u.setMobile(mobile);
//		  return u;
		  }
	  }
	  return null;
   }
   public User fetchUserById(int id)
   {
	   User user = entityManager.find(User.class,id);
	   
	   return user;
   }
   
   public boolean changePassword(User user)
   {
	   Query query = entityManager.createQuery("update User u set password=?1 where email=?2 AND name=?3 AND age=?4");
	   
	   query.setParameter(1, user.getPassword());
	   	query.setParameter(2,user.getEmail());
		query.setParameter(3,user.getName());
		query.setParameter(4,user.getAge());
		
			transaction.begin();
			int row = query.executeUpdate();
			
			if(row!=1) {
			return false;
			}
			else {

				//transaction.begin();
				query.executeUpdate();
				transaction.commit();
				return true;
			}
   }
   
   public String fetchMail(User user )
   {
	   Query query = entityManager.createQuery("select u from User u where mobile=?1 AND name=?2 AND age=?3");
	   
	   	query.setParameter(1, user.getMobile());
		query.setParameter(2,user.getName());
		query.setParameter(3,user.getAge());
		
		List<User> list = query.getResultList();
		
		if (list.isEmpty())
		{
			return null;
			}
		else {
			for (User u : list) {
				
				return u.getEmail();
			}
		}
		return null;
		
   }

}
