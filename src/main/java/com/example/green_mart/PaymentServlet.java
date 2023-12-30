package com.example.green_mart;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("Money")
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentUrl = "checkout.jsp"; //  paymentUrl here

        // Get data from parameters
        String amount = request.getParameter("amount");
        String currency = request.getParameter("currency");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String returnUrl = request.getParameter("returnUrl");
        String cancelUrl = request.getParameter("cancelUrl");

        // PayPal payment
        APIContext context = new APIContext("clientId", "clientSecret", "sandbox");
        Payment payment = new Payment();
        payment.setIntent("sale");

        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");
        payment.setPayer(payer);

        Transaction transaction = new Transaction();
        Amount paypalAmount = new Amount();
        paypalAmount.setCurrency(currency);
        paypalAmount.setTotal(amount);
        transaction.setAmount(paypalAmount);
        List<Transaction> transactions = new ArrayList<>();
        transactions.add(transaction);
        payment.setTransactions(transactions);

        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl(cancelUrl);
        redirectUrls.setReturnUrl(returnUrl);
        payment.setRedirectUrls(redirectUrls);

        try {
            Payment createdPayment = payment.create(context);
            System.out.println("Created payment with id = " + createdPayment.getId() + " and status = " + createdPayment.getState());
        } catch (PayPalRESTException e) {
            System.err.println(e.getDetails());
        }

        // Update DB
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "username", "password");
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO payments (amount, currency, email, name, description, return_url, cancel_url) VALUES (?,?,?,?,?,?,?)");
            stmt.setDouble(1, Double.parseDouble(amount));
            stmt.setString(2, currency);
            stmt.setString(3, email);
            stmt.setString(4, name);
            stmt.setString(5, description);
            stmt.setString(6, returnUrl);
            stmt.setString(7, cancelUrl);
            stmt.executeUpdate();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        // Redirect to the PayPal payment page
        response.sendRedirect(paymentUrl);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  payment details from the request parameters
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");

        // Check if the payment was successful
        if (paymentId!= null && payerId!= null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "username", "password");
                PreparedStatement stmt = conn.prepareStatement("UPDATE payments SET payment_id =?, payer_id =? WHERE id =?");
                stmt.setString(1, paymentId);
                stmt.setString(2, payerId);
                stmt.setInt(3, Integer.parseInt(request.getParameter("paymentId")));
                stmt.executeUpdate();
                conn.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }

            // Display the completion page
            request.getRequestDispatcher("donepay.jsp").forward(request, response);
        } else {
            // Display the decline page
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}