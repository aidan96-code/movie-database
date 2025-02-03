CREATE TABLE IF NOT EXISTS `movie_review`.`review` (
  `idreview` INT NOT NULL AUTO_INCREMENT,
  `idcustomer` INT NOT NULL,
  `idmovie` INT NOT NULL,
  `rating` INT NOT NULL,
  `date` DATE NOT NULL,
  'review_text' BLOB NOT NULL
  PRIMARY KEY (`idreview`),
  UNIQUE INDEX `idreview_UNIQUE` (`idreview` ASC) VISIBLE,
  INDEX `customer_idx` (`idcustomer` ASC) VISIBLE,
  INDEX `movie_idx` (`idmovie` ASC) VISIBLE,
  CONSTRAINT `customer`
    FOREIGN KEY (`idcustomer`)
    REFERENCES `movie_review`.`customer` (`idcustomer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `movie`
    FOREIGN KEY (`idmovie`)
    REFERENCES `movie_review`.`movie` (`idmovie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;