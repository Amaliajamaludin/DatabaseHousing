-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 06:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fairlane`
--

-- --------------------------------------------------------

--
-- Table structure for table `lease`
--

CREATE TABLE `lease` (
  `LeaseID` int(4) NOT NULL,
  `PropertyID` int(11) DEFAULT NULL,
  `TenantID` int(11) DEFAULT NULL,
  `Start` date DEFAULT NULL,
  `End` date DEFAULT NULL,
  `Parkingid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lease`
--

INSERT INTO `lease` (`LeaseID`, `PropertyID`, `TenantID`, `Start`, `End`, `Parkingid`) VALUES
(101, 1001, 9901, '2020-01-01', '2023-12-31', 1111),
(102, 1001, 9902, '2020-01-01', '2023-12-31', NULL),
(103, 1011, 9904, '2023-01-01', '2023-12-31', 4402),
(104, 1011, 9903, '2023-07-01', '2024-07-31', 4401),
(105, 1021, 9905, '2023-07-01', '2024-07-31', NULL),
(106, 1031, 9906, '2017-01-01', '2023-12-31', 4403),
(107, 1032, 9909, '2020-01-01', '2023-12-31', NULL),
(108, 1032, 9915, '2020-01-01', '2023-12-31', NULL),
(109, 1033, 9916, '2023-09-01', '2024-08-31', 4406),
(110, 1033, 9917, '2023-09-01', '2024-08-31', NULL),
(111, 1042, 9910, '2023-07-01', '2023-12-31', 1511),
(112, 1042, 9911, '2023-07-01', '2023-12-31', 4405),
(113, 1042, 9912, '2023-07-01', '2023-12-31', NULL),
(114, 1043, 9913, '2023-09-01', '2024-08-31', 4407),
(115, 1043, 9907, '2023-09-01', '2024-08-31', 4408),
(116, 1043, 9908, '2023-09-01', '2024-08-31', NULL),
(117, 1043, 9914, '2023-09-01', '2023-08-31', 1211),
(118, 1024, 9018, '2020-01-01', '2023-12-31', 1611),
(119, 1024, 9019, '2020-01-01', '2023-12-31', NULL),
(120, 1024, 9020, '2020-01-01', '2023-12-31', 4416),
(121, 1024, 9021, '2023-07-01', '2023-12-31', NULL),
(122, 1025, 9022, '2023-07-01', '2023-12-31', 4420),
(123, 1025, 9023, '2023-07-01', '2023-12-31', NULL),
(124, 1025, 9024, '2023-07-01', '2023-12-31', NULL),
(125, 1025, 9042, '2021-01-01', '2023-12-31', 4418),
(126, 1034, 9025, '2018-01-01', '2024-08-31', 1711),
(127, 1034, 9026, '2018-01-01', '2024-08-31', 4421),
(128, 1034, 9027, '2018-01-01', '2024-08-31', NULL),
(129, 1034, 9028, '2018-01-01', '2024-08-31', NULL),
(130, 1034, 9029, '2018-01-01', '2024-08-31', NULL),
(131, 1035, 9030, '2023-01-15', '2023-12-16', 4417),
(132, 1035, 9031, '2023-01-15', '2023-12-16', NULL),
(133, 1035, 9032, '2023-01-15', '2023-12-16', NULL),
(134, 1035, 9033, '2023-01-15', '2023-12-16', NULL),
(135, 1044, 9034, '2023-12-18', '2024-12-13', NULL),
(136, 1044, 9035, '2023-12-18', '2024-12-13', 4415),
(137, 1044, 9036, '2023-12-18', '2024-12-13', 4413),
(138, 1044, 9037, '2023-12-18', '2024-12-13', NULL),
(139, 1045, 9038, '2023-09-01', '2025-08-31', 4419),
(140, 1045, 9039, '2023-09-01', '2025-08-31', NULL),
(141, 1045, 9040, '2023-09-01', '2025-08-31', NULL),
(142, 1045, 9041, '2023-09-01', '2025-08-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_request`
--

