package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;

@WebServlet("/delete_old_book")
public class DeleteOldBook extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  try {
		  String em = req.getParameter("em");
		  int id = Integer.parseInt(req.getParameter("id"));
		  
		  BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
		  
		  boolean f=dao.oldBookDelete(em, "Old", id);
		  
		  HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Old Book Delete Sucessfully");
		    	resp.sendRedirect("old_book_user.jsp");	
			}
			else {
				session.setAttribute("failedMsg", "Something wrong on server");
		    	resp.sendRedirect("old_book_user.jsp");
			}
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	}
  
}
