<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Admin Page</title>
           <link rel="stylesheet" href="css/main.css"/>
           <link rel="stylesheet" href="css/Flightinfo.css" />
    </head>

      <% //In case, if Admin session is not set, redirect to Login page
        if ((request.getSession(false).getAttribute("admin") == null)) {
    %>
    <jsp:forward page="/login.jsp"></jsp:forward>
    <%}%>
    <!--when page loads show user monitor table-->
    <!--when page loads show user monitor table-->
    
    <body>
        <div class="container">
            <jsp:include page="navBarAdmin.jsp"/>
            
            
            <div class="main"style="background-image:url( media/home.jpg); background-size: cover;">
               
                 <!--=============flight management============-->
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2> Approval</h2>
              <!--<a href="AddUser.jsp" style="text-decoration: none" class="status ok">Add User</a>-->
            </div>

            <table>
                <thead >
                    <tr style="box-shadow: 0 1px 10px black; border-radius: 12px; line-height: 4vh">
                  <td>First Name</td>
                  <td>Last Name</td>
                  <td>Role</td>
                  <td>Action</td>
                </tr>
              </thead>

              <tbody>
                  <%
                      if ((request.getAttribute("approve_table") != null)) {
                        List data = new ArrayList();
                        data = (List) request.getAttribute("approve_table");
                        Iterator itr = data.iterator();
                        while (itr.hasNext()) {
                  %>
                  
                <tr>
              <form action="ApproveServlet" method="POST">
                <tr>
                <input type="hidden" name="user_id" value="<%=itr.next()%>" />
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td>
                    <input type="submit" class="status ok" value="Approve" />
                </td>
                </tr>
            </form>
                  
                </tr>
                 <%}
                    }%>
              </tbody>

              
            </table>
          </div>
       
        <%
            if ((request.getAttribute("monitor_table") == null)) {
                request.getRequestDispatcher("AdminDCServlet").forward(request, response);
            }
        %>


  

 

       
        
<!--      <div class="main">
       
           <center>
                <h3 style="color:green"> ${message}</h3>
         </center>
          

        <div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>


        <table border="1">
            <thead>
            </thead>
        </table>
               <table border="1">
        <thead>
        </thead>
        <tbody>
            <%
                if ((request.getAttribute("monitor_table") != null)) {
                    List data = new ArrayList();
                    data = (List) request.getAttribute("monitor_table");
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
                <td><%=itr.next()%></td>
            </tr>
            <%}
                }%>
        </tbody>
    </table>
        
        </div>-->
              
       
          
      </div>
        </div>
        </div>
            
        
        
        
      
        
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