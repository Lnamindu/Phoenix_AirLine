
package com.phoenixairline.controllers.usersControllers;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightAccess;
import com.phoenixairline.models.RegisterAccess;
import com.phoenixairline.models.SearchUsersAccess;
import com.phoenixairline.models.User;
import com.phoenixairline.models.userAccess;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;


public class UpdateBlockUsreServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("Update") != null){

        response.setContentType("text/html");
        
        int uid =Integer.parseInt(request.getParameter("uid"));
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        


        User userBean = new User(uid,fName,lName,email,userName);
        userAccess userAccess = new userAccess();

        String result = userAccess.UpdateUserDetails(userBean);
        
        request.setAttribute("message", result);
                    
        
        try {
            
                    SearchUsersAccess vuAccess = new SearchUsersAccess();

                    String ref = request.getHeader("Referer");
                    System.out.println(ref);
            
                    List userlist = vuAccess.viewRow("", "");
                    RequestDispatcher rd = request.getRequestDispatcher("staffg1.jsp");
                    request.setAttribute("result", userlist);
                    rd.forward(request, response);
                } catch (ServletException | IOException ex) {
                    System.out.println(ex);
                }
            
        } else if (request.getParameter("Block") != null){
                String userid = request.getParameter("uid");

                RegisterAccess access = new RegisterAccess();
                String message = access.blockUser(userid);
                
                request.setAttribute("message", message);
        
                SearchUsersAccess vuAccess = new SearchUsersAccess();

                    String ref = request.getHeader("Referer");
                    System.out.println(ref);

                    List userlist = vuAccess.viewRow("", "");
                    RequestDispatcher rd = request.getRequestDispatcher("staffg1.jsp");
                    request.setAttribute("result", userlist);
                    rd.forward(request, response);
        }
    }

    

 

}
