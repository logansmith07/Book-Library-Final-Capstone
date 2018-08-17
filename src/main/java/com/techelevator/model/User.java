package com.techelevator.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class User {
	
	@NotBlank(message="Username is required")
	@Min(value=3, message="Username must be at least 3 characters")
	private String userName;
	
	@Min(value=8, message="Password must be at least 8 characters")
	@Pattern.List({
		@Pattern(regexp=".*[a-z].*", message="Must have a lower case"),
		@Pattern(regexp=".*[A-Z].*", message="Must have a capital")
	})
	private String password;
	private boolean role;
	
	private String confirmPassword;
	public String getUserName() {
		return userName;
	}
	/**
	 * @return the role
	 */
	public boolean getRole() {
		return role;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(boolean role) {
		this.role = role;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
}
