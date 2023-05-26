<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.DAO.BookDAOimpl" %>
<%@page import="com.DAO.CartDAOimpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.util.*" %>
<%@page import="com.entity.*" %>
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
    <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
   
   <c:if test="${empty userobj }">
      <c:redirect url="login.jsp"></c:redirect>
   </c:if>
   
   <c:if test="${not empty succMsg }">
      <div class="alert alert-success" role="alert">${succMsg}</div>
       <c:remove var="succMsg" scope="session"/>
   </c:if>
   
   <c:if test="${not empty failedMsg }">
      <div class="alert alert-danger" role="alert">${failedMsg}</div>
       <c:remove var="failedMsg" scope="session"/>
   </c:if>
   
    <div class="container mt-5">
        <div class="row p-2">
           <div class="col-md-6">
             <div class="card bg-white">
                <div class="card-body">
                   <h3 class="text-center text-success">Your Selected Item</h3>          
                   <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <%
      User u=  (User)session.getAttribute("userobj");
    
     CartDAOimpl dao = new CartDAOimpl(DBConnect.getConn());
     List<Cart> cart=dao.getBookByUser(u.getId());
     Double totalPrice=0.00;
     for(Cart c:cart){
    	 totalPrice= c.getTotalPrice();
     %>
     <tr>
      <th scope="row"><%= c.getBookName() %></th>
      <td><%= c.getAuthor() %></td>
      <td><%= c.getPrice() %></td>
      <td>
        <a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId() %>&&cid=<%= c.getCid() %>" class="btn btn-sm btn-danger text-white">Remove</a>
      </td>
    </tr>
     <%
     }
    %>
    
    <tr>
      <td>Total Price</td>
      <td></td>
      <td></td>
      <td><%=totalPrice %></td>
    </tr>
    
  </tbody>
</table>
                </div>
             </div>
           </div>
           
        <div class="col-md-6">
           <div class="card">
              <div class="card-body">
              <h3 class="text-center text-success">Your Details for Order</h3>
              <form action="order" method="post">
           <input type="hidden" class="form-control" id="inputEmail4" value="${userobj.id }" name="id">
              
              
                 <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" id="inputEmail4" value="${userobj.name }" name="username" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email</label>
      <input type="email" name="email" class="form-control" id="inputPassword4" value="${userobj.email }" required>
    </div>  
  </div>
  
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Phone Number</label>
      <input type="text" name="phno" class="form-control" id="inputEmail4" value="${userobj.phno }" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" name="address" class="form-control" id="inputPassword4" value="" required>
    </div>
  </div>
  
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Landmark</label>
      <input type="text" name="landmark" class="form-control" id="inputEmail4" value="" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">City</label>
      <input type="text" name="city" class="form-control" id="inputPassword4" value="" required>
    </div>
  </div>
  
      <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">State</label>
      <input type="text" name="state" class="form-control" id="inputEmail4" value="" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Pin code</label>
      <input type="text" name="pincode" class="form-control" id="inputPassword4" value="" required>
    </div>
  </div>
  
         
    <div class="form-group">
      <label>Payment Mode</label>
      <select class="form-control" name="payment">
        <option value="noselect">-----Select-----</option>
        <option value="COD">Cash On Delivery</option>       
      </select>
    </div>
    
    <div class="text-center">
      <button class="btn btn-warning">Order Now</button>
      <a hre="" class="btn btn-success text-white">Continue Shopping</a>
    </div>
  
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