<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>      
        <link rel="stylesheet" type="text/css" href="css/login page.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">

    </head>
    <body>
        <div class="main">  	
        <input type="checkbox" id="chk" aria-hidden="true">
            
        <div class="login">
            <form name="login" action="<%=request.getContextPath()%>/LoginServlet" method="post"><br><br>
                <center> <div class="logo">
            <img src="media/Phoenixlogo.png" style="width: 150px; height:auto ; padding-top: 1vh;" alt="">
                    </div></center>

                <br><br><br>
                <label for="chk" aria-hidden="true">Login</label><br>
                <input type="text" name="username" placeholder="User name" required="" /><br>
                <input type="password" name="password"  placeholder="Password" required="" /><br>
                 
                            <center><%=(request.getAttribute("errMessage") == "Registration Success!") ? "<span style = 'color:green'>" : "<span style = 'color:red'>"%>
                                <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></center>
                            <br>
                 <button type="submit">Login</button>
                
            </form>
                            <center><a class="drop-btn" style="text-decoration: none; color :white;" href="register.jsp">Don't have an account?</a></center>
        </div>        
    </body>
</html>