<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        
        
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Informations</title>
    <!--main (css)-->
    <link rel="stylesheet" href="css/main.css" />
    <!--(css)-->
    <link rel="stylesheet" href="css/Flightinfo.css" />


    </head>
    <% //In case, if StaffG1 session is not set, redirect to Login page
        if ((request.getSession(false).getAttribute("staffg1") == null)) {
    %>
    <%}%>
    <body>

        <div class="container">
        
        <jsp:include page="navBar_staff.jsp" />
            
            <!--end navbar-->
            

 
            <!--===========Main=============-->
      <div class="main" style="background-image:url( media/home.jpg); background-size: cover;">
        <form  action="<%=request.getContextPath()%>/ShowReservationServlet" method="POST">
          <div class="topbar">
              
                     
             
            
          </div>
        </form>
           <center>
                <h3 style="color:green"> ${message}</h3>
         </center>
          

        <!--<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>-->


        <table border="1">
            <thead>
            </thead>
        </table>
            
             <!--=============flight management============-->
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>Ticket Management </h2>
              <!--<a href="AddUser.jsp" style="text-decoration: none" class="status ok">Add User</a>-->
            </div>

              <h4 style="color: red"> You can only change total price  <h4>
            <table>
                <thead >
                    <tr style="box-shadow: 0 1px 10px black; border-radius: 12px; line-height: 4vh">
                  <td>ID</td>
                  <td>Total Price</td>
                  <td>User Id</td>
                  <td>Action</td>
                </tr>
              </thead>

              <tbody>
                  <%
                      if ((request.getAttribute("result") != null)) {
                        List user_list = new ArrayList();
                        user_list = (List) request.getAttribute("result");
                        Iterator itr = user_list.iterator();
                        while (itr.hasNext()) {
                  %>
                  
                <tr>
              <form action="UpdateDeleteReservationServlet" method="post">

                    <td> <input type="text" readonly name="id" style="border-style: hidden; "  value="<%=itr.next()%>"></td>
                    <td> <input type="text" name="totalPrice" style="border-style: hidden; "  value="<%=itr.next()%>"></td>
                    <td> <input type="text" readonly name="userReservation" style="border-style: hidden; "  value="<%=itr.next()%>"></td>
                  <td>
                     
                          <input type="submit" class="status ok" name="Update" value="Update"/> <br> <br>
                  
                          <input type="submit" class="status not" name="Delete" value="Delete" onclick="return confirm('Do you want to Delete this user?')"/>
                     
                  </td>
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
    <script src="adminmain.js"></script>

    <!--ionicons-->
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
  
            
    </body>
</html>