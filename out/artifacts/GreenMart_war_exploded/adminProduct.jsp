<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adminadd</title>
    <link rel="stylesheet" type="text/css" href="CSS/admin-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.0.7/css/boxicons.min.css">
    <link rel="stylesheet"href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet"href="css/admindash.css" type="text/css">
</head>
<body>
<header>

    <h1>Add New Products</h1>

    <div class="search-bar">
        <i class='bx bx-search search-icon'></i>
        <input type="text" class="search-input" placeholder="Search for products...">
    </div>
</header>
<div class="admin-container">


    <div class="admin-section">
        <h2>Add New Products</h2>
        <form action="adminProduct" method="post">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required>

            <label for="productCategory">Product Category:</label>
            <select id="productCategory" name="productCategory">
                <option value="Fresh Meat">Fresh Meat</option>
                <option value="Fresh Fish">Fresh Fish</option>
                <option value="Dairy">Dairy</option>
                <option value="Vegetables">Vegetables</option>
                <option value="Fruits">Fruits</option>
            </select>

            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="productPrice">

            <label for="productDescription">Product Description:</label>
            <textarea id="productDescription" name="productDescription" rows="4" ></textarea>

            <label for="productImage">Product Image:</label>
            <input type="file" id="productImage" name="productImage" accept="image/*">

            <label for="productImage">Product Quantity:</label>
            <input type="number" id="productQuantity" name="productQuantity">

            <button type="submit">Add Product</button>
        </form>
    </div>
    <center> <a href="admindash.jsp" style="color: green;"><p>Go to Homepage</p></a></center>
</div>