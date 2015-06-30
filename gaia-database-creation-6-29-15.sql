-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Gaia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Gaia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Gaia` DEFAULT CHARACTER SET utf8 ;
USE `Gaia` ;

-- -----------------------------------------------------
-- Table `Gaia`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Product` (
  `ProductID` INT(11) NOT NULL,
  `Price` FLOAT NULL DEFAULT NULL,
  `Quantity` INT(11) NULL DEFAULT NULL,
  `ProductName` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`Book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Book` (
  `ProductID` INT(11) NOT NULL,
  `ISBN` VARCHAR(45) NULL DEFAULT NULL,
  `BookName` VARCHAR(100) NULL DEFAULT NULL,
  `Author` VARCHAR(45) NULL DEFAULT NULL,
  `PublishDate` YEAR NULL DEFAULT NULL,
  `Publisher` VARCHAR(45) NULL DEFAULT NULL,
  `Description` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `ProductIDConstrain`
    FOREIGN KEY (`ProductID`)
    REFERENCES `Gaia`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`CustomerReview`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`CustomerReview` (
  `ReviewID` INT(11) NOT NULL AUTO_INCREMENT,
  `CustID` INT(11) NULL DEFAULT NULL,
  `OrderNumber` INT(11) NULL DEFAULT NULL,
  `ProductID` INT(11) NULL DEFAULT NULL,
  `Rate` INT(11) NULL DEFAULT NULL,
  `ReviewDetail` MEDIUMTEXT NULL DEFAULT NULL,
  `ReviewDate` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  INDEX `CustID_idx` (`CustID` ASC),
  INDEX `ProductID_idx` (`ProductID` ASC),
  INDEX `OrderNumber_idx` (`OrderNumber` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Customer` (
  `CustID` INT(11) NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NULL DEFAULT NULL,
  `LastName` VARCHAR(45) NULL DEFAULT NULL,
  `Street` VARCHAR(45) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `States` CHAR(2) NULL DEFAULT NULL,
  `Zip` VARCHAR(5) NULL DEFAULT NULL,
  `Phone` CHAR(10) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `CustomerReview_ReviewID` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`CustID`),
  INDEX `fk_Customer_CustomerReview1_idx` (`CustomerReview_ReviewID` ASC),
  INDEX `Zip_idx` (`Zip` ASC),
  CONSTRAINT `fk_Customer_CustomerReview1`
    FOREIGN KEY (`CustomerReview_ReviewID`)
    REFERENCES `Gaia`.`CustomerReview` (`ReviewID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 100011
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`DVD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`DVD` (
  `ProductID` INT(11) NOT NULL,
  `DVDName` VARCHAR(100) NULL DEFAULT NULL,
  `PulisherTime` YEAR NULL DEFAULT NULL,
  `Description` LONGTEXT NULL DEFAULT NULL,
  `Product_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`ProductID`),
  INDEX `fk_DVD_Product1_idx` (`Product_ProductID` ASC),
  CONSTRAINT `ProductIDCons`
    FOREIGN KEY (`ProductID`)
    REFERENCES `Gaia`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_DVD_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `Gaia`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`HardinessZone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`HardinessZone` (
  `Zip` VARCHAR(5) NOT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `State` CHAR(2) NULL DEFAULT NULL,
  `Zone` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Zip`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Login` (
  `UserName` VARCHAR(20) NOT NULL,
  `Password` VARCHAR(45) NULL DEFAULT NULL,
  `CustID` INT(11) NULL DEFAULT NULL,
  `Customer_CustID` INT(11) NULL DEFAULT NULL,
  `Alert` CHAR(1) NULL DEFAULT NULL,
  `UserRole` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  INDEX `fk_Login_Customer_idx` (`Customer_CustID` ASC),
  INDEX `CustID_idx` (`CustID` ASC),
  CONSTRAINT `CustID_Constrain`
    FOREIGN KEY (`CustID`)
    REFERENCES `Gaia`.`Customer` (`CustID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Login_Customer`
    FOREIGN KEY (`Customer_CustID`)
    REFERENCES `Gaia`.`Customer` (`CustID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`OrderLine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`OrderLine` (
  `OrderNumber` INT(11) NOT NULL AUTO_INCREMENT,
  `ProductID` INT(11) NULL DEFAULT '0',
  `Quantity` INT(11) NULL DEFAULT NULL,
  `Orders_OrderNumber` INT(11) NULL DEFAULT NULL,
  `subTotal` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`OrderNumber`),
  INDEX `fk_OrderLine_Orders1_idx` (`Orders_OrderNumber` ASC),
  INDEX `ProductID_idx` (`ProductID` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Orders` (
  `OrderNumber` INT(11) NOT NULL AUTO_INCREMENT,
  `CustID` INT(11) NULL DEFAULT NULL,
  `PurchaseDate` DATETIME NULL DEFAULT NULL,
  `Customer_CustID` INT(11) NULL DEFAULT NULL,
  `isProcessed` TINYTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`OrderNumber`),
  INDEX `fk_Order_Customer1_idx` (`Customer_CustID` ASC),
  INDEX `CustID_idx` (`CustID` ASC),
  CONSTRAINT `CustID`
    FOREIGN KEY (`CustID`)
    REFERENCES `Gaia`.`Customer` (`CustID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`Customer_CustID`)
    REFERENCES `Gaia`.`Customer` (`CustID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`PlantCategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`PlantCategory` (
  `PlantCatID` INT(11) NOT NULL,
  `PlantCatName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`PlantCatID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`Plant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Plant` (
  `ProductID` INT(11) NOT NULL,
  `PlantCatID` INT(11) NULL DEFAULT NULL,
  `PlantName` VARCHAR(45) NULL DEFAULT NULL,
  `SunTolerance` VARCHAR(45) NULL DEFAULT NULL,
  `BlossomColor` VARCHAR(45) NULL DEFAULT NULL,
  `BotanicalName` VARCHAR(45) NULL DEFAULT NULL,
  `WaterRequirement` VARCHAR(45) NULL DEFAULT NULL,
  `ContainerSize` VARCHAR(45) NULL DEFAULT NULL,
  `MatureLength` VARCHAR(45) NULL DEFAULT NULL,
  `AdditionalChar` MEDIUMTEXT NULL DEFAULT NULL,
  `Product_ProductID` INT(11) NOT NULL,
  `PlantCategory_PlantCatID` INT(11) NOT NULL,
  PRIMARY KEY (`ProductID`),
  INDEX `fk_Plant_Product1_idx` (`Product_ProductID` ASC),
  INDEX `fk_Plant_PlantCategory1_idx` (`PlantCategory_PlantCatID` ASC),
  INDEX `PlantCatID_idx` (`PlantCatID` ASC),
  CONSTRAINT `PlantCatID`
    FOREIGN KEY (`PlantCatID`)
    REFERENCES `Gaia`.`PlantCategory` (`PlantCatID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `ProductID`
    FOREIGN KEY (`ProductID`)
    REFERENCES `Gaia`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Plant_PlantCategory1`
    FOREIGN KEY (`PlantCategory_PlantCatID`)
    REFERENCES `Gaia`.`PlantCategory` (`PlantCatID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plant_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `Gaia`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`Plant_Zone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Plant_Zone` (
  `ProductID` INT(11) NOT NULL,
  `Zone` INT(11) NOT NULL,
  PRIMARY KEY (`ProductID`, `Zone`),
  CONSTRAINT `ProductIDC`
    FOREIGN KEY (`ProductID`)
    REFERENCES `Gaia`.`Plant` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Gaia`.`Tools`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Gaia`.`Tools` (
  `ProductID` INT(11) NOT NULL,
  `ToolName` VARCHAR(150) NULL DEFAULT NULL,
  `AdditionalChar` LONGTEXT NULL DEFAULT NULL,
  `Product_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `ProductIDConst`
    FOREIGN KEY (`ProductID`)
    REFERENCES `Gaia`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
