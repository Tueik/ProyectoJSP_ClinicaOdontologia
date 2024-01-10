/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinicaodontologica.mx.logica;

import com.clinicaodontologica.mx.persistencia.ControladoraPersistencia;
import java.util.List;

/**
 *
 * @author ricar
 */
public class ControladoraLogica {
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario(String nombreUsuario, String contrasena, String rol){
        
        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setNombreUsuario(nombreUsuario);
        nuevoUsuario.setContrasena(contrasena);
        nuevoUsuario.setRol(rol);
        
        controlPersis.crearUsuario(nuevoUsuario);
    }

    public List<Usuario> obtenerUsuarios() {
        return controlPersis.obtenerUsuarios();
    }
}
