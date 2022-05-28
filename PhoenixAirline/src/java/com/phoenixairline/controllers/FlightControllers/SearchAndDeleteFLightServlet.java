
package com.phoenixairline.controllers.FlightControllers;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightAccess;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;


public class SearchAndDeleteFLightServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
               if (request.getParameter("Update") != null){

            String flightid=request.getParameter("flightId");
            
             PrintWriter out = response.getWriter();
             out.print(flightid);
            Flight flightBean = new Flight(flightid);

            FlightAccess flightAccess = new FlightAccess();
            List SearchFlightDetails = flightAccess.searchOneData(flightBean);
            
            request.setAttribute("result", SearchFlightDetails);
            RequestDispatcher rd = request.getRequestDispatcher("UpdateFlight.jsp");
            rd.forward(request, response);
            
        } else if (request.getParameter("Delete") != null){
             String FlightId = request.getParameter("flightId");

        Flight flightBean = new Flight(FlightId);
        FlightAccess flightAccess = new FlightAccess();

        String message = flightAccess.DeleteFlightDetails(flightBean);
        PrintWriter out = response.getWriter();
//        out.println(message);

           request.setAttribute("message", message);
           try {
//                    FlightAccess flightAc = new FlightAccess();
                    List flightDetails = flightAccess.viewAllFlightDetails();
                    
                    request.setAttribute("result", flightDetails);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("flightsManagement.jsp");
                    rd.forward(request, response);
                } catch (ServletException | IOException ex) {
                    System.out.println(ex);
                }
        }
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
