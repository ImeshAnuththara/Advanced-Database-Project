-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 28, 2022 at 05:56 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renewabledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_unit_costs`
--

DROP TABLE IF EXISTS `all_unit_costs`;
CREATE TABLE IF NOT EXISTS `all_unit_costs` (
  `Year` int(20) NOT NULL,
  `Hydro_Private_Unit_Price` float NOT NULL,
  `Solar_Private_Unit_Price` float NOT NULL,
  `Coal_Gov_Unit_Price` float NOT NULL,
  `Wind_Private_Unit_Price` float NOT NULL,
  `Fuel_Private_Unit_Price` float NOT NULL,
  `Fuel_Gov_Unit_Price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `all_unit_costs`
--

INSERT INTO `all_unit_costs` (`Year`, `Hydro_Private_Unit_Price`, `Solar_Private_Unit_Price`, `Coal_Gov_Unit_Price`, `Wind_Private_Unit_Price`, `Fuel_Private_Unit_Price`, `Fuel_Gov_Unit_Price`) VALUES
(2016, 14.97, 21.7, 4.62, 22.13, 33.45, 20.85),
(2017, 14.75, 23.2, 7.26, 22.33, 28.51, 22.16),
(2018, 14.61, 23.08, 7.35, 20.74, 37.64, 21.17),
(2019, 15.87, 22.84, 7.8, 19.62, 33.05, 23.9),
(2020, 15.76, 22.35, 7.44, 17.17, 28.7, 19.11);

-- --------------------------------------------------------

--
-- Table structure for table `ceb_generation`
--

