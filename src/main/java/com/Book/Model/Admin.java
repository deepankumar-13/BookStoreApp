package com.Book.Model;

public class Admin {
	private int a_id;
	private String admin_name;
	private String username;
	private String password;
	private String email;
	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
		this.a_id = a_id;
	}
	
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public Admin() {
		super();
	}
	
	public Admin(String admin_name,String username, String password, String email) {
		super();
		this.admin_name=admin_name;
		this.username = username;
		this.password = password;
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "Admin [admin_name =" + admin_name+"username=" + username + ", password=" + password + ", email=" + email + "]";
	}
	
	
}
