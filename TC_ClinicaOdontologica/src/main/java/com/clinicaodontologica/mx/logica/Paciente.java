
package com.clinicaodontologica.mx.logica;

import java.util.Date;
import java.util.List;

public class Paciente extends Persona {
    
    private int id_paciente;
    private boolean tiene_SS; // Seguro social
    private String tipoSangre;
    private Responsable responsable;
    private List<Turno> listaTurnos;

    public Paciente() {
    }

    public Paciente(int id_paciente, boolean tiene_SS, String tipoSangre, Responsable responsable, List<Turno> listaTurnos,
            String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac) {
        super(dni, nombre, apellido, telefono, direccion, fecha_nac);
        this.id_paciente = id_paciente;
        this.tiene_SS = tiene_SS;
        this.tipoSangre = tipoSangre;
        this.responsable = responsable;
        this.listaTurnos = listaTurnos;
    }

    public int getId_paciente() {
        return id_paciente;
    }

    public void setId_paciente(int id_paciente) {
        this.id_paciente = id_paciente;
    }

    public boolean isTiene_SS() {
        return tiene_SS;
    }

    public void setTiene_SS(boolean tiene_SS) {
        this.tiene_SS = tiene_SS;
    }

    public String getTipoSangre() {
        return tipoSangre;
    }

    public void setTipoSangre(String tipoSangre) {
        this.tipoSangre = tipoSangre;
    }

    public Responsable getResponsable() {
        return responsable;
    }

    public void setResponsable(Responsable responsable) {
        this.responsable = responsable;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }
    
    

    
    
    
            
    
}
