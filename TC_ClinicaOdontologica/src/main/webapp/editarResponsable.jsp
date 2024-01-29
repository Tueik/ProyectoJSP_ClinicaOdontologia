<%-- 
    Document   : editarResponsable
    Created on : 28 ene. 2024, 2:29:29 p. m.
    Author     : ricar
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.clinicaodontologica.mx.logica.Responsable"%>
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
                        <h2>Editar Responsable</h2>
                        <p>Este es el apartado para editar un Responsable existente en el sistema.</p>
                        <%  Responsable r = (Responsable) request.getSession().getAttribute("respEditar"); 
                            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
                        %>
                        
                        <form class="user" action="SvEditarResponsables" method="POST">
                            <div class="form-group col">
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="dni" name="dni"
                                           placeholder="DNI" value="<%= r.getDni() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                                           placeholder="Nombre" value="<%= r.getNombre() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="apellidos" name="apellidos"
                                           placeholder="Apellidos" value="<%= r.getApellido()%>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="number" class="form-control form-control-user" id="telefono" name="telefono"
                                           placeholder="Teléfono" value="<%= r.getTelefono() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                                           placeholder="Dirección" value="<%= r.getDireccion() %>">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control form-control-user" id="tipo_resp" name="tipo_resp"
                                           placeholder="Tipo Responsabilidad" value="<%= r.getTipo_resp()%>">
                                </div>   
                                <div class="col-sm-6 mb-3">
                                    <input type="date" class="form-control form-control-user" id="fechanac" name="fecha_nac"
                                           placeholder="Fecha de Nacimiento" value="<%= formato.format(r.getFecha_nac()) %>">
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



