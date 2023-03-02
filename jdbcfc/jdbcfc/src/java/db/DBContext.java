/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author PHT
 */
public class DBContext {
    public static Connection getConnection() throws SQLException{
        String url = "jdbc:sqlserver://localhost;databaseName=toyz;user=sa;password=12345";
        Connection con = null;
        try{
            //Loading a driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //Creating a connection
            con =DriverManager.getConnection(url);
        } catch (Exception ex) {
            ex.printStackTrace();
            //Gay ra SQLException
            throw new SQLException(ex.getMessage());
        }
        return con;
    }
//     public static Connection getConnection() throws SQLException{
//        Connection cn=null;
//        String IP="localhost";
//        String instanceName="DESKTOP-EON8E77\\NGUYENVI";
//        String port="1433";
//        String uid="sa";
//        String pwd="12345";
//        String db="toyz";
//        try{
//        String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
//        String url="jdbc:sqlserver://" +IP+"\\"+ instanceName+":"+port
//                 +";databasename="+db+";user="+uid+";password="+pwd;
//        Class.forName(driver);
//        cn=DriverManager.getConnection(url);
//        } catch (Exception ex) {
//            ex.printStackTrace();
//            //Gay ra SQLException
//            throw new SQLException(ex.getMessage());
//        }
//        return cn;
//    }
}
