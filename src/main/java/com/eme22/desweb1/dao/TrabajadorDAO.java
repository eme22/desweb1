package com.eme22.desweb1.dao;

import com.eme22.desweb1.interfaces.TrabajadorInterface;
import com.eme22.desweb1.model.Trabajador;
import com.eme22.desweb1.util.Conexion;

import java.sql.*;
import java.util.ArrayList;

public class TrabajadorDAO implements TrabajadorInterface {

    private Connection cnn = null;
    private ResultSet rs = null;
    private static Connection cn;
    private String sSQL = "";
    private String sSQL2 = "";

    private static TrabajadorDAO instancia;

    private TrabajadorDAO() {
    }

    public static TrabajadorDAO getInstancia() throws SQLException, ClassNotFoundException {
        cn = Conexion.getInstancia().getConexion();
        if (instancia == null) {
            instancia = new TrabajadorDAO();
        }
        return instancia;
    }
    @Override
    public ArrayList<Trabajador> mostraTodos() throws SQLException {

        ArrayList<Trabajador> data = new ArrayList<>();

        sSQL = "SELECT p.PersonaID, p.PersonaDNI, t.TrabajadorID, t.TrabajadorEstado, p.PersonaApellidoM, " +
                "p.PersonaApellidoP, p.PersonaNombre, p.PersonaContraseña, p.PersonaCorreo, " +
                "p.PersonaDireccion, p.PersonaEdad, p.PersonaSexo, p.PersonaTelefono " +
                "from persona p inner join trabajador t on p.PersonaID=t.PersonaID order by idPersona desc";

        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery(sSQL);

        if (rs.next()) {
            Trabajador registro = new Trabajador();
            registro.setPersonaID(Integer.parseInt(rs.getString("PersonaID")));
            registro.setPersonaDNI(Integer.parseInt(rs.getString("PersonaDNI")));
            registro.setTrabajadorID(Integer.parseInt(rs.getString("TrabajadorID")));
            registro.setTrabajadorEstado(rs.getString("TrabajadorEstado"));
            registro.setPersonaApellido1(rs.getString("PersonaApellidoP"));
            registro.setPersonaApellido2(rs.getString("PersonaApellidoM"));
            registro.setPersonaNombre(rs.getString("PersonaNombre"));
            registro.setPersonaCorreo(rs.getString("PersonaCorreo"));
            registro.setPersonaPassword(rs.getString("PersonaContraseña"));
            registro.setPersonaDireccion(rs.getString("PersonaDireccion"));
            registro.setPersonaEdad(Integer.parseInt(rs.getString("PersonaEdad")));
            registro.setPersonaSexo(rs.getBoolean("PersonaSexo"));
            registro.setPersonaTelefono(Integer.parseInt(rs.getString("PersonaTelefono")));

            data.add(registro);

        }
        cn.close();

        return data;

    }
    @Override
    public ArrayList<Trabajador> buscarTrabajador(String busqueda, int tipo) throws SQLException {

        ArrayList<Trabajador> data = new ArrayList<>();

        String tipo2;
        switch (tipo){
            default: tipo2 = "t.TrabajadorID"; break;
            case 1: tipo2 = "p.PersonaID"; break;
            case 2: tipo2 = "t.TrabajadorEstado"; break;
            case 3: tipo2 = "p.PersonaApellidoP"; break;
            case 4: tipo2 = "p.PersonaNombre"; break;
            case 5: tipo2 = "p.PersonaTelefono"; break;

        }

        sSQL = "SELECT p.PersonaID, p.PersonaDNI, t.TrabajadorID, t.TrabajadorEstado, p.PersonaApellidoM, " +
                "p.PersonaApellidoP, p.PersonaNombre, p.PersonaContraseña, p.PersonaCorreo, " +
                "p.PersonaDireccion, p.PersonaEdad, p.PersonaSexo, p.PersonaTelefono " +
                "from persona p inner join trabajador t on p.PersonaID=t.PersonaID where "+ tipo2 +" like '%" +
                busqueda + "%' order by idPersona desc";

        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery(sSQL);

        if (rs.next()) {
            Trabajador registro = new Trabajador();
            registro.setPersonaID(Integer.parseInt(rs.getString("PersonaID")));
            registro.setPersonaDNI(Integer.parseInt(rs.getString("PersonaDNI")));
            registro.setTrabajadorID(Integer.parseInt(rs.getString("TrabajadorID")));
            registro.setTrabajadorEstado(rs.getString("TrabajadorEstado"));
            registro.setPersonaApellido1(rs.getString("PersonaApellidoP"));
            registro.setPersonaApellido2(rs.getString("PersonaApellidoM"));
            registro.setPersonaNombre(rs.getString("PersonaNombre"));
            registro.setPersonaCorreo(rs.getString("PersonaCorreo"));
            registro.setPersonaPassword(rs.getString("PersonaContraseña"));
            registro.setPersonaDireccion(rs.getString("PersonaDireccion"));
            registro.setPersonaEdad(Integer.parseInt(rs.getString("PersonaEdad")));
            registro.setPersonaSexo(rs.getBoolean("PersonaSexo"));
            registro.setPersonaTelefono(Integer.parseInt(rs.getString("PersonaTelefono")));

            data.add(registro);

        }
        cn.close();

        return data;

    }

