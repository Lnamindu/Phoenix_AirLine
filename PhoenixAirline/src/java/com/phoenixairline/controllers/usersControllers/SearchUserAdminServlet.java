package com.phoenixairline.controllers.usersControllers;

import com.phoenixairline.models.SearchUsersAccess;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchUserAdminServlet extends HttpServlet {
    
       @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SearchUsersAccess vuAccess = new SearchUsersAccess();

        String ref = request.getHeader("Referer");
        System.out.println(ref);

        List userlist = vuAccess.viewRow("", "");
        RequestDispatcher rd = request.getRequestDispatcher("adminCustomer.jsp");
        request.setAttribute("result", userlist);
        rd.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
