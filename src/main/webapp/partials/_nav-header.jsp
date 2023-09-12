<%@ page contentType="text/html;charset=UTF-8" %>

<%
    String context = request.getServletContext().getContextPath();
    String URL = String.valueOf(request.getRequestURL());
%>

<nav>
    <div class="nav-wrapper indigo">
        <a href="<%= context %>/" class="brand-logo">
            <span class="material-symbols-outlined md-48">public</span> Java Web
        </a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="<%= context %>/">
                <span class="material-symbols-outlined">home</span>  Index
            </a></li>
            <li><a href="<%= context %>/about-jsp.jsp">
                <span class="material-symbols-outlined">code_blocks</span>  JSP
            </a></li>
            <li><a href="<%= context %>/cat.jsp">
                <span class="material-symbols-outlined">pets</span>  Cat
            </a></li>
        </ul>
    </div>
</nav>


<script>
    const navItems = document.querySelectorAll('#nav-mobile li');

    navItems.forEach(item => {
        const link = item.querySelector('a');
        if (link.href === '<%= URL %>') {
            item.classList.add('active');
        }
    });
</script>