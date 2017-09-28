/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import org.datacontract.schemas._2004._07.sistemavales.Usuario;

/**
 *
 * @author Oskll
 */
public class UsuarioDao {

    private String password;
    private String rut;
    private String tipo_usuario_id;
    private int id_comensal;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getTipo_usuario_id() {
        return tipo_usuario_id;
    }

    public void setTipo_usuario_id(String tipo_usuario_id) {
        this.tipo_usuario_id = tipo_usuario_id;
    }

    public int getId_comensal() {
        return id_comensal;
    }

    public void setId_comensal(int id_comensal) {
        this.id_comensal = id_comensal;
    }
    
    
    public static  boolean ValidarLog(String rut, String pass){
        UsuarioDao dao = new UsuarioDao();
        return dao.validarLogin(rut,pass);
    }
    
    private static Boolean validarLogin(java.lang.String rut, java.lang.String password) {
        org.tempuri.Usuario service = new org.tempuri.Usuario();
        org.tempuri.IUsuario port = service.getBasicHttpBindingIUsuario();
        return port.validarLogin(rut, password);
    }
    
}
