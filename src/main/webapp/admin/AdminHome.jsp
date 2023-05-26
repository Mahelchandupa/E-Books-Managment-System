<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="adminAllCss.jsp" %>
<%@include file="../all_component/allCss.jsp" %>
<title>Insert title here</title>

</head>
<body>
       
 <!--Nav Bar-->
          <%@include file="../all_component/navbar.jsp" %>
          <%@include file="adminNav.jsp" %>
          
     <c:if test="${empty userobj }">
         <c:redirect url="../login.jsp"/>
     </c:if>
  
   <div class="col-md-8 mx-auto "  style="margin: 150px;">
        <div class="admin-hero-grid">
            <a href="add_books.jsp">
                <div class="grid-admin">
                    <i class="fa-sharp fa-solid fa-circle-plus"></i>
                    <p>ADD BOOKS</p>
                </div>
            </a>
            <a href="all_books.jsp">
                <div class="grid-admin">
                    <i class="fa-sharp fa-solid fa-book"></i>
                    <p>All BOOKS</p>
                 </div>
            </a>
            <a href="all_order.jsp">
                <div class="grid-admin">
                    <i class="fa-sharp fa-solid fa-box-open"></i>
                    <p>ORDERS</p>
                 </div>
            </a>
            <a href=""  data-toggle="modal" data-target="#exampleModalCenter">
                <div class="grid-admin">
                    <i class="fa-solid fa-right-from-bracket"></i>
                    <p>LOGOUT</p>
                 </div>
            </a>
        </div>
    </div>
    
      <!-- footer -->
             <%@include file="adminFooter.jsp" %>    
    <!-- end footer -->
    
</body>
</html>