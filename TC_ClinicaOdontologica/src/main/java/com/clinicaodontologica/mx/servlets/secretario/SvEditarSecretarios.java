/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.secretario;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import com.clinicaodontologica.mx.logica.Secretario;
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
@WebServlet(name = "SvEditarSecretarios", urlPatterns = {"/SvEditarSecretarios"})
public class SvEditarSecretarios extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idEditar = Integer.parseInt(request.getParameter("id"));
        Secretario secEditar = control.obtenerSecretario(idEditar);
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("secretarioEditar", secEditar);
        
        response.sendRedirect("editarSecretario.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Secretario secEditado = (Secretario) request.getSession().getAttribute("secretarioEditar");
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellidos");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fecha_nacTxt = request.getParameter("fecha_nac");
        String sector = request.getParameter("sector");
        
        control.editarSecretario(secEditado, dni, nombre, apellido, telefono, direccion, fecha_nacTxt, sector);
        
        response.sendRedirect("SvSecretarios");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
