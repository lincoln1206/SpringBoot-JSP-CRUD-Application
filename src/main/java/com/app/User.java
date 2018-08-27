/**
 * 
 */
package com.app;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "Cliente")
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@NotNull
	private String name;
	private String surname;
	private String adress;

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public User() {
		super();
	}
	public User( String name, String surname, String adress) {
		super();
		
		this.name = name;
		this.surname = surname;
		this.adress = adress;
	}
	
	
}
