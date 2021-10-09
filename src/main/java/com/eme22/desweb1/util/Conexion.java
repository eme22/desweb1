package com.eme22.desweb1.util;

import com.eme22.desweb1.dao.ClienteDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Conexion {

    private static Conexion instancia;
    private static Connection connection;

    public static Conexion getInstancia() {
        if (instancia == null) {
            instancia = new Conexion();
        }
        return instancia;
    }

    private Conexion() {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mariadb://localhost/dbbuses2", "root", "");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public Connection getConexion() throws SQLException, ClassNotFoundException {
        if (connection.isClosed()){
            return DriverManager.getConnection("jdbc:mariadb://localhost/dbbuses2", "root", "");
        } else return connection;
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

    //EJECUTAR UN STATEMENT
    public static boolean execStatement(PreparedStatement pst, Connection cn) throws SQLException {
        int n = pst.executeUpdate();

        if (n != 0) {
                cn.close();
                return true;
        }
        cn.close();
        return false;
    }

}
