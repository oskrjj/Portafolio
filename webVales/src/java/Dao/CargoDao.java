/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author Yojhan Leiva
 */
public class CargoDao {
    private String cargoId;
    private String desccripcion;
    private int valorColacion;

    public CargoDao() {
    }

    public CargoDao(String cargoId, String desccripcion, int valorColacion) {
        this.cargoId = cargoId;
        this.desccripcion = desccripcion;
        this.valorColacion = valorColacion;
    }

    public String getCargoId() {
        return cargoId;
    }

    public void setCargoId(String cargoId) {
        this.cargoId = cargoId;
    }

    public String getDesccripcion() {
        return desccripcion;
    }

    public void setDesccripcion(String desccripcion) {
        this.desccripcion = desccripcion;
    }

    public int getValorColacion() {
        return valorColacion;
    }

    public void setValorColacion(int valorColacion) {
        this.valorColacion = valorColacion;
    }
    
    public boolean insertarCargo(String id, String desc, int valor){
        return CargoDao.agregarCargo(id, desccripcion, valor);
    }
    
    public boolean elimCargo(String id){
        return CargoDao.eliminarCargo(id);
    }
    
    public boolean modCargo(String id, String desc, int valor){
        return CargoDao.modificarCargo(id, desccripcion, valor);
    }
    public String Listar(){
        return CargoDao.listarCargos();
    }
    
    public String obtenerDescId(String id){
        return CargoDao.obtenerDescripcionId(id);
    }
    
    public int obtenerValor(String rut){
        return CargoDao.obtenerValorId(rut);
    }
    
    private static Boolean agregarCargo(java.lang.String id, java.lang.String descripcion, java.lang.Integer valor) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.agregarCargo(id, descripcion, valor);
    }

    private static Boolean eliminarCargo(java.lang.String id) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.eliminarCargo(id);
    }

    private static Boolean modificarCargo(java.lang.String id, java.lang.String descripcion, java.lang.Integer valor) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.modificarCargo(id, descripcion, valor);
    }

  

  

    private static Integer obtenerValorId(java.lang.String id) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.obtenerValorId(id);
    }

    private static String listarCargos() {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarCargos();
    }

    private static String obtenerDescripcionId(java.lang.String id) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.obtenerDescripcionId(id);
    }



    
    
    
    
    
}
