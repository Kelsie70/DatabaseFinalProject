package models;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Profile extends Model {

	@Id
    public Integer userId;

	@Column(unique=true)
    public String username;
	
	public String password;
	
	public String firstName;
	
	public String lastName;
    
    public String address;
	
	public String city;
	
	public String state;
	
	public Integer zipCode;
    
	@Column(unique=true)
    public String email;
    
    public Double balance;
	
	public static Finder<Integer,Profile> find = new Finder(Profile.class);
	
	public static List<Profile> all() {
		return find.all();
	}

	public static void create(Profile profile) {
	  profile.save();
	}
  
}