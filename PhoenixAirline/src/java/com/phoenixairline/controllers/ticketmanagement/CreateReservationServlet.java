package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightAccess;
import com.phoenixairline.models.Reservation;
import com.phoenixairline.models.ReservationAccess;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CreateReservationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doPost(request,response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        int userId = Integer.parseInt(request.getParameter("uid"));
        String takeOffAirport = request.getParameter("takeoffAir");
        String takeoff_date = request.getParameter("takeoffDate");
        String takeoff_time = request.getParameter("takeoffTime");
        String landing_airport = request.getParameter("landing_airport");
        String cost = request.getParameter("cost");
        
         PrintWriter out = response.getWriter();
    
        

        Reservation reservationBean = new Reservation(userId, takeOffAirport, takeoff_date, takeoff_time, landing_airport, cost);
        ReservationAccess reservationAccess = new ReservationAccess();

        String message = reservationAccess.createReservation(reservationBean);
        
        request.setAttribute("message", message);
                    
        try {
             FlightAccess flightAccess = new FlightAccess();
                    List flightDetails = flightAccess.viewAllFlightDetails();
                    
                    request.setAttribute("result", flightDetails);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("AllFlightDetails.jsp");
                    rd.forward(request, response);
        } catch (ServletException ex) {
        }
        

    }
}
