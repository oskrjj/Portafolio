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
public class ServicioDao {
    private String idServicio;
    private String Descripcion;

    public ServicioDao() {
    }

    public String getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(String idServicio) {
        this.idServicio = idServicio;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public boolean AgregarServicio(String id, String descripcion){
        return ServicioDao.agregarServicio(id, descripcion);
    }

    private static Boolean agregarServicio(java.lang.String id, java.lang.String descripcion) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.agregarServicio(id, descripcion);
    }

 

 

  
  
    
    
    
    
}
