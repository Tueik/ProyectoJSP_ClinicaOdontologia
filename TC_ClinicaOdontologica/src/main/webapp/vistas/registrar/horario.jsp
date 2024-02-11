<%-- 
    Document   : registrarHorario
    Created on : 2 feb. 2024, 1:08:27 a. m.
    Author     : ricar
--%>

<%@page import="com.clinicaodontologica.mx.logica.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <%@ include file="../../components/header.jsp" %>
    </head>  
    <body>
        <!-- Page Wrapper -->
        <div id="wrapper">
            <%@ include file="../../components/sidebar.jsp" %>
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">
                    <%@ include file="../../components/topbar.jsp" %>
                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                             

                        </div>
                        <!-- End of Page Heading -->
                        <h2>Registrar Horario</h2>
                        <p>Este es el apartado para registrar un Horario de Trabajo en el sistema.</p>

                        <form class="user" action="../../SvRegistrarHorarios" method="POST">
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <label>Inicio de Horario</label>
                                        <input type="time" class="form-control form-control-user" id="hora_inicio" name="hora_inicio"
                                               placeholder="Horario Inicio">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <label>Terminación de Horario</label>
                                        <input type="time" class="form-control form-control-user" id="hora_inicio" name="hora_fin"
                                               placeholder="Horario Fin">
                                    </div>                           
                                </div>
                            <button type="submit" class="btn btn-primary btn-user">
                                Registrar Horario
                            </button>
                        </form>
                    </div>
                    <!-- End of Page Content -->

                    <%@include file="../../components/footer.jsp" %>
                </div>
                <!-- End of Main Content -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <%@include file="../../components/scrolltop.jsp" %>
        <%@include file="../../components/logoutmodal.jsp" %>
        <%@include file="../../components/scripts.jsp" %>

    </body>
</html>



