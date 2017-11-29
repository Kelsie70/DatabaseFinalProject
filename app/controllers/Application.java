package controllers;

import com.google.inject.Inject;
import play.mvc.*;

import play.db.Database;
import play.db.Databases;
import java.sql.*;

public class Application extends Controller {
    
    
    @Inject Database DB;
    
    /*
    db = Databases.createFrom(
        "com.mysql.jdbc.Driver",
        "jdbc:mysql://localhost/DatabaseFinal"
    );
    */
    
    @Inject views.html.index indexTemplate;
    @Inject views.html.login loginTemplate;

    public Result index() {
        return ok(indexTemplate.render());
    }
    
    public Result login() {
        return ok(loginTemplate.render());
    }
    
    public Result testDatabase() throws Exception {
        String sql = "select * from User";

        Connection conn = DB.getConnection();
        ResultSet set; 
        
        try {
            Statement stmt = conn.createStatement();
            try {
                stmt.execute(sql);
                set = stmt.getResultSet();
                while(set.next()) {
                    System.out.println(set.getString("username"));
                }
               
            } finally {
                stmt.close();
            }
        } finally {
            conn.close();
        }
        
        return ok(loginTemplate.render());
    }

}
