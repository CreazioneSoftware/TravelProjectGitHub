/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import java.sql.ResultSet;
import java.util.*;
import com.pojo.Customer_Pojo;

public class Customer extends connectionInitializer {

    public Customer() throws Exception {

        conn = com.dao.db.getInstance().getConnection();

        if (conn != null) {
            System.out.println("connection success in Test Class......");
        }
    }

    public boolean addCustomer(com.pojo.Customer_Pojo cust) throws Exception {

        stmt = conn.prepareStatement("insert into Customer values (0,?,?,?,?)");
        // Parameters start with 1

       /* stmt.setInt(1, cust.getCust_id());*/
        stmt.setString(1, cust.getCust_name());
        stmt.setString(2, cust.getCust_contact());
        stmt.setString(3, cust.getCust_email());
        stmt.setInt(4,1);
    /*
        stmt.setInt(5,cust.getPlace_id());
        stmt.setInt(6,cust.getCity_id());
        stmt.setInt(7, cust.getState_id());
        stmt.setInt(8, cust.getCountry_id());
   */
        int value = stmt.executeUpdate();
        
        if (value > 0) {

            return true;
        } else {
            return false;
        }
    }
    
    public boolean deleteCustomer(com.pojo.Customer_Pojo cp) throws Exception{
      stmt=conn.prepareStatement("delete from customer where cust_id=?");
    //stmt=conn.prepareStatement("delete *from customer where cust_name=?");
     stmt.setInt(1,cp.getCust_id());
     //stmt.setString(1,cp.getCust_name());
      int value=stmt.executeUpdate();
      if (value>0)
      {
          System.out.println("Customer deleted successfully...");
        return true;
      }
      else{
          System.out.println("Customer NOT deleted ");
        return false;
      }
    }
    
    public boolean updateCustomer(com.pojo.Customer_Pojo cp) throws Exception{
      stmt=conn.prepareStatement("update customer set cust_name=?,cust_contact=?,cust_email=?,address_id=? where cust_id=?");
      stmt.setInt(5,cp.getCust_id());
      stmt.setString(1,cp.getCust_name());
      stmt.setString(2,cp.getCust_contact());
      stmt.setString(3,cp.getCust_email());
      stmt.setInt(4,1);
      
     int value=stmt.executeUpdate();
     if(value>0)
     {
         System.out.println("Customer updated successfully...");
        return true;     
     }
     else{
         System.out.println("Customer NOT updated successfully...");
         return false;
     }
    }
    
     public ResultSet viewCustomer() throws Exception {
       //ArrayList al =new ArrayList();
      
       com.pojo.Customer_Pojo cp;
       stmt=conn.prepareStatement("SELECT\n" +
"customer.cust_id, customer.cust_name, customer.cust_contact, customer.cust_email, address.address_home, address.address_landmark, address.address_city, address.address_state, address.address_country, address.address_pincode, address.address_id\n" +
"FROM customer\n" +
"INNER JOIN address ON customer.address_id=address.address_id;");
       rs=stmt.executeQuery();
        return rs;
     }
}

/*
 *
 * @param 
 * @throws Exception
 */
/*
    public boolean deleteCustomer(Customer_Pojo cust) throws Exception {

        stmt = conn.prepareStatement("delete from Customer where cust_id=?");
      int value = stmt.executeUpdate();
      
        stmt.setInt(1, cust.getCust_id());
        stmt.executeUpdate();
        
        if (value > 0) {

            return true;
        } else {
            return false;
        }

    }

    public boolean updateAuction(Customer_Pojo cust) throws Exception {

        stmt = conn.prepareStatement("update Customer set cust_name=?,cust_contact=?, custm_email=?, address_id=?" + "where cust_id=?");
        // Parameters start with 1
        stmt.setString(1, cust.getCust_name());
        stmt.setInt(2,cust.getCust_contact());
        stmt.setString(3, cust.getCust_email());
        stmt.setString(4, cust.getAddress_id());
       int value = stmt.executeUpdate();
        stmt.executeUpdate();
         
        if (value > 0) {

            return true;
        } else {
            return false;
        }
     
    }

}
 */
