/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.util.*;
import java.sql.*;
import com.pojo.City_Pojo;

/**
 *
 * @author Shivani
 */
public class City_DAO extends connectionInitializer {

    public City_DAO() throws Exception {
        conn = com.dao.db.getInstance().getConnection();
    }
    
    //view city
    public ArrayList<City_Pojo> getAllCity() throws Exception {
        ArrayList<City_Pojo> al = new ArrayList<City_Pojo>();
        stmt = conn.prepareStatement("select * from city");
        rs = stmt.executeQuery();

        City_Pojo city;

        while (rs.next()) {
            city = new City_Pojo();
            city.city_id= rs.getInt(1);
            city.city_name = rs.getString(2);
            city.state_id = rs.getInt(3);
            city.country_id = rs.getInt(4);

            al.add(city);
        }
        Iterator i=al.iterator();
        while(i.hasNext())
        {
            City_Pojo cp=(City_Pojo)i.next();
            System.out.println(cp.getCity_id()+"\t"+cp.getCity_name()+"\t"+cp.getState_id()+"\t"+cp.getCountry_id());
        }
        return al;
    }
 public ArrayList getCityName(int id1) throws Exception{
         ArrayList al=new ArrayList();
         stmt=conn.prepareStatement("select city_name from city where city_id='"+id1+"'");
         rs=stmt.executeQuery();
         City_Pojo city;
         
          while (rs.next()) {
            city = new City_Pojo();
            
            city.setCity_name(rs.getString(1));
            
            al.add(city);
          
        }
        
        return al;
         
     }
    /*Auto City id generate
    int cityId=0;
   int getCityId()throws Exception
	{	
		stmt=conn.prepareStatement("Select max(city_id) from city");
		rs=stmt.executeQuery();
		if(rs.next())
		{
			cityId=rs.getInt(1);
		}
		++cityId;
		return cityId;
	}
     */
    //Insert City
    public boolean isCityAdd(City_Pojo city) throws Exception {
        stmt = conn.prepareStatement("insert into city values(0,?,?,?)");
        stmt.setString(1, city.getCity_name());
        stmt.setInt(2, city.getState_id());
        stmt.setInt(3, city.getCountry_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    //Update City
    public boolean isUpdateCity(City_Pojo city) throws Exception {
        stmt = conn.prepareStatement("update city set city_name=?,state_id=?,country_id=? where city_id=?");
        stmt.setString(1, city.getCity_name());
        stmt.setInt(2, city.getState_id());
        stmt.setInt(3, city.getCountry_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete City
    public boolean isDeleteCity(City_Pojo city) throws Exception {
        stmt = conn.prepareStatement("delete from city where city_id=?");
        stmt.setInt(1, city.getCity_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    public static void main(String x[]) throws Exception {
        City_DAO city = new City_DAO();
        city.getAllCity();
    }

}
