<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!--Main css-->
    <link rel="stylesheet" href="css/main.css">
    <!-- page css -->
    <link rel="stylesheet" href="css/userprofile.css">
</head>
<body>
    <!--Navigation-->
    <div class="container">
        <div class="navigation">
            <div class="logo">
                <img src="media/Phoenixlogo.png" style="width: 200px; height:auto ; padding-top:1vh;" alt="">
            </div>
            <ul>
                <li></li>
            <li>
                <a href="<%=request.getContextPath()%>/ViewFlightInfoServlet">
                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                    <span class="title">Flight Information</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/SelectTicketServlet">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Reservation</span>
                </a>
            </li>
            <li>
                <form id="prf" method="get" action="ProfileDetailsServlet"> 
                        
                     <input type="hidden" name="uid" value="<%=request.getAttribute("uid")%>">
                        <a href="html/Userprofile.jsp" onclick="goToProfilePage()">                   
                        <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                        <span class="title">Profile</span>
                        </a>
                 </form>
            </li>
            <!-- <li>
                <a href="#">
                    <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                    <span class="title">Password</span>
                </a>
            </li> -->
            <li>
                <a href="<%=request.getContextPath()%>/LogoutServlet">
                    <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                    <span class="title">Sign Out</span>
                </a>
            </li>
           
            </ul>
        </div>
        <!--===========Main=============-->
        <div class="main">
            <h2 style="text-align: center; padding-top: 18vh; font-weight: 400;">${userName}</h2>
            <div class="user-row">
                <div class="profile-pic">
                </div>
                <div class="personal-info">
                    <div class="left-column">
                        <table>
                            <tbody>
                                 <%
                                if ((request.getAttribute("result") != null)) {
                                  List user_list = new ArrayList();
                                  user_list = (List) request.getAttribute("result");
                                  Iterator itr = user_list.iterator();
                                  while (itr.hasNext()) {
                                %>
                                
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">User Id :</td>
                                    <td><%=itr.next()%></td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">First Name :</td>
                                    <td><%=itr.next()%></td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">Last Name :</td>
                                    <td><%=itr.next()%></td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">Email :</td>
                                    <td><%=itr.next()%></td>
                                </tr>
                                
                                
                            </tbody>
                        </table>
                    </div>
                    <div class="right-column">
                        <table>
                            <tbody>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 100px;"> User Name </td>
                                    <td><%=itr.next()%></td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 100px;"> Phone Number </td>
                                    <td><%=itr.next()%></td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 100px;"> Address </td>
                                    <td><%=itr.next()%></td>
                                </tr>
                                
                                 <%}
                                }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="history-row">
                <div class="bio">
                    <h2 style="color: rgb(130, 1, 1);">Biography</h2><br>   
                    <span style="font-family: arial; line-height:20px">I remember sitting in his backyard in his garden, one day, and he started talking about God. He [Jobs] said, “ Sometimes I believe in God, sometimes I don’t. I think it’s 50/50, maybe. But ever since I’ve had cancer, I’ve been thinking about it more, and I find myself believing a bit more, maybe it’s because I want to believe in an afterlife, that when you die, it doesn’t just all disappear. The wisdom you’ve accumulated, somehow it lives on.”</span>
                </div>
                <div class="history">
                    <h2 style="color: rgb(130, 1, 1);">History</h2><br> 
                </div>
            </div>

        </div>


    </div>
    <!--========scripts=======-->
    <script src="adminmain.js">
        
    </script>
     <script>
                        function goToProfilePage() {
                            document.getElementById("prf").submit();
                        }
                        
                        function showFlightDetails() {
                            document.getElementById("x").submit();
                        }
                    </script>
</body>
</html>