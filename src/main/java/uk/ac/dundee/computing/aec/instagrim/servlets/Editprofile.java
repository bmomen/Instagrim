/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.servlets;

import com.datastax.driver.core.Cluster;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.models.User;
import uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn;

/**
 *
 * @author Babak - Pc
 */
@WebServlet(name = "Editprofile", urlPatterns = {"/Editprofile"})
public class Editprofile extends HttpServlet {

    Cluster cluster = null;

    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String profiletitle = request.getParameter("profiletitle");
        String username = request.getParameter("username");
        String profiledata = request.getParameter("profiledata");
        HttpSession session = request.getSession();

        User us = new User();

        us.setCluster(cluster);

        us.SelectProfileTitle(username);
        us.UpdateTitle(profiletitle, username);
        us.UpdateData(profiledata, username);

        String name = request.getParameter("username");
        session.setAttribute("username", name);
        String profile = request.getParameter("profiletitle");
        session.setAttribute("profiletitle", profile);
        String data = request.getParameter("profiledata");
        session.setAttribute("profiledata", data);

        response.sendRedirect("/Instagrim/Images/" + username);

    }

}
