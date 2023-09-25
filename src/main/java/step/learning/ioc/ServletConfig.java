package step.learning.ioc;

import com.google.inject.servlet.ServletModule;
import step.learning.filters.CharsetFilter;
import step.learning.filters.DbFilter;
import step.learning.servlets.*;

public class ServletConfig extends ServletModule {
    @Override
    protected void configureServlets() {
        filter("/*").through(CharsetFilter.class);
        filter("/*").through(DbFilter.class);

        serve("/"               ).with(IndexServlet.class);
        serve("/about-jsp"      ).with(AboutJspServlet.class);
        serve("/about-servlet"  ).with(AboutServletServlet.class);
        serve("/cat"            ).with(CatServlet.class);
        serve("/filter"         ).with(FilterServlet.class);
        serve("/ioc"            ).with(IocServlet.class);
    }
}
