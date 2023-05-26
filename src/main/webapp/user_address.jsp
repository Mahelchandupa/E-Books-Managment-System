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
   <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
   
   <div class="conteiner mt-5">
     <div class="row p-3">
        <div class="col-md-7 mx-auto">
           <div class="card">
              <div class="card-body">
              <h3 class="text-center text-success mb-3">ADD ADDRESS</h3>
                <form action="">
                  <div class="form-row">
 
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
  
   <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
  </div>
  
    <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputEmail4">Landmark</label>
      <input type="text" class="form-control" id="inputEmail4" value="">
    </div>
    <div class="form-group col-md-4">
      <label for="inputPassword4">State</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
    
     <div class="form-group col-md-4">
      <label for="inputPassword4">Zip</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
  </div>
  </div>
     
                </form>
            <div class="text-center mb-4">
               <button class="btn btn-warning text-white">Add Address</button>
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