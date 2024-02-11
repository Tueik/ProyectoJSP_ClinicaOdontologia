<%-- 
    Document   : verResponsables
    Created on : 28 ene. 2024, 1:50:28 p. m.
    Author     : ricar
--%>

<%@page import="com.clinicaodontologica.mx.logica.Responsable"%>
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
                        <h1 class="h3 mb-2 text-gray-800">Lista de Responsables en el Sistema</h1>
                        <p class="mb-4">A continuación se muestra la lista completa de Responsables de Pacientes.</p>
                        
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3 d-flex justify-content-between align-items-center">
                                <h6 class="m-0 font-weight-bold text-primary ">Responsables:</h6>
                                <a class="btn btn-success" href="../../SvRegistrarResponsables">Nuevo Responsable</a>
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
                                                <th>Fecha Nacimiento</th>  
                                                <th>Tipo Responsabilidad</th>  
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
                                                <th>Fecha Nacimiento</th>
                                                <th>Tipo Responsabilidad</th>  
                                                <th class="crudcolbtn">Acción</th>
                                            </tr>
                                        </tfoot>
                                        <% 
                                            List<Responsable> listaResponsables = null;  
                                            listaResponsables = (List) request.getSession().getAttribute("listaResponsables");
                                            SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
                                        %>
                                        <tbody>
                                            <% for(Responsable r : listaResponsables) { %>
                                            <tr>                                               
                                                <td id="id_r<%= r.getId() %>"><%= r.getId() %></td>
                                                <td><%= r.getDni() %></td>
                                                <td><%= r.getNombre() %></td>
                                                <td><%= r.getApellido() %></td>
                                                <td><%= r.getTelefono() %></td>
                                                <td><%= r.getDireccion() %></td>
                                                <td><%= formato.format(r.getFecha_nac()) %></td>
                                                <td><%= r.getTipo_resp() %></td>
                                                <td class="d-flex justify-content-around">
                                                    <form action="../../SvEliminarResponsables" name="eliminar" method="POST"><!-- Se manda el código al servlet -->
                                                        <button type="submit" class="btn btn-danger btn-user btn-block">
                                                            <i class="fas fa-trash-alt"></i> Eliminar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= r.getId() %>">
                                                    </form>
                                                    <form action="../../SvEditarResponsables" name="editar" method="GET"><!-- Se manda el código al servlet -->
                                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                                            <i class="fas fa-pencil-alt"></i> Editar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= r.getId() %>">
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
