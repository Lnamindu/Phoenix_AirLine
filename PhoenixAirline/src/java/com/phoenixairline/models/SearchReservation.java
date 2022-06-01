package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SearchReservation {

    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;

    public List viewRow() {
        List user_details = new ArrayList();

        try {
            con = ConnectToDB.createConnection();
            statement = con.createStatement();


         
           resultSet = statement.executeQuery("select * from reservation;");
          

            while (resultSet.next()) {
                String userId = resultSet.getString("userId");
                String takeOff_airport = resultSet.getString("takeOff_airport");
                String takeOff_date = resultSet.getString("takeOff_date");
                String take_off_time = resultSet.getString("take_off_time");
                String landing_airport = resultSet.getString("landing_airport");
                String cost=resultSet.getString("cost");

               
                user_details.add(userId);
                user_details.add(takeOff_airport);
                user_details.add(takeOff_date);
                user_details.add(take_off_time);
                user_details.add(landing_airport);
                user_details.add(cost);
            }
            con.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return user_details;
    }
 
}
