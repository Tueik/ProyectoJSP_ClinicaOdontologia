<%-- 
    Document   : registrarUsuarios
    Created on : 7 ene. 2024, 12:50:25 a. m.
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <%@ include file="components/header.jsp" %>
    </head>  
    <body>
        <%@include file="components/acceso.jsp" %> <!-- Validación de Acceso -->
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
                            <h1 class="h3 mb-0 text-gray-800">Clínica Odontológica</h1>    

                        </div>
                        <!-- End of Page Heading -->
                        <h2>Registrar Usuarios</h2>
                        <p>Este es el apartado para registrar un usuario del sistema.</p>

                        <form class="user" action="SvUsuarios" method="POST">
                            <div class="form-group col">
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="nombreusuario" name="nombreusuario"
                                           placeholder="Nombre de Usuario">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="password" class="form-control form-control-user" id="contrasena" name="contrasena"
                                           placeholder="Contraseña">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="rol" name="rol"
                                           placeholder="Rol">
                                </div>

                                <!-- Usuarios y horarios -->

                            </div>

                            <button type="submit" class="btn btn-primary btn-user">
                                Registrar Usuario
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
