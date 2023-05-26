<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.DAO.BookDAOimpl" %>
<%@page import="com.DAO.OrderBookimpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.util.*" %>
<%@page import="com.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <c:if test="${empty userobj }">
     <c:redirect url="login.jsp"></c:redirect>
   </c:if>

  <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
   
   <div class="conteiner p-2 col-md-10 mx-auto mt-4">
   <h3 class="text-center text-primary">Your Order</h3>
      <table class="table table-striped mt-3">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
   <%
    User u = (User)session.getAttribute("userobj");
    OrderBookimpl dao = new OrderBookimpl(DBConnect.getConn());
    List<Book_Order> blist =dao.getBook(u.getEmail());
    for(Book_Order b: blist){%>
    <tr>
      <th scope="row"><%= b.getOrderId() %></th>
      <td><%= b.getUserName() %></td>
      <td><%= b.getBookName() %></td>
      <td><%= b.getAuthor() %></td>
      <td><%= b.getPrice() %></td>
      <td><%= b.getPaymentType() %></td>
    </tr>
    <%
    }
   %>
  
  </tbody>
</table>
   </div>
   
      
           <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
</body>
</html>