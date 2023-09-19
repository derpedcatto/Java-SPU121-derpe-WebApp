<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    // дані про тіло - який файл включати в середину шаблону
    String pageBody = (String)request.getAttribute("pageBody");
    String context = request.getServletContext().getContextPath();
%>

<html>
<head>
    <title>DerpeJSP</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="<c:url value='/resources/css/style.css' />" rel="stylesheet" type="text/css">
</head>
<style>
    body {
        display: flex;
        min-height: 100vh;
        flex-direction: column;
    }

    main {
        flex: 1 0 auto;
    }

    .material-symbols-outlined {
        font-variation-settings:
                'FILL' 0,
                'wght' 200,
                'GRAD' 0,
                'opsz' 20
    }
</style>

<body>
    <jsp:include page="partials/_nav-header.jsp">
        <jsp:param name="pageBody" value="<%= pageBody %>"/>
    </jsp:include>

    <main>
        <div class="container">
            <jsp:include page="<%= pageBody %>"/>
        </div>
    </main>

    <jsp:include page="partials/_footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
