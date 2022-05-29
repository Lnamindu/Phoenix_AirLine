
package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.SearchReservationAccess;
import com.phoenixairline.models.SearchUsersAccess;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class ShowReservationServlet extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

              doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         SearchReservationAccess srAccess = new SearchReservationAccess();



            PrintWriter out=response.getWriter();

            List reservationlist = srAccess.viewReservationAll();

            out.print(reservationlist);
            RequestDispatcher rd = request.getRequestDispatcher("ticketManagement.jsp");
            request.setAttribute("result", reservationlist);
            rd.forward(request, response);
        

    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
