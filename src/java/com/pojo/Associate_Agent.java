/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pojo;

/**
 *
 * @author Dnyaneshwar
 */
public class Associate_Agent {
   
    
     
        private int asso_age_id;
        private String asso_age_name;    
        private String asso_age_firmname;
        private String asso_age_contact;
        private String asso_age_email;
        private String asso_age_joining;
        private int travel_age_id; //(fk)
        private int address_id;    //fk
        
   
    /**
     * @return the asso_age_id
     */
    public int getAsso_age_id() {
        return asso_age_id;
    }

    /**
     * @param asso_age_id the asso_age_id to set
     */
    public void setAsso_age_id(int asso_age_id) {
        this.asso_age_id = asso_age_id;
    }

    /**
     * @return the asso_age_name
     */
    public String getAsso_age_name() {
        return asso_age_name;
    }

    /**
     * @param asso_age_name the asso_age_name to set
     */
    public void setAsso_age_name(String asso_age_name) {
        this.asso_age_name = asso_age_name;
    }

    /**
     * @return the asso_age_firmname
     */
    public String getAsso_age_firmname() {
        return asso_age_firmname;
    }

    /**
     * @param asso_age_firmname the asso_age_firmname to set
     */
    public void setAsso_age_firmname(String asso_age_firmname) {
        this.asso_age_firmname = asso_age_firmname;
    }

    /**
     * @return the asso_age_contact
     */
    public String getAsso_age_contact() {
        return asso_age_contact;
    }

    /**
     * @param asso_age_contact the asso_age_contact to set
     */
    public void setAsso_age_contact(String asso_age_contact) {
        this.asso_age_contact = asso_age_contact;
    }

    /**
     * @return the asso_age_email
     */
    public String getAsso_age_email() {
        return asso_age_email;
    }

    /**
     * @param asso_age_email the asso_age_email to set
     */
    public void setAsso_age_email(String asso_age_email) {
        this.asso_age_email = asso_age_email;
    }

    
    public String getAsso_age_joining() {
        return asso_age_joining;
    }

    /**
     * @param asso_age_joining the asso_age_joining to set
     */
    public void setAsso_age_joining(String asso_age_joining) {
        this.asso_age_joining = asso_age_joining;
    }

   

    /**
     * @return the travel_age_id
     */
    public int getTravel_age_id() {
        return travel_age_id;
    }

    /**
     * @param travel_age_id the travel_age_id to set
     */
    public void setTravel_age_id(int travel_age_id) {
        this.travel_age_id = travel_age_id;
    }

    /**
     * @return the address_id
     */
    public int getAddress_id() {
        return address_id;
    }

    /**
     * @param address_id the address_id to set
     */
    public void setAddress_id(int address_id) {
        this.address_id = address_id;
    }

    
}
