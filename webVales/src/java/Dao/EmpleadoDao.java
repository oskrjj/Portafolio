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
public class EmpleadoDao {
    private String rut;
    private String nombre;
    private String correo;
    private String cargo_id;
    private String turno_id;

    
    public EmpleadoDao(){
        this.rut="";
        this.nombre="";
        this.correo="";
        this.cargo_id="";
        this.turno_id="";
    }
    public EmpleadoDao(String rut, String nombre, String correo, String cargo_id, String turno_id) {
        this.rut = rut;
        this.nombre = nombre;
        this.correo = correo;
        this.cargo_id = cargo_id;
        this.turno_id = turno_id;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCargo_id() {
        return cargo_id;
    }

    public void setCargo_id(String cargo_id) {
        this.cargo_id = cargo_id;
    }

    public String getTurno_id() {
        return turno_id;
    }

    public void setTurno_id(String turno_id) {
        this.turno_id = turno_id;
    }

   public String obtenerCargoid(String rut){
       return EmpleadoDao.obtenerCargoId(rut);
   }
   public boolean ingresarEmpleado(String rut, String nomc, String correo, String cargoId, String turnoId){
       return EmpleadoDao.agregarEmpleado(rut, nomc, correo, cargoId, turnoId);
   }
   
   public boolean elimEmpleado(String rut){
       return EmpleadoDao.eliminarEmpleado(rut);
   }
   
   public String listarRut(String rut){
       return EmpleadoDao.listarEmpleadoPorRut(rut);
   }
   
   public String listaEmpleados(){
       return EmpleadoDao.listarEmpleados();
   }
   
   public boolean modificarEmpleados(String rut, String nomc, String correo, String cargoId, String turnoId){
       return EmpleadoDao.modificarEmpleado(rut, nomc, correo, cargoId, turnoId);
   }
   
   
   public String obtenerCargosId(String rut){
       return EmpleadoDao.obtenerCargoId(rut);
   }
   
   public String ObtenerTurno(String rut){
       return EmpleadoDao.obtenerTurno(rut);
   }
   public String ObtenerNombre(String rut){
        return EmpleadoDao.obtenerNombreEmpleado(rut);
    }

    private static String obtenerNombreEmpleado(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.obtenerNombreEmpleado(rut);
    }

    private static Boolean agregarEmpleado(java.lang.String rut, java.lang.String nomc, java.lang.String correo, java.lang.String cargoid, java.lang.String turnoid) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.agregarEmpleado(rut, nomc, correo, cargoid, turnoid);
    }

    private static Boolean eliminarEmpleado(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.eliminarEmpleado(rut);
    }

    private static String listarEmpleadoPorRut(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarEmpleadoPorRut(rut);
    }

    private static String listarEmpleados() {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarEmpleados();
    }

    private static Boolean modificarEmpleado(java.lang.String rut, java.lang.String nomc, java.lang.String correo, java.lang.String cargoid, java.lang.String turnoid) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.modificarEmpleado(rut, nomc, correo, cargoid, turnoid);
    }

    private static String obtenerCargoId(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.obtenerCargoId(rut);
    }

    private static String obtenerTurno(java.lang.String rut) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.obtenerTurno(rut);
    }

    

  
 

   

 
    
    
}
