package com.phoenixairline.controllers.FlightControllers;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightAccess;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class DeleteFlightInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public DeleteFlightInfoServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
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
