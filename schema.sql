CREATE DATABASE `DatabaseFinal` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `User` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Task` (
  `idtask` int(11) NOT NULL,
  `datecreated` datetime DEFAULT NULL,
  `deadline` varchar(45) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `assigneduser` varchar(45) NOT NULL,
  `supplies` varchar(100) DEFAULT NULL,
  `locationid` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `taskname` varchar(45) NOT NULL,
  PRIMARY KEY (`idtask`)
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
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Location` (
  `idLocation` int(11) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

