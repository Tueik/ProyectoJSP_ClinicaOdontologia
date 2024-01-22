<%-- 
    Document   : registarPaciente
    Created on : 20 ene. 2024, 4:22:12 p. m.
    Author     : ricar
--%>

<%@page import="com.clinicaodontologica.mx.logica.Rol"%>
<%@page import="java.util.List"%>
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
                        <h2>Registrar Pacientes</h2>
                        <p>Este es el apartado para registrar un Paciente en el sistema.</p>

                        <form class="user" action="SvRegistrarPacientes" method="POST">
                            <div class="form-group col">
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="dni" name="dni"
                                           placeholder="DNI">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                                           placeholder="Nombre">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="apellidos" name="apellido"
                                           placeholder="Apellido">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="number" class="form-control form-control-user" id="telefono" name="telefono"
                                           placeholder="Teléfono">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                                           placeholder="Dirección">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="date" class="form-control form-control-user" id="fechanac" name="fecha_nac"
                                           placeholder="Fecha de Nacimiento">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <div class="form-check form-check-inline">
                                        <p>¿Tiene seguro social?:</p>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="tiene_ssY" name="tiene_ss" value="si">
                                        <label class="form-check-label" for="inlineRadio1">Si</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="tiene_ssN" name="tiene_ss" value="no">
                                        <label class="form-check-label" for="inlineRadio2">No</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mb-3">                                  
                                    <select class="form-control form-select-user rounded-pill" id="tipo_sangre" name="tipo_sangre" placeholder="tipo_sangre"> 
                                        <option selected disabled>- Seleccionar tipo de sangre-</option>
                                        <option value="A+">A+</option>
                                        <option value="A-">A-</option>
                                        <option value="B+">B+</option>
                                        <option value="B-">B-</option>
                                        <option value="AB+">AB+</option>
                                        <option value="AB-">AB-</option>
                                        <option value="O+">O+</option>
                                        <option value="O-">O-</option>      
                                    </select>                                    
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-user">
                                Registrar Paciente
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

