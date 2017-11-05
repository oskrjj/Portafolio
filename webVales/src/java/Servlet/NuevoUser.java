/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dto.EmpleadoDto;
import Dto.UsuarioDto;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Oskll
 */
@WebServlet(name = "NuevoUser", urlPatterns = {"/NuevoUser"})
public class NuevoUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param pass
     * @param request servlet request
     * @param response servlet response
     * @return 
     * @throws java.security.NoSuchAlgorithmException
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static String Encriptar(String pass) throws NoSuchAlgorithmException{
        byte [] input = pass.getBytes();
        MessageDigest SHA = MessageDigest.getInstance("SHA-512");
        SHA.update(input);
        byte [] digest = SHA.digest();
        StringBuffer hexdigest = new StringBuffer();
        for (int i = 0; i < digest.length; i++) {
            hexdigest.append(Integer.toString((digest[i]&0xff)+0*100).substring(1));
        }
        return hexdigest.toString();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String pass1 = request.getParameter("txtPassword".trim());
            String pass2 = request.getParameter("txtPassword2".trim());
            String nombre = request.getParameter("txtNombre".trim());
            String rut = request.getParameter("txtRut".trim());
            String correo = request.getParameter("txtCorreo".trim());
            String tipouser = request.getParameter("ddl_tipo");
            String turno = request.getParameter("ddl_turno");
            String cargo = request.getParameter("ddl_cargo");
            String comensal = request.getParameter("ddl_comensal");
            UsuarioDto dtouser = new UsuarioDto();
            EmpleadoDto dtoemp = new EmpleadoDto();
            if (pass1.equals(pass2)) {
                if (dtouser.insertarUser(rut, NuevoUser.Encriptar(pass2), tipouser, comensal)) {
                    if (dtoemp.agregarEmp(rut, nombre, correo, cargo, turno)) {
                        request.setAttribute("mensaje", "Usuario Agregado Correctamente");
                        

                    }          
                }
            }else{
                request.setAttribute("mensaje", "Contraseñas No Coinciden");
            }
             request.getRequestDispatcher("/paginas/adminHome.jsp").forward(request, response);
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(NuevoUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(NuevoUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
