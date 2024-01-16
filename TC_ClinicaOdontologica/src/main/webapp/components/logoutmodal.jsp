<%-- 
    Document   : logoutmodal
    Created on : 6 ene. 2024, 6:32:30 p. m.
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Seguro que quieres salir?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">X</span>
                    </button>
                </div>
                <div class="modal-body">Selecciona "Finalizar" si deseas cerrar la sesión</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    <a class="btn btn-primary" href="login.jsp">Finalizar</a>
                </div>
            </div>
        </div>
    </div>
