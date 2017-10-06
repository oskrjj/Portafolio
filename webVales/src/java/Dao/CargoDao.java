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
        CargoDao cargoDao= new CargoDao();
        return cargoDao.agregarCargo(id, desc, valor);
    }
    
    public boolean elimCargo(String id){
        CargoDao cargoDao= new CargoDao();
        return cargoDao.eliminarCargo(id);
    }
    
    public boolean modCargo(String id, String desc, int valor){
        CargoDao cargoDao = new CargoDao();
        return cargoDao.modificarCargo(id,desc,valor);
    }
    public String Listar(){
        CargoDao cargoDao = new CargoDao();
        return cargoDao.listarCargos();
    }
    
    public String obtenerDescId(String id){
        CargoDao cargoDao = new CargoDao();
        return cargoDao.obtenerDescripcionId(id);
    }
    
    public String listarId(String id){
        CargoDao cargoDao = new CargoDao();
        return cargoDao.listarCargoID(id);
    }

    private static Boolean agregarCargo(java.lang.String id, java.lang.String descripcion, java.lang.Integer valor) {
        org.tempuri.Cargo service = new org.tempuri.Cargo();
        org.tempuri.ICargo port = service.getBasicHttpBindingICargo();
        return port.agregarCargo(id, descripcion, valor);
    }

    private static Boolean eliminarCargo(java.lang.String id) {
        org.tempuri.Cargo service = new org.tempuri.Cargo();
        org.tempuri.ICargo port = service.getBasicHttpBindingICargo();
        return port.eliminarCargo(id);
    }

    private static Boolean modificarCargo(java.lang.String id, java.lang.String descripcion, java.lang.Integer valor) {
        org.tempuri.Cargo service = new org.tempuri.Cargo();
        org.tempuri.ICargo port = service.getBasicHttpBindingICargo();
        return port.modificarCargo(id, descripcion, valor);
    }

    private static String listarCargoID(java.lang.String id) {
        org.tempuri.Cargo service = new org.tempuri.Cargo();
        org.tempuri.ICargo port = service.getBasicHttpBindingICargo();
        return port.listarCargoID(id);
    }

    private static String listarCargos() {
        org.tempuri.Cargo service = new org.tempuri.Cargo();
        org.tempuri.ICargo port = service.getBasicHttpBindingICargo();
        return port.listarCargos();
    }

    private static String obtenerDescripcionId(java.lang.String id) {
        org.tempuri.Cargo service = new org.tempuri.Cargo();
        org.tempuri.ICargo port = service.getBasicHttpBindingICargo();
        return port.obtenerDescripcionId(id);
    }

    private static Integer obtenerValorId(java.lang.String id) {
        org.tempuri.Cargo service = new org.tempuri.Cargo();
        org.tempuri.ICargo port = service.getBasicHttpBindingICargo();
        return port.obtenerValorId(id);
    }



    
    
    
    
    
}
