package com.eme22.desweb1.interfaces;

import com.eme22.desweb1.model.ReservaAsiento;
import com.eme22.desweb1.model.Viaje;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ReservaAsientoInterface {

    ArrayList<ReservaAsiento> mostraTodos() throws SQLException;

}
