/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;

import Dao.ServicioDao;
import java.util.HashSet;

/**
 *
 * @author Yojhan Leiva
 */
public class ServicioDto {
    private String servicioId;
    private String desc;

    public ServicioDto( ) {
        
    }

    public String getServicioId() {
        return servicioId;
    }

    public void setServicioId(String servicioId) {
        this.servicioId = servicioId;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
    public boolean agregarServicioNuevo(ServicioDto servicioN)
    {
        ServicioDao dao = new ServicioDao();
        dao.setIdServicio(servicioN.getServicioId());
        dao.setDescripcion(servicioN.getDesc());
        return dao.agregarServ(dao);
    }
    
}
