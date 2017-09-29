/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import org.datacontract.schemas._2004._07.sistemavales.Usuario;
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
    
    public static String ObtenerTipoUser(String id){
        TipoUsuarioDao dao = new TipoUsuarioDao();
        return dao.recuperarIdTipoUsuario(id);
    }
    
    private static String recuperarIdTipoUsuario(java.lang.String id) {
        org.tempuri.Usuario service = new org.tempuri.Usuario();
        org.tempuri.IUsuario port = service.getBasicHttpBindingIUsuario();
        return port.recuperarIdTipoUsuario(id);
    }
    
    
}
