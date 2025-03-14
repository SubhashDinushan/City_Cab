CREATE TABLE IF NOT EXISTS `customer` (
  `cus_id` INT NOT NULL AUTO_INCREMENT,
  `cus_name` VARCHAR(50) NOT NULL,
  `cus_address` VARCHAR(100) NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_mobileNo` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`cus_id`),
  UNIQUE KEY `cus_id_UNIQUE` (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;