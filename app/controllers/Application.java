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
    
    Profile loginUser;
    
    @Inject Database DB;
	private final FormFactory formFactory;
    private Form<Item> itemForm;
    private Form<Profile> userForm;
    /*
    db = Databases.createFrom(
        "com.mysql.jdbc.Driver",
        "jdbc:mysql://localhost/databasefinalproject"
    );
    */
    
    @Inject views.html.index indexTemplate;
    @Inject views.html.login loginTemplate;
    @Inject views.html.profile profileTemplate;
    @Inject views.html.outdoors outdoorsTemplate;
    @Inject views.html.electronics electronicsTemplate;
    @Inject views.html.clothes clothesTemplate;
    @Inject views.html.food foodTemplate;
    @Inject views.html.accessories accessoriesTemplate;
	
	@Inject
	public Application(final FormFactory formFactory) {
        this.formFactory = formFactory;
		this.itemForm = formFactory.form(Item.class);
        this.userForm = formFactory.form(Profile.class);
    }

    public Result index() {
        return ok(indexTemplate.render(Item.all(),this.itemForm));
    }
    
    public Result login() {
        return ok(loginTemplate.render(Profile.all(), this.userForm));
    }
    
    
    public Result authenticate() {
        Form<Profile> filledForm = this.userForm.bindFromRequest();
        if (filledForm.hasErrors()) {
            return badRequest(loginTemplate.render(Profile.all(), filledForm));
        } else {
            session().clear();
            if(filledForm != null) {
                Profile user = Profile.findUser(filledForm.get().username);
                if(user != null) {
                    if(user.validatePassword(user, filledForm.get().password)) {
                        loginUser = user;
                        session("userId", filledForm.get().username);
                        return redirect(routes.Application.profile());
                    } else {
                        return redirect(routes.Application.login());
                    }
                } else {
                    return redirect(routes.Application.login());
                }
            }
        }
        return redirect(routes.Application.index());
    }
    
    public Result profile() {
        return ok(profileTemplate.render(loginUser));
    }
	    public Result itemOutdoors() {
	  //return ok(indexTemplate.render(Item.all()));
	  return ok(outdoorsTemplate.render(Item.categoryList(1), itemForm));
	}

	public Result itemElectronics() {
	  //return ok(indexTemplate.render(Item.all()));
	  return ok(electronicsTemplate.render(Item.categoryList(2), itemForm));
	}

	public Result itemClothes() {
	  //return ok(indexTemplate.render(Item.all()));
	  return ok(clothesTemplate.render(Item.categoryList(3), itemForm));
	}

	public Result itemFood() {
	  //return ok(indexTemplate.render(Item.all()));
	  return ok(foodTemplate.render(Item.categoryList(4), itemForm));
	}

	public Result itemAccessories() {
	  //return ok(indexTemplate.render(Item.all()));
	  return ok(accessoriesTemplate.render(Item.categoryList(5), itemForm));
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
