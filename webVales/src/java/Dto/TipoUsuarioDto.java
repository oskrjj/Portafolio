/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;

import Dao.TipoUsuarioDao;

/**
 *
 * @author Yojhan Leiva
 */
public class TipoUsuarioDto {
    private int idTipo;
    private String desc;

    public TipoUsuarioDto(){
        
    }
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

    public String ListarTipoUsuario(){
        TipoUsuarioDao dao = new TipoUsuarioDao();
        return dao.ListarTiposUsuarios();
    }
}
