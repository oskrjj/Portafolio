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
public class VentasDto {
    private String numBoleta;
    private String fecha;
    private int valor;
    private String empleadoRut;
    private String valeCod;

    public VentasDto(String numBoleta, String fecha, int valor, String empleadoRut, String valeCod) {
        this.numBoleta = numBoleta;
        this.fecha = fecha;
        this.valor = valor;
        this.empleadoRut = empleadoRut;
        this.valeCod = valeCod;
    }

    public String getNumBoleta() {
        return numBoleta;
    }

    public void setNumBoleta(String numBoleta) {
        this.numBoleta = numBoleta;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getEmpleadoRut() {
        return empleadoRut;
    }

    public void setEmpleadoRut(String empleadoRut) {
        this.empleadoRut = empleadoRut;
    }

    public String getValeCod() {
        return valeCod;
    }

    public void setValeCod(String valeCod) {
        this.valeCod = valeCod;
    }
    
    
    
    
}
