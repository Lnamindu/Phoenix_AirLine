
package com.phoenixairline.controllers;

import com.phoenixairline.models.SearchUsersAccess;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class ProfileDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         SearchUsersAccess vuAccess = new SearchUsersAccess();

            String userId=request.getParameter("uid");

                    List userDetails = vuAccess.viewForProfile(userId);
                    PrintWriter out = response.getWriter();
                    out.print(userDetails);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("html/Userprofile.jsp");
                    request.setAttribute("result", userDetails);
                    request.setAttribute("userName", userDetails.get(4));
                    rd.forward(request, response);
                    
    }
    


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
