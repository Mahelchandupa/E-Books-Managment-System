<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.DAO.BookDAOimpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.util.*" %>
<%@page import="com.entity.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp" %>
<style>

/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */

</style>
<meta charset="UTF-8">
<title>All New Book</title>
</head>
<body>

    <c:if test="${not empty addCart }">
       <div id="toast">${addCart}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
    </c:if>
    
      <%
    User u= (User)session.getAttribute("userobj");
   %>
  

<!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
    
    <!-- new book -->
    <div class="container-fluid mb-5">
        <div class="col-md-11 mx-auto mt-5 mb-5">
            <h3 class="nk-decorated-h-2" style="color: #fff;"><span><span class="text-main-1">ALL NEW</span> BOOKS</span></h3>
        </div>
        <div class="new-books-grid col-md-9 mx-auto">
         <%
          BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
          List<BookDtls> list = dao.getNewBook();
          for(BookDtls b: list){    
        %>
        
        
        <div class="box">
            <img src="book/<%=b.getPhotoName() %>" alt="">
            <div class="box-text">
                <h2><%=b.getBookName() %></</h2>
                <h3><%=b.getAuthor() %></h3>
                <div class="rating">
                    <p>Rs. <%=b.getPrice() %>.00</p>
                </div>
                <div class="cart-view-btn">
                   <%
                     if(b.getBookCategory().equals("Old"))
                     {%>
                       <%}else{ 
                    	    if(u == null){%>
                                <a href="login.jsp" class="bg-primary text-white" style="padding: 5px 10px; margin-right: 5px;">Add Cart</a>
                           <%}else{%>
                    	        <a href="cart?bid=<%= b.getBookId()%>&&uid=<%= u.getId()%>" class="bg-primary text-white" style="padding: 5px 10px; margin-right: 5px;">Add Cart</a>                  	    
                    	   <%} %>
                      <% 
                      }
                   %>
                     <a href="view_book.jsp?bid=<%= b.getBookId() %>" class="bg-success text-white" style="padding: 5px 20px; margin-left: 5px;">View</a>
                </div>
            </div>
            <h4><%=b.getBookCategory() %></h4>
        </div>
        <%
          }
        %>
     </div>
 
    </div>
    
      <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
    
    
</body>
</html>