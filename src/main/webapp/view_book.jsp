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
<meta charset="UTF-8">
<%@include file="all_component/allCss.jsp" %>
<title>Insert title here</title>
</head>
<body>
  <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
   
   <%
   
    int bid = Integer.parseInt(request.getParameter("bid"));
   BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
   BookDtls b = dao.getBookById(bid);
   
   %>
   
      <div class="continer col-md-8 mx-auto mt-5">
        <div class="row">
            <div class="col-md-6 text-center p-5 border">
                <img src="book/<%= b.getPhotoName() %>" style="height: 200px; width: 180px;"  alt=""><br>
                <h4 class="mt-3">Book Name :<span class="text-success"><%= b.getBookName() %></span> </h4>
                <h4>Author Name : <span class="text-success"><%= b.getAuthor() %></span></h4>
                <h4>Category : <span class="text-success"><%= b.getBookCategory() %></span></h4>
            </div>

            <div class="col-md-6  text-center p-5 border">
                <h2><%= b.getBookName() %></h2>
                
                <%
                  if("Old".equals(b.getBookCategory())){
                %>
                 <h5 class="text-primary">Contact To Seller</h5>
                 <h5 class="text-primary">
                   <i class="far fa-envvelope"></i>
                    Email : <%=b.getEmail() %></h5>
                <%}
                %>
                
                <div class="row">
                    <div class="col-md-4 text-danger -text-center p-2">
                        <i class="fas fa-money-bill-wave fa-2x"></i>
                        <p>Cash on Delivery</p>
                    </div>
                     <div class="col-md-4 text-danger -text-center p-2">
                        <i class="fas fa-undo-alt fa-2x"></i>
                        <p>Return Available</p>
                    </div>
                    <div class="col-md-4 text-danger -text-center p-2">
                        <i class="fas fa-truck-moving fa-2x"></i>
                        <p>Free Shipping</p>
                    </div> 
                </div>
                <%
                  if("Old".equals(b.getBookCategory())){
                %>             
                <div class="text-center p-3">
                    <a href="index.jsp" class="btn btn-success"><i class="fas fa-cart-plus"></i>Continue Shopping</a>
                    <a href="" class="btn btn-danger">Rs. <%= b.getPrice() %></a>
                </div>  
                <%
                }else{%>
                <div class="text-center p-3">
                    <a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i>Continue Shopping</a>
                    <a href="" class="btn btn-danger">Rs. <%= b.getPrice() %></a>
                </div>
                <%
                }
                %>
                            
            </div>
        </div>
    </div>
       
</body>
</html>