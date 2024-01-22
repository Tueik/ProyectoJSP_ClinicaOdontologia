/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.paciente;

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
@WebServlet(name = "SvRegistrarPacientes", urlPatterns = {"/SvRegistrarPacientes"})
public class SvRegistrarPacientes extends HttpServlet {

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
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fecha_nacText = request.getParameter("fecha_nac");
        String tiene_ss = request.getParameter("tiene_ss");
        String tipo_sangre = request.getParameter("tipo_sangre");
        
        control.crearPaciente(dni, nombre, apellido, telefono, direccion, fecha_nacText, tiene_ss, tipo_sangre);
 
        response.sendRedirect("SvPacientes");
               
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
