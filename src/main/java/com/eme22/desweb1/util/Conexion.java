package com.eme22.desweb1.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Conexion {

    private static Conexion instancia;

    public static Conexion getInstancia() {
        if (instancia == null) {
            instancia = new Conexion();
        }
        return instancia;
    }

    private Conexion() {

    }
    
    public Connection getConexion() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost/dbbuses2", "root", "");
    }

    // STATIC UTLIES

    //EJECUTAR UN STATEMENT
    public static boolean execStatement(PreparedStatement pst, PreparedStatement pst2, Connection cn) throws SQLException {
        int n = pst.executeUpdate();

        if (n != 0) {
            int n2 = pst2.executeUpdate();

            if (n2 != 0) {
                cn.close();
                return true;
            }

        }
        cn.close();
        return false;
    }

}
