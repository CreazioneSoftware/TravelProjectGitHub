/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pojo;


public class Auction_Pojo {
    
    private int auc_id;
    private String auc_created_date;
    private String auc_status;
    private String auc_description;
    private double auc_budget;
    private int cust_id;

    /**
     * @return the auc_id
     */
    public int getAuc_id() {
        return auc_id;
    }

    /**
     * @param auc_id the auc_id to set
     */
    public void setAuc_id(int auc_id) {
        this.auc_id = auc_id;
    }

    /**
     * @return the auc_created_date
     */
    public String getAuc_created_date() {
        return auc_created_date;
    }

    /**
     * @param auc_created_date the auc_created_date to set
     */
    public void setAuc_created_date(String auc_created_date) {
        this.auc_created_date = auc_created_date;
    }

    /**
     * @return the auc_status
     */
    public String getAuc_status() {
        return auc_status;
    }

    /**
     * @param auc_status the auc_status to set
     */
    public void setAuc_status(String auc_status) {
        this.auc_status = auc_status;
    }

    /**
     * @return the auc_description
     */
    public String getAuc_description() {
        return auc_description;
    }

    /**
     * @param auc_description the auc_description to set
     */
    public void setAuc_description(String auc_description) {
        this.auc_description = auc_description;
    }

    /**
     * @return the auc_budget
     */
    public double getAuc_budget() {
        return auc_budget;
    }

    /**
     * @param auc_budget the auc_budget to set
     */
    public void setAuc_budget(double auc_budget) {
        this.auc_budget = auc_budget;
    }

    /**
     * @return the cust_id
     */
    public int getCust_id() {
        return cust_id;
    }

    /**
     * @param cust_id the cust_id to set
     */
    public void setCust_id(int cust_id) {
        this.cust_id = cust_id;
    }
    
}
