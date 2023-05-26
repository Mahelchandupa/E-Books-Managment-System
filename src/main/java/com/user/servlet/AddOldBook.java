package com.user.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;
import com.entity.BookDtls;


@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBook extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         try {
        	 String bookName = req.getParameter("bname");
        	 String author = req.getParameter("author");
        	 String price = req.getParameter("price");
        	 String categories = "Old";
        	 String status = "Active";
        	 Part part = req.getPart("bimg");
        	 String fileName = part.getSubmittedFileName();
        	 
        	 String useremail = req.getParameter("user");

        	 
        	 BookDtls b = new BookDtls(bookName, author, price, categories, status, fileName, useremail);
             
        	 BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
        	  	 
        	 boolean f = dao.addBooks(b);
        	 
        	 HttpSession session = req.getSession();
        	 
        	 if(f) {
        		 
             	 String path = getServletContext().getRealPath("")+ "book";
            	 
            	 File file = new File(path);
            	 
            	 part.write(path + File.separator + fileName);
           
        		 
        		 session.setAttribute("succMsg", "Book Add Sucessfully");
        		 resp.sendRedirect("sell_book.jsp");
        	 }
        	 else {
        		 session.setAttribute("failedMsg", "Something wrong on server");
        		 resp.sendRedirect("sell_book.jsp");
        	 }
         }
         catch(Exception e) {
        	  e.printStackTrace();
         }
	}
}
