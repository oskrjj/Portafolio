/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;



/**
 *
 * @author Oskll
 */
public class UsuarioDao {

    private String password;
    private String rut;
    private String tipo_usuario_id;
    private String id_comensal;

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

    public String getId_comensal() {
        return id_comensal;
    }

    public void setId_comensal(String id_comensal) {
        this.id_comensal = id_comensal;
    }
    
    
    public   boolean ValidarLog(String rut, String pass){
        return UsuarioDao.validarLogin(rut, pass);
    }
    
    public  String ObtenerTipoUser(String rut){
        return UsuarioDao.recuperarIdTipoUsuario(rut);
    }
    
    public  boolean insertarUser(String rut, String pass, String tipo, String comensal){
        return UsuarioDao.agregarUsuario(rut, pass, tipo, comensal);
    }
    public String RetornoIdComensal(String rut){
        return UsuarioDao.retornIdComensal(rut);
    }
    public  boolean elimUser(String rut){
        return UsuarioDao.eliminarUsuario(rut);
    }

    private static Boolean validarLogin(java.lang.String rut, java.lang.String password) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.validarLogin(rut, password);
    }

    private static String recuperarIdTipoUsuario(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.recuperarIdTipoUsuario(rut);
    }

   

    private static Boolean eliminarUsuario(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.eliminarUsuario(rut);
    }

    private static Boolean agregarUsuario(java.lang.String rut, java.lang.String pass, java.lang.String tipo, java.lang.String id) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.agregarUsuario(rut, pass, tipo, id);
    }

    private static String retornIdComensal(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.retornIdComensal(rut);
    }

  

    


   
    
}
