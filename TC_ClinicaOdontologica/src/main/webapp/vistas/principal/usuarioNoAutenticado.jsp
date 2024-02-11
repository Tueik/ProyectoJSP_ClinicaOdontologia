<%-- 
    Document   : usuarioNoAutenticado
    Created on : 13 ene. 2024, 2:14:36 a. m.
    Author     : ricar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <%@include file="../../components/header.jsp" %>

    </head>

    <body class="bg-gradient-primary">
        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Inicio de Sesión</h1> 
                                        </div>
                                       
                                        <p>Necesitas haber iniciado sesion para acceder a este sitio</p>
                                        
                                        <a href="login.jsp" class="btn btn-primary btn-user btn-block">
                                                Ir a Inicio de Sesión
                                        <a>
                                        <hr>                                                                                                               
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <%@include file="../../components/scripts.jsp" %>

    </body>
</html>

