/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import com.clinicaodontologica.mx.logica.Rol;
import com.clinicaodontologica.mx.logica.Usuario;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ricar
 */
@WebServlet(name = "SvEditarUsuarios", urlPatterns = {"/SvEditarUsuarios"})
public class SvEditarUsuarios extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        Usuario usuarioEditar = control.obtenerUsuario(id);
        
        List<Rol> listaRoles = control.obtenerRoles();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuarioEditar", usuarioEditar);
        sesion.setAttribute("listaRoles", listaRoles);
        
        
        response.sendRedirect("editarUsuario.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombreusuario");
        String contrasena = request.getParameter("contrasena");
        String rolSeleccionado = request.getParameter("rol");
  
        Usuario usuarioOriginal = (Usuario) request.getSession().getAttribute("usuarioEditar");
        
        control.editarUsuario(usuarioOriginal, nombre, contrasena, rolSeleccionado);
        
        response.sendRedirect("SvUsuarios");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
