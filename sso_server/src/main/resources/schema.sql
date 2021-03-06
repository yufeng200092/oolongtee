create schema sso;
use sso;

CREATE TABLE `sso`.`oauth_client_details` (
   `id` int NOT NULL AUTO_INCREMENT,
   `client_id` varchar(45) NOT NULL,
   `client_secret` varchar(200) NOT NULL,
   `resource_ids` varchar(200) DEFAULT NULL,
   `scope` varchar(45) DEFAULT NULL,
   `authorized_grant_types` varchar(45) DEFAULT NULL,
   `web_server_redirect_uri` varchar(1000) DEFAULT NULL,
   `authorities` varchar(100) DEFAULT NULL,
   `access_token_validity` int DEFAULT NULL,
   `refresh_token_validity` int DEFAULT NULL,
   `additional_information` varchar(200) DEFAULT NULL,
   `autoapprove` bit(1) DEFAULT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `client_id_UNIQUE` (`client_id`));

CREATE TABLE `sso`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `enabled` BIT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`));

CREATE TABLE `sso`.`groups` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `group_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `sso`.`group_members` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `group_id` INT NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `sso`.`group_authorities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `group_id` INT NOT NULL,
  `authority` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `sso`.`authorities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `authority` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
