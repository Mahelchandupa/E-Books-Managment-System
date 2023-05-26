<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
  <head>
  <style type="text/css">
   .container-contact {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f9f9f9;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

 .container-contact h1 {
  text-align: center;
  margin-bottom: 20px;
  font-family: sans-serif;
}

 .container-contact form {
  display: flex;
  flex-direction: column;
}

 .container-contact label {
  font-weight: bold;
  margin-bottom: 5px;
  font-family: sans-serif;
}

 .container-contact input, textarea {
  margin-bottom: 15px;
  padding: 10px;
  border: none;
  border-bottom: 1px solid #eee;
  border-radius: 5px;
}

 .container-contact input[type="submit"] {
  background-color: #007bff;
  color: #fff;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  margin-top: 25px;
}

 .container-contact input[type="submit"]:hover {
  background-color: #0069d9;
}
   
  </style>
  <%@include file="all_component/allCss.jsp" %>
    <title>Contact Us</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
  <c:if test="${empty userobj}">
  <c:redirect url="login.jsp"></c:redirect>
</c:if>
  
      <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
    
      <c:if test="${not empty succMsg }">
                     <div class="alert alert-success text-center">
                         ${succMsg}
                     </div>                      
                     <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    
     <c:if test="${not empty failedMsg }">
                     <div class="alert alert-success text-center">
                       ${failedMsg}
                     </div>
                     <c:remove var="failedMsg" scope="session"/>
                     </c:if>
  
    <div class="container-contact mt-5">
      <h1>Contact Us</h1>
      <form action="contact" method="POST">
        <label for="name">Name:</label>
        <input type="text" id="name" name="con-name" required value="${userobj.name}">

        <label for="email">Email:</label>
        <input type="email" id="email" name="con-email" required value="${userobj.email}">

        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="con-subject" required>

        <label for="message">Message:</label>
        <textarea id="message" name="con-message" required></textarea>

        <input type="submit" value="Send">
      </form>
    </div>
    
      
    <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
    
  </body>
</html>
