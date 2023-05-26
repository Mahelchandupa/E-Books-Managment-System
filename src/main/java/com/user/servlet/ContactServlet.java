package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ContactDAOimpl;
import com.DB.DBConnect;
import com.entity.Contact;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String con_name = req.getParameter("con-name");
		String con_email = req.getParameter("con-email");
		String con_subject = req.getParameter("con-subject");
		String con_message = req.getParameter("con-message");
		
		Contact cs = new Contact();
		cs.setCon_name(con_name);
		cs.setCon_email(con_email);
		cs.setCon_subject(con_subject);
		cs.setCon_message(con_message);
		
		HttpSession session = req.getSession();
		
		ContactDAOimpl dao = new ContactDAOimpl(DBConnect.getConn());
		boolean f = dao.contactData(cs);
		if(f) {
			session.setAttribute("succMsg", "Message Successfully Send..");
			resp.sendRedirect("contactpage.jsp");
		}
		else {
			session.setAttribute("failedMsg", "Something wrong on server..");
			resp.sendRedirect("contactpage.jsp");  
		}	

		
		
	}

}
