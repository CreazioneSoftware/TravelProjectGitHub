/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.pojo.Auction_Pojo;
import java.util.ArrayList;
import java.util.Iterator;


public class Auction_DAO extends connectionInitializer{
    public Auction_DAO()throws Exception{
        conn = com.dao.db.getInstance().getConnection();
    }
    
     public ArrayList<Auction_Pojo> getAllAuction() throws Exception {
        ArrayList<Auction_Pojo> al = new ArrayList<Auction_Pojo>();
        stmt = conn.prepareStatement("select * from auction");
        rs = stmt.executeQuery();

        Auction_Pojo auction;

        while (rs.next()) {
            auction = new Auction_Pojo();
            auction.setAuc_id(rs.getInt(1));
            auction.setAuc_created_date(rs.getString(2));
            auction.setAuc_status(rs.getString(3));
            auction.setAuc_description(rs.getString(4));
            auction.setAuc_budget(rs.getDouble(5));
            auction.setCust_id(rs.getInt(6));
            
            al.add(auction);
            
        }
        Iterator i=al.iterator();
        while(i.hasNext())
        {
            Auction_Pojo cp=(Auction_Pojo)i.next();
            System.out.println(cp.getAuc_id()+"\t"+cp.getAuc_created_date()+"\t"+cp.getAuc_status()+"\t"+cp.getAuc_description()+"\t"+cp.getAuc_budget()+"\t"+cp.getCust_id());
        }
        return al;
    }

    public ArrayList<Auction_Pojo> getAllAuction1(int id) throws Exception {
        ArrayList<Auction_Pojo> al = new ArrayList<Auction_Pojo>();
        stmt = conn.prepareStatement("select * from auction where auc_id='"+id+"'");
        rs = stmt.executeQuery();

        Auction_Pojo auction;

        while (rs.next()) {
            auction = new Auction_Pojo();
            auction.setAuc_id(rs.getInt(1));
            auction.setAuc_created_date(rs.getString(2));
            auction.setAuc_status(rs.getString(3));
            auction.setAuc_description(rs.getString(4));
            auction.setAuc_budget(rs.getDouble(5));
            auction.setCust_id(rs.getInt(6));
            
            al.add(auction);
            
        }
        return al;
    }
    public ArrayList getAuctionid() throws Exception{
         ArrayList al=new ArrayList();
         stmt=conn.prepareStatement("select auc_id from auction where auc_id=(select MAX(auc_id) from auction)");
         rs=stmt.executeQuery();
         Auction_Pojo auction;
         
          while (rs.next()) {
            auction = new Auction_Pojo();
            
            auction.setAuc_id(rs.getInt(1));
            
            al.add(auction);
          
        }
        
        return al;
         
     }
     public ArrayList<Auction_Pojo> getAllAuction2(int id) throws Exception {
        ArrayList<Auction_Pojo> al = new ArrayList<Auction_Pojo>();
        stmt = conn.prepareStatement("select * from auction where cust_id='"+id+"'");
        rs = stmt.executeQuery();

        Auction_Pojo auction;

        while (rs.next()) {
            auction = new Auction_Pojo();
            auction.setAuc_id(rs.getInt(1));
            auction.setAuc_created_date(rs.getString(2));
            auction.setAuc_status(rs.getString(3));
            auction.setAuc_description(rs.getString(4));
            auction.setAuc_budget(rs.getDouble(5));
            auction.setCust_id(rs.getInt(6));
            
            al.add(auction);
            
        }
        return al;
    }

    public boolean isAuctionAdd(Auction_Pojo auction) throws Exception {
        stmt = conn.prepareStatement("insert into auction values(0,?,?,?,?,?)");
        stmt.setString(1, auction.getAuc_created_date());
        stmt.setString(2, auction.getAuc_status());
        stmt.setString(3, auction.getAuc_description());
        stmt.setDouble(4, auction.getAuc_budget());
        stmt.setInt(5, auction.getCust_id());
        
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    //Update City
    public boolean isUpdateAuction(Auction_Pojo auction) throws Exception {
        stmt = conn.prepareStatement("update auction set auc_created_date=?,auc_status=?,auc_description=?,auc_budget=?,cust_id=? where auc_id=?");
        stmt.setString(1, auction.getAuc_created_date());
        stmt.setString(2, auction.getAuc_status());
        stmt.setString(3, auction.getAuc_description());
        stmt.setDouble(4, auction.getAuc_budget());
        stmt.setInt(5, auction.getCust_id());
        stmt.setInt(6,auction.getAuc_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete City
    public boolean isDeleteAuction(Auction_Pojo auction) throws Exception {
        stmt = conn.prepareStatement("delete from auction where auc_id=?");
        stmt.setInt(1, auction.getAuc_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    public static void main(String x[]) throws Exception {
        Auction_DAO auction = new Auction_DAO();
        
    }

    
}
