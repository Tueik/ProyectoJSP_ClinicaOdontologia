
package com.clinicaodontologica.mx.logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Usuario implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_usuario;
    private String nombreUsuario;
    private String contrasena;
    
    @ManyToOne
    @JoinColumn(name = "rol_id")
    private Rol rolUsuario;

    public Usuario() {
    }

    public Usuario(int id_usuario, String nombreUsuario, String contrasena, Rol rolUsuario) {
        this.id_usuario = id_usuario;
        this.nombreUsuario = nombreUsuario;
        this.contrasena = contrasena;
        this.rolUsuario = rolUsuario;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public Rol getRol() {
        return rolUsuario;
    }

    public void setRol(Rol rolUsuario) {
        this.rolUsuario = rolUsuario;
    }
    
    
    
}
