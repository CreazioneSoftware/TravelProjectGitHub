/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import com.pojo.Country_Pojo;
import java.util.*;
/**
 *
 * @author Shivani
 */
public class Country_DAO extends connectionInitializer {
     
  
    public Country_DAO() throws Exception
   {
        conn=com.dao.db.getInstance().getConnection();
   }
    
    
    //view Country
    public ArrayList<Country_Pojo> getAllCountry() throws Exception {
        ArrayList<Country_Pojo> al = new ArrayList<Country_Pojo>();
        stmt = conn.prepareStatement("select * from country");
        rs = stmt.executeQuery();

        Country_Pojo country;

        while (rs.next()) {
            country = new Country_Pojo();
            country.country_id = rs.getInt(1);
            country.country_name = rs.getString(2);
           

            al.add(country);
        }
        return al;
    }
    
     public ArrayList getCountryName(int id1) throws Exception{
         ArrayList al=new ArrayList();
         stmt=conn.prepareStatement("select country_name from country where country_id='"+id1+"'");
         rs=stmt.executeQuery();
         Country_Pojo country;
         
          while (rs.next()) {
            country = new Country_Pojo();
            
            country.setCountry_name(rs.getString(1));
            
            al.add(country);
          
        }
        
        return al;
         
     }

    //Insert City
   public boolean isCountryAdd(Country_Pojo country)throws Exception
    {
        stmt=conn.prepareStatement("insert into country values(0,?)");
        stmt.setString(1,country.getCountry_name());
        
        int value=stmt.executeUpdate();
        if(value>0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
   
    
    //Update City
    public boolean isUpdateCountry(Country_Pojo country) throws Exception {
        stmt = conn.prepareStatement("update country set country_name=? where country_id=?");
        stmt.setString(1, country.getCountry_name());
        stmt.setInt(2, country.getCountry_id());
        
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete City
    public boolean isDeleteCity(Country_Pojo country) throws Exception {
        stmt = conn.prepareStatement("delete from country where country_id=?");
        stmt.setInt(1, country.getCountry_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    public static void main(String x[]) throws Exception {
        Country_DAO country=new Country_DAO();
    }



}
