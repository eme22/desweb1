package com.eme22.desweb1.vista;

import com.eme22.desweb1.dao.ClienteDAO;
import com.eme22.desweb1.dao.TrabajadorDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {

    // 1: Contraseña Vacia
    // 2: Usuario Vacio
    // 3: Ambos Vacios
    // 4: Contraseña Incorrecta
    private int errorReason;

    private static TrabajadorDAO trabajadorDAO;
    private static ClienteDAO clienteDAO;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email.isEmpty()){
            request.setAttribute("error", 2);
            request.getRequestDispatcher("./Login.jsp").forward(request,response);
            //response.sendRedirect("./Login.jsp");
            return;
        }

        try {
            int respuesta1 = autenticarTrabajador(email, password);
            int respuesta2 = autenticarUsuario(email, password);

            if (respuesta1 == -1 && respuesta2 == -1) {
                request.setAttribute("correoAuto", email);
                request.setAttribute("error", 1);
                request.getRequestDispatcher("./Login.jsp").forward(request,response);
            }
            else if (respuesta1 != -1 && respuesta2 != -1) {
                request.setAttribute("idusuario", respuesta1);
                request.setAttribute("trabajador", true);
                request.getRequestDispatcher("./Panel.jsp").forward(request,response);
            }
            else {
                boolean trabajador = respuesta1 != -1;
                request.setAttribute("idusuario", trabajador ? respuesta1 : respuesta2);
                request.setAttribute("trabajador", trabajador);
                request.getRequestDispatcher("./Panel.jsp").forward(request,response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            request.setAttribute("error", 4);
            request.getRequestDispatcher("./Login.jsp").forward(request,response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("error", 3);
            request.getRequestDispatcher("./Login.jsp").forward(request,response);
        }
    }

    private int autenticarTrabajador(String correo, String password) throws SQLException, ClassNotFoundException {

        if (trabajadorDAO == null){
            trabajadorDAO = TrabajadorDAO.getInstancia();
        }

        return trabajadorDAO.login(correo, password);


    }

    private int autenticarUsuario(String correo, String password) throws SQLException, ClassNotFoundException {

        if (clienteDAO == null){
            clienteDAO = ClienteDAO.getInstancia();
        }

        return clienteDAO.login(correo, password);


    }
}
