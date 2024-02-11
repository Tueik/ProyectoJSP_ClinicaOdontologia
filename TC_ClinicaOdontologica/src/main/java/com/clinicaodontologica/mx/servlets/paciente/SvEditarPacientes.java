/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.paciente;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import com.clinicaodontologica.mx.logica.Paciente;
import java.io.IOException;
import java.util.Arrays;
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
@WebServlet(name = "SvEditarPacientes", urlPatterns = {"/SvEditarPacientes"})
public class SvEditarPacientes extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Paciente pacienteEditar = control.obtenerPaciente(id);
        
        List<String> tiposSangre = Arrays.asList("A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-");
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("pacienteEditar", pacienteEditar);
        sesion.setAttribute("tiposSangre", tiposSangre);
        
        response.sendRedirect("vistas/editar/paciente.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Paciente pacienteOriginal = (Paciente) request.getSession().getAttribute("pacienteEditar");
        
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fecha_nacText = request.getParameter("fecha_nac");
        String tiene_ss = request.getParameter("tiene_ss");
        String tipo_sangre = request.getParameter("tipo_sangre");
        
        control.editarPaciente(pacienteOriginal ,dni, nombre, apellido, telefono, direccion, fecha_nacText, tiene_ss, tipo_sangre);
 
        response.sendRedirect("SvPacientes");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
