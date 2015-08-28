<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hubbub -- Register</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>        
    </head>
    <body>
        <img src="images/hubbub.png"/>
        <h1>Register for Hubbub&trade;</h1>
        <h2 class="flash">${flash}</h2>
        <form method="POST" action="main">
            <input type="hidden" name="action" value="register"/>
            <table id="formtable">
                <tr><td>Pick a User Name:</td><td><input value="${bean.userName}" type="text" name="user" placeholder="4 to 12 characters."/></td></tr>
                <tr><td>Your Memorable Password:</td><td><input type="password" name="pass1" placeholder="6 to 15 characters."></td></tr>
                <tr><td>Re-enter that Password:</td><td><input type="password" name="pass2" placeholder="same as the other"/></td></tr>
                <tr><td>Your First Name:</td><td><input value="${bean.firstName}" type="text" name="fname"/></td></tr>
                <tr><td>Your Last Name:</td><td><input value="${bean.lastName}" type="text" name="lname"/></td></tr>
                <tr><td>Your Email Address:</td><td><input value="${bean.email}" type="email" name="email"/></td></tr>
                <tr><td>Your Zip Code:</td><td><input value="${bean.zipCode}" type="text" name="zip" placeholder="5 or 5-4 format"/></td></tr>
                <tr><td colspan="2"><input type="submit" value="Sign me up!"/></td></tr>
            </table>
        </form>
        <p><a href="main?action=timeline">Take me to the Timeline</a> |
            <a href="main?action=login">I think I'm registered already. Lemme Log In!</a>
        </p>
        <h3 class="footer">
            Copyright 2015 www.austincc.edu and www.bytecaffeine.com
        </h3>
    </body>
</html>
