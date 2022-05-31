
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/Flightinfo.css" rel="stylesheet" type="text/css"/>
        <title>All Flight Details</title>
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
        
        <div class="main"style="background-image:url( media/home.jpg); background-size: cover">
        <form action="SearchFlightInfoServlet" method="POST">
          <div class="topbar">
            <div class="dropdown">Departure Airport 
                <select class="drop-btn" name="takeoff_airport" id="">
                  <option value="Colombo">Colombo</option>
                  <option value="London">London</option>
                  <option value="Melbourne">Melbourne</option>
               </select>
            </div>
   
            <div class="dropdown">Destination Airport 
              <select class="drop-btn" name="landing_airport" id="">
                <option value="Colombo">Colombo</option>
                <option value="South Africa">South Africa</option>
                <option value="England">England</option>
              </select>
            </div>
  
              <input class="drop-btn" type="date" name="takeoff_date" value="" />
              
                <input class="drop-btn"  type="submit" name="Search"/>
                <input class="drop-btn"  type="reset" name="Cancel"/>
            
          </div>
        </form>
            
            <center>
                <h3 style="color:green"> ${message}</h3>
         </center>
        
        
<!--        Flights-->
        
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>Flights</h2>
            </div>
             
        <table>
            <thead>
            <th></th>
            <th>Takeoff Airport</th>
            <th>Takeoff Time</th>
            <th>Takeoff Date</th>
            <th>Landing Airport</th>
            <th>Landing Time</th>
            <th>Landing Date</th>
            <th>Cost</th>
            <th>Action</th>
        </thead><br><br>
        <td></td>
        <tbody><br>
            <%
                if ((request.getAttribute("result") != null)) {
                    List data = new ArrayList();
                    data = (List) request.getAttribute("result");
                    Iterator itr = data.iterator();
                    while (itr.hasNext()) {
            %>
            <tr>
        <form action="CreateReservationServlet" method="POST">
            <input type="hidden" name="uid" value="<%=request.getAttribute("userId")%>">
                <td><input type="hidden" name="flightId" value="<%=itr.next()%>"/></td>
                
                <td> <input type="text" name="takeoffAir" style="border-style: hidden" value="<%=itr.next()%>"></td>
                <td> <input type="text" name="takeoffTime" style="border-style: hidden" value="<%=itr.next()%>"></td>
                <td> <input type="text" name="takeoffDate" style="border-style: hidden" value="<%=itr.next()%>"></td>
                <td> <input type="text" name="landing_airport" style="border-style: hidden" value="<%=itr.next()%>"></td>
                <td> <input type="text" name="landing_time" style="border-style: hidden" value="<%=itr.next()%>"></td>
                <td> <input type="text" name="landing_date" style="border-style: hidden" value="<%=itr.next()%>"></td>
                <td> <input type="text" name="cost" style="border-style: hidden" value="<%=itr.next()%>"></td>
                
                
                <td><input type="submit" class="status ok" value="Book now" /></td>
        </form>

                
            </tr>
            <%}
                }%>
        </tbody>
    </table>

        </div>
        </div>
        </div>
        </div>
        
                  
    <!--========scripts=======-->
  
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    
</body>
</html>