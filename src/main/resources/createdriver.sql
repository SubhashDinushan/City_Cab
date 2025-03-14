CREATE TABLE IF NOT EXISTS `driver` (
  `driver_id` INT NOT NULL AUTO_INCREMENT,
  `driver_name` VARCHAR(100) NOT NULL,
  `driver_nic` VARCHAR(15) NOT NULL,
  `driver_licenNo` VARCHAR(50) NOT NULL,
  `driver_email` VARCHAR(50) NOT NULL,
  `driver_mobileNo` VARCHAR(50) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
