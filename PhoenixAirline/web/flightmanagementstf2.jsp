
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
      <jsp:include page="navBarstf2.jsp" />
        
        <div class="main">
        <form action="SearchFlightInfoServlet" method="POST">
          <div class="topbar">
            <div class="dropdown">Takeoff Airport 
                <select class="drop-btn" name="takeoff_airport" id="">
                  <option value="Colombo">Colombo</option>
                  <option value="London">London</option>
                  <option value="Melbourne">Melbourne</option>
               </select>
            </div>
   
            <div class="dropdown">Landing Airport 
              <select class="drop-btn" name="landing_airport" id="">
                <option value="Colombo">Colombo</option>
                <option value="South Africa">South Africa</option>
                <option value="England">England</option>
              </select>
            </div>
  
              <input class="drop-btn" type="date" name="takeoff_date" value="" />
              
              <input class="drop-btn"  type="submit" value="Search" name="Search"/>
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
              <a href="addFlightStf2.jsp" style="text-decoration: none" class="status ok">Add Flight</a>
            </div>
             
        <table>
            <thead style="box-shadow: 0 1px 10px black; padding: 20px">
            <th>Takeoff Airport</th>
            <th>Takeoff Time</th>
            <th>Takeoff Date</th>
            <th>Landing Airport</th>
            <th>Landing Time</th>
            <th>Landing Date</th>
            <th>Cost</th>
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

            <input type="hidden" name="flightId" value="<%=itr.next()%>"/>
            <td> <input type="text" name="takeoff_airport" style="border-style: hidden; padding-right: -10px"  value="<%=itr.next()%>"></td>
            <td> <input type="text" name="takeoff_time" style="border-style: hidden" value="<%=itr.next()%>"></td>
            <td> <input type="text" name="takeoff_date" style="border-style: hidden" value="<%=itr.next()%>"></td>
            <td> <input type="text" name="landing_airport" style="border-style: hidden" value="<%=itr.next()%>"></td>
            <td> <input type="text" name="landing_time" style="border-style: hidden" value="<%=itr.next()%>"></td>
            <td> <input type="text" name="landing_date" style="border-style: hidden" value="<%=itr.next()%>"></td>
             <input type="hidden" name="gate" style="border-style: hidden" value="<%=itr.next()%>">
            <td> <input type="text" name="cost" style="border-style: hidden" value="<%=itr.next()%>"></td>
             <input type="hidden" name="aircraft_id" style="border-style: hidden" value="<%=itr.next()%>">
                
              
                 
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