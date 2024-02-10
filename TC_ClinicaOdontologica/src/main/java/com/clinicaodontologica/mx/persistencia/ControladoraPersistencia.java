/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinicaodontologica.mx.persistencia;

import com.clinicaodontologica.mx.logica.Horario;
import com.clinicaodontologica.mx.logica.Odontologo;
import com.clinicaodontologica.mx.logica.Paciente;
import com.clinicaodontologica.mx.logica.Responsable;
import com.clinicaodontologica.mx.logica.Rol;
import com.clinicaodontologica.mx.logica.Secretario;
import com.clinicaodontologica.mx.logica.Turno;
import com.clinicaodontologica.mx.logica.Usuario;
import com.clinicaodontologica.mx.persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ricar
 */
public class ControladoraPersistencia {
    HorarioJpaController horarioJPA = new HorarioJpaController();
    OdontologoJpaController odontologoJPA = new OdontologoJpaController();
    PacienteJpaController pacienteJPA = new PacienteJpaController();
    PersonaJpaController personaJPA = new PersonaJpaController();
    ResponsableJpaController responsableJPA = new ResponsableJpaController();
    SecretarioJpaController secretarioJPA = new SecretarioJpaController();
    TurnoJpaController turnoJPA = new TurnoJpaController();
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    RolJpaController rolJPA = new RolJpaController();

    

    public List<Rol> obtenerRoles(){
        return rolJPA.findRolEntities();
    }
    
    //<editor-fold defaultstate="collapsed" desc="usuarioJPA">
    public void crearUsuario(Usuario nuevoUsuario) {
        usuarioJPA.create(nuevoUsuario);
    }

    public List<Usuario> obtenerUsuarios() {
        return usuarioJPA.findUsuarioEntities();
    }

    public void eliminarUsuario(int id) {
        try {
            usuarioJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar usuario", ex);
        }
    }

    public Usuario obtenerUsuario(int id) {
        return usuarioJPA.findUsuario(id);
    }

    public void editarUsuario(Usuario usuarioEditado) {
        try {
            usuarioJPA.edit(usuarioEditado);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar usuario", ex);
        }
    }
    //</editor-fold>

    public void crearOdontologo(Odontologo nuevoOdontologo) {
        odontologoJPA.create(nuevoOdontologo);
    }

    public List<Odontologo> obtenerOdontologos() {
        return odontologoJPA.findOdontologoEntities();
    }

    public void eliminarOdontologo(int id) {
        try {
            odontologoJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar odontologo", ex);
        }
    }

    public Odontologo obtenerOdontologo(int id) {
        return odontologoJPA.findOdontologo(id);
    }

    public void editarOdontologo(Odontologo odOriginal) {
        try {
            odontologoJPA.edit(odOriginal);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar odontologo", ex);
        }
    }

    public List<Paciente> obtenerPacientes() {
        return pacienteJPA.findPacienteEntities();
    }

    public void crearPaciente(Paciente nuevoPaciente) {
        pacienteJPA.create(nuevoPaciente);
    }

    public void eliminarPaciente(int idPaciente) {
        try {
            pacienteJPA.destroy(idPaciente);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar paciente", ex);
        }
    }

    public Paciente obtenerPaciente(int id) {
        return pacienteJPA.findPaciente(id);
    }

    public void editarPaciente(Paciente pacienteOriginal) {
        try {
            pacienteJPA.edit(pacienteOriginal);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar paciente", ex);
        }
    }

    public void eliminarSecretario(int idEliminar) {
        try {
            secretarioJPA.destroy(idEliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar secretario", ex);
        }
    }

    public void crearSecretario(Secretario nuevoSecretario) {
        secretarioJPA.create(nuevoSecretario);
    }

    public void editarSecretario(Secretario secEditado) {
        try {
            secretarioJPA.edit(secEditado);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar secretario", ex);
        }
    }

    public Secretario obtenerSecretario(int idEditar) {
        return secretarioJPA.findSecretario(idEditar);
    }

    public List<Secretario> obtenerSecretarios() {
        return secretarioJPA.findSecretarioEntities();
    }

    public void crearResponsable(Responsable nuevoResponsable) {
        responsableJPA.create(nuevoResponsable);
    }

    public void editarResponsable(Responsable responsableEditado) {
        try {
            responsableJPA.edit(responsableEditado);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar responsable", ex);
        }
    }

    public Responsable obtenerResponsable(int idResponsable) {
        return responsableJPA.findResponsable(idResponsable);
    }

    public void eliminarResponsable(int idEliminar) {
        try {
            responsableJPA.destroy(idEliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar responsable", ex);
        }
    }

    public List<Responsable> obtenerResponsables() {
        return responsableJPA.findResponsableEntities();
    }

    public List<Horario> obtenerHorarios() {
        return horarioJPA.findHorarioEntities();
    }

    public void crearHorario(Horario horarioNuevo) {
        horarioJPA.create(horarioNuevo);
    }

    public void eliminarHorario(int idEliminar) {
        try {
            horarioJPA.destroy(idEliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar horario", ex);
        }
    }

    public Horario obtenerHorario(int id) {
        return horarioJPA.findHorario(id);
    }

    public void editarHorario(Horario horarioOriginal) {
        try {
            horarioJPA.edit(horarioOriginal);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar horario", ex);
        }
    }

    public void crearTurno(Turno nuevoTurno) {
        turnoJPA.create(nuevoTurno);
    }

    public void editarTurno(Turno turnoOriginal) {
        try {
            turnoJPA.edit(turnoOriginal);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar turno", ex);
        }
    }

    public Turno obtenerTurno(int id) {
        return turnoJPA.findTurno(id);
    }

    public void eliminarTurno(int idEliminar) {
        try {
            turnoJPA.destroy(idEliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar turno", ex);
        }
    }

    public List<Turno> obtenerTurnos() {
        return turnoJPA.findTurnoEntities();      
    }

    public void crearRol(Rol nuevoRol) {
        rolJPA.create(nuevoRol);
    }

    public void eliminarRol(int idEliminar) {
        try {
            rolJPA.destroy(idEliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al eliminar rol", ex);
        }
    }

    public void editarRol(Rol rolOriginal) {
        try {
            rolJPA.edit(rolOriginal);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, "Error al editar rol", ex);
        }
    }

    public Rol obtenerRol(int id) {
        return rolJPA.findRol(id);
    }
    
    
}
