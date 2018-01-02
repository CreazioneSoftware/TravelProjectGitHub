/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import com.pojo.Customer_Pojo;
import java.util.ArrayList;

/**
 *
 * @author Shivani
 */
public class Customer_DAO extends connectionInitializer {
     
   
    public Customer_DAO() throws Exception
   {
        conn=com.dao.db.getInstance().getConnection();
   }
    
    //view Customer
    public ArrayList<Customer_Pojo> getAllCustomer() throws Exception {
        ArrayList<Customer_Pojo> al = new ArrayList<Customer_Pojo>();
        stmt = conn.prepareStatement("select * from customer");
        rs = stmt.executeQuery();

        Customer_Pojo customer;

        while (rs.next()) {

            customer=new Customer_Pojo();
            customer.cust_id = rs.getInt(1);
            customer.cust_name= rs.getString(2);
            customer.cust_contact = rs.getString(3);
            customer.cust_email = rs.getString(4);
            customer.cust_address= rs.getString(5);
            customer.city_id = rs.getInt(6);
            customer.state_id = rs.getInt(7);
            customer.country_id = rs.getInt(8);
            
            al.add(customer);
        }
        return al;
    }

    
    
    /*Auto City id generate
    int customerId=0;
   int getCustomerId()throws Exception
	{	
		stmt=conn.prepareStatement("Select max(cust_id) from customer");
		rs=stmt.executeQuery();
		if(rs.next())
		{
			customerId=rs.getInt(1);
		}
		++customerId;
		return customerId;
	}*/
 
    //Insert City
   public boolean isCustomerAdd(Customer_Pojo customer)throws Exception
    {
        stmt=conn.prepareStatement("insert into customer values(0,?,?,?,?,?,?,?)");
        stmt.setString(1,customer.getCust_name());
        stmt.setString(2,customer.getCust_contact());
        stmt.setString(3,customer.getCust_email());
        stmt.setString(4,customer.getCust_address());
        stmt.setInt(5,customer.getCity_id());
        stmt.setInt(6,customer.getState_id());
        stmt.setInt(7,customer.getCountry_id());
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
    public boolean isUpdateCustomer(Customer_Pojo customer) throws Exception {
        stmt = conn.prepareStatement("update customer set customer_name=?,customer_contact=?,customer_email=?,customer_address=?,state_id=?,city_id=?,country_id=? where customer_id=?");
        stmt.setString(1, customer.getCust_name());
        stmt.setString(2, customer.getCust_contact());
        stmt.setString(3, customer.getCust_email());
        stmt.setString(4, customer.getCust_address());
        stmt.setInt(5, customer.getState_id());
        stmt.setInt(6, customer.getCity_id());
        stmt.setInt(7, customer.getCountry_id());
        stmt.setInt(8, customer.getCust_id());
        
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete City
    public boolean isDeleteCustomer(Customer_Pojo customer) throws Exception {
        stmt = conn.prepareStatement("delete from customer where cust_id=?");
        stmt.setInt(1, customer.getCity_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    public static void main(String x[]) throws Exception {
        Customer_DAO customer=new Customer_DAO();
    }



}

