/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.Marque;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.MarqueSerice;

/**
 *
 * @author safoi
 */
@WebServlet(name = "MarqueController", urlPatterns = {"/MarqueController"})
public class MarqueController extends HttpServlet {
    MarqueSerice ms = new MarqueSerice();
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
        if (request.getParameter("op") != null) {
             if (request.getParameter("op").equals("delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                ms.delete(ms.findById(id));
                response.sendRedirect("marques.jsp");
            } else if (request.getParameter("op").equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Marque m = ms.findById(id);
                response.sendRedirect("marques.jsp?id=" + m.getId() + "&code=" + m.getCode() + "&libelle=" + m.getLibelle());
            }
        } else if (!request.getParameter("id").equals("")) {
            String code = request.getParameter("code");
            String libelle = request.getParameter("libelle");
            int id = Integer.parseInt(request.getParameter("id"));
            Marque m = ms.findById(id);
            m.setCode(code);
            m.setLibelle(libelle);
            ms.update(m);
            response.sendRedirect("marques.jsp");
        } else {
            String code = request.getParameter("code");
            String libelle = request.getParameter("libelle");
            ms.create(new Marque(code, libelle));
            response.sendRedirect("marques.jsp");
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
