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
<style>
  a{
    text-decoration: none;
    color: #000;
  }
  a:hover{
        text-decoration: none;
    
  }
  
</style>
</head>
<body>
<c:if test="${empty userobj}">
  <c:redirect url="login.jsp"></c:redirect>
</c:if>
  <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
   
   
   <div class="container col-md-10  mt-2">
   <c:if test="${not empty userobj }">
         <h3 class="text-center mt-5 ">Hello,${userobj.name}</h3>
   </c:if>
      <div class="row p-5">
         <div class="col-md-4">
          <a href="sell_book.jsp">
            <div class="card">
               <div class="card-body text-center">
                  <div class="text-primary">
                   <i class="fas fa-book-open fa-3x"></i>
                  </div>
                  <h4>Sell Old Book</h4>
               </div>
            </div>
          </a>
         </div>
         
         <div class="col-md-4">
          <a href="old_book_user.jsp">
            <div class="card">
               <div class="card-body text-center">
                  <div class="text-primary">
                   <i class="fas fa-book-open fa-3x"></i>
                  </div>
                  <h4>Old Book</h4>
               </div>
            </div>
          </a>
         </div>
         
         
         <div class="col-md-4">
          <a href="edit_profile.jsp">
            <div class="card">
               <div class="card-body text-center">
                  <div class="text-primary">
                   <i class="fas fa-edit fa-3x"></i>
                  </div>
                  <h4>Login & Security (Edit Profile)</h4>
               </div>
            </div>
          </a>
         </div>
         
              <div class="col-md-4 mt-3">
          <a href="user_address.jsp">
            <div class="card">
               <div class="card-body text-center">
                  <div class="text-warning">
                   <i class="fas fa-map-marker-alt fa-3x"></i>
                  </div>
                  <h4>Your Address</h4>
                  <p>Edit Address</p>
               </div>
            </div>
          </a>
         </div>
         
                <div class="col-md-4 mt-3">
          <a href="order.jsp">
            <div class="card">
               <div class="card-body text-center">
                  <div class="text-danger">
                   <i class="fas fa-box-open fa-3x"></i>
                  </div>
                  <h4>My Order</h4>
                  <p>Track Your Order</p>
               </div>
            </div>
          </a>
         </div>
         
          <div class="col-md-4 mt-3">
          <a href="helpline.jsp">
            <div class="card">
               <div class="card-body text-center">
                  <div class="text-primary">
                   <i class="fas fa-user-circle fa-3x"></i>
                  </div>
                  <h4>Help Center</h4>
                  <p>24*7 Service</p>
               </div>
            </div>
          </a>
         </div>
         
      </div>
   </div>
   
      <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
</body>
</html>