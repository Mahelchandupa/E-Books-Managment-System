package com.entity;

public class User {
   private int id;
   private String name;
   private String email; 
   private String password;
   private String phno; 
   private String address;
   private String landmark; 
   private String city;
   private String state;
   private String pincode;
   
   
   
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public String getName() {
	return name;
}
public String getEmail() {
	return email;
}
public String getPassword() {
	return password;
}
public String getPhno() {
	return phno;
}
public String getAddress() {
	return address;
}
public String getLandmark() {
	return landmark;
}
public String getCity() {
	return city;
}
public String getState() {
	return state;
}
public String getPincode() {
	return pincode;
}
public void setId(int id) {
	this.id = id;
}
public void setName(String name) {
	this.name = name;
}
public void setEmail(String email) {
	this.email = email;
}
public void setPassword(String password) {
	this.password = password;
}
public void setPhno(String phno) {
	this.phno = phno;
}
public void setAddress(String address) {
	this.address = address;
}
public void setLandmark(String landmark) {
	this.landmark = landmark;
}
public void setCity(String city) {
	this.city = city;
}
public void setState(String state) {
	this.state = state;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", phno=" + phno
			+ ", address=" + address + ", landmark=" + landmark + ", city=" + city + ", state=" + state + ", pincode="
			+ pincode + "]";
}
   

    
}
