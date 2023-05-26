<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_component/allCss.jsp" %>
<link rel="stylesheet" href="all_component/login.css">
<title>Insert title here</title>
</head>
<body>
   <div class="background-login">
 
    <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>             
    
 
   <div class="side-color-bar"></div> 
        <div class="reg-container col-md-6 p-4 mx-auto mt-5">
            <div class="login-container mb-5">
                <div class="login-sty-grid">
                    <div class="grid-img">
                      <div class="icons-soical">
                            <a href="#"><img src="https://www.svgrepo.com/download/452231/instagram.svg"  alt=""></a>
                            <a href="#"><img src="https://www.svgrepo.com/download/452196/facebook-1.svg" alt=""></a>
                            <a href="#"><img src="https://www.svgrepo.com/download/452123/twitter.svg" alt=""></a>
                        </div>
                    </div>
                    <div class="login-form">
                        <h1>BOOKS.LK</h1>
                        <div class="social-icons-in-login">
                            <a href="#"><i class="fa-brands fa-facebook"></i></a>
                            <a href="#"><i class="fa-brands fa-google-plus"></i></a>
                            <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                        </div>
                        <h5>or use your email account</h5>
                        <c:if test="${not empty failedMsg }">
                          <p class="text-center text-danger mt-2">${failedMsg}</p>
                          <c:remove var="failedMsg" scope="session"/>
                        </c:if>
                     
                        <c:if test="${not empty succMsg }">
                          <p class="text-center text-danger mt-2">${succMsg}</p>
                          <c:remove var="succMsg" scope="session"/>
                        </c:if>
                     
                        <div class="form-div">
                            <form action="login" method="post">
                                <input type="email" name="email" class="fontAwesome"  placeholder="Email   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; 📧"><br><br>
                                <input type="password" name="password" class="fontAwesome" placeholder="Password  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &#128272;"><br><br>
                                <input type="checkbox" name="username" style="width: 20px;" class="mr-2" placeholder=""><label for="" style="color: #6d6969;">Check me out</label><br><br>
                                <button type="submit" class="rainbow rainbow-2" name="login">LOGIN</button>
                             </form>
                             <h5 class="register-text"><a  href="register.html">Register</a></h5>
                        </div>
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