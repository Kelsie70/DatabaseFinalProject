package models;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Inventory extends Model {

	@Id
    public Integer inventoryId;
	
    public Integer sellerId;

    public Integer itemId;
    
    public Integer quantity;
	
	public static Finder<Integer,Inventory> find = new Finder(Inventory.class);
	
	public static List<Inventory> all() {
		return find.all();
	}

	public static void create(Inventory inventory) {
	  inventory.save();
	}
  
}
