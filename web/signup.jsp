<%--
  Created by IntelliJ IDEA.
  User: Isuru RAjitha
  Date: 12/23/2023
  Time: 1:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="css/signup.css" type="text/css">
    <title>customersignin</title>

</head>
<body>
<!-- partial:index.partial.HTML -->
<div class="box-form">
    <div class="left">
        <div class="overlay">
            <h1>Register.</h1>
            <p>Register to buy products today!</p>
            <span>
			<p>login with social media</p>
			<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
			<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
		</span>
        </div>
    </div>


    <div class="right">
        <h5>Signup</h5>
        <p>Already have an account? <a href="./signin.jsp">Sign in now</a> Continue</p>
        <form action="SignUp" method="post">
            <input type="text" placeholder="Full Name" name="fullName">
            <br>
            <input type="text" placeholder="Phonenumber" name="phoneNumber">
            <br>
            <input type="text" placeholder="Email" name="email">
            <br>
            <input type="text" placeholder="User name" name="userName">
            <br>
            <input type="password" placeholder="Password" name="password">
            <br>
            <input type="password" placeholder="Re-enter password">
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>

</div>
<!-- partial -->

</body>
</html>