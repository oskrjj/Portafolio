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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Malandragem
 */
public class ServAdminUsuarios extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher dispatcher;
        
        try (PrintWriter out = response.getWriter()) {
            String pass1 = request.getParameter("txtPassword".trim());
            String pass2 = request.getParameter("txtPassword2".trim());
            String nombre = request.getParameter("txtNombre".trim());
                String rut = request.getParameter("txtRut".trim());
                String correo = request.getParameter("txtCorreo".trim());
                String tipouser = request.getParameter("ddl_tipo");
                String turno = request.getParameter("ddl_turno");
                String cargo = request.getParameter("ddl_cargo");
                String comensal =  request.getParameter("ddl_comensal");  
            if (pass1.equals( pass2) ){
                System.out.println("pasa");
                
                UsuarioDto dtouser = new UsuarioDto();
                EmpleadoDto dtoemp = new EmpleadoDto();
                if (dtouser.insertarUser(rut, pass2, tipouser, comensal)) {
                    if (dtoemp.agregarEmp(rut, nombre, correo, cargo, turno)) {
                        request.setAttribute("mensajeUser", "Usuario agregado Exitosamente");
                        System.out.println("agrega Todo");
                    }
                }
            }else{
                request.setAttribute("mensajeUser", "Contraseñas Incorrectas");
            }
            
            request.getRequestDispatcher("/paginas/adminUsuarios.jsp").forward(request, response);
            
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
        processRequest(request, response);
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
        processRequest(request, response);
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
