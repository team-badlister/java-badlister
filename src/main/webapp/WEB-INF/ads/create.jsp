<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <input id="location" name="location" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>

            <div class="form-group">
                <label>Category</label><br>
                <input type="checkbox" name="smallPad" value="Small Pad">Small Pad<br>
                <input type="checkbox" name="largePad" value="Large Pad">Large Pad<br>
                <input type="checkbox" name="unusualPad" value="Unusual">Unusual<br>
                <input type="checkbox" name="greenPad" value="Green(Eco)">Green(Eco)<br>
                <input type="checkbox" name="hauntedPad" value="Haunted">Haunted<br>
                <input type="checkbox" name="wheelsPad" value="On-Wheels">On-Wheels<br>
                <input type="checkbox" name="waterPad" value="On-Water" checked>On-Water<br><br>
            </div>

            <div>
                <label for="padImage">Pad Image</label>
                <form id="padImage" action="/ads/create" method="post" enctype="multipart/form-data">
                    <input type="file" name="padImage">
                </form>
            </div>

            <input type="submit" class="btn btn-block btn-primary" value="Upload">
        </form>
    </div>
</body>
</html>
