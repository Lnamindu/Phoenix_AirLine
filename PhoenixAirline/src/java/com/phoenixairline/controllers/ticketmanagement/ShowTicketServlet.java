
package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.SearchReservationAccess;
import com.phoenixairline.models.SearchUsersAccess;
import com.phoenixairline.models.TicketAccess;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class ShowTicketServlet extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

              doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         SearchReservationAccess srAccess = new SearchReservationAccess();

         
            SearchUsersAccess vuAccess = new SearchUsersAccess();

            String ref = request.getHeader("Referer");
            System.out.println(ref);

              TicketAccess ticketAccess = new TicketAccess();

            List reservationValues = ticketAccess.selectAllTicket();
            request.setAttribute("reservationResult", reservationValues);
            RequestDispatcher rd = request.getRequestDispatcher("ticketManagement.jsp");
            request.setAttribute("result", reservationValues);
            rd.forward(request, response);
        

    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
