/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.responsable;

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
@WebServlet(name = "SvRegistrarResponsables", urlPatterns = {"/SvRegistrarResponsables"})
public class SvRegistrarResponsables extends HttpServlet {

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
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellidos");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fecha_nacTxt = request.getParameter("fecha_nac");
        String tipo_resp = request.getParameter("tipo_resp");
        
        
        control.crearResponsable(dni, nombre, apellido, telefono, direccion, fecha_nacTxt, tipo_resp);
        
        response.sendRedirect("SvResponsables");     
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
