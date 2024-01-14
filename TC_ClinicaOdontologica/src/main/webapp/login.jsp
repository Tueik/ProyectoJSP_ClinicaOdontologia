<%-- 
    Document   : login
    Created on : 12 ene. 2024, 1:08:34 a. m.
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <%@include file="components/header.jsp" %>

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
                                        <form class="user" action="SvAcceso" method="POST">
                                            <div class="form-group">
                                                <input class="form-control form-control-user" 
                                                       placeholder="Usuario" id="usuario" name="usuario">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user"
                                                       placeholder="Contraseña" id="contrasena" name="contrasena">
                                            </div>
                                            <button href="index.jsp" class="btn btn-primary btn-user btn-block">
                                                Acceder
                                            </button>
                                            <hr>                                           
                                        </form>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <%@include file="components/scripts.jsp" %>

    </body>
</html>
