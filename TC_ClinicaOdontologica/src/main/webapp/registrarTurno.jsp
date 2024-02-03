<%-- 
    Document   : registrarTurno
    Created on : 2 feb. 2024, 6:40:52 p. m.
    Author     : ricar
--%>


<%@page import="com.clinicaodontologica.mx.logica.Paciente"%>
<%@page import="com.clinicaodontologica.mx.logica.Odontologo"%>
<%@page import="java.util.List"%>
<%@page import="com.clinicaodontologica.mx.logica.Turno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <%@ include file="components/header.jsp" %>
    </head>  
    <body>
        <!-- Page Wrapper -->
        <div id="wrapper">
            <%@ include file="components/sidebar.jsp" %>
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">
                    <%@ include file="components/topbar.jsp" %>
                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                             

                        </div>
                        <!-- End of Page Heading -->
                        <h2>Registrar Turno</h2>
                        <p>Este es el apartado para registrar un Turno para Consulta Odontológica en el sistema.</p>

                        <form class="user" action="SvRegistrarTurnos" method="POST">
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <label>Fecha del Turno</label>
                                        <input type="date" class="form-control form-control-user" id="fecha_turno" name="fecha_turno"
                                               placeholder="Fecha del Turno">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <label>Hora del Turno</label>
                                        <input type="time" class="form-control form-control-user" id="hora_turno" name="hora_turno"
                                               placeholder="Hora del Turno">
                                    </div>      
                                    <div class="col-sm-6 mb-3">
                                        <label>Afección</label>
                                        <input type="text" class="form-control form-control-user" id="afeccion" name="afeccion"
                                               placeholder="Ejemplo: Muelas del Juicio / Revisión General">
                                    </div>    
                                    <div class="col-sm-6 mb-3">       
                                        <label>Odontólogo:</label>
                                        <select class="form-control form-select-user rounded-pill" id="idOdontologo" name="idOdontologo" placeholder="Odontologo"> 
                                            <option selected disabled>- Seleccionar Odontólogo -</option>
                                            <% 
                                            List<Odontologo> listaOdontologos = (List) request.getSession().getAttribute("listaOdontologos");
                                            for(Odontologo od : listaOdontologos){
                                            %>
                                            <option value="<%= od.getId() %>">
                                            Dr. <%= od.getNombre() %> <%= od.getApellido() %> &nbsp;
                                            - &nbsp; <b>Especialidad:</b> <%= od.getEspecialidad() %>
                                            </option>
                                            <% } %>
                                        </select>                                    
                                    </div>
                                    <div class="col-sm-6 mb-3"> 
                                        <label>Paciente:</label>
                                        <select class="form-control form-select-user rounded-pill" id="idPaciente" name="idPaciente" placeholder="Paciente"> 
                                            <option selected disabled>- Seleccionar Paciente -</option>
                                            <% 
                                            List<Paciente> listaPacientes = (List) request.getSession().getAttribute("listaPacientes");
                                            for(Paciente p : listaPacientes){
                                            %>
                                            <option value="<%= p.getId() %>">
                                                Paciente núm. <%= p.getId() %> &nbsp; - &nbsp;
                                                <%= p.getNombre() %>
                                                <%= p.getApellido() %>
                                            </option>     
                                            <% } %>
                                        </select>                                    
                                    </div>
                                    
                                </div>
                            <button type="submit" class="btn btn-primary btn-user">
                                Registrar Turno
                            </button>
                        </form>
                    </div>
                    <!-- End of Page Content -->

                    <%@include file="components/footer.jsp" %>
                </div>
                <!-- End of Main Content -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <%@include file="components/scrolltop.jsp" %>
        <%@include file="components/logoutmodal.jsp" %>
        <%@include file="components/scripts.jsp" %>

    </body>
</html>




