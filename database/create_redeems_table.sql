CREATE TABLE IF NOT EXISTS `movie_rentals`.`redeems` (
  `idredeems` INT NOT NULL AUTO_INCREMENT,
  `idcustomer` INT NOT NULL,
  `idrewards` INT NOT NULL,
  PRIMARY KEY (`idredeems`),
  UNIQUE INDEX `idredeems_UNIQUE` (`idredeems` ASC) VISIBLE,
  INDEX `customer_idx` (`idcustomer` ASC) VISIBLE,
  INDEX `rewards_idx` (`idrewards` ASC) VISIBLE,
  CONSTRAINT `customer`
    FOREIGN KEY (`idcustomer`)
    REFERENCES `movie_redeems`.`customer` (`idcustomer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `rewards`
    FOREIGN KEY (`idrewards`)
    REFERENCES `movie_redeems`.`rewards` (`idrewards`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;