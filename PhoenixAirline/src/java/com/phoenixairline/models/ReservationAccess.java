
package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

        String userId=String.valueOf( reservationBean.getUserId());
        String takeOffAir=reservationBean.getTakeOffAirPort();
        String takeoffDate=reservationBean.getTakeOffAirPort();
        String time=reservationBean.getTakeOffTime();
        String landingAir=reservationBean.getLandingAriport();
        String cost=reservationBean.getCost();
        
        
        
        con = ConnectToDB.createConnection();

        try {
            statement = con.createStatement();


              String InsertQuery="insert into reservation (userId,takeOff_airport,takeOff_date,take_off_time,landing_airport,cost) values ("+userId+",'"+takeOffAir+"','"+takeoffDate+"','"+time+"','"+landingAir+"','"+cost+"')";


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
