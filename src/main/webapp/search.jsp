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
<meta charset="UTF-8">
<title>All Recent Book</title>
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
    
     <div class="new-books-grid col-md-9 mt-5 mx-auto">
         <%
         String ch=request.getParameter("ch");
         BookDAOimpl dao2 = new BookDAOimpl(DBConnect.getConn());
         List<BookDtls> list2 = dao2.getBookBySearch(ch);
         for(BookDtls b: list2){   
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
    
    
    
    
    
      <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
    
    
    
    

</body>
</html>