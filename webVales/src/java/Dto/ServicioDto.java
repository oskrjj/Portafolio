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
public class ServicioDto {
    private String servicioId;
    private String desc;

    public ServicioDto(String servicioId, String desc) {
        this.servicioId = servicioId;
        this.desc = desc;
    }

    public String getServicioId() {
        return servicioId;
    }

    public void setServicioId(String servicioId) {
        this.servicioId = servicioId;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
    
}
