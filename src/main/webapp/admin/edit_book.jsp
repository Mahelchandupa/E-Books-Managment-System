<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.DAO.BookDAOimpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="com.DB.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book</title>
<%@include file="../all_component/allCss.jsp" %>
<%@include file="adminAllCss.jsp" %>
</head>
<body>
    <!--Nav Bar-->
         <%@include file="../all_component/navbar.jsp" %>
         <%@include file="adminNav.jsp" %>
        
         <c:if test="${empty userobj }">
         <c:redirect url="../login.jsp"/>
     </c:if>    
    
    <div class="col-md-4 mx-auto mt-5 bg-light border-secondary border p-5">
        <h3 class="text-center text-danger mb-1">EDIT BOOK</h3>
                 
         <%
            int id = Integer.parseInt(request.getParameter("id"));
            BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
            BookDtls b = dao.getBookById(id);
         %>
        <form action="../editbooks" method="post">
           <input type="hidden" name="id"  value="<%= b.getBookId() %>">
            <div class="form-group">
                <label for="exampleFormControlInput1">Book Name </label>
                <input type="text" name="bname" value="<%=b.getBookName() %>" class="form-control" id="formGroupExampleInput" placeholder="Book Name....">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Author Name </label>
                <input type="text" name="author" value="<%=b.getAuthor() %>" class="form-control" id="formGroupExampleInput" placeholder="Author Name....">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Price </label>
                <input type="text" class="form-control" value="<%= b.getPrice() %>" name="price" id="formGroupExampleInput" placeholder="Price....">
            </div>
          
            <div class="form-group">
                <label for="inputState">Book Status</label>
                <select name="status" id="inputState" class="form-control">
                  <% 
                  if("Active".equals(b.getStatus())){            
                  %>
                	<option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>             	  
                  <%
                  }else{
                  %>
                      <option value="Inactive">Inactive</option>
                      <option value="Active">Active</option>                     
                  <%
                    }
                  %>
                </select>
            </div>
            
            <button type="submit" class="btn btn-primary col-md-12 mt-2">Update</button>
        </form>
    </div>
    
      <!-- footer -->
             <%@include file="adminFooter.jsp" %>    
    <!-- end footer -->
     
</body>
</html>