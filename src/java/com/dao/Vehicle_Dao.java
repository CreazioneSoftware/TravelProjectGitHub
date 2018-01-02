/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.util.*;

/**
 *
 * @author SAGARDADA
 */
public class Vehicle_Dao extends connectionInitializer {

    public int vehicle_id;

    public Vehicle_Dao() throws Exception {
        conn = com.dao.db.getInstance().getConnection();
    }

    public boolean isRegister(com.pojo.Vehicle v) throws Exception {
        System.out.println("hi");
        // int hotelid=this.get_hotel_Id();
        stmt = conn.prepareStatement("insert into vehicle values(0,?,?,?,?,?,?)");
        System.out.println("hi1");
        stmt.setInt(1, v.getVehicle_cat_id());
        stmt.setString(2, v.getVehicle_no());
        stmt.setString(3, v.getVehicle_driver());
        stmt.setString(4, v.getVehicle_model());
        stmt.setString(5, v.getVehicle_company());
        stmt.setString(6, v.getVehicle_status());

        System.out.println("hi2");

        int value = stmt.executeUpdate();
        System.out.println("hi3");
        if (value > 0) {
            System.out.println("hi4");

            return true;
        } else {
            return false;
        }
    }

    public boolean isupdate(com.pojo.Vehicle v) throws Exception {

        stmt = conn.prepareStatement("update vehicle set vehicle_cat_id=?,vehicle_no=?,vehicle_driver=?,vehicle_model=?,vehicle_company=?,vehicle_status=? where vehicle_id=?");
        System.out.println("update");
      
        stmt.setInt(1, v.vehicle_cat_id);
        stmt.setString(2, v.getVehicle_no());
        stmt.setString(3, v.vehicle_driver);
        stmt.setString(4, v.vehicle_model);
        stmt.setString(5, v.vehicle_company);
        stmt.setString(6, v.vehicle_status);
          stmt.setInt(7, v.vehicle_id);
    System.out.println("update1");
        int value = stmt.executeUpdate();
            System.out.println("update2");
        if (value > 0) 
        {
                System.out.println("updatedddddddd");
            return true;
        } else {
                System.out.println(" not update");
            return false;
        }
    }

    public boolean isDelete(com.pojo.Vehicle v) throws Exception {
        stmt = conn.prepareStatement("delete from vehicle where vehicle_id=?");
            System.out.println("hii de");

        
        //stmt.setInt(1,v.getVehicle_id());
        
         stmt.setInt(1, v.getVehicle_id());
             System.out.println("hii de1");

        int value = stmt.executeUpdate();
            System.out.println("hii de2");
            System.out.println(value);
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<com.pojo.Vehicle> getAllVehicles(com.pojo.Vehicle v) throws Exception {
        ArrayList al = new ArrayList();
        stmt = conn.prepareStatement("select * from vehicle");
        rs = stmt.executeQuery();

        while (rs.next()) {
            v = new com.pojo.Vehicle();
            v.vehicle_id = rs.getInt(1);
            v.vehicle_cat_id = rs.getInt(2);
            v.setVehicle_no(rs.getString(3));
            v.vehicle_driver = rs.getString(4);
            v.vehicle_model = rs.getString(5);
            v.vehicle_company = rs.getString(6);
            v.vehicle_status = rs.getString(7);

            al.add(v);

        }
        return al;
    }
 public ArrayList<com.pojo.Vehicle> getAllVehicles1(int id) throws Exception {
        ArrayList al = new ArrayList();
        stmt = conn.prepareStatement("select * from vehicle where vehicle_id=?");
        stmt.setInt(1,id);
        rs = stmt.executeQuery();
com.pojo.Vehicle v;
        while (rs.next()) {
            v = new com.pojo.Vehicle();
            v.setVehicle_id(rs.getInt(1));
            v.setVehicle_cat_id(rs.getInt(2));
            v.setVehicle_no(rs.getString(3));
            v.setVehicle_driver (rs.getString(4));
            v.setVehicle_model (rs.getString(5));
            v.setVehicle_company (rs.getString(6));
            v.setVehicle_status (rs.getString(7));

            al.add(v);

        }
        return al;
    }
    public static void main(String x[]) throws Exception {
        Vehicle_Dao vehicledao = new Vehicle_Dao();
    }

}
