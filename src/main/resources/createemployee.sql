CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` INT NOT NULL AUTO_INCREMENT,
  `emp_name` VARCHAR(100) NOT NULL,
  `emp_nic` VARCHAR(15) NOT NULL,
  `emp_email` VARCHAR(50) NOT NULL,
  `emp_mobileNo` VARCHAR(50) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `user_type` ENUM('admin', 'employee') NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
