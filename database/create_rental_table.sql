CREATE TABLE IF NOT EXISTS `movie_rentals`.`rentals` (
  `idrentals` INT NOT NULL AUTO_INCREMENT,
  `idcustomer` INT NOT NULL,
  `idmovie` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  PRIMARY KEY (`idrentals`),
  UNIQUE INDEX `idrentals_UNIQUE` (`idrentals` ASC) VISIBLE,
  INDEX `customer_idx` (`idcustomer` ASC) VISIBLE,
  INDEX `movie_idx` (`idmovie` ASC) VISIBLE,
  CONSTRAINT `customer`
    FOREIGN KEY (`idcustomer`)
    REFERENCES `movie_rental`.`customer` (`idcustomer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `movie`
    FOREIGN KEY (`idmovie`)
    REFERENCES `movie_rental`.`movie` (`idmovie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;