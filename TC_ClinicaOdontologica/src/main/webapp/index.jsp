<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="components/header.jsp" %>
    </head>
    <body id="page-top">
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