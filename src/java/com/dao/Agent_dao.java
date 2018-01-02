/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.sql.ResultSet;
import java.util.*;


public class Agent_dao extends connectionInitializer{
    public Agent_dao() throws Exception
    {
        conn=com.dao.db.getInstance().getConnection();
        
    }
    public boolean Add_agent(com.pojo.Agent_pojo ap)throws Exception
    {
        stmt=conn.prepareStatement("insert into agent values(0,?,?,?,?,?,?,?,?)");
        stmt.setString(1,ap.getA_fname());
        stmt.setString(2,ap.getA_lname());
        stmt.setString(3, ap.getA_cname());
        stmt.setInt(4,ap.getA_country());
        stmt.setInt(5,ap.getA_state());
        stmt.setInt(6,ap.getA_city());
        stmt.setString(7,ap.getA_number());
        stmt.setString(8,ap.getA_email());
        int val=stmt.executeUpdate();
        if (val>0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
   public ResultSet View()throws Exception
   {
       stmt=conn.prepareStatement("Select * from agent");
       rs=stmt.executeQuery();
       return rs;
   }
   
   public boolean delete(int i) throws Exception
   {
       stmt=conn.prepareStatement("delete  from agent where Agent_id='"+i+"'");
       int result=stmt.executeUpdate();
       if(result>0)
       {
           return true;
       }
       else
       {
           return false;
       }
       
   }
   
   public ResultSet getrecords(int id)throws Exception
   {
       stmt=conn.prepareStatement("select First_namae,Last_name,Company_name,Country_id,State_id,City_id,Mobile_number,Email_id from agent where Agent_id='"+id+"'");
       rs=stmt.executeQuery();
       return rs;
   }
   
   public boolean update(com.pojo.Agent_pojo ap, int id)throws Exception
   {
       stmt=conn.prepareStatement("update agent set First_namae=?,Last_name=?,Company_name=?,Country_id=?,State_id=?,City_id=?,Mobile_number=?,Email_id=? where Agent_id='"+id+"' ");
       stmt.setString(1,ap.getA_fname());
       stmt.setString(2,ap.getA_lname());
       stmt.setString(3,ap.getA_cname());
       stmt.setInt(4, ap.getA_country());
       stmt.setInt(5,ap.getA_state());
       stmt.setInt(6,ap.getA_city());
       stmt.setString(7, ap.getA_number());
       stmt.setString(8,ap.getA_email());
int update=stmt.executeUpdate();
if(update>0)
{
    return true;
}
else
{
    return false;
            
}
   }
}
