<%-- 
    Document   : verOdontologos
    Created on : 17 ene. 2024, 4:32:15 p. m.
    Author     : ricar
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.clinicaodontologica.mx.logica.Odontologo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../../components/header.jsp" %>
        <%@ include file="../../components/styles_dataTables.jsp" %>
    </head>
    <body id="page-top">

        <%--<%@include file="../../components/acceso.jsp" %>--%>
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
                        <h1 class="h3 mb-2 text-gray-800">Lista de Odontólogos en el Sistema</h1>
                        <p class="mb-4">A continuación se muestra la lista completa de odontólogos.</p>
                        
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3 d-flex justify-content-between align-items-center">
                                <h6 class="m-0 font-weight-bold text-primary ">Odontólogos:</h6>
                                <a class="btn btn-success" href="../../SvRegistrarOdontologos">Nuevo Odontólogo</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>DNI</th>
                                                <th>Nombre</th>
                                                <th>Apellido(s)</th>
                                                <th>Teléfono</th>  
                                                <th>Direccion</th>
                                                <th>Especialidad</th>
                                                <th>Fecha Nacimiento</th>  
                                                <th class="crudcolbtn">Acción</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>DNI</th>
                                                <th>Nombre</th>
                                                <th>Apellido(s)</th>
                                                <th>Teléfono</th>  
                                                <th>Direccion</th>
                                                <th>Especialidad</th>
                                                <th>Fecha Nacimiento</th>  
                                                <th class="crudcolbtn">Acción</th>
                                            </tr>
                                        </tfoot>
                                        <% 
                                            List<Odontologo> listaOdontologos = null;                                         
                                            listaOdontologos = (List) request.getSession().getAttribute("listaOdontologos");
                                            SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
                                        %>
                                        <tbody>
                                            <% for(Odontologo od : listaOdontologos) { %>
                                            <tr>                                               
                                                <td id="id_od<%= od.getId() %>"><%= od.getId() %></td>
                                                <td><%= od.getDni() %></td>
                                                <td><%= od.getNombre() %></td>
                                                <td><%= od.getApellido() %></td>
                                                <td><%= od.getTelefono() %></td>
                                                <td><%= od.getDireccion() %></td>
                                                <td><%= od.getEspecialidad() %></td>
                                                <td><%= formato.format(od.getFecha_nac()) %></td>
                                                <td class="d-flex justify-content-around">
                                                    <form action="../../SvEliminarOdontologos" name="eliminar" method="POST"><!-- Se manda el código al servlet -->
                                                        <button type="submit" class="btn btn-danger btn-user btn-block">
                                                            <i class="fas fa-trash-alt"></i> Eliminar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= od.getId() %>">
                                                    </form>
                                                    <form action="../../SvEditarOdontologos" name="editar" method="GET"><!-- Se manda el código al servlet -->
                                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                                            <i class="fas fa-pencil-alt"></i> Editar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= od.getId() %>">
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
