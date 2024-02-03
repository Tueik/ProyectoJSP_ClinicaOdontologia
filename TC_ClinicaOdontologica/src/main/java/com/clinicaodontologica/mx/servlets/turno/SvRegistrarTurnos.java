/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.clinicaodontologica.mx.servlets.turno;

import com.clinicaodontologica.mx.logica.ControladoraLogica;
import com.clinicaodontologica.mx.logica.Odontologo;
import com.clinicaodontologica.mx.logica.Paciente;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SvRegistrarTurnos", urlPatterns = {"/SvRegistrarTurnos"})
public class SvRegistrarTurnos extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Odontologo> listaOdontologos = control.obtenerOdontologos();
        List<Paciente> listaPacientes = control.obtenerPacientes();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listaOdontologos", listaOdontologos);
        sesion.setAttribute("listaPacientes", listaPacientes);
        
        response.sendRedirect("registrarTurno.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fecha_turnoTxt = request.getParameter("fecha_turno");
        String hora_turno = request.getParameter("hora_turno");
        String afeccion = request.getParameter("afeccion");
        int idOdontologo = Integer.parseInt(request.getParameter("idOdontologo"));
        int idPaciente = Integer.parseInt(request.getParameter("idPaciente"));
        
        control.crearTurno(fecha_turnoTxt, hora_turno, afeccion, idOdontologo, idPaciente);
        
        response.sendRedirect("SvTurnos");
    
    }
    

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
