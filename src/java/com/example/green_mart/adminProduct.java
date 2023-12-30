package com.example.green_mart;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "adminProduct", value = "/adminProduct")
@MultipartConfig(location = "D:/Dulaksha/Business/jmir/GreenMart/image", // Temporary directory to store files
        fileSizeThreshold = 480 * 480 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class adminProduct extends HttpServlet {
    private int Id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName = request.getParameter("productName");
        int productPrice = Integer.parseInt(request.getParameter("productPrice"));
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
        String productDescription = request.getParameter("productDescription");
        String productCategory = request.getParameter("productCategory");

        // Handle file upload
        Part filePart = request.getPart("productImage");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        InputStream fileContent = filePart.getInputStream();

        // Specify the directory where you want to save the uploaded file
        String uploadDirectory = "D:/Dulaksha/Business/jmir/GreenMart/image" + fileName;

        // Save the file to the specified directory
        Files.copy(fileContent, Paths.get(uploadDirectory), StandardCopyOption.REPLACE_EXISTING);

        try {
            // Establish connection to your MySQL database
            Connection conn = DatabaseManager.getConnection();

            // Prepare SQL statement to insert data into the table
            String sql = "INSERT INTO products (Name, Price, Description, ImagePath, Category, Quantity) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, productName);
            pstmt.setInt(2, productPrice);
            pstmt.setString(3, productDescription);
            pstmt.setString(4, uploadDirectory); // Save the directory path to the database
            pstmt.setString(5, productCategory);
            pstmt.setInt(6, productQuantity);

            // Execute the insert query
            int rowsInserted = pstmt.executeUpdate();

            // Get the generated keys (if any)
            if (rowsInserted > 0) {
                ResultSet rs = pstmt.getGeneratedKeys();
                if (rs.next()) {
                    Id = rs.getInt(1); // Assuming the ID column is auto-generated
                }
            }
            Product product = new Product(Id, productName, productDescription, productPrice, uploadDirectory, productCategory, productQuantity);
            Main.products.add(product);

            response.sendRedirect("index.jsp"); // Replace with your success page
        } catch (IOException | ClassNotFoundException | SQLException e) {
            // Handle exceptions appropriately
            PrintWriter out = response.getWriter();
            out.println("<html><head><title>Error Page</title></head><body>");
            out.println("<h1>Oops! An error occurred.</h1>");
            out.println("<p>Error Details: " + e.toString() + "</p>");
            out.println("</body></html>");
            System.out.println(e);
        }
    }
}