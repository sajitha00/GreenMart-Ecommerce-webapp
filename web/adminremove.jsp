<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adminremove</title>
    <link rel="stylesheet" type="text/css" href="CSS/admin-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.0.7/css/boxicons.min.css">
    <link rel="stylesheet"href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet"href="css/admindash.css" type="text/css">
</head>
<body>
<header>

    <h1>Remove Products</h1>

    <div class="search-bar">
        <i class='bx bx-search search-icon'></i>
        <input type="text" class="search-input" placeholder="Search for products...">
    </div>
</header>
<div class="admin-container">
    <div class="admin-section">
        <h2>Remove Products</h2>

        <form action="your_servlet_url" method="post">
            <label for="removeCategory">Select Category:</label>
            <select id="removeCategory" name="removeCategory" style="width: 100%;">
                <option value="electronics">Fresh Meat</option>
                <option value="clothing">Fresh Fish</option>
                <option value="clothing">Dairy</option>
                <option value="clothing">Vegetables</option>
                <option value="clothing">Fruits</option>
            </select>

            <label for="removeProduct">Select Product to Remove:</label>
            <select id="removeProduct" name="removeProduct" style="width: 100%;">
                <option value="electronics">product 1</option>
                <option value="clothing">Product 2</option>
                <!-- Populate with products based on selected category on the server-side -->
            </select>

            <button type="submit">Remove Product</button>
        </form>
    </div>
    <center> <a href="admindash.jsp" style="color: green;"><p>Go to Homepage</p></a></center>

</div>