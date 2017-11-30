package controllers;

import com.google.inject.Inject;
import play.mvc.*;
import models.*;

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
        "jdbc:mysql://localhost/databasefinalproject"
    );
    */
    
    @Inject views.html.index indexTemplate;
    @Inject views.html.login loginTemplate;
    @Inject views.html.profile profileTemplate;

    public Result index() {
		List<Item> all= Item.all();
		for(int i=0;i<all.size();i++){
			System.out.println(all.get(i).itemId);
		}
        return ok(indexTemplate.render(Item.all()));
    }
    
    public Result login() {
        return ok(loginTemplate.render());
    }
    
    public Result profile() {
        return ok(profileTemplate.render());
    }

}
