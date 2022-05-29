/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightAccess;
import com.phoenixairline.models.Reservation;
import com.phoenixairline.models.SearchReservationAccess;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class UpdateDeleteReservationServlet extends HttpServlet {

 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         if (request.getParameter("Update") != null){

             

        response.setContentType("text/html");
        String id = request.getParameter("id");
        String tPrice = request.getParameter("totalPrice");
        String userReservation = request.getParameter("userReservation");
        
        PrintWriter out=response.getWriter();
        
        

        Reservation reservationBean = new Reservation(id, tPrice, userReservation);
        SearchReservationAccess reservationAccess = new SearchReservationAccess();

        String result = reservationAccess.UpdateReservationDetails(reservationBean);
        
        request.setAttribute("message", result);
                    
        
        try {
                    SearchReservationAccess srAccess = new SearchReservationAccess();


                    List reservationlist = srAccess.viewReservationAll();

                    out.print(reservationlist);
                    RequestDispatcher rd = request.getRequestDispatcher("ticketManagement.jsp");
                    request.setAttribute("result", reservationlist);
                    rd.forward(request, response);
                } catch (ServletException | IOException ex) {
                    System.out.println(ex);
                }
            
        } else if (request.getParameter("Delete") != null){
                String id = request.getParameter("id");

                Reservation reservationBean = new Reservation(id);
                SearchReservationAccess resevationAccess = new SearchReservationAccess();

                String message = resevationAccess.DeleteFlightDetails(reservationBean);
                PrintWriter out = response.getWriter();

           request.setAttribute("message", message);
           try {
                    
                    SearchReservationAccess srAccess = new SearchReservationAccess();


                    List reservationlist = srAccess.viewReservationAll();

                    out.print(reservationlist);
                    RequestDispatcher rd = request.getRequestDispatcher("ticketManagement.jsp");
                    request.setAttribute("result", reservationlist);
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
