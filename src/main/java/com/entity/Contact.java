package com.entity;

public class Contact {
	private String con_name;
	   private String con_email; 
	   private String con_subject;
	   private String con_message;
	
	   
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getCon_name() {
		return con_name;
	}


	public String getCon_email() {
		return con_email;
	}


	public String getCon_subject() {
		return con_subject;
	}


	public String getCon_message() {
		return con_message;
	}


	public void setCon_name(String con_name) {
		this.con_name = con_name;
	}


	public void setCon_email(String con_email) {
		this.con_email = con_email;
	}


	public void setCon_subject(String con_subject) {
		this.con_subject = con_subject;
	}


	public void setCon_message(String con_message) {
		this.con_message = con_message;
	}


	@Override
	public String toString() {
		return "Contact [con_name=" + con_name + ", con_email=" + con_email + ", con_subject=" + con_subject
				+ ", con_message=" + con_message + "]";
	}
	  
	
	   
}
