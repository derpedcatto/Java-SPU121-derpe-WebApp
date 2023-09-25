package step.learning.services.db;

import java.sql.Connection;
import java.sql.ResultSet;

public interface DbProvider {
    Connection getConnection();
    Boolean connectionIsTrue();
}
