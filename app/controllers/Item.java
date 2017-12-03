package models;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Item extends Model {

	@Id
    public Integer itemId;

    public String itemName;
	
	public String description;
    
    public Double price;
    
    public Integer categoryId;
	
	public static Finder<Integer,Item> find = new Finder(Item.class);
	
	public static List<Item> all() {
		return find.all();
	}

	public static void create(Item item) {
	  item.save();
	}

	public static void delete(Integer id) {
	  find.ref(id).delete();
	}
	
	public static List<Item> categoryList(Integer id) {
		return find.query().where().eq("category_id", id).findList();
  	}
  
}
