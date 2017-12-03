package models;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Purchase extends Model {

	@Id
    public Integer purchaseId;

    public Integer buyerId;
	
	public Integer sellerId;

    public Integer itemId;
	
	public static Finder<Integer,Purchase> find = new Finder(Purchase.class);
	
	public static List<Purchase> all() {
		return find.all();
	}

	public static void create(Purchase purchase) {
	  purchase.save();
	}

  
}