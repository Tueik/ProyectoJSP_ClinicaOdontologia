
package com.clinicaodontologica.mx.logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Turno implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_turno;
    @Temporal(TemporalType.DATE)
    private Date fecha_turno;
    private String hora_turno;
    private String afeccion;
    
    @ManyToOne
    @JoinColumn(name = "id_odontologo")
    private Odontologo turno_odontologo;
    
    @ManyToOne
    @JoinColumn(name = "id_paciente")
    private Paciente turno_paciente;
            
    public Turno() {
    }

    public Turno(int id_turno, Date fecha_turno, String hora_turno, String afeccion) {
        this.id_turno = id_turno;
        this.fecha_turno = fecha_turno;
        this.hora_turno = hora_turno;
        this.afeccion = afeccion;
    }

    public int getId_turno() {
        return id_turno;
    }

    public void setId_turno(int id_turno) {
        this.id_turno = id_turno;
    }

    public Date getFecha_turno() {
        return fecha_turno;
    }

    public void setFecha_turno(Date fecha_turno) {
        this.fecha_turno = fecha_turno;
    }

    public String getHora_turno() {
        return hora_turno;
    }

    public void setHora_turno(String hora_turno) {
        this.hora_turno = hora_turno;
    }

    public String getAfeccion() {
        return afeccion;
    }

    public void setAfeccion(String afeccion) {
        this.afeccion = afeccion;
    }

    public Odontologo getTurno_odontologo() {
        return turno_odontologo;
    }

    public void setTurno_odontologo(Odontologo turno_odontologo) {
        this.turno_odontologo = turno_odontologo;
    }

    public Paciente getTurno_paciente() {
        return turno_paciente;
    }

    public void setTurno_paciente(Paciente turno_paciente) {
        this.turno_paciente = turno_paciente;
    }
        
}
