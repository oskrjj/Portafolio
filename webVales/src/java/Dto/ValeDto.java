/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;

/**
 *
 * @author Yojhan Leiva
 */
public class ValeDto {
    private String codVale;
    private String empleadoRut;
    private String nombreUser;
    private String fecha;
    private String turno;
    private int valorVale;
    private String servicioId;
    private String servicioDesc;

    public ValeDto(String codVale, String empleadoRut, String nombreUser, String fecha, String turno, int valorVale, String servicioId, String servicioDesc) {
        this.codVale = codVale;
        this.empleadoRut = empleadoRut;
        this.nombreUser = nombreUser;
        this.fecha = fecha;
        this.turno = turno;
        this.valorVale = valorVale;
        this.servicioId = servicioId;
        this.servicioDesc = servicioDesc;
    }

    public String getCodVale() {
        return codVale;
    }

    public void setCodVale(String codVale) {
        this.codVale = codVale;
    }

    public String getEmpleadoRut() {
        return empleadoRut;
    }

    public void setEmpleadoRut(String empleadoRut) {
        this.empleadoRut = empleadoRut;
    }

    public String getNombreUser() {
        return nombreUser;
    }

    public void setNombreUser(String nombreUser) {
        this.nombreUser = nombreUser;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public int getValorVale() {
        return valorVale;
    }

    public void setValorVale(int valorVale) {
        this.valorVale = valorVale;
    }

    public String getServicioId() {
        return servicioId;
    }

    public void setServicioId(String servicioId) {
        this.servicioId = servicioId;
    }

    public String getServicioDesc() {
        return servicioDesc;
    }

    public void setServicioDesc(String servicioDesc) {
        this.servicioDesc = servicioDesc;
    }
    
    
    
    
}
