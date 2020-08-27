CREATE USER 'dbWTadmin@51.178.40.200' IDENTIFIED BY 'admin';
CREATE USER 'dbWTadmin@localhost' IDENTIFIED BY 'admin';

CREATE DATABASE dbWT CHARACTER SET utf8;


GRANT ALL PRIVILEGES ON dbWT.* TO 'dbWTadmin'@'51.178.40.200';
GRANT ALL PRIVILEGES ON dbWT.* TO 'dbWTadmin'@'localhost';

USE dbWT;

CREATE TABLE produits (
    produits_id INTEGER NOT NULL AUTO_INCREMENT,
    produits_nom VARCHAR(100),
    produits_prix DECIMAL(10,2),
    CONSTRAINT pk_produits PRIMARY KEY(produits_id)
)

INSERT INTO produits (produits_nom, produits_prix, disponibilite)
VALUES  ('petite voiture', 2.99, 1),
        ('baguette magique', 3, 1),
        ('maquettes', 15.5, 0)
