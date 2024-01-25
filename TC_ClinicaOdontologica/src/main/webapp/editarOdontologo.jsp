<%-- 
    Document   : editarOdontologo
    Created on : 17 ene. 2024, 7:50:57 p. m.
    Author     : ricar
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.clinicaodontologica.mx.logica.Odontologo"%>

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
                        <h2>Editar Odontólogo</h2>
                        <p>Este es el apartado para editar un Odontólogo existente en el sistema.</p>
                        <%  Odontologo od = (Odontologo) request.getSession().getAttribute("odontologoEditar"); 
                            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
                        %>
                        
                        <form class="user" action="SvEditarOdontologos" method="POST">
                            <div class="form-group col">
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="dni" name="dni"
                                           placeholder="DNI" value="<%= od.getDni() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                                           placeholder="Nombre" value="<%= od.getNombre() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="apellidos" name="apellidos"
                                           placeholder="Apellidos" value="<%= od.getApellido() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="number" class="form-control form-control-user" id="telefono" name="telefono"
                                           placeholder="Teléfono" value="<%= od.getTelefono() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                                           placeholder="Dirección" value="<%= od.getDireccion() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="date" class="form-control form-control-user" id="fechanac" name="fecha_nac"
                                           placeholder="Fecha de Nacimiento" value="<%= formato.format(od.getFecha_nac()) %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="especialidad" name="especialidad"
                                           placeholder="Especialidad" value="<%= od.getEspecialidad() %>">
                                </div>   
                                <!-- Usuarios y horarios -->
                            </div>

                            <button type="submit" class="btn btn-primary btn-user">
                                Guardar Modificaciones
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


