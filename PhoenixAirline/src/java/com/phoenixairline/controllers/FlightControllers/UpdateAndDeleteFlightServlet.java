
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
import java.util.ArrayList;
import java.util.List;


public class UpdateAndDeleteFlightServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateAndDeleteFlightServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAndDeleteFlightServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         if (request.getParameter("Update") != null){

//             List <String> updatedData=new ArrayList<>();

        response.setContentType("text/html");
        String FlightId = request.getParameter("flightId");
        String Takeoff_airport = request.getParameter("takeoff_airport");
        String Takeoff_time = request.getParameter("takeoff_time");
        String Takeoff_date = request.getParameter("takeoff_date");
        String Landing_airport = request.getParameter("landing_airport");
        String Landing_time = request.getParameter("landing_time");
        String Landing_date = request.getParameter("landing_date");
        String Gate = request.getParameter("gate");
        String cost = request.getParameter("cost");
        String aircraftId = request.getParameter("aircraft_id");
        
//        updatedData.add(FlightId);
//        updatedData.add(Takeoff_airport);
//        updatedData.add(Takeoff_time);
//        updatedData.add(Takeoff_date);
//        updatedData.add(Landing_airport);
//        updatedData.add(Landing_time);
//        updatedData.add(Landing_date);
//        updatedData.add(Gate);
//        updatedData.add(cost);
//        updatedData.add(aircraftId);

        Flight flightBean = new Flight(FlightId, Takeoff_airport, Takeoff_time, Takeoff_date, Landing_airport, Landing_time, Landing_date, Gate, cost, aircraftId);
        FlightAccess flightAccess = new FlightAccess();

        String result = flightAccess.UpdateFlightDetails(flightBean);
        
        request.setAttribute("message", result);
                    
        
        try {
//                    FlightAccess flightAc = new FlightAccess();
                    List flightDetails = flightAccess.viewAllFlightDetails();
                    
                    request.setAttribute("result", flightDetails);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("flightsManagement.jsp");
                    rd.forward(request, response);
                } catch (ServletException | IOException ex) {
                    System.out.println(ex);
                }
            
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
