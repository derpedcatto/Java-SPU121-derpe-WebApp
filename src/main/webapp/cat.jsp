<%@ page contentType="text/html;charset=UTF-8" %>

<%
    String context = request.getServletContext().getContextPath();
%>

<!--
https://materializecss.com/about.html
https://fonts.google.com/icons
-->

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
<jsp:include page="partials/_nav-header.jsp" />

<main>
    <div class="slider">
        <ul class="slides">
            <li>
                <img src="https://i.redd.it/2tp3et3murnb1.jpg">
            </li>
            <li>
                <img src="https://i.redd.it/y7q2ywzkukab1.png">
            </li>
            <li>
                <img src="https://i.redd.it/ijl30xasygab1.jpg">
            </li>
            <li>
                <img src="https://i.redd.it/cunpmprtaq9b1.jpg">
            </li>
        </ul>
    </div>
</main>

<jsp:include page="partials/_footer.jsp" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="js/cat.js"></script>
</body>

</html>