package com.eme22.desweb1.interfaces;

import com.eme22.desweb1.model.Asiento;

import java.sql.SQLException;
import java.util.ArrayList;

public interface AsientoInterface {

    ArrayList<Asiento> mostraTodos() throws SQLException;
    ArrayList<Asiento> buscar(String busqueda, int tipo) throws SQLException;
    boolean insertar(Asiento dts) throws SQLException;
    boolean editar(Asiento dts) throws SQLException;
    boolean eliminar(Asiento dts) throws SQLException;
    boolean eliminar(int dts) throws SQLException;


}
