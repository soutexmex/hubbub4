<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hubbub -- Login</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <img src="images/hubbub.png"/>
        <h1>Log in to Hubbub&trade;</h1>
        <h2 class="flash">${flash}</h2>
        <form method="POST" action="main">
            <input type="hidden" name="action" value="login"/>
            <table id="formtable">
                <tr><td>User Name:</td><td><input type="text" name="user"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="pass"/></td></tr>
                <tr><td colspan="2"><input type="submit" value="Log in to Hubbub&trade;!"/></td></tr>
            </table>
        </form>
        <p><a href="main?action=timeline">Take me to the Timeline</a> |
            <a href="main?action=register">I don't think I'm registered yet. Sign me up!</a>
        </p>
        <h3 class="footer">
            Copyright 2015 www.austincc.edu and www.bytecaffeine.com
        </h3>
    </body>
</html>
