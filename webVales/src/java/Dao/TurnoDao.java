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
public class TurnoDao {
    private String idTurno;
    private String desc;
    private String horaInicio;
    private String horaFinal;

    public TurnoDao(String idTurno, String desc, String horaInicio, String horaFinal) {
        this.idTurno = idTurno;
        this.desc = desc;
        this.horaInicio = horaInicio;
        this.horaFinal = horaFinal;
    }

    public TurnoDao() {
        this.idTurno="";
        this.desc="";
        this.horaInicio="";
        this.horaFinal="";
    }

    public String getIdTurno() {
        return idTurno;
    }

    public void setIdTurno(String idTurno) {
        this.idTurno = idTurno;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getHoraFinal() {
        return horaFinal;
    }

    public void setHoraFinal(String horaFinal) {
        this.horaFinal = horaFinal;
    }
    
    
    public String listaDeTurnos(){
        return TurnoDao.listarTurnos();
    }
    
    public String listaTurnosId(String id){
       return TurnoDao.listarTurnosID(id);
    }
    
    
   

 

    private static String listarTurnos() {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarTurnos();
    }

    private static String listarTurnosID(java.lang.String id) {
        org.tempuri.EndService service = new org.tempuri.EndService();
        org.tempuri.IEndService port = service.getBasicHttpBindingIEndService();
        return port.listarTurnosID(id);
    }
    
    
    
    
}
