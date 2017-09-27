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
public class DetalleDto {
    private String idDetalle;
    private String idProducto;
    private String descProducto;
    private int valor;
    private String numBoleta;

    public DetalleDto(String idDetalle, String idProducto, String descProducto, int valor, String numBoleta) {
        this.idDetalle = idDetalle;
        this.idProducto = idProducto;
        this.descProducto = descProducto;
        this.valor = valor;
        this.numBoleta = numBoleta;
    }

    public String getIdDetalle() {
        return idDetalle;
    }

    public void setIdDetalle(String idDetalle) {
        this.idDetalle = idDetalle;
    }

    public String getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(String idProducto) {
        this.idProducto = idProducto;
    }

    public String getDescProducto() {
        return descProducto;
    }

    public void setDescProducto(String descProducto) {
        this.descProducto = descProducto;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getNumBoleta() {
        return numBoleta;
    }

    public void setNumBoleta(String numBoleta) {
        this.numBoleta = numBoleta;
    }
    
    
}
