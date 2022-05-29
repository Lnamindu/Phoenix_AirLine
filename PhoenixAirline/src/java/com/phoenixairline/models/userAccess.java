
package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class userAccess {
    Connection con;
    Statement statement;
    int i;
    ResultSet resultSet;
    public String UpdateUserDetails(User userBean) {

        int uid=userBean.getUser_id();
        String fName = userBean.getFirst_name();
        String lNmae = userBean.getLast_name();
        String email = userBean.getEmail();
        String userName = userBean.getUsername();
      
        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            String updateQuery = "UPDATE user SET first_name='" + fName + "',last_name='" + lNmae + "',email='" + email + "',username='" + userName + "' WHERE id=" + uid + ";";
            i = statement.executeUpdate(updateQuery);

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        if (i != 0) {
            return "Usser details updated successfully";
        } else {
            return "User details not updated";
        }
    }
}
