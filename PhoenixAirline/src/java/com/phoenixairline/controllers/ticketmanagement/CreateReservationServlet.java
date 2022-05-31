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
        int userId = Integer.parseInt(request.getParameter("flightId"));
        String takeOffAirport = request.getParameter("takeoff_airport");
        String takeoff_date = request.getParameter("takeoff_date");
        String takeoff_time = request.getParameter("takeoff_date");
        String landing_airport = request.getParameter("landing_airport");
        String cost = request.getParameter("cost");

        Reservation reservationBean = new Reservation(userId, takeOffAirport, takeoff_date, takeoff_time, landing_airport, cost);
        ReservationAccess reservationAccess = new ReservationAccess();

        String message = reservationAccess.createReservation(reservationBean);
        PrintWriter out = response.getWriter();
        
        request.setAttribute("message", message);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("addFlight.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException ex) {
        }
        

    }
}
