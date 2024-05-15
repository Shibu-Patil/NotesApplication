package com.org.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.org.dto.User;

public class UserDao {
	
   public User saveAndUpdateByUser(User user)
   {
	   EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("shubham");
	   EntityManager entityManager = entityManagerFactory.createEntityManager();
	   EntityTransaction transaction = entityManager.getTransaction();
	   
	   
	   String name = user.getName();
	   int age = user.getAge();
	   String email = user.getEmail();
	   String password = user.getPassword();
	   long mobile = user.getMobile();
	   
	   User user1 = new User();
	   user1.setName(name);
	   user1.setAge(age);
	   user1.setEmail(email);
	   user1.setPassword(password);
	   user1.setMobile(mobile);
	   
	   
	   transaction.begin();
	   entityManager.merge(user1);
	   transaction.commit();
	   return user1;
	   
   }
   
   public User fetchUserById(int id)
   {
	   return null;
   }

}
