package models;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Buyer extends Model {

	@Id
    public Integer buyerId;
    
    public Integer userId;
	
	public static Finder<Integer,Buyer> find = new Finder(Buyer.class);
	
	public static List<Buyer> all() {
		return find.all();
	}

	public static void create(Buyer buyer) {
	  buyer.save();
	}
  
}