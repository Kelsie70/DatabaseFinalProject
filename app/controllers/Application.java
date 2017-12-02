package controllers;

import javax.inject.*;
import play.mvc.*;
import play.data.*;
import models.*;

import play.db.Database;
import play.db.Databases;
import java.sql.*;

import views.html.*;

import java.util.*;





public class Application extends Controller {
    
    
    @Inject Database DB;
	private final FormFactory formFactory;
    private Form<Item> itemForm;
    /*
    db = Databases.createFrom(
        "com.mysql.jdbc.Driver",
        "jdbc:mysql://localhost/databasefinalproject"
    );
    */
    
    @Inject views.html.index indexTemplate;
    @Inject views.html.login loginTemplate;
    @Inject views.html.profile profileTemplate;
	
	@Inject
	public Application(final FormFactory formFactory) {
        this.formFactory = formFactory;
		this.itemForm = formFactory.form(Item.class);
    }

    public Result index() {
		
        return ok(indexTemplate.render(Item.all(),this.itemForm));
    }
    
    public Result login() {
        return ok(loginTemplate.render());
    }
    
    public Result profile() {
        return ok(profileTemplate.render());
    }
	
	public Result items() {
	  //return ok(indexTemplate.render(Item.all()));
	  return ok(indexTemplate.render(Item.all(), itemForm));
	}
	
	public Result newItem() {
	  Form<Item> filledForm = this.itemForm.bindFromRequest();
	  if(filledForm.hasErrors()) {
		return badRequest(indexTemplate.render(Item.all(), filledForm));
	  } else {
		Item.create(filledForm.get());
		return redirect(routes.Application.items());  
	  }
	  //return redirect(routes.Application.items()); 
	}
	
	public Result deleteItem(Integer id) {
	  Item.delete(id);
	  return redirect(routes.Application.items());
	  //return redirect(routes.Application.items()); 
	}

}
