CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `b_customer_id` int(15) NOT NULL,
  `b_vehicle_id` int(15) NOT NULL,
  `b_driver_id` varchar(15) NOT NULL,
  `price` varchar(50) NOT NULL,
  `passenger_count` varchar(50) NOT NULL,
  `fromm` varchar(100) NOT NULL,
  `too` varchar(100) NOT NULL,
  `departure_date` date NOT NULL,
  `return_date` date NOT NULL,
  PRIMARY KEY (`booking_id`)
  KEY `b_customer_id` (`cus_id`),
  KEY `b_vehicle_id` (`vehicle_id`),
  KEY `b_driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
