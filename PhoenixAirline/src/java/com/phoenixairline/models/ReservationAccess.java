
package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReservationAccess {
     Connection con;
    Statement statement;
    int i;
    ResultSet resultSet;
    
     public String createReservation(Reservation reservationBean) {

        int userId=reservationBean.getUserId();
        String takeOffAir=reservationBean.getTakeOffAirPort();
        String takeoffDate=reservationBean.getTakeOffAirPort();
        String landingAir=reservationBean.getLandingAriport();
        String cost=reservationBean.getCost();
        
        
        con = ConnectToDB.createConnection();

        try {
            statement = con.createStatement();
            String InsertQuery = "INSERT INTO `reservation` (`userId`, `takeOff_airport`, `takeOff_date`, `take_off_time`, `landing_airport`, `cost`)"
                        +"VALUES ("+userId+", '" + takeOffAir + "', '" + takeoffDate + "', '" + landingAir + "', '" + cost+ ");";
            i = statement.executeUpdate(InsertQuery);
            System.out.println("b");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        if (i != 0) {
            return "Your reservation successfully";
        } else {
            return "Your reservation not successfully";
        }
    }


}
