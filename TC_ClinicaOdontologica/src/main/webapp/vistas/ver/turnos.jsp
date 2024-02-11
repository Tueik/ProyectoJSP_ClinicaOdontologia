<%-- 
    Document   : verTurnos
    Created on : 2 feb. 2024, 6:30:23 p. m.
    Author     : ricar
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.clinicaodontologica.mx.logica.Turno"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../../components/header.jsp" %>
        <%@ include file="../../components/styles_dataTables.jsp" %>
    </head>
    <body id="page-top">

        <%--<%@include file="../components/acceso.jsp" %>--%>
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
                        <h1 class="h3 mb-2 text-gray-800">Lista de Turnos en el Sistema</h1>
                        <p class="mb-4">A continuación se muestra la lista completa de Turnos para revisiones odontológicas.</p>
                                               
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3 d-flex justify-content-between align-items-center">
                                <h6 class="m-0 font-weight-bold text-primary ">Turnos:</h6>
                                <a class="btn btn-success" href="../../SvRegistrarTurnos">Nuevo Turno</a>
                            </div>
                            <div class="card-body">
                                <% SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy"); %>
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Fecha del Turno</th>
                                                <th>Hora del Turno</th>
                                                <th>Afección</th>
                                                <th>Odontólogo</th>
                                                <th>Paciente</th>
                                                <th class="crudcolbtn">Acción</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Fecha del Turno</th>
                                                <th>Hora del Turno</th>
                                                <th>Afección</th>
                                                <th>Odontólogo</th>
                                                <th>Paciente</th>
                                                <th class="crudcolbtn">Acción</th>
                                            </tr>
                                        </tfoot>
                                        <% 
                                            List<Turno> listaTurnos = null;                                         
                                            listaTurnos = (List) request.getSession().getAttribute("listaTurnos");
                                        %>
                                        <tbody>
                                            <% for(Turno tu : listaTurnos) { %>
                                            <tr>                                               
                                                <td id="id_turno <%= tu.getId_turno() %>"><%= tu.getId_turno() %></td>
                                                <td><%= formato.format(tu.getFecha_turno()) %></td>
                                                <td><%= tu.getHora_turno() %></td>
                                                <td><%= tu.getAfeccion() %></td>
                                                <td>Dr. <%= tu.getTurno_odontologo().getNombre() %> <%= tu.getTurno_odontologo().getApellido() %></td>
                                                <td><%= tu.getTurno_paciente().getNombre() %> <%= tu.getTurno_paciente().getApellido() %></td>
                                                <td class="d-flex justify-content-around">
                                                    <form action="../../SvEliminarTurnos" name="eliminar" method="POST">
                                                        <button type="submit" class="btn btn-danger btn-user btn-block">
                                                            <i class="fas fa-trash-alt"></i> Eliminar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= tu.getId_turno() %>">
                                                    </form>
                                                    <form action="../../SvEditarTurnos" name="editar" method="GET">
                                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                                            <i class="fas fa-pencil-alt"></i> Editar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= tu.getId_turno() %>">
                                                    </form>                                    
                                                </td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    

                    <%@include file="../../components/footer.jsp" %>
                </div>
                
                    
            </div>
            

        </div>

        <%@include file="../../components/scrolltop.jsp" %>
        <%@include file="../../components/logoutmodal.jsp" %>
        <%@include file="../../components/scripts.jsp" %>
        <%@include file="../../components/scripts_dataTables.jsp" %>
    </body>

</html>
