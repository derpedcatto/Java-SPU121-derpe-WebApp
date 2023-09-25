<%@ page contentType="text/html;charset=UTF-8" %>

<%
    String URL = String.valueOf(request.getRequestURL());
    String context = request.getServletContext().getContextPath();
    String pageBody = (String)request.getAttribute("pageBody");
%>

<!--
https://fonts.google.com/icons
-->

<style>
    #nav-mobile li a {
        display: flex;
        align-items: center;
        font-size: 1.2rem;
    }

    .nav-wrapper {
        padding: 0 1rem;
    }

    .nav-wrapper .brand-logo {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .md-48 {
        font-size: 40px;
    }
</style>

<nav>
    <div class="nav-wrapper indigo">
        <a href="<%= context %>/" class="brand-logo">
            <span class="material-symbols-outlined md-48">public</span> Java Web
        </a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li class="<%="index.jsp".equals(pageBody)?"active":""%>"><a href="<%= context %>/">
                <span class="material-symbols-outlined">home</span>  Index
            </a></li>
            <li class="<%="about-jsp.jsp".equals(pageBody)?"active":""%>"><a href="<%= context %>/about-jsp">
                <span class="material-symbols-outlined">code_blocks</span>  JSP
            </a></li>
            <li class="<%="cat.jsp".equals(pageBody)?"active":""%>"><a href="<%= context %>/cat">
                <span class="material-symbols-outlined">pets</span>  Cat
            </a></li>
            <li class="<%="about-servlet.jsp".equals(pageBody)?"active":""%>"><a href="<%= context %>/about-servlet">
                <span class="material-symbols-outlined">rss_feed</span>  Servlet
            </a></li>
            <li class="<%="filter.jsp".equals(pageBody)?"active":""%>"><a href="<%= context %>/filter">
                <span class="material-symbols-outlined">filter_alt</span>  Filter
            </a></li>
            <li class="<%="ioc.jsp".equals(pageBody)?"active":""%>"><a href="<%= context %>/ioc">
                <span class="material-symbols-outlined">open_in_new</span>  IoC
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