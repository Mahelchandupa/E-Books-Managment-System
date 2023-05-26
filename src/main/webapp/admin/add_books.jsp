<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add book</title>
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
    
    <div class="col-md-4 mx-auto mt-5 bg-light border-secondary border p-5">
        <h3 class="text-center text-danger mb-1">ADD BOOK</h3>
         <c:if test="${not empty succMsg }">
                       <p class="text-center text-success mt-2">${succMsg}</p>
                       <c:remove var="succMsg" scope="session"/>
         </c:if>
         <c:if test="${not empty failedMsg }">
                       <p class="text-center text-danger mt-2">${failedMsg}</p>
                       <c:remove var="failedMsg" scope="session"/>
         </c:if>
        <form action="../add_books" method="post" enctype='multipart/form-data'>
            <div class="form-group">
                <label for="exampleFormControlInput1">Book Name </label>
                <input type="text" name="bname" class="form-control" id="formGroupExampleInput" placeholder="Book Name....">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Author Name </label>
                <input type="text" name="author" class="form-control" id="formGroupExampleInput" placeholder="Author Name....">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Price </label>
                <input type="text" class="form-control" name="price" id="formGroupExampleInput" placeholder="Price....">
            </div>
            <div class="form-group">
                <label for="inputState">Book Categories</label>
                <select name="categories" id="inputState" class="form-control">
                  <option selected>Choose...</option>
                  <option value="New">New Book</option>
                </select>
            </div>
            <div class="form-group">
                <label for="inputState">Book Status</label>
                <select name="status" id="inputState" class="form-control">
                  <option selected>Choose...</option>
                  <option value="Active">Active</option>
                  <option value="Inactive">Inactive</option>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Upload Image </label>
                <input type="file" name="bimg" class="form-control-file" id="formGroupExampleInput">
            </div>
            <button type="submit" class="btn btn-primary col-md-12 mt-2">Add</button>
        </form>
    </div>
     
      <!-- footer -->
             <%@include file="adminFooter.jsp" %>    
    <!-- end footer -->
    
</body>
</html>