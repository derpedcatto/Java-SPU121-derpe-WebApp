package step.learning.filters;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import step.learning.services.db.DbProvider;

import javax.servlet.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Перевірка можливості підключення до БД, переведеннчя сайту до статичного режиму
 */
@Singleton
public class DbFilter implements Filter {
    private final DbProvider dbProvider;
    private FilterConfig filterConfig ;

    @Inject
    public DbFilter(DbProvider dbProvider) {
        this.dbProvider = dbProvider;
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig ;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        if (dbProvider.getConnection() == null) {
            servletRequest.setAttribute("pageBody", "static.jsp");
            servletRequest.getRequestDispatcher("WEB-INF/_layout.jsp")
                    .forward(servletRequest, servletResponse);
        }
        else {
            boolean isConnected = dbProvider.connectionIsTrue();
            if (isConnected) {
                System.out.println("Database connected");
            }
            else {
                System.err.println("Database is not connected");
            }
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    public void destroy() {
        this.filterConfig = null ;
    }
}

/*
Guice - підключення фільтру
1. Описуємо фільтр
2. ! Додаємо анотацію @Singleton (com.google.inject)
3. Додаємо налаштування у ServletConfig
4. Для можливості інжекції оголошуємо конструктор,
   ! з анотацією @Inject
 */