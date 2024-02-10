/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.rol;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ricar
 */
@WebServlet(name = "SvRegistrarRoles", urlPatterns = {"/SvRegistrarRoles"})
public class SvRegistrarRoles extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombreRol = request.getParameter("nombreRol");
        String descripcion = request.getParameter("descripcion");
        
        control.crearRol(nombreRol, descripcion);
        
        response.sendRedirect("SvRoles");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
