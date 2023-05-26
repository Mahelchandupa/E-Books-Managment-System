<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.DAO.BookDAOimpl" %>
<%@page import="com.DAO.CartDAOimpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.util.*" %>
<%@page import="com.entity.*" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp" %>
<meta charset="UTF-8">
<title>User : Old Book</title>
</head>
<body>
 <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %> 
         
           
         <c:if test="${not empty succMsg }">
           <div class="alert alert-success text-center">
             ${succMsg}
           </div>
         <c:remove var="succMsg" scope="session"/>
         </c:if>
            
   
   <div class="conteiner col-md-10 p-5 mx-auto">
     <table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <%
      User u =(User)session.getAttribute("userobj");
      String email = u.getEmail();
    
      BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
      List<BookDtls> list  = dao.getBookByOId(email, "Old");
      for(BookDtls b:list){%>
      <tr>
      <th scope="row"><%= b.getBookName() %></th>
      <td><%= b.getAuthor() %></td>
      <td><%= b.getPrice() %></td>
      <td><%= b.getBookCategory() %></td>
      <td><a href="delete_old_book?em=<%=email%>&&id=<%=b.getBookId() %>" class="btn btn-sm btn-danger">Delete</a></td>
    </tr>
      <%
      }
    %>
 
  </tbody>
</table>
   </div>
   
      
          <div style="">
           <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
          </div>
</body>
</html>