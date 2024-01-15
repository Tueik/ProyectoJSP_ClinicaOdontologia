/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinicaodontologica.mx.logica;

import com.clinicaodontologica.mx.persistencia.ControladoraPersistencia;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ricar
 */
public class ControladoraLogica {
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario(String nombreUsuario, String contrasena, String rolSeleccionado){
        
        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setNombreUsuario(nombreUsuario);
        nuevoUsuario.setContrasena(contrasena);
        
        Rol rolUsuario = asignarRol(rolSeleccionado);
        
        nuevoUsuario.setRol(rolUsuario);
        controlPersis.crearUsuario(nuevoUsuario);
    }
    
    public List<Usuario> obtenerUsuarios() {
        return controlPersis.obtenerUsuarios();
    }

    public void eliminarUsuario(int id) {
        controlPersis.eliminarUsuario(id);
    }

    public Usuario obtenerUsuario(int id) {
        return controlPersis.obtenerUsuario(id);
    }

    public void editarUsuario(Usuario usuarioEditado, String nombre, String contrasena, String rolSeleccionado) {
        usuarioEditado.setNombreUsuario(nombre);
        usuarioEditado.setContrasena(contrasena);
        Rol rol = asignarRol(rolSeleccionado);      
        usuarioEditado.setRol(rol);
        controlPersis.editarUsuario(usuarioEditado);
    }

    public boolean validarUsuario(String usuario, String contrasena) {
        boolean usuarioValido = false;
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios = controlPersis.obtenerUsuarios();
        for (Usuario u : listaUsuarios) {
            if (u.getNombreUsuario().equals(usuario)) {
                if (u.getContrasena().equals(contrasena)) {
                    usuarioValido = true;
                } else {
                    usuarioValido = false;
                }

            }
        }

        return usuarioValido;
    }

    public Rol asignarRol(String rolSeleccionado){
        Rol rol = null;
        List<Rol> listaRoles = controlPersis.obtenerRoles();
        for(Rol r : listaRoles){
            if(r.getNombreRol().equals(rolSeleccionado)){
                rol = r;
            }
        } 
        return rol;
    }
    
    public List<Rol> obtenerRoles() {
        return controlPersis.obtenerRoles();
    }
    
    
}
