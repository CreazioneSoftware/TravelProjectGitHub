/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.sql.ResultSet;
import java.util.*;
import com.pojo.Quotation_pojo;

/**
 *
 * @author RUSHIKESH
 */
public class Quotation extends com.dao.connectionInitializer {

    public Quotation() throws Exception {
        conn = com.dao.db.getInstance().getConnection();
        if (conn != null) {
            System.out.println("Connection success in Quotation");
        }

    }

    public boolean addQuotation(com.pojo.Quotation_pojo qp) throws Exception {
        stmt = conn.prepareStatement("insert into quatation values(?,?,?,?)");
        stmt.setInt(1, qp.getQuot_id());
        stmt.setDouble(2, qp.getQuot_total_amount());
        stmt.setInt(3, qp.getAuc_id());
        stmt.setInt(4, qp.getTravel_age_id());
        int value=stmt.executeUpdate();
        if(value>0)
        {
            System.out.println();
            return true;
                }
        else{
           System.out.println("");
           return false;
           
        }
    }
    
    public boolean deleteQuotation(com.pojo.Quotation_pojo qp) throws Exception
    {
      stmt=conn.prepareStatement("delete from quatation where quot_id=?");
      stmt.setInt(1,qp.getQuot_id());
      int value=stmt.executeUpdate();
      if(value>0)
      {
          System.out.println("Quotation deleted Successfully");
        return true;
      }
      else
      {
          System.out.println("Quotation NOT deleted");
        return false;
      }
    }
    public boolean updateQuotation(com.pojo.Quotation_pojo qp) throws Exception
    {
      stmt=conn.prepareStatement("update quotation set quot_total_amount=?, auc_id=?, travel_age_id=? where quot_id=?");
      stmt.setDouble(1,qp.getQuot_total_amount());
      stmt.setInt(2,qp.getAuc_id());
      stmt.setInt(3,qp.getTravel_age_id());
      stmt.setInt(4,qp.getQuot_id());
      int value=stmt.executeUpdate();
      if(value>0)
      {
         System.out.println("Quotation Updated Successfully");
        return true;
      }
      else
      {
        System.out.println("Quotation NOT Updated");
        return false;
      }
    }
    
             public ResultSet ViewQuotation() throws Exception
         {
             stmt=conn.prepareStatement("SELECT *from quatation");
           
             rs=stmt.executeQuery();
            return rs;
         }
         
}
