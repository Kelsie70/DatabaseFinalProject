/* -------- inserts for profile -------- */

INSERT INTO `databasefinal`.`Profile`(`username`,`password``first_name`,`last_name`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("kelsie123", "Kelsie", "Belan", "123 Oak St.", "Athens", "Georgia", "30602",
	"kelsie70@gmail.com", 376.54);

INSERT INTO `databasefinal`.`Profile`(`username`,`password``first_name`,`last_name`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("doggo321", "Max", "Dog", "43 Bone Dr.", "Athens", "Georgia", "30602",
	"doggo@gmail.com", 38.33);
    
INSERT INTO `databasefinal`.`Profile`(`username`,`password``first_name`,`last_name`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("coolperson", "Lloyd", "McGee", "88 Waterfront Circle", "New York", "New York", "12343",
	"iamcool@hotmail.com", 4.65);
    
INSERT INTO `databasefinal`.`Profile`(`username`,`password``first_name`,`last_name`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("bobthedude", "Bob", "Sanders", "66 Tomato Lane", "Watkinsville", "Georgia", "30678",
	"bob@gmail.com", 7888.33);
    
INSERT INTO `databasefinal`.`Profile`(`username`,`password``first_name`,`last_name`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("l33thacker", "Dave", "Leno", "56 Town Rd.", "Orlando", "Florida", "43322",
	"discreet@yahoo.com", 234.56);

/* -------- inserts for item -------- */

INSERT INTO `databasefinal`.`Item`
(`item_name`,`price`,`description`,`category_id`)
VALUES
("shoes", 29.99, "Blue tennis shoes with white accents", 3);

INSERT INTO `databasefinal`.`Item`
(`item_name`,`price`,`description`,`category_id`)
VALUES
("tie", 49.99, "Red and black striped tie with small Georgia bulldog pattern", 3);

INSERT INTO `databasefinal`.`Item`
(`item_name`,`price`,`description`,`category_id`)
VALUES
("headphones", 99.99, "Soundproof headphones, come in black and gray", 2);

INSERT INTO `databasefinal`.`Item`
(`item_name`,`price`,`description`,`category_id`)
VALUES
("bike", 295.99, "Red bike with 5 gears, hand brakes, mountain speeds", 1);

INSERT INTO `databasefinal`.`Item`
(`item_name`,`price`,`description`,`category_id`)
VALUES
("Eno", 89.99, "Outdoor hammock appropriate for one or two person use", 1);

INSERT INTO `databasefinal`.`Item`
(`item_name`,`price`,`description`,`category_id`)
VALUES
(6, "purse", 38.99, "black purse with shoulder strap, silver studs", 5);

INSERT INTO `databasefinal`.`Item`
(`item_name`,`price`,`description`,`category_id`)
VALUES
("comforter", 79.99, "Bed comforter with floral patterns", 6);

/* -------- inserts for inventory -------- */

INSERT INTO `databasefinal`.`Inventory`(`item_id`, `seller_id`,`quantity`)
VALUES
(5, "kelsie123", "coolperson", 10);

INSERT INTO `databasefinal`.`Inventory`(`item_id`, `seller_id`,`quantity`)
VALUES
(4, "kelsie123", "coolperson", 10);

INSERT INTO `databasefinal`.`Inventory`(`item_id`, `seller_id`,`quantity`)
VALUES
(3, "doggo321", "bobthedude", 10);

INSERT INTO `databasefinal`.`Inventory`(`item_id`, `seller_id`,`quantity`)
VALUES
(6, "bobthedude", "bobthedude", 10);

INSERT INTO `databasefinal`.`Inventory`(`item_id`, `seller_id`,`quantity`)
VALUES
(4, "l33thacker", "bobthedude", 15);

INSERT INTO `databasefinal`.`Inventory`(`item_id`, `seller_id`,`quantity`)
VALUES
(2, "coolperson", "133thacker", 10);

INSERT INTO `databasefinal`.`Inventory`(`item_id`, `seller_id`,`quantity`)
VALUES
(2, "kelsie123", "133thacker", 15);

/* -------- inserts for purchase -------- */

INSERT INTO `databasefinal`.`Purchase`(`buyer_id`,`seller_id`, `item_id`)
VALUES
("kelsie123", "coolperson", 6);

INSERT INTO `databasefinal`.`Purchase`(`buyer_id`,`seller_id`,`item_id`)
VALUES
(2, "coolperson", "bobthedude", 4);

INSERT INTO `databasefinal`.`Purchase`(`buyer_id`,`seller_id`,`item_id`)
VALUES
(3, "kelsie123", "coolperson", 6);

INSERT INTO `databasefinal`.`Purchase`(`buyer_id`,`seller_id`,`item_id`)
VALUES
(4, "bobthedude", "l33thacker", 5);

INSERT INTO `databasefinal`.`Purchase`(`buyer_id`,`seller_id`,`item_id`)
VALUES
(5, "l33thacker", "doggo321", 3);

/* -------- inserts for category -------- */

INSERT INTO `databasefinal`.`Category`(`category_id`,`categoryName`)
VALUES
(1, "outdoors");

INSERT INTO `databasefinal`.`Category`(`category_id`,`categoryName`)
VALUES
(2, "electronics");

INSERT INTO `databasefinal`.`Category`(`category_id`,`categoryName`)
VALUES
(3, "clothes");

INSERT INTO `databasefinal`.`Category`(`category_id`,`categoryName`)
VALUES
(4, "food");

INSERT INTO `databasefinal`.`Category`(`category_id`,`categoryName`)
VALUES
(5, "accessories");

INSERT INTO `databasefinal`.`Category`(`category_id`,`categoryName`)
VALUES
(6, "home");

/* -------- inserts for Seller -------- */

INSERT INTO `databasefinal`.`Seller`(`user_id`)
VALUES
("kelsiebelan123");

INSERT INTO `databasefinal`.`Seller`(`user_id`)
VALUES
("coolperson");

INSERT INTO `databasefinal`.`Seller`(`user_id`)
VALUES
("bobthedude");

INSERT INTO `databasefinal`.`Seller`(`user_id`)
VALUES
("l33thacker");

INSERT INTO `databasefinal`.`Seller`(`user_id`)
VALUES
("doggo321");

/* -------- inserts for Buyer -------- */

INSERT INTO `databasefinal`.`Buyer`(`user_id`)
VALUES
("coolperson");

INSERT INTO `databasefinal`.`Buyer`(`user_id`)
VALUES
("coolperson")

INSERT INTO `databasefinal`.`Buyer`(`user_id`)
VALUES
("bobthedude");

INSERT INTO `databasefinal`.`Buyer`(`user_id`)
VALUES
("l33thacker");

INSERT INTO `databasefinal`.`Buyer`(`user_id`)
VALUES
("doggo321");




