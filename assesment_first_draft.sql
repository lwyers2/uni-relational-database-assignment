-- phpMyAdmin SQL Dump
-- version 5.1.1-2.fc35
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2022 at 07:00 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assesment_first_draft`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessibility`
--

CREATE TABLE `accessibility` (
  `accessibility_id` int NOT NULL,
  `accessibility_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accessibility`
--

INSERT INTO `accessibility` (`accessibility_id`, `accessibility_description`) VALUES
(16, 'Accessible bathroom'),
(17, 'Accessible bathroom'),
(18, 'Assistive listening devices available'),
(19, 'Assistive listening devices in meeting rooms'),
(20, 'In-room accessibility'),
(21, 'Stair-free path to entrance'),
(22, 'Well-lit path to entrance'),
(23, 'Wheelchair accessible (may have limitations)'),
(24, 'Wheelchair-accessible lounge'),
(25, 'Wheelchair-accessible meeting spaces/business centre'),
(26, 'Wheelchair-accessible on-site restaurant'),
(27, 'Wheelchair-accessible parking'),
(28, 'Wheelchair-accessible path to lift'),
(29, 'Wheelchair-accessible public washroom'),
(30, 'Wheelchair-accessible registration desk');

-- --------------------------------------------------------

--
-- Table structure for table `access_req_book`
--

CREATE TABLE `access_req_book` (
  `accessibility_id` int NOT NULL,
  `room_booking_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `access_req_book`
--

INSERT INTO `access_req_book` (`accessibility_id`, `room_booking_id`) VALUES
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(18, 2),
(20, 3),
(21, 3);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `line_1` varchar(60) NOT NULL,
  `line_2` varchar(60) NOT NULL,
  `line_3` varchar(60) NOT NULL,
  `postcode_zip` varchar(60) NOT NULL,
  `city` varchar(85) NOT NULL,
  `region_id` int NOT NULL,
  `country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `line_1`, `line_2`, `line_3`, `postcode_zip`, `city`, `region_id`, `country_id`) VALUES
(1, 'Copthorne Hotel Manchester', 'Clippers Quay', 'Salford Quays', 'M50 3SN', 'Manchester', 1, 5),
(2, '35', 'Havey', 'Parkway', '7400', 'Jolo', 14, 7),
(3, '86', 'Cardinal', 'Avenue', '95251 CEDEX', 'Manchester', 25, 2),
(4, '48600', 'Blackbird', 'Plaza', '1808', 'Nangka', 12, 10),
(5, '2', 'Rowland', 'Point', '14661', 'Manchester', 14, 1),
(6, '1349', 'Muir', 'Avenue', 'bt56yh', 'Hesi', 11, 5),
(7, '90241', 'Debra', 'Court', 'TF6', 'Manchester', 3, 10),
(8, '52', 'Sundown', 'Street', 'bt56yh', 'Maiwal', 20, 10),
(9, '81', 'Gateway', 'Trail', '39120', 'Manchester', 22, 1),
(10, '750', 'Barnett', 'Alley', 'bt56yh', 'Muraharjo', 2, 6),
(11, '3583', 'Summer Ridge', 'Crossing', 'bt56yh', 'Yangambi', 12, 7),
(12, '4226', 'Hollow Ridge', 'Junction', 'bt56yh', 'Ketapang', 4, 1),
(13, '96131', 'Anzinger', 'Road', '626020', 'Nizhnyaya Tavda', 1, 8),
(14, '5021', 'Lerdahl', 'Parkway', '62-660', 'Manchester', 7, 7),
(15, '5653', 'Carberry', 'Terrace', '543058', 'Pamplona', 24, 9),
(16, '49693', 'Dayton', 'Terrace', '38477', 'Providencia', 3, 7),
(17, '640', 'Sage', 'Crossing', '838-0813', 'Yorii', 7, 5),
(18, '727', 'Buena Vista', 'Pass', 'bt56yh', 'Fontanka', 11, 10),
(19, '35879', 'Village', 'Pass', 'bt56yh', 'Jambean', 23, 10),
(20, '85', 'Fulton', 'Junction', 'bt56yh', 'Fengqiao', 18, 6),
(21, '8', 'Paget', 'Circle', '4640-301', 'Chãos', 23, 9),
(22, '50416', 'Mallory', 'Plaza', '6700', 'Takub', 20, 8),
(23, '3', 'Magdeline', 'Parkway', 'bt56yh', 'Danané', 16, 9),
(24, '43896', 'Sunnyside', 'Point', '45071', 'Toledo', 24, 2),
(25, '5733', 'Sutteridge', 'Pass', 'bt56yh', 'Hedi', 14, 9),
(26, '8693', 'Cordelia', 'Park', 'bt56yh', 'Kapakabisa', 14, 10),
(27, '031', 'Calypso', 'Point', 'bt56yh', 'Bardīyah', 1, 3),
(28, '24816', 'Fordem', 'Pass', 'bt56yh', 'Jinhua', 16, 9),
(29, '87', 'Spenser', 'Plaza', 'bt56yh', 'Duy Xuyên', 4, 3),
(30, '4', 'Clyde Gallagher', 'Drive', 'bt56yh', 'Caringin', 22, 1),
(31, '53', 'Carioca', 'Street', '51841', 'Kotli Lohārān', 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `amenity_id` int NOT NULL,
  `amenity_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `amenity`
--

INSERT INTO `amenity` (`amenity_id`, `amenity_name`) VALUES
(1, '146 smoke-free guestrooms'),
(2, 'Daily housekeeping'),
(3, 'Indoor pool'),
(4, 'Breakfast available'),
(5, 'Self parking'),
(6, 'UNESCO Sustainable Property'),
(7, 'Terrace'),
(8, '24-hour front desk'),
(9, 'Coffee/tea in a common area'),
(10, 'Computer station'),
(11, 'Front desk safe'),
(12, 'Free WiFi');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `bed_id` int NOT NULL,
  `bed_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sleeps` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`bed_id`, `bed_name`, `sleeps`) VALUES
(1, 'Single', 1),
(2, 'Double', 2),
(3, 'Queen', 2),
(4, 'King', 2),
(5, 'Doube-bunk', 2),
(6, 'Triple-bunk', 3),
(7, 'Sofa-bed', 1),
(8, 'Double-Sofa-bed', 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int NOT NULL,
  `booking_ref` varchar(20) NOT NULL,
  `payment_type` tinyint(1) NOT NULL,
  `payment_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `reward_points` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_ref`, `payment_type`, `payment_id`, `customer_id`, `check_in_date`, `check_out_date`, `reward_points`) VALUES
(1, 'a123456a789a123', 0, 1, 1, '2021-11-10', '2021-11-12', 2),
(2, '12345678912345678985', 0, 2, 1, '2021-11-10', '2021-11-12', 2),
(3, '987654321987654321', 0, 10, 3, '2021-11-01', '2021-11-03', 1),
(4, '456123789123456789', 0, 11, 3, '2021-08-01', '2021-08-03', 1),
(5, '456123456123456', 0, 12, 4, '2021-10-01', '2021-10-03', 3),
(6, '20characters236987po', 0, 5, 6, '2021-11-08', '2021-11-09', 1),
(7, '302haracters236987po', 0, 7, 7, '2021-11-08', '2021-11-09', 1),
(8, '456789456789456789', 0, 14, 11, '2021-11-09', '2021-11-10', 1),
(11, 'BOOKREF123', 0, 1, 21, '2021-11-05', '2021-11-06', 1),
(15, 'BOOKREF125', 0, 1, 21, '2021-11-05', '2021-11-06', 1),
(16, 'BOOKREF129', 0, 1, 21, '2021-11-05', '2021-11-06', 1),
(17, 'BOOKREF130', 0, 1, 21, '2021-11-05', '2021-11-06', 1),
(18, 'BOOKREF140', 0, 15, 22, '2021-11-08', '2021-11-09', 1),
(20, 'BOOKREF145', 0, 17, 22, '2021-11-08', '2021-11-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_date`
--

CREATE TABLE `booking_date` (
  `booking_date_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `date_booked` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_date`
--

INSERT INTO `booking_date` (`booking_date_id`, `booking_id`, `date_booked`) VALUES
(1, 4, '2021-08-01'),
(2, 4, '2021-08-02'),
(3, 5, '2021-10-01'),
(4, 5, '2021-10-02'),
(5, 6, '2021-11-08'),
(6, 7, '2021-11-08'),
(7, 8, '2021-11-09'),
(8, 16, '2021-11-05'),
(9, 17, '2021-11-05'),
(10, 18, '2021-11-08'),
(11, 20, '2021-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `card_payment`
--

CREATE TABLE `card_payment` (
  `card_payment_id` int NOT NULL,
  `cardholder_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_type_id` int NOT NULL,
  `card_long_number` varbinary(255) NOT NULL,
  `expiry_date` varbinary(255) NOT NULL,
  `CVC` varbinary(255) NOT NULL,
  `payment_id` int NOT NULL,
  `address_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `card_payment`
--

INSERT INTO `card_payment` (`card_payment_id`, `cardholder_name`, `card_type_id`, `card_long_number`, `expiry_date`, `CVC`, `payment_id`, `address_id`) VALUES
(1, 'Mr Customer McCustomer', 1, 0x919bfd51197f170b3c6baf1d36f319cbcf59217db40f31138f62decf27dffdca, 0x94d214a56b2849e15a47c929f1ea9e4f, 0xe8d8ab73ec82232d925e5d16e6ab0272, 10, 3),
(2, 'Mrs Cust Omer', 3, 0xc6ad73effa95206bc3127bb1408baaffec0be441e1f5ba467131fcd9b0d3cdb7, 0xd618ef0dca20c4e5c038edd846d6651c, 0x346163017531c0887881aa231bdd87cc, 11, 4),
(3, 'Mrs Mike Ovid', 3, 0x35343135203636363820333231312038383838, 0x323032352d30352d3038, 0x333333, 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `card_type_id` int NOT NULL,
  `card_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `card_type`
--

INSERT INTO `card_type` (`card_type_id`, `card_type_name`) VALUES
(1, 'American Express'),
(2, 'Dinners Club'),
(3, 'Visa Electron'),
(4, 'Maestro'),
(5, 'mastercard'),
(6, 'Visa');

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE `check_in` (
  `check_in_id` int NOT NULL,
  `check_in_time` time NOT NULL,
  `check_out_time` time NOT NULL,
  `check_in_instructions` text NOT NULL,
  `req_at_check_in` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `check_in`
--

INSERT INTO `check_in` (`check_in_id`, `check_in_time`, `check_out_time`, `check_in_instructions`, `req_at_check_in`) VALUES
(1, '14:00:00', '12:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\nGovernment-issued photo ID may be required\nMinimum check-in age is 18'),
(2, '15:00:00', '11:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(3, '16:00:00', '10:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(4, '10:00:00', '10:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(5, '14:00:00', '10:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(6, '11:00:00', '11:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(7, '14:00:00', '09:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(8, '15:00:00', '12:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(9, '10:00:00', '17:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18'),
(10, '16:00:00', '16:00:00', 'If you are planning to arrive after midnight, please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival. For more details, please contact the property using the information on the booking confirmation.', 'Credit card, debit card or cash deposit required for incidental charges\r\nGovernment-issued photo ID may be required\r\nMinimum check-in age is 18');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `country_name` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Northern Ireland'),
(2, 'Ireland'),
(3, 'Scotland'),
(4, 'Wales'),
(5, 'England'),
(6, 'France'),
(7, 'Spain'),
(8, 'Columbia'),
(9, 'Cuba'),
(10, 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `customer_type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_type`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `date_surcharge`
--

CREATE TABLE `date_surcharge` (
  `date_surcharge_id` int NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `date_surcharge`
--

INSERT INTO `date_surcharge` (`date_surcharge_id`, `date`, `amount`) VALUES
(1, '2021-08-07', '10.00'),
(2, '2021-08-08', '10.00'),
(3, '2021-08-09', '10.00'),
(4, '2021-08-10', '10.00'),
(5, '2021-08-11', '10.00'),
(6, '2021-08-12', '10.00'),
(7, '2021-08-12', '10.00'),
(8, '2021-08-13', '10.00'),
(9, '2021-08-14', '10.00'),
(10, '2021-08-15', '10.00'),
(11, '2021-08-16', '10.00'),
(12, '2021-08-17', '10.00'),
(13, '2021-12-18', '15.00'),
(14, '2021-12-19', '15.00'),
(15, '2021-12-20', '15.00'),
(16, '2021-12-21', '15.00'),
(17, '2021-12-22', '15.00'),
(18, '2021-12-23', '15.00'),
(19, '2021-12-24', '15.00'),
(20, '2021-12-25', '15.00'),
(21, '2021-12-26', '15.00'),
(22, '2021-12-27', '15.00'),
(23, '2021-12-28', '15.00'),
(24, '2021-12-29', '15.00'),
(25, '2021-12-30', '15.00'),
(26, '2021-12-31', '15.00'),
(27, '2021-11-08', '10.50');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `extra_id` int NOT NULL,
  `extra_name` varchar(30) NOT NULL,
  `extra_description` varchar(200) NOT NULL,
  `extra_price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`extra_id`, `extra_name`, `extra_description`, `extra_price`) VALUES
(1, 'breakfast', 'breakfast served until 11am', '7.50'),
(2, 'breakfast', 'breakfast served until 10am', '8.50'),
(3, 'dinner', '3 course set menu', '57.90'),
(4, 'dinner', 'buffet', '19.99'),
(5, 'late check out', 'Check out at 4pm', '10.00'),
(7, 'Big breakfast', 'best breakfast ever', '20.00'),
(8, 'Big breakfast', 'best breakfast ever', '20.00'),
(9, 'Big breakfast', 'best breakfast ever', '20.00'),
(10, 'Big breakfast', 'best breakfast ever', '20.00');

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `feature_id` int NOT NULL,
  `feature_name` varchar(30) NOT NULL,
  `feature_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`feature_id`, `feature_name`, `feature_description`) VALUES
(1, 'Internet', 'Free WiFi and wired Internet access'),
(2, 'Entertainment', 'Flat-screen TV with digital channels'),
(3, 'Food & Drink', 'Coffee/tea maker, electric kettle, 24-hour room service and free bottled water'),
(4, 'Sleep', 'Blackout curtains and bed sheets'),
(5, 'Bathroom', 'Private bathroom, bathtub or shower, bathrobes and slippers'),
(6, 'Practical', 'Safe, iron/ironing board and desk; rollaway/extra beds and free cots/infant beds available on request'),
(7, 'Comfort', 'Air conditioning and daily housekeeping'),
(8, 'Accessibility', 'Height-adjustable showerhead and vibrating pillow alarm'),
(9, 'Need to know', 'Weekly housekeeping, no cots (infant beds) or rollaway/extra beds available'),
(10, 'Layout', 'Bedroom, living room and sitting area');

-- --------------------------------------------------------

--
-- Table structure for table `fees_policies`
--

CREATE TABLE `fees_policies` (
  `fee_pol_id` int NOT NULL,
  `fee_pol_name` varchar(30) NOT NULL,
  `fee_pol_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fees_policies`
--

INSERT INTO `fees_policies` (`fee_pol_id`, `fee_pol_name`, `fee_pol_description`) VALUES
(1, 'Optional extras', 'Early check-in can be arranged for an extra charge of GBP 15.00 (subject to availability) Late checkout can be arranged for an extra charge of GBP 15.00 (subject to availability) Housekeeping is available for an additional fee.\r\n'),
(2, 'Parking', 'Parking is available nearby and costs GBP 9.00 per day\r\n'),
(3, 'Optional extras', 'Early check-in can be arranged for an extra charge of GBP 15.00 (subject to availability) Late checkout can be arranged for an extra charge of GBP 15.00 (subject to availability) Housekeeping is available for an additional fee.\r\n'),
(4, 'Parking', 'Parking is available nearby and costs GBP 9.00 per day\r\n'),
(5, 'Hygiene & cleanliness', 'This property advises that enhanced cleaning and guest safety measures are currently in place. Disinfectant is used to clean the property, and commonly touched surfaces are cleaned with disinfectant between stays. Social distancing measures are in place and guests are provided with hand sanitiser.'),
(6, 'Policies', 'This property accepts Visa, Mastercard, debit cards and cash.'),
(7, 'Also known as', 'Tune Hotel Liverpool City Centre, Tune Hotel Liverpool Hotel, Tune Hotel Liverpool Liverpool ,Tune Hotel Liverpool Hotel Liverpool, Tune Liverpool City Centre, Tune Hotel Liverpool Hotel, Tune Hotel Liverpool Liverpool, Tune Hotel Liverpool Hotel Liverpool');

-- --------------------------------------------------------

--
-- Table structure for table `geolocation`
--

CREATE TABLE `geolocation` (
  `geolocation_id` int NOT NULL,
  `latitude` decimal(15,10) NOT NULL,
  `longitude` decimal(15,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `geolocation`
--

INSERT INTO `geolocation` (`geolocation_id`, `latitude`, `longitude`) VALUES
(1, '53.4679170000', '-2.2846870000'),
(2, '-34.6250746000', '-58.4879365000'),
(3, '22.5812930000', '113.8961290000'),
(4, '52.0997957000', '39.7742561000'),
(5, '23.3540910000', '116.6819720000'),
(6, '-14.3312960000', '-170.7269854000'),
(7, '-6.7839000000', '111.6394000000'),
(8, '5.0377396000', '7.9127945000'),
(9, '49.9321242000', '17.8000468000'),
(10, '37.8457328000', '139.2342041000'),
(11, '29.4767050000', '121.8693390000'),
(12, '23.0471910000', '112.4650910000'),
(13, '-18.8200534000', '49.0652963000'),
(14, '22.2016816000', '-97.8367954000'),
(15, '58.4005878000', '13.7982616000'),
(16, '-20.3656796000', '57.6424881000'),
(17, '-34.8234058000', '-58.1875170000'),
(18, '9.3191109000', '-70.6032995000'),
(19, '36.6390330000', '114.4620610000'),
(20, '48.7786908000', '-123.7079417000'),
(21, '28.8521570000', '115.6626760000'),
(22, '32.5816265000', '35.8695307000'),
(23, '11.1119720000', '125.5006340000'),
(24, '-4.9652806000', '23.4478441000'),
(25, '32.9307380000', '106.9089660000'),
(26, '-4.1731846000', '-38.4609450000'),
(27, '49.9481168000', '14.6774529000'),
(28, '20.1591959000', '-100.5064114000'),
(29, '-7.9926410000', '112.6241170000'),
(30, '13.2944036000', '123.4832790000'),
(31, '48.8787150000', '17.2335614000'),
(32, '52.3670698000', '5.2156739000'),
(33, '49.7291343000', '18.2354187000'),
(34, '36.9628830000', '115.2609680000'),
(35, '8.9420217000', '-69.4620671000'),
(36, '-21.6368446000', '-41.0484428000'),
(37, '-0.6349893000', '117.4086488000'),
(38, '55.9835962000', '37.1465904000'),
(39, '43.7728532000', '26.5290794000'),
(40, '-21.4099469000', '-48.5076885000'),
(41, '26.5836000000', '104.8570630000');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_payment`
--

CREATE TABLE `gift_card_payment` (
  `gift_card_payment_id` int NOT NULL,
  `gift_card_number` varbinary(255) NOT NULL,
  `gift_card_pin` varbinary(255) NOT NULL,
  `payment_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gift_card_payment`
--

INSERT INTO `gift_card_payment` (`gift_card_payment_id`, `gift_card_number`, `gift_card_pin`, `payment_id`) VALUES
(1, 0x88779c62e571273fd6507d1a2ecf031055670b6826d9c65eae7eddcc68b0ef45, 0xf741c2a8c57f2c528bbfcb30263a3bcb, 5),
(2, 0x229020105f3188c02b9a2152b9afb46f036aa3ecfb1d44bea40e51265f53a82d, 0x5692d7a222e430a6d4e4f275dc5d371a, 6),
(3, 0xa9147dd323b71b23a6d4eb1f80abbdd635e89a48d5ad2e0407ea9c72730e6f5e, 0xae9d6ea5b63acecf759f8045e41af6b8, 7),
(4, 0xe7fc7c6bf7b5a8b7baed10e1fa5e23f4bb1e5c942e085152406c4e1199622967, 0x76565c9b88f3306420e33cb0916ed12f, 8),
(6, 0x91f6b1668832d32a1eddbf376e6c28323e1ce2c48145fe40b6d97f4c63d7d48c, 0xffdd4e2baa291fcb0aaecf4f3bc9e7ff, 9),
(7, 0xa9147dd323b71b23a6d4eb1f80abbdd635e89a48d5ad2e0407ea9c72730e6f5e, 0xae9d6ea5b63acecf759f8045e41af6b8, 7),
(8, 0xa9147dd323b71b23a6d4eb1f80abbdd635e89a48d5ad2e0407ea9c72730e6f5e, 0xae9d6ea5b63acecf759f8045e41af6b8, 7),
(9, 0xa9147dd323b71b23a6d4eb1f80abbdd635e89a48d5ad2e0407ea9c72730e6f5e, 0xae9d6ea5b63acecf759f8045e41af6b8, 15);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int NOT NULL,
  `hotel_name` varchar(40) NOT NULL,
  `hotel_description` varchar(255) NOT NULL,
  `star_rating` int NOT NULL,
  `address_id` int NOT NULL,
  `geolocation_id` int NOT NULL,
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `check_in_id` int NOT NULL,
  `covid_19_hygiene` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `hotel_description`, `star_rating`, `address_id`, `geolocation_id`, `theme`, `check_in_id`, `covid_19_hygiene`) VALUES
(2, 'Copthorne Hotel Manchester', 'Waterfront hotel with restaurant, near Salford Quays', 4, 1, 1, 'Waterfront hotel', 1, 'Enhanced health and safety measures\nThis property advises that enhanced cleaning and guest safety measures are currently in place.\nProperty is cleaned with disinfectant\nProperty confirms they are implementing enhanced cleaning measures\nShield between guests and staff in main contact areas\nSocial distancing measures are in place\nGap period enforced between guest stays - 24 hours\nIndividually wrapped food options are available\nGuests are provided with free hand sanitiser'),
(3, 'Summer Nebula Hotel & Spa', 'Beach resort with multiple pools', 2, 23, 19, 'beach', 6, 'covid 19 rules and guidlines'),
(4, 'Twin Vertex Resort', 'Exclusive hotel boasting over 200 rooms', 5, 26, 12, 'exclusive', 4, 'covid 19 rules and guidlines'),
(5, 'Dual Plaza Hotel', 'From the outside this house looks old, but wonderful. It has been built with yellow pine wood and has red pine wooden decorations. Large, triangular windows allow enough light to enter the home and have been added to the house in a mostly symmetric way.', 2, 31, 34, 'old', 5, 'covid 19 rules and guidlines'),
(6, 'Coat and arms', 'traditional hotel in city centre', 5, 14, 41, 'traditional', 10, 'covid 19 rules and guidlines'),
(7, 'Friendly resort', 'happy fun time resort', 2, 9, 40, 'budget ', 2, ''),
(8, 'Premier Inn', 'Budget hotel in the city centre', 3, 3, 39, 'budget', 4, 'covid 19 rules and guidlines'),
(9, 'Manchester City hotel', 'Exclusive city centre hotel', 4, 5, 38, 'Exclusive for business', 6, 'covid 19 rules and guidlines');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_accessibility`
--

CREATE TABLE `hotel_accessibility` (
  `hotel_id` int NOT NULL,
  `accessibility_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel_accessibility`
--

INSERT INTO `hotel_accessibility` (`hotel_id`, `accessibility_id`) VALUES
(2, 17),
(2, 16),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_amenity`
--

CREATE TABLE `hotel_amenity` (
  `hotel_id` int NOT NULL,
  `amenity_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel_amenity`
--

INSERT INTO `hotel_amenity` (`hotel_id`, `amenity_id`) VALUES
(2, 1),
(2, 7),
(2, 8),
(2, 9),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_fee_policy`
--

CREATE TABLE `hotel_fee_policy` (
  `hotel_id` int NOT NULL,
  `fee_pol_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel_fee_policy`
--

INSERT INTO `hotel_fee_policy` (`hotel_id`, `fee_pol_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_landmark`
--

CREATE TABLE `hotel_landmark` (
  `hotel_id` int NOT NULL,
  `landmark_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel_landmark`
--

INSERT INTO `hotel_landmark` (`hotel_id`, `landmark_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(9, 6),
(9, 3),
(9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `landmark`
--

CREATE TABLE `landmark` (
  `landmark_id` int NOT NULL,
  `landmark_name` varchar(30) NOT NULL,
  `landmark_description` varchar(255) NOT NULL,
  `geolocation_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `landmark`
--

INSERT INTO `landmark` (`landmark_id`, `landmark_name`, `landmark_description`, `geolocation_id`) VALUES
(1, 'Alcatraz', 'big prison', 20),
(2, 'Titanic', 'big dead boat', 20),
(3, 'Garden', 'walled garden', 20),
(4, 'Hacienda nightclub', 'famous nightclub in Manchester', 20),
(5, 'Museum', 'history and things', 20),
(6, 'Gallery', 'different art and things', 20),
(7, 'Zoo', 'diffrent animals will live here', 20),
(8, 'Aquarium', 'different water animals live here', 20),
(9, 'History Statue', 'old man on horse', 20),
(10, 'Graveyard', 'famous graveyard inspires authors', 20),
(11, 'Forest', 'place of natural beauty', 20);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `pay_by_type` tinyint NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `pay_by_type`, `payment_amount`) VALUES
(1, 1, '45.56'),
(2, 1, '45.66'),
(3, 1, '77.63'),
(4, 1, '160.98'),
(5, 2, '639.22'),
(6, 2, '99.56'),
(7, 2, '356.99'),
(8, 2, '221.22'),
(9, 2, '321.55'),
(10, 3, '89.98'),
(11, 3, '45.66'),
(12, 3, '632.12'),
(13, 3, '67.76'),
(14, 3, '225.52'),
(15, 1, '80.00'),
(17, 1, '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `photo_url`
--

CREATE TABLE `photo_url` (
  `photo_url_id` int NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `photo_title` varchar(20) NOT NULL,
  `photo_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `photo_url`
--

INSERT INTO `photo_url` (`photo_url_id`, `photo_url`, `photo_title`, `photo_description`) VALUES
(1, 'http://dummyimage.com/163x100.png/5fa2dd/ffffff', 'bi-directional', 'Other physeal fracture of unspecified calcaneus, initial encounter for open fracture'),
(2, 'http://dummyimage.com/182x100.png/5fa2dd/ffffff', 'empowering', 'Chalazion right upper eyelid'),
(3, 'http://dummyimage.com/131x100.png/5fa2dd/ffffff', 'conglomeration', 'Nondisplaced fracture of proximal phalanx of right little finger'),
(4, 'http://dummyimage.com/198x100.png/5fa2dd/ffffff', 'tangible', 'Nondisplaced fracture of lateral end of left clavicle, subsequent encounter for fracture with routine healing'),
(5, 'http://dummyimage.com/194x100.png/dddddd/000000', 'instruction set', 'Bitten by sea lion'),
(6, 'http://dummyimage.com/149x100.png/dddddd/000000', 'internet solution', 'Other dislocation of unspecified ulnohumeral joint, initial encounter'),
(7, 'http://dummyimage.com/224x100.png/ff4444/ffffff', 'software', 'Other degenerative disorders of globe, unspecified eye'),
(8, 'http://dummyimage.com/212x100.png/dddddd/000000', 'client-server', 'Burns involving 70-79% of body surface with 0% to 9% third degree burns'),
(9, 'http://dummyimage.com/137x100.png/ff4444/ffffff', 'Virtual', 'Low-tension glaucoma, unspecified eye, stage unspecified'),
(10, 'http://dummyimage.com/234x100.png/ff4444/ffffff', 'leading edge', 'Pathological fracture in other disease, other site, initial encounter for fracture'),
(11, 'http://dummyimage.com/182x100.png/cc0000/ffffff', 'Profound', 'Other mechanical complication of intrauterine contraceptive device, sequela'),
(12, 'http://dummyimage.com/153x100.png/ff4444/ffffff', 'Proactive', 'Neuromuscular scoliosis, lumbar region'),
(13, 'http://dummyimage.com/212x100.png/dddddd/000000', 'Focused', 'Burn of unspecified internal organ'),
(14, 'http://dummyimage.com/212x100.png/dddddd/000000', 'attitude-oriented', 'Other specified injuries of left hip'),
(15, 'http://dummyimage.com/237x100.png/cc0000/ffffff', 'knowledge base', 'Paralytic calcification and ossification of muscle, unspecified upper arm'),
(16, 'http://dummyimage.com/196x100.png/dddddd/000000', 'Reverse-engineered', 'Tubal pregnancy without intrauterine pregnancy'),
(17, 'http://dummyimage.com/180x100.png/ff4444/ffffff', 'Compatible', 'Superficial foreign body of other part of head, sequela'),
(18, 'http://dummyimage.com/241x100.png/dddddd/000000', 'Open-architected', 'Secondary and unspecified malignant neoplasm of lymph nodes of head, face and neck'),
(19, 'http://dummyimage.com/104x100.png/dddddd/000000', 'Seamless', 'Breakdown (mechanical) of unspecified cardiac electronic device, initial encounter'),
(20, 'http://dummyimage.com/217x100.png/5fa2dd/ffffff', 'hybrid', 'Anaphylactic reaction due to milk and dairy products, sequela'),
(21, 'http://dummyimage.com/112x100.png/dddddd/000000', 'demand-driven', 'Poisoning by saline and osmotic laxatives, intentional self-harm, initial encounter'),
(22, 'http://dummyimage.com/191x100.png/ff4444/ffffff', 'global', 'Unspecified fracture of unspecified wrist and hand'),
(23, 'http://dummyimage.com/112x100.png/ff4444/ffffff', 'Persevering', 'Postprocedural  cardiogenic shock, subsequent encounter'),
(24, 'http://dummyimage.com/243x100.png/5fa2dd/ffffff', 'support', 'Contusion of left lower leg'),
(25, 'http://dummyimage.com/236x100.png/cc0000/ffffff', 'needs-based', 'Burn of second degree of ear [any part, except ear drum]'),
(26, 'http://dummyimage.com/236x100.png/cc0000/ffffff', 'context-sensitive', 'Nondisplaced fracture of medial condyle of right tibia, subsequent encounter for open fracture type I or II with delayed healing'),
(27, 'http://dummyimage.com/134x100.png/cc0000/ffffff', 'Open-architected', 'Merkel cell carcinoma of right ear and external auricular canal'),
(28, 'http://dummyimage.com/148x100.png/dddddd/000000', 'dedicated', 'Fracture of middle third of navicular [scaphoid] bone of wrist'),
(29, 'http://dummyimage.com/196x100.png/dddddd/000000', 'Multi-channelled', 'Passenger on bus injured in collision with car, pick-up truck or van in traffic accident'),
(30, 'http://dummyimage.com/110x100.png/dddddd/000000', 'multi-tasking', 'Other accident with wheelchair (powered), sequela'),
(31, 'http://dummyimage.com/204x100.png/ff4444/ffffff', 'Function-based', 'Unspecified open wound of other specified part of neck, sequela'),
(32, 'http://dummyimage.com/132x100.png/dddddd/000000', 'Persevering', 'Other acute sinusitis'),
(33, 'http://dummyimage.com/119x100.png/dddddd/000000', 'monitoring', 'Other specified injury of femoral artery'),
(34, 'http://dummyimage.com/237x100.png/5fa2dd/ffffff', 'discrete', 'Gout due to renal impairment, unspecified elbow'),
(35, 'http://dummyimage.com/250x100.png/5fa2dd/ffffff', 'Multi-tiered', 'Gonococcal infection of musculoskeletal system'),
(36, 'http://dummyimage.com/179x100.png/ff4444/ffffff', 'De-engineered', 'Chondrolysis, unspecified hip'),
(37, 'http://dummyimage.com/250x100.png/ff4444/ffffff', 'Total', 'Torus fracture of lower end of unspecified femur, sequela'),
(38, 'http://dummyimage.com/191x100.png/5fa2dd/ffffff', 'zero defect', 'Stress fracture, right humerus, subsequent encounter for fracture with routine healing'),
(39, 'http://dummyimage.com/154x100.png/ff4444/ffffff', 'asymmetric', 'Displaced subtrochanteric fracture of unspecified femur, subsequent encounter for open fracture type I or II with delayed healing'),
(40, 'http://dummyimage.com/221x100.png/ff4444/ffffff', 'dedicated', 'Supervision of elderly primigravida and multigravida');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `price_id` int NOT NULL,
  `base_price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`price_id`, `base_price`) VALUES
(1, '92.50'),
(2, '176.85'),
(3, '190.69'),
(4, '56.54'),
(5, '78.99'),
(6, '256.30'),
(7, '100.56'),
(8, '120.66'),
(9, '240.11'),
(10, '320.26'),
(11, '89.56'),
(12, '655.23'),
(13, '456.23'),
(14, '756.22'),
(15, '88.96'),
(16, '77.44'),
(17, '89.00'),
(18, '66.33');

-- --------------------------------------------------------

--
-- Table structure for table `price_date_surcharge`
--

CREATE TABLE `price_date_surcharge` (
  `date_surcharge_id` int NOT NULL,
  `price_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `price_date_surcharge`
--

INSERT INTO `price_date_surcharge` (`date_surcharge_id`, `price_id`) VALUES
(1, 1),
(3, 3),
(27, 4);

-- --------------------------------------------------------

--
-- Table structure for table `price_extra`
--

CREATE TABLE `price_extra` (
  `extra_id` int NOT NULL,
  `price_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `price_extra`
--

INSERT INTO `price_extra` (`extra_id`, `price_id`) VALUES
(3, 1),
(1, 1),
(1, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int NOT NULL,
  `region_name` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`) VALUES
(1, 'Salford'),
(2, 'Bedfordshire'),
(3, 'Berkshire'),
(4, 'Britol'),
(5, 'Buckinghamshire'),
(6, 'Cambridgeshire'),
(7, 'Chesire'),
(8, 'City of London'),
(9, 'Cornwall'),
(10, 'Cumbria'),
(11, 'Derbyshire'),
(12, 'Devon'),
(13, 'Dorset'),
(14, 'Durham'),
(15, 'East Riding of Yorkshire'),
(16, 'East Sussex'),
(17, 'Essex'),
(18, 'Gloucestershire'),
(19, 'Greater London'),
(20, 'Greater Manchester'),
(21, 'Kilkenny'),
(22, 'Herefordshire'),
(23, 'Aberdeen'),
(24, 'Dublin'),
(25, 'Ulster'),
(26, 'Edinburgh'),
(27, 'Peebles'),
(28, 'Glasgow'),
(29, 'Catalonia'),
(30, 'Pais Vasco'),
(31, 'Cantabria'),
(32, 'Provence'),
(33, 'Aquitaine'),
(34, 'Burgundy'),
(35, 'French Alps '),
(36, 'Pays De La Loire'),
(37, 'Rhone Alpes Region');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int NOT NULL,
  `review_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `review_body` text NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_title`, `review_body`, `score`) VALUES
(1, '', 'Good location on main routes.', 10),
(2, 'Nice place for a short stay', 'The hotel was ideally situated just outside the city centre, but within a 10 minute walk of the Arndale Centre. The room was big and the bed comfortable. No lift. Was given a parking permit to park onsite.', 8),
(3, 'functional', 'very small room, tiny bathroom, carpet needs a good clean, the internet connection is incredibly slow and there are constant outages, the TV packed up after half an hour and could only be switched off through the plug. There is good insulation though, so there is no traffic noise and there was a fan in the room, brilliant as it was very hot despite the dull evening. Parking was plentiful.', 8),
(4, '', 'Good location on main routes.', 10),
(5, 'Nice place for a short stay', 'The hotel was ideally situated just outside the city centre, but within a 10 minute walk of the Arndale Centre. The room was big and the bed comfortable. No lift. Was given a parking permit to park onsite.', 8),
(6, 'functional', 'very small room, tiny bathroom, carpet needs a good clean, the internet connection is incredibly slow and there are constant outages, the TV packed up after half an hour and could only be switched off through the plug. There is good insulation though, so there is no traffic noise and there was a fan in the room, brilliant as it was very hot despite the dull evening. Parking was plentiful.', 8),
(7, '', 'Good location on main routes.', 10),
(8, 'Nice place for a short stay', 'The hotel was ideally situated just outside the city centre, but within a 10 minute walk of the Arndale Centre. The room was big and the bed comfortable. No lift. Was given a parking permit to park onsite.', 8),
(9, 'functional', 'very small room, tiny bathroom, carpet needs a good clean, the  is no traffic noise and there was a fan in the room, brilliant as it was very hot despite the dull evening. Parking was plentiful.', 8),
(10, 'Great place - would stay again', 'The stay was great. Local to the city centre. Free parking was a in the mornings.', 10),
(11, 'super league final visit 2nd time', 'could not find my friends reservation took absolutely ages to book in place looked in need of an upgrade but staff were very good and made us feel welcome', 4),
(12, 'Look for a STAY INN when on a Tight Budget', 'In the the first room we were allocated the shower toilet extract fan and shaver point did not work also the T.V  sleep pattern.. Regarding the staff they were a credit to the STAY INN and very helpfull in every way The Breakfasts were good value for money and well cooked.', 10),
(13, 'Poor', 'It was like staying in a hostel. Never ever will I stay here again.', 2),
(14, 'Disappointing', 'A rather tired budget hotel. It needs money spent on it to compare to other budget hotels. A lift and a key system post-1980 would be a start. I have stayed in worse (though not often). However, it was overpriced for what it was.', 4),
(15, 'Tiny room', 'Room too small needs updating', 4),
(16, 'Wouldn’t stay here again.', 'Your told to leave you key at the front desk, which I did. They then loose the key and blame you for loosing it when you were out. I was let into my room, I was concerned if my laptop would still be there, in case  Beds to the Manchester Arena.', 4),
(17, 'Clean but not comfortable', 'There is no comfort in this hotel at all due to the room size. The room I stayed with my wife was very small and couldn’t have the  how they managed to carve such out, disturbingly very small.', 4),
(18, 'Clean but underwhelming', 'The staff at reception were unfalteringly lovely and helpful, but the hotel did not do them justice. The bed was uncomfortable (the  to keep running out of water and at times we could only get hot water whilst the toilet was flushing. We would not stay here again.', 6),
(19, 'Small basic room but decent', 'Basic accommodation close to MEN arena for an overnight concert stay. Only 2 tea bags and milk sachets which i think it very meagre for £74 a night !! Woukd,however, stay again but request more milk and tea !!', 6),
(20, 'Nice place for a short stay', 'The hotel was ideally situated just outside the city centre, but within a 10 minute walk of the Arndale Centre. The room was big and the bed comfortable. No lift. Was given a parking permit to park onsite.', 8),
(21, 'functional', 'very small room, tiny bathroom, carpet needs a good clean, the internet connection is incredibly slow and there are constant outages, the TV packed   brilliant as it was very hot despite the dull evening. Parking was plentiful.', 8),
(22, 'Lovely little hotel', 'tawet', 8),
(23, 'Exceptional', 'Review Body', 2),
(24, 'Exceptional', 'Review Body', 6),
(25, 'Exceptional', 'Review Body0', 8),
(26, 'Exceptional', 'Review Body', 4),
(27, 'Exceptional', 'Review Body', 9),
(28, 'Exceptional', 'Review Body', 10),
(29, 'Exceptional', 'Review Body', 4),
(30, 'Exceptional', 'Review Body', 6),
(31, 'Exceptional', 'Review Body', 1),
(32, 'Exceptional', 'Review Body', 7),
(33, 'Exceptional', 'tawet', 6),
(34, 'Exceptional', 'tawet', 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int NOT NULL,
  `room_name` varchar(40) NOT NULL,
  `room_description` varchar(255) NOT NULL,
  `price_id` int NOT NULL,
  `amount_of_rooms` int NOT NULL,
  `hotel_id` int NOT NULL,
  `max_guests_children` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `room_description`, `price_id`, `amount_of_rooms`, `hotel_id`, `max_guests_children`) VALUES
(1, 'double', 'Twin Double', 1, 20, 2, 1),
(2, 'economy single', 'standard single room', 2, 15, 2, 0),
(3, 'Family room', '1 double bed, two singles and cot', 3, 7, 2, 3),
(4, 'Twin', 'Twin Room', 4, 20, 9, 1),
(5, 'Honeymoon Suite', 'high-end room with romantic settings', 5, 19, 9, 0),
(6, 'Standard Family room', '1 double bed, two singles and cot', 6, 5, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_allocation`
--

CREATE TABLE `room_allocation` (
  `room_allocation_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `room_id` int NOT NULL,
  `allocation_amount` int NOT NULL,
  `allocation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_allocation`
--

INSERT INTO `room_allocation` (`room_allocation_id`, `hotel_id`, `room_id`, `allocation_amount`, `allocation_date`) VALUES
(1, 2, 5, 50, '2021-11-09'),
(2, 2, 5, 50, '2021-11-10'),
(3, 2, 5, 20, '2021-11-11'),
(4, 2, 2, 40, '2021-11-09'),
(5, 9, 4, 5, '2021-11-08'),
(6, 9, 4, 6, '2021-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `room_bed`
--

CREATE TABLE `room_bed` (
  `bed_id` int NOT NULL,
  `room_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_bed`
--

INSERT INTO `room_bed` (`bed_id`, `room_id`) VALUES
(2, 3),
(1, 3),
(1, 3),
(2, 1),
(1, 2),
(3, 1),
(4, 5),
(1, 4),
(1, 4),
(2, 6),
(1, 6),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `room_booking_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `room_id` int NOT NULL,
  `spec_request` varchar(255) NOT NULL,
  `guest_first_name` varchar(40) NOT NULL,
  `guest_last_name` varchar(40) NOT NULL,
  `cancellation_policy` text NOT NULL,
  `terms_of_booking` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`room_booking_id`, `booking_id`, `room_id`, `spec_request`, `guest_first_name`, `guest_last_name`, `cancellation_policy`, `terms_of_booking`) VALUES
(1, 5, 6, 'N/a', 'name', 'McName', 'can be cancelled', 'lots of information that is about legal things'),
(2, 4, 1, 'extra blankets', 'christan', 'bale', 'cancelled', 'legal stuff'),
(3, 1, 2, 'n/a', 'Spider', 'man', 'no need to cancel', 'legal terms of booking'),
(4, 6, 4, 'extra curtain', 'San', 'Disk', 'can be cancelled', 'Booking all day and all night'),
(5, 6, 4, 'Extra food in  minifridge', 'Tommy ', 'Tucker', 'can be cancelled', 'Booking all day and all night'),
(6, 7, 4, 'N/A', 'Paul', 'Phoneix', 'N/a', 'N/a'),
(7, 7, 4, 'N/A', 'Marshal', 'Law', 'N/A', 'N/A'),
(8, 8, 4, '4 extra pillows', 'Bryan', 'Fury', 'N/a', 'N/a'),
(9, 16, 2, 'N/A', 'My', 'Friend', 'this is the cancellation policy', 'These are the terms of booking'),
(10, 17, 2, 'Need extra pillow', 'My', 'Friend', 'this is the cancellation policy', 'These are the terms of booking'),
(11, 18, 2, 'Need extra pillow', 'My', 'Friend', 'this is the cancellation policy', 'These are the terms of booking'),
(12, 20, 2, 'Need extra pillow', 'My', 'Friend', 'this is the cancellation policy', 'These are the terms of booking');

-- --------------------------------------------------------

--
-- Table structure for table `room_feature`
--

CREATE TABLE `room_feature` (
  `feature_id` int NOT NULL,
  `room_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_feature`
--

INSERT INTO `room_feature` (`feature_id`, `room_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `room_photo_url`
--

CREATE TABLE `room_photo_url` (
  `room_id` int NOT NULL,
  `photo_url_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_photo_url`
--

INSERT INTO `room_photo_url` (`room_id`, `photo_url_id`) VALUES
(3, 20),
(6, 5),
(3, 19),
(1, 25),
(5, 13),
(2, 8),
(4, 2),
(4, 28);

-- --------------------------------------------------------

--
-- Table structure for table `site_guest`
--

CREATE TABLE `site_guest` (
  `site_guest_id` int NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `site_guest`
--

INSERT INTO `site_guest` (`site_guest_id`, `email_address`, `first_name`, `last_name`, `mobile_number`, `customer_id`) VALUES
(2, 'gferrero0@imageshack.us', 'Goldi', 'Ferrero', '1891183795', 10),
(3, 'ariddock1@tamu.edu', 'Ameline', 'Riddock', '1772354196', 11),
(4, 'lschapiro2@nifty.com', 'Letitia', 'Schapiro', '5826672884', 12),
(5, 'csanper3@goo.ne.jp', 'Caron', 'Sanper', '1281067232', 13),
(6, 'cbold4@washington.edu', 'Cinderella', 'Bold', '6123357595', 14),
(7, 'brenals5@is.gd', 'Bruno', 'Renals', '8921839900', 15);

-- --------------------------------------------------------

--
-- Table structure for table `site_member`
--

CREATE TABLE `site_member` (
  `site_member_id` int NOT NULL,
  `email_address` varbinary(255) NOT NULL,
  `password` varbinary(255) NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `last_name` varchar(70) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `customer_id` int NOT NULL,
  `reward_points` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `site_member`
--

INSERT INTO `site_member` (`site_member_id`, `email_address`, `password`, `first_name`, `last_name`, `mobile_number`, `customer_id`, `reward_points`) VALUES
(1, 0x70706572736f6e407175622e61632e756b, 0x37633433323930646430613433613265393832353933306230616265313833363634643832346361323934323037, 'Person', 'McPerson', '1569877896', 1, 1),
(2, 0x656d61696c407175622e61632e756b, 0x31643234633661616538333331346538393163326561663961393633646535313134323463353566383965303434, 'Hotel', 'Hotelerson', '0796587975', 2, 3),
(3, 0x656d61696c61646472657373407175622e61632e756b, 0x32643939366465343735343933653937353262666465623836646466663336613031663134333036613166363762, 'Room', 'Roomliver', '123456789', 3, 2),
(4, 0x686f74656c456e746875736961737440686f746d61696c2e636f6d, 0x32373636346265363562376636656465306436386365323032333536313535653136616532623564313036356532, 'Hotel', 'Enjoyer', '+44 45695', 23, 0),
(5, 0x686f74656c456e746875736961737440686f746d61696c2e636f6d, 0x34336334313037643638656632363963383632343161616138663261626231626266633636393633653234626338, 'Hotel', 'Enjoyer', '+44 67895', 25, 0),
(6, 0x686f74656c456e746875736961737440686f746d61696c2e636f6d, 0x62666665333238393330383733313136656536343137646665653231393864393739623165663933343932353964, 'Hotel', 'Enjoyer', '+44 45895', 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `site_member_review`
--

CREATE TABLE `site_member_review` (
  `site_member_id` int NOT NULL,
  `review_id` int NOT NULL,
  `hotel_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `site_member_review`
--

INSERT INTO `site_member_review` (`site_member_id`, `review_id`, `hotel_id`) VALUES
(2, 17, 6),
(2, 31, 7),
(2, 23, 9),
(3, 10, 9),
(3, 26, 2),
(3, 18, 2),
(1, 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessibility`
--
ALTER TABLE `accessibility`
  ADD PRIMARY KEY (`accessibility_id`);

--
-- Indexes for table `access_req_book`
--
ALTER TABLE `access_req_book`
  ADD KEY `FK_access_req_book_room_booking_id` (`room_booking_id`),
  ADD KEY `FK_access_req_book_accessibility_id` (`accessibility_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_address_country_id` (`country_id`),
  ADD KEY `FK_address_region_id` (`region_id`);

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`bed_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `booking_ref` (`booking_ref`(16)),
  ADD KEY `FK_booking_payment_id` (`payment_id`),
  ADD KEY `FK_booking_customer_id` (`customer_id`);

--
-- Indexes for table `booking_date`
--
ALTER TABLE `booking_date`
  ADD PRIMARY KEY (`booking_date_id`),
  ADD KEY `FK_booking_date_booking_id` (`booking_id`);

--
-- Indexes for table `card_payment`
--
ALTER TABLE `card_payment`
  ADD PRIMARY KEY (`card_payment_id`),
  ADD KEY `FK_card_payment_payment_id` (`payment_id`),
  ADD KEY `FK_card_payment_address_id` (`address_id`),
  ADD KEY `FK_card_payment_card_type_id` (`card_type_id`);

--
-- Indexes for table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`card_type_id`);

--
-- Indexes for table `check_in`
--
ALTER TABLE `check_in`
  ADD PRIMARY KEY (`check_in_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `date_surcharge`
--
ALTER TABLE `date_surcharge`
  ADD PRIMARY KEY (`date_surcharge_id`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`extra_id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `fees_policies`
--
ALTER TABLE `fees_policies`
  ADD PRIMARY KEY (`fee_pol_id`);

--
-- Indexes for table `geolocation`
--
ALTER TABLE `geolocation`
  ADD PRIMARY KEY (`geolocation_id`);

--
-- Indexes for table `gift_card_payment`
--
ALTER TABLE `gift_card_payment`
  ADD PRIMARY KEY (`gift_card_payment_id`),
  ADD KEY `FK_gift_card_payment_payment_id` (`payment_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `FK_hotel_address_id` (`address_id`),
  ADD KEY `FK_hotel_check_in_id` (`check_in_id`),
  ADD KEY `FK_hotel_geolocation_id` (`geolocation_id`);

--
-- Indexes for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  ADD KEY `FK_hotel_accessibility_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_accessibility_accessibility_id` (`accessibility_id`);

--
-- Indexes for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  ADD KEY `FK_hotel_amenity_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_amenity_amenity_id` (`amenity_id`);

--
-- Indexes for table `hotel_fee_policy`
--
ALTER TABLE `hotel_fee_policy`
  ADD KEY `FK_hotel_fees_policies_fee_pol_id` (`fee_pol_id`),
  ADD KEY `FK_hotel_fees_policies_hotel_id` (`hotel_id`);

--
-- Indexes for table `hotel_landmark`
--
ALTER TABLE `hotel_landmark`
  ADD KEY `FK_hotel_landmark_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_landmark_landmark_id` (`landmark_id`);

--
-- Indexes for table `landmark`
--
ALTER TABLE `landmark`
  ADD PRIMARY KEY (`landmark_id`),
  ADD KEY `FK_landmark_geoocation_id` (`geolocation_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `photo_url`
--
ALTER TABLE `photo_url`
  ADD PRIMARY KEY (`photo_url_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `price_date_surcharge`
--
ALTER TABLE `price_date_surcharge`
  ADD KEY `FK_price_date_surcharge_price_id` (`price_id`),
  ADD KEY `FK_price_date_surcharge_date_surcharge_id` (`date_surcharge_id`);

--
-- Indexes for table `price_extra`
--
ALTER TABLE `price_extra`
  ADD KEY `FK_price_extra_price_id` (`price_id`),
  ADD KEY `FK_price_extra_extra_id` (`extra_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_room_price_id` (`price_id`),
  ADD KEY `FK_room_hotel_id` (`hotel_id`);

--
-- Indexes for table `room_allocation`
--
ALTER TABLE `room_allocation`
  ADD PRIMARY KEY (`room_allocation_id`),
  ADD KEY `FK_room_allocation_hotel_id` (`hotel_id`),
  ADD KEY `FK_room_allocation_room_id` (`room_id`);

--
-- Indexes for table `room_bed`
--
ALTER TABLE `room_bed`
  ADD KEY `FK_room_bed_bed_id` (`bed_id`),
  ADD KEY `FK_room_bed_room_id` (`room_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`room_booking_id`),
  ADD KEY `FK_room_booking_booking_id` (`booking_id`),
  ADD KEY `FK_room_booking_room_id` (`room_id`);

--
-- Indexes for table `room_feature`
--
ALTER TABLE `room_feature`
  ADD KEY `FK_room_feature_feature_id` (`feature_id`),
  ADD KEY `FK_room_feature_room_id` (`room_id`);

--
-- Indexes for table `room_photo_url`
--
ALTER TABLE `room_photo_url`
  ADD KEY `FK_room_photo_url_photo_url_id` (`photo_url_id`),
  ADD KEY `FK_room_photo_url_room_id` (`room_id`);

--
-- Indexes for table `site_guest`
--
ALTER TABLE `site_guest`
  ADD PRIMARY KEY (`site_guest_id`),
  ADD KEY `FK_site_guest_customer_id` (`customer_id`);

--
-- Indexes for table `site_member`
--
ALTER TABLE `site_member`
  ADD PRIMARY KEY (`site_member_id`),
  ADD KEY `FK_site_member_customer_id` (`customer_id`);

--
-- Indexes for table `site_member_review`
--
ALTER TABLE `site_member_review`
  ADD KEY `FK_site_member_review_site_member_id` (`site_member_id`),
  ADD KEY `FK_site_member_review_review_id` (`review_id`),
  ADD KEY `FK_site_member_review_hotel_id` (`hotel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessibility`
--
ALTER TABLE `accessibility`
  MODIFY `accessibility_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `amenity`
--
ALTER TABLE `amenity`
  MODIFY `amenity_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `bed_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking_date`
--
ALTER TABLE `booking_date`
  MODIFY `booking_date_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `card_payment`
--
ALTER TABLE `card_payment`
  MODIFY `card_payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `card_type`
--
ALTER TABLE `card_type`
  MODIFY `card_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `check_in`
--
ALTER TABLE `check_in`
  MODIFY `check_in_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `date_surcharge`
--
ALTER TABLE `date_surcharge`
  MODIFY `date_surcharge_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `extra_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `feature_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fees_policies`
--
ALTER TABLE `fees_policies`
  MODIFY `fee_pol_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `geolocation`
--
ALTER TABLE `geolocation`
  MODIFY `geolocation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `gift_card_payment`
--
ALTER TABLE `gift_card_payment`
  MODIFY `gift_card_payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `landmark`
--
ALTER TABLE `landmark`
  MODIFY `landmark_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `photo_url`
--
ALTER TABLE `photo_url`
  MODIFY `photo_url_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `price_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_allocation`
--
ALTER TABLE `room_allocation`
  MODIFY `room_allocation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `room_booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `site_guest`
--
ALTER TABLE `site_guest`
  MODIFY `site_guest_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_member`
--
ALTER TABLE `site_member`
  MODIFY `site_member_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_req_book`
--
ALTER TABLE `access_req_book`
  ADD CONSTRAINT `FK_access_req_book_accessibility_id` FOREIGN KEY (`accessibility_id`) REFERENCES `accessibility` (`accessibility_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_access_req_book_room_booking_id` FOREIGN KEY (`room_booking_id`) REFERENCES `room_booking` (`room_booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_address_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_address_region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_booking_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `booking_date`
--
ALTER TABLE `booking_date`
  ADD CONSTRAINT `FK_booking_date_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `card_payment`
--
ALTER TABLE `card_payment`
  ADD CONSTRAINT `FK_card_payment_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_card_payment_card_type_id` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`card_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_card_payment_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `gift_card_payment`
--
ALTER TABLE `gift_card_payment`
  ADD CONSTRAINT `FK_gift_card_payment_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_hotel_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_hotel_check_in_id` FOREIGN KEY (`check_in_id`) REFERENCES `check_in` (`check_in_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_hotel_geolocation_id` FOREIGN KEY (`geolocation_id`) REFERENCES `geolocation` (`geolocation_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  ADD CONSTRAINT `FK_hotel_accessibility_accessibility_id` FOREIGN KEY (`accessibility_id`) REFERENCES `accessibility` (`accessibility_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_hotel_accessibility_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  ADD CONSTRAINT `FK_hotel_amenity_amenity_id` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_hotel_amenity_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hotel_fee_policy`
--
ALTER TABLE `hotel_fee_policy`
  ADD CONSTRAINT `FK_hotel_fees_policies_fee_pol_id` FOREIGN KEY (`fee_pol_id`) REFERENCES `fees_policies` (`fee_pol_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_hotel_fees_policies_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hotel_landmark`
--
ALTER TABLE `hotel_landmark`
  ADD CONSTRAINT `FK_hotel_landmark_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_hotel_landmark_landmark_id` FOREIGN KEY (`landmark_id`) REFERENCES `landmark` (`landmark_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `landmark`
--
ALTER TABLE `landmark`
  ADD CONSTRAINT `FK_landmark_geoocation_id` FOREIGN KEY (`geolocation_id`) REFERENCES `geolocation` (`geolocation_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `price_date_surcharge`
--
ALTER TABLE `price_date_surcharge`
  ADD CONSTRAINT `FK_price_date_surcharge_date_surcharge_id` FOREIGN KEY (`date_surcharge_id`) REFERENCES `date_surcharge` (`date_surcharge_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_price_date_surcharge_price_id` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `price_extra`
--
ALTER TABLE `price_extra`
  ADD CONSTRAINT `FK_price_extra_extra_id` FOREIGN KEY (`extra_id`) REFERENCES `extra` (`extra_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_price_extra_price_id` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_room_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_room_price_id` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `room_allocation`
--
ALTER TABLE `room_allocation`
  ADD CONSTRAINT `FK_room_allocation_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_room_allocation_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `room_bed`
--
ALTER TABLE `room_bed`
  ADD CONSTRAINT `FK_room_bed_bed_id` FOREIGN KEY (`bed_id`) REFERENCES `bed` (`bed_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_room_bed_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FK_room_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_room_booking_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `room_feature`
--
ALTER TABLE `room_feature`
  ADD CONSTRAINT `FK_room_feature_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`feature_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_room_feature_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `room_photo_url`
--
ALTER TABLE `room_photo_url`
  ADD CONSTRAINT `FK_room_photo_url_photo_url_id` FOREIGN KEY (`photo_url_id`) REFERENCES `photo_url` (`photo_url_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_room_photo_url_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `site_guest`
--
ALTER TABLE `site_guest`
  ADD CONSTRAINT `FK_site_guest_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `site_member`
--
ALTER TABLE `site_member`
  ADD CONSTRAINT `FK_site_member_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `site_member_review`
--
ALTER TABLE `site_member_review`
  ADD CONSTRAINT `FK_site_member_review_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_site_member_review_review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_site_member_review_site_member_id` FOREIGN KEY (`site_member_id`) REFERENCES `site_member` (`site_member_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
