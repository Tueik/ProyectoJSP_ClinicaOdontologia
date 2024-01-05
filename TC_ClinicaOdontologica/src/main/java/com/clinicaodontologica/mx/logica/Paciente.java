
package com.clinicaodontologica.mx.logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Paciente extends Persona implements Serializable {
    
    //private int id_paciente;
    private boolean tiene_SS; // Seguro social
    private String tipoSangre;
    
    @OneToOne
    private Responsable responsable;
    @OneToMany(mappedBy = "pctTurno")
   private List<Turno> listaTurnos;

    public Paciente() {
    }

    public Paciente(boolean tiene_SS, String tipoSangre, Responsable responsable, List<Turno> listaTurnos,
            int id, String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac) {
        super(id, dni, nombre, apellido, telefono, direccion, fecha_nac);
        this.tiene_SS = tiene_SS;
        this.tipoSangre = tipoSangre;
        this.responsable = responsable;
        this.listaTurnos = listaTurnos;
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
