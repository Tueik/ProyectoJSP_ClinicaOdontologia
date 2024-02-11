<%-- 
    Document   : sidebar
    Created on : 6 ene. 2024, 6:20:00 p. m.
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../principal/index.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-regular fa-tooth"></i>
                </div>
                <div class="sidebar-brand-text mx-3"> Consultorio Odontológico </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">
                    <i class="fas fa-solid fa-bars"></i>
                    <span>Panel de Control</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Gestión de Clínica
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGestionClinica"
                    aria-expanded="true" aria-controls="collapseGestionClinica">
                    <i class="fas fa-hospital-user"></i>
                    <span>Menú Clínica</span>
                </a>
                <div id="collapseGestionClinica" class="collapse" aria-labelledby="headingGestionClinica" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Gestionar:</h6>
                        <a class="collapse-item" href="../../SvTurnos"> Turnos</a>
                        <a class="collapse-item" href="../../SvPacientes"> Pacientes</a>
                        <a class="collapse-item" href="../../SvResponsables"> Responsables</a>
                        <a class="collapse-item" href="../../SvOdontologos"> Odontólogos</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading 2 -->
            <div class="sidebar-heading">
                Gestión de Sistema
            </div>
            
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGestionSistema"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-solid fa-user"></i>
                    <span>Menú Sistema</span>
                </a>
                <div id="collapseGestionSistema" class="collapse" aria-labelledby="headingGestionSistema"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Gestionar:</h6>
                        <a class="collapse-item" href="../../SvHorarios">Horarios</a>
                        <a class="collapse-item" href="../../SvSecretarios">Secretarios</a>
                        <a class="collapse-item" href="../../SvRoles">Roles</a>
                        <a class="collapse-item" href="../../SvUsuarios">Usuarios</a>            
                    </div>
                </div>
            </li>
            
  
            <!-- Divider 2 -->
            <hr class="sidebar-divider">
        </ul>
        <!-- End of Sidebar -->
