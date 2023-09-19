<%@ page contentType="text/html;charset=UTF-8" %>
<h1>Сервлетні фільтри</h1>
<p>
    Фільтри у веб-проектах це реалізація концепції Middleware -
    утворення ланцюга обробників, через які проходить кожен запит
    (як у прямому, так і у зворотньому шляху).
    Фільтри спрацьовують раніше ніж сервлети
</p>
<p>
    Зручність фільтрів ще й у тому, що вони спрацьовують для усіх методів запиту
    до того, як вони почнуть розгалужуватись у сервлетах.
</p>
<p>
    Аналогічно до сервлетів, фільтри треба реєструвати, і для них так само
    доступна анотація @WebFilter("route"). але анотації не дозволяють керувати
    порядком виконання фільтрів. Для гарантії цього порядку фільтри реєструють
    у файлі web.xml
</p>
<p>
    Дані з фільтру можна передаті далі по ланці у т.ч. до сервлетів і JSP через
    атрибути запиту. До даної сторінки переданий параметр "charset" =
    <%= request.getAttribute("charset")%>
</p>