<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/main.css"/>
        <link rel="stylesheet" href="css/Flightinfo.css" />
    </head>
    <body>
        <div class="container">
            <div class="navigation">
            <div class="logo">
                <img src="/media/Phoenixlogo.png" style="width: 200px; height:auto ; top: 0%;" alt="">
            </div>
            <ul>
                <li></li>
                <li>
                    
                    <form id="adm" method="post" action="AdminServlet">
                        <a href="#" onclick="goToAdminPage()">
                            <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                            <span class="title">DashBoard</span>
                        </a>
                     </form>
                    
                    
                </li>
                <li>
                    <a href="adminCustomer.jsp">
                        <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                        <span class="title">Customers</span>
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
                    <script>
                        function goToAdminPage() {
                            document.getElementById("adm").submit();
                        }
                    </script>
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
