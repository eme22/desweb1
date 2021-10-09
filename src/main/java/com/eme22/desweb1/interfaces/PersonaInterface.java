package com.eme22.desweb1.interfaces;

import com.eme22.desweb1.model.Persona;

import java.sql.SQLException;
import java.util.ArrayList;

public interface PersonaInterface {

    ArrayList<Persona> mostraTodos() throws SQLException;

}
