/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medihub.pharmacy;

import com.medihub.db.DbConfig;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tharshan
 */
@WebServlet(name = "BrowsePharmacyReviewsAdmin", urlPatterns = {"/BrowsePharmacyReviewsAdmin"})
public class BrowsePharmacyReviewsAdmin extends HttpServlet {

   

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
            int userId =Integer.parseInt(session.getAttribute("userid").toString());
            int usertype = Integer.parseInt(session.getAttribute("usertype").toString());
            
            if(usertype==0){
             PrintWriter out = response.getWriter();
                    try
                    {
                        int getPharmacy=0;
                        String getLimit="0";
                        
                        Pharmacy h = new Pharmacy();
                        PharmacyReview pr = new PharmacyReview();
                        
                        
                                    if(request.getParameter("limit")!=null && !request.getParameter("limit").equalsIgnoreCase("")){
                                        getLimit=request.getParameter("limit");
                                    }
                        
                        if(request.getParameter("search")!=null){
                            if(request.getParameter("search").equalsIgnoreCase("1")){
                                if(request.getParameter("pharmacy")!=null && !request.getParameter("pharmacy").equalsIgnoreCase("")){
    //                                out.print(request.getParameter("search"));
                                    getPharmacy=Integer.parseInt(request.getParameter("pharmacy"));
                                    
                                    if(session.getAttribute("alert")!=null) {
                //                        out.print(session.getAttribute("message"));
                                        request.setAttribute("alert", session.getAttribute("alert"));
                                        request.setAttribute("message", session.getAttribute("message"));
                                        session.removeAttribute("alert");
                                        session.removeAttribute("message");
                                    }
                                    
                                    request.setAttribute("pharmacy", h.getPharmacy(getPharmacy));
//                                    out.print(dr.getPharmacyReviews(getPharmacy, getLimit));
                                    
                                    request.setAttribute("star", pr.getPharmacyRating(getPharmacy));
                                }
                            }
                        }
//                            out.print("jhfvgj");
                        request.setAttribute("reviews", pr.getPharmacyReportedReviews(getPharmacy, getLimit));
                        request.setAttribute("allPharmacies", h.getAllActivePharmacies());
                        request.getRequestDispatcher("pharmacyReviewsAdmin.jsp").forward(request, response);
                    }
                    catch(Exception e)
                    {
                        out.println(e.toString());
                        out.print("jhfvgj");
                    }
            }else{
                request.getRequestDispatcher("403.jsp").forward(request, response);
            }
    }

    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
