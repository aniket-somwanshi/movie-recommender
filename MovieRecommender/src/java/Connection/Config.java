/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
   
/**
 *
 * @author aditya
 */
public class Config {
    
    
public static Connection Config() throws ClassNotFoundException, SQLException{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/movierecommender","root", "root");


 
return conn;
/// Do something with the Connection
}
}
