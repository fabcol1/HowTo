-------------------- MYSQL DB INIZIALIZZAZIONE DB E USER -----------------------------------------------

CREATE DATABASE mydb;
USE mydb;
CREATE USER 'myuser'@'%' IDENTIFIED BY 'myuser';
GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'%';
FLUSH PRIVILEGES;

------------ DROP DB -------------------------------
DROP DATABASE mydb;

------------------- DROP TABLE ---------------------

DROP TABLE mytable;

------------------ CREATE TABLE AND INSERT ---------
CREATE TABLE mytable (
	id INT NOT NULL AUTO_INCREMENT,
	label VARCHAR(255),
	weburl VARCHAR(255),
	imgpath VARCHAR(255),
	PRIMARY KEY (id),
);
INSERT INTO mytable(label, weburl) VALUES ('Okex', 'https://www.okex.com/');


CREATE TABLE mytable_foreign ( 
	id INT NOT NULL AUTO_INCREMENT,
	cambio_valore DEC(20,2) NOT NULL,
	data_valore DATETIME NOT NULL,
	id_from INT NOT NULL,
	id_valuta INT NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (mytable) REFERENCES from_where(id),
);

INSERT INTO mytable_foreign(cambio_valore, data_valore, id_from, id_valuta) VALUES(10299.23, '2012-06-18 10:34:09', 1, 2);