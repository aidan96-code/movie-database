CREATE TABLE IF NOT EXISTS `movie_rentals`.`rewards` (
  `idrewards` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45),
  'cost' DECIMAL(2)
  PRIMARY KEY (`idrewards`),
  UNIQUE INDEX `idrewards_UNIQUE` (`idrewards` ASC) VISIBLE)
ENGINE = InnoDB;