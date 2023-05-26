<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.DAO.BookDAOimpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp" %>
<meta charset="UTF-8">
<title>All Old Book</title>
</head>
<body>
<!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
        
        
        <!-- old book -->
        <div class="container-fluid mb-5">
            <div class="col-md-11 mx-auto mt-5 mb-5">
                <h3 class="nk-decorated-h-2" style="color: #fff;"><span><span class="text-main-1">ALL OLD</span> BOOKS</span></h3>
            </div>
                   <div class="new-books-grid col-md-9 mx-auto">
              <%
          BookDAOimpl dao3 = new BookDAOimpl(DBConnect.getConn());
          List<BookDtls> list3 = dao3.getOldBook();
          for(BookDtls b: list3){    
        %>
        
        <div class="box">
            <img src="book/<%=b.getPhotoName() %>" alt="">
            <div class="box-text">
                <h2><%=b.getBookName() %></h2>
                <h3><%=b.getAuthor() %></h3>
                <div class="rating">
                    <p>Rs. <%=b.getPrice() %>.00</p>
                </div>
                <div class="cart-view-btn">
                    <a href="view_book.jsp?bid=<%=b.getBookId() %>" class="bg-success text-white" style="padding: 5px 20px; margin-left: 5px;">View</a>
                </div>
            </div>
            <h4><%=b.getBookCategory() %></h4>
        </div>
        <%
          }
        %>
    </div>
      </div>
      
        <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
    
</body>
</html>