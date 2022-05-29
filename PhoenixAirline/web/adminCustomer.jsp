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
        
        <jsp:include page="navBarAdmin.jsp"/>
            
            <!--end navbar-->
            

       
 <br><br><br><br><br>
            <!--===========Main=============-->
      <div class="main">
        <form  action="SearchUsers_aServlet" method="POST">
          <div class="topbar">
              
            <div class="dropdown"><input class="drop-btn" type="text" name="search_user" placeholder="User Name">
                <select class="drop-btn" name="search_type">
                  <option value="username">Username</option>
                  <option value="email">Email </option>
                  
                </select>
                
                            <button type="submit"  value="View Users" name="view_users" class="drop-btn">View User</button>

            </div>
              
             
  
<!--            <div class="dropdown">Destination Airport 
              <select class="drop-btn" name="" id="">
                <option value="">country 1</option>
                <option value="">country 2</option>
                <option value="">country 3</option>
                <option value="">country 4</option>
              </select>
            </div>-->
  
            <!--<label for="" class="cal">Landing Date  <input type="date" id="cale" name="d-date" /></label>-->
            
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
              <h2>User Management </h2>
              <!--<a href="AddUser.jsp" style="text-decoration: none" class="status ok">Add User</a>-->
            </div>

            <table>
                <thead >
                    <tr style="box-shadow: 0 1px 10px black; border-radius: 12px; line-height: 4vh">
                  <td>First Name</td>
                  <td>Last Name</td>
                  <td>Email</td>
                  <td>User Name</td>
                  <td>User Type</td>
                  <td>Not block</td>
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
              <form action="UpdateBlockUserAdminServlet" method="post">
                  <input type="hidden" name="uid" value="<%=itr.next()%>"/>

                    <td> <input type="text" name="fName" style="border-style: hidden; "  value="<%=itr.next()%>"></td>
                    <td> <input type="text" name="lName" style="border-style: hidden; "  value="<%=itr.next()%>"></td>
                    <td> <input type="text" name="email" style="border-style: hidden; "  value="<%=itr.next()%>"></td>
                    <td> <input type="text" name="userName" style="border-style: hidden;"  value="<%=itr.next()%>"></td>
                    <td><%=itr.next()%></td>
                    <td><%=itr.next()%></td>
                  <td>
                     
                          <input type="submit" class="status ok" name="Update" value="Update"/> <br> <br>
                  
                          <input type="submit" class="status not" name="Block" value="Block" onclick="return confirm('Do you want to block this user?')"/>
                     
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