
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/main.css" />
    <!--(css)-->
    <link rel="stylesheet" href="css/Flightinfo.css" />
    </head>
    <body>
        <div class="container">
            <div class="navigation">
        <div class="logo">
            <img src="media/Phoenixlogo.png" style="width: 200px; height:auto ; padding-top: 1vh;" alt="">
        </div>
        <ul>
            <li></li>
            <li>
                <a href="<%=request.getContextPath()%>/ViewFlightStf1Servlet">
                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                    <span class="title">Flight Management</span>
                </a>
            </li>
            <li>
                <a href="staffg1.jsp">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">User Management</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/ShowTicketServlet">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Ticket Management</span>
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
        
        </div>
    </body>
</html>
