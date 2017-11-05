/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dto.ValeDto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Oskll
 */
@WebServlet(name = "AgregarTicket", urlPatterns = {"/AgregarTicket"})
public class AgregarTicket extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String rut = request.getParameter("txtRut".trim());
            String nombre = request.getParameter("txtNombre".trim());
            int valor = Integer.parseInt(request.getParameter("txtValor".trim()));
            String servicio = request.getParameter("ddl_servicioB");
            String servicioE = request.getParameter("ddl_servicios");
            String idComensal = request.getParameter("txtComensal".trim());
            ValeDto vale = new ValeDto();
            String respuesta = "";
            if (servicioE.equals("e") || servicioE == null) {
                System.out.println(servicio + "no pasa");
                respuesta = vale.AgregarVale(rut, nombre, servicio, valor, idComensal);
                
            }
            if (request.getParameter("ddl_servicioB").equals("b")) {
                System.out.println(servicioE + "pasa");
                respuesta = vale.AgregarVale(rut, nombre, servicioE, valor, idComensal);
            }           
            
            //request.setAttribute("Ticket", respuesta);
            response.sendRedirect("/WebVales/paginas/UserHome.jsp?Ticket="+respuesta);
            //request.getRequestDispatcher("/paginas/UserHome.jsp").forward(request, response);
            
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
