
package com.phoenixairline.controllers.FlightControllers;

import com.phoenixairline.models.FlightAccess;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ViewFlightInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        doPost(request,response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        PrintWriter out=null;
        
            String id=request.getParameter("uid");
             
                try {
                    FlightAccess flightAccess = new FlightAccess();
                    List flightDetails = flightAccess.viewAllFlightDetails();
                    
                    request.setAttribute("userId", id);
                    request.setAttribute("result", flightDetails);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("AllFlightDetails.jsp");
                    rd.forward(request, response);
                } catch (Exception ex) {
                    System.out.println(ex);
                }
            
       

    }

}
