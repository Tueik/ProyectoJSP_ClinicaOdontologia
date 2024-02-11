<%-- 
    Document   : editarHorario
    Created on : 2 feb. 2024, 1:02:49 a. m.
    Author     : ricar
--%>

<%@page import="com.clinicaodontologica.mx.logica.Horario"%>
<%@page import="java.util.List"%>
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
                        <h2>Editar Horario</h2>
                        <p>Este es el apartado para editar un Horario de trabajo existente en el sistema.</p>
                        <%  Horario ho = (Horario) request.getSession().getAttribute("horarioEditar"); 
                        %>
                        
                        <form class="user" action="../../SvEditarHorarios" method="POST">
                            <div class="form-group col">
                                <div class="col-sm-6 mb-3">
                                    <label>Inicio de Horario</label>
                                    <input type="time" class="form-control form-control-user" id="hora_inicio" name="hora_inicio"
                                           placeholder="Horario Inicio" value="<%= ho.getHorario_inicio() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <label>Terminación de Horario</label>
                                    <input type="time" class="form-control form-control-user" id="hora_inicio" name="hora_fin"
                                           placeholder="Horario Fin" value="<%= ho.getHorario_fin() %>">
                                </div>                           
                            </div>

                            <button type="submit" class="btn btn-primary btn-user">
                                Guardar Modificaciones
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



