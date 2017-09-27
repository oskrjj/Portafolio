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
public class TipoUsuarioDto {
    private int idTipo;
    private String desc;

    public TipoUsuarioDto(int idTipo, String desc) {
        this.idTipo = idTipo;
        this.desc = desc;
    }

    public int getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(int idTipo) {
        this.idTipo = idTipo;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
}
