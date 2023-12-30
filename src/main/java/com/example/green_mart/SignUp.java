package com.example.green_mart;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SignUp extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        // Retrieve form data
        String fullName = request.getParameter("fullName");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        // JDBC variables
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Establish connection to your MS SQL Server
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost;DatabaseName=GreenMart;integratedSecurity=true;";
            String dbUsername = "GreenMart";
            String dbPassword = "Passw0rd";
            conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // Prepare SQL statement to insert user data into a table (change table and column names accordingly)
            String sql = "INSERT INTO users (fullName, phoneNumber, email, userName, password) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, fullName);
            pstmt.setString(2, phoneNumber);
            pstmt.setString(3, email);
            pstmt.setString(4, userName);
            pstmt.setString(5, password);

            // Execute the query
            pstmt.executeUpdate();

            // Redirect or send response after successful signup
            response.sendRedirect("index.jsp"); // Replace with your success page
        } catch (Exception e) {
            // Handle exceptions appropriately (logging, error messages, etc.)
            e.printStackTrace();
            // Redirect or send response on failure
            response.sendRedirect("signup_error.jsp"); // Replace with your error page
        } finally {
            // Close resources
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}

