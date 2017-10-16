/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;


public class TipoUsuarioDao {
    private int idTipo;
    private String desc;


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

    public String ListarTiposUsuarios(){
        return TipoUsuarioDao.listarTiposUsuario();
    }
    private static String listarTiposUsuario() {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarTiposUsuario();
    }
    
    
    
    
}
