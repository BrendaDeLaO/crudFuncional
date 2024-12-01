
package com.mycompany.consultation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    String hostname = "team05.ctes6auum80u.us-east-1.rds.amazonaws.com";  
    String jdbcUrl = "jdbc:mysql://" + hostname + ":3306/consultation";  
    String user = "admin";  
    String password = "equipo05";  

    Connection con;  

    public Conexion() {  
        try {  
            con = DriverManager.getConnection(jdbcUrl, user, password);  
        } catch (SQLException e) {  
            System.out.println("Error: en la clase conexion: " + e);  
        }  
    }  

    public Connection getConexion() {  
        return con;  
    }  
}
