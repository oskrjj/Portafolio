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
public class ComensalDao {
    private String id_tipo_comensal, descripcion;

    public ComensalDao(String id_tipo_comensal, String descripcion) {
        this.id_tipo_comensal = id_tipo_comensal;
        this.descripcion = descripcion;
    }

    public ComensalDao() {
    }

    public String getId_tipo_comensal() {
        return id_tipo_comensal;
    }

    public void setId_tipo_comensal(String id_tipo_comensal) {
        this.id_tipo_comensal = id_tipo_comensal;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String ListartiposComensal(){
        return ComensalDao.listarTiposComensal();
    }
    private static String listarTiposComensal() {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarTiposComensal();
    }
    
}
