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
public class CargoDto {
    private String cargoId;
    private String desccripcion;
    private int valorColacion;

    public CargoDto(String cargoId, String desccripcion, int valorColacion) {
        this.cargoId = cargoId;
        this.desccripcion = desccripcion;
        this.valorColacion = valorColacion;
    }

    public String getCargoId() {
        return cargoId;
    }

    public void setCargoId(String cargoId) {
        this.cargoId = cargoId;
    }

    public String getDesccripcion() {
        return desccripcion;
    }

    public void setDesccripcion(String desccripcion) {
        this.desccripcion = desccripcion;
    }

    public int getValorColacion() {
        return valorColacion;
    }

    public void setValorColacion(int valorColacion) {
        this.valorColacion = valorColacion;
    }
    
    
}
