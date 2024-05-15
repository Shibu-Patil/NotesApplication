package com.org.dto;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Note {
	
	private String title;
	
	private String description;
	

	@ManyToOne
	@JoinColumn
	private User user;

}
