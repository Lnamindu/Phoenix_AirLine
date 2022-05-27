/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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

            String ref=request.getHeader("Referer");
            String page=ref.substring(ref.lastIndexOf("/")+1,ref.lastIndexOf(""));
            
//            PrintWriter out;
//        try {
//            out = response.getWriter();
//             out.println(page);
//        } catch (IOException ex) {
//            Logger.getLogger(ViewFlightInfoServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
           
            
            
            if(page.equals("LoginServlet")){
                try {
                        FlightAccess flightAccess = new FlightAccess();
                        List flightDetails = flightAccess.viewAllFlightDetails();

                        request.setAttribute("result", flightDetails);

                        RequestDispatcher rd = request.getRequestDispatcher("flightsManagement.jsp");
                        rd.forward(request, response);
                    } catch (ServletException | IOException ex) {
                        System.out.println(ex);
                    }
            }else if(page.equals("AllFlightDetails.jsp")){
                try {
                        FlightAccess flightAccess = new FlightAccess();
                        List flightDetails = flightAccess.viewAllFlightDetails();

                        request.setAttribute("result", flightDetails);

                        RequestDispatcher rd = request.getRequestDispatcher("AllFlightDetails.jsp");
                        rd.forward(request, response);
                    } catch (ServletException | IOException ex) {
                        System.out.println(ex);
                    }
            }
     
        


    }

}
