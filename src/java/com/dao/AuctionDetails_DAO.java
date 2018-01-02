/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.pojo.AuctionDetails_Pojo;
import com.pojo.Auction_Pojo;
import com.pojo.Customer_Pojo;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author SAGARDADA
 */
public class AuctionDetails_DAO extends connectionInitializer{
    public AuctionDetails_DAO()throws Exception{
        conn = com.dao.db.getInstance().getConnection();
    }
    
     public ArrayList getAllAuctionDetails(int id) throws Exception {
        //ArrayList<Auction_Pojo> al = new ArrayList<Auction_Pojo>();
         ArrayList al1 = new ArrayList();
        stmt = conn.prepareStatement("select a1.auc_details_id,a1.auc_details_fromplaceid,a1.auc_details_toplaceid,a1.auc_details_fromdate,a1.auc_details_todate,a1.auc_details_no_of_adult,a1.auc_details_no_of_children,a1.auc_details_servicetype from auction a,auction_details a1 where (a.auc_id='"+id+"' and a.auc_id=a1.auc_id)");
        System.out.println("hii11"); 
        rs = stmt.executeQuery();
        System.out.println("hii101"); 
       
        AuctionDetails_Pojo auction_details;

        while (rs.next()) {
            
            auction_details = new AuctionDetails_Pojo();
            
            auction_details.setAuc_details_id(rs.getInt(1));
            auction_details.setAuc_details_fromplaceid(rs.getInt(2));
            auction_details.setAuc_details_toplaceid(rs.getInt(3));
            auction_details.setAuc_details_fromdate(rs.getString(4));
            auction_details.setAuc_details_todate(rs.getString(5));
            auction_details.setAuc_details_no_of_adult(rs.getInt(6));
            auction_details.setAuc_details_no_of_children(rs.getInt(7));
            auction_details.setAuc_details_servicetype(rs.getString(8));
           
            al1.add(auction_details);
            
            
        }
        
        return al1;
    }
     
     public ArrayList getAllAuction(int id) throws Exception {
        //ArrayList<Auction_Pojo> al = new ArrayList<Auction_Pojo>();
         ArrayList al1 = new ArrayList();
        stmt = conn.prepareStatement("select a.auc_id,a.auc_created_date,a.auc_status,a.auc_description,a.auc_budget,a.cust_id,c.cust_name from auction a,customer c where (a.auc_id='"+id+"' and a.cust_id=c.cust_id)");
        System.out.println("hii11"); 
        rs = stmt.executeQuery();
        System.out.println("hii101"); 
        Customer_Pojo customer;
        Auction_Pojo auction;
       

        while (rs.next()) {
            auction = new Auction_Pojo();
            customer=new Customer_Pojo();
            
            auction.setAuc_id(rs.getInt(1));
            auction.setAuc_created_date(rs.getString(2));
            auction.setAuc_status(rs.getString(3));
            auction.setAuc_description(rs.getString(4));
            auction.setAuc_budget(rs.getDouble(5));
            auction.setCust_id(rs.getInt(6));
            customer.setCust_name(rs.getString(7));
            
            al1.add(auction);
            al1.add(customer);
            
        }
        
        return al1;
    }

     
    public ArrayList<AuctionDetails_Pojo> getAllAuctionDetails1(int id) throws Exception {
        ArrayList<AuctionDetails_Pojo> al = new ArrayList<AuctionDetails_Pojo>();
        stmt = conn.prepareStatement("select * from auction_details where auc_details_id='"+id+"'");
        rs = stmt.executeQuery();

        AuctionDetails_Pojo auction_details;

        while (rs.next()) {
            auction_details = new AuctionDetails_Pojo();
            auction_details.setAuc_details_id(rs.getInt(1));
            auction_details.setAuc_details_fromplaceid(rs.getInt(2));
            auction_details.setAuc_details_toplaceid(rs.getInt(3));
            auction_details.setAuc_details_fromdate(rs.getString(4));
            auction_details.setAuc_details_todate(rs.getString(5));
            auction_details.setAuc_details_no_of_adult(rs.getInt(6));
            auction_details.setAuc_details_no_of_children(rs.getInt(7));
            auction_details.setAuc_details_servicetype(rs.getString(8));
            auction_details.setAuc_id(rs.getInt(9));
            
            al.add(auction_details);
            
        }
        
        return al;
    }

    public boolean isAuctionDetailsAdd(AuctionDetails_Pojo auction_details) throws Exception {
        stmt = conn.prepareStatement("insert into auction_details values(0,?,?,?,?,?,?,?,?)");
        stmt.setInt(1, auction_details.getAuc_details_fromplaceid());
        stmt.setInt(2, auction_details.getAuc_details_toplaceid());
        stmt.setString(3, auction_details.getAuc_details_fromdate());
        stmt.setString(4, auction_details.getAuc_details_todate());
        stmt.setInt(5, auction_details.getAuc_details_no_of_adult());
        stmt.setInt(6, auction_details.getAuc_details_no_of_children());
        stmt.setString(7, auction_details.getAuc_details_servicetype());
        stmt.setInt(8, auction_details.getAuc_id());
        
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    //Update City
    public boolean isUpdateAuctionDetails(AuctionDetails_Pojo auction_details) throws Exception {
        stmt = conn.prepareStatement("update auction_details set auc_details_fromplaceid=?,auc_details_toplaceid=?,auc_details_fromdate=?,auc_details_todate=?,auc_details_no_of_adult=?,auc_details_no_of_children=?,auc_details_servicetype=?,auc_id=? where auc_details_id=?");
        stmt.setInt(1, auction_details.getAuc_details_fromplaceid());
        stmt.setInt(2, auction_details.getAuc_details_toplaceid());
        stmt.setString(3, auction_details.getAuc_details_fromdate());
        stmt.setString(4, auction_details.getAuc_details_todate());
        stmt.setInt(5, auction_details.getAuc_details_no_of_adult());
        stmt.setInt(6, auction_details.getAuc_details_no_of_children());
        stmt.setString(7, auction_details.getAuc_details_servicetype());
        stmt.setInt(8, auction_details.getAuc_id());
        stmt.setInt(9, auction_details.getAuc_details_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete City
    public boolean isDeleteAuctionDetails(AuctionDetails_Pojo auction_details) throws Exception {
        stmt = conn.prepareStatement("delete from auction_details where auc_details_id=?");
        stmt.setInt(1, auction_details.getAuc_details_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    public static void main(String x[]) throws Exception {
        AuctionDetails_DAO auction_details = new AuctionDetails_DAO();
        
    }
}
