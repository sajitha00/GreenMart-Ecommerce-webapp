<%--
  Created by IntelliJ IDEA.
  User: Isuru RAjitha
  Date: 12/23/2023
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admindash</title>
    <link rel="stylesheet" type="text/css" href="CSS/admin-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.0.7/css/boxicons.min.css">
    <link rel="stylesheet"href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet"href="css/admindash.css" type="text/css">
</head>
<body>
<header>

    <h1>Admin Dashboard</h1>

    <div class="search-bar">
        <i class='bx bx-search search-icon'></i>
        <input type="text" class="search-input" placeholder="Search for products...">
    </div>
</header>
<div class="admin-container">

    <div class="admin-section">
        <h2>View Available Products</h2>
        <br>
        <div class="product-container">
            <div class="product">
                <img src="https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/eggo-waffles.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 1</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/eggo-waffles.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 2</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/eggo-waffles.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 3</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>


            <div class="product">
                <img src="https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/eggo-waffles.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 4</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/eggo-waffles.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 5</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/eggo-waffles.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 6</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>


            <div class="product">
                <img src="https://www.eatthis.com/wp-content/uploads/sites/4/2019/10/i-cant-believe-its-not-butter.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 7</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="https://essstr.blob.core.windows.net/essimg/350x/Small/Pic118034.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 8</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>

            <div class="product">
                <img src="https://essstr.blob.core.windows.net/essimg/350x/Small/Pic118060.jpg" alt="Product 1">
                <div class="product-info">
                    <h3>Product 9</h3>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="p-details">
                        <p>Price: $19.99</p>
                        <p>Quantity: 10</p>
                        <p>Category: Frozen</p>
                    </div>
                </div>
            </div>

            <!-- Repeat the above structure for other products -->

        </div>

        <div class="navigation-arrows">
            <button onclick="scrollProducts(-1)">❮</button>
            <button onclick="scrollProducts(1)">❯</button>
        </div>
    </div>


    <div class="admin-section">
        <h2>User Feedbacks</h2>

        <div class="user-container">
            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>

            <div class="user">
                <div class="user-avatar">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="user-details">
                    <h3>John Doe</h3>
                    <p>Email:</p>
                    <p>Feedback:</p>
                </div>
            </div>



        </div>
        <button id="toggleUsers">View All</button>
    </div>


    <div class="admin-section">
        <h2>Admin Options</h2>

        <div class="category-list">
            <ul>
                <a href="adminadd.jsp" style="color: green;"><li>Add new products</li></a>
                <a href="adminupdate.jsp" style="color: green;"><li>Update products</li></a>
                <a href="adminremove.jsp" style="color: green;"><li>Remove products</li></a>

            </ul>
        </div>
    </div>

    <script src="JS/admin.js"></script>
</div>
</body>
</html>

