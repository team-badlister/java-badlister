<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <c:forEach var="ad" items="${ads}">
        <c:if test="${ad.userId == sessionScope.user.id && ad != null}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <h3>${ad.location}</h3>
            <p>${ad.description}</p>
            <form action="/profile" method="POST">
                <input type="hidden" name="ad" value="${ad.id}" />
                <input type="submit" name="delete" value="Delete" />
            </form>
        </div>
    </c:if>
    </c:forEach>
</body>
</html>
