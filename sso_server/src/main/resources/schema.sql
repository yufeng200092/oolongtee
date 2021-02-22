create schema sso;
use sso;

CREATE TABLE `sso`.`oauth_client_details` (
  `client_id` INT NOT NULL AUTO_INCREMENT,
  `client_secret` VARCHAR(45) NOT NULL,
  `resource_ids` VARCHAR(200) NULL,
  `scope` VARCHAR(45) NULL,
  `authorized_grant_types` VARCHAR(45) NULL,
  `web_server_redirect_uri` VARCHAR(1000) NULL,
  `authorities` VARCHAR(100) NULL,
  `access_token_validity` INT NULL,
  `refresh_token_validity` INT NULL,
  `additional_information` VARCHAR(200) NULL,
  `autoapprove` BIT NULL,
  PRIMARY KEY (`client_id`));

CREATE TABLE `sso`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `enabled` BIT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE);
