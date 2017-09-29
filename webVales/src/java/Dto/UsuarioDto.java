/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;



import Dao.UsuarioDao;
import org.datacontract.schemas._2004._07.sistemavales.Usuario;
public class UsuarioDto {
    private String password;
    private String rut;
    private String tipo_usuario_id;
    private int id_comensal;

    public UsuarioDto(String password, String rut, String tipo_usuario_id, int id_comensal) {
        this.password = password;
        this.rut = rut;
        this.tipo_usuario_id = tipo_usuario_id;
        this.id_comensal = id_comensal;
        
    }  

    public UsuarioDto() {
    }

    
    public int getId_comensal() {
        return id_comensal;
    }

    public void setId_comensal(int id_comensal) {
        this.id_comensal = id_comensal;
    }

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

    @Override
    public String toString() {
        return "UsuarioDto{" + "password=" + password + ", rut=" + rut +
                ", tipo_usuario_id=" + tipo_usuario_id + '}';
    }
    
    
    public static boolean ValidarLog(String rut, String pass){
        
        UsuarioDao userdao = new UsuarioDao();
        return userdao.ValidarLog(rut,pass);
    }
    
    public static String obtenerTipoId(String rut){
        UsuarioDao userdao = new UsuarioDao();
        return userdao.ObtenerTipoUser(rut);
    }

    
    
}
