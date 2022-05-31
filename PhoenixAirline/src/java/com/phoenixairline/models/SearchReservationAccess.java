package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SearchReservationAccess {

     Connection con;
    Statement statement;
    int i;
    ResultSet resultSet;

    public List viewReservationAll() {
        List allReservation = new ArrayList();

        try {
            con = ConnectToDB.createConnection();
            statement = con.createStatement();


                resultSet = statement.executeQuery("select * from reservation;");
            

            while (resultSet.next()) {
                String uid=resultSet.getString("id");
                String totalPrice = resultSet.getString("total_price");
                String userReservation = resultSet.getString("user_reservation");

                allReservation.add(uid);
                allReservation.add(totalPrice);
                allReservation.add(userReservation);
            }
            con.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allReservation;
    }
    
     public String UpdateTicket(Reservation reservation) {
        int id = Integer.parseInt(reservation.getId());
        float price =  Float.parseFloat(reservation.getCost());
        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            String updateQuery = "UPDATE ticket SET price=" + price + " WHERE id=" + id + ";";
            i = statement.executeUpdate(updateQuery);
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        if (i != 0) {
            return "Ticket details updated successfully";
        } else {
            return "Ticket details not updated";
        }
    }

    public String DeleteTicket(Reservation reservationBean) {
        
        int id = Integer.parseInt(reservationBean.getId());

        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            String dltQuery = "DELETE FROM ticket WHERE id=" + id + "; ";

            i = statement.executeUpdate(dltQuery);

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        if (i != 0) {
            return "Ticket  deleted successfully";
        } else {
            return "Ticket  not deleted";
        }
    }
  
}
