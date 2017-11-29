package controllers;

import com.google.inject.Inject;
import play.mvc.*;

public class Application extends Controller {

    @Inject views.html.index indexTemplate;
    @Inject views.html.login loginTemplate;

    public Result index() {
        return ok(indexTemplate.render());
    }
    
    public Result login() {
        return ok(loginTemplate.render());
    }

}
