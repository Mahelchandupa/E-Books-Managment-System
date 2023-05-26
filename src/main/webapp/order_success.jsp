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
<body style="background-color: #f0f1f2">
<!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
   
   <div class="container text-center mt-3">
      <i class="fas fa-check-circle fa-5x text-success"></i>
      <h1>Thank You</h1>
      <h2>Your Order Successfully</h2>
      <h5>With in 7 Days Your Product will be Delivered In your Address</h5>
      <a href="index.jsp" class="btn btn-primary mt-3">Home</a>
      <a href="order.jsp" class="btn btn-danger mt-3">View Order</a>
   </div>
   
</body>
</html>