DROP TABLE IF EXISTS `ceb_generation`;
CREATE TABLE IF NOT EXISTS `ceb_generation` (
  `Year` int(4) DEFAULT NULL,
  `Demand` float DEFAULT NULL,
  `Hydro` float DEFAULT NULL,
  `Thermal` float DEFAULT NULL,
  `Other_Renewable` float DEFAULT NULL,
  `Total` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ceb_generation`
--

INSERT INTO `ceb_generation` (`Year`, `Demand`, `Hydro`, `Thermal`, `Other_Renewable`, `Total`) VALUES
(2016, 12785, 3481, 9507, 1160, 14148),
(2017, 13431, 3059, 10148, 1464, 14671),
(2018, 14091, 5149, 8390, 1717.4, 15256.4),
(2019, 14611, 3784, 10373, 1779.7, 15936.7),
(2020, 14286, 3911, 9933, 1870.2, 15714.2);

-- --------------------------------------------------------

--
-- Table structure for table `contactdata`
--

DROP TABLE IF EXISTS `contactdata`;
CREATE TABLE IF NOT EXISTS `contactdata` (
  `form_name` varchar(30) DEFAULT NULL,
  `form_phone` varchar(12) DEFAULT NULL,
  `form_email` varchar(30) DEFAULT NULL,
  `form_message` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_coal_avg_values`
--

DROP TABLE IF EXISTS `final_coal_avg_values`;
CREATE TABLE IF NOT EXISTS `final_coal_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Electricity_Generation` float DEFAULT NULL,
  `Purchased_cost` float DEFAULT NULL,
  `Unit_Cost` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_coal_avg_values`
--

INSERT INTO `final_coal_avg_values` (`Year`, `Electricity_Generation`, `Purchased_cost`, `Unit_Cost`) VALUES
(2016, 422.24, 1948.74, 4.61917),
(2017, 426.72, 3042.15, 7.2575),
(2018, 441.611, 3227.56, 7.35167),
(2019, 493.076, 3889.97, 7.79583),
(2020, 479.529, 3567.07, 7.44333);

-- --------------------------------------------------------

--
-- Table structure for table `final_fuel_gov_avg_values`
--

DROP TABLE IF EXISTS `final_fuel_gov_avg_values`;
CREATE TABLE IF NOT EXISTS `final_fuel_gov_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `CEB_Generation` float DEFAULT NULL,
  `Oil_Consumption` float DEFAULT NULL,
  `Fuel_Cost` float DEFAULT NULL,
  `Unit_Cost` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_fuel_gov_avg_values`
--

INSERT INTO `final_fuel_gov_avg_values` (`Year`, `CEB_Generation`, `Oil_Consumption`, `Fuel_Cost`, `Unit_Cost`) VALUES
(2016, 196.683, 50.4667, 4170.41, 20.8475),
(2017, 216.414, 57.8975, 4817.56, 22.1458),
(2018, 161.92, 40.415, 3450.14, 21.1742),
(2019, 183.113, 48.7508, 4395.15, 23.9025),
(2020, 126.037, 30.1608, 2509.16, 19.1142);

-- --------------------------------------------------------

--
-- Table structure for table `final_fuel_pvt_avg_values`
--

DROP TABLE IF EXISTS `final_fuel_pvt_avg_values`;
CREATE TABLE IF NOT EXISTS `final_fuel_pvt_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `PVT_Generation` float DEFAULT NULL,
  `Total_Cost` float DEFAULT NULL,
  `Purchesed_Unit_Cost` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_fuel_pvt_avg_values`
--

INSERT INTO `final_fuel_pvt_avg_values` (`Year`, `PVT_Generation`, `Total_Cost`, `Purchesed_Unit_Cost`) VALUES
(2016, 180.31, 5003.05, 33.4508),
(2017, 209.657, 5878.17, 28.5133),
(2018, 145.018, 4328.38, 37.6367),
(2019, 239.573, 7170.66, 33.05),
(2020, 226.415, 6317.27, 28.6983);

-- --------------------------------------------------------

--
-- Table structure for table `final_hydro_gov_avg_values`
--

DROP TABLE IF EXISTS `final_hydro_gov_avg_values`;
CREATE TABLE IF NOT EXISTS `final_hydro_gov_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Gov_Generation` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_hydro_gov_avg_values`
--

INSERT INTO `final_hydro_gov_avg_values` (`Year`, `Gov_Generation`) VALUES
(2016, 291.561),
(2017, 256.269),
(2018, 430.729),
(2019, 316.739),
(2020, 327.451);

-- --------------------------------------------------------

--
-- Table structure for table `final_hydro_pvt_avg_values`
--

DROP TABLE IF EXISTS `final_hydro_pvt_avg_values`;
CREATE TABLE IF NOT EXISTS `final_hydro_pvt_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `PVT_Generation` float DEFAULT NULL,
  `Purchesed_Cost` float DEFAULT NULL,
  `Unit_Cost` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_hydro_pvt_avg_values`
--

INSERT INTO `final_hydro_pvt_avg_values` (`Year`, `PVT_Generation`, `Purchesed_Cost`, `Unit_Cost`) VALUES
(2016, 61.5708, 914.816, 14.9683),
(2017, 78.7892, 1144.99, 14.7508),
(2018, 102.667, 1483.48, 14.6083),
(2019, 84.2483, 1331.72, 15.8658),
(2020, 87.2433, 1349.96, 15.7575);

-- --------------------------------------------------------

--
-- Table structure for table `final_rain_precipitation`
--

DROP TABLE IF EXISTS `final_rain_precipitation`;
CREATE TABLE IF NOT EXISTS `final_rain_precipitation` (
  `Location` varchar(25) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Avg_Windspeed` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_rain_precipitation`
--

INSERT INTO `final_rain_precipitation` (`Location`, `Latitude`, `Longitude`, `Avg_Windspeed`) VALUES
('Hambantota', 6.12459, 81.1011, 1012.42),
('Mannar', 8.98932, 79.8801, 1110.27),
('Puttalam', 8.04079, 79.8394, 1241.91),
('Jaffna', 9.66845, 80.0074, 1377.81),
('Anuradhapura', 8.31135, 80.4036, 1508.89),
('Trincomalee', 8.5922, 81.1968, 1621.78),
('Nuwara Eliya', 6.94972, 80.7891, 1641.1);

-- --------------------------------------------------------

--
-- Table structure for table `final_solar_pvt_avg_values`
--

DROP TABLE IF EXISTS `final_solar_pvt_avg_values`;
CREATE TABLE IF NOT EXISTS `final_solar_pvt_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `PVT_Generation` float DEFAULT NULL,
  `Purchesed_Cost` float DEFAULT NULL,
  `Purchesed_Unit_Cost` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_solar_pvt_avg_values`
--

INSERT INTO `final_solar_pvt_avg_values` (`Year`, `PVT_Generation`, `Purchesed_Cost`, `Purchesed_Unit_Cost`) VALUES
(2016, 0.3575, 7.93, 21.6967),
(2017, 7.0975, 164.563, 23.2033),
(2018, 8.18417, 188.85, 23.075),
(2019, 8.5525, 195.383, 22.8417),
(2020, 9.83167, 219.819, 22.3533);

-- --------------------------------------------------------

--
-- Table structure for table `final_solution`
--

DROP TABLE IF EXISTS `final_solution`;
CREATE TABLE IF NOT EXISTS `final_solution` (
  `Year` int(4) DEFAULT NULL,
  `Fuel_Unit_Cost` float DEFAULT NULL,
  `Electricity_Generatation` float DEFAULT NULL,
  `Fuel_Hydro` float DEFAULT NULL,
  `Fuel_Solar` float DEFAULT NULL,
  `Fuel_Wind` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_solution`
--

INSERT INTO `final_solution` (`Year`, `Fuel_Unit_Cost`, `Electricity_Generatation`, `Fuel_Hydro`, `Fuel_Solar`, `Fuel_Wind`) VALUES
(2016, 33.45, 4753.5, 18.48, 11.75, 11.32),
(2017, 28.51, 5074, 13.76, 5.31, 6.18),
(2018, 37.64, 4195, 23.03, 14.56, 16.9),
(2019, 33.05, 5186.5, 17.18, 10.21, 13.43),
(2020, 28.7, 4966.5, 12.94, 6.35, 11.53);

-- --------------------------------------------------------

--
-- Table structure for table `final_temperature`
--

DROP TABLE IF EXISTS `final_temperature`;
CREATE TABLE IF NOT EXISTS `final_temperature` (
  `Location` varchar(25) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Avg_Temperature` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_temperature`
--

INSERT INTO `final_temperature` (`Location`, `Latitude`, `Longitude`, `Avg_Temperature`) VALUES
('Jaffna', 9.66845, 80.0074, 28.6333),
('Baticaloa', 7.731, 81.6747, 28.6167),
('Vavniya', 8.75094, 80.499, 28.6167),
('Ratmalana', 6.81954, 79.8801, 28.3667),
('Trincomalee', 8.5922, 81.1968, 28.25),
('Mannar', 8.98932, 79.8801, 28.2333),
('Hambantota', 6.12459, 81.1011, 28.1333);

-- --------------------------------------------------------

--
-- Table structure for table `final_weather_data`
--

DROP TABLE IF EXISTS `final_weather_data`;
CREATE TABLE IF NOT EXISTS `final_weather_data` (
  `Location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Avg_temperature` float DEFAULT NULL,
  `Avg_Wind_Speed` float NOT NULL,
  `Avg_Rain_Precipitation` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_weather_data`
--

INSERT INTO `final_weather_data` (`Location`, `Latitude`, `Longitude`, `Avg_temperature`, `Avg_Wind_Speed`, `Avg_Rain_Precipitation`) VALUES
('Anuradhapura', 8.31135, 80.4036, 27.55, 3.4, 1508.89),
('Badulla', 6.98472, 81.0564, 22.8167, 4.83333, 2094.66),
('Baticaloa', 7.731, 81.6747, 28.6167, 4.95, 1844.1),
('Colombo', 6.93548, 79.8487, 27.9667, 4.58333, 2490.3),
('Diyathalawa', 6.80925, 80.9595, 21.0167, 6.68333, 1987.66),
('Hambantota', 6.12459, 81.1011, 28.1333, 12, 1012.42),
('Jaffna', 9.66845, 80.0074, 28.6333, 18.7333, 1377.81),
('Kandy', 7.29142, 80.6367, 24.6833, 2.21667, 1847.53),
('Katunayake', 7.16962, 79.8913, 27.6833, 11.5333, 2470.91),
('Kurunegala', 7.48886, 80.3623, 27.9833, 5.53333, 2148.91),
('Mannar', 8.98932, 79.8801, 28.2333, 11.7667, 1110.27),
('Nuwara Eliya', 6.94972, 80.7891, 16.0833, 7.51667, 1641.1),
('Puttalam', 8.04079, 79.8394, 27.9167, 5.98333, 1241.91),
('Rathnapura', 6.7081, 80.377, 26.6167, 2.7, 3860.13),
('Ratmalana', 6.81954, 79.8801, 28.3667, 6.81667, 2416.6),
('Trincomalee', 8.5922, 81.1968, 28.25, 6.28333, 1621.78),
('Vavniya', 8.75094, 80.499, 28.6167, 10.1167, 1677.38);

-- --------------------------------------------------------

--
-- Table structure for table `final_windspeed`
--

DROP TABLE IF EXISTS `final_windspeed`;
CREATE TABLE IF NOT EXISTS `final_windspeed` (
  `Location` varchar(25) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Avg_Windspeed` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_windspeed`
--

INSERT INTO `final_windspeed` (`Location`, `Latitude`, `Longitude`, `Avg_Windspeed`) VALUES
('Jaffna', 9.66845, 80.0074, 18.7333),
('Hambantota', 6.12459, 81.1011, 12),
('Mannar', 8.98932, 79.8801, 11.7667),
('Katunayake', 7.16962, 79.8913, 11.5333),
('Vavniya', 8.75094, 80.499, 10.1167),
('Nuwara Eliya', 6.94972, 80.7891, 7.51667),
('Ratmalana', 6.81954, 79.8801, 6.81667);

-- --------------------------------------------------------

--
-- Table structure for table `final_wind_pvt_avg_values`
--

DROP TABLE IF EXISTS `final_wind_pvt_avg_values`;
CREATE TABLE IF NOT EXISTS `final_wind_pvt_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `PVT_Generation` float DEFAULT NULL,
  `Total_Cost` float DEFAULT NULL,
  `Purchesed_Unit_Cost` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `final_wind_pvt_avg_values`
--

INSERT INTO `final_wind_pvt_avg_values` (`Year`, `PVT_Generation`, `Total_Cost`, `Purchesed_Unit_Cost`) VALUES
(2016, 28.5452, 632.851, 22.1275),
(2017, 30.4108, 678.724, 22.3325),
(2018, 27.0868, 552.657, 20.7408),
(2019, 30.6011, 601.005, 19.6208),
(2020, 27.0381, 453.889, 17.1708);

-- --------------------------------------------------------

--
-- Table structure for table `government_coal_generation`
--

DROP TABLE IF EXISTS `government_coal_generation`;
CREATE TABLE IF NOT EXISTS `government_coal_generation` (
  `Id` varchar(11) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Electricity_Generation` float DEFAULT NULL,
  `Purchased_cost` float DEFAULT NULL,
  `Unit_Cost` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `government_coal_generation`
--

INSERT INTO `government_coal_generation` (`Id`, `Year`, `Month`, `Electricity_Generation`, `Purchased_cost`, `Unit_Cost`) VALUES
('2016A100', 2016, 'January', 395.13, 1802.95, 4.56),
('2016A101', 2016, 'February', 342.78, 1570.29, 4.58),
('2016A102', 2016, 'March', 404.87, 1887.59, 4.66),
('2016A103', 2016, 'April', 399.5, 1909.96, 4.78),
('2016A104', 2016, 'May', 376.31, 1756.26, 4.67),
('2016A105', 2016, 'June', 389.83, 1785.51, 4.58),
('2016A106', 2016, 'July', 512.54, 2339, 4.56),
('2016A107', 2016, 'August', 566.58, 2592.4, 4.58),
('2016A108', 2016, 'September', 539.24, 2459.07, 4.56),
('2016A109', 2016, 'October', 380.78, 1784.66, 4.69),
('2016A110', 2016, 'November', 359.92, 1659.92, 4.61),
('2016A111', 2016, 'December', 399.4, 1837.32, 4.6),
('2017A100', 2017, 'January', 485.78, 2676.53, 5.51),
('2017A101', 2017, 'February', 534.34, 3263.12, 6.11),
('2017A102', 2017, 'March', 583.44, 3598.3, 6.17),
('2017A103', 2017, 'April', 396.42, 2920.88, 7.37),
('2017A104', 2017, 'May', 465.76, 3533.07, 7.59),
('2017A105', 2017, 'June', 496.07, 3712.49, 7.48),
('2017A106', 2017, 'July', 369.25, 2912.7, 7.89),
('2017A107', 2017, 'August', 445.2, 3419.94, 7.68),
('2017A108', 2017, 'September', 335, 2567.25, 7.66),
('2017A109', 2017, 'October', 475.19, 3652.05, 7.69),
('2017A110', 2017, 'November', 241.4, 1964.95, 8.14),
('2017A111', 2017, 'December', 292.79, 2284.52, 7.8),
('2018A100', 2018, 'January', 421.21, 2909.55, 6.91),
('2018A101', 2018, 'February', 536.39, 3659.42, 6.82),
('2018A102', 2018, 'March', 599.32, 4219.97, 7.04),
('2018A103', 2018, 'April', 472.83, 3425.87, 7.25),
('2018A104', 2018, 'May', 478.13, 3528.39, 7.38),
('2018A105', 2018, 'June', 307.67, 2350.08, 7.64),
('2018A106', 2018, 'July', 384.21, 2847.83, 7.41),
('2018A107', 2018, 'August', 400.46, 3000.59, 7.49),
('2018A108', 2018, 'September', 543.33, 3979.03, 7.32),
('2018A109', 2018, 'October', 465.76, 3453.53, 7.42),
('2018A110', 2018, 'November', 362.52, 2755.12, 7.6),
('2018A111', 2018, 'December', 327.5, 2601.39, 7.94),
('2019A100', 2019, 'January', 387.3, 3123.45, 8.07),
('2019A101', 2019, 'February', 472.73, 3882.25, 8.21),
('2019A102', 2019, 'March', 593.26, 4846.96, 8.17),
('2019A103', 2019, 'April', 534.94, 4381.03, 8.19),
('2019A104', 2019, 'May', 585.88, 4772.39, 8.15),
('2019A105', 2019, 'June', 572.31, 4689.68, 8.19),
('2019A106', 2019, 'July', 590.01, 5034.74, 8.53),
('2019A107', 2019, 'August', 475.34, 4085.56, 8.6),
('2019A108', 2019, 'September', 480.01, 4057.73, 8.45),
('2019A109', 2019, 'October', 459.59, 3221.77, 7.01),
('2019A110', 2019, 'November', 416.83, 2494.54, 5.99),
('2019A111', 2019, 'December', 348.71, 2089.58, 5.99),
('2020A100', 2020, 'January', 376.05, 2492.6, 6.63),
('2020A101', 2020, 'February', 469.33, 2982.58, 6.36),
('2020A102', 2020, 'March', 594.81, 3748.95, 6.3),
('2020A103', 2020, 'April', 471.21, 3098.71, 6.58),
('2020A104', 2020, 'May', 525.1, 4058.43, 7.73),
('2020A105', 2020, 'June', 524.37, 4303.49, 8.21),
('2020A106', 2020, 'July', 598.29, 4863.75, 8.13),
('2020A107', 2020, 'August', 400.99, 3494.19, 8.71),
('2020A108', 2020, 'September', 525.98, 4475.62, 8.51),
('2020A109', 2020, 'October', 565.41, 4225.11, 7.47),
('2020A110', 2020, 'November', 325.16, 3009.07, 9.25),
('2020A111', 2020, 'December', 377.65, 2052.38, 5.44);

-- --------------------------------------------------------

--
-- Table structure for table `government_fuel_purchased`
--

DROP TABLE IF EXISTS `government_fuel_purchased`;
CREATE TABLE IF NOT EXISTS `government_fuel_purchased` (
  `Id` varchar(11) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `CEB_Generation` float DEFAULT NULL,
  `Oil_Consumption` float DEFAULT NULL,
  `Fuel_Cost` float DEFAULT NULL,
  `Monthly_Unit_Cost` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `government_fuel_purchased`
--

INSERT INTO `government_fuel_purchased` (`Id`, `Year`, `Month`, `CEB_Generation`, `Oil_Consumption`, `Fuel_Cost`, `Monthly_Unit_Cost`) VALUES
('2016A100', 2016, 'JANUARY', 78.99, 18.06, 1500.85, 19),
('2016A101', 2016, 'FEBRUARY', 136.61, 34.77, 3139.69, 22.98),
('2016A102', 2016, 'MARCH', 277.33, 75.2, 6324.69, 22.81),
('2016A103', 2016, 'APRIL', 240.32, 62.06, 5030.69, 20.93),
('2016A104', 2016, 'MAY', 163.57, 39.17, 3262.98, 19.95),
('2016A105', 2016, 'JUNE', 148.71, 34.8, 2839.29, 19.09),
('2016A106', 2016, 'JULY', 170.72, 42.13, 3283.06, 19.23),
('2016A107', 2016, 'AUGUST', 142.65, 32.99, 2639.61, 18.5),
('2016A108', 2016, 'SEPTEMBER', 218.54, 54.42, 4370.07, 20),
('2016A109', 2016, 'OCTOBER', 264.49, 72.81, 6009.57, 22.72),
('2016A110', 2016, 'NOVMBER', 256.56, 71.99, 6061.51, 23.63),
('2016A111', 2016, 'DECEMBER', 261.71, 67.2, 5582.92, 21.33),
('2017A100', 2017, 'JANUARY', 236.01, 61.53, 5287.11, 22.4),
('2017A101', 2017, 'FEBRUARY', 186.52, 54.5, 4581.28, 24.56),
('2017A102', 2017, 'MARCH', 204.35, 57.84, 4774.41, 23.36),
('2017A103', 2017, 'APRIL', 270.69, 74.24, 6242.16, 23.06),
('2017A104', 2017, 'MAY', 244.89, 71.55, 5981.32, 24.43),
('2017A105', 2017, 'JUNE', 176.19, 44.85, 3600.95, 20.44),
('2017A106', 2017, 'JULY', 255.38, 71, 6184, 24.22),
('2017A107', 2017, 'AUGUST', 240.07, 62.82, 5121.97, 21.34),
('2017A108', 2017, 'SEPTEMBER', 205.74, 49.47, 4104.25, 19.95),
('2017A109', 2017, 'OCTOBER', 189.27, 48.91, 4034.25, 21.32),
('2017A110', 2017, 'NOVMBER', 208.48, 53.38, 4333.21, 20.79),
('2017A111', 2017, 'DECEMBER', 179.38, 44.68, 3565.85, 19.88),
('2018A100', 2018, 'JANUARY', 275.7, 72.1, 5981.97, 21.7),
('2018A101', 2018, 'FEBRUARY', 231.34, 58.66, 5246.25, 22.68),
('2018A102', 2018, 'MARCH', 263.75, 70.5, 6028.62, 22.86),
('2018A103', 2018, 'APRIL', 207.81, 51.2, 4329.15, 20.83),
('2018A104', 2018, 'MAY', 174.13, 42.49, 3368.52, 19.35),
('2018A105', 2018, 'JUNE', 61.57, 14.73, 1250.94, 20.32),
('2018A106', 2018, 'JULY', 121.7, 27.2, 2200.99, 18.09),
('2018A107', 2018, 'AUGUST', 107.41, 24.86, 2047.28, 19.06),
('2018A108', 2018, 'SEPTEMBER', 118.88, 27.41, 2451.96, 20.63),
('2018A109', 2018, 'OCTOBER', 60.7, 15, 1425.36, 23.48),
('2018A110', 2018, 'NOVMBER', 70.8, 17.92, 1653.46, 23.36),
('2018A111', 2018, 'DECEMBER', 249.25, 62.91, 5417.22, 21.73),
('2019A100', 2019, 'JANUARY', 289.51, 77.41, 7003.83, 24.19),
('2019A101', 2019, 'FEBRUARY', 235.77, 61.99, 5363.45, 22.75),
('2019A102', 2019, 'MARCH', 238.05, 66.36, 5873.39, 24.67),
('2019A103', 2019, 'APRIL', 243.16, 64.16, 5593.06, 23),
('2019A104', 2019, 'MAY', 247.67, 61.96, 5842.91, 23.59),
('2019A105', 2019, 'JUNE', 217, 55.63, 4873.75, 22.46),
('2019A106', 2019, 'JULY', 223.19, 67.54, 6078.82, 27.24),
('2019A107', 2019, 'AUGUST', 152.73, 42.39, 3900.44, 25.54),
('2019A108', 2019, 'SEPTEMBER', 117.13, 32.25, 2930.75, 25.02),
('2019A109', 2019, 'OCTOBER', 63.52, 16.77, 1537.01, 24.2),
('2019A110', 2019, 'NOVMBER', 86.52, 19.46, 1887.55, 21.82),
('2019A111', 2019, 'DECEMBER', 83.1, 19.09, 1856.84, 22.35),
('2020A100', 2020, 'JANUARY', 157.77, 38.35, 3801.4, 24.1),
('2020A101', 2020, 'FEBRUARY', 187.79, 51.05, 5116.94, 27.25),
('2020A102', 2020, 'MARCH', 149.54, 39.49, 3845.5, 25.72),
('2020A103', 2020, 'APRIL', 116.69, 26.15, 1940.17, 16.63),
('2020A104', 2020, 'MAY', 109.24, 24.86, 1779.43, 16.29),
('2020A105', 2020, 'JUNE', 113.67, 25.39, 1816.18, 15.98),
('2020A106', 2020, 'JULY', 124.68, 27.86, 2482.33, 19.91),
('2020A107', 2020, 'AUGUST', 108.57, 26.84, 1764.78, 16.26),
('2020A108', 2020, 'SEPTEMBER', 72.71, 16.34, 1199.73, 16.5),
('2020A109', 2020, 'OCTOBER', 83.88, 18.53, 1336.68, 15.94),
('2020A110', 2020, 'NOVMBER', 136.39, 30.59, 2213.97, 16.23),
('2020A111', 2020, 'DECEMBER', 151.52, 36.48, 2812.76, 18.56);

-- --------------------------------------------------------

--
-- Table structure for table `government_hydro_generation`
--

DROP TABLE IF EXISTS `government_hydro_generation`;
CREATE TABLE IF NOT EXISTS `government_hydro_generation` (
  `Id` varchar(11) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Electricity_Generation` float DEFAULT NULL,
  `Station_Consumption` float DEFAULT NULL,
  `Net_Generation` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `government_hydro_generation`
--

INSERT INTO `government_hydro_generation` (`Id`, `Year`, `Month`, `Electricity_Generation`, `Station_Consumption`, `Net_Generation`) VALUES
('2016A100', 2016, 'JANUARY', 417.07, 1.57, 415.5),
('2016A101', 2016, 'FEBRUARY', 337.29, 1.45, 335.84),
('2016A102', 2016, 'MARCH', 297.29, 1.51, 295.78),
('2016A103', 2016, 'APRIL', 234.42, 1.44, 232.99),
('2016A104', 2016, 'MAY', 347.53, 1.56, 345.98),
('2016A105', 2016, 'JUNE', 455.71, 1.53, 454.19),
('2016A106', 2016, 'JULY', 334.21, 1.56, 332.65),
('2016A107', 2016, 'AUGUST', 240.6, 1.54, 239.05),
('2016A108', 2016, 'SEPTEMBER', 173.7, 1.36, 172.34),
('2016A109', 2016, 'OCTOBER', 215.11, 1.46, 213.66),
('2016A110', 2016, 'NOVMBER', 237.87, 1.28, 236.59),
('2016A111', 2016, 'DECEMBER', 207.93, 1.36, 206.57),
('2017A100', 2017, 'JANUARY', 133.18, 1.26, 131.91),
('2017A101', 2017, 'FEBRUARY', 98.05, 1.25, 96.81),
('2017A102', 2017, 'MARCH', 119.19, 1.31, 117.88),
('2017A103', 2017, 'APRIL', 182.91, 1.33, 181.59),
('2017A104', 2017, 'MAY', 203.02, 1.34, 201.69),
('2017A105', 2017, 'JUNE', 225.72, 1.26, 224.47),
('2017A106', 2017, 'JULY', 290.15, 1.62, 288.53),
('2017A107', 2017, 'AUGUST', 260.32, 1.49, 258.83),
('2017A108', 2017, 'SEPTEMBER', 329.11, 1.39, 327.72),
('2017A109', 2017, 'OCTOBER', 359.61, 1.39, 358.22),
('2017A110', 2017, 'NOVMBER', 430.69, 1.49, 429.21),
('2017A111', 2017, 'DECEMBER', 443.28, 1.54, 441.74),
('2018A100', 2018, 'JANUARY', 265.78, 1.97, 263.81),
('2018A101', 2018, 'FEBRUARY', 180.55, 1.43, 179.12),
('2018A102', 2018, 'MARCH', 209.09, 1.49, 207.6),
('2018A103', 2018, 'APRIL', 246.5, 1.42, 245.08),
('2018A104', 2018, 'MAY', 411.59, 1.58, 410.01),
('2018A105', 2018, 'JUNE', 656.37, 1.66, 654.71),
('2018A106', 2018, 'JULY', 520.54, 1.71, 518.82),
('2018A107', 2018, 'AUGUST', 564.92, 1.69, 563.23),
('2018A108', 2018, 'SEPTEMBER', 387.11, 1.49, 385.62),
('2018A109', 2018, 'OCTOBER', 620.99, 1.66, 619.33),
('2018A110', 2018, 'NOVMBER', 679.45, 1.7, 677.75),
('2018A111', 2018, 'DECEMBER', 425.86, 1.45, 424.4),
('2019A100', 2019, 'JANUARY', 343.92, 1.43, 342.49),
('2019A101', 2019, 'FEBRUARY', 288.34, 1.34, 287),
('2019A102', 2019, 'MARCH', 218.94, 1.37, 217.57),
('2019A103', 2019, 'APRIL', 152.52, 1.25, 151.28),
('2019A104', 2019, 'MAY', 189.5, 1.35, 188.15),
('2019A105', 2019, 'JUNE', 171.58, 1.25, 170.33),
('2019A106', 2019, 'JULY', 183.7, 1.32, 182.38),
('2019A107', 2019, 'AUGUST', 300, 1.47, 298.53),
('2019A108', 2019, 'SEPTEMBER', 311.29, 1.44, 309.86),
('2019A109', 2019, 'OCTOBER', 590.36, 1.8, 588.56),
('2019A110', 2019, 'NOVMBER', 473.35, 1.64, 471.71),
('2019A111', 2019, 'DECEMBER', 577.37, 1.7, 575.67),
('2020A100', 2020, 'JANUARY', 382.5, 1.86, 380.65),
('2020A101', 2020, 'FEBRUARY', 229.33, 1.53, 227.8),
('2020A102', 2020, 'MARCH', 177.4, 1.49, 175.91),
('2020A103', 2020, 'APRIL', 183.28, 1.27, 182.01),
('2020A104', 2020, 'MAY', 296.8, 1.46, 295.34),
('2020A105', 2020, 'JUNE', 342.18, 1.44, 340.75),
('2020A106', 2020, 'JULY', 252.36, 1.38, 250.98),
('2020A107', 2020, 'AUGUST', 469.86, 1.57, 468.29),
('2020A108', 2020, 'SEPTEMBER', 446.57, 1.51, 445.06),
('2020A109', 2020, 'OCTOBER', 489.88, 1.56, 488.32),
('2020A110', 2020, 'NOVMBER', 367.89, 1.46, 366.44),
('2020A111', 2020, 'DECEMBER', 291.36, 1.45, 289.91);

-- --------------------------------------------------------

--
-- Table structure for table `gov_coal_avg_values`
--

DROP TABLE IF EXISTS `gov_coal_avg_values`;
CREATE TABLE IF NOT EXISTS `gov_coal_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Gov_Coal` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gov_coal_avg_values`
--

INSERT INTO `gov_coal_avg_values` (`Year`, `Gov_Coal`) VALUES
(2016, 4.61917),
(2017, 7.2575),
(2018, 7.35167),
(2019, 7.79583),
(2020, 7.44333);

-- --------------------------------------------------------

--
-- Table structure for table `gov_fuel_avg_values`
--

DROP TABLE IF EXISTS `gov_fuel_avg_values`;
CREATE TABLE IF NOT EXISTS `gov_fuel_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Gov_Fuel` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gov_fuel_avg_values`
--

INSERT INTO `gov_fuel_avg_values` (`Year`, `Gov_Fuel`) VALUES
(2016, 20.8475),
(2017, 22.1458),
(2018, 21.1742),
(2019, 23.9025),
(2020, 19.1142);

-- --------------------------------------------------------

--
-- Table structure for table `privatet_hydro_purchased`
--

DROP TABLE IF EXISTS `privatet_hydro_purchased`;
CREATE TABLE IF NOT EXISTS `privatet_hydro_purchased` (
  `Id` varchar(11) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Electricity_Generation` float DEFAULT NULL,
  `Purchased_cost` float DEFAULT NULL,
  `Unit_Price` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `privatet_hydro_purchased`
--

INSERT INTO `privatet_hydro_purchased` (`Id`, `Year`, `Month`, `Electricity_Generation`, `Purchased_cost`, `Unit_Price`) VALUES
('2016A100', 2016, 'JANUARY', 65.96, 984.91, 14.93),
('2016A101', 2016, 'FEBRUARY', 35.93, 564.54, 15.71),
('2016A102', 2016, 'MARCH', 23.2, 365.52, 15.75),
('2016A103', 2016, 'APRIL', 39.55, 624.5, 15.79),
('2016A104', 2016, 'MAY', 118.5, 1761.6, 14.87),
('2016A105', 2016, 'JUNE', 111.27, 1643.82, 14.77),
('2016A106', 2016, 'JULY', 67.04, 991.64, 14.79),
('2016A107', 2016, 'AUGUST', 60.65, 894.5, 14.75),
('2016A108', 2016, 'SEPTEMBER', 45.82, 674.09, 14.71),
('2016A109', 2016, 'OCTOBER', 45, 664.2, 14.76),
('2016A110', 2016, 'NOVMBER', 88.38, 1264.77, 14.31),
('2016A111', 2016, 'DECEMBER', 37.55, 543.7, 14.48),
('2017A100', 2017, 'JANUARY', 29.27, 431.26, 14.73),
('2017A101', 2017, 'FEBRUARY', 20.86, 329.49, 15.79),
('2017A102', 2017, 'MARCH', 54.94, 870.96, 15.85),
('2017A103', 2017, 'APRIL', 47.44, 758.36, 15.99),
('2017A104', 2017, 'MAY', 65.81, 959.86, 14.59),
('2017A105', 2017, 'JUNE', 100.44, 1436.1, 14.3),
('2017A106', 2017, 'JULY', 64.55, 928.37, 14.38),
('2017A107', 2017, 'AUGUST', 102.81, 1466.47, 14.26),
('2017A108', 2017, 'SEPTEMBER', 112.92, 1616.01, 14.31),
('2017A109', 2017, 'OCTOBER', 121.7, 1740.98, 14.31),
('2017A110', 2017, 'NOVMBER', 105.66, 1507.02, 14.26),
('2017A111', 2017, 'DECEMBER', 119.07, 1695.01, 14.24),
('2018A100', 2018, 'JANUARY', 65.41, 980.92, 15),
('2018A101', 2018, 'FEBRUARY', 43.48, 673.41, 15.49),
('2018A102', 2018, 'MARCH', 45.43, 697.16, 15.34),
('2018A103', 2018, 'APRIL', 79.85, 1216.66, 15.24),
('2018A104', 2018, 'MAY', 141.62, 1998.65, 14.11),
('2018A105', 2018, 'JUNE', 155.68, 2200.23, 14.13),
('2018A106', 2018, 'JULY', 112.56, 1588.03, 14.11),
('2018A107', 2018, 'AUGUST', 122.01, 1719.96, 14.1),
('2018A108', 2018, 'SEPTEMBER', 69.09, 983.12, 14.23),
('2018A109', 2018, 'OCTOBER', 154.39, 2198.82, 14.24),
('2018A110', 2018, 'NOVMBER', 142.69, 2064.12, 14.47),
('2018A111', 2018, 'DECEMBER', 99.79, 1480.7, 14.84),
('2019A100', 2019, 'JANUARY', 58.77, 930.33, 15.83),
('2019A101', 2019, 'FEBRUARY', 58.46, 967.9, 16.56),
('2019A102', 2019, 'MARCH', 28.67, 473.57, 16.52),
('2019A103', 2019, 'APRIL', 42.11, 681.26, 16.18),
('2019A104', 2019, 'MAY', 50.63, 788.1, 15.57),
('2019A105', 2019, 'JUNE', 83.66, 1294.47, 15.47),
('2019A106', 2019, 'JULY', 72.33, 1117.16, 15.44),
('2019A107', 2019, 'AUGUST', 97.4, 1498.2, 15.38),
('2019A108', 2019, 'SEPTEMBER', 108.92, 1670.16, 15.33),
('2019A109', 2019, 'OCTOBER', 157.83, 2444.91, 15.49),
('2019A110', 2019, 'NOVMBER', 131.3, 2153.91, 16.4),
('2019A111', 2019, 'DECEMBER', 120.9, 1960.68, 16.22),
('2020A100', 2020, 'JANUARY', 71.15, 1169.9, 16.44),
('2020A101', 2020, 'FEBRUARY', 42.96, 729.71, 16.98),
('2020A102', 2020, 'MARCH', 22.26, 375.23, 16.86),
('2020A103', 2020, 'APRIL', 37.75, 638.68, 16.92),
('2020A104', 2020, 'MAY', 111.5, 1717.26, 15.4),
('2020A105', 2020, 'JUNE', 97.03, 1479.28, 15.25),
('2020A106', 2020, 'JULY', 94.22, 1443.29, 15.32),
('2020A107', 2020, 'AUGUST', 108.98, 1641.53, 15.06),
('2020A108', 2020, 'SEPTEMBER', 126.64, 1870.85, 14.77),
('2020A109', 2020, 'OCTOBER', 117.16, 1751.02, 14.95),
('2020A110', 2020, 'NOVMBER', 113.41, 1757.95, 15.5),
('2020A111', 2020, 'DECEMBER', 103.86, 1624.85, 15.64);

-- --------------------------------------------------------

--
-- Table structure for table `private_fuel_purchased`
--

DROP TABLE IF EXISTS `private_fuel_purchased`;
CREATE TABLE IF NOT EXISTS `private_fuel_purchased` (
  `Id` varchar(11) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Private` float DEFAULT NULL,
  `Total_Cost` float DEFAULT NULL,
  `Avg_Purches_Cost` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `private_fuel_purchased`
--

INSERT INTO `private_fuel_purchased` (`Id`, `Year`, `Month`, `Private`, `Total_Cost`, `Avg_Purches_Cost`) VALUES
('2016A100', 2016, 'JANUARY', 167.87, 4732.86, 28.19),
('2016A101', 2016, 'FEBRUARY', 221.65, 5726.46, 25.84),
('2016A102', 2016, 'MARCH', 206.26, 5637.07, 27.33),
('2016A103', 2016, 'APRIL', 224.58, 5180.99, 23.07),
('2016A104', 2016, 'MAY', 128.55, 2686.87, 20.9),
('2016A105', 2016, 'JUNE', 18.14, 1737.34, 95.76),
('2016A106', 2016, 'JULY', 81.96, 3185.68, 38.87),
('2016A107', 2016, 'AUGUST', 184.21, 5438.22, 29.52),
('2016A108', 2016, 'SEPTEMBER', 169.53, 5097.77, 30.07),
('2016A109', 2016, 'OCTOBER', 284.66, 7399.46, 25.99),
('2016A110', 2016, 'NOVMBER', 203.28, 5946.87, 29.25),
('2016A111', 2016, 'DECEMBER', 273.03, 7266.96, 26.62),
('2017A100', 2017, 'JANUARY', 260.12, 7340.38, 28.22),
('2017A101', 2017, 'FEBRUARY', 213.51, 6175.43, 28.92),
('2017A102', 2017, 'MARCH', 286.15, 7162.61, 25.03),
('2017A103', 2017, 'APRIL', 274.63, 6821.59, 24.84),
('2017A104', 2017, 'MAY', 234.95, 6147.91, 26.17),
('2017A105', 2017, 'JUNE', 169.94, 5492.69, 32.32),
('2017A106', 2017, 'JULY', 260.33, 7343.28, 28.21),
('2017A107', 2017, 'AUGUST', 203.38, 5886.48, 28.94),
('2017A108', 2017, 'SEPTEMBER', 186.71, 5521.43, 29.57),
('2017A109', 2017, 'OCTOBER', 80.75, 2519.76, 31.2),
('2017A110', 2017, 'NOVMBER', 184.27, 5267.16, 28.58),
('2017A111', 2017, 'DECEMBER', 161.14, 4859.27, 30.16),
('2018A100', 2018, 'JANUARY', 228.4, 6438.6, 28.19),
('2018A101', 2018, 'FEBRUARY', 182.89, 5370.78, 29.37),
('2018A102', 2018, 'MARCH', 247.32, 6597.77, 26.68),
('2018A103', 2018, 'APRIL', 229.21, 5731.02, 25),
('2018A104', 2018, 'MAY', 108.7, 4123.38, 37.93),
('2018A105', 2018, 'JUNE', 44.19, 2838.72, 64.24),
('2018A106', 2018, 'JULY', 162.04, 5098.99, 31.47),
('2018A107', 2018, 'AUGUST', 123.25, 3464.59, 28.11),
('2018A108', 2018, 'SEPTEMBER', 181.94, 5052.09, 27.77),
('2018A109', 2018, 'OCTOBER', 30.84, 1483.44, 48.11),
('2018A110', 2018, 'NOVMBER', 14.66, 1177.6, 80.34),
('2018A111', 2018, 'DECEMBER', 186.78, 4563.6, 24.43),
('2019A100', 2019, 'JANUARY', 228.05, 7265.61, 31.86),
('2019A101', 2019, 'FEBRUARY', 182.58, 5719.14, 31.32),
('2019A102', 2019, 'MARCH', 332.8, 8691.85, 26.12),
('2019A103', 2019, 'APRIL', 287.42, 7327.25, 25.49),
('2019A104', 2019, 'MAY', 345.31, 10192, 29.52),
('2019A105', 2019, 'JUNE', 284.79, 8612.39, 30.24),
('2019A106', 2019, 'JULY', 301.08, 8363.98, 27.78),
('2019A107', 2019, 'AUGUST', 304.39, 8773.38, 28.82),
('2019A108', 2019, 'SEPTEMBER', 239.36, 7437.94, 31.07),
('2019A109', 2019, 'OCTOBER', 42.5, 2910.07, 68.48),
('2019A110', 2019, 'NOVMBER', 169.45, 5483.94, 32.36),
('2019A111', 2019, 'DECEMBER', 157.15, 5270.34, 33.54),
('2020A100', 2020, 'JANUARY', 335.43, 9605.6, 28.64),
('2020A101', 2020, 'FEBRUARY', 343.38, 10179.3, 29.64),
('2020A102', 2020, 'MARCH', 292.51, 9008.9, 30.8),
('2020A103', 2020, 'APRIL', 198.51, 5283.65, 26.62),
('2020A104', 2020, 'MAY', 154.61, 3338.41, 21.59),
('2020A105', 2020, 'JUNE', 173.48, 4601.65, 26.53),
('2020A106', 2020, 'JULY', 258.54, 7065.97, 27.33),
('2020A107', 2020, 'AUGUST', 206.95, 6124.96, 29.6),
('2020A108', 2020, 'SEPTEMBER', 95.97, 3272.95, 34.11),
('2020A109', 2020, 'OCTOBER', 43.82, 1679.26, 38.32),
('2020A110', 2020, 'NOVMBER', 264.66, 6978.51, 26.37),
('2020A111', 2020, 'DECEMBER', 349.12, 8668.12, 24.83);

-- --------------------------------------------------------

--
-- Table structure for table `private_wind_generation`
--

DROP TABLE IF EXISTS `private_wind_generation`;
CREATE TABLE IF NOT EXISTS `private_wind_generation` (
  `ID` varchar(10) NOT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Electricity_Generation` varchar(10) DEFAULT NULL,
  `Total_Cost` varchar(10) DEFAULT NULL,
  `Wind_Unit_Cost` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `private_wind_generation`
--

INSERT INTO `private_wind_generation` (`ID`, `Year`, `Month`, `Electricity_Generation`, `Total_Cost`, `Wind_Unit_Cost`) VALUES
('2016A100', '2016', 'January', '18.77', '410.91', '21.89'),
('2016A101', '2016', 'February', '12.542', '280.411', '22.36'),
('2016A102', '2016', 'March', '9.679', '213.41', '22.05'),
('2016A103', '2016', 'April', '9.446', '209.093', '22.14'),
('2016A104', '2016', 'May', '34.325', '760.005', '22.14'),
('2016A105', '2016', 'June', '54.7960000', '1221.85', '22.3'),
('2016A106', '2016', 'July', '47.229', '1053.77', '22.31'),
('2016A107', '2016', 'August', '47.075', '1052.67', '22.36'),
('2016A108', '2016', 'September', '50.19', '1109.118', '22.1'),
('2016A109', '2016', 'October', '32.1119999', '707.156999', '22.02'),
('2016A110', '2016', 'November', '8.686', '192.965999', '22.22'),
('2016A111', '2016', 'December', '17.692', '382.846', '21.64'),
('2017A100', '2017', 'January', '19.018', '425.631999', '22.38'),
('2017A101', '2017', 'February', '16.609', '372.926', '22.45'),
('2017A102', '2017', 'March', '6.79700000', '153.293999', '22.55'),
('2017A103', '2017', 'April', '21.561', '489.37', '22.7'),
('2017A104', '2017', 'May', '42.1930000', '957.217', '22.69'),
('2017A105', '2017', 'June', '63.62', '1407.392', '22.12'),
('2017A106', '2017', 'July', '46.5460000', '1037.53300', '22.29'),
('2017A107', '2017', 'August', '48.808', '1087.215', '22.28'),
('2017A108', '2017', 'September', '43.0569999', '957.825', '22.25'),
('2017A109', '2017', 'October', '32.149', '715.572', '22.26'),
('2017A110', '2017', 'November', '10.677', '235.684000', '22.07'),
('2017A111', '2017', 'December', '13.895', '305.034', '21.95'),
('2018A100', '2018', 'January', '17.7490000', '394.18', '22.21'),
('2018A101', '2018', 'February', '20.588', '456.22', '22.16'),
('2018A102', '2018', 'March', '12.955', '288.339', '22.26'),
('2018A103', '2018', 'April', '6.517', '144.734', '22.21'),
('2018A104', '2018', 'May', '24.7780000', '539.584000', '21.78'),
('2018A105', '2018', 'June', '68.109', '1392.82299', '20.45'),
('2018A106', '2018', 'July', '54.0710000', '1085.771', '20.08'),
('2018A107', '2018', 'August', '52.231', '1006.166', '19.26'),
('2018A108', '2018', 'September', '36.648', '704.388', '19.22'),
('2018A109', '2018', 'October', '7.766', '152.66', '19.66'),
('2018A110', '2018', 'November', '9.396', '187.715', '19.98'),
('2018A111', '2018', 'December', '14.2329999', '279.306', '19.62'),
('2019A100', '2019', 'January', '41.997', '874.036000', '20.81'),
('2019A101', '2019', 'February', '14.508', '290.11', '20.0'),
('2019A102', '2019', 'March', '10.4029999', '205.62', '19.77'),
('2019A103', '2019', 'April', '6.064', '120.104', '19.81'),
('2019A104', '2019', 'May', '43.382', '844.81', '19.47'),
('2019A105', '2019', 'June', '63.0560000', '1234.193', '19.57'),
('2019A106', '2019', 'July', '56.0639999', '1092.586', '19.49'),
('2019A107', '2019', 'August', '59.457', '1154.075', '19.41'),
('2019A108', '2019', 'September', '40.22', '781.317', '19.43'),
('2019A109', '2019', 'October', '7.291', '141.999', '19.48'),
('2019A110', '2019', 'November', '8.478', '161.995', '19.11'),
('2019A111', '2019', 'December', '16.293', '311.216', '19.1'),
('2020A100', '2020', 'January', '19.18', '369.885999', '19.28'),
('2020A101', '2020', 'February', '20.9659999', '404.639', '19.3'),
('2020A102', '2020', 'March', '11.693', '224.507999', '19.2'),
('2020A103', '2020', 'April', '7.01200000', '132.907', '18.95'),
('2020A104', '2020', 'May', '29.7930000', '533.436', '17.9'),
('2020A105', '2020', 'June', '51.067', '898.756000', '17.6'),
('2020A106', '2020', 'July', '40.747', '678.637', '16.65'),
('2020A107', '2020', 'August', '40.192', '612.588000', '15.24'),
('2020A108', '2020', 'September', '42.315', '639.896', '15.12'),
('2020A109', '2020', 'October', '32.4980000', '495.286', '15.24'),
('2020A110', '2020', 'November', '11.4940000', '184.454', '16.05'),
('2020A111', '2020', 'December', '17.5', '271.677', '15.52');

-- --------------------------------------------------------

--
-- Table structure for table `pvt_fuel_avg_values`
--

DROP TABLE IF EXISTS `pvt_fuel_avg_values`;
CREATE TABLE IF NOT EXISTS `pvt_fuel_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Pvt_Fuel` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pvt_fuel_avg_values`
--

INSERT INTO `pvt_fuel_avg_values` (`Year`, `Pvt_Fuel`) VALUES
(2016, 33.4508),
(2017, 28.5133),
(2018, 37.6367),
(2019, 33.05),
(2020, 28.6983);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_hydro_avg_values`
--

DROP TABLE IF EXISTS `pvt_hydro_avg_values`;
CREATE TABLE IF NOT EXISTS `pvt_hydro_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Pvt_Hydro` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pvt_hydro_avg_values`
--

INSERT INTO `pvt_hydro_avg_values` (`Year`, `Pvt_Hydro`) VALUES
(2016, 14.9683),
(2017, 14.7508),
(2018, 14.6083),
(2019, 15.8658),
(2020, 15.7575);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_solar_avg_values`
--

DROP TABLE IF EXISTS `pvt_solar_avg_values`;
CREATE TABLE IF NOT EXISTS `pvt_solar_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Pvt_Solar` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pvt_solar_avg_values`
--

INSERT INTO `pvt_solar_avg_values` (`Year`, `Pvt_Solar`) VALUES
(2016, 21.6967),
(2017, 23.2033),
(2018, 23.075),
(2019, 22.8417),
(2020, 22.3533);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_wind_avg_values`
--

DROP TABLE IF EXISTS `pvt_wind_avg_values`;
CREATE TABLE IF NOT EXISTS `pvt_wind_avg_values` (
  `Year` int(4) DEFAULT NULL,
  `Pvt_Wind` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pvt_wind_avg_values`
--

INSERT INTO `pvt_wind_avg_values` (`Year`, `Pvt_Wind`) VALUES
(2016, 22.1275),
(2017, 22.3325),
(2018, 20.7408),
(2019, 19.6208),
(2020, 17.1708);

-- --------------------------------------------------------

--
-- Table structure for table `solar_power`
--

DROP TABLE IF EXISTS `solar_power`;
CREATE TABLE IF NOT EXISTS `solar_power` (
  `Id` varchar(11) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Generation` float DEFAULT NULL,
  `Purchased_cost` float DEFAULT NULL,
  `Unit_Cost` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `solar_power`
--

INSERT INTO `solar_power` (`Id`, `Year`, `Month`, `Generation`, `Purchased_cost`, `Unit_Cost`) VALUES
('2016A100', 2016, 'JANUARY', 0.17, 3.48, 20.73),
('2016A101', 2016, 'FEBRUARY', 0.14, 2.95, 24.35),
('2016A102', 2016, 'MARCH', 0.17, 3.42, 17.9),
('2016A103', 2016, 'APRIL', 0.15, 3.17, 22.32),
('2016A104', 2016, 'MAY', 0.13, 2.7, 24.42),
('2016A105', 2016, 'JUNE', 0.15, 3.15, 17.73),
('2016A106', 2016, 'JULY', 0.17, 3.45, 18.84),
('2016A107', 2016, 'AUGUST', 0.14, 2.8, 25.54),
('2016A108', 2016, 'SEPTEMBER', 0.14, 2.98, 20.66),
('2016A109', 2016, 'OCTOBER', 0.27, 5.9, 22),
('2016A110', 2016, 'NOVMBER', 0.99, 22.79, 22.93),
('2016A111', 2016, 'DECEMBER', 1.67, 38.37, 22.94),
('2017A100', 2017, 'JANUARY', 2.77, 64.42, 23.26),
('2017A101', 2017, 'FEBRUARY', 3.12, 72.52, 23.24),
('2017A102', 2017, 'MARCH', 7.13, 166.19, 23.3),
('2017A103', 2017, 'APRIL', 7.4, 173.97, 23.52),
('2017A104', 2017, 'MAY', 7, 164.59, 23.52),
('2017A105', 2017, 'JUNE', 7.64, 176.27, 23.08),
('2017A106', 2017, 'JULY', 9.47, 218.65, 23.09),
('2017A107', 2017, 'AUGUST', 9.41, 217.27, 23.09),
('2017A108', 2017, 'SEPTEMBER', 8.59, 198.33, 23.09),
('2017A109', 2017, 'OCTOBER', 8.76, 202.12, 23.08),
('2017A110', 2017, 'NOVMBER', 6.15, 142.03, 23.08),
('2017A111', 2017, 'DECEMBER', 7.73, 178.4, 23.09),
('2018A100', 2018, 'JANUARY', 8.36, 192.87, 23.08),
('2018A101', 2018, 'FEBRUARY', 8.2, 189.25, 23.08),
('2018A102', 2018, 'MARCH', 9.31, 214.88, 23.08),
('2018A103', 2018, 'APRIL', 8.65, 199.65, 23.09),
('2018A104', 2018, 'MAY', 7.59, 175.24, 23.08),
('2018A105', 2018, 'JUNE', 8.58, 198.14, 23.09),
('2018A106', 2018, 'JULY', 9.08, 209.49, 23.08),
('2018A107', 2018, 'AUGUST', 9.37, 216.24, 23.08),
('2018A108', 2018, 'SEPTEMBER', 9.07, 209.41, 23.08),
('2018A109', 2018, 'OCTOBER', 7.47, 172.28, 23.06),
('2018A110', 2018, 'NOVMBER', 6.72, 154.96, 23.06),
('2018A111', 2018, 'DECEMBER', 5.81, 133.79, 23.04),
('2019A100', 2019, 'JANUARY', 8.89, 204.83, 23.05),
('2019A101', 2019, 'FEBRUARY', 7.75, 178.21, 23),
('2019A102', 2019, 'MARCH', 10.36, 236.88, 22.88),
('2019A103', 2019, 'APRIL', 9.12, 208.59, 22.88),
('2019A104', 2019, 'MAY', 10.03, 229.58, 22.89),
('2019A105', 2019, 'JUNE', 8.82, 201.81, 22.89),
('2019A106', 2019, 'JULY', 9.37, 214.63, 22.9),
('2019A107', 2019, 'AUGUST', 8.45, 192.52, 22.79),
('2019A108', 2019, 'SEPTEMBER', 7.68, 175.08, 22.79),
('2019A109', 2019, 'OCTOBER', 7.32, 166.65, 22.77),
('2019A110', 2019, 'NOVMBER', 7.75, 174.89, 22.57),
('2019A111', 2019, 'DECEMBER', 7.09, 160.93, 22.69),
('2020A100', 2020, 'JANUARY', 9.89, 223.27, 22.58),
('2020A101', 2020, 'FEBRUARY', 9.91, 223.93, 22.59),
('2020A102', 2020, 'MARCH', 11.05, 249.36, 22.56),
('2020A103', 2020, 'APRIL', 10.31, 232.3, 22.53),
('2020A104', 2020, 'MAY', 8.97, 202.41, 22.57),
('2020A105', 2020, 'JUNE', 9.41, 211.45, 22.48),
('2020A106', 2020, 'JULY', 9.58, 214.38, 22.38),
('2020A107', 2020, 'AUGUST', 10.37, 231.86, 22.36),
('2020A108', 2020, 'SEPTEMBER', 9.33, 207.19, 22.2),
('2020A109', 2020, 'OCTOBER', 11.71, 258.58, 22.08),
('2020A110', 2020, 'NOVMBER', 8.71, 191.24, 21.96),
('2020A111', 2020, 'DECEMBER', 8.74, 191.86, 21.95);

-- --------------------------------------------------------

--
-- Table structure for table `weather_data`
--

DROP TABLE IF EXISTS `weather_data`;
CREATE TABLE IF NOT EXISTS `weather_data` (
  `ID` varchar(10) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Annual_Avg_Temp` float DEFAULT NULL,
  `Annual_Avg_Wind_Speed` float DEFAULT NULL,
  `Annual_Rain_Precipitation` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `weather_data`
--

INSERT INTO `weather_data` (`ID`, `Year`, `Location`, `Latitude`, `Longitude`, `Annual_Avg_Temp`, `Annual_Avg_Wind_Speed`, `Annual_Rain_Precipitation`) VALUES
('2014A10', 2014, 'Anuradhapura', 8.31135, 80.4036, 27.4, 3.1, 2212.59),
('2015A11', 2015, 'Anuradhapura', 8.31135, 80.4036, 27.6, 3.6, 1760.25),
('2016A12', 2016, 'Anuradhapura', 8.31135, 80.4036, 27.9, 4, 896.89),
('2017A13', 2017, 'Anuradhapura', 8.31135, 80.4036, 27.5, 3.2, 1484.38),
('2020A14', 2020, 'Anuradhapura', 8.31135, 80.4036, 27.6, 3, 1261.11),
('2021A15', 2021, 'Anuradhapura', 8.31135, 80.4036, 27.3, 3.5, 1438.1),
('2014B10', 2014, 'Badulla', 6.98472, 81.0564, 24, 3.6, 2153.32),
('2015B11', 2015, 'Badulla', 6.98472, 81.0564, 24.5, 4.5, 2320.94),
('2016B12', 2016, 'Badulla', 6.98472, 81.0564, 24.3, 3.4, 1473.44),
('2017B13', 2017, 'Badulla', 6.98472, 81.0564, 23.9, 2.8, 1832.34),
('2020B14', 2020, 'Badulla', 6.98472, 81.0564, 20.8, 7.9, 2601.5),
('2021B15', 2021, 'Badulla', 6.98472, 81.0564, 19.4, 6.8, 2186.4),
('2014BA10', 2014, 'Baticaloa', 7.731, 81.6747, 28.4, 4.7, 2483.85),
('2015BA11', 2015, 'Baticaloa', 7.731, 81.6747, 28.6, 4.9, 1962.39),
('2016BA12', 2016, 'Baticaloa', 7.731, 81.6747, 29.1, 6.4, 1242.05),
('2017BA13', 2017, 'Baticaloa', 7.731, 81.6747, 28.4, 5.4, 1516.92),
('2020BA14', 2020, 'Baticaloa', 7.731, 81.6747, 28.7, 4.8, 1589.97),
('2021BA15', 2021, 'Baticaloa', 7.731, 81.6747, 28.5, 3.5, 2269.45),
('2014C10', 2014, 'Colombo', 6.93548, 79.8487, 27.6, 5.2, 2641.86),
('2015C11', 2015, 'Colombo', 6.93548, 79.8487, 27.8, 4.7, 2920.44),
('2016C12', 2016, 'Colombo', 6.93548, 79.8487, 28.2, 5.3, 2260.09),
('2017C13', 2017, 'Colombo', 6.93548, 79.8487, 27.9, 5.1, 2169.96),
('2020C14', 2020, 'Colombo', 6.93548, 79.8487, 28.4, 3.7, 2070.61),
('2021C15', 2021, 'Colombo', 6.93548, 79.8487, 27.9, 3.5, 2878.85),
('2014D10', 2014, 'Diyathalawa', 6.80925, 80.9595, 21.4, 6.2, 1988.29),
('2015D11', 2015, 'Diyathalawa', 6.80925, 80.9595, 21.8, 4.3, 2059.69),
('2016D12', 2016, 'Diyathalawa', 6.80925, 80.9595, 21.5, 8.2, 1535.91),
('2017D13', 2017, 'Diyathalawa', 6.80925, 80.9595, 21.2, 8, 1554.19),
('2020D14', 2020, 'Diyathalawa', 6.80925, 80.9595, 20.8, 6.7, 2601.5),
('2021D15', 2021, 'Diyathalawa', 6.80925, 80.9595, 19.4, 6.7, 2186.4),
('2014H10', 2014, 'Hambantota', 6.12459, 81.1011, 27.7, 14.1, 1087.3),
('2015H11', 2015, 'Hambantota', 6.12459, 81.1011, 27.4, 10.5, 1284.46),
('2016H12', 2016, 'Hambantota', 6.12459, 81.1011, 28.6, 12.9, 650.45),
('2017H13', 2017, 'Hambantota', 6.12459, 81.1011, 28.2, 12.6, 1128.5),
('2020H14', 2020, 'Hambantota', 6.12459, 81.1011, 28.6, 10.9, 711.43),
('2021H15', 2021, 'Hambantota', 6.12459, 81.1011, 28.3, 11, 1212.37),
('2014J10', 2014, 'Jaffna', 9.66845, 80.0074, 28.9, 8.9, 1339.84),
('2015J11', 2015, 'Jaffna', 9.66845, 80.0074, 29.2, 9.2, 1756.63),
('2016J12', 2016, 'Jaffna', 9.66845, 80.0074, 28.9, 24.1, 1083.3),
('2017J13', 2017, 'Jaffna', 9.66845, 80.0074, 28.6, 24.9, 986.78),
('2020J14', 2020, 'Jaffna', 9.66845, 80.0074, 28.2, 23.1, 2154.8),
('2021J15', 2021, 'Jaffna', 9.66845, 80.0074, 28, 22.2, 945.5),
('2014K10', 2014, 'Kandy', 7.29142, 80.6367, 24.5, 2.5, 2523.43),
('2015K11', 2015, 'Kandy', 7.29142, 80.6367, 24.6, 2.1, 1945.03),
('2016K12', 2016, 'Kandy', 7.29142, 80.6367, 24.9, 2.5, 1256.33),
('2017K13', 2017, 'Kandy', 7.29142, 80.6367, 24.5, 2.1, 1512.77),
('2020K14', 2020, 'Kandy', 7.29142, 80.6367, 25, 2.3, 1472.95),
('2021K15', 2021, 'Kandy', 7.29142, 80.6367, 24.6, 1.8, 2374.65),
('2014KT10', 2014, 'Katunayake', 7.16962, 79.8913, 27.4, 12.3, 2630.69),
('2015KT11', 2015, 'Katunayake', 7.16962, 79.8913, 27.6, 12, 3910.5),
('2016KT12', 2016, 'Katunayake', 7.16962, 79.8913, 28, 12.8, 1431.28),
('2017KT13', 2017, 'Katunayake', 7.16962, 79.8913, 27.6, 12.3, 1861.58),
('2020KT14', 2020, 'Katunayake', 7.16962, 79.8913, 28, 9.8, 2017.05),
('2021KT15', 2021, 'Katunayake', 7.16962, 79.8913, 27.5, 10, 2974.34),
('2014KU10', 2014, 'Kurunegala', 7.48886, 80.3623, 28.2, 3.9, 2729.18),
('2015KU11', 2015, 'Kurunegala', 7.48886, 80.3623, 28.3, 11, 1989.52),
('2016KU12', 2016, 'Kurunegala', 7.48886, 80.3623, 28, 4.7, 1778.22),
('2017KU13', 2017, 'Kurunegala', 7.48886, 80.3623, 28.2, 9.4, 2007.9),
('2020KU14', 2020, 'Kurunegala', 7.48886, 80.3623, 28, 2.1, 1893.84),
('2021KU15', 2021, 'Kurunegala', 7.48886, 80.3623, 27.2, 2.1, 2494.78),
('2014M10', 2014, 'Mannar', 8.98932, 79.8801, 28, 12.9, 1043.41),
('2015M11', 2015, 'Mannar', 8.98932, 79.8801, 28.2, 10, 1547.6),
('2016M12', 2016, 'Mannar', 8.98932, 79.8801, 28.4, 13.6, 714.77),
('2017M13', 2017, 'Mannar', 8.98932, 79.8801, 28.3, 15.4, 623.83),
('2020M14', 2020, 'Mannar', 8.98932, 79.8801, 28.4, 8.5, 908.04),
('2021M15', 2021, 'Mannar', 8.98932, 79.8801, 28.1, 10.2, 1823.95),
('2014NE10', 2014, 'Nuwara Eliya', 6.94972, 80.7891, 16, 6.6, 1859.72),
('2015NE11', 2015, 'Nuwara Eliya', 6.94972, 80.7891, 16.1, 5.2, 1874.47),
('2016NE12', 2016, 'Nuwara Eliya', 6.94972, 80.7891, 16.2, 6.5, 1126.79),
('2017NE13', 2017, 'Nuwara Eliya', 6.94972, 80.7891, 16, 5.5, 1503.93),
('2020NE14', 2020, 'Nuwara Eliya', 6.94972, 80.7891, 16.2, 10.5, 1553.64),
('2021NE15', 2021, 'Nuwara Eliya', 6.94972, 80.7891, 16, 10.8, 1928.03),
('2014P10', 2014, 'Puttalam', 8.04079, 79.8394, 27.7, 7.2, 1707.66),
('2015P11', 2015, 'Puttalam', 8.04079, 79.8394, 27.8, 6, 1531.58),
('2016P12', 2016, 'Puttalam', 8.04079, 79.8394, 28, 5.8, 984),
('2017P13', 2017, 'Puttalam', 8.04079, 79.8394, 28, 5.1, 745.96),
('2020P14', 2020, 'Puttalam', 8.04079, 79.8394, 28.1, 6.1, 929.61),
('2021P15', 2021, 'Puttalam', 8.04079, 79.8394, 27.9, 5.7, 1552.67),
('2014RP10', 2014, 'Rathnapura', 6.7081, 80.377, 26.4, 2.8, 4739.44),
('2015RP11', 2015, 'Rathnapura', 6.7081, 80.377, 26.6, 2.3, 3467.84),
('2016RP12', 2016, 'Rathnapura', 6.7081, 80.377, 26.9, 3.1, 2714.02),
('2017RP13', 2017, 'Rathnapura', 6.7081, 80.377, 26.4, 2.9, 4205.52),
('2020RP14', 2020, 'Rathnapura', 6.7081, 80.377, 27, 2.8, 3700.25),
('2021RP15', 2021, 'Rathnapura', 6.7081, 80.377, 26.4, 2.3, 4333.71),
('2014R10', 2014, 'Ratmalana', 6.81954, 79.8801, 28, 7.6, 2273.59),
('2015R11', 2015, 'Ratmalana', 6.81954, 79.8801, 28.2, 7.7, 3382.52),
('2016R12', 2016, 'Ratmalana', 6.81954, 79.8801, 28.6, 7.3, 2342.4),
('2017R13', 2017, 'Ratmalana', 6.81954, 79.8801, 28.3, 7.4, 1990.08),
('2020R14', 2020, 'Ratmalana', 6.81954, 79.8801, 28.8, 6.2, 1952.26),
('2021R15', 2021, 'Ratmalana', 6.81954, 79.8801, 28.3, 4.7, 2558.77),
('2014T10', 2014, 'Trincomalee', 8.5922, 81.1968, 28.2, 8.8, 1778.01),
('2015T11', 2015, 'Trincomalee', 8.5922, 81.1968, 28.2, 7.8, 2040.37),
('2016T12', 2016, 'Trincomalee', 8.5922, 81.1968, 28.5, 7.3, 997.14),
('2017T13', 2017, 'Trincomalee', 8.5922, 81.1968, 28.2, 6.8, 1753.92),
('2020T14', 2020, 'Trincomalee', 8.5922, 81.1968, 28.4, 3.8, 1522.23),
('2021T15', 2021, 'Trincomalee', 8.5922, 81.1968, 28, 3.2, 1639.02),
('2014V10', 2014, 'Vavniya', 8.75094, 80.499, 28.5, 4.4, 2099.61),
('2015V11', 2015, 'Vavniya', 8.75094, 80.499, 29, 4.8, 1657.07),
('2016V12', 2016, 'Vavniya', 8.75094, 80.499, 28.4, 6, 1274.57),
('2017V13', 2017, 'Vavniya', 8.75094, 80.499, 29.1, 17.4, 1930.04),
('2020V14', 2020, 'Vavniya', 8.75094, 80.499, 28.6, 14, 1766.3),
('2021V15', 2021, 'Vavniya', 8.75094, 80.499, 28.1, 14.1, 1336.7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