    @Override
    public int login(String correo, String contraseña) throws SQLException {
        sSQL = "SELECT t.TrabajadorID, p.PersonaContraseña " +
                "from persona p inner join trabajador t on p.PersonaID=t.PersonaID " +
                "where p.PersonaCorreo like '%" + correo + "%' order by idPersona desc";

        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery(sSQL);

        if (rs.next()) {
            String contraseñaPrueba = rs.getString("PersonaContraseña");
            if (contraseña.equals(contraseñaPrueba))
                return Integer.parseInt(rs.getString("TrabajadorID"));
        }
        return -1;
    }
    @Override
    public boolean insertar(Trabajador dts) throws SQLException {

        sSQL = "insert into persona " +
                "(PersonaDNI,PersonaApellidoP, PersonaApellidoM,PersonaNombre,PersonaEdad,PersonaSexo, PersonaDireccion,PersonaTelefono,PersonaCorreo, PersonaContraseña) " +
                "values (?,?,?,?,?,?,?,?,?,?)";

        sSQL2 = "insert into trabajador (PersonaID,TrabajadorEstado) values ((select PersonaID from persona order by idPersona desc limit 1),?,?)";

        PreparedStatement pst = cn.prepareStatement(sSQL);
        PreparedStatement pst2 = cn.prepareStatement(sSQL2);

        pst.setInt(1, dts.getPersonaDNI());
        pst.setString(2, dts.getPersonaApellido1());
        pst.setString(3, dts.getPersonaApellido2());
        pst.setString(4, dts.getPersonaNombre());
        pst.setInt(5, dts.getPersonaEdad());
        pst.setInt(6, dts.isPersonaSexo() ? 1 : 0);
        pst.setString(7, dts.getPersonaDireccion());
        pst.setInt(8, dts.getPersonaTelefono());
        pst.setString(9, dts.getPersonaCorreo());
        pst.setString(10, dts.getPersonaPassword());

        pst2.setInt(1, dts.getTrabajadorID());
        pst2.setString(2, dts.getTrabajadorEstado());

        int n = pst.executeUpdate();

        if (n != 0) {
            int n2 = pst2.executeUpdate();

            if (n2 != 0)
                return true;
        }
        return false;
    }
    @Override
    public boolean eliminar(Trabajador dts) throws SQLException {
        sSQL = "delete from trabajador where PersonaID=?";
        sSQL2 = "delete from persona where PersonaID=?";

        PreparedStatement pst = cn.prepareStatement(sSQL);
        PreparedStatement pst2 = cn.prepareStatement(sSQL2);

        pst.setInt(1, dts.getPersonaID());

        pst2.setInt(1, dts.getPersonaID());

        int n = pst.executeUpdate();

        if (n != 0) {
            int n2 = pst2.executeUpdate();

            if (n2 != 0)
                return true;


        }

        return false;


    }
    @Override
    public boolean eliminar(int dts) throws SQLException {
        sSQL = "delete from trabajador where PersonaID=?";
        sSQL2 = "delete from persona where PersonaID=?";

        PreparedStatement pst = cn.prepareStatement(sSQL);
        PreparedStatement pst2 = cn.prepareStatement(sSQL2);

        pst.setInt(1, dts);

        pst2.setInt(1, dts);

        return execStatement(pst, pst2);


    }
    @Override
    public boolean editar(Trabajador dts) throws SQLException {

        sSQL = "update persona set PersonaApellidoP=?, PersonaApellidoM=?,PersonaNombre=?,PersonaEdad=?,PersonaSexo=?,PersonaDNI=?," +
                "PersonaDireccion=?,PersonaTelefono=?,PersonaCorreo=?, PersonaContraseña=? where PersonaID=?";

        sSQL2 = "update trabajador set TrabajadorEstado=? where PersonaID=?";

        //System.out.println(sSQL);
        //System.out.println(sSQL2);


        PreparedStatement pst = cn.prepareStatement(sSQL);
        PreparedStatement pst2 = cn.prepareStatement(sSQL2);

        pst.setString(1, dts.getPersonaApellido1());
        pst.setString(2, dts.getPersonaApellido2());
        pst.setString(3, dts.getPersonaNombre());
        pst.setInt(4, dts.getPersonaEdad());
        pst.setInt(5, dts.isPersonaSexo() ? 1 : 0);
        pst.setInt(6, dts.getPersonaDNI());
        pst.setString(7, dts.getPersonaDireccion());
        pst.setInt(8, dts.getPersonaTelefono());
        pst.setString(9, dts.getPersonaCorreo());
        pst.setString(10, dts.getPersonaPassword());
        pst.setInt(11, dts.getPersonaID());

        pst2.setString(1, dts.getTrabajadorEstado());

        return execStatement(pst, pst2);


    }

    private boolean execStatement(PreparedStatement pst, PreparedStatement pst2) throws SQLException {
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
