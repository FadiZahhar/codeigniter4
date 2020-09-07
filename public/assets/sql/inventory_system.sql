-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 01, 2020 at 01:43 PM
-- Server version: 8.0.20
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buyers`
--

CREATE TABLE `tbl_buyers` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `discount_percentage` int DEFAULT NULL,
  `payment_mode` enum('cash','pending','online') DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currencies`
--

CREATE TABLE `tbl_currencies` (
  `id` int NOT NULL,
  `iso` varchar(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_currencies`
--

INSERT INTO `tbl_currencies` (`id`, `iso`, `name`, `status`) VALUES
(1, 'KRW', '(South) Korean Won', NULL),
(2, 'AFA', 'Afghanistan Afghani', NULL),
(3, 'ALL', 'Albanian Lek', NULL),
(4, 'DZD', 'Algerian Dinar', NULL),
(5, 'ADP', 'Andorran Peseta', NULL),
(6, 'AOK', 'Angolan Kwanza', NULL),
(7, 'ARS', 'Argentine Peso', NULL),
(8, 'AMD', 'Armenian Dram', NULL),
(9, 'AWG', 'Aruban Florin', NULL),
(10, 'AUD', 'Australian Dollar', NULL),
(11, 'BSD', 'Bahamian Dollar', NULL),
(12, 'BHD', 'Bahraini Dinar', NULL),
(13, 'BDT', 'Bangladeshi Taka', NULL),
(14, 'BBD', 'Barbados Dollar', NULL),
(15, 'BZD', 'Belize Dollar', NULL),
(16, 'BMD', 'Bermudian Dollar', NULL),
(17, 'BTN', 'Bhutan Ngultrum', NULL),
(18, 'BOB', 'Bolivian Boliviano', NULL),
(19, 'BWP', 'Botswanian Pula', NULL),
(20, 'BRL', 'Brazilian Real', NULL),
(21, 'GBP', 'British Pound', NULL),
(22, 'BND', 'Brunei Dollar', NULL),
(23, 'BGN', 'Bulgarian Lev', NULL),
(24, 'BUK', 'Burma Kyat', NULL),
(25, 'BIF', 'Burundi Franc', NULL),
(26, 'CAD', 'Canadian Dollar', NULL),
(27, 'CVE', 'Cape Verde Escudo', NULL),
(28, 'KYD', 'Cayman Islands Dollar', NULL),
(29, 'CLP', 'Chilean Peso', NULL),
(30, 'CLF', 'Chilean Unidades de Fomento', NULL),
(31, 'COP', 'Colombian Peso', NULL),
(32, 'XOF', 'Communauté Financière Africaine BCEAO - Francs', NULL),
(33, 'XAF', 'Communauté Financière Africaine BEAC, Francs', NULL),
(34, 'KMF', 'Comoros Franc', NULL),
(35, 'XPF', 'Comptoirs Français du Pacifique Francs', NULL),
(36, 'CRC', 'Costa Rican Colon', NULL),
(37, 'CUP', 'Cuban Peso', NULL),
(38, 'CYP', 'Cyprus Pound', NULL),
(39, 'CZK', 'Czech Republic Koruna', NULL),
(40, 'DKK', 'Danish Krone', NULL),
(41, 'YDD', 'Democratic Yemeni Dinar', NULL),
(42, 'DOP', 'Dominican Peso', NULL),
(43, 'XCD', 'East Caribbean Dollar', NULL),
(44, 'TPE', 'East Timor Escudo', NULL),
(45, 'ECS', 'Ecuador Sucre', NULL),
(46, 'EGP', 'Egyptian Pound', NULL),
(47, 'SVC', 'El Salvador Colon', NULL),
(48, 'EEK', 'Estonian Kroon (EEK)', NULL),
(49, 'ETB', 'Ethiopian Birr', NULL),
(50, 'EUR', 'Euro', NULL),
(51, 'FKP', 'Falkland Islands Pound', NULL),
(52, 'FJD', 'Fiji Dollar', NULL),
(53, 'GMD', 'Gambian Dalasi', NULL),
(54, 'GHC', 'Ghanaian Cedi', NULL),
(55, 'GIP', 'Gibraltar Pound', NULL),
(56, 'XAU', 'Gold, Ounces', NULL),
(57, 'GTQ', 'Guatemalan Quetzal', NULL),
(58, 'GNF', 'Guinea Franc', NULL),
(59, 'GWP', 'Guinea-Bissau Peso', NULL),
(60, 'GYD', 'Guyanan Dollar', NULL),
(61, 'HTG', 'Haitian Gourde', NULL),
(62, 'HNL', 'Honduran Lempira', NULL),
(63, 'HKD', 'Hong Kong Dollar', NULL),
(64, 'HUF', 'Hungarian Forint', NULL),
(65, 'INR', 'Indian Rupee', NULL),
(66, 'IDR', 'Indonesian Rupiah', NULL),
(67, 'XDR', 'International Monetary Fund (IMF) Special Drawing Rights', NULL),
(68, 'IRR', 'Iranian Rial', NULL),
(69, 'IQD', 'Iraqi Dinar', NULL),
(70, 'IEP', 'Irish Punt', NULL),
(71, 'ILS', 'Israeli Shekel', NULL),
(72, 'JMD', 'Jamaican Dollar', NULL),
(73, 'JPY', 'Japanese Yen', NULL),
(74, 'JOD', 'Jordanian Dinar', NULL),
(75, 'KHR', 'Kampuchean (Cambodian) Riel', NULL),
(76, 'KES', 'Kenyan Schilling', NULL),
(77, 'KWD', 'Kuwaiti Dinar', NULL),
(78, 'LAK', 'Lao Kip', NULL),
(79, 'LBP', 'Lebanese Pound', NULL),
(80, 'LSL', 'Lesotho Loti', NULL),
(81, 'LRD', 'Liberian Dollar', NULL),
(82, 'LYD', 'Libyan Dinar', NULL),
(83, 'MOP', 'Macau Pataca', NULL),
(84, 'MGF', 'Malagasy Franc', NULL),
(85, 'MWK', 'Malawi Kwacha', NULL),
(86, 'MYR', 'Malaysian Ringgit', NULL),
(87, 'MVR', 'Maldive Rufiyaa', NULL),
(88, 'MTL', 'Maltese Lira', NULL),
(89, 'MRO', 'Mauritanian Ouguiya', NULL),
(90, 'MUR', 'Mauritius Rupee', NULL),
(91, 'MXP', 'Mexican Peso', NULL),
(92, 'MNT', 'Mongolian Tugrik', NULL),
(93, 'MAD', 'Moroccan Dirham', NULL),
(94, 'MZM', 'Mozambique Metical', NULL),
(95, 'NAD', 'Namibian Dollar', NULL),
(96, 'NPR', 'Nepalese Rupee', NULL),
(97, 'ANG', 'Netherlands Antillian Guilder', NULL),
(98, 'YUD', 'New Yugoslavia Dinar', NULL),
(99, 'NZD', 'New Zealand Dollar', NULL),
(100, 'NIO', 'Nicaraguan Cordoba', NULL),
(101, 'NGN', 'Nigerian Naira', NULL),
(102, 'KPW', 'North Korean Won', NULL),
(103, 'NOK', 'Norwegian Kroner', NULL),
(104, 'OMR', 'Omani Rial', NULL),
(105, 'PKR', 'Pakistan Rupee', NULL),
(106, 'XPD', 'Palladium Ounces', NULL),
(107, 'PAB', 'Panamanian Balboa', NULL),
(108, 'PGK', 'Papua New Guinea Kina', NULL),
(109, 'PYG', 'Paraguay Guarani', NULL),
(110, 'PEN', 'Peruvian Nuevo Sol', NULL),
(111, 'PHP', 'Philippine Peso', NULL),
(112, 'XPT', 'Platinum, Ounces', NULL),
(113, 'PLN', 'Polish Zloty', NULL),
(114, 'QAR', 'Qatari Rial', NULL),
(115, 'RON', 'Romanian Leu', NULL),
(116, 'RUB', 'Russian Ruble', NULL),
(117, 'RWF', 'Rwanda Franc', NULL),
(118, 'WST', 'Samoan Tala', NULL),
(119, 'STD', 'Sao Tome and Principe Dobra', NULL),
(120, 'SAR', 'Saudi Arabian Riyal', NULL),
(121, 'SCR', 'Seychelles Rupee', NULL),
(122, 'SLL', 'Sierra Leone Leone', NULL),
(123, 'XAG', 'Silver, Ounces', NULL),
(124, 'SGD', 'Singapore Dollar', NULL),
(125, 'SKK', 'Slovak Koruna', NULL),
(126, 'SBD', 'Solomon Islands Dollar', NULL),
(127, 'SOS', 'Somali Schilling', NULL),
(128, 'ZAR', 'South African Rand', NULL),
(129, 'LKR', 'Sri Lanka Rupee', NULL),
(130, 'SHP', 'St. Helena Pound', NULL),
(131, 'SDP', 'Sudanese Pound', NULL),
(132, 'SRG', 'Suriname Guilder', NULL),
(133, 'SZL', 'Swaziland Lilangeni', NULL),
(134, 'SEK', 'Swedish Krona', NULL),
(135, 'CHF', 'Swiss Franc', NULL),
(136, 'SYP', 'Syrian Potmd', NULL),
(137, 'TWD', 'Taiwan Dollar', NULL),
(138, 'TZS', 'Tanzanian Schilling', NULL),
(139, 'THB', 'Thai Baht', NULL),
(140, 'TOP', 'Tongan Paanga', NULL),
(141, 'TTD', 'Trinidad and Tobago Dollar', NULL),
(142, 'TND', 'Tunisian Dinar', NULL),
(143, 'TRY', 'Turkish Lira', NULL),
(144, 'UGX', 'Uganda Shilling', NULL),
(145, 'AED', 'United Arab Emirates Dirham', NULL),
(146, 'UYU', 'Uruguayan Peso', NULL),
(147, 'USD', 'US Dollar', NULL),
(148, 'VUV', 'Vanuatu Vatu', NULL),
(149, 'VEF', 'Venezualan Bolivar', NULL),
(150, 'VND', 'Vietnamese Dong', NULL),
(151, 'YER', 'Yemeni Rial', NULL),
(152, 'CNY', 'Yuan (Chinese) Renminbi', NULL),
(153, 'ZRZ', 'Zaire Zaire', NULL),
(154, 'ZMK', 'Zambian Kwacha', NULL),
(155, 'ZWD', 'Zimbabwe Dollar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_options`
--

CREATE TABLE `tbl_options` (
  `id` int NOT NULL,
  `option_name` varchar(150) DEFAULT NULL,
  `option_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int NOT NULL,
  `buyer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int NOT NULL,
  `name` varchar(180) DEFAULT NULL,
  `description` text,
  `image` varchar(250) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Online web Tutor', 'online@gmail.com', '12345678', '2020-09-01 13:39:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_buyers`
--
ALTER TABLE `tbl_buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_currencies`
--
ALTER TABLE `tbl_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_buyers`
--
ALTER TABLE `tbl_buyers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_currencies`
--
ALTER TABLE `tbl_currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
