<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hubbub 2 -- Timeline</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <img src="images/hubbub.png"/><br/>
        <h1>Welcome to Hubbub&trade;<c:if test="${user ne null}">, ${user.userName}</c:if>!</h1>
        <h2 class="flash">${flash}</h2>
        <h2>Timeline</h2>
        <c:choose>
            <c:when test="${user ne null}">
                <p><a href="main?action=post">Post Something</a> | <a href="main?action=logout">Log Out</a></p>
            </c:when>
            <c:otherwise>
                <p><a href="main?action=login">Log in to Hubbub&trade;.</a> |
                    <a href="main?action=register">I'm sold. Sign me up!</a>
                </p>
            </c:otherwise>
        </c:choose>
        <c:forEach var="post" items="${posts}">
            <div class="postdiv">
                <span class="authorspan">${post.author}</span>
                <span class="datespan">(user since
                    <fmt:formatDate type="DATE" value="${post.author.joinDate}"/>)
                </span>
                <div class="contentdiv">
                    ${post.content}
                </div>
                <span class="datespan">Posted ${post.postDate}</span>
            </div>
        </c:forEach>
        <h3 class="footer">
            Copyright 2015 www.austincc.edu and www.bytecaffeine.com
        </h3>
    </body>
</html>
