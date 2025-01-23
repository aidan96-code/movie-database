CREATE TABLE IF NOT EXISTS `movie_rentals`.`movie` (
  `idmovie` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  `release_date` YEAR NOT NULL,
  `director` VARCHAR(45) NOT NULL,
  `price` DECIMAL(2) NOT NULL,
  `points` INT NOT NULL,
  `available` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idmovie`),
  UNIQUE INDEX `idmovie_UNIQUE` (`idmovie` ASC) VISIBLE)
ENGINE = InnoDB;