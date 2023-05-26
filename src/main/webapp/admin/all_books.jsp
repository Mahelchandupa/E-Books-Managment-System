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
<title>All Book</title>
<%@include file="adminAllCss.jsp" %>
<%@include file="../all_component/allCss.jsp" %>
</head>
<body>
    <!--Nav Bar-->
         <%@include file="../all_component/navbar.jsp" %>
         <%@include file="adminNav.jsp" %>
    
    <c:if test="${empty userobj }">
         <c:redirect url="../login.jsp"/>
     </c:if>     
    
    <div class="col-md-11 mx-auto">
        <h2 class="text-center mb-4 mt-4">ALL BOOKS</h2>
         <c:if test="${not empty succMsg }">
                       <p class="text-center text-success mt-2">${succMsg}</p>
                       <c:remove var="succMsg" scope="session"/>
         </c:if>
         <c:if test="${not empty failedMsg }">
                       <p class="text-center text-danger mt-2">${failedMsg}</p>
                       <c:remove var="failedMsg" scope="session"/>
         </c:if>
        <div class="table-responsive-sm table-responsive-md table-responsive-lg ">
            <table  class="table table-borderless table-striped">
            <thead class="thead-dark">
                <tr class="text-success ">
                    <th>Id</th>
                    <th>Image</th>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>Price</th>
                    <th>Book Categorie</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
           </thead>
                <%
                  BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
                  List<BookDtls> list = dao.getAllBooks();
                  for(BookDtls b : list){
                  %>
                  <tbody>
                  <tr>
                    <td><%=b.getBookId() %></td>
                    <td>                        
                        <img src="../book/<%=b.getPhotoName() %>" alt="" width="60px" height="70px">
                    </td>
                    <td class="">
                        <p class=""><%=b.getBookName() %></p>
                    </td>
                    <td><%= b.getAuthor() %></td>
                    <td>Rs. <%= b.getPrice() %></td>
                    <td><%=b.getBookCategory() %></td>
                    <td><%= b.getStatus() %></td>
                    <td>
                        <a href="edit_book.jsp?id=<%= b.getBookId() %>" class="btn btn-sm btn-primary text-white px-4"  ><i class="fa-solid fa-pen-to-square mr-2"></i>Edit</a>
                        <a href="../delete?id=<%= b.getBookId() %>" class="btn btn-sm btn-danger text-white"><i class="fa-solid fa-trash-can mr-2"></i>Remove</a>
                    </td>

                </tr>
                </tbody>
                  <%
                  }
                  %>  
                
            </table>
        </div>
       
     </div>
     
       <!-- footer -->
             <%@include file="adminFooter.jsp" %>    
    <!-- end footer -->
    
</body>
</html>