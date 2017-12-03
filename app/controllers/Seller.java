package models;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Seller extends Model {

	@Id
    public Integer sellerId;
    
    public Integer userId;
	
	public static Finder<Integer,Seller> find = new Finder(Seller.class);
	
	public static List<Seller> all() {
		return find.all();
	}

	public static void create(Seller seller) {
	  seller.save();
	}
  
}