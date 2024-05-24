package com.org.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Note {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private int noteid;
	
	private String title;
	
	private String description;
	

	@ManyToOne
	@JoinColumn
	private User user;

}
