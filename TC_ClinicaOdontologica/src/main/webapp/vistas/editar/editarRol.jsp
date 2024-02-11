<%-- 
    Document   : editarRol
    Created on : 9 feb. 2024, 12:34:44 a. m.
    Author     : ricar
--%>

<%@page import="com.clinicaodontologica.mx.logica.Rol"%>
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
                        <h2>Editar Rol</h2>
                        <p>Este es el apartado para editar un Rol existente en el sistema.</p>
                        <%  Rol rol = (Rol) request.getSession().getAttribute("rolEditar"); 
                        %>
                        
                        <form class="user" action="../../SvEditarRoles" method="POST">
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <label>Nombre</label>
                                        <input type="text" class="form-control form-control-user" id="nombreRol" name="nombreRol"
                                               placeholder="Nombre del Rol" value="<%= rol.getNombreRol() %>">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <label>Descripción</label>
                                        <textarea type="text" class="form-control" id="descripcion" name="descripcion"
                                                  placeholder="Descripción del Rol.."><%= rol.getDescripcion() %></textarea>
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



