<%@ page contentType="text/html;charset=UTF-8" %>

<h1>IoC - Inversion of Control</h1>
<p>
    Інверсія управління у веб проєкті.
</p>
<p>
    Guice. Для веб необхідно встановити два пакети - базу та
    сервлетне розширення (Google Guice Extensions Servlet).
    При роботі з Java-8 обмежуємось версіями 6.
</p>
<ul class="collection">
    <li class="collection-item">
        Додаємо залежність Google Guice Core Library
    </li>
    <li class="collection-item">
        Додаємо залежність Google Guice Extensions Servlet
    </li>
    <li class="collection-item">
        Створюємо пакет IoC, у ньому класи для конфігурації:
        ListenConfig - налаштування події створення контексту (старту проекту)
    </li>
    <li class="collection-item">
        Реєструємо обробник події (створення контексту) у web.xml,
        видаляємо з web.xml усі декларації сервлетів та фільтрів,
        додаємо реєстрацію Guice фільтру.
    </li>
    <li class="collection-item">
        Реєстрацію всіх фільтрів та сервлетів переносимо у клас-конфігуратор
        ServletConfig, який також створюємо у пакеті IoC.
        Реєструємо сам клас у ListenConfig (new ServletConfig())
    </li>
    <li class="collection-item">
        Знімаємо анотації @WebFilter та @WebServlet, додаємо
        замість них @Singleton
    </li>
    <li class="collection-item">
        Реєстрацію служб (сервісів) можна здійснювати у тому ж класі,
        що й сервлети, але можна й в окремому. Створюємо клас ServiceConfig
        у пакеті IoC та налаштовуємо його. Об'єкт цього класу (new ServiceConfig())
        додаємо до ListenConfig.
    </li>
</ul>