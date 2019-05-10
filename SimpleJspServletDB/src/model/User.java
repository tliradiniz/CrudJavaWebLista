package model;

import java.util.Date;

public class User {

    private int userid;
    private String name;
    private String address;
    private Date date;
    private double credit;
    public int getUserid() {
        return userid;
    }
    public void setUserid(int userid) {
        this.userid = userid;
    }
    public String getName() {
        return name;
    }
    public void setName(String firstName) {
        this.name = firstName;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public double getCredit() {
        return credit;
    }
    public void setCredit(double credit) {
        this.credit = credit;
    }
    @Override
    public String toString() {
        return "User [userid=" + userid + ", firstName=" + name
                + ", lastName=" + address + ", date=" + date + ", credit="
                + credit + "]";
    }    
}