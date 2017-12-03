package models;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Category extends Model {

	@Id
    public Integer categoryId;

    public String categoryName;
	
	public static Finder<Integer,Category> find = new Finder(Category.class);
	
	public static List<Category> all() {
		return find.all();
	}
  
}