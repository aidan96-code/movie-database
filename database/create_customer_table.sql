CREATE TABLE IF NOT EXISTS `movie_rentals`.`customer` (
  `idcustomer` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `renting` TINYINT(1) NOT NULL,
  `created_at` DATE NOT NULL,
  `account_points` INT NOT NULL,
  `premium_membership` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idcustomer`),
  UNIQUE INDEX `idcustomer_UNIQUE` (`idcustomer` ASC) VISIBLE)
ENGINE = InnoDB;