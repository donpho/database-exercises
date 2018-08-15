
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(255),
  name VARCHAR(255),
  release_date INT UNSIGNED NOT NULL,
  sales FLOAT NOT NULL DEFAULT 0,
  genre VARCHAR(255),
  PRIMARY KEY(id),
  UNIQUE (artist, name)
);

SHOW TABLES;

DESCRIBE albums;