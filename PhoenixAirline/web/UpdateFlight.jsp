
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
   
        <jsp:include page="navBar_staff.jsp" />

        
        <div class="main">
       
         <center>
                <h3 style="color:green"> ${message}</h3>
         </center>
        
<!--        Flights-->
        
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>Update Flight</h2>
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
        <form action="UpdateFlightInfoServlet" method="POST">
                <td><input type="hidden" name="flightId" value="<%=itr.next()%>"/></td>

                
                 <td><input type="text" name="takeoff_airport" value="<%=itr.next()%>"> </td>
                <td><input type="text" name="takeoff_time" value="<%=itr.next()%>"> </td>
                <td><input type="text" name="takeoff_date" value="<%=itr.next()%>"></td>
                <td><input type="text" name="landing_airport" value="<%=itr.next()%>"></td>
                <td><input type="text" name="landing_time" value="<%=itr.next()%>"></td>
                <td><input type="text" name="landing_date" value="<%=itr.next()%>"></td>
                <td><input type="hidden" name="gate" value="<%=itr.next()%>"></td>
                <td><input type="text" name="cost" value="<%=itr.next()%>"></td>
                <td><input type="hidden" name="aircraft_id" value="<%=itr.next()%>"></td>
                <td><input type="submit" class="status ok" value="Update"/></td>
        </form>

                
            </tr>
            
            <%}
                }%>
        </tbody>
    </table>


        </div>
        </div>
        </div>
</body>
</html>