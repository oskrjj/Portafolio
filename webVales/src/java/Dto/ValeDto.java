/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;

import Dao.ValeDao;

/**
 *
 * @author Yojhan Leiva
 */
public class ValeDto {
    private String empleadoRut;
    private String empleadoNombre;
    private String hora;
    private String turno;
    private int valorVale;

    public ValeDto() {
    }

    public String getEmpleadoRut() {
        return empleadoRut;
    }

    public void setEmpleadoRut(String empleadoRut) {
        this.empleadoRut = empleadoRut;
    }

    public String getEmpleadoNombre() {
        return empleadoNombre;
    }

    public void setEmpleadoNombre(String empleadoNombre) {
        this.empleadoNombre = empleadoNombre;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
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

    public String ListarTicket(){
        ValeDao daovale = new ValeDao();
        return daovale.ListarTickets();
    }
}
