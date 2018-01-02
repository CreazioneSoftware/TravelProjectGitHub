/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.util.*;
import java.sql.*;
import com.pojo.Address_Pojo;


public class Address_DAO extends connectionInitializer{
    
    public Address_DAO()throws Exception{
        conn = com.dao.db.getInstance().getConnection();
    }
    
     public ArrayList<Address_Pojo> getAllAddress() throws Exception {
        ArrayList<Address_Pojo> al = new ArrayList<Address_Pojo>();
        stmt = conn.prepareStatement("select * from address");
        rs = stmt.executeQuery();

        Address_Pojo address;

        while (rs.next()) {
            address = new Address_Pojo();
            address.setAddress_id(rs.getInt(1));
            address.setAddress_home(rs.getString(2));
            address.setAddress_landmark(rs.getString(3));
            address.setAddress_city(rs.getInt(4));
            address.setAddress_state(rs.getInt(5));
            address.setAddress_country(rs.getInt(6));
            address.setAddress_pincode(rs.getString(7));

            al.add(address);
            
           
        }
        Iterator i=al.iterator();
        while(i.hasNext())
        {
            Address_Pojo cp=(Address_Pojo)i.next();
            System.out.println(cp.getAddress_id()+"\t"+cp.getAddress_home()+"\t"+cp.getAddress_landmark()+"\t"+cp.getAddress_city()+"\t"+cp.getAddress_state()+"\t"+cp.getAddress_country()+"\t"+cp.getAddress_pincode());
        }
        return al;
    }

     public ArrayList<Address_Pojo> getAllAddress1(int id) throws Exception {
        ArrayList<Address_Pojo> al = new ArrayList<Address_Pojo>();
         
        stmt = conn.prepareStatement("select * from address where address_id='"+id+"'");
        rs = stmt.executeQuery();

        Address_Pojo address;

        while (rs.next()) {
            address = new Address_Pojo();
            address.setAddress_id(rs.getInt(1));
            address.setAddress_home(rs.getString(2));
            address.setAddress_landmark(rs.getString(3));
            address.setAddress_city(rs.getInt(4));
            address.setAddress_state(rs.getInt(5));
            address.setAddress_country(rs.getInt(6));
            address.setAddress_pincode(rs.getString(7));

            al.add(address);
        }
        
        return al;
    }

    
    
    public boolean isAddressAdd(Address_Pojo address) throws Exception {
        stmt = conn.prepareStatement("insert into address values(0,?,?,?,?,?,?)");
        stmt.setString(1, address.getAddress_home());
        stmt.setString(2, address.getAddress_landmark());
        stmt.setInt(3, address.getAddress_city());
        stmt.setInt(4, address.getAddress_state());
        stmt.setInt(5,address.getAddress_country());
        stmt.setString(6,address.getAddress_pincode());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    //Update City
    public boolean isUpdateAddress(Address_Pojo address) throws Exception {
        stmt = conn.prepareStatement("update address set address_home=?,address_landmark=?,address_city=?,address_state=?,address_country=?,address_pincode=? where address_id=?");
        stmt.setString(1, address.getAddress_home());
        stmt.setString(2,address.getAddress_landmark());
        stmt.setInt(3,address.getAddress_city());
        stmt.setInt(4,address.getAddress_state());
        stmt.setInt(5,address.getAddress_country());
        stmt.setString(6,address.getAddress_pincode());
        stmt.setInt(7,address.getAddress_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete City
    public boolean isDeleteAddress(Address_Pojo address) throws Exception {
        stmt = conn.prepareStatement("delete from address where address_id=?");
        stmt.setInt(1, address.getAddress_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    public static void main(String x[]) throws Exception {
        Address_DAO address = new Address_DAO();
        
    }

}

    

