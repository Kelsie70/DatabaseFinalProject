CREATE DATABASE `DatabaseFinal` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `User` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Profile` (
  `username` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `balance` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Item` (
  `idItem` int(11) NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Inventory` (
  `idInventory` int(11) NOT NULL,
  `sellerid` int(11) DEFAULT NULL,
  `numberinstock` int(11) DEFAULT NULL,
  `itemstatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idInventory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Purchase` (
  `idPurchase` int(11) NOT NULL,
  `buyerid` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `itemprice` double DEFAULT NULL,
  `transactiontime` datetime DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPurchase`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Category` (
  `idCategory` int(11) NOT NULL,
  `categoryname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
