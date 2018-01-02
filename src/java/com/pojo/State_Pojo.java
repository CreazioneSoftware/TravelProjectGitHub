/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pojo;

/**
 *
 * @author Shivani
 */
public class State_Pojo {
    
    public int state_id;
    public String state_name;
    public int country_id;

    /**
     * @return the state_id
     */
    public int getState_id() {
        return state_id;
    }

    /**
     * @param state_id the state_id to set
     */
    public void setState_id(int state_id) {
        this.state_id = state_id;
    }

    /**
     * @return the state_name
     */
    public String getState_name() {
        return state_name;
    }

    /**
     * @param state_name the state_name to set
     */
    public void setState_name(String state_name) {
        this.state_name = state_name;
    }

    /**
     * @return the country_id
     */
    public int getCountry_id() {
        return country_id;
    }

    /**
     * @param country_id the country_id to set
     */
    public void setCountry_id(int country_id) {
        this.country_id = country_id;
    }
}
