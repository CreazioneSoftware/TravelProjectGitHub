/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import com.pojo.State_Pojo;
import java.util.ArrayList;
 
public class State_DAO  extends connectionInitializer {
     
    public State_DAO() throws Exception
   {
        conn=com.dao.db.getInstance().getConnection();
   }
    //view State
    public ArrayList<State_Pojo> getAllState() throws Exception {
        ArrayList<State_Pojo> al = new ArrayList<State_Pojo>();
        stmt = conn.prepareStatement("select * from state");
        rs = stmt.executeQuery();

        State_Pojo state;

        while (rs.next()) {
            state = new State_Pojo();
            state.state_id=rs.getInt(1);
            state.state_name= rs.getString(2);
            state.country_id = rs.getInt(3);
            
            al.add(state);
        }
        return al;
    }

     public ArrayList getStateName(int id1) throws Exception{
         ArrayList al=new ArrayList();
         stmt=conn.prepareStatement("select state_name from state where state_id='"+id1+"'");
         rs=stmt.executeQuery();
         State_Pojo state;
         
          while (rs.next()) {
            state = new State_Pojo();
            
            state.setState_name(rs.getString(1));
            
            al.add(state);
          
        }
        
        return al;
         
     }
    
    /*Auto state id generate
    int stateId=0;
   int getStateId()throws Exception
	{	
		stmt=conn.prepareStatement("Select max(state_id) from state");
		rs=stmt.executeQuery();
		if(rs.next())
		{
			stateId=rs.getInt(1);
		}
		++stateId;
		return stateId;
	}
        */
    //Insert State
   public boolean isStateAdd(State_Pojo state)throws Exception
    {
        stmt=conn.prepareStatement("insert into state values(0,?,?)");
        stmt.setString(1,state.getState_name());
        stmt.setInt(2,state.getCountry_id());
      
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
       
    //Update State
    public boolean isUpdateState(State_Pojo state) throws Exception {
        stmt = conn.prepareStatement("update state set state_name=?,country_id=? where state_id=?");
        stmt.setString(1, state.getState_name());
        stmt.setInt(2, state.getCountry_id());
        stmt.setInt(3, state.getState_id());
        
        
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    
    //delete state
    public boolean isDeleteState(State_Pojo state) throws Exception {
        stmt = conn.prepareStatement("delete from state where state_id=?");
        stmt.setInt(1, state.getState_id());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

   
    public static void main(String x[]) throws Exception {
        State_DAO state=new State_DAO();
    }



}

 