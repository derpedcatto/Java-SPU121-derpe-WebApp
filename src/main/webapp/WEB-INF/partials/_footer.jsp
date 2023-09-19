<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<footer class="page-footer indigo">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">I'm a footer</h5>
                <p class="grey-text text-lighten-4"><%= request.getAttribute("userAgent")%></p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="https://youtu.be/GlOQnsVOa2o?si=Pdg8Qmm1HVjVRPNU">oliver</a></li>
                    <li><a class="grey-text text-lighten-3" href="https://youtu.be/vaphaFCyLQI?si=o4Y97nVZ0xf5lzjK">moo</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2023 derpe content
        </div>
    </div>
</footer>

<%--
<footer class="page-footer grey darken-3">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5>About Me</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Connect</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#">Facebook</a></li>
                    <li><a class="grey-text text-lighten-3" href="#">Twitter</a></li>
                    <li><a class="grey-text text-lighten-3" href="#">Linked In</a></li>
                    <li><a class="grey-text text-lighten-3" href="#">Instagram</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright grey darken-4">
        <div class="container center-align">&copy; 2018 Photo Ninja</div>
    </div>
</footer>
--%>