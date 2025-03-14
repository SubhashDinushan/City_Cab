CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_type` VARCHAR(100) NOT NULL,
  `vehicle_price` DOUBLE NOT NULL,
  `driver_id` VARCHAR(50) NOT NULL,
  `vehicle_photo` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
