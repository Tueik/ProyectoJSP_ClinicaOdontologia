<%-- 
    Document   : verUsuarios
    Created on : 9 ene. 2024, 7:33:16 p. m.
    Author     : ricar
--%>

<%@page import="com.clinicaodontologica.mx.logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="components/header.jsp" %>
        <!-- Custom styles for this page -->
        <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    </head>
    <body id="page-top">

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
                        <h1 class="h3 mb-2 text-gray-800">Lista de Usuarios en el Sistema</h1>
                        <p class="mb-4">A continuación se muestra la lista completa de usuarios.</p>
                        
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Usuarios:</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nombre de Usuario</th>
                                                <th>Rol</th>                                               
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nombre de Usuario</th>
                                                <th>Rol</th>                                             
                                            </tr>
                                        </tfoot>
                                        <% 
                                            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                                        %>
                                        <tbody>
                                            <% for(Usuario usr : listaUsuarios) { %>
                                            <tr>                                               
                                                <td><%= usr.getId_usuario() %></td>
                                                <td><%= usr.getNombreUsuario() %></td>
                                                <td><%= usr.getRol() %></td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    

                    <%@include file="components/footer.jsp" %>
                </div>
                
                    
            </div>
            

        </div>

        <%@include file="components/scrolltop.jsp" %>
        <%@include file="components/logoutmodal.jsp" %>
        <%@include file="components/scripts.jsp" %>
        <%@include file="components/scripts_dataTables.jsp" %>
    </body>

</html>