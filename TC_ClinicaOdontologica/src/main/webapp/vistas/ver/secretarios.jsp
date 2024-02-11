<%-- 
    Document   : verSecretarios
    Created on : 25 ene. 2024, 1:33:06 a. m.
    Author     : ricar
--%>

<%@page import="com.clinicaodontologica.mx.logica.Secretario"%>
<%@page import="java.text.SimpleDateFormat"%>
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
                        <h1 class="h3 mb-2 text-gray-800">Lista de Secretarios en el Sistema</h1>
                        <p class="mb-4">A continuación se muestra la lista completa de secretarios.</p>
                        
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3 d-flex justify-content-between align-items-center">
                                <h6 class="m-0 font-weight-bold text-primary ">Secretarios:</h6>
                                <a class="btn btn-success" href="../../SvRegistrarSecretarios">Nuevo Secretario</a>
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
                                                <th>Sector</th> 
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
                                                <th>Sector</th> 
                                                <th>Fecha Nacimiento</th> 
                                                <th class="crudcolbtn">Acción</th>
                                            </tr>
                                        </tfoot>
                                        <% 
                                            List<Secretario> listaSecretarios = null;                                         
                                            listaSecretarios = (List) request.getSession().getAttribute("listaSecretarios");
                                            SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
                                        %>
                                        <tbody>
                                            <% for(Secretario sec : listaSecretarios) { %>
                                            <tr>                                               
                                                <td id="id_sec<%= sec.getId()%>"><%= sec.getId() %></td>
                                                <td><%= sec.getDni() %></td>
                                                <td><%= sec.getNombre() %></td>
                                                <td><%= sec.getApellido() %></td>
                                                <td><%= sec.getTelefono() %></td>
                                                <td><%= sec.getDireccion() %></td>
                                                <td><%= sec.getSector() %></td>
                                                <td><%= formato.format(sec.getFecha_nac()) %></td>
                                                <td class="d-flex justify-content-around">
                                                    <form action="../../SvEliminarSecretarios" name="eliminar" method="POST">
                                                        <button type="submit" class="btn btn-danger btn-user btn-block">
                                                            <i class="fas fa-trash-alt"></i> Eliminar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= sec.getId() %>">
                                                    </form>
                                                    <form action="../../SvEditarSecretarios" name="editar" method="GET">
                                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                                            <i class="fas fa-pencil-alt"></i> Editar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= sec.getId() %>">
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
