//package Fitness;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//
///**
// * Servlet implementation class RegistrationServlet
// */
//@WebServlet("/register")
//public class RegistrationServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//    
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	    String uname = request.getParameter("name");
//	    String uemail = request.getParameter("email");
//	    String upwd = request.getParameter("pass");
//	    String Reupwd = request.getParameter("re_pass");
//	    String umobile = request.getParameter("contact");
//	    RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp"); // Initialize dispatcher here
//	    Connection con = null;
//
//	    try {
//	        if (uname == null || uname.equals("")) {
//	            request.setAttribute("status", "invalidName");
//	        } else if (uemail == null || uemail.equals("")) { 
//	            request.setAttribute("status", "invalidEmail");
//	        } else if (upwd == null || upwd.equals("")) {
//	            request.setAttribute("status", "invalidUpwd");
//	        } else if (!upwd.equals(Reupwd)) {
//	            request.setAttribute("status", "invalidConfirm_pass");
//	        } else if (umobile == null || umobile.equals("")) {
//	            request.setAttribute("status", "invalidMobile");
//	        } else if (umobile.length() > 10) {
//	            request.setAttribute("status", "invalidMobileLength");
//	        } else {
//	            Class.forName("com.mysql.cj.jdbc.Driver");
//	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FitGenius?useSSL=false", "root", "password");
//	            
//	            // Check if the email already exists in the database
//	            PreparedStatement checkStmt = con.prepareStatement("SELECT COUNT(*) FROM users WHERE uemail = ?");
//	            checkStmt.setString(1, uemail);
//	            ResultSet rs = checkStmt.executeQuery();
//	            rs.next();
//	            int emailCount = rs.getInt(1);
//
//	            if (emailCount > 0) {
//	                // Email already exists, set status and forward
//	                request.setAttribute("status", "emailExists");
//	            } else {
//	        	    PreparedStatement pst = con.prepareStatement("INSERT INTO users(uname, upwd, uemail, umobile) VALUES(?, ?, ?, ?) ");
//	        	    pst.setString(1, uname);
//	        	    pst.setString(2, upwd);
//	        	    pst.setString(3, uemail);
//	        	    pst.setString(4, umobile);
//
//	        	    int rowCount = pst.executeUpdate();
//
//	        	    if (rowCount > 0) {
//	        	        // request.setAttribute("status", "success");
//	        	        // Redirect to login.jsp upon successful registration
//	        	        response.sendRedirect("login.jsp");
//	        	        return; // Stop further processing to avoid forwarding to registration.jsp
//	        	    } else {
//	        	        request.setAttribute("status", "failed");
//	        	    }
//	        	}
//	        }
//	    } catch (Exception e) {
//	        e.printStackTrace();
//	        request.setAttribute("status", "failed");
//	    } finally {
//	        try {
//	            if (con != null) {
//	                con.close();
//	            }
//	        } catch (SQLException e) {
//	            e.printStackTrace();
//	        }
//	       // dispatcher.forward(request, response); // Move the forward outside the try block
//	    }
//	}
//
//}


package Fitness;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String Reupwd = request.getParameter("re_pass");
        String umobile = request.getParameter("contact");
        Connection con = null;

        try {
            if (uname == null || uname.equals("")) {
                request.setAttribute("status", "invalidName");
            } else if (uemail == null || uemail.equals("")) {
                request.setAttribute("status", "invalidEmail");
            } else if (upwd == null || upwd.equals("")) {
                request.setAttribute("status", "invalidUpwd");
            } else if (!upwd.equals(Reupwd)) {
                request.setAttribute("status", "invalidConfirm_pass");
            } else if (umobile == null || umobile.equals("")) {
                request.setAttribute("status", "invalidMobile");
            } else if (umobile.length() != 10) {
                request.setAttribute("status", "invalidMobileLength");
            } else {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FitGenius?useSSL=false", "root", "password");

                PreparedStatement checkStmt = con.prepareStatement("SELECT COUNT(*) FROM users WHERE uemail = ?");
                checkStmt.setString(1, uemail);
                ResultSet rs = checkStmt.executeQuery();
                rs.next();
                int emailCount = rs.getInt(1);

                if (emailCount > 0) {
                    request.setAttribute("status", "emailExists");
                } else {
                    PreparedStatement pst = con.prepareStatement("INSERT INTO users(uname, upwd, uemail, umobile) VALUES(?, ?, ?, ?) ");
                    pst.setString(1, uname);
                    pst.setString(2, upwd);
                    pst.setString(3, uemail);
                    pst.setString(4, umobile);

                    int rowCount = pst.executeUpdate();

                    if (rowCount > 0) {
                        response.sendRedirect("login.jsp");
                        return;
                    } else {
                        request.setAttribute("status", "failed");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "failed");
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        // Forward the request to the registration JSP only if there are validation errors
        request.getRequestDispatcher("registration.jsp").forward(request, response);
    }
}
