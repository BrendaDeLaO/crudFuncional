package com.mycompany.consultation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQL {

    public static void main(String[] args) {
        String hostname = "team05.ctes6auum80u.us-east-1.rds.amazonaws.com";
        String jdbcUrl = "jdbc:mysql://" + hostname + ":3306/consultation";
        String user = "admin";
        String password = "equipo05";

        Connection con = null;
        try {
            con = DriverManager.getConnection(jdbcUrl, user, password);
            if (con != null) {
                System.out.println("Conexión exitosa");
            }
        } catch (SQLException e) {
            System.out.println("ERROR clase Conexion " + e);
        }
    }

}
