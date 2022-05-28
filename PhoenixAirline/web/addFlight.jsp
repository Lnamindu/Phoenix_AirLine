
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
        <title>Add Flight Details</title>
    </head>
    <body>
        
        <!--Navigation-->
    <div class="container">
      <jsp:include page="navBar_staff.jsp" />
        
        <div class="main">
   
            
         <center>
                <h3 style="color:green"> ${message}</h3>
         </center>
        
<!--        Flights-->
        
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>Add Flights</h2>
              <!--<a href="AddUser.jsp" style="text-decoration: none" class="status ok">Add Flight</a>-->
            </div>
             
        <table>
            <thead style="box-shadow: 0 1px 10px black; padding: 20px">
            <th></th>
            <th>Takeoff Airport</th>
            <th>Takeoff Time</th>
            <th>Takeoff Date</th>
            <th>Landing Airport</th>
            <th>Landing Time</th>
            <th>Landing Date</th>
            <!--<th>Gate</th>-->
            <th>Cost</th>
            <!--<th>Aircraft</th>-->
            <th>Action</th>
        </thead>
        <tbody>
            
            <%                
                if ((request.getAttribute("result") != null)) {
                    List data = new ArrayList();
                    data = (List) request.getAttribute("result");
                    Iterator itr = data.iterator();
                    while (itr.hasNext()) {
                    
            %>
            <tr>
        <form action="UpdateAndDeleteFlightServlet" method="post">

            <td><input type="hidden" name="flightId" /></td>
            <td> <input type="text" name="takeoff_airport" ></td>
            <td> <input type="text" name="takeoff_time"></td>
            <td> <input type="text" name="takeoff_date"></td>
            <td> <input type="text" name="landing_airport"></td>
            <td> <input type="text" name="landing_time"></td>
            <td> <input type="text" name="landing_date">"></td>
            <td> <input type="hidden" name="gate"></td>
            <td> <input type="text" name="cost">"></td>
            <td> <input type="hidden" name="aircraft_id">"></td>
                
                
                <td>
                    
                    <input type="submit" class="status ok" name="Update" value="Add"/> <br> <br>
                  
                </td>
                 
            </form>
        
                

                
            </tr>
            <%}
                }%>
        </tbody>
    </table>

    <form action="CreateTicketServlet" method="POST">
        <table border="1">
            <%
                if ((request.getAttribute("selectedResult") != null)) {
                    List data = new ArrayList();
                    data = (List) request.getAttribute("selectedResult");
                    Iterator itr = data.iterator();
                    while (itr.hasNext()) {
            %>
            <tbody>
                <tr>
                    <td>TO</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Air Time</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Takeoff Date</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>From</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Land Time</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Land Date</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Gate</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Cost</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Aircraft</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Class</td>
                    <td><select name="class" required>
                            <option value="101">1st class</option>
                            <option value="102">Business</option>
                            <option value="103">Economy</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Seat</td>
                    <td><select name="seatNumber" required>
                            <option value="1">1A</option>
                            <option value="2">B1</option>
                            <option value="3">C1</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Number of seats</td>
                    <td><input type="number" name="seats" value="" size="3" /></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Cancel" /></td>
                    <td><input type="submit" value="Book Reservation" /></td>
                </tr>
            </tbody>
            <%}
                }%>
        </table>
    </form>
        </div>
        </div>
        </div>
</body>
</html>