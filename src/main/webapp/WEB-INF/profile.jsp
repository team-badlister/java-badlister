<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
</div>
<c:forEach var="ad" items="${ads}">
    <c:if test="${ad.userId == sessionScope.user.id && ad != null}">
        <div class="col-md-6">
            <form action="/profile" method="post">
                <input class="hidden" name="id" value="${ad.id}"/>
                <h2>${ad.title}</h2>
                <input type="text" name="titleEdit">
                <h3>${ad.location}</h3>
                <input type="text" name="locationEdit">
                <p>${ad.description}</p>
                <input type="text" name="descriptionEdit">
                <input type="submit" name="edit" value="Edit"/>
            </form>
        </div>
    </c:if>
</c:forEach>

</body>
</html>
