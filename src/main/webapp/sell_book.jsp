<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<c:if test="${empty userobj}">
  <c:redirect url="login.jsp"></c:redirect>
</c:if>

 <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
  
  <div class="container mt-5">
     <div class="row">
         <div class="col-md-7 mx-auto">
            <div class="card">
              <div class="card-body">
                <h3 class="text-center text-danger mb-2">SELL OLD BOOK</h3>
                
                 <c:if test="${not empty succMsg }">
                       <p class="text-center text-success mt-2">${succMsg}</p>
                       <c:remove var="succMsg" scope="session"/>
         </c:if>
         <c:if test="${not empty failedMsg }">
                       <p class="text-center text-danger mt-2">${failedMsg}</p>
                       <c:remove var="failedMsg" scope="session"/>
         </c:if>
                
                
                  <form action="add_old_book" method="post" enctype='multipart/form-data'>
                  
                  <input type="hidden" value="${userobj.email}" name="user">
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
                <label for="exampleFormControlInput1">Upload Image </label>
                <input type="file" name="bimg" class="form-control-file" id="formGroupExampleInput">
            </div>
            <button type="submit" class="btn btn-primary col-md-12 mt-2">Sell</button>
        </form>
              </div>
            </div>
         </div>
     </div>
  </div>
  
     
           <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
</body>
</html>