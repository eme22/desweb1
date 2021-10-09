package com.eme22.desweb1.interfaces;

import com.eme22.desweb1.model.Viaje;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ViajeInterface {

    ArrayList<Viaje> mostraTodos() throws SQLException;
    ArrayList<Viaje> buscar(String busqueda, int tipo) throws SQLException;
    boolean insertar(Viaje dts) throws SQLException;
    boolean editar(Viaje dts) throws SQLException;
    boolean eliminar(Viaje dts) throws SQLException;
    boolean eliminar(int dts) throws SQLException;
    
}
