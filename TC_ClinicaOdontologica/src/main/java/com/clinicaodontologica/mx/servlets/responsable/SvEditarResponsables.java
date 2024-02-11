/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.responsable;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import com.clinicaodontologica.mx.logica.Responsable;
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
@WebServlet(name = "SvEditarResponsables", urlPatterns = {"/SvEditarResponsables"})
public class SvEditarResponsables extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idEditar = Integer.parseInt(request.getParameter("id"));
        
        Responsable respEditar = control.obtenerResponsable(idEditar);
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("respEditar", respEditar);
        
        response.sendRedirect("vistas/editar/responsable.jsp");
             
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Responsable responsableOriginal = (Responsable) request.getSession().getAttribute("respEditar");
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellidos");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fecha_nacTxt = request.getParameter("fecha_nac");
        String tipo_resp = request.getParameter("tipo_resp");
        
        
        control.editarResponsable(responsableOriginal, dni, nombre, apellido, telefono, direccion, fecha_nacTxt, tipo_resp);
        
        response.sendRedirect("SvResponsables");   
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
