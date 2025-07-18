package com.Book.Model;

public class User {

	private String email;
	private long mobile;
	private String username;
	private String password;
	private String address;
	private String name;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
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
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public User() {
		super();
	}
	
	public User(String email, long mobile, String username, String password, String address, String name) {
		super();
		this.email = email;
		this.mobile = mobile;
		this.username = username;
		this.password = password;
		this.address = address;
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "User [email=" + email + ", mobile=" + mobile + ", username=" + username + ", password=" + password
				+ ", address=" + address + ", name=" + name +"]";
	}
	
	
}
