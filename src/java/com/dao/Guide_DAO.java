/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import com.pojo.Guide_Pojo;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.util.ArrayList;

/**
 *
 * @author Shivani
 */
public class Guide_DAO extends connectionInitializer {
     
    public Guide_DAO() throws Exception
   {
        conn=com.dao.db.getInstance().getConnection();
   }
    
    //view Guide
    public ArrayList<Guide_Pojo> getAllGuide() throws Exception {
        ArrayList<Guide_Pojo> al = new ArrayList<Guide_Pojo>();
        stmt = conn.prepareStatement("select * from guide");
        rs = stmt.executeQuery();

        Guide_Pojo guide;

        while (rs.next()) {
            guide = new Guide_Pojo();
            guide.setGuid_id(rs.getInt(1));
            guide.guid_id= rs.getInt(1);
             guide.travel_age_id = rs.getInt(2);
            guide.guide_name = rs.getString(3);
            guide.guide_email = rs.getString(4);
            guide.guide_contact = rs.getString(5);
            guide.guide_address = rs.getString(6);
            guide.place_id= rs.getInt(7);
            guide.state_id= rs.getInt(8);
            guide.country_id= rs.getInt(9);
            
            al.add(guide);
        }
        return al;
    }

     public ArrayList<Guide_Pojo> getAllGuide1(int id) throws Exception {
        ArrayList<Guide_Pojo> al = new ArrayList<Guide_Pojo>();
                Guide_Pojo guide;

        stmt = conn.prepareStatement("select * from guide where guid_id=? ");
       stmt.setInt(1, id);
        rs = stmt.executeQuery();
        

        while (rs.next()) {
            guide = new Guide_Pojo();
             guide.setGuid_id(rs.getInt(1));
             //guide.guid_id= rs.getInt(1);
             guide.setTravel_age_id(rs.getInt(2));
            guide.setGuide_name(rs.getString(3));
            guide.setGuide_email(rs.getString(4));
            guide.setGuide_contact(rs.getString(5));
            guide.setGuide_address(rs.getString(6));
            guide.setPlace_id(rs.getInt(7));
            guide.setState_id(rs.getInt(8));
            guide.setCountry_id(rs.getInt(9));
            
            al.add(guide);
        }
        return al;
    }
    
    /*Auto guide id generate
    int guideId=0;
   int getGuideId()throws Exception
	{	
		stmt=conn.prepareStatement("Select max(guide_id) from guide");
		rs=stmt.executeQuery();
		if(rs.next())
		{
			guideId=rs.getInt(1);
		}
		++guideId;
		return guideId;
	}
        */
    //Insert Guide
   public boolean isGuideAdd(Guide_Pojo guide)throws Exception
    {
        stmt=conn.prepareStatement("insert into guide values(0,?,?,?,?,?,?,?,?)");
         stmt.setInt(1,guide.getTravel_age_id());
        stmt.setString(2,guide.getGuide_name());
        stmt.setString(3,guide.getGuide_email());
        stmt.setString(4,guide.getGuide_contact());
        stmt.setString(5,guide.getGuide_address());
        stmt.setInt(6,guide.getPlace_id());
        stmt.setInt(7,guide.getState_id());
        stmt.setInt(8,guide.getCountry_id());
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
   
   
    
    //Update Guide
    public boolean isUpdateGuide(Guide_Pojo guide) throws Exception {
        System.out.println("Hiiii");
        stmt = conn.prepareStatement("update guide set travel_age_id=?,guide_name=?,guide_email=?,guide_contact=?,guide_address=?, place_id=?,state_id=?,country_id=? where guid_id='"+guide.getGuid_id()+"'");
         
        stmt.setInt(1, guide.getTravel_age_id());
        stmt.setString(2, guide.getGuide_name());
        stmt.setString(3, guide.getGuide_email());
        stmt.setString(4, guide.getGuide_contact());
        stmt.setString(5, guide.getGuide_address());
        stmt.setInt(6, guide.getPlace_id());
        stmt.setInt(7, guide.getState_id());
        stmt.setInt(8, guide.getCountry_id());
  
        
        int value = stmt.executeUpdate();
        System.out.println(value);
        if (value > 0) {
             System.out.println("success method");
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete Guide
    public boolean isDeleteGuide(Guide_Pojo guide) throws Exception {
          

        stmt = conn.prepareStatement("delete from guide where guid_id=?");
        stmt.setInt(1, guide.getGuid_id());
        int value = stmt.executeUpdate();
        System.out.println(value);
        if (value > 0) {
            
            return true;
        } else {
             System.out.println("not method");
            return false;
            
        }
    }

   
    public static void main(String x[]) throws Exception {
        Guide_DAO guide=new Guide_DAO();
    }



}

