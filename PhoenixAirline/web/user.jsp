
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>User Page</title>
    <!--(main css)-->
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <link href="Landing Page/css/vegas.min.css" rel="stylesheet" type="text/css"/>
    <link href="Landing Page/css/animate.min.css" rel="stylesheet" type="text/css"/>
<!--    css-->
<link href="css/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <% //In case, if Admin session is not set, redirect to Login page
        if ((request.getSession(false).getAttribute("client") == null)) {
    %>
    <jsp:forward page="/login.jsp"></jsp:forward>
    <%}%>
    <body>

        <!--Navigation-->
    <div class="container">
      <div class="navigation">
        <div class="logo">
            <img src="media/Phoenixlogo.png" style="width: 200px; height:auto ; padding-top: 1vh;" alt="">
        </div>
        <ul>
            <li></li>
            <li>
                <form id="x" method="get" action="ViewFlightInfoServlet"> 
                     <input type="hidden" name="uid" value="<%=request.getAttribute("uid")%>">
                    <a href="#" onclick="showFlightDetails()">
                        <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                        <span class="title">Flight Information</span>
                    </a>
                    
                </form>>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/SelectTicketServlet">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Reservations</span>
                </a>
            </li>
            <li>
              
                 
                  <form id="prf" method="get" action="ProfileDetailsServlet"> 
                        
                     <input type="hidden" name="uid" value="<%=request.getAttribute("uid")%>">
                        <a href="#" onclick="goToProfilePage()">                   
                        <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                        <span class="title">Profile</span>
                        </a>
                 </form>
                
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/LogoutServlet">
                    <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                    <span class="title">Sign Out</span>
                </a>
            </li>
           
        </ul>
    </div>
         <!--===========Main=============-->
      <div class="main" style="background-image:url( media/home.jpg); background-size: cover">
          <div class="grid">
              <a "wow fadeInUp" data-wow-delay="0.6s" style="width:35vw; height: 65vh; background-color: #0000009c ; border-radius:12px; text-align: center; text-decoration: none; padding-top: 30vh; font-size: 20px; color: white; " href="<%=request.getContextPath()%>/ViewFlightInfoServlet">Flight <br>Information</a>
              <a "wow fadeInUp" data-wow-delay="0.9s" style="width:35vw; height: 65vh; background-color: #0000009c ; border-radius:12px; text-align: center; text-decoration: none; padding-top: 30vh; font-size: 20px; color: white;  " href="<%=request.getContextPath()%>/SelectTicketServlet">Reservation</a>
          </div>
      </div>
    </div>
  

          
    <!--========scripts=======-->
    <script src="adminmain.js"></script>
    
                    <script>
                        function goToProfilePage() {
                            document.getElementById("prf").submit();
                        }
                        
                        function showFlightDetails() {
                            document.getElementById("x").submit();
                        }
                    </script>

    
    
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
  

    </body>
</html>