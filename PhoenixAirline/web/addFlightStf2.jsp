
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
      <jsp:include page="navBarstf2.jsp" />
        
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
            
          
            <tr>
        <form action="AddFlightInfoServlet" method="post">

            <!--<td><input type="hidden" name="flightId" /></td>-->
            <td>  <select class="drop-btn" name="takeoff_airport" id="">
                    <option value="Colombo">Colombo</option>
                    <option value="London">London</option>
                    <option value="Melbourne">Melbourne</option>
                 </select>
            </td>
            <td> <input type="date" class="drop-btn" name="takeoff_time"></td>
            <td> <input type="text" class="drop-btn" name="takeoff_date"></td>
            <td> <select class="drop-btn" name="landing_airport" id="">
                    <option value="Colombo">Colombo</option>
                    <option value="South Africa">South Africa</option>
                    <option value="England">England</option>
                </select>
            </td>
            <td> <input type="text" class="drop-btn" name="landing_time"></td>
            <td> <input type="date" class="drop-btn" name="landing_date"></td>
            <!--<td> <input type="hidden" name="gate"></td>-->
            <td> <input type="text" class="drop-btn" name="cost""></td>
            <!--<td> <input type="hidden" name="aircraft_id"></td>-->
                
                
                <td>
                    
                    <input type="submit" style="padding: 10px 35px 10px 35px; border-radius: 30px  " class="status ok" name="AddFlight" value="Add"/> <br> <br>
                  
                </td>
                 
            </form>
        

                
            </tr>
        </tbody>
    </table>


        </div>
        </div>
        </div>
</body>
</html>