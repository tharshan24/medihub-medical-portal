/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medihub.admin;

import com.medihub.db.DbConfig;
import com.medihub.pharmacy.Pharmacist;
import com.medihub.pharmacy.Pharmacy;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "AdminViewPharmacy", urlPatterns = {"/adminviewpharmacy"})
public class AdminViewPharmacy extends HttpServlet {


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
            HttpSession session = request.getSession();
            int adminId =Integer.parseInt(session.getAttribute("userid").toString());
            PrintWriter out = response.getWriter();   
            
                        String query = "select p.*, c.name_en as city, d.name_en as district, p.pharmacy_display_name as display_name from pharmacies p "
                                + "join cities c on c.id=p.city "+ "join districts d on d.id=c.district_id "
                                + "join users u on u.id=p.pharmacist_id ";

            try
            {
            
                Pharmacy p = new Pharmacy();
//                out.print(p.getAllPharmacies().get(1).displayName);
                
                request.setAttribute("pharmacies", p.getAllPharmacies());
                request.getRequestDispatcher("adminviewpharmacy.jsp").forward(request, response);
                }catch(Exception e){
                    out.println(e.toString());
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
