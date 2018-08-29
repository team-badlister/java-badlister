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
        <c:if test="${ad.userId == sessionScope.user.id}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <h3>${ad.location}</h3>
            <p>${ad.description}</p>
            <form action="delete" method="DELETE">
                <input type="submit" name="Delete" value="deleteAd" />
                <input type="hidden" name="ad" value="deleteAd" />
            </form>
        </div>
    </c:if>
    </c:forEach>

</body>
</html>
