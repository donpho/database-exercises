
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist TEXT,
  name TEXT,
  release_date DATETIME NOT NULL,
  sales FLOAT NOT NULL,
  genre TEXT,
  PRIMARY KEY(id)
);

SHOW TABLES;

DESCRIBE albums;