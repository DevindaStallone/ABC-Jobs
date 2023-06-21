package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class UserDto {

	@Id
	@Column(name = "userID")
	private Integer userID;
		
	@Column(name = "email")
    private String emailId;
	
	@Column(name = "pass")
    private String password;
	
	@Column(name = "confirmpassword")
    private String confirmpassword;
    
    
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
    public String getEmailId() {
        return emailId;
    }
	public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getConfirmpassword() {
        return confirmpassword;
    }
    public void setConfirmpassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }

}
