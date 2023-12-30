<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adminupdate</title>
    <link rel="stylesheet" type="text/css" href="CSS/admin-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.0.7/css/boxicons.min.css">
    <link rel="stylesheet"href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet"href="css/admindash.css" type="text/css">
</head>
<body>
<header>

    <h1>Update Products</h1>

    <div class="search-bar">
        <i class='bx bx-search search-icon'></i>
        <input type="text" class="search-input" placeholder="Search for products...">
    </div>
</header>
<div class="admin-container">
    <div class="admin-section">
        <h2>Update Products</h2>

        <form>
            <label for="updateCategory">Select Category:</label>
            <select id="updateCategory" name="updateCategory" style="width: 100%;">
                <option value="electronics">Fresh Meat</option>
                <option value="clothing">Fresh Fish</option>
                <option value="clothing">Dairy</option>
                <option value="clothing">Vegetables</option>
                <option value="clothing">Fruits</option>
            </select>

            <label for="updateProduct">Select Product to Update:</label>
            <select id="updateProduct" name="updateProduct" style="width: 100%;">
                <option value="product1">Product 1</option>
                <option value="product2">Product 2</option>
                <!-- Populate with products based on selected category on the server-side -->
            </select>

            <label for="updateProductName">New Product Name:</label>
            <input type="text" id="updateProductName" name="updateProductName" required>

            <label for="updateProductCategory">New Product Category:</label>
            <select id="updateProductCategory" name="updateProductCategory">
                <option value="electronics">Fresh Meat</option>
                <option value="clothing">Fresh Fish</option>
                <option value="clothing">Dairy</option>
                <option value="clothing">Vegetables</option>
                <option value="clothing">Fruits</option>
            </select>

            <label for="updateProductPrice">New Product Price:</label>
            <input type="number" id="updateProductPrice" name="updateProductPrice" required>

            <label for="updateProductDescription">New Product Description:</label>
            <textarea id="updateProductDescription" name="updateProductDescription" rows="4" required></textarea>

            <label for="updateProductImage">New Product Image:</label>
            <input type="file" id="updateProductImage" name="updateProductImage" accept="image/*" required>

            <button type="submit">Update Product</button>
        </form>
    </div>
    <center> <a href="admindash.jsp" style="color: green;"><p>Go to Homepage</p></a></center>
</div>