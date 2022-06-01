<%-- 
    Document   : userMyReservation
    Created on : May 20, 2022, 6:01:28 PM
    Author     : Heshan Kalhara
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/reservation.css" rel="stylesheet" type="text/css"/>
        <title>My Reservation</title>
    </head>
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
                <a href="<%=request.getContextPath()%>/ViewFlightInfoServlet">
                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                    <span class="title">Flight Information</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/SelectTicketServlet">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Reservations</span>
                </a>
            </li>
            <li>
                <a href="html/Userprofile.jsp">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Profile</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/LogoutServlet">
                    <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                    <span class="title">Sign Out</span>
                </a>
            </li>
           
        </ul>
    </div>
        
        <div class="main" style="background-image:url( media/home.jpg); background-size: cover;">
            <div class="topbar"></div>
        
<!--Reservations-->
        
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>My Reservations</h2>
              <a style="text-decoration: none;" href="<%=request.getContextPath()%>/ViewFlightInfoServlet" class="status ok">Book Ticket</a>
            </div><br><br>
             
        <table>
            <thead>
                <tr>
                        <th>User Id</th>
                        <th>Takeoff Airport</th>
                        <th>Takeoff Date</th>
                        <th>Takeoff Time</th>
                        <th>landing_airport</th>
                        <th>Total Price</th>
                    </tr>
            <td></td>
            </thead><br><br>
        <form action="userUpdateReservation.jsp" method="POST">
                <tbody>
                    <%
                        if ((request.getAttribute("reservationResult") != null)) {
                            List data = new ArrayList();
                            data = (List) request.getAttribute("reservationResult");
                            Iterator itr = data.iterator();
                            while (itr.hasNext()) {
                    %>
                    <tr>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td>
                            
                        </td>
                    </tr>
                    <%}
                        }%>
                </tbody>
            </form>
        </tbody>
    </table>

        </div>
        </div>
        </div>
                
                               
    <!--========scripts=======-->
  
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
