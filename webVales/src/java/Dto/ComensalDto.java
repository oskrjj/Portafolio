/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;
import Dao.ComensalDao;
/**
 *
 * @author Oskll
 */
public class ComensalDto {
    private String id_Tipo_Comensal, Descripcion;

    public ComensalDto() {
    }

    public ComensalDto(String id_Tipo_Comensal, String Descripcion) {
        this.id_Tipo_Comensal = id_Tipo_Comensal;
        this.Descripcion = Descripcion;
    }

    public String getId_Tipo_Comensal() {
        return id_Tipo_Comensal;
    }

    public void setId_Tipo_Comensal(String id_Tipo_Comensal) {
        this.id_Tipo_Comensal = id_Tipo_Comensal;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    public String ListarTipoComensal(){
        ComensalDao dao = new ComensalDao();
        return dao.ListartiposComensal();
    }
}
