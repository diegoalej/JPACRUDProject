-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema gardendb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gardendb` ;

-- -----------------------------------------------------
-- Schema gardendb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gardendb` DEFAULT CHARACTER SET utf8 ;
USE `gardendb` ;

-- -----------------------------------------------------
-- Table `plant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `plant` ;

CREATE TABLE IF NOT EXISTS `plant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS gardenuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'gardenuser'@'localhost' IDENTIFIED BY 'gardenuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gardenuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `plant`
-- -----------------------------------------------------
START TRANSACTION;
USE `gardendb`;
INSERT INTO `plant` (`id`, `name`) VALUES (1, 'Tomato');
INSERT INTO `plant` (`id`, `name`) VALUES (2, 'Lettuce');
INSERT INTO `plant` (`id`, `name`) VALUES (3, 'Spinach');
INSERT INTO `plant` (`id`, `name`) VALUES (4, 'Squash');
INSERT INTO `plant` (`id`, `name`) VALUES (5, 'Thai Pepper');

COMMIT;

