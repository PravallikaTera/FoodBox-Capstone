package com.db.utils;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbConnection {
/*
    final static String DB_NAME = "food_box";
    final static String CONNECTION_URL = "jdbc:mysql://localhost:3306/" + DB_NAME;
    final static String USERNAME = "root";
    final static String PASSWORD = "Baba@1234";
*/
    public static Connection init()  {
    	 Connection con=null;
		 try{
   		 Class.forName("com.mysql.jdbc.Driver");
   		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food_box","root","Baba@1234");
		 }
		 catch(ClassNotFoundException | SQLException e){
   		 e.printStackTrace();
   	     }//catch
		 return con;
    }
}