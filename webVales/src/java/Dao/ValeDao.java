/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author Yojhan Leiva
 */
public class ValeDao {
    private String empleadoRut;
    private String empleadoNombre;
    private String hora;
    private String turno;
    private int valorVale;

    public ValeDao() {
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

    public String ListarTickets(){
        return ValeDao.listarTickets();
    }
    private static String listarTickets() {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarTickets();
    }
    
    
}
