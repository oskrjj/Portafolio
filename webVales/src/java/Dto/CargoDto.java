/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;
import Dao.CargoDao;

public class CargoDto {
    private String cargoId;
    private String descripcion;
    private int valorColacion;
    
    
    public CargoDto(){
        this.cargoId="";
        this.descripcion="";
        this.valorColacion=0;
    }

    public CargoDto(String cargoId, String desccripcion, int valorColacion) {
        this.cargoId = cargoId;
        this.descripcion = desccripcion;
        this.valorColacion = valorColacion;
    }

    public String getCargoId() {
        return cargoId;
    }

    public void setCargoId(String cargoId) {
        this.cargoId = cargoId;
    }

    public String getDesccripcion() {
        return descripcion;
    }

    public void setDesccripcion(String desccripcion) {
        this.descripcion = desccripcion;
    }

    public int getValorColacion() {
        return valorColacion;
    }

    public void setValorColacion(int valorColacion) {
        this.valorColacion = valorColacion;
    }
    
    public boolean agregarCargo(String id, String desc, int valor){
        CargoDao cargodao= new CargoDao();
        return cargodao.insertarCargo(id, desc, valor);
    }
    
    public boolean elimCargo(String id){
        CargoDao cargodao= new CargoDao();
        return cargodao.elimCargo(id);
    }
    
    public boolean modCargo(String id, String desc, int valor){
        CargoDao cargodao = new CargoDao();
        return cargodao.modCargo(id, desc, valor);
    }
    public String ListarCargo(){
        CargoDao cargodao = new CargoDao();
        return cargodao.Listar();
    }
    public int obtenerValor(String rut){
        CargoDao cargodao = new CargoDao();
        return cargodao.obtenerValor(rut);
    }
    
    
    
    
}
