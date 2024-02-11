/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.rol;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import com.clinicaodontologica.mx.logica.Rol;
import java.io.IOException;
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
@WebServlet(name = "SvEditarRoles", urlPatterns = {"/SvEditarRoles"})
public class SvEditarRoles extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idEditar = Integer.parseInt(request.getParameter("id"));
        Rol rolEditar = control.obtenerRol(idEditar);
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("rolEditar", rolEditar);
        
        response.sendRedirect("vistas/editar/rol.jsp");
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Rol rolOriginal = (Rol) request.getSession().getAttribute("rolEditar");
        String nombreRol = request.getParameter("nombreRol");
        String descripcion = request.getParameter("descripcion");
        
        control.editarRol(rolOriginal, nombreRol, descripcion);
        
        response.sendRedirect("SvRoles");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
