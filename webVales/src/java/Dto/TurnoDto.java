/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dto;
import Dao.TurnoDao;

/**
 *
 * @author Yojhan Leiva
 */
public class TurnoDto {
    private String idTurno;
    private String desc;
    private String horaInicio;
    private String horaFinal;

    public TurnoDto(String idTurno, String desc, String horaInicio, String horaFinal) {
        this.idTurno = idTurno;
        this.desc = desc;
        this.horaInicio = horaInicio;
        this.horaFinal = horaFinal;
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
    
    public static String listarTurnos(){
        TurnoDao dao = new TurnoDao();
        return dao.listaTurnos();
    }
    public static String listaTurnoId(String id){
        TurnoDao dao = new TurnoDao();
        return dao.listaTurnosID(id);
            
    }
}
