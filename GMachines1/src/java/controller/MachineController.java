/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.Machine;
import beans.Marque;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.MachineService;
import service.MarqueSerice;

/**
 *
 * @author Lachgar
 */
@WebServlet(name = "MachineController", urlPatterns = {"/MachineController"})
public class MachineController extends HttpServlet {

    private MachineService ms = new MachineService();
    private MarqueSerice ma = new MarqueSerice();

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
                response.sendRedirect("machines.jsp");
            } else if (request.getParameter("op").equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Machine m = ms.findById(id);
                response.sendRedirect("machines.jsp?id=" + m.getId() + "&reference=" + m.getReference() + "&dateAchat=" + m.getDateAchat() + "&prix=" + m.getPrix()+"&marque=" +m.getMarque().getId());
            }
        } else if (!request.getParameter("id").equals("")) {
            String reference = request.getParameter("reference");
            double prix = Double.parseDouble(request.getParameter("prix"));
            Date dateAchat = new Date(request.getParameter("dateAchat").replace("-", "/"));
            int id = Integer.parseInt(request.getParameter("id"));
            Marque mar = ma.findById(Integer.parseInt(request.getParameter("marque")));
            Machine m = ms.findById(id);
            m.setReference(reference);
            m.setPrix(prix);
            m.setDateAchat(dateAchat);
            m.setMarque(mar);
            ms.update(m);
            response.sendRedirect("machines.jsp");
        } else {
            String reference = request.getParameter("reference");
            double prix = Double.parseDouble(request.getParameter("prix"));
            Date dateAchat = new Date(request.getParameter("dateAchat").replace("-", "/"));
            Marque mar = ma.findById(Integer.parseInt(request.getParameter("marque")));
            ms.create(new Machine(reference, dateAchat, prix,mar));
            response.sendRedirect("machines.jsp");

        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
