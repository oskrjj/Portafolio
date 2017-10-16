package pruebas;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Oskll
 */
import Dto.EmpleadoDto;
import Dao.EmpleadoDao;
import Dao.UsuarioDao;
import Dto.UsuarioDto;
import java.security.NoSuchAlgorithmException;

public class prueba {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws NoSuchAlgorithmException {
        EmpleadoDao dao = new EmpleadoDao();
        String nombre;
        String rut;
        rut = "19.507.547-6";
        nombre = dao.ObtenerNombre(rut);
        System.out.println(nombre);
        
        UsuarioDto dto = new UsuarioDto();
    }
    
}
