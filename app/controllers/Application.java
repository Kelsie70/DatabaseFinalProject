package controllers;

import com.google.inject.Inject;
import play.mvc.*;

import play.db.Database;
import play.db.Databases;
import java.sql.*;

import views.html.*;

import java.util.*;

//scala> import scala.collection.JavaConverters;
import scala.collection.JavaConverters;

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
    @Inject views.html.profile profileTemplate;

    public Result index() {
        return ok(indexTemplate.render());
    }
    
    public Result login() {
        return ok(loginTemplate.render());
    }
    
    public Result profile() {
        return ok(profileTemplate.render());
    }
    
    public Result getItems() throws Exception {
        String sql = "select * from Item";
        
        ArrayList<Item> mainList = new ArrayList<>();

        Connection conn = DB.getConnection();
        ResultSet set; 
        
        try {
            Statement stmt = conn.createStatement();
            try {
                stmt.execute(sql);
                set = stmt.getResultSet();
                while(set.next()) {
                    int id = set.getInt("idItem");
                    String name = set.getString("itemname");
                    double price = set.getDouble("price");
                    String description = set.getString("description");
                    int rating = set.getInt("rating");
                    int categoryid = set.getInt("categoryid");
                    
                    Item newItem = new Item(id, name, price, description, rating, categoryid);
                    mainList.add(newItem);
                    
                }
               
            } finally {
                stmt.close();
            }
        } finally {
            conn.close();
        }
        
        System.out.println(mainList.size());
        
        for(int i = 0; i < mainList.size(); i++) {
            System.out.println(mainList.get(i).idItem + " " + mainList.get(i).itemname + " " +
                              mainList.get(i).price + " " + mainList.get(i).description + " " + 
                              mainList.get(i).rating + " " + mainList.get(i).categoryid);
        }
        return ok(loginTemplate.render());
    }

}
