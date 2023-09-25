package step.learning.ioc;

import com.google.inject.AbstractModule;

import java.io.InputStream;
import java.util.logging.LogManager;

/**
 * Конфігурація логера
 */
public class LoggingConfig extends AbstractModule {
    @Override
    protected void configure() {
        // Guice конфігурує логер сам, тому для наших налаштувань
        // - скидаємо наявні налаштування
        // - підставляємо свої
        try(InputStream resourceStream = this.getClass().getClassLoader()
                .getResourceAsStream("logging.properties")) {
            LogManager logManager = LogManager.getLogManager();
            logManager.reset(); // скидаємо наявні налаштування
            logManager.readConfiguration(resourceStream);
        }
        catch (Exception ex) {
            System.err.println("Logger config error: " + ex.getMessage());
        }
    }
}
