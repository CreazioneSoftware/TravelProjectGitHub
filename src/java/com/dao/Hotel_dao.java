package com.dao;

import java.sql.*;

public class Hotel_dao extends connectionInitializer {

    public Hotel_dao() throws Exception {
        conn = com.dao.db.getInstance().getConnection();
    }

    public boolean Add_hotel(com.pojo.Hotel_pojo hp) throws Exception {
        stmt = conn.prepareStatement("insert into hotels values(0,?,?,?,?,?,?,?,?)");

        stmt.setString(1, hp.getHotel_name());
        stmt.setString(2, hp.getOwner_name());
        stmt.setString(3, hp.getMobile_number());
        stmt.setString(4, hp.getEmail_id());
        stmt.setString(5, hp.getCountry());
        stmt.setString(6, hp.getState());
        stmt.setString(7, hp.getCity());
        stmt.setString(8, hp.getHotel_category());

        int val = stmt.executeUpdate();
        if (val > 0) {
            return true;
        } else {
            return false;
        }
    }

    public ResultSet view_hotel() throws Exception {
        stmt = conn.prepareStatement("Select *from hotels");
        rs = stmt.executeQuery();
        return rs;
    }

    public ResultSet getrecords(int id) throws Exception {
        stmt = conn.prepareStatement("select Hotel_name,Owner_name,Mobile_number,Email_id,Country,State,City,Category from hotels where Hotel_id='" + id + "'");
        rs = stmt.executeQuery();

        return rs;
    }

    public boolean update1(com.pojo.Hotel_pojo hp, int id1) throws Exception {
        stmt = conn.prepareStatement("update hotels set Hotel_name=?,Owner_name=?,Mobile_number=?,Email_id=?,Country=?,State=?,City=?,Category=? where Hotel_id='" + id1 + "'");
        stmt.setString(1, hp.getHotel_name());
        stmt.setString(2, hp.getOwner_name());
        stmt.setString(3, hp.getMobile_number());
        stmt.setString(4, hp.getEmail_id());
        stmt.setString(5, hp.getCountry());
        stmt.setString(6, hp.getState());
        stmt.setString(7, hp.getCity());
        stmt.setString(8, hp.getHotel_category());
        int val = stmt.executeUpdate();
        return val > 0;
    }

    public boolean delete(int id) throws Exception {
        stmt = conn.prepareStatement("delete from hotels where Hotel_id='" + id + "'");
        int del = stmt.executeUpdate();
        return del > 0;
    }
}
