<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_component/allCss.jsp" %>
<title>Edit Profile</title>
</head>
<body>
 <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
   
   <div class="container mt-5">
     <div class="row">
         <div class="col-md-7 mx-auto">
            <div class="card">
              <div class="card-body">
                <h3 class="text-center text-danger mb-2">EDIT PROFILE</h3>
                  <c:if test="${not empty failedMsg }">
                          <p class="text-center text-danger mt-2">${failedMsg}</p>
                          <c:remove var="failedMsg" scope="session"/>
                        </c:if>
                     
                        <c:if test="${not empty succMsg }">
                          <p class="text-center text-danger mt-2">${succMsg}</p>
                          <c:remove var="succMsg" scope="session"/>
                        </c:if>
                  <form action="update_profile" method="post" enctype='multipart/form-data'>
               <input type="text" name="ids" class="form-control" id="formGroupExampleInput" value="${userobj.id}">         
            <div class="form-group">
                <label for="exampleFormControlInput1">Enter Full Name </label>
                <input type="text" name="fname" class="form-control" id="formGroupExampleInput" value="${userobj.name}">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Email Address </label>
                <input type="email" name="email" class="form-control" id="formGroupExampleInput" value="${userobj.email }">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Phone No </label>
                <input type="text" class="form-control" name="phno" id="formGroupExampleInput" value="${userobj.phno}">
            </div>
            
            <div class="form-group">
                <label for="exampleFormControlInput1">Password</label>
                <input type="password" name="password" class="form-control" id="formGroupExampleInput">
            </div>
        
            <button type="submit" class="btn btn-primary col-md-12 mt-2">Update</button>
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