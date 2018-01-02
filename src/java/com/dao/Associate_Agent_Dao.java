/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.sql.ResultSet;
import java.util.*;

public class Associate_Agent_Dao extends com.dao.connectionInitializer{
    
    
    public Associate_Agent_Dao()throws Exception
    {
        
        conn=com.dao.db.getInstance().getConnection();
     }
    
  
    public boolean AddAssociate(com.pojo.Associate_Agent asso_age) throws Exception{
    
        
        
          stmt=conn.prepareStatement("insert into associate_agents values(0,?,?,?,?,?,?,?)");
              
            stmt.setString(1, asso_age.getAsso_age_name());
            stmt.setString(2, asso_age.getAsso_age_firmname());
            stmt.setString(3, asso_age.getAsso_age_contact());
            stmt.setString(4, asso_age.getAsso_age_email());
            stmt.setString(5, asso_age.getAsso_age_joining());
            stmt.setInt(6, asso_age.getTravel_age_id());
            stmt.setInt(7, asso_age.getAddress_id());
            
             int value = stmt.executeUpdate();
             if (value > 0) {

            return true;
        } else {
            return false;
        }
    }
    
    /* 
    public ArrayList getAssociate_Agent() throws Exception{
   ArrayList al= new ArrayList();
   pojo.Associate_Agent asso_age ;
   stmt=conn.prepareStatement("select * from associate_agent");
   rs=stmt.executeQuery();
   while(rs.next()){
   asso_age= new pojo.Associate_Agent();
   
   asso_age.setAsso_age_id(rs.getInt(1));
   asso_age.setAsso_age_name(rs.getString(2));
   asso_age.setAsso_age_firmname(rs.getString(3));
   asso_age.setAsso_age_contact(rs.getString(4));
   asso_age.setAsso_age_email(rs.getString(5));
   asso_age.setAsso_age_joining(rs.getString(6));
  
   al.add(asso_age);
   }
    return al;
    }

  
      */
    
    public boolean  deleteAssociate(com.pojo.Associate_Agent asso_age) throws Exception{
        
        
        stmt=conn.prepareStatement("delete from associate_agents where asso_age_id=?");
        
        
            stmt.setInt(1, asso_age.getAsso_age_id());
           
      int value= stmt.executeUpdate();
      if(value>0)
      {
          System.out.println("Associate Agent deleted");
         return true;
      }
      else
      {
          System.out.println("Associate Agent deleted");
        return false;
      }

      }
    
    
    public boolean updateAssociate(com.pojo.Associate_Agent asso_age) throws Exception{
        
        
         stmt = conn.prepareStatement("update associate_agents set asso_age_name=?, asso_age_firmname=?, asso_age_contact=?,asso_age_email=?,asso_age_joining=?"+"where asso_age_id=?");
                  
           stmt.setString(1, asso_age.getAsso_age_name());
           stmt.setString(2, asso_age.getAsso_age_firmname());
           stmt.setString(3, asso_age.getAsso_age_contact());
           stmt.setString(4, asso_age.getAsso_age_email());
           stmt.setString(5, asso_age.getAsso_age_joining());
           
           stmt.setInt(6, asso_age.getAsso_age_id());  
           stmt.executeUpdate();
           
             int value = stmt.executeUpdate();
             if (value > 0) {

            return true;
        } else {
            return false;
        }
        
    }
    
    
      public  ResultSet getAssociateAgent() throws Exception {
          
       
        stmt = conn.prepareStatement("select * from associate_agents");
           rs=stmt.executeQuery();
        return rs;
      
    }
    
    
    
}
