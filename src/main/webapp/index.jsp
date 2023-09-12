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
    <div class="container">
        <h1>Java. Web проектування</h1>
        <h2>Встановлення та налаштування</h2>
        <p>
            Створюємо новий проект. Обираємо Maven Archetype -- webapp, змінюємо
            базовий пакет, задаємо назву проекту. Після створення корегуємо
            /src/main/webapp/index.jsp - додаємо директиву JSP
            <code>
            &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
            </code>
        </p>
        <p>
            Налаштовуємо конфігурацію запуску. Необхідно встановити веб-сервер для Java.
            Серед найбільш поширених: Tomcat (8.5), Glassfish (4, 5), JBoss, WildFly, тощо.
            Частіше за все достатньо завантажити архів сервера та розпакувати його
            в окрему папку (без кириличних символів у шляху). <br/>
            Edit Configuration -- + -- Tomcat Local -- Configure -- (.../tomcat) --
            Fix / Deploy -- ...war exploded
            За бажанням змінюємо контекст (адресу сайту) та змінюємо реакцію на перезапуск - оновлення ресурсів
        </p>
        <p>
            Додаємо до залежностей пакет servlet-api
        </p>
    </div>
</main>

<jsp:include page="partials/_footer.jsp" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>

</html>