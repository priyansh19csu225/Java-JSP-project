
package databasecon;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yearbook", "root", "1111");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
}
