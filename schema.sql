CREATE DATABASE databasefinal /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `Profile` (
  `user_id` integer NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` integer DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY (`email`),
  UNIQUE KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Category` (
  `category_id` integer NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Item` (
  `item_id` integer NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `category_id` integer DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  FOREIGN KEY (`category_id`) REFERENCES `Category`(`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Buyer` (
  `buyer_id` integer NOT NULL AUTO_INCREMENT,
  `user_id` integer NOT NULL,
  PRIMARY KEY (`buyer_id`),
  FOREIGN KEY (`user_id`) REFERENCES `Profile`(`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Seller` (
  `seller_id` integer NOT NULL AUTO_INCREMENT,
  `user_id` integer NOT NULL,
  PRIMARY KEY (`seller_id`),
  FOREIGN KEY (`user_id`) REFERENCES `Profile`(`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Inventory` (
  `inventory_id` integer NOT NULL AUTO_INCREMENT,
  `item_id` integer NOT NULL,
  `seller_id` integer NOT NULL,
  `quantity` integer DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  FOREIGN KEY (`item_id`) REFERENCES `Item`(`item_id`),
  FOREIGN KEY (`seller_id`) REFERENCES `Seller`(`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Purchase` (
  `purchase_id` integer NOT NULL AUTO_INCREMENT,
  `buyer_id` integer NOT NULL,
  `seller_id` integer NOT NULL,
  `item_id` integer DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  FOREIGN KEY (`item_id`) REFERENCES `Item`(`item_id`),
  FOREIGN KEY (`seller_id`) REFERENCES `Seller`(`seller_id`),
  FOREIGN KEY (`buyer_id`) REFERENCES `Buyer`(`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


