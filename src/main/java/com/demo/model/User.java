package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "userID")
	private Integer userID;
	
	@Column(name = "firstName")
	private String firstName;
	
	@Column(name = "lastName")
	private String lastName;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "pass")
	private String pass;
	
	@Column(name = "confirmpassword")
    private String confirmpassword;
	
	@Column(name = "about")
	private String about;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "country")
	private String country;
	
	@Column(name = "mobilenumber")
	private String mobilenumber;

	public User() {
	}
	
	public User(Integer userID, String firstName, String lastName, String email, String pass,  String about,
			String gender, String country, String mobilenumber,  String confirmpassword) {
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.pass = pass;
		this.confirmpassword = confirmpassword;
		this.about = about;
		this.gender = gender;
		this.country = country;
		this.mobilenumber = mobilenumber;
		
	}

	public User(Integer userID) {
		this.userID = userID;
	}

	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String getConfirmpassword() {
        return confirmpassword;
    }
    public void setConfirmpassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }


	
	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String[] split(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	
	  
}
