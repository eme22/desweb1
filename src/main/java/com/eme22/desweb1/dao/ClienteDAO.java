package com.eme22.desweb1.dao;

import com.eme22.desweb1.interfaces.ClienteInterface;
import com.eme22.desweb1.model.Cliente;
import com.eme22.desweb1.util.Conexion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClienteDAO implements ClienteInterface {

    private Connection cnn = null;
    private ResultSet rs = null;
    private static Connection cn;
    private String sSQL = "";
    private String sSQL2 = "";

    private static ClienteDAO instancia;

    private ClienteDAO() {
    }

    public static ClienteDAO getInstancia() throws SQLException, ClassNotFoundException {
        cn = Conexion.getInstancia().getConexion();
        if (instancia == null) {
            instancia = new ClienteDAO();
        }
        return instancia;
    }


    @Override
    public ArrayList<Cliente> mostraTodos() throws SQLException {
        return null;
    }

    @Override
    public ArrayList<Cliente> buscarCliente(String busqueda, int tipo) throws SQLException {
        return null;
    }

    @Override
    public boolean insertar(Cliente dts) throws SQLException {
        return false;
    }

    @Override
    public boolean editar(Cliente dts) throws SQLException {
        return false;
    }

    @Override
    public boolean eliminar(Cliente dts) throws SQLException {
        return false;
    }

    @Override
    public boolean eliminar(int dts) throws SQLException {
        return false;
    }

    @Override
    public int login(String correo, String contraseña) throws SQLException {
        return 0;
    }
}
