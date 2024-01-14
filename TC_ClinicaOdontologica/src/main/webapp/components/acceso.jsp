<%-- 
    Document   : acceso
    Created on : 14 ene. 2024, 11:53:51 a. m.
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    String usuarioSesion = (String) request.getSession().getAttribute("usuario");
    if (usuarioSesion == null) {
        response.sendRedirect("usuarioNoAutenticado.jsp");
    }
%>
