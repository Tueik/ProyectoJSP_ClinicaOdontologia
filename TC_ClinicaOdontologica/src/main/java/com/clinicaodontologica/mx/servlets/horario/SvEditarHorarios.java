/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.horario;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import com.clinicaodontologica.mx.logica.Horario;
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
@WebServlet(name = "SvEditarHorarios", urlPatterns = {"/SvEditarHorarios"})
public class SvEditarHorarios extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idEditar = Integer.parseInt(request.getParameter("id"));
        
        Horario horarioEditar = control.obtenerHorario(idEditar);
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("horarioEditar", horarioEditar);
        
        response.sendRedirect("editarHorario.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Horario horarioOriginal = (Horario) request.getSession().getAttribute("horarioEditar");
        
        String horario_inicio = request.getParameter("hora_inicio");
        String horario_fin = request.getParameter("hora_fin");
        
        control.editarHorario(horarioOriginal, horario_inicio, horario_fin);
        
        response.sendRedirect("SvHorarios");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
