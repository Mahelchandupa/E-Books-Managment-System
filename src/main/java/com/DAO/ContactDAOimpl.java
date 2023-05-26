package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Contact;

public class ContactDAOimpl implements ContactDAO {

	   private Connection conn;

	   
	
	public ContactDAOimpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean contactData(Contact cs) {
		boolean f = false;
		
		try {
			String sql = "insert into contacts(con_name, con_email, con_subject, con_message) values(?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, cs.getCon_name());
			ps.setString(2, cs.getCon_email());
			ps.setString(3, cs.getCon_subject());
			ps.setString(4, cs.getCon_message());

			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}


}