CREATE TABLE `maintenance_request` (
  `RequestID` int(4) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `TenantID` int(11) DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_request`
--

INSERT INTO `maintenance_request` (`RequestID`, `PropertyID`, `TenantID`, `RequestDate`, `Description`) VALUES
(1, 1024, 9018, '2021-12-15', 'Fixing leaks, clogs, or any issues related to water supply and drainage systems.'),
(2, 1001, 9901, '2023-10-10', 'Regular maintenance for heating, ventilation, and air conditioning systems to optimize efficiency and prevent breakdowns.'),
(3, 1032, 9909, '2021-05-11', 'Refreshing interior or exterior surfaces to maintain the property\'s aesthetic appeal.'),
(4, 1044, 9035, '2023-11-06', 'Trimming, mowing, and maintaining outdoor spaces for a neat and attractive appearance.'),
(5, 1024, 9020, '2022-10-03', 'Assessing and fixing any issues with the roof, such as leaks or damaged shingles.'),
(6, 1044, 9036, '2023-12-06', 'Checking and servicing household appliances like refrigerators, ovens, or washing machines to ensure they work correctly.'),
(7, 1042, 9911, '2023-09-21', 'Addressing and preventing pest infestations through regular inspections and treatments.'),
(8, 1044, 9037, '2023-12-20', 'Fixing cracks, foundation problems, or damaged walls.'),
(9, 1021, 9905, '2023-10-09', 'Ensuring that security systems, including alarms and cameras, are functioning properly to keep the property secure.'),
(10, 1043, 9913, '2023-10-02', 'Checking and repairing electrical systems, outlets, or fixtures to ensure safety and functionality.');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `ParkingID` int(4) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Availability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`ParkingID`, `Type`, `Availability`) VALUES
(1011, 'Garage', 'Y'),
(1111, 'Garage', 'N'),
(1122, 'Open Parking', 'Y'),
(1123, 'Open Parking', 'Y'),
(1124, 'Open Parking', 'Y'),
(1125, 'Open Parking', 'Y'),
(1126, 'Open Parking', 'Y'),
(1127, 'Open Parking', 'Y'),
(1128, 'Open Parking', 'Y'),
(1129, 'Open Parking', 'Y'),
(1211, 'Garage', 'N'),
(1311, 'Garage', 'N'),
(1411, 'Garage', 'Y'),
(1511, 'Garage', 'N'),
(1611, 'Garage', 'N'),
(1711, 'Garage', 'N'),
(1811, 'Garage', 'Y'),
(1911, 'Garage', 'Y'),
(2011, 'Garage', 'N'),
(2111, 'Garage', 'Y'),
(2122, 'Open Parking', 'Y'),
(2123, 'Open Parking', 'Y'),
(2124, 'Open Parking', 'Y'),
(2125, 'Open Parking', 'Y'),
(2126, 'Open Parking', 'Y'),
(2127, 'Open Parking', 'Y'),
(2128, 'Open Parking', 'Y'),
(2129, 'Open Parking', 'Y'),
(2211, 'Garage', 'Y'),
(2311, 'Garage', 'N'),
(2411, 'Garage', 'N'),
(2511, 'Garage', 'N'),
(2611, 'Garage', 'N'),
(2711, 'Garage', 'N'),
(2811, 'Garage', 'N'),
(2911, 'Garage', 'N'),
(3122, 'Open Parking', 'Y'),
(3123, 'Open Parking', 'Y'),
(3124, 'Open Parking', 'Y'),
(3125, 'Open Parking', 'Y'),
(4401, 'Open Parking', 'N'),
(4402, 'Open Parking', 'N'),
(4403, 'Open Parking', 'N'),
(4404, 'Open Parking', 'N'),
(4405, 'Open Parking', 'N'),
(4406, 'Open Parking', 'N'),
(4407, 'Open Parking', 'N'),
(4408, 'Open Parking', 'N'),
(4409, 'Open Parking', 'N'),
(4410, 'Open Parking', 'N'),
(4411, 'Open Parking', 'N'),
(4412, 'Open Parking', 'N'),
(4413, 'Open Parking', 'N'),
(4415, 'Open Parking', 'N'),
(4416, 'Open Parking', 'N'),
(4417, 'Open Parking', 'N'),
(4418, 'Open Parking', 'N'),
(4419, 'Open Parking', 'N'),
(4420, 'Open Parking', 'N'),
(4421, 'Open Parking', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `PropertyID` int(4) NOT NULL,
  `FloorPlan` varchar(20) NOT NULL,
  `Size` int(11) NOT NULL,
  `Bed` int(11) NOT NULL,
  `Bath` int(11) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Availability` varchar(20) DEFAULT NULL,
  `MonthRent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`PropertyID`, `FloorPlan`, `Size`, `Bed`, `Bath`, `Address`, `Availability`, `MonthRent`) VALUES
(1001, 'Jasmine', 590, 1, 1, '4901 Heather Drive', 'Vacant', 950),
(1002, 'Kathrine', 750, 2, 2, '4902 Heather Drive', 'Under Maintenance', 1400),
(1003, 'Kathrine', 750, 2, 2, '4903 Heather Drive', 'Under Maintenance', 1400),
(1004, 'Lily', 900, 2, 2, '4904 Heather Drive', 'Vacant', 1600),
(1005, 'Lily', 900, 2, 2, '4905 Heather Drive', 'Vacant', 1600),
(1011, 'Jasmine', 590, 1, 1, '4911 Heather Drive', 'Occupied', 950),
(1012, 'Kathrine', 750, 2, 2, '4912 Heather Drive', 'Under Maintenance', 1400),
(1013, 'Kathrine', 750, 2, 2, '4913 Heather Drive', 'Vacant', 1400),
(1014, 'Lily', 900, 2, 2, '4914 Heather Drive', 'Vacant', 1600),
(1015, 'Lily', 900, 2, 2, '4915 Heather Drive', 'Under Maintenance', 1600),
(1021, 'Jasmine', 590, 1, 1, '4921 Heather Drive', 'Occupied', 950),
(1022, 'Kathrine', 750, 2, 2, '4922 Heather Drive', 'Vacant', 1400),
(1023, 'Kathrine', 750, 2, 2, '4923 Heather Drive', 'Vacant', 1400),
(1024, 'Lily', 900, 2, 2, '4924 Heather Drive', 'Occupied', 1600),
(1025, 'Lily', 900, 2, 2, '4925 Heather Drive', 'Occupied', 1600),
(1031, 'Jasmine', 590, 1, 1, '4931 Heather Drive', 'Occupied', 950),
(1032, 'Kathrine', 750, 2, 2, '4932 Heather Drive', 'Occupied', 1400),
(1033, 'Kathrine', 750, 2, 2, '4933 Heather Drive', 'Occupied', 1400),
(1034, 'Lily', 900, 2, 2, '4934 Heather Drive', 'Occupied', 1600),
(1035, 'Lily', 900, 2, 2, '4935 Heather Drive', 'Occupied', 1600),
(1041, 'Jasmine', 590, 1, 1, '4941 Heather Drive', 'Vacant', 950),
(1042, 'Kathrine', 750, 2, 2, '4942 Heather Drive', 'Occupied', 1400),
(1043, 'Kathrine', 750, 2, 2, '4943 Heather Drive', 'Occupied', 1400),
(1044, 'Lily', 900, 2, 2, '4944 Heather Drive', 'Occupied', 1600),
(1045, 'Lily', 900, 2, 2, '4945 Heather Drive', 'Occupied', 1600);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `TenantID` int(4) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `GENDER` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`TenantID`, `Fname`, `Lname`, `PhoneNumber`, `Email`, `GENDER`) VALUES
(9018, 'Alton', 'Watt', '+1(313)-555-674', 'AllonWatt@gmail.com', 'M'),
(9019, 'Barbara', 'Xavier', '+1(313)-985-5433', 'XavierB@yahoo.com', 'F'),
(9020, 'Daphne', 'Zigler', '+1(517)-989-4994', 'DphnZigler@outlook.com', 'F'),
(9021, 'Mike', 'Nathan', '+1(212)-342-9342', 'NathanM@gmail.com', 'M'),
(9022, 'Othman', 'Pete', '+1(517)-9321-888', 'Othman123@gmail.com', 'M'),
(9023, 'Qadri', 'Rashard', '+1(517)-909-8381', 'Qadriri@outlook.com', 'M'),
(9024, 'Stuart', 'Turner', '+1(726)-789-7211', 'Stuarttnr@yahoo.com', 'M'),
(9025, 'Harry', 'Drew', '+1(517)-9754-2527', 'harrydrew@gmail.com', 'M'),
(9026, 'Nancy', 'Drew', '+1(517)-902-2321', 'nancydrew@gmail.com', 'F'),
(9027, 'Sawyer', 'Drew', '+1(517)-9754-2527', NULL, 'M'),
(9028, 'Brandon', 'Drew', '+1(517)-9754-2527', NULL, 'M'),
(9029, 'Theo', 'Drew', '+1(517)-9754-2527', NULL, 'M'),
(9030, 'Valerie', 'Nikon', '+1(789)-975-4321', 'Valerie999@outlook.com', 'F'),
(9031, 'Marry', 'Kushner', '+1(789)-904-3875', 'marryK@gmail.com', 'F'),
(9032, 'Leon', 'Naamah', '+1(517)-7453-991', 'Leon987@gmail.com', 'F'),
(9033, 'Paige', 'Eleanor', '+1(789)-113-3490', 'PaigeEle@outlook.com', 'F'),
(9034, 'Francesca', 'Qi', '+1(517)-765-8768', 'FranQi@gmail.com', 'F'),
(9035, 'John', 'Christopher', '+1(517)-311-5643', 'JohnChris23@yahoo.com', 'M'),
(9036, 'Matthew', 'Donald', '+1(212)-4547-597', 'MattDonald@gmail.com', 'M'),
(9037, 'Edward', 'Steph', '+1(212)-328-9457', 'EdwardSteph@gmail.com', 'M'),
(9038, 'Sarah', 'Williams', '+1(313)-998-1765', 'SarahW@yahoo.com', 'F'),
(9039, 'Jessica', 'Davis', '+1(313)-875-4329', 'JessicaD12@outlook.com', 'F'),
(9040, 'Loona', 'Smith', '+1(313)-008-3421', 'LoonaSmith@gmail.com', 'F'),
(9041, 'Camelia', 'Yong', '+1(313)-231-6548', 'CameliaY@gmail.com', 'F'),
(9042, 'Micha', 'Alyson', '+1(717)-342-8432', 'AlysonM@gmail.com', 'F'),
(9901, 'Andrew', 'Martin', '+1(313)-773-5141', 'andrewmartin@gmail.com', 'M'),
(9902, 'Anna', 'Martin', '+1(313)-744-2223', 'annabacky@gmail.com', 'F'),
(9903, 'James', 'Collen', '+1(613)-746-2823', 'james123collen@yahoo.com', 'M'),
(9904, 'Anna', 'Drew', '+1(333)-444-8228', 'annadrew@gmail.com', 'F'),
(9905, 'Jasmine', 'Ahmad', '+1(414)-114-2211', 'jasminejasmine@gmail.com', 'F'),
(9906, 'Paul', 'Basset', '+1(333)-456-9897', 'paul@yahoo.com', 'M'),
(9907, 'Danial', 'Matthew', '+1(717)-912-4356', 'DanMat@gmail.com', 'M'),
(9908, 'Hutton', 'Lemier', '+1(717)-976-4532', 'LemierH@gmail.com', 'M'),
(9909, 'Daisy', 'Addy', '+1(517)-234-678', 'DaisyAddy@outlook.com', 'F'),
(9910, 'Richard', 'Garry', '+1(517)-999-4321', 'RichardG@outlook.com', 'M'),
(9911, 'Marianne', 'Garry', '+1(517)-432-2142', 'MarianneBarbara@outlook.com', 'F'),
(9912, 'Ricky', 'Garry', '+1(517)-999-4321', NULL, 'M'),
(9913, 'Peter', 'Woll', '+1(726)-999-1316', 'PtrWll@yahoo.com', 'M'),
(9914, 'Walter', 'Pittsburg', '+1(726)-789-3333', 'WalterPitt@gmail.com', 'M'),
(9915, 'Deborah', 'Avin', '+1(446)-232-2332', 'DbrhAvin@gmail.com', 'F'),
(9916, 'Logan', 'Hutz', '+1(446)-1211-8531', 'HutzLogan@outlook.com', 'M'),
(9917, 'Danny', 'Matt', '+1(446)-9012-2217', 'Dan12Matt@gmail.com', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `TenantID` int(11) NOT NULL,
  `VehiclePlate` varchar(20) NOT NULL,
  `ParkingID` int(11) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`TenantID`, `VehiclePlate`, `ParkingID`, `StartDate`, `EndDate`) VALUES
(9018, 'ALT 421', 1611, '2020-01-01', '2023-12-31'),
(9020, 'WERT 7743', 4416, '2020-01-01', '2023-12-31'),
(9022, 'WQDR 9866', 4420, '2023-07-01', '2023-12-31'),
(9025, 'AWQR 9089', 1711, '2018-01-01', '2024-08-31'),
(9026, 'JJRE 8732', 4421, '2018-01-01', '2024-08-31'),
(9030, 'VLRE 2949', 4417, '2023-01-15', '2023-12-16'),
(9035, 'MSIT 8742', 4415, '2023-12-18', '2024-12-13'),
(9036, 'QWDR 7564', 4413, '2023-12-18', '2024-12-13'),
(9038, 'SARA 4954', 4419, '2023-09-01', '2025-08-31'),
(9042, 'MCHA 4567', 4418, '2021-01-01', '2023-12-31'),
(9901, 'ANA 1206', 1111, '2020-01-01', '2023-12-31'),
(9903, 'JFK 9903', 4401, '2023-07-01', '2024-07-31'),
(9904, 'BRBIE 4345', 4402, '2023-01-01', '2023-12-31'),
(9906, 'POLL 1434', 4403, '2017-01-01', '2023-12-31'),
(9907, 'LND 9123', 4408, '2023-09-01', '2024-08-31'),
(9910, 'MAR 1995', 1511, '2023-07-01', '2023-12-31'),
(9911, 'RCD 9095', 4405, '2023-07-01', '2023-12-31'),
(9913, 'WWR 3294', 4407, '2023-09-01', '2024-08-31'),
(9914, 'ACKW 9347', 1211, '2023-09-01', '2023-08-31'),
(9916, 'BRGH 2922', 4406, '2023-09-01', '2024-08-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lease`
--
ALTER TABLE `lease`
  ADD PRIMARY KEY (`LeaseID`),
  ADD UNIQUE KEY `TenantID` (`TenantID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `fk_parking_id` (`Parkingid`);

--
-- Indexes for table `maintenance_request`
--
ALTER TABLE `maintenance_request`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `TenantID` (`TenantID`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`ParkingID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`PropertyID`),
  ADD UNIQUE KEY `Address` (`Address`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`TenantID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`TenantID`,`VehiclePlate`,`ParkingID`),
  ADD UNIQUE KEY `VehiclePlate` (`VehiclePlate`),
  ADD UNIQUE KEY `ParkingID` (`ParkingID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lease`
--
ALTER TABLE `lease`
  ADD CONSTRAINT `fk_parking_id` FOREIGN KEY (`Parkingid`) REFERENCES `vehicle` (`ParkingID`),
  ADD CONSTRAINT `lease_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`),
  ADD CONSTRAINT `lease_ibfk_2` FOREIGN KEY (`TenantID`) REFERENCES `tenant` (`TenantID`);

--
-- Constraints for table `maintenance_request`
--
ALTER TABLE `maintenance_request`
  ADD CONSTRAINT `maintenance_request_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`),
  ADD CONSTRAINT `maintenance_request_ibfk_2` FOREIGN KEY (`TenantID`) REFERENCES `tenant` (`TenantID`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`TenantID`) REFERENCES `tenant` (`TenantID`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`ParkingID`) REFERENCES `parking` (`ParkingID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
