<%--
  Created by IntelliJ IDEA.
  User: Isuru RAjitha
  Date: 12/23/2023
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="css/signin.css" type="text/css">
    <title>customersignin</title>

</head>
<body>
<!-- partial:index.partial.html -->
<div class="box-form">
    <div class="left">
        <div class="overlay">
            <h1>Welcome.</h1>
            <p>Log in to buy products today!</p>
            <span>
			<p>login with social media</p>
			<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
			<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
		</span>
        </div>
    </div>


    <div class="right">
        <h5>Login</h5>
        <p>Don't have an account? <a href="./signup.jsp">Creat Your Account</a> it takes less than a minute</p>
        <div class="inputs">
            <input type="text" placeholder="User name">
            <br>
            <input type="password" placeholder="password">
        </div>

        <br><br>

        <div class="remember-me--forget-password">
            <!-- Angular -->
            <label>
                <input type="checkbox" name="item" checked/>
                <span class="text-checkbox">Remember me</span>
            </label>
            <p>forget password?</p>
        </div>

        <br>
        <button>Login</button>
    </div>

</div>
<!-- partial -->

</body>
</html>



