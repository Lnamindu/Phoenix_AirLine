
package com.phoenixairline.models;


public class Reservation {
    
    String id ;
        int userId ;
        String takeOffAirPort;
        String takeOffDate;
        String takeOffTime;
        String landingAriport;
        String cost;

    public String getTakeOffTime() {
        return takeOffTime;
    }

    public void setTakeOffTime(String takeOffTime) {
        this.takeOffTime = takeOffTime;
    }

    public Reservation(int userId, String takeOffAirPort, String takeOffDate,String takeOffTime, String landingAriport, String cost) {

        this.userId = userId;
        this.takeOffAirPort = takeOffAirPort;
        this.takeOffDate = takeOffDate;
        this.landingAriport = landingAriport;
        this.takeOffTime=takeOffTime;
        this.cost = cost;
    }

    public Reservation(String id) {
        this.id=id;
    }

    public Reservation(String id, String cost) {
        this.id=id;
        this.cost=cost;
        
    }
        
  

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

   

    public String getTakeOffAirPort() {
        return takeOffAirPort;
    }

    public void setTakeOffAirPort(String takeOffAirPort) {
        this.takeOffAirPort = takeOffAirPort;
    }

    public String getTakeOffDate() {
        return takeOffDate;
    }

    public void setTakeOffDate(String takeOffDate) {
        this.takeOffDate = takeOffDate;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getLandingAriport() {
        return landingAriport;
    }

    public void setLandingAriport(String landingAriport) {
        this.landingAriport = landingAriport;
    }
        

    
        
}
