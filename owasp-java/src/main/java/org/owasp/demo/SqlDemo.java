package org.owasp.demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author Sundaresh
 */
@WebServlet(name = "SqlDemo", urlPatterns = {"/SqlDemo"})
public class SqlDemo extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
	 * @throws SQLException 
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {

            String user = request.getParameter("user");
            String password = request.getParameter("password");

            System.out.println("Connection local MariaDB");
            Connection conn = null;
            Context ctx = null;
            
            try {
            	ctx = new InitialContext();
            	DataSource ds = (DataSource)ctx.lookup("java:/comp/env/jdbc/MyLocalDB");
            	conn = ds.getConnection();
                System.out.println("Connected to the database");

                Statement st = conn.createStatement();
                String query = "select * from customer where name='" + user + "'" + " and password='" + password + "'";
                System.out.printf(query);
                ResultSet res = st.executeQuery(query);
                
//                PreparedStatement  preparedStatement=conn.prepareStatement("select * from customer where name=? and password=?");
//                preparedStatement.setString(1, user);
//                preparedStatement.setString(2, password);
//                ResultSet res = preparedStatement.executeQuery();
//                System.out.println ("Statement is " +  preparedStatement);

                
                if (!res.next()) {
                	response.sendError(401, "Invalid Username or Password!!!");
                } else {
//                  Creating HTTPSession object
                    HttpSession session=request.getSession();  
                    session.setAttribute("user",user);
                    session.setAttribute("password",password);
                    response.sendRedirect("home.jsp");
                }
                
            } catch (Exception e) {
                e.printStackTrace();
            }
            finally {            
            	conn.close();
            	System.out.println("Disconnected from database");
            }
        } catch (Exception e) {
        	e.printStackTrace();
        }
}

/** 
 * Handles the HTTP <code>GET</code> method.
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
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
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
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "OWASP DEMO";
    }
}
