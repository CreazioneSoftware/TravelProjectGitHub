/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class db {

    public static Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;

    private db() throws Exception {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/traveldb", "root", "root");
            
            
        } catch (Exception e) {
            System.out.println("" + e);
        }
    }

    public  Connection getConnection() throws Exception {
        return conn;
    }

    public static db getInstance() throws Exception {
        db d = new db();
        return d;
    }

    public static void main(String x[]) throws Exception {
        db d = new db();
    }
}
