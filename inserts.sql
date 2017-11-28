/* -------- inserts for user -------- */

INSERT INTO `DatabaseFinal`.`User`(`username`,`password`,`email`)
VALUES("kelsie123","123abc","kelsie123@gmail.com");

INSERT INTO `DatabaseFinal`.`User`(`username`,`password`,`email`)
VALUES("doggo321","woofwoof","doggo@gmail.com");

INSERT INTO `DatabaseFinal`.`User`(`username`,`password`,`email`)
VALUES("coolperson","hihihello","iamcool@hotmail.com");

INSERT INTO `DatabaseFinal`.`User`(`username`,`password`,`email`)
VALUES("bobthedude","ilovetomatoes","bob@gmail.com");

INSERT INTO `DatabaseFinal`.`User`(`username`,`password`,`email`)
VALUES("l33thacker","h7sdf2233j3h","discreet@yahoo.com");

/* -------- inserts for profile -------- */

INSERT INTO `DatabaseFinal`.`Profile`(`username`,`firstname`,`lastname`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("kelsie123", "Kelsie", "Belan", "123 Oak St.", "Athens", "Georgia", "30602",
	"kelsie70@gmail.com", 376.54);

INSERT INTO `DatabaseFinal`.`Profile`(`username`,`firstname`,`lastname`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("doggo321", "Max", "Dog", "43 Bone Dr.", "Athens", "Georgia", "30602",
	"doggo@gmail.com", 38.33);
    
INSERT INTO `DatabaseFinal`.`Profile`(`username`,`firstname`,`lastname`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("coolperson", "Lloyd", "McGee", "88 Waterfront Circle", "New York", "New York", "12343",
	"iamcool@hotmail.com", 4.65);
    
INSERT INTO `DatabaseFinal`.`Profile`(`username`,`firstname`,`lastname`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("bobthedude", "Bob", "Sanders", "66 Tomato Lane", "Watkinsville", "Georgia", "30678",
	"bob@gmail.com", 7888.33);
    
INSERT INTO `DatabaseFinal`.`Profile`(`username`,`firstname`,`lastname`,
`address`,`city`,`state`,`zipcode`,`email`,`balance`)
VALUES
("l33thacker", "Dave", "Leno", "56 Town Rd.", "Orlando", "Florida", "43322",
	"discreet@yahoo.com", 234.56);

/* -------- inserts for item -------- */

INSERT INTO `DatabaseFinal`.`Item`
(`idItem`,`itemname`,`price`,`description`,`rating`,`categoryid`)
VALUES
(1, "shoes", 29.99, "Blue tennis shoes with white accents", 4, 3);

INSERT INTO `DatabaseFinal`.`Item`
(`idItem`,`itemname`,`price`,`description`,`rating`,`categoryid`)
VALUES
(2, "tie", 49.99, "Red and black striped tie with small Georgia bulldog pattern", 5, 3);

INSERT INTO `DatabaseFinal`.`Item`
(`idItem`,`itemname`,`price`,`description`,`rating`,`categoryid`)
VALUES
(3, "headphones", 99.99, "Soundproof headphones, come in black and gray", 3, 2);

INSERT INTO `DatabaseFinal`.`Item`
(`idItem`,`itemname`,`price`,`description`,`rating`,`categoryid`)
VALUES
(4, "bike", 295.99, "Red bike with 5 gears, hand brakes, mountain speeds", 4, 1);

INSERT INTO `DatabaseFinal`.`Item`
(`idItem`,`itemname`,`price`,`description`,`rating`,`categoryid`)
VALUES
(5, "Eno", 89.99, "Outdoor hammock appropriate for one or two person use", 4, 1);

INSERT INTO `DatabaseFinal`.`Item`
(`idItem`,`itemname`,`price`,`description`,`rating`,`categoryid`)
VALUES
(6, "purse", 38.99, "black purse with shoulder strap, silver studs", 2, 5);

INSERT INTO `DatabaseFinal`.`Item`
(`idItem`,`itemname`,`price`,`description`,`rating`,`categoryid`)
VALUES
(7, "comforter", 79.99, "Bed comforter with floral patterns", 4, 6);

/* -------- inserts for inventory -------- */

INSERT INTO `DatabaseFinal`.`Inventory`(`idInventory`,`sellerid`,`numberinstock`,`itemstatus`)
VALUES
(1, "kelsie123", 100, "in stock");

INSERT INTO `DatabaseFinal`.`Inventory`(`idInventory`,`sellerid`,`numberinstock`,`itemstatus`)
VALUES
(2, "kelsie123", 4, "in stock");

INSERT INTO `DatabaseFinal`.`Inventory`(`idInventory`,`sellerid`,`numberinstock`,`itemstatus`)
VALUES
(3, "doggo321", 44, "in stock");

INSERT INTO `DatabaseFinal`.`Inventory`(`idInventory`,`sellerid`,`numberinstock`,`itemstatus`)
VALUES
(4, "bobthedude", 51, "in stock");

INSERT INTO `DatabaseFinal`.`Inventory`(`idInventory`,`sellerid`,`numberinstock`,`itemstatus`)
VALUES
(5, "l33thacker", 0, "out of stock");

INSERT INTO `DatabaseFinal`.`Inventory`(`idInventory`,`sellerid`,`numberinstock`,`itemstatus`)
VALUES
(6, "coolperson", 441, "in stock");

INSERT INTO `DatabaseFinal`.`Inventory`(`idInventory`,`sellerid`,`numberinstock`,`itemstatus`)
VALUES
(7, "kelsie123", 0, "out of stock");

/* -------- inserts for purchase -------- */

INSERT INTO `DatabaseFinal`.`Purchase`(`idPurchase`,`buyerid`,`sellerid`,
`itemprice`,`transactiontime`,`itemid`)
VALUES
(1, "kelsie123", "coolperson", 38.99, '2017-06-18 10:34:09', 6);

INSERT INTO `DatabaseFinal`.`Purchase`(`idPurchase`,`buyerid`,`sellerid`,
`itemprice`,`transactiontime`,`itemid`)
VALUES
(2, "coolperson", "bobthedude", 295.99, '2017-07-20 15:04:11', 4);

INSERT INTO `DatabaseFinal`.`Purchase`(`idPurchase`,`buyerid`,`sellerid`,
`itemprice`,`transactiontime`,`itemid`)
VALUES
(3, "kelsie123", "coolperson", 38.99, '2017-10-18 22:04:05', 6);

INSERT INTO `DatabaseFinal`.`Purchase`(`idPurchase`,`buyerid`,`sellerid`,
`itemprice`,`transactiontime`,`itemid`)
VALUES
(4, "bobthedude", "l33thacker", 89.99, '2017-11-01 06:34:09', 5);

INSERT INTO `DatabaseFinal`.`Purchase`(`idPurchase`,`buyerid`,`sellerid`,
`itemprice`,`transactiontime`,`itemid`)
VALUES
(5, "l33thacker", "doggo321", 99.99, '2012-06-18 10:34:09', 3);

/* -------- inserts for category -------- */

INSERT INTO `DatabaseFinal`.`Category`(`idCategory`,`categoryname`)
VALUES
(1, "outdoors");

INSERT INTO `DatabaseFinal`.`Category`(`idCategory`,`categoryname`)
VALUES
(2, "electronics");

INSERT INTO `DatabaseFinal`.`Category`(`idCategory`,`categoryname`)
VALUES
(3, "clothes");

INSERT INTO `DatabaseFinal`.`Category`(`idCategory`,`categoryname`)
VALUES
(4, "food");

INSERT INTO `DatabaseFinal`.`Category`(`idCategory`,`categoryname`)
VALUES
(5, "accessories");

INSERT INTO `DatabaseFinal`.`Category`(`idCategory`,`categoryname`)
VALUES
(6, "home");


