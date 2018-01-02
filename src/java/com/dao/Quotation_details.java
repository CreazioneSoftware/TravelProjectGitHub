/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import java.sql.ResultSet;
import java.util.*;
import com.pojo.Quotation_details_pojo;
/**
 *
 * @author RUSHIKESH
 */
public class Quotation_details  extends com.dao.connectionInitializer {
         public Quotation_details() throws Exception{
         conn=com.dao.db.getInstance().getConnection();
         if(conn!=null){
            System.out.println("Connectio success in Quotation_details");
         }
   }
         public boolean addQuotationDetails(com.pojo.Quotation_details_pojo qp) throws Exception{
            stmt=conn.prepareStatement("insert into quotation_details values(?,?,?,?,?,?)");
            stmt.setInt(1,qp.getQuot_details_id());
            stmt.setString(2,qp.getQuot_details_items());
            stmt.setInt(3,qp.getQuot_details_quantity());
            stmt.setDouble(4,qp.getQuot_details_rate());
            stmt.setDouble(5,qp.getQuot_details_total());
            stmt.setInt(6,qp.getQuot_id());
            int value=stmt.executeUpdate();
            if(value>0)
            {
              System.out.println("Data Save Successfully in Quot_Details");
              return true;
            }
            else{
              System.out.println("Data NOT Save in Quot_Details");
              return false;
            }
         }
         
         public ResultSet ViewQuotation() throws Exception
         {
             stmt=conn.prepareStatement("SELECT  \n" +
"quotation.quot_id, quotation.auc_id, quotation.travel_age_id, quotation.travel_age_id, quotation.quot_total_amount, quotation_details.quot_details_id, quotation_details.quot_details_items, quotation_details.quot_details_quantity, quotation_details.quot_details_rate, quotation_details.quot_details_total\n" +
"FROM quotation_details \n" +
"INNER JOIN quotation ON quotation_details.quot_id=quotation.quot_id");
           
             rs=stmt.executeQuery();
            return rs;
         }
         
         public boolean deleteQuotation(com.pojo.Quotation_details_pojo qdp) throws Exception
         {
           stmt=conn.prepareStatement("delete from Quotation_Details where quot_details_id=?");
          
           stmt.setInt(1,qdp.getQuot_details_id());
            int value=stmt.executeUpdate();
           if(value>0){
             System.out.println("Data Save Successfully");
             return true;
           }
           else
           {
             System.out.println("Data NOT save");
              return false;
           }
         }
         
        public boolean updateQuotation(com.pojo.Quotation_details_pojo qdp)throws Exception{
           stmt=conn.prepareStatement("update quotation_details set quot_details_items=?, quot_details_quantity=?, quot_details_rate=?, quot_details_total=?, quot_id=? where quot_details_id=?");
           
           stmt.setString(1,qdp.getQuot_details_items());
           stmt.setInt(2,qdp.getQuot_details_quantity());
           stmt.setDouble(3,qdp.getQuot_details_rate());
           stmt.setDouble(4,qdp.getQuot_details_total());
           stmt.setInt(5,qdp.getQuot_id());
          stmt.setInt(6,qdp.getQuot_details_id());
           int value=stmt.executeUpdate();
           if(value>0)
           {
             System.out.println("Quotation Update Successfully");
             return true;
           }
           else{
             System.out.println("Quotation NOT Update Successfully");
             return false;
           }
        }
        
        public ResultSet ViewSubQuotation() throws Exception
        {
          stmt=conn.prepareStatement("select *from Quotation_details");
          rs=stmt.executeQuery();
          return rs;
        }
}
