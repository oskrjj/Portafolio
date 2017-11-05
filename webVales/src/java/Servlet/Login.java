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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Oskll
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
            throws ServletException, IOException {
        RequestDispatcher dispatcher;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String rut = request.getParameter("txtRutUsuario".trim());
            String clave = request.getParameter("txtPassword".trim());
            HttpSession sesionRut = request.getSession();
            HttpSession sesionNombre = request.getSession();
            
            UsuarioDto dtouser = new UsuarioDto();
            if(rut == " " || clave == " "){
                request.setAttribute("mensaje", "error Rut o Clave Invalidos");
            }
            if (dtouser.ValidarLog(rut,Login.Encriptar(clave))) {
                
                String tipoUser = dtouser.obtenerTipoId(rut);
                if (tipoUser.equals("1")) {
                    
                    sesionRut.setAttribute("sesionRut", rut);
                 //   response.sendRedirect("/paginas/adminHome.jsp");
                    request.getRequestDispatcher("/paginas/adminHome.jsp").forward(request, response);
                }else{
                    sesionRut.setAttribute("sesionRut", rut);
                    response.sendRedirect("/WebVales/paginas/UserHome.jsp");
                    //request.getRequestDispatcher("/paginas/UserHome.jsp").forward(request, response);
                }
            }else{
                request.setAttribute("mensaje", "Error usuario");
                response.sendRedirect("/WebVales/paginas/login.jsp");
                request.getRequestDispatcher("/paginas/login.jsp").forward(request, response);
            }
            
        }catch (Exception e) { 
            e.printStackTrace();
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
