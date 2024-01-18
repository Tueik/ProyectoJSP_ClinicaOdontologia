/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinicaodontologica.mx.logica;

import com.clinicaodontologica.mx.persistencia.ControladoraPersistencia;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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

    public void crearOdontologo(String dni, String nombre, String apellidos, String telefono, String direccion, String txtFecha_nac, String especialidad) {
        Odontologo nuevoOdontologo = new Odontologo();
        nuevoOdontologo.setDni(dni);
        nuevoOdontologo.setNombre(nombre);
        nuevoOdontologo.setApellido(apellidos);
        nuevoOdontologo.setTelefono(telefono);
        nuevoOdontologo.setDireccion(direccion);
        
        Date fecha_nac = formatearFecha(txtFecha_nac);
        nuevoOdontologo.setFecha_nac(fecha_nac);
        
        nuevoOdontologo.setEspecialidad(especialidad);
        
        controlPersis.crearOdontologo(nuevoOdontologo);
    }
    
    public Date formatearFecha(String fechatxt){
        Date fechaFormateada = null;
        try {
            
            SimpleDateFormat convertirTextoFecha = new SimpleDateFormat("yyyy-MM-dd");
            Date fechaObj = convertirTextoFecha.parse(fechatxt);
            
            SimpleDateFormat formatearFecha = new SimpleDateFormat("dd-MM-yyyy");
            
            fechaFormateada = formatearFecha.parse(formatearFecha.format(fechaObj));
               
        } catch (ParseException ex) {
            Logger.getLogger(ControladoraLogica.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fechaFormateada;
    }

    public List<Odontologo> obtenerOdontologos() {
        return controlPersis.obtenerOdontologos();
    }

    public void eliminarOdontologo(int id) {
        controlPersis.eliminarOdontologo(id);
    }

    public Odontologo obtenerOdontologo(int id) {
        return controlPersis.obtenerOdontologo(id);
    }

    public void editarOdontologo(Odontologo odEditar, String dni, String nombre, String apellidos, String telefono, String direccion, String fechatxt, String especialidad) {
        odEditar.setDni(dni);
        odEditar.setNombre(nombre);
        odEditar.setApellido(apellidos);
        odEditar.setTelefono(telefono);
        odEditar.setDireccion(direccion);
        odEditar.setFecha_nac(formatearFecha(fechatxt));
        odEditar.setEspecialidad(especialidad);
        
        controlPersis.editarOdontologo(odEditar);
    }
    
}
