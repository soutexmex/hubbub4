<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hubbub 2 - Post Something</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <img src="images/hubbub.png"/>
        <h1>Hey, ${user.userName}, post some hubbub, bub!</h1>
        <h2 class="flash">${flash}</h2>
        <form method="POST" action="main">
            <input type="hidden" name="action" value="post"/>
            <textarea name="content" cols="80" rows="8">
                <c:out value="${content}"/>
            </textarea>
            <input type="submit" value="The Hubbub, bub."/>
        </form>
        <p><a href="main?action=timeline">Back to the Timeline</a>.</p>
        <h3 class="footer">
            Copyright 2015 www.austincc.edu and www.bytecaffeine.com
        </h3>
    </body>
</html>
