
package Dto;
import Dao.EmpleadoDao;


public class EmpleadoDto {
    private String rut;
    private String nombre;
    private String correo;
    private String cargo_id;
    private String turno_id;

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

    @Override
    public String toString() {
        return "EmpleadoDto{" + "rut=" + rut + ", nombre=" +
                nombre + ", correo=" + correo + ", cargo_id=" + cargo_id +
                ", turno_id=" + turno_id + '}';
    }
    public String ObtenerNombre(String rut){
        EmpleadoDao empdao = new EmpleadoDao();
        return empdao.ObtenerNombre(rut);
    }
    public boolean agregarEmp(String rut, String nomc, String correo, String cargoId, String turnoId){
        EmpleadoDao empDao = new EmpleadoDao();
        return empDao.ingresarEmpleado(rut, nomc, correo, cargoId, turnoId);
    }
    
    public  boolean elimEmp(String rut){
        EmpleadoDao empDao = new EmpleadoDao();
        return empDao.elimEmpleado(rut);
        
    }
    public String obtenerCargoID(String rut){
        EmpleadoDao empdao = new EmpleadoDao();
        return empdao.obtenerCargoid(rut);
    }
    public boolean modEmp(String rut, String nomc, String correo, String cargoId, String turnoId){
        EmpleadoDao empDao = new EmpleadoDao();
        return empDao.modificarEmpleados(rut, nomc, correo, cargoId, turnoId);
    }
    
    public String obtenerTurno(String rut){
        EmpleadoDao empdao = new EmpleadoDao();
        return empdao.ObtenerTurno(rut);
    }
    public String ListaEmpleados(){
        EmpleadoDao empdao = new EmpleadoDao();
        return empdao.listaEmpleados();
    }
}
