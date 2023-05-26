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
<style>
/*------------------ New books grid style -------------------------*/
    .new-books-grid{
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            gap: 1.2rem;
            justify-content: center;        
        }
/*----------- end new book grid --------------------*/

</style>
<meta charset="UTF-8">
<title>BOOKS.LK</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<%@include file="all_component/allCss.jsp" %>
<!---Swipper css link-->
<link rel="stylesheet" href="css/swiper-bundle.min.css">
</head>
<body>

   <%
    User u= (User)session.getAttribute("userobj");
   %>
  
    <!--Nav Bar-->
         <%@include file="all_component/navbar.jsp" %>
         <%@include file="all_component/downNavBar.jsp" %>    
    
    <!--- hero section --->
    <div class="hero">
        <div class="hero-text">
            <h1>Buy and sell Your <br>textbooks for the <br>
            best price</h1>
            <p>From applied literature to educational resources, <br> we have a lot of textbooks to offer you. 
                 We provide <br> only the best book for rent.</p>
                 <div class="hero-search-bar">
                    <div class="hero-search-field">
                        <form action="search.jsp" method="POST">
                            <input type="text" name="ch"  required  placeholder="Search any book">
                            <button  type="submit" name="search-btn">
                                <!-- <i class="fa-sharp fa-solid fa-magnifying-glass" ></i> -->
                                Search
                            </button>
                        </form>
                    </div>
                </div>
        </div>
        <div class="hero-img">
            <img src="img/books.jpg" alt="">
        </div>
    </div>
    
    <!-- Books slider -->
    
    <div class="col-md-9 mx-auto mt-5">
            <div class="trending-content swiper">
                <div class="swiper-wrapper">
        <%
          BookDAOimpl dao6 = new BookDAOimpl(DBConnect.getConn());
          List<BookDtls> list5 = dao6.getAllBooks();
          for(BookDtls b: list5){    
        %>
                    <div class="swiper-slide">
                        <div class="box">
                            <img src="book/<%=b.getPhotoName() %>" alt="">
                            <div class="box-text">
                                <h2><%=b.getBookName() %></h2>
                                <h3><%=b.getAuthor() %></h3>
                                <div class="rating">
                                    <p>Rs. <%=b.getPrice()%>.00</p>
                                </div>
                                <div class="cart-view-btn">
                                    <a href="#" class="bg-primary text-white" style="padding: 5px 10px; margin-right: 5px;">Add Cart</a>
                                    <a href="#" class="bg-success text-white" style="padding: 5px 20px; margin-left: 5px;">View</a>
                                </div>
                            </div>
                            <h4><%=b.getBookCategory()%></h4>
                        </div>
                    </div> 
              <%
             }
              %>      
          
                  </div>
            </div>  
        </div>
    
    <!-- book slider end -->
    
     <div class="col-md-9 mx-auto">
            <div class="latest-platform">
                <a href="all_recent_book.jsp">
                    <div class="pc">
                        <i class="fa-solid fa-book"></i>
                        <h4>RECENT<br>
                           <span>VIEW BOOKS</span> </h4>
                    </div>
                </a>
                 <a href="all_new_book.jsp">
                    <div class="pc">
                        <i class="fa-solid fa-book-atlas  mr-2"></i>
                        <h4>NEW<br>
                         <span>VIEW BOOKS</span></h4>
                     </div>
                 </a>
                 <a href="all_old_book.jsp">
                    <div class="pc">
                        <i class="fa-sharp fa-solid fa-book-open-reader  mr-2"></i>
                        <h4>OLD<br>
                            <span>VIEW BOOKS</span></h4>
                    </div>
                 </a>
            </div>
        </div>
    
    
    <!---books categorys-->
      <div class="recent-image-gallary-grid col-md-11 mx-auto">
        <div class="recent-books">
          
    <!-- recent book  -->

        <div class="col-md-12 mx-auto mt-5 mb-5">
            <h3 class="nk-decorated-h-2" style="color: #fff;"><span><span class="text-main-1">RECENT</span> BOOKS</span></h3>
        </div>
        
       <div class="new-content col-md-11 mx-auto">
             
        <%
          BookDAOimpl dao8 = new BookDAOimpl(DBConnect.getConn());
          List<BookDtls> list8 = dao8.getRecentBook();
          for(BookDtls b: list8){    
        %>
        
        <div class="box">
            <img src="book/<%=b.getPhotoName() %>" alt="">
            <div class="box-text">
                <h2><%=b.getBookName() %></h2>
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

       <div class="view-all-btn text-center mt-4">
          <a href="" class="btn btn-dark text-white px-4">View All</a>
       </div>
    </div>

        <div class="book-image-gallary">
            <div class="col-md-12 mx-auto mt-5 mb-3">
                <h3 class="nk-decorated-h-2" style="color: #fff;"><span><span class="text-main-1">BOOKS</span> COVER</span></h3>
            </div>
            <div class="book-cover">
                     
        <%
          BookDAOimpl daoCover = new BookDAOimpl(DBConnect.getConn());
          List<BookDtls> listCover = daoCover.getAllBooks();
          int count =0 ;
          for(BookDtls b: listCover){    
        %>
                <img src="book/<%=b.getPhotoName() %>" alt="">
                <%
                count++;
                if(count >=6){
                 break;
                }%>
          <%
          }
          %>
            </div>
        </div>
      </div>
    
    <!-- --------------------------------------------------------------------------------------- -->
    
    <!-- new book -->
      <div class="col-md-11 mx-auto mt-5 mb-5">
            <h3 class="nk-decorated-h-2" style="color: #fff;"><span><span class="text-main-1">NEW</span> BOOKS</span></h3>
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
       <div class="view-all-btn text-center mt-4">
          <a href="all_new_book.jsp" class="btn btn-dark text-white px-4">View All</a>
       </div>
    <!-- end new books -->
    
    
     <!-- old book -->
        <div class="col-md-11 mx-auto mt-5 mb-5">
            <h3 class="nk-decorated-h-2" style="color: #fff;"><span><span class="text-main-1">OLD</span> BOOKS</span></h3>
        </div>
        
       <div class="new-books-grid col-md-9 mx-auto">
              <%
          BookDAOimpl dao3 = new BookDAOimpl(DBConnect.getConn());
          List<BookDtls> list3 = dao3.getOldBook();
          for(BookDtls b: list3){    
        %>
        
        <div class="box">
            <img src="book/<%=b.getPhotoName() %>" alt="">
            <div class="box-text">
                <h2><%=b.getBookName() %></h2>
                <h3><%=b.getAuthor() %></h3>
                <div class="rating">
                    <p>Rs. <%=b.getPrice() %>.00</p>
                </div>
                <div class="cart-view-btn">
                    <a href="view_book.jsp?bid=<%=b.getBookId() %>" class="bg-success text-white" style="padding: 5px 20px; margin-left: 5px;">View</a>
                </div>
            </div>
            <h4><%=b.getBookCategory() %></h4>
        </div>
        <%
          }
        %>
    </div>
       <div class="view-all-btn text-center mt-4">
          <a href="all_old_book.jsp" class="btn btn-dark text-white px-4">View All</a>
       </div>
    <!-- Old books end -->
    
    <!-- footer -->
             <%@include file="all_component/footer.jsp" %>    
    <!-- end footer -->
    
      
    <script src="css/swiper-bundle.min.js"></script>
  
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  
    <script>
      
          var swiper = new Swiper(".trending-content", {
          slidesPerView: 1,
          spaceBetween: 10,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          autoplay:{
              delay : 2500,
              disableOnInteraction : false,
          },
          breakpoints: {
            640: {
              slidesPerView: 2,
              spaceBetween: 10,
            },
            768: {
              slidesPerView: 3,
              spaceBetween: 15,
            },
            1068: {
              slidesPerView: 4,
              spaceBetween: 20,
            },
          },
        });
  
       </script>
</body>
</html>