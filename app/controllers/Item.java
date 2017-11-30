package controllers;

import java.util.*;

public class Item {

    public int idItem;

    public String itemname;
    
    public double price;
    
    public String description;
    
    public int rating;
    
    public int categoryid;
    
    public Item(int idItem, String itemname, double price, String description, int rating, int categoryid) {
        this.idItem = idItem;
        this.itemname = itemname;
        this.price = price;
        this.description = description;
        this.rating = rating;
        this.categoryid = categoryid;
    }
  
}