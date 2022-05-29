
package com.phoenixairline.models;


public class Reservation {
    
    String id ;
        String tPrice ;
        String userReservation;

    public Reservation(String id) {
        this.id = id;
    }
        
        

    public Reservation(String id, String tPrice, String userReservation) {
        this.id = id;
        this.tPrice = tPrice;
        this.userReservation = userReservation;
    }
        
        

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String gettPrice() {
        return tPrice;
    }

    public void settPrice(String tPrice) {
        this.tPrice = tPrice;
    }

    public String getUserReservation() {
        return userReservation;
    }

    public void setUserReservation(String userReservation) {
        this.userReservation = userReservation;
    }
        
}
