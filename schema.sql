CREATE DATABASE DatabaseFinal /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `User` (
  `userID` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY username_UNIQUE (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Profile` (
  `username` varchar(45) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipCode` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `balance` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Category` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Item` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(45) NOT NULL,
  `price` double DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  FOREIGN KEY (`categoryID`) REFERENCES `Category`(`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Buyer` (
  `buyerID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`buyerID`),
  FOREIGN KEY (`userID`) REFERENCES `User`(`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Seller` (
  `sellerID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `ratingValue` int(11) DEFAULT NULL,
  PRIMARY KEY (`sellerID`),
  FOREIGN KEY (`userID`) REFERENCES `User`(`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Inventory` (
  `itemID` int(11) NOT NULL,
  `sellerID` int(11) NOT NULL,
  `numberInStock` int(11) DEFAULT NULL,
  `itemStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`itemID`,`sellerID`),
  FOREIGN KEY (`itemID`) REFERENCES `Item`(`itemID`),
  FOREIGN KEY (`sellerID`) REFERENCES `Seller`(`sellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Purchase` (
  `purchaseID` int(11) NOT NULL,
  `buyerID` int(11) NOT NULL,
  `sellerID` int(11) NOT NULL,
  `itemID` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchaseID`),
  FOREIGN KEY (`itemID`) REFERENCES `Item`(`itemID`),
  FOREIGN KEY (`sellerID`) REFERENCES `Seller`(`sellerID`),
  FOREIGN KEY (`buyerID`) REFERENCES `Buyer`(`buyerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Rating` (
  `ratingID` int(11) NOT NULL,
  `buyerID` int(11) NOT NULL,
  `sellerID` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`ratingID`),
  FOREIGN KEY (`sellerID`) REFERENCES `Seller`(`sellerID`),
  FOREIGN KEY (`buyerID`) REFERENCES `Buyer`(`buyerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

