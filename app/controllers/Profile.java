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
    
    public static Profile findUser(String username) {
        int id = 0;
        for(Profile user : Profile.all()){
            if(user.username.equals(username)) {
                id = user.userId;
            }
        }
        return find.byId(id);
    }
    
    public static boolean validatePassword(Profile user, String password) {
        if(user.password.equals(password)) {
            return true;
        }
        return false;
    }
   
  public Profile(String username, String email, String password) {
    this.username = username;
    this.email = email;
    this.password = password;
  }
  

  public String getUsername() {
    return username;
  }
  
  public void setUsername(String username) {
    this.username = username;
  }
 
  public String getEmail() {
    return email;
  }
  
  public void setEmail(String email) {
    this.email = email;
  }
  
  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  
}