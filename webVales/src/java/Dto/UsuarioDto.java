/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;


public class UsuarioDto {
    private String password;
    private String rut;
    private String tipo_usuario_id;

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
    
    
    
}
