 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
        <!-- top nav bar -->
        <div class="nav-top-bar">
            <div class="nav-logo">
                <h1><i  class="fa-solid fa-book mr-2"></i>BOOKS.LK</h1>
            </div>
            <div class="nav-search-bar">
                <div class="search-field">
                    <form action="search.jsp" method="POST">
                        <input type="text" name="ch"  required  placeholder="Search by title, author or keyword">
                        <button  type="submit" name="search-btn">
                            <i class="fa-sharp fa-solid fa-magnifying-glass" ></i>
                        </button>
                    </form>
                </div>
            </div>
            <div class="nav-ca-lo-re">
                <div class="links">
                <c:if test="${not empty userobj }">
                     <a href="checkout.jsp"><i class="fa-sharp fa-solid fa-cart-shopping  mr-2"></i>Cart</a>                      
                     <a href="login.jsp"><i class="fa-solid fa-user  mr-2"></i>${ userobj.name}</a>
                     <a href="../logout" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa-solid fa-right-from-bracket mr-2"></i>Logout</a>                   
                </c:if>
                <c:if test="${empty userobj }">
                   <a href="login.jsp"><i class="fa-solid fa-user  mr-2"></i>Login</a>
                   <a href="register.jsp"><i class="fa-solid fa-user-plus  mr-2"></i>Register</a>   
                </c:if>
                </div>
            </div>
        </div>
 
 <!--  logout modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="text-center">
         <h4>Do You want logout</h4>
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         <a href="../logout" type="button" class="btn btn-primary">Logout</a> 
        </div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>