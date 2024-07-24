CREATE TABLE IF NOT EXISTS restaurants (
     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(50) NOT NULL,  
     image_name VARCHAR(255),
     description VARCHAR(255) NOT NULL,
     price_range_upper INT NOT NULL,
     price_range_lower INT NOT NULL,
     capacity INT NOT NULL,
     postal_code VARCHAR(50) NOT NULL,
     address VARCHAR(255) NOT NULL,
     phone_number VARCHAR(50) NOT NULL,
     created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
     updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );
 
 
 CREATE TABLE IF NOT EXISTS roles(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR (50) NOT NULL
);