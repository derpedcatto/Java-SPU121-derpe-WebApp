package step.learning.servlets;

import com.google.inject.Singleton;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// @WebServlet("/about-servlet")   // route - шлях, до якого прив'язується сервлет
@Singleton
public class AboutServletServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // ~ return View() - підключаємо _layout та передаємо йому відомості про @body

        // вказуємо яке тіло потрібно для шаблону
        req.setAttribute("pageBody", "about-servlet.jsp");

        // передаємо "управління" до файлу по шляху
        req.getRequestDispatcher("WEB-INF/_layout.jsp")
                .forward(req, resp);
    }
}
