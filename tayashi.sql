CREATE DATABASE IF NOT EXISTS `tayashi`;

USE `tayashi`;

CREATE TABLE IF NOT EXISTS `users` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstName` VARCHAR(80) NOT NULL,
    `lastName` VARCHAR(80) NOT NULL,
    `email` VARCHAR(80) NOT NULL,
    `phoneNumber` VARCHAR(10) NOT NULL,
    `street` VARCHAR(80) NOT NULL,
    `streetNumber` INT NOT NULL,
    `postalCode` VARCHAR(6) NOT NULL,
    `city` VARCHAR(80) NOT NULL,
    `password` VARCHAR(16) NOT NULL,
    `distance` INT NOT NULL,
    `shippingCost` DECIMAL NOT NULL,
    `deliveryTime` TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS `products` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `categories` VARCHAR(80) NOT NULL,
    `dishName` VARCHAR(80) NOT NULL,
    `description` TEXT NOT NULL,
    `ingredient` VARCHAR(255) NOT NULL,
    `available` BOOLEAN,
    `price` DECIMAL NOT NULL,
    `imageURL` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `contact` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(80) NOT NULL,
    `email` VARCHAR(80) NOT NULL,
    `subject` VARCHAR(80) NOT NULL,
    `description` TEXT
);

CREATE TABLE IF NOT EXISTS `ordered` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `dishName` VARCHAR(80) NOT NULL,
    `price` DECIMAL NOT NULL,
    `quantity` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `admin` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(80) NOT NULL,
    `phoneNumber` VARCHAR(10) NOT NULL,
    `street` VARCHAR(80) NOT NULL,
    `streetNumber` INT NOT NULL,
    `postalCode` VARCHAR(6) NOT NULL,
    `city` VARCHAR(80) NOT NULL,
    `password` VARCHAR(16) NOT NULL
);

CREATE TABLE IF NOT EXISTS `openDateTime` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `dayStart` DATE NOT NULL,
    `dayEnd` DATE NOT NULL,
    `openAM` TIME NOT NULL,
    `closeAM` TIME NOT NULL,
    `openPM` TIME NOT NULL,
    `closePM` TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS `team` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstName` VARCHAR(80) NOT NULL,
    `lastName` VARCHAR(80) NOT NULL,
    `imageURL` VARCHAR(255),
    `description` VARCHAR(255)
);

