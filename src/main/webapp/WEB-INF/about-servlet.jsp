<%@ page contentType="text/html;charset=UTF-8" %>

<%-- Представлення (View) - тіло, що вставляється у шаблон (_layout) --%>
<p>
    Сервлети - спеціальні класи, призначені для роботи у мережі, зокрема у HTTP.
    Можна провести аналогія з контроллерами (типу API) у ASP.
</p>
<p>
    Сервлети, як класи Java, описуються в окремій папці "java" яку слід додати
    до проекту (у папку main). У ній створюємо пакети у відповідності до даних,
    вказаних при створення проекту (step.learning)
    У цьому пакеті додаємо пакет "servlets" - у ньому клас - step.learning.servlets.AboutServletServlet
</p>
<p>
    Звертаємо увагу на WEB-INF. Це папка за налаштуваннями сервера (web.xml), і доступ
    до цієї папки блокується самим сервером (до неї не можна звернутись з браузера).
    Але можна звертатись з java-коду, зокрема, з сервлетів. Це використовується як
    спосіб захисту файлів від прямого звертання і гарантує правильний порядок їх
    проходження через шаблон(и).
</p>
<p>
    У папці WEB-INF створюємо два файли - "_layout.jsp" "about.jsp"
</p>