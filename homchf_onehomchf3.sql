-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: homchf.one.mysql.service.one.com:3306
-- Generation Time: Jan 24, 2022 at 02:26 PM
-- Server version: 10.3.32-MariaDB-1:10.3.32+maria~focal
-- PHP Version: 7.2.24-0ubuntu0.18.04.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homchf_onehomchf3`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'discover authentic taste with a tap', '6182462d99758.png', 0, '2021-11-03 09:19:57', '2022-01-21 02:15:10'),
(2, 'handi biriyani', '6182469ae8c95.jpeg', 0, '2021-11-03 09:21:46', '2022-01-21 02:15:12'),
(3, 'authentic telugu', '618246c684fc4.jpeg', 0, '2021-11-03 09:22:30', '2022-01-21 02:15:13'),
(4, 'tasty', '618246f11e101.jpeg', 0, '2021-11-03 09:23:13', '2022-01-21 02:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'South Indian', '618254facc56c.jpg', 1, '2021-10-27 22:25:13', '2021-11-03 10:23:06'),
(2, 'North Indian', '618256a1b5339.jpg', 1, '2021-10-27 22:28:05', '2021-11-03 10:30:09'),
(3, 'Telugu', '6182559966b0d.jpeg', 0, '2021-11-03 10:25:45', '2021-11-03 10:27:50'),
(4, 'Sweets & Bakes', '6195f355b91cf.jpeg', 1, '2021-11-18 07:31:49', '2021-11-18 07:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`, `code`, `symbol`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek'),
(2, 'America', 'Dollars', 'USD', '$'),
(3, 'Afghanistan', 'Afghanis', 'AFN', '؋'),
(4, 'Argentina', 'Pesos', 'ARS', '$'),
(5, 'Aruba', 'Guilders', 'AWG', 'Afl'),
(6, 'Australia', 'Dollars', 'AUD', '$'),
(7, 'Azerbaijan', 'New Manats', 'AZN', '₼'),
(8, 'Bahamas', 'Dollars', 'BSD', '$'),
(9, 'Barbados', 'Dollars', 'BBD', '$'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.'),
(11, 'Belgium', 'Euro', 'EUR', '€'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$'),
(13, 'Bermuda', 'Dollars', 'BMD', '$'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM'),
(16, 'Botswana', 'Pula', 'BWP', 'P'),
(17, 'Bulgaria', 'Leva', 'BGN', 'Лв.'),
(18, 'Brazil', 'Reais', 'BRL', 'R$'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£\r\n'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$'),
(21, 'Cambodia', 'Riels', 'KHR', '៛'),
(22, 'Canada', 'Dollars', 'CAD', '$'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$'),
(24, 'Chile', 'Pesos', 'CLP', '$'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥'),
(26, 'Colombia', 'Pesos', 'COP', '$'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn'),
(29, 'Cuba', 'Pesos', 'CUP', '₱'),
(30, 'Cyprus', 'Euro', 'EUR', '€'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr'),
(33, 'Dominican Republic', 'Pesos', 'DOP', 'RD$'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$'),
(35, 'Egypt', 'Pounds', 'EGP', '£'),
(36, 'El Salvador', 'Colones', 'SVC', '$'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£'),
(38, 'Euro', 'Euro', 'EUR', '€'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£'),
(40, 'Fiji', 'Dollars', 'FJD', '$'),
(41, 'France', 'Euro', 'EUR', '€'),
(42, 'Ghana', 'Cedis', 'GHC', 'GH₵'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£'),
(44, 'Greece', 'Euro', 'EUR', '€'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q'),
(46, 'Guernsey', 'Pounds', 'GGP', '£'),
(47, 'Guyana', 'Dollars', 'GYD', '$'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr'),
(53, 'India', 'Rupees', 'INR', '₹'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp'),
(55, 'Iran', 'Rials', 'IRR', '﷼'),
(56, 'Ireland', 'Euro', 'EUR', '€'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£'),
(58, 'Israel', 'New Shekels', 'ILS', '₪'),
(59, 'Italy', 'Euro', 'EUR', '€'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$'),
(61, 'Japan', 'Yen', 'JPY', '¥'),
(62, 'Jersey', 'Pounds', 'JEP', '£'),
(63, 'Kazakhstan', 'Tenge', 'KZT', '₸'),
(64, 'Korea (North)', 'Won', 'KPW', '₩'),
(65, 'Korea (South)', 'Won', 'KRW', '₩'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'Лв'),
(67, 'Laos', 'Kips', 'LAK', '	₭'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls'),
(69, 'Lebanon', 'Pounds', 'LBP', '£'),
(70, 'Liberia', 'Dollars', 'LRD', '$'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt'),
(73, 'Luxembourg', 'Euro', 'EUR', '€'),
(74, 'Macedonia', 'Denars', 'MKD', 'Ден\r\n'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM'),
(76, 'Malta', 'Euro', 'EUR', '€'),
(77, 'Mauritius', 'Rupees', 'MUR', '₹'),
(78, 'Mexico', 'Pesos', 'MXN', '$'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮'),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT'),
(81, 'Namibia', 'Dollars', 'NAD', '$'),
(82, 'Nepal', 'Rupees', 'NPR', '₹'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ'),
(84, 'Netherlands', 'Euro', 'EUR', '€'),
(85, 'New Zealand', 'Dollars', 'NZD', '$'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$'),
(87, 'Nigeria', 'Nairas', 'NGN', '₦'),
(88, 'North Korea', 'Won', 'KPW', '₩'),
(89, 'Norway', 'Krone', 'NOK', 'kr'),
(90, 'Oman', 'Rials', 'OMR', '﷼'),
(91, 'Pakistan', 'Rupees', 'PKR', '₹'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs'),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php'),
(96, 'Poland', 'Zlotych', 'PLN', 'zł'),
(97, 'Qatar', 'Rials', 'QAR', '﷼'),
(98, 'Romania', 'New Lei', 'RON', 'lei'),
(99, 'Russia', 'Rubles', 'RUB', '₽'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼'),
(102, 'Serbia', 'Dinars', 'RSD', 'ع.د'),
(103, 'Seychelles', 'Rupees', 'SCR', '₹'),
(104, 'Singapore', 'Dollars', 'SGD', '$'),
(105, 'Slovenia', 'Euro', 'EUR', '€'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$'),
(107, 'Somalia', 'Shillings', 'SOS', 'S'),
(108, 'South Africa', 'Rand', 'ZAR', 'R'),
(109, 'South Korea', 'Won', 'KRW', '₩'),
(110, 'Spain', 'Euro', 'EUR', '€'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₹'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF'),
(114, 'Suriname', 'Dollars', 'SRD', '$'),
(115, 'Syria', 'Pounds', 'SYP', '£'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$'),
(117, 'Thailand', 'Baht', 'THB', '฿'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$'),
(119, 'Turkey', 'Lira', 'TRY', 'TL'),
(120, 'Turkey', 'Liras', 'TRL', '₺'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£'),
(124, 'United States of America', 'Dollars', 'USD', '$'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U'),
(127, 'Vatican City', 'Euro', 'EUR', '€'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs'),
(129, 'Vietnam', 'Dong', 'VND', '₫\r\n'),
(130, 'Yemen', 'Rials', 'YER', '﷼'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_online` tinyint(1) NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `notification` int(11) DEFAULT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zone`
--

CREATE TABLE `delivery_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zone_area`
--

CREATE TABLE `delivery_zone_area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vendor_id` text DEFAULT NULL,
  `location` text NOT NULL,
  `radius` int(11) NOT NULL,
  `lat` text NOT NULL,
  `lang` text NOT NULL,
  `delivery_zone_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `contact` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_black_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_availability` tinyint(1) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isItemTax` int(11) DEFAULT NULL,
  `item_tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notification` tinyint(4) DEFAULT NULL,
  `customer_app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_auth_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_notification` tinyint(4) DEFAULT NULL,
  `driver_app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_auth_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_notification` tinyint(4) DEFAULT NULL,
  `vendor_app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_auth_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '#6777EF',
  `driver_vehical_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_earning` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_acc_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification` tinyint(1) DEFAULT NULL,
  `verification_email` tinyint(1) DEFAULT NULL,
  `verification_phone` tinyint(1) DEFAULT NULL,
  `twilio_auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_phone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radius` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_auto_refrese` int(11) DEFAULT NULL,
  `mail_mailer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_from_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_mail` tinyint(1) DEFAULT NULL,
  `vendor_mail` tinyint(1) DEFAULT NULL,
  `driver_mail` tinyint(1) DEFAULT NULL,
  `ios_customer_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_vendor_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_driver_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_customer_app_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_vendor_app_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_driver_app_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_customer_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_vendor_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_driver_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_customer_app_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_vendor_app_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_driver_app_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_verify` tinyint(1) DEFAULT NULL,
  `isPickup` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `cancel_reason`, `company_black_logo`, `favicon`, `business_name`, `country`, `timezone`, `currency`, `currency_symbol`, `start_time`, `end_time`, `business_availability`, `message`, `isItemTax`, `item_tax`, `customer_notification`, `customer_app_id`, `customer_auth_key`, `customer_api_key`, `driver_notification`, `driver_app_id`, `driver_auth_key`, `driver_api_key`, `vendor_notification`, `vendor_app_id`, `vendor_auth_key`, `vendor_api_key`, `privacy_policy`, `terms_and_condition`, `help`, `about_us`, `site_color`, `driver_vehical_type`, `driver_earning`, `company_details`, `twilio_acc_id`, `verification`, `verification_email`, `verification_phone`, `twilio_auth_token`, `twilio_phone_no`, `radius`, `driver_auto_refrese`, `mail_mailer`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_from_address`, `customer_mail`, `vendor_mail`, `driver_mail`, `ios_customer_version`, `ios_vendor_version`, `ios_driver_version`, `ios_customer_app_url`, `ios_vendor_app_url`, `ios_driver_app_url`, `android_customer_version`, `android_vendor_version`, `android_driver_version`, `android_customer_app_url`, `android_vendor_app_url`, `android_driver_app_url`, `map_key`, `license_code`, `client_name`, `license_verify`, `isPickup`, `created_at`, `updated_at`) VALUES
(1, '[\"Lorem ispum is doner sumit aemit da cost\",\"I have multiple order\",\"Other Reason\"]', '61823235ce452.png', '61823235cf59f.png', 'HomChf', 'SWEDEN', 'Europe/Stockholm', 'SEK', 'kr', '01:00 am', '11:55 pm', 1, NULL, 1, '5', 1, '73bca386-6944-49ae-b890-02b823ef1b30', 'MzkzY2NiZDAtZWFjNC00MDVmLWJlMmUtNDZjYWQzMzI1OWMz', 'NTk4M2VhNWMtNjVmMS00MWJhLWE2N2QtYzYzZWUyMjdmNWY2', 0, NULL, NULL, NULL, 1, 'cd8942a9-ebc0-49c0-b022-868b3eb63f6f', 'MzkzY2NiZDAtZWFjNC00MDVmLWJlMmUtNDZjYWQzMzI1OWMz', 'Y2Y3ODkzMTAtY2E5NS00MTlkLWJmZDctY2FlMzEwZGQyNThm', NULL, NULL, NULL, NULL, '#E43E3F', '[{\"vehical_type\":\"car\",\"license\":\"yes\"},{\"vehical_type\":\"bike\",\"license\":\"yes\"},{\"vehical_type\":\"bicycle\",\"license\":\"no\"}]', '[{\"min_km\":\"5\",\"max_km\":\"100\",\"charge\":\"1\"}]', NULL, NULL, 0, 0, 0, NULL, NULL, '35', 60, 'smtp', 'smtp.mandrillapp.com', '587', 'HomChf', 'rkZgDulLZMJblLRBITWL2Q', 'ssl', 'HomChf', 1, 1, 0, '3.0.0', NULL, NULL, 'https://apps.apple.com/se/app/homchf/id1591763186?l=en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AIzaSyC2wDZend4lfhVc4oXgnWR-r3-xXe0UFxM', '394a2052-2f9c-4729-b174-3d05c0da8ea9', 'abhiramt', 1, 1, '2020-10-27 05:55:00', '2022-01-24 06:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `file`, `image`, `direction`, `status`, `created_at`, `updated_at`) VALUES
(1, 'english', 'english.json', 'english.png', 'ltr', 1, '2021-02-08 05:42:03', '2021-02-08 05:42:03'),
(2, 'spanish', 'spanish.json', 'spanish.png', 'ltr', 1, '2021-02-08 05:55:04', '2021-02-13 08:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `menu_category_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `vendor_id`, `menu_category_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Starters', 1, NULL, '6179ce78b9c0a.jpg', 1, '2021-10-27 19:26:49', '2021-10-28 00:11:04'),
(4, 'Veg', 1, NULL, '6179cef652c30.png', 1, '2021-10-27 23:48:20', '2021-10-28 00:13:10'),
(7, 'combo', 5, NULL, 'product_default.jpg', 1, '2021-11-22 11:36:17', '2021-11-22 11:36:17'),
(8, 'staters', 5, NULL, 'product_default.jpg', 1, '2021-11-22 12:19:22', '2021-11-22 12:19:22'),
(9, 'non-veg', 1, NULL, 'product_default.jpg', 1, '2021-11-22 15:07:03', '2021-11-22 15:10:29'),
(10, 'Snacks', 1, NULL, 'product_default.jpg', 1, '2021-11-22 15:19:43', '2021-11-22 15:19:43'),
(11, 'Chicken biryani', 8, NULL, 'product_default.jpg', 1, '2021-12-11 22:12:34', '2021-12-12 09:14:18'),
(12, 'Mutton biryani', 8, NULL, 'product_default.jpg', 1, '2021-12-11 22:12:48', '2021-12-12 09:14:15'),
(13, 'Chicken Afgani', 8, NULL, 'product_default.jpg', 1, '2021-12-11 22:13:23', '2021-12-12 09:14:16'),
(14, 'Monday Menu', 1, NULL, 'product_default.jpg', 1, '2021-12-13 22:54:39', '2021-12-13 22:54:39'),
(15, 'Tuesday Menu', 1, NULL, 'product_default.jpg', 1, '2021-12-15 01:59:45', '2021-12-15 01:59:45'),
(16, 'Wednesday Menu', 1, NULL, 'product_default.jpg', 1, '2021-12-15 21:44:51', '2021-12-15 21:44:51'),
(17, 'Thursday Menu', 1, NULL, 'product_default.jpg', 1, '2021-12-15 21:45:16', '2021-12-15 21:45:16'),
(18, 'Friday Menu', 1, NULL, 'product_default.jpg', 1, '2021-12-15 21:46:23', '2021-12-15 21:46:23'),
(19, 'Saturday Menu', 1, NULL, 'product_default.jpg', 1, '2021-12-15 21:47:13', '2021-12-15 21:47:13'),
(21, '4 january', 1, NULL, 'product_default.jpg', 1, '2022-01-03 12:02:50', '2022-01-03 12:02:50'),
(27, 'Individual Box', 10, NULL, 'product_default.jpg', 1, '2022-01-03 23:38:32', '2022-01-03 23:38:32'),
(28, 'Test', 1, NULL, 'product_default.jpg', 1, '2022-01-09 19:23:34', '2022-01-09 19:23:34'),
(35, 'Starters', 14, NULL, 'product_default.jpg', 1, '2022-01-22 20:14:42', '2022-01-22 20:14:42'),
(36, 'Mirchi Bajji', 14, NULL, 'product_default.jpg', 1, '2022-01-22 20:14:56', '2022-01-22 20:14:56'),
(39, 'Tuesday 25th, January', 10, NULL, 'product_default.jpg', 1, '2022-01-23 21:53:56', '2022-01-23 21:53:56'),
(40, 'Wednesday 26th, January', 10, NULL, 'product_default.jpg', 1, '2022-01-23 22:16:39', '2022-01-23 22:16:39'),
(41, 'Friday 28th, January', 10, NULL, 'product_default.jpg', 1, '2022-01-23 22:32:44', '2022-01-23 22:32:44'),
(42, 'Thursday 27th, January', 10, NULL, 'product_default.jpg', 1, '2022-01-23 23:05:06', '2022-01-23 23:05:06'),
(44, 'Saturday 29th, January', 10, NULL, 'product_default.jpg', 1, '2022-01-23 23:17:44', '2022-01-23 23:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2020_10_17_042024_create_admin_table', 2),
(5, '2020_10_17_113922_create_delivery_zone_table', 3),
(6, '2020_10_20_060155_create_promo_code_table', 4),
(7, '2020_10_21_053738_create_delivery_person_table', 5),
(8, '2020_10_21_094358_create_cuisine_table', 6),
(9, '2020_10_21_122833_create_vendor_table', 7),
(10, '2020_10_22_071431_create_banner_table', 8),
(11, '2020_10_23_101913_create_country_management_table', 9),
(12, '2020_10_26_113317_create_menu_table', 10),
(13, '2020_10_27_042136_create_faq_table', 11),
(14, '2020_10_27_090145_create_general_setting_table', 12),
(15, '2020_10_28_065215_create_submenu_table', 13),
(16, '2020_10_28_100818_create_vendor_discount_table', 14),
(17, '2020_10_28_132419_create_working_hours_table', 15),
(18, '2020_10_29_112903_create_payment_setting_table', 16),
(19, '2020_10_30_043620_create_state_management_table', 17),
(20, '2020_10_30_052700_create_city_management_table', 18),
(21, '2020_10_30_134644_create_menu_category_table', 19),
(22, '2020_10_31_072226_create_vendor_bank_details_table', 20),
(23, '2020_10_31_092418_create_submenu_cutsomization_type_table', 21),
(24, '2020_10_31_105854_create_submenu_cutsomization_item_table', 22),
(25, '2020_10_31_141812_create_order_setting_item_table', 23),
(26, '2020_11_02_090529_create_notification_template_table', 24),
(30, '2020_11_10_095338_create_order_table', 25),
(31, '2020_11_10_103502_create_order_child_table', 26),
(32, '2020_11_12_091024_create_user_address_table', 27),
(33, '2020_11_25_071555_create_settlements_table', 28),
(34, '2016_06_01_000001_create_oauth_auth_codes_table', 29),
(35, '2016_06_01_000002_create_oauth_access_tokens_table', 29),
(36, '2016_06_01_000003_create_oauth_refresh_tokens_table', 29),
(37, '2016_06_01_000004_create_oauth_clients_table', 29),
(38, '2016_06_01_000005_create_oauth_personal_access_clients_table', 29),
(39, '2021_02_08_104107_create_language_table', 30),
(40, '2021_02_15_141741_create_refaund_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_type`, `title`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #923414 , User Name : Ram', 1, '2021-10-28 08:05:56', '2021-10-28 08:05:56'),
(2, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-10-28 08:05:56', '2021-10-28 08:05:56'),
(3, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #923414 On 2021-10-28 Is Successfully APPROVE from HomChf', 2, '2021-10-28 08:54:32', '2021-10-28 08:54:32'),
(4, 'user', 'READY_FOR_ORDER', 'Dear Ram We Would Like To Inform You That Your Order #923414 On 2021-10-28 Is Successfully READY_FOR_ORDER from HomChf', 2, '2021-10-30 02:06:33', '2021-10-30 02:06:33'),
(5, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #923414 On 2021-10-28 Is Successfully COMPLETE from HomChf', 2, '2021-10-30 02:11:03', '2021-10-30 02:11:03'),
(6, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #423582 , User Name : Ram', 1, '2021-10-30 11:34:12', '2021-10-30 11:34:12'),
(7, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-10-30 11:34:12', '2021-10-30 11:34:12'),
(8, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #423582 On 2021-10-30 Is Successfully APPROVE from HomChf', 2, '2021-10-30 11:36:35', '2021-10-30 11:36:35'),
(9, 'user', 'PICKUP', 'Dear Ram We Would Like To Inform You That Your Order #423582 On 2021-10-30 Is Successfully PICKUP from HomChf', 2, '2021-10-30 11:36:44', '2021-10-30 11:36:44'),
(10, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #423582 On 2021-10-30 Is Successfully DELIVERED from HomChf', 2, '2021-10-30 11:36:58', '2021-10-30 11:36:58'),
(11, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #423582 On 2021-10-30 Is Successfully COMPLETE from HomChf', 2, '2021-10-30 11:37:01', '2021-10-30 11:37:01'),
(12, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #698341 , User Name : Ram', 1, '2021-10-30 20:27:25', '2021-10-30 20:27:25'),
(13, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-10-30 20:27:25', '2021-10-30 20:27:25'),
(14, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #698341 On 2021-10-30 Is Successfully APPROVE from HomChf', 2, '2021-10-30 20:28:26', '2021-10-30 20:28:26'),
(15, 'user', 'PICKUP', 'Dear Ram We Would Like To Inform You That Your Order #698341 On 2021-10-30 Is Successfully PICKUP from HomChf', 2, '2021-10-30 20:28:31', '2021-10-30 20:28:31'),
(16, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #698341 On 2021-10-30 Is Successfully DELIVERED from HomChf', 2, '2021-10-30 20:28:34', '2021-10-30 20:28:34'),
(17, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #698341 On 2021-10-30 Is Successfully COMPLETE from HomChf', 2, '2021-10-30 20:28:40', '2021-10-30 20:28:40'),
(18, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #365351 , User Name : Ram', 1, '2021-11-01 21:39:59', '2021-11-01 21:39:59'),
(19, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-01 21:39:59', '2021-11-01 21:39:59'),
(20, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #678957 , User Name : Ram', 1, '2021-11-02 04:16:21', '2021-11-02 04:16:21'),
(21, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-02 04:16:21', '2021-11-02 04:16:21'),
(22, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #678957 On 2021-11-01 Is Successfully APPROVE from HomChf', 2, '2021-11-02 04:16:33', '2021-11-02 04:16:33'),
(23, 'user', 'PICKUP', 'Dear Ram We Would Like To Inform You That Your Order #678957 On 2021-11-01 Is Successfully PICKUP from HomChf', 2, '2021-11-02 04:16:37', '2021-11-02 04:16:37'),
(24, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #678957 On 2021-11-01 Is Successfully DELIVERED from HomChf', 2, '2021-11-02 04:16:40', '2021-11-02 04:16:40'),
(25, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #678957 On 2021-11-01 Is Successfully COMPLETE from HomChf', 2, '2021-11-02 04:16:42', '2021-11-02 04:16:42'),
(26, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #820516 , User Name : Ram', 1, '2021-11-02 04:19:42', '2021-11-02 04:19:42'),
(27, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-02 04:19:42', '2021-11-02 04:19:42'),
(28, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #820516 On 2021-11-01 Is Successfully APPROVE from HomChf', 2, '2021-11-02 04:20:03', '2021-11-02 04:20:03'),
(29, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #820516 On 2021-11-01 Is Successfully DELIVERED from HomChf', 2, '2021-11-02 04:20:13', '2021-11-02 04:20:13'),
(30, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #820516 On 2021-11-01 Is Successfully COMPLETE from HomChf', 2, '2021-11-02 04:20:26', '2021-11-02 04:20:26'),
(31, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #919358 , User Name : Ram', 1, '2021-11-03 10:32:05', '2021-11-03 10:32:05'),
(32, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-03 10:32:05', '2021-11-03 10:32:05'),
(33, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #919358 On 2021-11-03 Is Successfully APPROVE from HomChf', 2, '2021-11-03 12:51:54', '2021-11-03 12:51:54'),
(34, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #919358 On 2021-11-03 Is Successfully COMPLETE from HomChf', 2, '2021-11-03 12:52:29', '2021-11-03 12:52:29'),
(35, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #898775 , User Name : Ram', 2, '2021-11-04 08:49:36', '2021-11-04 08:49:36'),
(36, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-04 08:49:36', '2021-11-04 08:49:36'),
(37, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #898775 On 2021-11-04 Is Successfully APPROVE from HomChf', 2, '2021-11-04 08:50:19', '2021-11-04 08:50:19'),
(38, 'user', 'PREPARE_FOR_ORDER', 'Dear Ram We Would Like To Inform You That Your Order #898775 On 2021-11-04 Is Successfully PREPARE_FOR_ORDER from HomChf', 2, '2021-11-04 08:50:27', '2021-11-04 08:50:27'),
(39, 'user', 'READY_FOR_ORDER', 'Dear Ram We Would Like To Inform You That Your Order #898775 On 2021-11-04 Is Successfully READY_FOR_ORDER from HomChf', 2, '2021-11-04 08:50:32', '2021-11-04 08:50:32'),
(40, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #898775 On 2021-11-04 Is Successfully COMPLETE from HomChf', 2, '2021-11-04 08:50:36', '2021-11-04 08:50:36'),
(41, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #993222 , User Name : Ram', 1, '2021-11-06 17:56:01', '2021-11-06 17:56:01'),
(42, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-06 17:56:01', '2021-11-06 17:56:01'),
(43, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #993222 On 2021-11-06 Is Successfully APPROVE from HomChf', 2, '2021-11-06 17:57:19', '2021-11-06 17:57:19'),
(44, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #993222 On 2021-11-06 Is Successfully DELIVERED from HomChf', 2, '2021-11-06 17:57:28', '2021-11-06 17:57:28'),
(45, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #993222 On 2021-11-06 Is Successfully COMPLETE from HomChf', 2, '2021-11-06 17:57:33', '2021-11-06 17:57:33'),
(46, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #574707 , User Name : Ram', 2, '2021-11-06 18:10:39', '2021-11-06 18:10:39'),
(47, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-06 18:10:39', '2021-11-06 18:10:39'),
(48, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #461124 , User Name : Ram', 2, '2021-11-10 14:24:21', '2021-11-10 14:24:21'),
(49, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-10 14:24:21', '2021-11-10 14:24:21'),
(50, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #985588 , User Name : Ram', 1, '2021-11-10 19:22:30', '2021-11-10 19:22:30'),
(51, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-10 19:22:30', '2021-11-10 19:22:30'),
(52, 'user', 'REJECT', 'Dear Ram We Would Like To Inform You That Your Order #985588 On 2021-11-10 Is Successfully REJECT from HomChf', 2, '2021-11-10 19:22:51', '2021-11-10 19:22:51'),
(53, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #822719 , User Name : Ram', 1, '2021-11-11 14:52:42', '2021-11-11 14:52:42'),
(54, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-11 14:52:42', '2021-11-11 14:52:42'),
(55, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #940786 , User Name : Ram', 2, '2021-11-11 17:06:39', '2021-11-11 17:06:39'),
(56, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-11 17:06:39', '2021-11-11 17:06:39'),
(57, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #940786 On 2021-11-11 Is Successfully APPROVE from HomChf', 2, '2021-11-11 17:24:26', '2021-11-11 17:24:26'),
(58, 'user', 'PREPARE_FOR_ORDER', 'Dear Ram We Would Like To Inform You That Your Order #940786 On 2021-11-11 Is Successfully PREPARE_FOR_ORDER from HomChf', 2, '2021-11-11 17:25:38', '2021-11-11 17:25:38'),
(59, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #940786 On 2021-11-11 Is Successfully COMPLETE from HomChf', 2, '2021-11-12 02:27:54', '2021-11-12 02:27:54'),
(60, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #791354 , User Name : Ram', 2, '2021-11-12 12:53:20', '2021-11-12 12:53:20'),
(61, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-12 12:53:20', '2021-11-12 12:53:20'),
(62, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #791354 On 2021-11-12 Is Successfully APPROVE from HomChf', 2, '2021-11-12 14:50:07', '2021-11-12 14:50:07'),
(63, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #791354 On 2021-11-12 Is Successfully DELIVERED from HomChf', 2, '2021-11-12 14:50:15', '2021-11-12 14:50:15'),
(64, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #898966 , User Name : Ram', 1, '2021-11-14 13:32:11', '2021-11-14 13:32:11'),
(65, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-14 13:32:11', '2021-11-14 13:32:11'),
(66, 'vendor', 'create order', 'Dear Prreti’s kitchen We Liked To Inform You That Recently Booked Order. Order Id : #435545 , User Name : Ram', 4, '2021-11-14 20:16:15', '2021-11-14 20:16:15'),
(67, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-14 20:16:15', '2021-11-14 20:16:15'),
(68, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #791354 On 2021-11-12 Is Successfully COMPLETE from HomChf', 2, '2021-11-15 20:33:06', '2021-11-15 20:33:06'),
(69, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #550004 , User Name : Ram', 2, '2021-11-15 20:36:14', '2021-11-15 20:36:14'),
(70, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-15 20:36:14', '2021-11-15 20:36:14'),
(71, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #550004 On 2021-11-15 Is Successfully APPROVE from HomChf', 2, '2021-11-15 20:36:46', '2021-11-15 20:36:46'),
(72, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #550004 On 2021-11-15 Is Successfully COMPLETE from HomChf', 2, '2021-11-15 20:37:01', '2021-11-15 20:37:01'),
(73, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #571050 , User Name : Ram', 1, '2021-11-16 13:58:57', '2021-11-16 13:58:57'),
(74, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-16 13:58:57', '2021-11-16 13:58:57'),
(75, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #916133 , User Name : Ram', 1, '2021-11-16 13:59:31', '2021-11-16 13:59:31'),
(76, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-16 13:59:31', '2021-11-16 13:59:31'),
(77, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #634188 , User Name : Anil', 1, '2021-11-16 20:49:02', '2021-11-16 20:49:02'),
(78, 'user', 'book order', 'dear Anil your order is arrived successfully from HomChf', 11, '2021-11-16 20:49:02', '2021-11-16 20:49:02'),
(79, 'user', 'APPROVE', 'Dear Anil We Would Like To Inform You That Your Order #634188 On 2021-11-16 Is Successfully APPROVE from HomChf', 11, '2021-11-16 20:57:33', '2021-11-16 20:57:33'),
(80, 'user', 'PREPARE_FOR_ORDER', 'Dear Anil We Would Like To Inform You That Your Order #634188 On 2021-11-16 Is Successfully PREPARE_FOR_ORDER from HomChf', 11, '2021-11-16 20:57:56', '2021-11-16 20:57:56'),
(81, 'user', 'COMPLETE', 'Dear Anil We Would Like To Inform You That Your Order #634188 On 2021-11-16 Is Successfully COMPLETE from HomChf', 11, '2021-11-16 21:00:06', '2021-11-16 21:00:06'),
(82, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #945585 , User Name : Anil', 1, '2021-11-17 10:26:38', '2021-11-17 10:26:38'),
(83, 'user', 'book order', 'dear Anil your order is arrived successfully from HomChf', 11, '2021-11-17 10:26:38', '2021-11-17 10:26:38'),
(84, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #225038 , User Name : Anil', 2, '2021-11-17 10:27:02', '2021-11-17 10:27:02'),
(85, 'user', 'book order', 'dear Anil your order is arrived successfully from HomChf', 11, '2021-11-17 10:27:02', '2021-11-17 10:27:02'),
(86, 'user', 'APPROVE', 'Dear Anil We Would Like To Inform You That Your Order #225038 On 2021-11-17 Is Successfully APPROVE from HomChf', 11, '2021-11-17 10:50:22', '2021-11-17 10:50:22'),
(87, 'user', 'COMPLETE', 'Dear Anil We Would Like To Inform You That Your Order #225038 On 2021-11-17 Is Successfully COMPLETE from HomChf', 11, '2021-11-17 10:50:27', '2021-11-17 10:50:27'),
(88, 'vendor', 'create order', 'Dear Preeti’s kitchen We Liked To Inform You That Recently Booked Order. Order Id : #130940 , User Name : Preeti Vadali', 4, '2021-11-17 23:17:49', '2021-11-17 23:17:49'),
(89, 'user', 'book order', 'dear Preeti Vadali your order is arrived successfully from HomChf', 6, '2021-11-17 23:17:49', '2021-11-17 23:17:49'),
(90, 'vendor', 'create order', 'Dear Ram\'s Kitchen We Liked To Inform You That Recently Booked Order. Order Id : #712307 , User Name : Ram', 2, '2021-11-18 06:09:05', '2021-11-18 06:09:05'),
(91, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-18 06:09:05', '2021-11-18 06:09:05'),
(92, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #712307 On 2021-11-18 Is Successfully APPROVE from HomChf', 2, '2021-11-18 06:09:36', '2021-11-18 06:09:36'),
(93, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #712307 On 2021-11-18 Is Successfully DELIVERED from HomChf', 2, '2021-11-18 06:09:44', '2021-11-18 06:09:44'),
(94, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #712307 On 2021-11-18 Is Successfully COMPLETE from HomChf', 2, '2021-11-18 06:09:46', '2021-11-18 06:09:46'),
(95, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #743687 , User Name : Ram', 1, '2021-11-18 12:02:59', '2021-11-18 12:02:59'),
(96, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-18 12:02:59', '2021-11-18 12:02:59'),
(97, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #743687 On 2021-11-18 Is Successfully APPROVE from HomChf', 2, '2021-11-18 12:03:52', '2021-11-18 12:03:52'),
(98, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #147815 , User Name : Ram', 1, '2021-11-18 12:04:35', '2021-11-18 12:04:35'),
(99, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-18 12:04:35', '2021-11-18 12:04:35'),
(100, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #147815 On 2021-11-18 Is Successfully APPROVE from HomChf', 2, '2021-11-18 12:05:14', '2021-11-18 12:05:14'),
(101, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #774992 , User Name : Ram', 1, '2021-11-18 14:26:17', '2021-11-18 14:26:17'),
(102, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-18 14:26:17', '2021-11-18 14:26:17'),
(103, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #513441 , User Name : Ram', 1, '2021-11-18 15:04:35', '2021-11-18 15:04:35'),
(104, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-18 15:04:35', '2021-11-18 15:04:35'),
(105, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #501889 , User Name : Ram', 1, '2021-11-18 15:54:45', '2021-11-18 15:54:45'),
(106, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-18 15:54:45', '2021-11-18 15:54:45'),
(107, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #506307 , User Name : Ram', 1, '2021-11-19 07:00:57', '2021-11-19 07:00:57'),
(108, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 07:00:57', '2021-11-19 07:00:57'),
(109, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #506307 On 2021-11-19 Is Successfully APPROVE from HomChf', 2, '2021-11-19 07:05:20', '2021-11-19 07:05:20'),
(110, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #147815 On 2021-11-18 Is Successfully COMPLETE from HomChf', 2, '2021-11-19 07:27:35', '2021-11-19 07:27:35'),
(111, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #506307 On 2021-11-19 Is Successfully COMPLETE from HomChf', 2, '2021-11-19 07:27:38', '2021-11-19 07:27:38'),
(112, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #743687 On 2021-11-18 Is Successfully COMPLETE from HomChf', 2, '2021-11-19 07:27:41', '2021-11-19 07:27:41'),
(113, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #990448 , User Name : Ram', 1, '2021-11-19 09:52:48', '2021-11-19 09:52:48'),
(114, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 09:52:48', '2021-11-19 09:52:48'),
(115, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #990448 On 2021-11-19 Is Successfully APPROVE from HomChf', 2, '2021-11-19 09:53:28', '2021-11-19 09:53:28'),
(116, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #990448 On 2021-11-19 Is Successfully DELIVERED from HomChf', 2, '2021-11-19 09:57:11', '2021-11-19 09:57:11'),
(117, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #990448 On 2021-11-19 Is Successfully COMPLETE from HomChf', 2, '2021-11-19 09:57:13', '2021-11-19 09:57:13'),
(118, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #295025 , User Name : Ram', 1, '2021-11-19 10:09:22', '2021-11-19 10:09:22'),
(119, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 10:09:22', '2021-11-19 10:09:22'),
(120, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #154632 , User Name : Ram', 1, '2021-11-19 11:39:42', '2021-11-19 11:39:42'),
(121, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 11:39:42', '2021-11-19 11:39:42'),
(122, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #154632 On 2021-11-19 Is Successfully APPROVE from HomChf', 2, '2021-11-19 11:40:17', '2021-11-19 11:40:17'),
(123, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #154632 On 2021-11-19 Is Successfully COMPLETE from HomChf', 2, '2021-11-19 11:40:21', '2021-11-19 11:40:21'),
(124, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #224033 , User Name : Ram', 1, '2021-11-19 12:50:36', '2021-11-19 12:50:36'),
(125, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 12:50:36', '2021-11-19 12:50:36'),
(126, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #224033 On 2021-11-19 Is Successfully APPROVE from HomChf', 2, '2021-11-19 12:51:03', '2021-11-19 12:51:03'),
(127, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #224033 On 2021-11-19 Is Successfully DELIVERED from HomChf', 2, '2021-11-19 12:51:07', '2021-11-19 12:51:07'),
(128, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #555086 , User Name : Ram', 1, '2021-11-19 14:58:24', '2021-11-19 14:58:24'),
(129, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 14:58:24', '2021-11-19 14:58:24'),
(130, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #338009 , User Name : Ram', 1, '2021-11-19 15:05:33', '2021-11-19 15:05:33'),
(131, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 15:05:33', '2021-11-19 15:05:33'),
(132, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #820811 , User Name : Ram', 1, '2021-11-19 15:47:10', '2021-11-19 15:47:10'),
(133, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 15:47:10', '2021-11-19 15:47:10'),
(134, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #116706 , User Name : Ram', 1, '2021-11-19 15:50:03', '2021-11-19 15:50:03'),
(135, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 15:50:03', '2021-11-19 15:50:03'),
(136, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #305107 , User Name : Ram', 1, '2021-11-19 16:04:34', '2021-11-19 16:04:34'),
(137, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-19 16:04:34', '2021-11-19 16:04:34'),
(138, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #305107 On 2021-11-19 Is Successfully APPROVE from HomChf', 2, '2021-11-19 16:12:32', '2021-11-19 16:12:32'),
(139, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #118128 , User Name : Ram', 1, '2021-11-20 08:06:26', '2021-11-20 08:06:26'),
(140, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-20 08:06:26', '2021-11-20 08:06:26'),
(141, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #565360 , User Name : Ram', 1, '2021-11-20 08:38:10', '2021-11-20 08:38:10'),
(142, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-20 08:38:10', '2021-11-20 08:38:10'),
(143, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #410759 , User Name : Ram', 1, '2021-11-20 19:02:40', '2021-11-20 19:02:40'),
(144, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-20 19:02:40', '2021-11-20 19:02:40'),
(145, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #410759 On 2021-11-20 Is Successfully APPROVE from HomChf', 2, '2021-11-20 19:04:02', '2021-11-20 19:04:02'),
(146, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #305107 On 2021-11-19 Is Successfully COMPLETE from HomChf', 2, '2021-11-20 21:13:47', '2021-11-20 21:13:47'),
(147, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #410759 On 2021-11-20 Is Successfully COMPLETE from HomChf', 2, '2021-11-20 21:13:50', '2021-11-20 21:13:50'),
(148, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #871926 , User Name : Ram', 1, '2021-11-21 09:45:49', '2021-11-21 09:45:49'),
(149, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-21 09:45:49', '2021-11-21 09:45:49'),
(150, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #537042 , User Name : Ram', 1, '2021-11-21 22:24:28', '2021-11-21 22:24:28'),
(151, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-21 22:24:28', '2021-11-21 22:24:28'),
(152, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #537042 On 2021-11-21 Is Successfully APPROVE from HomChf', 2, '2021-11-22 00:21:11', '2021-11-22 00:21:11'),
(153, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #537042 On 2021-11-21 Is Successfully COMPLETE from HomChf', 2, '2021-11-22 00:21:14', '2021-11-22 00:21:14'),
(154, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #224033 On 2021-11-19 Is Successfully COMPLETE from HomChf', 2, '2021-11-22 00:21:36', '2021-11-22 00:21:36'),
(155, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #432951 , User Name : Ram', 1, '2021-11-22 10:52:12', '2021-11-22 10:52:12'),
(156, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-22 10:52:12', '2021-11-22 10:52:12'),
(157, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #212211 , User Name : Ram', 1, '2021-11-22 11:25:43', '2021-11-22 11:25:43'),
(158, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-22 11:25:43', '2021-11-22 11:25:43'),
(159, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #212211 On 2021-11-22 Is Successfully APPROVE from HomChf', 2, '2021-11-22 11:27:14', '2021-11-22 11:27:14'),
(160, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #367878 , User Name : Ram', 1, '2021-11-22 19:13:35', '2021-11-22 19:13:35'),
(161, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-22 19:13:35', '2021-11-22 19:13:35'),
(162, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #706677 , User Name : Ram', 1, '2021-11-22 22:53:51', '2021-11-22 22:53:51'),
(163, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-22 22:53:51', '2021-11-22 22:53:51'),
(164, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #706677 On 2021-11-22 Is Successfully APPROVE from HomChf', 2, '2021-11-22 22:55:34', '2021-11-22 22:55:34'),
(165, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #706677 On 2021-11-22 Is Successfully DELIVERED from HomChf', 2, '2021-11-23 12:09:31', '2021-11-23 12:09:31'),
(166, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #706677 On 2021-11-22 Is Successfully COMPLETE from HomChf', 2, '2021-11-23 12:09:34', '2021-11-23 12:09:34'),
(167, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #140328 , User Name : Ram', 1, '2021-11-23 14:50:49', '2021-11-23 14:50:49'),
(168, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-23 14:50:49', '2021-11-23 14:50:49'),
(169, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #140328 On 2021-11-23 Is Successfully APPROVE from HomChf', 2, '2021-11-23 14:51:09', '2021-11-23 14:51:09'),
(170, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #661418 , User Name : Ram', 1, '2021-11-23 14:54:04', '2021-11-23 14:54:04'),
(171, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-23 14:54:04', '2021-11-23 14:54:04'),
(172, 'user', 'REJECT', 'Dear Ram We Would Like To Inform You That Your Order #661418 On 2021-11-23 Is Successfully REJECT from HomChf', 2, '2021-11-23 14:54:31', '2021-11-23 14:54:31'),
(173, 'vendor', 'create order', 'Dear preeti’s kitchen We Liked To Inform You That Recently Booked Order. Order Id : #896043 , User Name : Ram', 5, '2021-11-23 20:06:37', '2021-11-23 20:06:37'),
(174, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-23 20:06:37', '2021-11-23 20:06:37'),
(175, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #896043 On 2021-11-23 Is Successfully APPROVE from HomChf', 2, '2021-11-23 20:07:46', '2021-11-23 20:07:46'),
(176, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #766996 , User Name : Ram', 1, '2021-11-24 07:04:39', '2021-11-24 07:04:39'),
(177, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-24 07:04:39', '2021-11-24 07:04:39'),
(178, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #212211 On 2021-11-22 Is Successfully DELIVERED from HomChf', 2, '2021-11-24 07:05:42', '2021-11-24 07:05:42'),
(179, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #140328 On 2021-11-23 Is Successfully DELIVERED from HomChf', 2, '2021-11-24 07:06:06', '2021-11-24 07:06:06'),
(180, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #766996 On 2021-11-24 Is Successfully APPROVE from HomChf', 2, '2021-11-24 07:06:12', '2021-11-24 07:06:12'),
(181, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #212211 On 2021-11-22 Is Successfully COMPLETE from HomChf', 2, '2021-11-24 07:06:29', '2021-11-24 07:06:29'),
(182, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #766996 On 2021-11-24 Is Successfully DELIVERED from HomChf', 2, '2021-11-24 07:06:37', '2021-11-24 07:06:37'),
(183, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #140328 On 2021-11-23 Is Successfully COMPLETE from HomChf', 2, '2021-11-24 07:07:09', '2021-11-24 07:07:09'),
(184, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #766996 On 2021-11-24 Is Successfully DELIVERED from HomChf', 2, '2021-11-24 07:07:13', '2021-11-24 07:07:13'),
(185, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #766996 On 2021-11-24 Is Successfully COMPLETE from HomChf', 2, '2021-11-24 07:07:16', '2021-11-24 07:07:16'),
(186, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #754105 , User Name : Ram', 1, '2021-11-24 14:26:17', '2021-11-24 14:26:17'),
(187, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-24 14:26:17', '2021-11-24 14:26:17'),
(188, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #754105 On 2021-11-24 Is Successfully APPROVE from HomChf', 2, '2021-11-24 14:35:36', '2021-11-24 14:35:36'),
(189, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #754105 On 2021-11-24 Is Successfully COMPLETE from HomChf', 2, '2021-11-24 14:36:10', '2021-11-24 14:36:10'),
(190, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #125939 , User Name : preeti', 1, '2021-11-24 20:12:22', '2021-11-24 20:12:22'),
(191, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-11-24 20:12:22', '2021-11-24 20:12:22'),
(192, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #280892 , User Name : Ram', 1, '2021-11-25 10:51:17', '2021-11-25 10:51:17'),
(193, 'user', 'book order', 'dear Ram your order is arrived successfully from HomChf', 2, '2021-11-25 10:51:22', '2021-11-25 10:51:22'),
(194, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #280892 On 2021-11-25 Is Successfully APPROVE from HomChf', 2, '2021-11-25 10:53:12', '2021-11-25 10:53:12'),
(195, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #280892 On 2021-11-25 Is Successfully DELIVERED from HomChf', 2, '2021-11-25 11:03:18', '2021-11-25 11:03:18'),
(196, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #280892 On 2021-11-25 Is Successfully COMPLETE from HomChf', 2, '2021-11-25 11:04:27', '2021-11-25 11:04:27'),
(197, 'vendor', 'create order', 'Dear preeti’s kitchen We Liked To Inform You That Recently Booked Order. Order Id : #602402 , User Name : preeti', 5, '2021-11-26 18:18:47', '2021-11-26 18:18:47'),
(198, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-11-26 18:18:48', '2021-11-26 18:18:48'),
(199, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #602402 On 2021-11-26 Is Successfully APPROVE from HomChf', 16, '2021-11-26 18:19:30', '2021-11-26 18:19:30'),
(200, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #315256 , User Name : preeti', 1, '2021-11-30 12:39:06', '2021-11-30 12:39:06'),
(201, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-11-30 12:39:11', '2021-11-30 12:39:11'),
(202, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #315256 On 2021-11-30 Is Successfully APPROVE from HomChf', 16, '2021-11-30 12:39:52', '2021-11-30 12:39:52'),
(203, 'user', 'DELIVERED', 'Dear preeti We Would Like To Inform You That Your Order #315256 On 2021-11-30 Is Successfully DELIVERED from HomChf', 16, '2021-11-30 16:19:25', '2021-11-30 16:19:25'),
(204, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #315256 On 2021-11-30 Is Successfully COMPLETE from HomChf', 16, '2021-11-30 16:20:00', '2021-11-30 16:20:00'),
(205, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #157308 , User Name : preeti', 1, '2021-11-30 16:26:27', '2021-11-30 16:26:27'),
(206, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-11-30 16:26:27', '2021-11-30 16:26:27'),
(207, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #763431 , User Name : preeti', 1, '2021-12-10 08:36:18', '2021-12-10 08:36:18'),
(208, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-10 08:36:19', '2021-12-10 08:36:19'),
(209, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #763431 On 2021-12-10 Is Successfully APPROVE from HomChf', 16, '2021-12-10 08:38:52', '2021-12-10 08:38:52'),
(210, 'user', 'DELIVERED', 'Dear preeti We Would Like To Inform You That Your Order #763431 On 2021-12-10 Is Successfully DELIVERED from HomChf', 16, '2021-12-12 02:47:48', '2021-12-12 02:47:48'),
(211, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #763431 On 2021-12-10 Is Successfully COMPLETE from HomChf', 16, '2021-12-12 02:47:51', '2021-12-12 02:47:51'),
(212, 'vendor', 'create order', 'Dear FlavHyd We Liked To Inform You That Recently Booked Order. Order Id : #863206 , User Name : preeti', 8, '2021-12-12 09:18:30', '2021-12-12 09:18:30'),
(213, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-12 09:18:30', '2021-12-12 09:18:30'),
(214, 'vendor', 'create order', 'Dear FlavHyd We Liked To Inform You That Recently Booked Order. Order Id : #796182 , User Name : preeti', 8, '2021-12-12 19:31:03', '2021-12-12 19:31:03'),
(215, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-12 19:31:04', '2021-12-12 19:31:04'),
(216, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #796182 On 2021-12-12 Is Successfully APPROVE from HomChf', 16, '2021-12-12 19:35:38', '2021-12-12 19:35:38'),
(217, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #796182 On 2021-12-12 Is Successfully COMPLETE from HomChf', 16, '2021-12-12 19:36:36', '2021-12-12 19:36:36'),
(218, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #340325 , User Name : preeti', 1, '2021-12-13 09:25:00', '2021-12-13 09:25:00'),
(219, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 09:25:00', '2021-12-13 09:25:00'),
(220, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #743686 , User Name : preeti', 1, '2021-12-13 09:48:51', '2021-12-13 09:48:51'),
(221, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 09:48:51', '2021-12-13 09:48:51'),
(222, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #743686 On 2021-12-13 Is Successfully APPROVE from HomChf', 16, '2021-12-13 09:55:09', '2021-12-13 09:55:09'),
(223, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #340325 On 2021-12-13 Is Successfully APPROVE from HomChf', 16, '2021-12-13 09:55:12', '2021-12-13 09:55:12'),
(224, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #433464 , User Name : preeti', 1, '2021-12-13 10:43:27', '2021-12-13 10:43:27'),
(225, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 10:43:27', '2021-12-13 10:43:27'),
(226, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #308037 , User Name : preeti', 1, '2021-12-13 11:51:06', '2021-12-13 11:51:06'),
(227, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 11:51:06', '2021-12-13 11:51:06'),
(228, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #340325 On 2021-12-13 Is Successfully COMPLETE from HomChf', 16, '2021-12-13 11:51:44', '2021-12-13 11:51:44'),
(229, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #743686 On 2021-12-13 Is Successfully COMPLETE from HomChf', 16, '2021-12-13 11:51:49', '2021-12-13 11:51:49'),
(230, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #308037 On 2021-12-13 Is Successfully APPROVE from HomChf', 16, '2021-12-13 11:52:34', '2021-12-13 11:52:34'),
(231, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #792357 , User Name : preeti', 1, '2021-12-13 12:05:18', '2021-12-13 12:05:18'),
(232, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 12:05:19', '2021-12-13 12:05:19'),
(233, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #269529 , User Name : preeti', 1, '2021-12-13 12:18:37', '2021-12-13 12:18:37'),
(234, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 12:18:37', '2021-12-13 12:18:37'),
(235, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #995982 , User Name : preeti', 1, '2021-12-13 12:26:45', '2021-12-13 12:26:45'),
(236, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 12:26:46', '2021-12-13 12:26:46'),
(237, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #682930 , User Name : preeti', 1, '2021-12-13 12:34:15', '2021-12-13 12:34:15'),
(238, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 12:34:15', '2021-12-13 12:34:15'),
(239, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #212507 , User Name : preeti', 1, '2021-12-13 12:38:25', '2021-12-13 12:38:25'),
(240, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 12:38:25', '2021-12-13 12:38:25'),
(241, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #308037 On 2021-12-13 Is Successfully COMPLETE from HomChf', 16, '2021-12-13 12:38:47', '2021-12-13 12:38:47'),
(242, 'user', 'REJECT', 'Dear preeti We Would Like To Inform You That Your Order #792357 On 2021-12-13 Is Successfully REJECT from HomChf', 16, '2021-12-13 12:38:50', '2021-12-13 12:38:50'),
(243, 'user', 'REJECT', 'Dear preeti We Would Like To Inform You That Your Order #269529 On 2021-12-13 Is Successfully REJECT from HomChf', 16, '2021-12-13 12:39:00', '2021-12-13 12:39:00'),
(244, 'user', 'REJECT', 'Dear preeti We Would Like To Inform You That Your Order #995982 On 2021-12-13 Is Successfully REJECT from HomChf', 16, '2021-12-13 12:39:04', '2021-12-13 12:39:04'),
(245, 'user', 'REJECT', 'Dear preeti We Would Like To Inform You That Your Order #682930 On 2021-12-13 Is Successfully REJECT from HomChf', 16, '2021-12-13 12:39:13', '2021-12-13 12:39:13'),
(246, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #212507 On 2021-12-13 Is Successfully APPROVE from HomChf', 16, '2021-12-13 12:39:15', '2021-12-13 12:39:15'),
(247, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #122712 , User Name : preeti', 1, '2021-12-13 12:57:39', '2021-12-13 12:57:39'),
(248, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 12:57:39', '2021-12-13 12:57:39'),
(249, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #278797 , User Name : preeti', 1, '2021-12-13 16:39:06', '2021-12-13 16:39:06'),
(250, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 16:39:07', '2021-12-13 16:39:07'),
(251, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #837801 , User Name : preeti', 1, '2021-12-13 21:10:56', '2021-12-13 21:10:56'),
(252, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 21:10:56', '2021-12-13 21:10:56'),
(253, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #815567 , User Name : preeti', 1, '2021-12-13 21:56:57', '2021-12-13 21:56:57'),
(254, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 21:56:58', '2021-12-13 21:56:58'),
(255, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #815567 On 2021-12-13 Is Successfully APPROVE from HomChf', 16, '2021-12-13 22:38:21', '2021-12-13 22:38:21'),
(256, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #935904 , User Name : preeti', 1, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(257, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-13 22:46:10', '2021-12-13 22:46:10'),
(258, 'user', 'DELIVERED', 'Dear preeti We Would Like To Inform You That Your Order #815567 On 2021-12-13 Is Successfully DELIVERED from HomChf', 16, '2021-12-14 10:15:35', '2021-12-14 10:15:35'),
(259, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #935904 On 2021-12-13 Is Successfully APPROVE from HomChf', 16, '2021-12-14 13:08:27', '2021-12-14 13:08:27'),
(260, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #935904 On 2021-12-13 Is Successfully COMPLETE from HomChf', 16, '2021-12-14 13:08:34', '2021-12-14 13:08:34'),
(261, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #815567 On 2021-12-13 Is Successfully COMPLETE from HomChf', 16, '2021-12-14 13:08:40', '2021-12-14 13:08:40'),
(262, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #486012 , User Name : preeti', 1, '2021-12-14 13:12:10', '2021-12-14 13:12:10'),
(263, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-14 13:12:10', '2021-12-14 13:12:10'),
(264, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #151681 , User Name : preeti', 1, '2021-12-14 13:13:12', '2021-12-14 13:13:12'),
(265, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-14 13:13:12', '2021-12-14 13:13:12'),
(266, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #151681 On 2021-12-14 Is Successfully APPROVE from HomChf', 16, '2021-12-14 13:15:54', '2021-12-14 13:15:54'),
(267, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #151681 On 2021-12-14 Is Successfully COMPLETE from HomChf', 16, '2021-12-14 13:15:58', '2021-12-14 13:15:58'),
(268, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #486012 On 2021-12-14 Is Successfully APPROVE from HomChf', 16, '2021-12-14 13:16:02', '2021-12-14 13:16:02'),
(269, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #393583 , User Name : preeti', 1, '2021-12-14 18:47:00', '2021-12-14 18:47:00'),
(270, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-14 18:47:00', '2021-12-14 18:47:00'),
(271, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #393583 On 2021-12-14 Is Successfully APPROVE from HomChf', 16, '2021-12-14 20:23:51', '2021-12-14 20:23:51'),
(272, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #501344 , User Name : preeti', 1, '2021-12-14 21:16:26', '2021-12-14 21:16:26'),
(273, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-14 21:16:26', '2021-12-14 21:16:26'),
(274, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #490809 , User Name : preeti', 1, '2021-12-14 22:12:28', '2021-12-14 22:12:28'),
(275, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-14 22:12:28', '2021-12-14 22:12:28'),
(276, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #501344 On 2021-12-14 Is Successfully APPROVE from HomChf', 16, '2021-12-14 22:13:30', '2021-12-14 22:13:30'),
(277, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #490809 On 2021-12-14 Is Successfully APPROVE from HomChf', 16, '2021-12-15 02:02:47', '2021-12-15 02:02:47'),
(278, 'user', 'PICKUP', 'Dear preeti We Would Like To Inform You That Your Order #490809 On 2021-12-14 Is Successfully PICKUP from HomChf', 16, '2021-12-15 20:59:26', '2021-12-15 20:59:26'),
(279, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #372423 , User Name : preeti', 1, '2021-12-20 12:28:00', '2021-12-20 12:28:00'),
(280, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2021-12-20 12:28:00', '2021-12-20 12:28:00'),
(281, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #372423 On 2021-12-20 Is Successfully APPROVE from HomChf', 16, '2021-12-20 12:32:37', '2021-12-20 12:32:37'),
(282, 'user', 'PICKUP', 'Dear preeti We Would Like To Inform You That Your Order #490809 On 2021-12-14 Is Successfully PICKUP from HomChf', 16, '2021-12-21 21:04:53', '2021-12-21 21:04:53'),
(283, 'user', 'DELIVERED', 'Dear preeti We Would Like To Inform You That Your Order #501344 On 2021-12-14 Is Successfully DELIVERED from HomChf', 16, '2021-12-21 21:05:03', '2021-12-21 21:05:03'),
(284, 'user', 'DELIVERED', 'Dear preeti We Would Like To Inform You That Your Order #393583 On 2021-12-14 Is Successfully DELIVERED from HomChf', 16, '2021-12-21 21:05:08', '2021-12-21 21:05:08'),
(285, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #501344 On 2021-12-14 Is Successfully COMPLETE from HomChf', 16, '2021-12-25 19:52:31', '2021-12-25 19:52:31');
INSERT INTO `notification` (`id`, `user_type`, `title`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(286, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #393583 On 2021-12-14 Is Successfully COMPLETE from HomChf', 16, '2021-12-25 19:52:34', '2021-12-25 19:52:34'),
(287, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #486012 On 2021-12-14 Is Successfully COMPLETE from HomChf', 16, '2021-12-25 19:52:37', '2021-12-25 19:52:37'),
(288, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #490809 On 2021-12-14 Is Successfully COMPLETE from HomChf', 16, '2021-12-25 19:52:40', '2021-12-25 19:52:40'),
(289, 'user', 'COMPLETE', 'Dear preeti We Would Like To Inform You That Your Order #372423 On 2021-12-20 Is Successfully COMPLETE from HomChf', 16, '2021-12-25 19:52:43', '2021-12-25 19:52:43'),
(290, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #351111 , User Name : preeti', 1, '2022-01-04 20:20:37', '2022-01-04 20:20:37'),
(291, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-04 20:20:37', '2022-01-04 20:20:37'),
(292, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #353747 , User Name : Anil', 1, '2022-01-04 20:35:00', '2022-01-04 20:35:00'),
(293, 'user', 'book order', 'dear Anil your order is arrived successfully from HomChf', 4, '2022-01-04 20:35:01', '2022-01-04 20:35:01'),
(294, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #389418 , User Name : preeti', 1, '2022-01-05 11:02:44', '2022-01-05 11:02:44'),
(295, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-05 11:02:44', '2022-01-05 11:02:44'),
(296, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #760622 , User Name : preeti', 1, '2022-01-05 15:33:20', '2022-01-05 15:33:20'),
(297, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-05 15:33:20', '2022-01-05 15:33:20'),
(298, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #602744 , User Name : preeti', 1, '2022-01-05 15:35:21', '2022-01-05 15:35:21'),
(299, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-05 15:35:21', '2022-01-05 15:35:21'),
(300, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #791716 , User Name : preeti', 1, '2022-01-05 16:30:15', '2022-01-05 16:30:15'),
(301, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-05 16:30:15', '2022-01-05 16:30:15'),
(302, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #969089 , User Name : preeti', 1, '2022-01-06 10:51:55', '2022-01-06 10:51:55'),
(303, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-06 10:51:55', '2022-01-06 10:51:55'),
(304, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #969089 On 2022-01-06 Is Successfully APPROVE from HomChf', 16, '2022-01-06 20:13:26', '2022-01-06 20:13:26'),
(305, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #973817 , User Name : preeti', 1, '2022-01-07 16:13:32', '2022-01-07 16:13:32'),
(306, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-07 16:13:32', '2022-01-07 16:13:32'),
(307, 'user', 'APPROVE', 'Dear preeti We Would Like To Inform You That Your Order #973817 On 2022-01-07 Is Successfully APPROVE from HomChf', 16, '2022-01-07 16:15:03', '2022-01-07 16:15:03'),
(308, 'vendor', 'create order', 'Dear Delhi Dhaba We Liked To Inform You That Recently Booked Order. Order Id : #738450 , User Name : preeti', 10, '2022-01-10 08:51:42', '2022-01-10 08:51:42'),
(309, 'user', 'book order', 'dear preeti your order is arrived successfully from HomChf', 16, '2022-01-10 08:51:43', '2022-01-10 08:51:43'),
(310, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #973817 On 2022-01-07 Is Successfully COMPLETE from HomChf', 16, '2022-01-10 11:20:19', '2022-01-10 11:20:19'),
(311, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #969089 On 2022-01-06 Is Successfully DELIVERED from HomChf', 16, '2022-01-10 11:20:24', '2022-01-10 11:20:24'),
(312, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #208014 , User Name : Abhi', 1, '2022-01-10 11:31:37', '2022-01-10 11:31:37'),
(313, 'user', 'book order', 'dear Abhi your order is arrived successfully from HomChf', 16, '2022-01-10 11:31:37', '2022-01-10 11:31:37'),
(314, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #969089 On 2022-01-06 Is Successfully COMPLETE from HomChf', 16, '2022-01-10 11:31:59', '2022-01-10 11:31:59'),
(315, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #208014 On 2022-01-10 Is Successfully APPROVE from HomChf', 16, '2022-01-10 11:32:34', '2022-01-10 11:32:34'),
(316, 'vendor', 'create order', 'Dear Delhi Dhaba We Liked To Inform You That Recently Booked Order. Order Id : #259294 , User Name : Abhi', 10, '2022-01-10 12:10:53', '2022-01-10 12:10:53'),
(317, 'user', 'book order', 'dear Abhi your order is arrived successfully from HomChf', 16, '2022-01-10 12:10:53', '2022-01-10 12:10:53'),
(318, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #259294 On 2022-01-10 Is Successfully APPROVE from HomChf', 16, '2022-01-10 13:20:54', '2022-01-10 13:20:54'),
(319, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #259294 On 2022-01-10 Is Successfully DELIVERED from HomChf', 16, '2022-01-15 12:40:55', '2022-01-15 12:40:55'),
(320, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #208014 On 2022-01-10 Is Successfully DELIVERED from HomChf', 16, '2022-01-15 12:49:37', '2022-01-15 12:49:37'),
(321, 'vendor', 'create order', 'Dear Delhi Dhaba We Liked To Inform You That Recently Booked Order. Order Id : #189517 , User Name : Anil', 10, '2022-01-18 14:31:51', '2022-01-18 14:31:51'),
(322, 'user', 'book order', 'dear Anil your order is arrived successfully from HomChf', 4, '2022-01-18 14:31:51', '2022-01-18 14:31:51'),
(323, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #575872 , User Name : Abhi', 1, '2022-01-18 16:32:23', '2022-01-18 16:32:23'),
(324, 'user', 'book order', 'dear Abhi your order is arrived successfully from HomChf', 16, '2022-01-18 16:32:24', '2022-01-18 16:32:24'),
(325, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #575872 On 2022-01-18 Is Successfully APPROVE from HomChf', 16, '2022-01-18 16:33:16', '2022-01-18 16:33:16'),
(326, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #575872 On 2022-01-18 Is Successfully DELIVERED from HomChf', 16, '2022-01-18 16:58:16', '2022-01-18 16:58:16'),
(327, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #208014 On 2022-01-10 Is Successfully COMPLETE from HomChf', 16, '2022-01-18 16:58:20', '2022-01-18 16:58:20'),
(328, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #526361 , User Name : Abhi', 1, '2022-01-18 17:03:19', '2022-01-18 17:03:19'),
(329, 'user', 'book order', 'dear Abhi your order is arrived successfully from HomChf', 16, '2022-01-18 17:03:19', '2022-01-18 17:03:19'),
(330, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #526361 On 2022-01-18 Is Successfully APPROVE from HomChf', 16, '2022-01-18 17:21:08', '2022-01-18 17:21:08'),
(331, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #963498 , User Name : Abhi', 1, '2022-01-18 17:48:51', '2022-01-18 17:48:51'),
(332, 'user', 'book order', 'dear Abhi your order is arrived successfully from HomChf', 16, '2022-01-18 17:48:51', '2022-01-18 17:48:51'),
(333, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully APPROVE from HomChf', 16, '2022-01-18 23:08:25', '2022-01-18 23:08:25'),
(334, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #575872 On 2022-01-18 Is Successfully COMPLETE from HomChf', 16, '2022-01-18 23:08:44', '2022-01-18 23:08:44'),
(335, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #526361 On 2022-01-18 Is Successfully DELIVERED from HomChf', 16, '2022-01-18 23:09:04', '2022-01-18 23:09:04'),
(336, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully DELIVERED from HomChf', 16, '2022-01-18 23:09:29', '2022-01-18 23:09:29'),
(337, 'user', 'PICKUP', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully PICKUP from HomChf', 16, '2022-01-19 08:25:24', '2022-01-19 08:25:24'),
(338, 'user', 'PICKUP', 'Dear Abhi We Would Like To Inform You That Your Order #526361 On 2022-01-18 Is Successfully PICKUP from HomChf', 16, '2022-01-19 08:37:19', '2022-01-19 08:37:19'),
(339, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #720069 , User Name : Abhi', 1, '2022-01-19 08:38:55', '2022-01-19 08:38:55'),
(340, 'user', 'book order', 'dear Abhi your order is arrived successfully from HomChf', 16, '2022-01-19 08:38:56', '2022-01-19 08:38:56'),
(341, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #720069 On 2022-01-19 Is Successfully APPROVE from HomChf', 16, '2022-01-19 08:39:36', '2022-01-19 08:39:36'),
(342, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #720069 On 2022-01-19 Is Successfully DELIVERED from HomChf', 16, '2022-01-19 08:48:46', '2022-01-19 08:48:46'),
(343, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully DELIVERED from HomChf', 16, '2022-01-19 08:48:51', '2022-01-19 08:48:51'),
(344, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully DELIVERED from HomChf', 16, '2022-01-19 08:48:57', '2022-01-19 08:48:57'),
(345, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #526361 On 2022-01-18 Is Successfully COMPLETE from HomChf', 16, '2022-01-19 08:49:02', '2022-01-19 08:49:02'),
(346, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully COMPLETE from HomChf', 16, '2022-01-19 08:49:08', '2022-01-19 08:49:08'),
(347, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #720069 On 2022-01-19 Is Successfully COMPLETE from HomChf', 16, '2022-01-19 08:49:12', '2022-01-19 08:49:12'),
(348, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #102344 , User Name : Abhi', 1, '2022-01-19 08:51:00', '2022-01-19 08:51:00'),
(349, 'user', 'book order', 'dear Abhi your order is arrived successfully from HomChf', 16, '2022-01-19 08:51:00', '2022-01-19 08:51:00'),
(350, 'user', 'DELIVERED', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully DELIVERED from HomChf', 16, '2022-01-19 12:04:55', '2022-01-19 12:04:55'),
(351, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #972111 , User Name : Abhi', 1, '2022-01-19 12:05:53', '2022-01-19 12:05:53'),
(352, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-19 12:05:53', '2022-01-19 12:05:53'),
(353, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #972111 On 2022-01-19 Is Successfully APPROVE from HomChf', 16, '2022-01-19 12:06:32', '2022-01-19 12:06:32'),
(354, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #994637 , User Name : Ram', 1, '2022-01-19 12:15:15', '2022-01-19 12:15:15'),
(355, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-19 12:15:15', '2022-01-19 12:15:15'),
(356, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #994637 On 2022-01-19 Is Successfully APPROVE from HomChf', 2, '2022-01-19 12:15:23', '2022-01-19 12:15:23'),
(357, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #963498 On 2022-01-18 Is Successfully COMPLETE from HomChf', 16, '2022-01-19 12:52:14', '2022-01-19 12:52:14'),
(358, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #972111 On 2022-01-19 Is Successfully COMPLETE from HomChf', 16, '2022-01-19 12:52:18', '2022-01-19 12:52:18'),
(359, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #994637 On 2022-01-19 Is Successfully COMPLETE from HomChf', 2, '2022-01-19 12:52:24', '2022-01-19 12:52:24'),
(360, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #317478 , User Name : Ram', 1, '2022-01-19 12:53:00', '2022-01-19 12:53:00'),
(361, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-19 12:53:00', '2022-01-19 12:53:00'),
(362, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #317478 On 2022-01-19 Is Successfully APPROVE from HomChf', 2, '2022-01-19 13:29:29', '2022-01-19 13:29:29'),
(363, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #317478 On 2022-01-19 Is Successfully DELIVERED from HomChf', 2, '2022-01-19 16:28:02', '2022-01-19 16:28:02'),
(364, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #317478 On 2022-01-19 Is Successfully DELIVERED from HomChf', 2, '2022-01-20 08:17:11', '2022-01-20 08:17:11'),
(365, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #317478 On 2022-01-19 Is Successfully COMPLETE from HomChf', 2, '2022-01-20 08:17:15', '2022-01-20 08:17:15'),
(366, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #722232 , User Name : Ram', 1, '2022-01-20 08:18:35', '2022-01-20 08:18:35'),
(367, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 08:18:35', '2022-01-20 08:18:35'),
(368, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #722232 On 2022-01-20 Is Successfully APPROVE from HomChf', 2, '2022-01-20 08:18:51', '2022-01-20 08:18:51'),
(369, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #722232 On 2022-01-20 Is Successfully DELIVERED from HomChf', 2, '2022-01-20 10:02:25', '2022-01-20 10:02:25'),
(370, 'user', 'DELIVERED', 'Dear Ram We Would Like To Inform You That Your Order #722232 On 2022-01-20 Is Successfully DELIVERED from HomChf', 2, '2022-01-20 10:11:06', '2022-01-20 10:11:06'),
(371, 'user', 'PICKUP', 'Dear Ram We Would Like To Inform You That Your Order #722232 On 2022-01-20 Is Successfully PICKUP from HomChf', 2, '2022-01-20 12:56:52', '2022-01-20 12:56:52'),
(372, 'user', 'COMPLETE', 'Dear Ram We Would Like To Inform You That Your Order #722232 On 2022-01-20 Is Successfully COMPLETE from HomChf', 2, '2022-01-20 13:00:19', '2022-01-20 13:00:19'),
(373, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #828580 , User Name : Ram', 1, '2022-01-20 13:01:08', '2022-01-20 13:01:08'),
(374, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 13:01:09', '2022-01-20 13:01:09'),
(375, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #379805 , User Name : Ram', 1, '2022-01-20 13:28:32', '2022-01-20 13:28:32'),
(376, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 13:28:32', '2022-01-20 13:28:32'),
(377, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #782118 , User Name : Ram', 1, '2022-01-20 14:25:48', '2022-01-20 14:25:48'),
(378, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 14:25:48', '2022-01-20 14:25:48'),
(379, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #737594 , User Name : Ram', 1, '2022-01-20 14:40:19', '2022-01-20 14:40:19'),
(380, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 14:40:19', '2022-01-20 14:40:19'),
(381, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #749679 , User Name : Ram', 1, '2022-01-20 15:12:40', '2022-01-20 15:12:40'),
(382, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:12:40', '2022-01-20 15:12:40'),
(383, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #507969 , User Name : Ram', 1, '2022-01-20 15:12:54', '2022-01-20 15:12:54'),
(384, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:12:54', '2022-01-20 15:12:54'),
(385, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #398930 , User Name : Ram', 1, '2022-01-20 15:12:57', '2022-01-20 15:12:57'),
(386, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:12:57', '2022-01-20 15:12:57'),
(387, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #985903 , User Name : Ram', 1, '2022-01-20 15:13:00', '2022-01-20 15:13:00'),
(388, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:13:00', '2022-01-20 15:13:00'),
(389, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #827255 , User Name : Ram', 1, '2022-01-20 15:15:57', '2022-01-20 15:15:57'),
(390, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:15:57', '2022-01-20 15:15:57'),
(391, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #215064 , User Name : Ram', 1, '2022-01-20 15:16:00', '2022-01-20 15:16:00'),
(392, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:16:00', '2022-01-20 15:16:00'),
(393, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #677100 , User Name : Ram', 1, '2022-01-20 15:16:03', '2022-01-20 15:16:03'),
(394, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:16:03', '2022-01-20 15:16:03'),
(395, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #269211 , User Name : Ram', 1, '2022-01-20 15:18:18', '2022-01-20 15:18:18'),
(396, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:18:18', '2022-01-20 15:18:18'),
(397, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #434615 , User Name : Ram', 1, '2022-01-20 15:18:20', '2022-01-20 15:18:20'),
(398, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:18:21', '2022-01-20 15:18:21'),
(399, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #507571 , User Name : Ram', 1, '2022-01-20 15:18:23', '2022-01-20 15:18:23'),
(400, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:18:23', '2022-01-20 15:18:23'),
(401, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #882606 , User Name : Ram', 1, '2022-01-20 15:18:26', '2022-01-20 15:18:26'),
(402, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:18:26', '2022-01-20 15:18:26'),
(403, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #222903 , User Name : Ram', 1, '2022-01-20 15:18:52', '2022-01-20 15:18:52'),
(404, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:18:53', '2022-01-20 15:18:53'),
(405, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #533842 , User Name : Ram', 1, '2022-01-20 15:18:56', '2022-01-20 15:18:56'),
(406, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:18:57', '2022-01-20 15:18:57'),
(407, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #721091 , User Name : Ram', 1, '2022-01-20 15:19:07', '2022-01-20 15:19:07'),
(408, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:19:07', '2022-01-20 15:19:07'),
(409, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #912924 , User Name : Ram', 1, '2022-01-20 15:26:52', '2022-01-20 15:26:52'),
(410, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:26:53', '2022-01-20 15:26:53'),
(411, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 15:26:53', '2022-01-20 15:26:53'),
(412, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #721091 On 2022-01-20 Is Successfully APPROVE from HomChf', 2, '2022-01-20 15:27:17', '2022-01-20 15:27:17'),
(413, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #912924 On 2022-01-20 Is Successfully APPROVE from HomChf', 2, '2022-01-20 21:33:40', '2022-01-20 21:33:40'),
(414, 'user', 'COMPLETE', 'Dear Abhi We Would Like To Inform You That Your Order #259294 On 2022-01-10 Is Successfully COMPLETE from HomChf', 16, '2022-01-20 22:06:39', '2022-01-20 22:06:39'),
(415, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #794288 , User Name : Abhi', 1, '2022-01-20 22:08:33', '2022-01-20 22:08:33'),
(416, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-20 22:08:33', '2022-01-20 22:08:33'),
(417, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-20 22:08:33', '2022-01-20 22:08:33'),
(418, 'user', 'APPROVE', 'Dear Abhi We Would Like To Inform You That Your Order #794288 On 2022-01-20 Is Successfully APPROVE from HomChf', 16, '2022-01-20 22:09:18', '2022-01-20 22:09:18'),
(419, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #858380 , User Name : Ram', 1, '2022-01-20 22:45:16', '2022-01-20 22:45:16'),
(420, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 22:45:17', '2022-01-20 22:45:17'),
(421, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-20 22:45:17', '2022-01-20 22:45:17'),
(422, 'user', 'APPROVE', 'Dear Ram We Would Like To Inform You That Your Order #858380 On 2022-01-20 Is Successfully APPROVE from HomChf', 2, '2022-01-20 22:45:39', '2022-01-20 22:45:39'),
(423, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #920956 , User Name : Abhi', 1, '2022-01-21 01:36:54', '2022-01-21 01:36:54'),
(424, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 01:36:54', '2022-01-21 01:36:54'),
(425, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 01:36:54', '2022-01-21 01:36:54'),
(426, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #220568 , User Name : Abhi', 1, '2022-01-21 01:38:36', '2022-01-21 01:38:36'),
(427, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 01:38:36', '2022-01-21 01:38:36'),
(428, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 01:38:36', '2022-01-21 01:38:36'),
(429, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #505601 , User Name : Abhi', 1, '2022-01-21 01:47:53', '2022-01-21 01:47:53'),
(430, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 01:47:53', '2022-01-21 01:47:53'),
(431, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #634693 , User Name : Abhi', 1, '2022-01-21 01:48:05', '2022-01-21 01:48:05'),
(432, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 01:48:05', '2022-01-21 01:48:05'),
(433, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #741584 , User Name : Abhi', 1, '2022-01-21 01:53:19', '2022-01-21 01:53:19'),
(434, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 01:53:19', '2022-01-21 01:53:19'),
(435, 'vendor', 'create order', 'Dear Ghar ka Khana We Liked To Inform You That Recently Booked Order. Order Id : #741584 , User Name : Abhi', 1, '2022-01-21 01:53:19', '2022-01-21 01:53:19'),
(436, 'user', 'APPROVE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #741584 On 2022-01-21 Is Successfully APPROVE from HomChf', 16, '2022-01-21 02:34:30', '2022-01-21 02:34:30'),
(437, 'user', 'APPROVE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #634693 On 2022-01-21 Is Successfully APPROVE from HomChf', 16, '2022-01-21 02:34:35', '2022-01-21 02:34:35'),
(438, 'user', 'PICKUP', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #634693 On 2022-01-21 Is Successfully PICKUP from HomChf', 16, '2022-01-21 02:34:39', '2022-01-21 02:34:39'),
(439, 'user', 'DELIVERED', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #634693 On 2022-01-21 Is Successfully DELIVERED from HomChf', 16, '2022-01-21 02:34:45', '2022-01-21 02:34:45'),
(440, 'user', 'DELIVERED', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #721091 On 2022-01-20 Is Successfully DELIVERED from HomChf', 2, '2022-01-21 02:34:52', '2022-01-21 02:34:52'),
(441, 'user', 'COMPLETE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #721091 On 2022-01-20 Is Successfully COMPLETE from HomChf', 2, '2022-01-21 02:35:06', '2022-01-21 02:35:06'),
(442, 'user', 'DELIVERED', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #912924 On 2022-01-20 Is Successfully DELIVERED from HomChf', 2, '2022-01-21 02:35:16', '2022-01-21 02:35:16'),
(443, 'user', 'COMPLETE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #912924 On 2022-01-20 Is Successfully COMPLETE from HomChf', 2, '2022-01-21 02:35:26', '2022-01-21 02:35:26'),
(444, 'user', 'DELIVERED', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #794288 On 2022-01-20 Is Successfully DELIVERED from HomChf', 16, '2022-01-21 02:35:34', '2022-01-21 02:35:34'),
(445, 'user', 'DELIVERED', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #741584 On 2022-01-21 Is Successfully DELIVERED from HomChf', 16, '2022-01-21 02:35:39', '2022-01-21 02:35:39'),
(446, 'user', 'DELIVERED', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #858380 On 2022-01-20 Is Successfully DELIVERED from HomChf', 2, '2022-01-21 02:35:45', '2022-01-21 02:35:45'),
(447, 'user', 'COMPLETE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #858380 On 2022-01-20 Is Successfully COMPLETE from HomChf', 2, '2022-01-21 02:35:54', '2022-01-21 02:35:54'),
(448, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #794288 On 2022-01-20 Is Successfully COMPLETE from HomChf', 16, '2022-01-21 02:36:02', '2022-01-21 02:36:02'),
(449, 'user', 'APPROVE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #920956 On 2022-01-21 Is Successfully APPROVE from HomChf', 16, '2022-01-21 02:36:32', '2022-01-21 02:36:32'),
(450, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #920956 On 2022-01-21 Is Successfully COMPLETE from HomChf', 16, '2022-01-21 02:37:54', '2022-01-21 02:37:54'),
(451, 'user', 'APPROVE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #220568 On 2022-01-21 Is Successfully APPROVE from HomChf', 16, '2022-01-21 02:38:07', '2022-01-21 02:38:07'),
(452, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #444303 , by User Name : Abhi', 1, '2022-01-21 04:07:50', '2022-01-21 04:07:50'),
(453, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 04:07:50', '2022-01-21 04:07:50'),
(454, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #444303 , by User Name : Abhi', 1, '2022-01-21 04:07:50', '2022-01-21 04:07:50'),
(455, 'user', 'APPROVE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #444303 On 2022-01-21 Is Successfully APPROVE from HomChf', 16, '2022-01-21 04:08:20', '2022-01-21 04:08:20'),
(456, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #741584 On 2022-01-21 Is Successfully COMPLETE from HomChf', 16, '2022-01-21 04:08:58', '2022-01-21 04:08:58'),
(457, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #634693 On 2022-01-21 Is Successfully COMPLETE from HomChf', 16, '2022-01-21 04:09:02', '2022-01-21 04:09:02'),
(458, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #220568 On 2022-01-21 Is Successfully COMPLETE from HomChf', 16, '2022-01-21 04:09:06', '2022-01-21 04:09:06'),
(459, 'user', 'DELIVERED', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #444303 On 2022-01-21 Is Successfully DELIVERED from HomChf', 16, '2022-01-21 04:13:25', '2022-01-21 04:13:25'),
(460, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #444303 On 2022-01-21 Is Successfully COMPLETE from HomChf', 16, '2022-01-21 11:24:30', '2022-01-21 11:24:30'),
(461, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #817047 , by User Name : Ram', 1, '2022-01-21 13:59:26', '2022-01-21 13:59:26'),
(462, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-21 13:59:27', '2022-01-21 13:59:27'),
(463, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #817047 , by User Name : Ram', 1, '2022-01-21 13:59:27', '2022-01-21 13:59:27'),
(464, 'user', 'APPROVE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #817047 On 2022-01-21 Is Successfully APPROVE from HomChf', 2, '2022-01-21 14:36:48', '2022-01-21 14:36:48'),
(465, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #479416 , by User Name : Abhi', 1, '2022-01-21 14:37:38', '2022-01-21 14:37:38'),
(466, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 14:37:39', '2022-01-21 14:37:39'),
(467, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #479416 , by User Name : Abhi', 1, '2022-01-21 14:37:39', '2022-01-21 14:37:39'),
(468, 'user', 'APPROVE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #479416 On 2022-01-21 Is Successfully APPROVE from HomChf', 16, '2022-01-21 14:38:01', '2022-01-21 14:38:01'),
(469, 'user', 'DELIVERED', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #479416 On 2022-01-21 Is Successfully DELIVERED from HomChf', 16, '2022-01-21 20:15:31', '2022-01-21 20:15:31'),
(470, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #618927 , by User Name : Abhi', 1, '2022-01-21 20:17:07', '2022-01-21 20:17:07'),
(471, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 20:17:08', '2022-01-21 20:17:08'),
(472, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #618927 , by User Name : Abhi', 1, '2022-01-21 20:17:08', '2022-01-21 20:17:08'),
(473, 'user', 'APPROVE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #618927 On 2022-01-21 Is Successfully APPROVE from HomChf', 16, '2022-01-21 20:18:26', '2022-01-21 20:18:26'),
(474, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #590944 , by User Name : Abhi', 1, '2022-01-21 20:19:19', '2022-01-21 20:19:19'),
(475, 'user', 'book order', 'dear Abhi your order is booked successfully from HomChf', 16, '2022-01-21 20:19:19', '2022-01-21 20:19:19'),
(476, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #590944 , by User Name : Abhi', 1, '2022-01-21 20:19:19', '2022-01-21 20:19:19'),
(477, 'user', 'DELIVERED', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #817047 On 2022-01-21 Is Successfully DELIVERED from HomChf', 2, '2022-01-21 20:20:54', '2022-01-21 20:20:54'),
(478, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #997672 , by User Name : Ram', 1, '2022-01-22 03:09:43', '2022-01-22 03:09:43'),
(479, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-22 03:09:43', '2022-01-22 03:09:43'),
(480, 'vendor', 'create order', 'Dear Ghar ka Khana,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #997672 , by User Name : Ram', 1, '2022-01-22 03:09:43', '2022-01-22 03:09:43'),
(481, 'vendor', 'create order', 'Dear Ram\'s Kitchen,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #665357 , by User Name : Ram', 13, '2022-01-22 11:03:53', '2022-01-22 11:03:53'),
(482, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-22 11:03:53', '2022-01-22 11:03:53'),
(483, 'vendor', 'create order', 'Dear Ram\'s Kitchen,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #665357 , by User Name : Ram', 13, '2022-01-22 11:03:53', '2022-01-22 11:03:53'),
(484, 'user', 'APPROVE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #665357 On 2022-01-22 Is Successfully APPROVE from HomChf', 2, '2022-01-22 11:04:39', '2022-01-22 11:04:39'),
(485, 'user', 'DELIVERED', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #665357 On 2022-01-22 Is Successfully DELIVERED from HomChf', 2, '2022-01-22 11:05:49', '2022-01-22 11:05:49'),
(486, 'vendor', 'create order', 'Dear Ram\'s Kitchen,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #919906 , by User Name : Ram', 13, '2022-01-22 11:06:18', '2022-01-22 11:06:18'),
(487, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-22 11:06:18', '2022-01-22 11:06:18'),
(488, 'vendor', 'create order', 'Dear Ram\'s Kitchen,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #919906 , by User Name : Ram', 13, '2022-01-22 11:06:18', '2022-01-22 11:06:18'),
(489, 'user', 'DELIVERED', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #618927 On 2022-01-21 Is Successfully DELIVERED from HomChf', 16, '2022-01-22 11:13:11', '2022-01-22 11:13:11'),
(490, 'vendor', 'create order', 'Dear Ram\'s Kitchen,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #309337 , by User Name : Ram', 13, '2022-01-22 11:34:48', '2022-01-22 11:34:48'),
(491, 'user', 'book order', 'dear Ram your order is booked successfully from HomChf', 2, '2022-01-22 11:34:48', '2022-01-22 11:34:48'),
(492, 'vendor', 'create order', 'Dear Ram\'s Kitchen,\r\nWe are glad to inform about recently booked order. \r\nOrder Id : #309337 , by User Name : Ram', 13, '2022-01-22 11:34:48', '2022-01-22 11:34:48'),
(493, 'user', 'APPROVE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #919906 On 2022-01-22 Is Successfully APPROVE from HomChf', 2, '2022-01-22 11:35:04', '2022-01-22 11:35:04'),
(494, 'user', 'APPROVE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #309337 On 2022-01-22 Is Successfully APPROVE from HomChf', 2, '2022-01-22 11:35:18', '2022-01-22 11:35:18'),
(495, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #618927 On 2022-01-21 Is Successfully COMPLETE from HomChf', 16, '2022-01-22 17:11:05', '2022-01-22 17:11:05'),
(496, 'user', 'COMPLETE', 'Dear Abhi \r\nWe Are Glad To Inform You That Your Order #479416 On 2022-01-21 Is Successfully COMPLETE from HomChf', 16, '2022-01-22 17:11:08', '2022-01-22 17:11:08'),
(497, 'user', 'COMPLETE', 'Dear Ram \r\nWe Are Glad To Inform You That Your Order #817047 On 2022-01-21 Is Successfully COMPLETE from HomChf', 2, '2022-01-22 17:11:11', '2022-01-22 17:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `notification_template`
--

CREATE TABLE `notification_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `spanish_notification_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spanish_mail_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_template`
--

INSERT INTO `notification_template` (`id`, `subject`, `title`, `notification_content`, `mail_content`, `spanish_notification_content`, `spanish_mail_content`, `created_at`, `updated_at`) VALUES
(1, 'book order', 'book order', 'dear {user_name} your order is booked successfully from {app_name}', 'dear {user_name}<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; your order is Booked successfully&nbsp;<br><br>from:{app_name}<br>{contact}', 'querido {user_name}, su pedido llegó correctamente de {app_name}', 'Querido {user_name}<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Su Pedido Llegó Correctamente<br><br>De: {spp_name}<br>{contact}', '2020-11-02 04:12:05', '2022-01-19 12:01:58'),
(2, 'change status', 'change status', 'Dear {user_name} \r\nWe Are Glad To Inform You That Your Order {order_id} On {date} Is Successfully {order_status} from {company_name}', '<p>dear {user_name} We Would Like To Inform You That Your order {order_id} On {date} Is Successfully {order_status}</p><p>From : {company_name}</p>', 'Estimado {user_name}, nos gustaría informarle que su pedido {order_id} en {date} fue exitoso {order_status} de {company_name}', '<p><span style=\"background-color: rgb(248, 249, 250); color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 14px; text-transform: none; white-space: pre-wrap;\">Estimado {user_name}, nos gustaría informarle que su pedido {order_id} el {date} se realizó correctamente {order_status}</span></p><p><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; text-transform: none; white-space: pre-wrap; background-color: rgb(248, 249, 250);\"><span style=\"font-size: 14px;\">De: {company_name}</span></span><br></p>', '2020-11-02 04:15:37', '2022-01-21 01:58:22'),
(7, 'forgot password', 'forgot password', 'dear {user_name} your new password is {password}', 'dear {user_name}&nbsp;&nbsp;your new password is {password}<br>', 'Querida {user_name} tu nueva contraseña es {contraseña}', 'querido {user_name}&nbsp; &nbsp;tu nueva contraseña es {password} <br>', '2020-11-05 01:29:26', '2021-02-11 08:38:28'),
(8, 'verification', 'verification', 'dear {user_name} your otp is {otp}', '<p>dear {user_name} your otp is {otp}</p><p>from {app_name}</p>', 'Querida {user_name} tu otp es {otp} de {app_name}', '<p> querida {user_name} tu otp es {otp} </p> <p> de {app_name} </p>', '2020-11-28 09:30:42', '2021-02-11 07:16:59'),
(9, 'delivery person order', 'delivery person order', 'dear {driver_name} Recently Booked Order Near {address} From {vendor_name}', '<p>dear {driver_name} recently booked order near {address} from {vendor_name}<br></p>', 'Querida {driver_name} Pedido recientemente reservado cerca de {dirección} De {vendor_name}', '<p> querido {driver_name} pedido recientemente reservado cerca de {address} de {vendor_name} <br> </p>', '2020-12-22 19:44:14', '2021-02-11 07:16:59'),
(10, 'vendor order', 'vendor order', 'Dear {Vendor_name},\r\nWe are glad to inform about recently booked order. \r\nOrder Id : {Order_id} , by User Name : {User_name}', '<p>Dear {Vendor_name} <br>We are glad to inform about recently booked order.Order Id : {Order_id}</p><p>User Name : {User_name}</p>', 'Estimado {Vendor_name}, nos gustaría informarle sobre el pedido reservado recientemente. ID de pedido: {Order_id}, nombre de usuario: {User_name}', '<p> Estimado {Vendor_name}, nos gustaría informarle sobre el pedido reservado recientemente. </p> <hr> <p> ID del pedido: {Order_id} </p> <p> Nombre de usuario: {User_name} </p>', '2020-12-25 05:04:19', '2022-01-21 14:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('000e253e4fa7d85a410b1a5fa25e58fb09bb55acb1bf7cdba4c6aa37720e7bcc8b3762f077b9130f', 12, 1, 'mealup', '[]', 0, '2021-11-22 11:33:52', '2021-11-22 11:33:52', '2022-11-22 11:33:52'),
('008528671442ae7f863a2dcaac49dd261120a4303abecf6f8a626d4a687e4617ce17c6864856781c', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:40:44', '2022-01-19 00:40:44', '2023-01-19 00:40:44'),
('00d3021ee225bbeedcf40fc907876dd45f28c5729c504bb0c447f570a34aa7ad43f492aa2d2c4317', 18, 1, 'mealUp', '[]', 0, '2021-12-11 21:46:02', '2021-12-11 21:46:02', '2022-12-11 21:46:02'),
('022f3225e43eed085452d7e735bc1bff3c6861fa75976166dd797efba5d7a15cb894ceaee88ae0c6', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:05', '2021-12-14 21:26:05', '2022-12-14 21:26:05'),
('02d6f1716cdbec32f561b2070dd5bbd0a7a0277fb2edfe754e1638faa64a3c4caa39ef83e93bee6e', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:28:58', '2021-12-14 21:28:58', '2022-12-14 21:28:58'),
('04886375e074196929d7c34cbecfe90e5605558a1d078b46e2ca093dc395d1f529ae4b6e6f7c6aa3', 27, 1, 'mealUp', '[]', 0, '2022-01-12 18:50:17', '2022-01-12 18:50:17', '2023-01-12 18:50:17'),
('07d439c7e0303c1537d302e322b980472e5bf3e5561723974757e74baf927b788cf42620746dc44f', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:20', '2021-12-14 21:26:20', '2022-12-14 21:26:20'),
('083db79920ccae9418b7e6c828afb59001a6ed513124c8966ab88c4a45d7c49ef3e786d3295f54d0', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:01:45', '2021-11-29 22:01:45', '2022-11-29 22:01:45'),
('0a60ee230738d7bade91dbd48905d11db70b46683f6aaae369379f5a75dc30f3782c1ad1169597e0', 3, 1, 'mealup', '[]', 0, '2021-11-22 11:13:53', '2021-11-22 11:13:53', '2022-11-22 11:13:53'),
('0aa9f3bec45c57b3c3fc886053166b4bdbdd5b52668452ae93e29b42fea29440d7bc7552840ddceb', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:39:06', '2022-01-19 00:39:06', '2023-01-19 00:39:06'),
('0c0c369b5dacd5cd6714b64a062e6b18580fc1b5d89820f3b262e62f906b55a4cbabee4b3ec7c804', 12, 1, 'mealup', '[]', 0, '2022-01-04 20:42:02', '2022-01-04 20:42:02', '2023-01-04 20:42:02'),
('0c3320f084b9238f05f8b2b1feffe475dfefdf0e116313aee3573b752a761e625e7b0f623ae5ae01', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:17:14', '2021-12-14 15:17:14', '2022-12-14 15:17:14'),
('0c332b55c77e3f1bba7dcbf99e329a19204ed242d2b0b106d931c24343dcf0cbbeb14038dc044296', 10, 1, 'mealup', '[]', 0, '2021-11-12 11:49:16', '2021-11-12 11:49:16', '2022-11-12 11:49:16'),
('0d13b0604dacabb20fc3ea2fa2bd6436d0a4e61f39fb4328e07a2578a5218680c8d4b3b049a151d0', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:10:43', '2021-12-14 15:10:43', '2022-12-14 15:10:43'),
('0ded80d125c78e804dabefc68f7e67fdf9a4e6a803cc868fd71447e66835056a79840ee4ea9a9d6d', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:25:37', '2021-12-14 21:25:37', '2022-12-14 21:25:37'),
('0e59f2460695d4ab912343c6939b096a6f94c87f0353e2db5494889abfcbb4d9122a585aa795d9d3', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:36:03', '2022-01-22 10:36:03', '2023-01-22 10:36:03'),
('0e819ecf7ff65fb6afa28b4678f568c210ba2439107c2802b5e6da4ecf2d92fa700830b24c23390c', 18, 1, 'mealup', '[]', 0, '2022-01-22 10:41:11', '2022-01-22 10:41:11', '2023-01-22 10:41:11'),
('0f3b3d0c9275ee4fa601d0444989a9e9892e42be9f09c084ddbed554884a30e7e7431fc5f1bcdcff', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:35:22', '2022-01-09 19:35:22', '2023-01-09 19:35:22'),
('10487bfaa70f613af7fe54ccd1d376c00d6c54cc7d1af16b8e52728dee2fec5440a24c061c4472e8', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:34:51', '2022-01-09 19:34:51', '2023-01-09 19:34:51'),
('107f9c22a5a8214448b15886ce6fac36d1e1c38354fdb75009c6f881b4b347c17a19a86a2436e662', 3, 1, 'mealup', '[]', 0, '2021-11-19 06:55:46', '2021-11-19 06:55:46', '2022-11-19 06:55:46'),
('12cb9e71205977225fdcf8691364d93eeabda9edf66a78f7443ed2f466f44b91d0abf7a7c544d1d5', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:08:06', '2021-12-14 15:08:06', '2022-12-14 15:08:06'),
('13a0e1b54277e94807f0efad73cc4a536e9e709ec2b5c67eec0ddd2f30eb28e32705d960b1d9cda5', 16, 1, 'mealUp', '[]', 0, '2022-01-07 16:09:12', '2022-01-07 16:09:12', '2023-01-07 16:09:12'),
('13cf46cc46cbddb4132c575fe0b463f99269e78c0ab61ea183982f2d90d9f63eaf8df948b99c0120', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:12:22', '2021-12-14 15:12:22', '2022-12-14 15:12:22'),
('171ca524541915e465352af0286455abc12fdc88484e23fd9c4f0326a96bae18e43a0e45dbde6f52', 16, 1, 'mealUp', '[]', 0, '2022-01-18 17:14:18', '2022-01-18 17:14:18', '2023-01-18 17:14:18'),
('17399cc45874d60a7746856ddbe6821ac3b39b654c7fad4e928c4e74a398c14df13c1deb6c80a27a', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:01:50', '2021-11-29 22:01:50', '2022-11-29 22:01:50'),
('17523894984b8a382e04619339aae7e21f912382997e377aabc54a74564631376760a87930c79fb9', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:42:16', '2022-01-22 10:42:16', '2023-01-22 10:42:16'),
('178c8a5c5911af65ebdeacb7ac23592546ac7100faa6812f1d398823fb92a3b7cb2872b4ed4c5d89', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:36:43', '2022-01-22 10:36:43', '2023-01-22 10:36:43'),
('17b7b8ab3fa750356a76a0093852cc3b35bbbc9c3381e7ee7bc7f22ec74dbcf1b6b4355440e10e98', 2, 1, 'mealUp', '[]', 0, '2022-01-19 12:14:41', '2022-01-19 12:14:41', '2023-01-19 12:14:41'),
('17e558a63b4f178d2aa638d0d602ea82fe631d2e3d28c75d8b3bbd5329caea08a9fa2b3cc9ca3216', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:16:05', '2021-12-14 15:16:05', '2022-12-14 15:16:05'),
('183303ceed2e40600e5db7bd42d38361d0f8382d5d7471298402a9012ce84ea1e105c405109398ae', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:37:59', '2022-01-19 00:37:59', '2023-01-19 00:37:59'),
('1bae95187f9e39049446fd0fabe9785053f8d8c80c433df6c8f75ac6ec5906ef6283ee642cf53b44', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:09:35', '2021-12-14 15:09:35', '2022-12-14 15:09:35'),
('1be84e7ace7789014931166b78cbdfa918151b38cef4424cfc5c8c9be0f44b1822cc5e747ca98b66', 16, 1, 'mealUp', '[]', 0, '2021-11-24 20:08:58', '2021-11-24 20:08:58', '2022-11-24 20:08:58'),
('1cd7189898bfcdeb8da6fc271cb9585455dd2c4f90f999324a34423a3608e9f47a64400669e8a69a', 3, 1, 'mealup', '[]', 0, '2022-01-22 03:08:14', '2022-01-22 03:08:14', '2023-01-22 03:08:14'),
('1cdc6967ad3b7be757ad52fbedfd48e9ae904f62c08030a0fa97375c5e2bea65d0c29a88aca13770', 2, 1, 'mealUp', '[]', 0, '2021-10-27 13:34:58', '2021-10-27 13:34:58', '2022-10-27 13:34:58'),
('1e0ddb3cf2892d628fe00299e936e03231c9b420a9a3ce005bedd5f0ca29ea7ee17a63a255b33b5a', 23, 1, 'mealup', '[]', 0, '2021-12-23 20:13:38', '2021-12-23 20:13:38', '2022-12-23 20:13:38'),
('1ec8deef76e2357f953b5098d9517e14c8cab53468b4126b166f2389d874f4a0d7005e0e14be7942', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:21', '2021-12-14 21:26:21', '2022-12-14 21:26:21'),
('1f986f538ac2979ed4bc050cca269b9303afc407d542da584c302e984265f80c5e8fe7e36bd90fc7', 21, 1, 'mealup', '[]', 0, '2021-12-19 22:07:15', '2021-12-19 22:07:15', '2022-12-19 22:07:15'),
('20716904393237f04f21957be2baa910e890ac5d12b437ec9fddc28f892136eed7b1d915503f0327', 2, 1, 'mealUp', '[]', 0, '2022-01-20 08:18:03', '2022-01-20 08:18:03', '2023-01-20 08:18:03'),
('211acd81cc1662faf4527a942d77c7fcc0737be4c87679a5c0f06a4835ab336874ae81c41957924e', 7, 1, 'mealUp', '[]', 0, '2021-11-11 08:58:28', '2021-11-11 08:58:28', '2022-11-11 08:58:28'),
('22d5afa1eb057c4cab4e9e97cccf5d7b0c71ed8e4512388e3ae7d6d7440c3f7d454e12ddd36fcaff', 24, 1, 'mealup', '[]', 0, '2021-12-27 12:28:12', '2021-12-27 12:28:12', '2022-12-27 12:28:12'),
('23a8f9ee34abf83440bff57945dad7c9399f277b0ea096792aa8351fb9b26a9aa3f918be26258c04', 17, 1, 'mealup', '[]', 0, '2021-12-05 09:26:03', '2021-12-05 09:26:03', '2022-12-05 09:26:03'),
('23c389a0fe2b556a87f821f51baa9ac8a56e19892f2532d9393c42d1adc48a1cd6eb3b4e627edb73', 23, 1, 'mealup', '[]', 0, '2021-12-23 20:14:04', '2021-12-23 20:14:04', '2022-12-23 20:14:04'),
('23d8a2b42ff23c3c554e77eac6700e7081948b1e47c6db7c2fa25a87e19b0491d8faba0ca702b391', 3, 1, 'mealup', '[]', 0, '2022-01-19 08:25:15', '2022-01-19 08:25:15', '2023-01-19 08:25:15'),
('253e9d4fcf3547ea9df8caf806b173275b7027469f446154ec4a967ac091abfda99e69167575081b', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:39:17', '2022-01-19 00:39:17', '2023-01-19 00:39:17'),
('2566c55266fc6f484bf81e00aa44ff808748291e1dc38887ba8acb1b8281f5bd7162783de16d1cfb', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:34:50', '2022-01-09 19:34:50', '2023-01-09 19:34:50'),
('25b02a66bd80d9f7f985a45c5a199bb20ed6bf0a5a3a309fad4efa3f50d6ae501e13d105446abe55', 3, 1, 'mealup', '[]', 0, '2022-01-05 09:29:50', '2022-01-05 09:29:50', '2023-01-05 09:29:50'),
('268851e1fb5956ae06ab852787039008d77e4c4acd01e8bb2f01469599b87cb15b575d001c04461b', 3, 1, 'mealup', '[]', 0, '2021-12-15 00:37:22', '2021-12-15 00:37:22', '2022-12-15 00:37:22'),
('26b3831f59955f9d7827b152f8d21ba9248692fc60213aa49439f9efacf9588e59e7960d9e23813c', 3, 1, 'mealup', '[]', 0, '2022-01-13 11:23:56', '2022-01-13 11:23:56', '2023-01-13 11:23:56'),
('2923ff042cc6851401d3816442dd4a660888dbbbe380f6eaffd8fac97c627bfb6f10346125bf7548', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:38:36', '2022-01-22 10:38:36', '2023-01-22 10:38:36'),
('2939d2c6bac695371631d9efcd002f59df12d4142d9369c9fdb4b29d0314883b70c1e030a22a89b9', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:34:07', '2022-01-09 19:34:07', '2023-01-09 19:34:07'),
('2a369e802ed0506ec5b25daad21bff4fcd450410ff2b9535cea2476a9465a58aabbc5c301213334f', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:02:19', '2021-11-29 22:02:19', '2022-11-29 22:02:19'),
('2e4204c81625bd30fef1ff68109de26e96c4f006a97c392cc7036bfe6f0215ec82afc3bfb91e072b', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:10:03', '2021-12-14 15:10:03', '2022-12-14 15:10:03'),
('2f0cc4c27e6a6ac0c746e72774f27f01b31e6e0a60d67ebbe5029c9bf0905c2381808eaa10ffaf6e', 4, 1, 'mealUp', '[]', 0, '2022-01-04 20:11:46', '2022-01-04 20:11:46', '2023-01-04 20:11:46'),
('2f33fda88f6ea9da44e80bd93e92e73612b6ac138ef47db7ba8ab289b46702bf5ac45c5bfdf6ed0d', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:11:01', '2021-12-14 15:11:01', '2022-12-14 15:11:01'),
('2f5153004de711c32cb2ef7a177c9afe733e1b1822115998dc738bec328a93702b818972244df263', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:36:00', '2022-01-09 19:36:00', '2023-01-09 19:36:00'),
('2f8ae4db01b3b8ebfe991eca5dd25122fac7e54679e5066f913d27042b434b5194e0639a9dfdcbf7', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:39:42', '2022-01-19 00:39:42', '2023-01-19 00:39:42'),
('2ff5148d11680194a32017f796f64b609411c62671bafd1b714ea1237be0671012f43186e114d89c', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:08:10', '2021-12-14 15:08:10', '2022-12-14 15:08:10'),
('3044e8d6478d7d0921638eb13c7213d6c41575660a61ab75f80d1050620bd4055b85be04a0958830', 3, 1, 'mealup', '[]', 0, '2021-12-10 08:38:33', '2021-12-10 08:38:33', '2022-12-10 08:38:33'),
('30b5e0f1083cc054ee995d9961cb5b6adbddbe49e85145cc0f28b288a990bdace36e879b64458b30', 16, 1, 'mealUp', '[]', 0, '2022-01-07 09:43:38', '2022-01-07 09:43:38', '2023-01-07 09:43:38'),
('32ab9082b359276b19d3111f1d5fd0373a90d571dca9294eafb0d69b7aebed99ef3f9f479e8f4d0c', 26, 1, 'mealUp', '[]', 0, '2022-01-04 20:46:35', '2022-01-04 20:46:35', '2023-01-04 20:46:35'),
('33b79bbf371f8abb426e0e2fdd828048a6112bf98fefa061ebd67865497e61fe913d96445fcaa6fd', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:41:23', '2022-01-22 10:41:23', '2023-01-22 10:41:23'),
('35a0c78640c527d9edbe18641d36a9017cbe2f899bca7b4925534e44b0d092db1bc5ef23662f4cb1', 2, 1, 'mealUp', '[]', 0, '2021-11-10 11:02:50', '2021-11-10 11:02:50', '2022-11-10 11:02:50'),
('363d90965d7fed8cd8617431fafd5e64f4cb45f596927fc621c604cd9d934bcf2b02a250bcf48c02', 11, 1, 'mealUp', '[]', 0, '2021-11-16 20:44:32', '2021-11-16 20:44:32', '2022-11-16 20:44:32'),
('37bb71a4c489c8187d054d2b715010362f2a1ffc7d9f3064dbcd3f795c8f3927302c3a5d215d7635', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:09:15', '2021-12-14 15:09:15', '2022-12-14 15:09:15'),
('387c69b246d6211fdf4419884fcf4ea3ffe861ccc711f8b4eb0e5cd6f4b2a4ab1afbff9ce576073b', 2, 1, 'mealUp', '[]', 0, '2021-11-18 14:23:47', '2021-11-18 14:23:47', '2022-11-18 14:23:47'),
('38c7b74256d54f93e2d5fbdc613607e4ae2dc98c6e1433c42e89eb8ce1c0c1a9a730423f471b0ce8', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:36:48', '2022-01-22 10:36:48', '2023-01-22 10:36:48'),
('38e29afa26e662596539cbb4fb3f77015ba12d2c18530679310372c1698b7d501b1e3b6202390ecd', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:03:40', '2021-11-29 22:03:40', '2022-11-29 22:03:40'),
('38e50c04dc0eff643a56ff41f4bd5b60d77f204fa58c7dbbb9cfdee3c671f6d6e48ee40d39e78688', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:36:20', '2022-01-09 19:36:20', '2023-01-09 19:36:20'),
('39e63d1ce7105156732e67b3e297ae08c478e9ec717001969c0c6fcfe042b9d6d3c750eaf985338c', 3, 1, 'mealup', '[]', 0, '2021-10-27 23:35:19', '2021-10-27 23:35:19', '2022-10-27 23:35:19'),
('3a10e43d3ce6976ca69638a014d3bcf2ac2135026fee3d9cc5d2ab239264162351bd0eab87780493', 3, 1, 'mealup', '[]', 0, '2021-12-02 04:25:09', '2021-12-02 04:25:09', '2022-12-02 04:25:09'),
('3a13e74630a5d4e445fb74f83b7f6100cdc81800e3853a517ac1736ced7cb556dc8fc0829101d149', 2, 1, 'mealUp', '[]', 0, '2021-11-01 21:36:32', '2021-11-01 21:36:32', '2022-11-01 21:36:32'),
('3a25f00b5c327bfbcc5a3f740d30db754f9ef3603ccf9982c6dce7c1c33cba30708e5f92ab22192d', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:36:36', '2022-01-19 00:36:36', '2023-01-19 00:36:36'),
('3a3eb2fbe36e1b430ca924d0abeda06d19ac779b25c8a6a18123af39025f93149b6272e672de9593', 16, 1, 'mealUp', '[]', 0, '2022-01-21 14:36:13', '2022-01-21 14:36:13', '2023-01-21 14:36:13'),
('3b564eab51233212e25f37db14b7ba0a6d885acf75e2214bb2b9578e5b62a82329d13066de7e68ea', 2, 1, 'mealUp', '[]', 0, '2021-10-28 01:11:01', '2021-10-28 01:11:01', '2022-10-28 01:11:01'),
('3b5cb83cbfd33fb8600cec9180fbd59781140d9315fed4283dccc7c2e39c0c20463ea46e4eaa3258', 16, 1, 'mealUp', '[]', 0, '2022-01-20 22:01:56', '2022-01-20 22:01:56', '2023-01-20 22:01:56'),
('3b7961fa31929f8d2dc9b0be7a9eb38d2bead62c001897ae8cc6f0806a5e35e3172fb2b1c0166e57', 2, 1, 'mealUp', '[]', 0, '2021-11-22 19:11:40', '2021-11-22 19:11:40', '2022-11-22 19:11:40'),
('3be43718526db939480464bc30bfe46b0de2cf0f60c333257b34c63f07ed4c20f89b4a7412d9af5f', 2, 1, 'mealUp', '[]', 0, '2022-01-22 18:27:57', '2022-01-22 18:27:57', '2023-01-22 18:27:57'),
('3bfb1a3e50278382541b04902f9f97ab46136b4c3940222fe105b9500e9cb46d9a79b18edbb0fc69', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:34:23', '2022-01-09 19:34:23', '2023-01-09 19:34:23'),
('3d3264dc451c808c5061686ebed23466b3934c36c4938efdfbb222adc5e195285385ff05522da0b6', 2, 1, 'mealUp', '[]', 0, '2021-12-14 15:20:26', '2021-12-14 15:20:26', '2022-12-14 15:20:26'),
('3d8ad56a088488e6503e707ed58ecde04a68a6d8f8172e7bf0a29ccf20a865775a155030c26e8a55', 2, 1, 'mealUp', '[]', 0, '2021-12-14 15:07:11', '2021-12-14 15:07:11', '2022-12-14 15:07:11'),
('3ead70747f79f333b306f61cd195b5b0b4cdb289e8999fbb8fc6196857c09f1ed8c439e58d579b8a', 27, 1, 'mealUp', '[]', 0, '2022-01-12 18:50:31', '2022-01-12 18:50:31', '2023-01-12 18:50:31'),
('3f87d299a30777ffdd83367e1dc0bc68d648d1ecfa1a99ab85de3df87ee02ed7569ce8056cda5c0d', 2, 1, 'mealUp', '[]', 0, '2022-01-18 23:29:52', '2022-01-18 23:29:52', '2023-01-18 23:29:52'),
('3f974e9e6f8651053bdf8730c7aa397ea3bc1685e6f8dcfe6dd736961312141165eabe3ec461b2bf', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:25:49', '2021-12-14 21:25:49', '2022-12-14 21:25:49'),
('3fff385bb43faa07b0b9a9649e6c5452764270295cc340fb418b77d66026a3a0b3616c5766f56728', 3, 1, 'mealup', '[]', 0, '2021-11-29 10:18:11', '2021-11-29 10:18:11', '2022-11-29 10:18:11'),
('406df61f8f84e6108e4a1c24636474ea9f49a58fecf05d224e34e3ca3d4b2eeb21134763e7b289b2', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:37:37', '2022-01-19 00:37:37', '2023-01-19 00:37:37'),
('407b1c6fa9013b13286facd21bf014836d3ad8657fe787f1701d7c2eb60fd0338a5c1960e1ce8cc3', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:01:51', '2021-11-29 22:01:51', '2022-11-29 22:01:51'),
('41ff7cb334c685b5ba270fc2cd8a891450e52829107896cc7f7bb514750ec4294ba64ea4744cc976', 19, 1, 'mealUp', '[]', 0, '2021-12-11 22:00:22', '2021-12-11 22:00:22', '2022-12-11 22:00:22'),
('429a7c327834f93ba7298ff5c8d626590524f22d7932837fdf3b3e1efbc7e9028f67bde674bc4478', 2, 1, 'mealUp', '[]', 0, '2021-11-29 09:30:07', '2021-11-29 09:30:07', '2022-11-29 09:30:07'),
('46066f97ba9d371038d74b7b789e02fdaa72a3dafb1659bbf78a755f979b0cf456bdabce6c4f3ba7', 3, 1, 'mealup', '[]', 0, '2022-01-20 13:00:09', '2022-01-20 13:00:09', '2023-01-20 13:00:09'),
('46efe9b3a1390c7b9f44b3df95c7af1c573fd25df9ae089ab1bf53c7f176adfe7bc50f4d2db32d1c', 28, 1, 'mealup', '[]', 0, '2022-01-19 12:06:43', '2022-01-19 12:06:43', '2023-01-19 12:06:43'),
('4724cfc638841aed590d17bde004c51096346f813cb127131546548b65c6c543088028a8a9c2ebeb', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:08:39', '2021-12-14 15:08:39', '2022-12-14 15:08:39'),
('47f075a0fcaa63c6f1e8c75af3d92dc3a1511359368102e097d77234e08a5f0ebafe71a2fff1cdb6', 29, 1, 'mealup', '[]', 0, '2022-01-22 10:46:11', '2022-01-22 10:46:11', '2023-01-22 10:46:11'),
('488e8a4c44640271fbf58e71f399d4b2b0dbb6867ebdd5d4bafc3aa922c4f25f408696b60470e276', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:01:18', '2021-11-29 22:01:18', '2022-11-29 22:01:18'),
('48dcf0bb935ca335cca8758c6e0f2de1812f8cc1a141579e607b99cac3561ff43edcfb3713eda2f8', 3, 1, 'mealup', '[]', 0, '2022-01-18 17:21:05', '2022-01-18 17:21:05', '2023-01-18 17:21:05'),
('4a7af649d99fa742ff08e26256f86624a134d013a59e17196e678c908ae0034f82b67ee706d16827', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:08:58', '2021-12-14 15:08:58', '2022-12-14 15:08:58'),
('4b9bbf5b370f6e610f269676a036a832a65d2be7b37b59ac31d6dbced4a95204bb2f980bb7f058bf', 16, 1, 'mealUp', '[]', 0, '2021-11-24 20:08:14', '2021-11-24 20:08:14', '2022-11-24 20:08:14'),
('4bcb062c2ae61818bb2e5d85ce42458674ac72af283bc2e3ad1140627a1b66606c08fecae697a710', 3, 1, 'mealup', '[]', 0, '2021-11-29 09:55:09', '2021-11-29 09:55:09', '2022-11-29 09:55:09'),
('4c16e91561854e4392911342fdd1d918cde866467712269dd3a7f183b0dfd5f4ecaf33a037b82195', 31, 1, 'mealup', '[]', 0, '2022-01-22 20:13:54', '2022-01-22 20:13:54', '2023-01-22 20:13:54'),
('4c199b1fa8b55a04546a6da773126e3a3442a68b33d97eceed87894cdf6500c87c45a9851cdb6ba8', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:41:27', '2022-01-19 00:41:27', '2023-01-19 00:41:27'),
('4cc3446f563d0557dcd026bcdcba91fef1d7541006485eeaf3cdc0c92d105aac4a7c000652e4ffac', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:34:36', '2022-01-09 19:34:36', '2023-01-09 19:34:36'),
('4dd96655a5ff5a6e076607130de88ec5250f263a660efb6ef8f4f21fc7539c2ea9fe9dcbec5e237c', 3, 1, 'mealup', '[]', 0, '2021-12-11 21:40:51', '2021-12-11 21:40:51', '2022-12-11 21:40:51'),
('4e35d97412f9d63b6495f9f3e47e4a5472e216b05230ba843f2cee6164121a872d17b02fa0a82ede', 2, 1, 'mealUp', '[]', 0, '2021-12-14 15:03:59', '2021-12-14 15:03:59', '2022-12-14 15:03:59'),
('4f76852eef2915740ba2e84533a115dba419d0a5e521b189342cc96ae82c2da27c02e48398796737', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:41:16', '2022-01-19 00:41:16', '2023-01-19 00:41:16'),
('50ac9601fc7e1ef12435fce5e025377d84acfabb7b420c670cc7d1941eacf274dbb027e88952d5da', 2, 1, 'mealUp', '[]', 0, '2022-01-22 02:35:48', '2022-01-22 02:35:48', '2023-01-22 02:35:48'),
('510fe5453083188987183f1d82cbfa7c50921eab52ed7f55e2a841a21b8df29f60b0592adb66e70e', 2, 1, 'mealUp', '[]', 0, '2021-11-13 21:19:10', '2021-11-13 21:19:10', '2022-11-13 21:19:10'),
('5145a0a20892fa522a2ee7f29cba816c7823af87d5df212644da648a132b07be0f702306e9198d3e', 6, 1, 'mealUp', '[]', 0, '2021-11-16 22:21:13', '2021-11-16 22:21:13', '2022-11-16 22:21:13'),
('514970372822e93b4bfdb4d767ef55331cade670d083ffe9279d341bcdb7d79c7a21db1e392104bf', 2, 1, 'mealUp', '[]', 0, '2021-11-15 16:23:21', '2021-11-15 16:23:21', '2022-11-15 16:23:21'),
('52a905872d2c3b93a479deda9660f0e11970f1df82e63c9dc2f46abe1c04e762c5c2a9b2939d659d', 12, 1, 'mealup', '[]', 0, '2021-11-22 11:34:22', '2021-11-22 11:34:22', '2022-11-22 11:34:22'),
('53ed54bd4a19f1fb2f4c2b21afabe5f270753652a6f7275f985a091bbd1c0bd0d2ed694ede11c115', 29, 1, 'mealup', '[]', 0, '2022-01-22 20:05:21', '2022-01-22 20:05:21', '2023-01-22 20:05:21'),
('53fc0023e0ef04944f93a0a30466c20523c06eba0309b66db9c95e93cd3088c693730e1555badd30', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:01:19', '2021-11-29 22:01:19', '2022-11-29 22:01:19'),
('551f3808430668025159eec0e4f55585e29df5918dc62165f6adddadec56bfd01f7c45b272e02dcb', 3, 1, 'mealup', '[]', 0, '2021-11-29 09:54:37', '2021-11-29 09:54:37', '2022-11-29 09:54:37'),
('5560df6aafdc8cc06675ae2e2e5f14ef94b52663c3a6422e166d945e64baa902d93f918b80a0f65c', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:37:48', '2022-01-22 10:37:48', '2023-01-22 10:37:48'),
('5820b601c6cfb595a7f49b554494f7bca7186a5d166cd1196f4fb8e5ca89cab010721e5d1774ce74', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:36:04', '2022-01-22 10:36:04', '2023-01-22 10:36:04'),
('5851e23486ef51fdd6899487b9d034eea30acc5dab8fcaf7702e984810c9196bb219e2fb727771df', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:10:08', '2021-12-14 15:10:08', '2022-12-14 15:10:08'),
('586c8d57d55e8cb6a924df4d1d3abaac4ee12c07399f91cde3c9f11071d1be4ac88fc973ba2fb81c', 20, 1, 'mealup', '[]', 0, '2021-12-11 22:07:13', '2021-12-11 22:07:13', '2022-12-11 22:07:13'),
('59d7b85013dc5179d906347156f4777195dfa555162325f59e38a5d04c59f385290f9aa6ab580ebe', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:35:18', '2022-01-09 19:35:18', '2023-01-09 19:35:18'),
('59f7a10a00a34d8dcf312faee87a8fdf9726447b5edc17739c7adf6e60c4e8620bc63c71ddd68d04', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:36:02', '2022-01-09 19:36:02', '2023-01-09 19:36:02'),
('5a179615a969283eb1132c3e40029bb892bf184afd0a755f86863cd6bd32adef04b7aa9353ffcccf', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:35:16', '2021-12-14 15:35:16', '2022-12-14 15:35:16'),
('5ba869a829d99ce2e31b5ddc158e1bf98bfa5c94387e47a0168578efd7f3cbe173e7dd1ab7c98280', 2, 1, 'mealUp', '[]', 0, '2022-01-06 20:36:55', '2022-01-06 20:36:55', '2023-01-06 20:36:55'),
('5c41e51fd09cb27c9ffc0dd40a054d2b74a4e9d145e7863a97a4a8e2feb643cacedd56965182fd44', 16, 1, 'mealUp', '[]', 0, '2021-11-27 08:08:07', '2021-11-27 08:08:07', '2022-11-27 08:08:07'),
('5c578638e9b3f72618ad0ea22c3777caf215432d950007c1041732505d8d45ded20e04341867c16f', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:35:50', '2022-01-09 19:35:50', '2023-01-09 19:35:50'),
('5c9754c7aa8e3e9508428587f92d5f38bce51e07dcbba19360b02057f13890e318b73d56755dce85', 16, 1, 'mealUp', '[]', 0, '2021-12-13 08:26:12', '2021-12-13 08:26:12', '2022-12-13 08:26:12'),
('5dcc8a4754c90e24cf3ec086b7615956f9468d9ba2ab0a58c4bc1f007c46e83c10928ba40e580f78', 30, 1, 'mealUp', '[]', 0, '2022-01-22 20:10:12', '2022-01-22 20:10:12', '2023-01-22 20:10:12'),
('602c97a1c5818bf41edd5751b6f80da04c6e214209efc89b2def1f86e5577fc9a322dc5d826115df', 20, 1, 'mealup', '[]', 0, '2021-12-11 22:06:55', '2021-12-11 22:06:55', '2022-12-11 22:06:55'),
('6218d3415ac6326b5e1d051a0159c86e56a0ff53653b3b740b7151abb948c3cd7c3c99b4d79742af', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:40:56', '2022-01-19 00:40:56', '2023-01-19 00:40:56'),
('630e73bef099e42243bec57b179038c42eb9d73f30460828b36a5f824c311ddce8c93e3f04fc8a31', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:36:34', '2022-01-22 10:36:34', '2023-01-22 10:36:34'),
('636785cb30760844689c81ec21bb1eb7e296eb3664a41d0571f6a7dec997f12fb1520ee00f2e0fc8', 2, 1, 'mealUp', '[]', 0, '2022-01-06 20:20:28', '2022-01-06 20:20:28', '2023-01-06 20:20:28'),
('64362e0bf405f16c2416d2fa8f23e5caafc034e38a9f5f29f2e90c230078e0614dfeca258eca0b55', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:38:45', '2022-01-19 00:38:45', '2023-01-19 00:38:45'),
('64771a1f25d0b59f0afb278c804a137a481eee454f89bda69e67156fdbb20dc6f1838ee6906d51ba', 3, 1, 'mealup', '[]', 0, '2022-01-13 11:24:30', '2022-01-13 11:24:30', '2023-01-13 11:24:30'),
('659b8a052e893bd2393a1b1c4e5d2ff9443c4e16e705af9693e314f4cb6634c55db0ce59f73fd579', 16, 1, 'mealUp', '[]', 0, '2021-12-14 21:41:36', '2021-12-14 21:41:36', '2022-12-14 21:41:36'),
('660be67c6f703d32824fd243436c987763a84a1a176892bf21cafedb6c5ad112c5afae882656e43d', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:25:28', '2021-12-14 21:25:28', '2022-12-14 21:25:28'),
('6621f1acc4225d97e1445af97a7908efe50459f421d8f4b53475043df8c0094858135e11ec69e8d7', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:42:48', '2022-01-19 00:42:48', '2023-01-19 00:42:48'),
('668b508f6e18bfc26403ffc66de8f820e41e2532eec681681b374d1ce01a003f70eac22837275ac2', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:38:51', '2022-01-19 00:38:51', '2023-01-19 00:38:51'),
('66e563472d5efc5fbd8d3a9e2e6962397a451de1d97cc9173b7d19bc2ca56e27aa2f2ad0b32c2fce', 16, 1, 'mealUp', '[]', 0, '2021-12-13 22:32:11', '2021-12-13 22:32:11', '2022-12-13 22:32:11'),
('67ae9753a8bc340a9702445ac352331358ececc628e8459d8a0f8e0044f32d7b91b5a9b183fc43d6', 25, 1, 'mealUp', '[]', 0, '2021-12-28 12:48:27', '2021-12-28 12:48:27', '2022-12-28 12:48:27'),
('68126c45c1f49836cc8335874b00508ef9cd619ddf422c35822e0e0b978a05e6074c24fe46ea7ebc', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:02:24', '2021-11-29 22:02:24', '2022-11-29 22:02:24'),
('69f2da8142b3c09c61b88968c46151a3333354d3c9c2069df6cf9278493d5e8929ff51dda078fb82', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:27:04', '2021-12-14 21:27:04', '2022-12-14 21:27:04'),
('6a2d077c83c0bdfa4df61d3b2e1c330310d72a2d28140cb81d0608d02191d78aec8491e8f8de06c5', 5, 1, 'mealup', '[]', 0, '2021-11-03 09:04:24', '2021-11-03 09:04:24', '2022-11-03 09:04:24'),
('6baaa26a86535984e311c20501eb1aeea5b655c041eca602f72ddfde12fa86c5fef593573bd9a136', 8, 1, 'mealUp', '[]', 0, '2021-11-12 02:21:13', '2021-11-12 02:21:13', '2022-11-12 02:21:13'),
('6c2365f1d0157fe8a7d1314c503f901de416aa3368da604dc33d726a90cb836f501d8cb0a3234b95', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:02:29', '2021-11-29 22:02:29', '2022-11-29 22:02:29'),
('6c6974fb9b389db620d34f6e51c8e9db322562119057e1b5c553f23bcc58d8aca0c329a5833e7d95', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:37:50', '2022-01-22 10:37:50', '2023-01-22 10:37:50'),
('6d207b5a59a265e1fb6a9841285a1b354004e0f5a2b9e46e9c5da788fbacf9cd06b18820e039a706', 3, 1, 'mealup', '[]', 0, '2021-12-02 05:37:07', '2021-12-02 05:37:07', '2022-12-02 05:37:07'),
('6d36b45579ee003e610c70ba8b4fcc396f04558244dbfc9833b7a3e8c9277e5b64023a489d3a9818', 2, 1, 'mealUp', '[]', 0, '2021-11-15 07:19:48', '2021-11-15 07:19:48', '2022-11-15 07:19:48'),
('6fede36c191bdf49d92228c90276467b8e1578a6de21652af165247e3fcb3272afdef21dc8910b80', 28, 1, 'mealup', '[]', 0, '2022-01-19 12:06:19', '2022-01-19 12:06:19', '2023-01-19 12:06:19'),
('714a08e5f28acf0809a88bf584c236f04c8ca9c2abdf90e5641beaaadd9660a45c7dec558fd48a62', 6, 1, 'mealUp', '[]', 0, '2021-11-12 11:15:39', '2021-11-12 11:15:39', '2022-11-12 11:15:39'),
('723e45be7d5e941b0c1a1e8014bb0e452edd8d9e29a0cad502231a73d2127ffd9c2b656a879fd98e', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:37:06', '2022-01-19 00:37:06', '2023-01-19 00:37:06'),
('72e1ae7091edf236e89d5574901e1d3d3fd66cc2066d0c4c5edddb73117f537b84320052cdc2e7cb', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:08:43', '2021-12-14 15:08:43', '2022-12-14 15:08:43'),
('72f8ecce65c64fe0b27ed1244a7faf54abab3f25c9109ed49dbf31e10e0f3a6b577613095130a308', 2, 1, 'mealUp', '[]', 0, '2021-10-27 12:00:02', '2021-10-27 12:00:02', '2022-10-27 12:00:02'),
('73c71df002c08eaa60b0c4457b43d31e020d44ec92581d708489a10a0ce92f49f9d27ac1bce509d9', 6, 1, 'mealUp', '[]', 0, '2021-11-04 23:31:45', '2021-11-04 23:31:45', '2022-11-04 23:31:45'),
('74775754b7d16ed8e467e996db0a23618c0904001191765d62127c5f44f7998fe3f54599ab25a0cb', 2, 1, 'mealUp', '[]', 0, '2021-10-27 11:59:12', '2021-10-27 11:59:12', '2022-10-27 11:59:12'),
('75942e95bd4733bc3c89f704f201fd42d0350ffc9ef9985018a03c067cc0391644b4c0521c213701', 16, 1, 'mealUp', '[]', 0, '2022-01-19 08:24:52', '2022-01-19 08:24:52', '2023-01-19 08:24:52'),
('76fd1bd8fe40f5ebeea2c3da2c72d87f1da9e74ea20146b41cb31dfdce882e6bd4dba628b7e9266f', 11, 1, 'mealUp', '[]', 0, '2021-11-16 20:44:48', '2021-11-16 20:44:48', '2022-11-16 20:44:48'),
('774acd1f152c7ac225049be490567833b4a49721ec3f1ff40dc44a537ace0f501b696aa771870b5c', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:31:20', '2021-12-14 21:31:20', '2022-12-14 21:31:20'),
('78b13efc3e4fc88a27c9bf99e71bbf4689dae5cc7f422b04ea5f943816a412cf34972d18afc0b55a', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:38:15', '2022-01-19 00:38:15', '2023-01-19 00:38:15'),
('7b881f2bd0afe995b72f5dd416748ce0158bf6c323450db5d64507e7e31bc8afdffccb4aba460cab', 3, 1, 'mealup', '[]', 0, '2021-10-27 19:25:39', '2021-10-27 19:25:39', '2022-10-27 19:25:39'),
('7bc5d406e206cf6c60f2faa89a0bc504871cfd6d3095ccfac7e4d0f02f9d8dc325bb7b9c0ab3d5c7', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:37:20', '2022-01-19 00:37:20', '2023-01-19 00:37:20'),
('7c75eedd2bd27ab793892636706f53393c9b500e3f2f84b9cb40a4a33af3a7a486a421496945252f', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:37:04', '2022-01-22 10:37:04', '2023-01-22 10:37:04'),
('7c8853efb7b4f97213906edbc3da0a01d92e664e331a312901870852a537495d0e7b508f5357fb86', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:25:47', '2021-12-14 21:25:47', '2022-12-14 21:25:47'),
('7df14d53b603617e540a82611136abeb553b97c46b18e7728991b03424e8fb099403416f32b9030f', 2, 1, 'mealUp', '[]', 0, '2022-01-06 20:20:27', '2022-01-06 20:20:27', '2023-01-06 20:20:27'),
('7ea6d53902df0110c36027dfde61fb6605ab1eb698cadba9e621c88e08d9895324f21c924d609ba9', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:38:03', '2022-01-22 10:38:03', '2023-01-22 10:38:03'),
('7f4f382e95ec0d793dcf52c66c28bbc09729c049f555cb6e800f498b2a63399843bff5b94c24136c', 2, 1, 'mealUp', '[]', 0, '2022-01-06 20:26:14', '2022-01-06 20:26:14', '2023-01-06 20:26:14'),
('7f634651924582edd4bf4a1a65b570ba4e5290c21e3f777bed14dbef2fbc8381402dc06c63a32502', 2, 1, 'mealUp', '[]', 0, '2021-10-31 14:01:52', '2021-10-31 14:01:52', '2022-10-31 14:01:52'),
('7fb0fb9a66c9b525c72d0f63f950e54664f7638450f0d925b5bf96b9a69b2064f39d513e0c634fe7', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:38:21', '2022-01-22 10:38:21', '2023-01-22 10:38:21'),
('80ede9fdcd62e1dc188dda9aa243097beaf46af60fa2258b0d8872a50020d41c76398f766ec8c92a', 3, 1, 'mealup', '[]', 0, '2021-11-22 15:32:44', '2021-11-22 15:32:44', '2022-11-22 15:32:44'),
('81413dc114ac3bdf4cf8bc23c6cd48343233a0bd6cf8ea08b94bb852a6750bda9d196c64fbe3f6dd', 16, 1, 'mealUp', '[]', 0, '2022-01-21 20:16:24', '2022-01-21 20:16:24', '2023-01-21 20:16:24'),
('81de73237613255d5f7d480afd9e3d1079e04092e59d8f234e43a6407209c820739822551d96d76a', 17, 1, 'mealup', '[]', 0, '2021-12-05 09:25:39', '2021-12-05 09:25:39', '2022-12-05 09:25:39'),
('827e0ebb714f0a7b220f20c1049579365e264a6a74dcea996789ecc342b72268d2f8c9d643ae7076', 2, 1, 'mealUp', '[]', 0, '2021-10-31 18:41:08', '2021-10-31 18:41:08', '2022-10-31 18:41:08'),
('82a3832a3242f70fc555c8f5d23307f2e82eeadfdf230d4246919261861f7675a10c7cb48adb93ba', 3, 1, 'mealup', '[]', 0, '2021-11-30 07:03:02', '2021-11-30 07:03:02', '2022-11-30 07:03:02'),
('834e448faa945467e0ee704b38595672dc9dfea47722188f16e6fa5c22b61c874360b622d32cf2c1', 2, 1, 'mealUp', '[]', 0, '2022-01-21 13:58:57', '2022-01-21 13:58:57', '2023-01-21 13:58:57'),
('83e0639956e730bc6d539c56b3e82aebcb9590abf940b4ef0316a761956e696ff05c25905e6c6e02', 2, 1, 'mealUp', '[]', 0, '2022-01-20 12:55:46', '2022-01-20 12:55:46', '2023-01-20 12:55:46'),
('85b3d504286ff2087ccbd151c421bbc7e4b9e24c341be1809c7e717789d656d70c2b04378475d93e', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:37:50', '2022-01-22 10:37:50', '2023-01-22 10:37:50'),
('8601cc926bbedb4e749364db2a4042875ba62881b3ff5a781821985a0a5c85feabb562e4ec37af61', 14, 1, 'mealUp', '[]', 0, '2021-11-22 18:36:51', '2021-11-22 18:36:51', '2022-11-22 18:36:51'),
('8b5cde0bef80e7d451b2988d1fafae68befd10600904be2c607004ef6fffcd08e92cc9cb9809faad', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:02:52', '2021-11-29 22:02:52', '2022-11-29 22:02:52'),
('8ce7e7e8f6c9b8b5764aa6fa1211b3d7046450ac51577a75b85e74a12139461d6444f12590d5739e', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:30:47', '2021-12-14 21:30:47', '2022-12-14 21:30:47'),
('8e8f46b0724e600a1b70203c811f6d1289f78b7d28a571b7c703cf4cf743d64279fe1cdcf7b44ec7', 2, 1, 'mealUp', '[]', 0, '2021-11-02 02:39:24', '2021-11-02 02:39:24', '2022-11-02 02:39:24'),
('8ef64521e8ed207e49831c8c16e05d84b8ad8c498d5199c1297c13494f0b3e359d23a91d7f1b086c', 16, 1, 'mealUp', '[]', 0, '2022-01-18 19:15:49', '2022-01-18 19:15:49', '2023-01-18 19:15:49'),
('8f6ba217a8a3da9c1992b6232da9b5e0c4393deb0d7a702cc780d439ab4044d7d41146efe5afb944', 14, 1, 'mealUp', '[]', 0, '2021-11-22 18:36:14', '2021-11-22 18:36:14', '2022-11-22 18:36:14'),
('917f7a1299288acd684aaf29a3254cb9f0f59b26cc3928961c9abf9d836eadb3f51d6968b0170422', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:10:28', '2021-12-14 15:10:28', '2022-12-14 15:10:28'),
('91f62d08ef9bc533144ab2a2e82b29d8c69300a98009023ef405bf5d8bc773118fa203692ae22366', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:22:21', '2022-01-09 19:22:21', '2023-01-09 19:22:21'),
('92403fff8bf2b1e27a992c503b50d3929703a770763e1944fa0f6691d7ec89cf1474f88489d22145', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:13:06', '2021-12-14 15:13:06', '2022-12-14 15:13:06'),
('92857f9f42baf1996e3102ba2351314dad69efe17c59c26af931eb9a6fedff0183dfbb269061f362', 2, 1, 'mealUp', '[]', 0, '2021-10-27 12:20:25', '2021-10-27 12:20:25', '2022-10-27 12:20:25'),
('93b95c355ad1fb78567e01f3543fd449365aa0e5e91ae9484d05a34e41c38ba03c27b4b9fd261470', 2, 1, 'mealUp', '[]', 0, '2021-11-14 08:42:06', '2021-11-14 08:42:06', '2022-11-14 08:42:06'),
('9461f6874e98bbef7c9eb5930cdd9d4fcf2b4d806762072cb7e5086dfce2bcee937476f817b8896c', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:34:42', '2021-12-14 15:34:42', '2022-12-14 15:34:42'),
('94b5f9225e677015b2f648243e3e775efcdc2c3379a6fc51f9afa4d0893109349b170bb7f650510d', 13, 1, 'mealUp', '[]', 0, '2021-11-22 17:58:56', '2021-11-22 17:58:56', '2022-11-22 17:58:56'),
('950c600934fd518ab0ebb1e2d99272457c056874d9ef99cb6acd8cf27841868811ff28e571d74101', 4, 1, 'mealUp', '[]', 0, '2022-01-04 20:27:54', '2022-01-04 20:27:54', '2023-01-04 20:27:54'),
('9531b9ed537a63c46aaf9c4280233504b267a9da4becc84b6954bb882f111ddf454595e0ab2d3759', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:11:46', '2021-12-14 15:11:46', '2022-12-14 15:11:46'),
('95d0d74cd773b876fe3a94a43bac2923b9869ce1dacad6ab5180266dae92dc1b6bd28c2d681e7b19', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:00', '2021-12-14 21:26:00', '2022-12-14 21:26:00'),
('96262812b8eba77a57c16b364528d6721a730b412f9418cf337627de1a0a63f748adfbf761d84d9e', 19, 1, 'mealUp', '[]', 0, '2021-12-11 22:00:01', '2021-12-11 22:00:01', '2022-12-11 22:00:01'),
('9736f8fa7e1a480eccf2f2a70f2c99e9b042bed81aee5d181921544ec8bba0acd4a2bdb9f563c60c', 3, 1, 'mealup', '[]', 0, '2021-12-14 19:53:11', '2021-12-14 19:53:11', '2022-12-14 19:53:11'),
('97431deb919bb5a41ec9cc347de8c4aa14f75a7cb8353d8dfb5c6b2e85877d5272dc9c24258edc4b', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:35:06', '2022-01-09 19:35:06', '2023-01-09 19:35:06'),
('991be06783271c21d4e745341b59a7a5c1397c8eb34c58afc4c56476566890376d0caad9575c3350', 13, 1, 'mealUp', '[]', 0, '2021-11-22 17:58:32', '2021-11-22 17:58:32', '2022-11-22 17:58:32'),
('9b95e83b887da56affbc17ab71e4851d68a3bb90b2b95dc995b6ed3a18b995adc9296ba169a2dd15', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:40:50', '2022-01-22 10:40:50', '2023-01-22 10:40:50'),
('9c66dc30ed497a2f33415dcb9fb713e8099028175d486b718d8ba7b3021cbe5436d320ce606cb73a', 20, 1, 'mealup', '[]', 0, '2021-12-11 22:10:11', '2021-12-11 22:10:11', '2022-12-11 22:10:11'),
('9e67cd2be021bbec62aebd303cd332c49e3d20de53600b525362eb5d71bcd6a3966ae1767f171a05', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:11:18', '2021-12-14 15:11:18', '2022-12-14 15:11:18'),
('9f1ca6e2ee6477eb834f40378936c310e0d67f367881078bae52cdb7669918152531b026ec409677', 3, 1, 'mealup', '[]', 0, '2021-10-28 00:01:14', '2021-10-28 00:01:14', '2022-10-28 00:01:14'),
('9fba52f01e5f8d48cfcd26a35617e3305b9a1a65b226dc3c5bfbe58e0eee1f49923bf874f2af6509', 7, 1, 'mealUp', '[]', 0, '2021-11-11 08:58:48', '2021-11-11 08:58:48', '2022-11-11 08:58:48'),
('9fc3109ad12095cf7f7eef80951b44d412c84fbda4b605103684d7bf105febde1b068a8b44c2a174', 4, 1, 'mealUp', '[]', 0, '2021-10-27 22:54:19', '2021-10-27 22:54:19', '2022-10-27 22:54:19'),
('a00a44a4c8e87e3add41195072ead5eb2aad15271cdb6f3bebf201b90cc22a23bcc75cf85f2e2696', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:32', '2021-12-14 21:26:32', '2022-12-14 21:26:32'),
('a025e9069e1a1b163539e68cf13f3983c224d46a82a6fd0f6400bf4f9edde9ba141e5b0a9792cbbf', 8, 1, 'mealUp', '[]', 0, '2021-11-12 02:12:13', '2021-11-12 02:12:13', '2022-11-12 02:12:13'),
('a1a3b11e516e1b9dd8fdfa8464e0a2224e2d3ccd33bfd1d77e9d7b569867d98ae028765df4f07983', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:56', '2021-12-14 21:26:56', '2022-12-14 21:26:56'),
('a246bb9f339e91da45cd3aceb4bffc2394a48f305e789ed7835bf2365d57640f6e76a3bd6d699252', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:41:54', '2022-01-22 10:41:54', '2023-01-22 10:41:54'),
('a27ba3a83e30fb47551810683203b61990c542bc51796298f80fde9b34b3a960c38300932d96a4d9', 3, 1, 'mealup', '[]', 0, '2022-01-21 13:25:14', '2022-01-21 13:25:14', '2023-01-21 13:25:14'),
('a67f770e4d688dffaf0dafc0acbe6c40bd10e357f84b980dc91b1303d2b7d6961c42b09b17086f47', 2, 1, 'mealUp', '[]', 0, '2021-11-02 04:12:53', '2021-11-02 04:12:53', '2022-11-02 04:12:53'),
('a74137f40fe5d5be88d493dea18b0d01957691c78d9ec2a3a1bd31ee5f9dea6da9f022956fbe2968', 3, 1, 'mealup', '[]', 0, '2021-12-14 07:56:21', '2021-12-14 07:56:21', '2022-12-14 07:56:21'),
('a82bc1b0772af96eaef0db00a1ab5a9859d30b89b503f2415d0a744b629b93798bfeb7733d6de430', 24, 1, 'mealup', '[]', 0, '2021-12-27 12:28:32', '2021-12-27 12:28:32', '2022-12-27 12:28:32'),
('a8b0742d01f82b7a90526f3cb3e1cea6e74c0c0c46812d4fef317439209be873f4868dc69993f650', 3, 1, 'mealup', '[]', 0, '2021-11-29 09:53:37', '2021-11-29 09:53:37', '2022-11-29 09:53:37'),
('aa9d3e0b04117675abe9adef91b7ebab2f9337853c7cab2f2c5b5d5871869027f15ea02883cee292', 10, 1, 'mealup', '[]', 0, '2021-11-12 11:50:10', '2021-11-12 11:50:10', '2022-11-12 11:50:10'),
('ab2a9c875c07033e8c3b8dce6c5a532c5463511da6792a80617e81b3c2a011bd3f1e1ad5fc6f34ed', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:27:54', '2021-12-14 21:27:54', '2022-12-14 21:27:54'),
('ab6a3842645f442c9559b39a8b2dee7891c898370f75e0f0ecc67f7737f6dbe79e1fca704e9e3d73', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:40:47', '2022-01-22 10:40:47', '2023-01-22 10:40:47'),
('abda1c92367beb4c6bf79c1e2f4d479eae98d31eb07cd468cf48baa15bde56245baafab7d711e379', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:40:10', '2022-01-19 00:40:10', '2023-01-19 00:40:10'),
('ac2d66c749fe593810d45fdd9d1cb6e6d4cf5d5039a3ecae94bac4ece91eb93a7bd968410daf8509', 3, 1, 'mealup', '[]', 0, '2021-11-29 09:54:09', '2021-11-29 09:54:09', '2022-11-29 09:54:09'),
('ae65826484f5242eee6d6a76d2c43216c310cf0323c86a2a4ef694b5e14088491351fdf6ec711ec5', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:37:19', '2022-01-22 10:37:19', '2023-01-22 10:37:19'),
('ae6f82496a7f381c0b15adebcc0ffba3f98f59196475a3dde2060c76fe6229e173583986af517dbe', 26, 1, 'mealUp', '[]', 0, '2022-01-22 23:22:37', '2022-01-22 23:22:37', '2023-01-22 23:22:37'),
('af6ca6229493cad289f9c3e04c422f0e53a34b127a931d9ff8bdd141d56aec4bb2e7bd103d2683b6', 29, 1, 'mealup', '[]', 0, '2022-01-22 19:55:24', '2022-01-22 19:55:24', '2023-01-22 19:55:24'),
('af9851c5bda1ed9a89d260d626d31b02cf77813e449609d8fd2c22660866dc203c8c2b6f974e446f', 2, 1, 'mealUp', '[]', 0, '2021-11-15 21:01:12', '2021-11-15 21:01:12', '2022-11-15 21:01:12'),
('afefbc8b416f1560e630b7c8ca90280799ef260bac2290b85bf99f57cd8744605d6d19441ba3a2f4', 3, 1, 'mealup', '[]', 0, '2022-01-05 11:25:32', '2022-01-05 11:25:32', '2023-01-05 11:25:32'),
('b0746258fcfddcae076d948161f8cfb7005e30ebde052ef7428a9614552b182f89cfabb0037c7ea5', 3, 1, 'mealup', '[]', 0, '2022-01-21 14:36:44', '2022-01-21 14:36:44', '2023-01-21 14:36:44'),
('b0d6483baa70522bca888eff3a3ed87158a555813811b518a9b4ab7ef50ba73aa54449920ab82f81', 2, 1, 'mealUp', '[]', 0, '2021-11-14 11:50:24', '2021-11-14 11:50:24', '2022-11-14 11:50:24'),
('b215db4c86ddad63715ab2a9e5cd9eba855bdced71d0e92db65114023ff33251f059951afd5ec0e4', 6, 1, 'mealUp', '[]', 0, '2021-11-04 23:32:18', '2021-11-04 23:32:18', '2022-11-04 23:32:18'),
('b35bc40c95fb18de551f8c46f19b1342765b65277489d3faae59ee0a1bfc31f9eb84fc2439817ae0', 3, 1, 'mealup', '[]', 0, '2022-01-22 03:10:39', '2022-01-22 03:10:39', '2023-01-22 03:10:39'),
('b43f4e13598c5209a0833d9269f32486b214a170e91a783388ca170e9d942dbe3556fb0a4cd9031a', 3, 1, 'mealup', '[]', 0, '2021-11-19 02:45:54', '2021-11-19 02:45:54', '2022-11-19 02:45:54'),
('b465559bdb322a4e0591ea2cc570aa53ada7d6de885e39cf80a3d7d878befdd95be5d9e9cea95d02', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:25:33', '2021-12-14 21:25:33', '2022-12-14 21:25:33'),
('b74f6e617fcfea560fe299697b34bfbf36b996d4b9b2956bf04eb3564c8ae34fbec2ea11608c7f52', 2, 1, 'mealUp', '[]', 0, '2022-01-22 02:40:24', '2022-01-22 02:40:24', '2023-01-22 02:40:24'),
('b76d6a2dc146700189cd85b20302497cc0c21c1f8387a94230d91b96e3f8d4442cb0bc7910ae6bb4', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:25:59', '2021-12-14 21:25:59', '2022-12-14 21:25:59'),
('b91a0cd36fd5c18c94dfc6bd86eee7ad8704747367849849bb3d49dca803f964ac17f18432189f8b', 16, 1, 'mealUp', '[]', 0, '2021-11-26 16:26:18', '2021-11-26 16:26:18', '2022-11-26 16:26:18'),
('ba9be17739cf5e5c1500305409b4a113c970c7b682dffe7b829f0197a55b4b2915307242a7d4ffcb', 3, 1, 'mealup', '[]', 0, '2021-10-27 19:26:03', '2021-10-27 19:26:03', '2022-10-27 19:26:03'),
('bbefc61792d2fcbb16b9d3921ceef7c83979b77614b3f9c76de8bf309563ebd2fc69f27b05ce693f', 16, 1, 'mealUp', '[]', 0, '2022-01-24 08:06:05', '2022-01-24 08:06:05', '2023-01-24 08:06:05'),
('bc745d8dae1ed1c42cea7cf0a2570b03d3b4d9a3ad559ad051aed5ade5ea747da43e1243dbb0783d', 3, 1, 'mealup', '[]', 0, '2022-01-05 11:33:51', '2022-01-05 11:33:51', '2023-01-05 11:33:51'),
('bda154e21602e6005f46760488cf92799a5073ea8618b6080ca16ef3585f7b95867ddf7572f83f86', 26, 1, 'mealUp', '[]', 0, '2022-01-04 20:46:59', '2022-01-04 20:46:59', '2023-01-04 20:46:59'),
('bdcf0305a5a73fa65f2e3241d8b826d74e2f2374f45684ade12e5e7d162d0165281850c1e73bfa4e', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:39:07', '2022-01-22 10:39:07', '2023-01-22 10:39:07'),
('be74392f31ef628b12a4756228bd6df40bdc947cced54bd1f6b9a2c66e3ecccde79f792553098ca8', 2, 1, 'mealUp', '[]', 0, '2021-11-29 09:26:48', '2021-11-29 09:26:48', '2022-11-29 09:26:48'),
('bf55d4878128a19f426dd3c9cae789fc0d61170b918119f297ab90385c0ebff801a7fde5cee2a623', 2, 1, 'mealUp', '[]', 0, '2021-11-11 19:05:06', '2021-11-11 19:05:06', '2022-11-11 19:05:06'),
('bfa65140eb577c3e81a6b7389cab80564d29dfefe10ae152f3944488d97bae7e2073df8c1667511a', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:02:34', '2021-11-29 22:02:34', '2022-11-29 22:02:34'),
('bfcbafb395c96109cb2ac5f483ea3d0e3f1364180a7b938e11bcfccd43a837402bff3ebc1fa6d37b', 2, 1, 'mealUp', '[]', 0, '2022-01-22 02:34:35', '2022-01-22 02:34:35', '2023-01-22 02:34:35'),
('c0c030058cc345ed07993faa3d3b22d74dae64a00721ff209e42099ad3177f9302063bdd5b370dd9', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:09:31', '2021-12-14 15:09:31', '2022-12-14 15:09:31'),
('c19872baa54a8e06fc1c4f35817e1972c65a174d22f7e6ae069a55e8ab5ff1f8ca41d79a091b767e', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:37:28', '2022-01-19 00:37:28', '2023-01-19 00:37:28'),
('c47aec946988bfe81c16b11dd79403a8d6636094cd146d73afb7902213362829cd054c136854f69f', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:11:33', '2021-12-14 15:11:33', '2022-12-14 15:11:33'),
('c51591a7a9c94272783050309f8a1bdbe47024778cdac2bcd4ca2fb5194848eaed67a6b62cbb6f95', 3, 1, 'mealup', '[]', 0, '2021-10-27 22:57:41', '2021-10-27 22:57:41', '2022-10-27 22:57:41'),
('c542be8835b1a5c138fb7636b09bebdfc9ea9719c25d4bb5894cc89f677135a2098100d63725a4d2', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:33:48', '2022-01-09 19:33:48', '2023-01-09 19:33:48'),
('c54c34df8f601c419a33d6a12ef3f851db41dd385afe85f183e79d9d5123ae0397da4cb6771c163b', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:37', '2021-12-14 21:26:37', '2022-12-14 21:26:37'),
('c5ea5fc6a0f2de5012cf1a5dbadcb3d3364e870ff9d212027b00ab3d3cbcdd5f8b9e9ca4df14bdcc', 8, 1, 'mealUp', '[]', 0, '2021-11-12 02:12:37', '2021-11-12 02:12:37', '2022-11-12 02:12:37'),
('c73f3317e2f7992e7cf763bebb89ca50f61f992ce8b5e295bc822b9c57e26b55859a2223da99cd3a', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:24:55', '2021-12-14 21:24:55', '2022-12-14 21:24:55'),
('c7fde3dbf1d6a808d391637b4863b9d7f9ec1af54ea27c704232bdb9ac68c6a81375531fa6eb129b', 5, 1, 'mealup', '[]', 0, '2021-11-15 20:32:50', '2021-11-15 20:32:50', '2022-11-15 20:32:50'),
('c8d532f4368b8d01b8d8fb82d371cce9e599cba71edc0e9cd29f2804e6e55338a9805dab11001447', 29, 1, 'mealup', '[]', 0, '2022-01-22 11:04:35', '2022-01-22 11:04:35', '2023-01-22 11:04:35'),
('c922b82010c506803f0fd76cfd78eeb28c501830dbbc98ebfe3912fb39c5f148abbb8a351a2c9759', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:37:18', '2022-01-22 10:37:18', '2023-01-22 10:37:18'),
('cab9d565b0cff73dbe51765c028a3eccc991f2af1b58a1627a036d19b48185ea980bbabe5869364b', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:13:39', '2021-12-14 15:13:39', '2022-12-14 15:13:39'),
('cbcfd615ffd0c471a90749ed9ac4c7b9e924d0cb1751cd0d4515f7569986a18bc66dd5fc7d31fdcc', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:34:19', '2022-01-09 19:34:19', '2023-01-09 19:34:19'),
('cc72faca7dc2dc8dd6b4528ab7bd19f65efaed73f9d945b84c571cef0e71727437a022af6c693f1f', 3, 1, 'mealup', '[]', 0, '2021-11-18 12:03:34', '2021-11-18 12:03:34', '2022-11-18 12:03:34'),
('cea8ea9b8b64d147d749291640a65887ae39b12d2fcd5c9b295d330f5451f2e6994b13aa60c9edb8', 2, 1, 'mealUp', '[]', 0, '2021-10-31 01:29:49', '2021-10-31 01:29:49', '2022-10-31 01:29:49'),
('cfa55a4b4da12e7b6ede00e53b8a7cddfd22bb3263efc9dacc7900d7fdc82b6ba1b6972c180a092b', 16, 1, 'mealUp', '[]', 0, '2021-12-15 20:53:25', '2021-12-15 20:53:25', '2022-12-15 20:53:25'),
('d0d33be6eaec7a762582bf6b03dc97aea1844d6cb0e5a9e6d9a0357c82b122523b03f4bcdffa5fe9', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:11:51', '2021-12-14 15:11:51', '2022-12-14 15:11:51'),
('d1ab0d5fb3c4764faf5d261a641216b674b0641caf4a7b9c39928c639aeab086abc75ed73d3ac737', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:09:11', '2021-12-14 15:09:11', '2022-12-14 15:09:11'),
('d1d0f9f4419a5e97ab31f4c076c12af45ded519e243f9f6e26016c6e783a451f82942a7c99e2b170', 2, 1, 'mealUp', '[]', 0, '2021-11-28 22:31:31', '2021-11-28 22:31:31', '2022-11-28 22:31:31'),
('d253ed3e257992db767cd683c10083e74f930b46268476194543b104717a9a2cb11669c0c63307c6', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:37:15', '2022-01-22 10:37:15', '2023-01-22 10:37:15'),
('d26d3a7c4b6daafa3ab515c9011439150b281448cb435d1e07bf7ea51a91a1341bc6a7b154229940', 3, 1, 'mealup', '[]', 0, '2022-01-19 12:07:47', '2022-01-19 12:07:47', '2023-01-19 12:07:47'),
('d29ece778ab2fb9763a6aeef575cd89cb4a52dff83d744023627acf6de307a4cda78bbd9122ce516', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:26:52', '2021-12-14 21:26:52', '2022-12-14 21:26:52'),
('d3b464320a65729cff058b55d71febed0d4745894cdbeef5573d6a570c5da2d174bba085f9da0c33', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:36:51', '2022-01-09 19:36:51', '2023-01-09 19:36:51'),
('d4714ef6d8e15c3bf54cb416760a490d7aec2b6dcfbdd9ac2e93310abfd162f72c6067af149a2576', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:36:31', '2022-01-09 19:36:31', '2023-01-09 19:36:31'),
('d5560569759c864e84af0ce7e70a8ef5e5f441df08957e114fc706ab0fe1ac0f3749ffac7558d7ee', 2, 1, 'mealUp', '[]', 0, '2021-12-01 13:06:46', '2021-12-01 13:06:46', '2022-12-01 13:06:46'),
('d5b60d194f2068d48cc441e9dd5221254883368a06d234bc8186481019266fa18309d2547218d5e4', 3, 1, 'mealup', '[]', 0, '2022-01-19 00:39:27', '2022-01-19 00:39:27', '2023-01-19 00:39:27'),
('d6d3fe80a2c73e693f34de8f2cd6035ca4085a60c2aa58965c4e64816e2a24a9b105085a5a1617b5', 3, 1, 'mealup', '[]', 0, '2021-11-29 09:53:05', '2021-11-29 09:53:05', '2022-11-29 09:53:05'),
('d7debf53c40f6cdb5cbd788135866f776d63b78aa7fd830be41e92546dbbe3bf286508e40b68c1c0', 2, 1, 'mealUp', '[]', 0, '2021-12-14 15:08:05', '2021-12-14 15:08:05', '2022-12-14 15:08:05'),
('d869b7e486a2a02c99defe88a2b427dfce779fb0f040efacc4837a564c8fafd71b8ad2b7510399c4', 5, 1, 'mealup', '[]', 0, '2021-11-03 08:58:31', '2021-11-03 08:58:31', '2022-11-03 08:58:31'),
('d9477eaaefe1eb1f2cfecc67590801a797bdc7a795f5339468aed521323f99c5494ae9f2496847c3', 2, 1, 'mealUp', '[]', 0, '2021-10-27 13:22:04', '2021-10-27 13:22:04', '2022-10-27 13:22:04'),
('d9c23d11162c5c1490716d4b58616030cb34a3149e93fe07fb6945264668af3f3c53c75860756c5f', 22, 1, 'mealUp', '[]', 0, '2021-12-23 15:08:48', '2021-12-23 15:08:48', '2022-12-23 15:08:48'),
('db622df769067ac0c977fff75a4eeaca139cde5b7ebe20f4c3270858b6455b07099fd8f153a34ccc', 31, 1, 'mealup', '[]', 0, '2022-01-22 20:14:10', '2022-01-22 20:14:10', '2023-01-22 20:14:10'),
('dcaeb0d2b52859c658dbaf3aca581e54340a20e1e8f73175927528d0e54fe36ec79f2e278f688332', 3, 1, 'mealup', '[]', 0, '2021-11-29 22:03:07', '2021-11-29 22:03:07', '2022-11-29 22:03:07'),
('dcef6c9573df331068d9f263bbf2b2cd76487fea9c9c0014154bf96582f00af043c29a67041fd523', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:37:02', '2022-01-09 19:37:02', '2023-01-09 19:37:02'),
('dda925915b422ff242ae9a6d5a898138737a8bc47b4bd13d18a85af3cc5964334e265f309306630f', 4, 1, 'mealUp', '[]', 0, '2021-10-27 22:54:45', '2021-10-27 22:54:45', '2022-10-27 22:54:45'),
('ddefc26caad6eaac3930ce25d41f384908a7659d6b65616ff6557316d377658a0e3db0ffecf75703', 2, 1, 'mealUp', '[]', 0, '2022-01-22 08:53:12', '2022-01-22 08:53:12', '2023-01-22 08:53:12'),
('de363b80fd80a1af8802db9c54d12a9873f0817e097f5ec796ca13471989b5a68361a4ddd74a9d79', 3, 1, 'mealup', '[]', 0, '2022-01-22 11:13:06', '2022-01-22 11:13:06', '2023-01-22 11:13:06'),
('debe48f5d88c3483f900d300d75327d33edda5b72e12575ad7ea28a89d01ceca587382805400e23f', 2, 1, 'mealUp', '[]', 0, '2021-10-30 02:18:02', '2021-10-30 02:18:02', '2022-10-30 02:18:02'),
('df00b105ccca190c0a83c94064c835f05fa8f269e0a196ba43a6e91bb558716964ec923522b466a8', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:33:53', '2022-01-09 19:33:53', '2023-01-09 19:33:53'),
('e3651bc7d083e372979a6f0d56441ea704c1ca0871d9304a8379c9963cc985a1c0b4502ca5aae09b', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:31:51', '2021-12-14 21:31:51', '2022-12-14 21:31:51'),
('e5b5a505b836cffce769d0b52027af706b8135f9155609edc6e1a8ea86c3d17e1d6b6034d9f2bc91', 2, 1, 'mealUp', '[]', 0, '2021-11-02 02:15:53', '2021-11-02 02:15:53', '2022-11-02 02:15:53'),
('e80dc4d5df6557e33b57c3d0065da9ded214870f43d8987527be67e1f78bf6dd9d0f22af65cd5c63', 29, 1, 'mealup', '[]', 0, '2022-01-22 20:06:27', '2022-01-22 20:06:27', '2023-01-22 20:06:27'),
('e8d3ea802468fd686df82ab35f17dd06c7b358b6ac013c0b0a40da77feb8f0d923e24c76ea87572d', 2, 1, 'mealUp', '[]', 0, '2021-10-27 12:10:10', '2021-10-27 12:10:10', '2022-10-27 12:10:10'),
('ea58b093e4250f84e79cc2b2d0605fcdea795f34cf892fa13a4065916640542b5e45be7ca0628177', 2, 1, 'mealUp', '[]', 0, '2021-11-01 13:02:59', '2021-11-01 13:02:59', '2022-11-01 13:02:59'),
('eb56cb174ca4a1be87cc5a6900e3dfc0ae9958fa25f5d8f58508fa53679e736852d74784c76c9ecc', 2, 1, 'mealUp', '[]', 0, '2021-10-27 16:24:00', '2021-10-27 16:24:00', '2022-10-27 16:24:00');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('eca90796ca5f1f5e6867839f8d5713a379e75e3099a113384e5e939f26d54a843d504148aa574f0e', 3, 1, 'mealup', '[]', 0, '2022-01-13 11:25:03', '2022-01-13 11:25:03', '2023-01-13 11:25:03'),
('ee3e9ac1eaf4767b0cd04338c8e9af0f5902c7d3b9ad63fb59d3e8dcd9fdd416c18e5edd6a528a38', 5, 1, 'mealup', '[]', 0, '2021-11-03 08:58:55', '2021-11-03 08:58:55', '2022-11-03 08:58:55'),
('f0ce11c266eb1b6b0a98ece5d409ac924ef689d03e6d90fda12d2c50960d71f4e53057ecc17cf5b9', 3, 1, 'mealup', '[]', 0, '2021-12-04 07:44:50', '2021-12-04 07:44:50', '2022-12-04 07:44:50'),
('f0f069e98ceb0f34d0dbf3750ab0f6ca8c92bdcda8ae80d3563f722202a3c7156111355d15ccaed4', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:35:29', '2022-01-09 19:35:29', '2023-01-09 19:35:29'),
('f1506f296350419b9c2f41dd2d2307c28715abb7558b9b6931d22fe4d94b15fa19d76132c5f7b2e4', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:41:21', '2022-01-22 10:41:21', '2023-01-22 10:41:21'),
('f15ce606f894624b810397fc455ac73a184edbeb56d257b4e649e8ae50de390bbf8d498a5a116274', 2, 1, 'mealUp', '[]', 0, '2021-11-13 03:40:10', '2021-11-13 03:40:10', '2022-11-13 03:40:10'),
('f28f0972a4a508ef794e796bde685af953e59000563f731f572df7e8dbd0f15bcb490d77b702fdc7', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:25:03', '2021-12-14 21:25:03', '2022-12-14 21:25:03'),
('f2ccbad38f4fe2ca5d491a96451fc5eb623f3b542bec3ca14280cbc3cdf3a5a019f45185696262a4', 25, 1, 'mealUp', '[]', 0, '2021-12-28 12:48:39', '2021-12-28 12:48:39', '2022-12-28 12:48:39'),
('f3bcc9e1772c287215f7940e09d9fe2520890f000709c6c33d36cbf8902ae2ded0a29993bbf66527', 3, 1, 'mealup', '[]', 0, '2021-11-29 09:54:04', '2021-11-29 09:54:04', '2022-11-29 09:54:04'),
('f5cf201d1a47c5ecaef9dc25971af255260c39132babed236f88f0d46b6bf540689ef0fb0334c468', 3, 1, 'mealup', '[]', 0, '2022-01-22 10:41:42', '2022-01-22 10:41:42', '2023-01-22 10:41:42'),
('f6d7b2738fa586e5423f5351bf98190c2002dad1703f272c2e5e503e3be2328afa0520fc9f2258dd', 3, 1, 'mealup', '[]', 0, '2021-11-20 23:12:32', '2021-11-20 23:12:32', '2022-11-20 23:12:32'),
('f776e05609c0bb1c293e5bddd3f1d0b31113c1ee947d5d769c82c338a61d57986049d92e15f8475d', 29, 1, 'mealup', '[]', 0, '2022-01-22 10:45:51', '2022-01-22 10:45:51', '2023-01-22 10:45:51'),
('f79d9e81f40dd18c86d52b0efd838a8bb6c1c86361c98ef693a1f359b4a8078235a1dbd260acab75', 3, 1, 'mealup', '[]', 0, '2021-12-14 21:28:26', '2021-12-14 21:28:26', '2022-12-14 21:28:26'),
('f9548a765968ce65303a06598f1318d3bf9b2864c54c6bb103f7688725673cf6f99c81fc0c8961ac', 3, 1, 'mealup', '[]', 0, '2021-12-14 15:16:40', '2021-12-14 15:16:40', '2022-12-14 15:16:40'),
('f958e9c1e88e47d081fc06eeb79cc4b84b3c0ae188a57773930827df043f28989c3a5dfebdbab94c', 2, 1, 'mealUp', '[]', 0, '2021-11-12 09:27:49', '2021-11-12 09:27:49', '2022-11-12 09:27:49'),
('f978f92a36546797aed2fb6564149eaa34399ac25e79150514b332b3c21a84fa4d0370b341237d3f', 16, 1, 'mealUp', '[]', 0, '2022-01-05 22:09:39', '2022-01-05 22:09:39', '2023-01-05 22:09:39'),
('f98098fb934146960c4a96949c5f7baab42d71a18bdd45960929abde9dbe0eeb53b7b67f83ef5bba', 2, 1, 'mealUp', '[]', 0, '2021-11-01 13:40:53', '2021-11-01 13:40:53', '2022-11-01 13:40:53'),
('fb86b9b4c33f536fe931328ee1f131d89afa0dd00b469ace8d9a44dbda4f33337ea7a2fdf6af5cff', 18, 1, 'mealUp', '[]', 0, '2021-12-11 21:43:37', '2021-12-11 21:43:37', '2022-12-11 21:43:37'),
('fbdda55d085f7c2b348529b0dc067451ec6cb6f556aeab1d3d8d2894879086e8d6b06f82514a2f13', 5, 1, 'mealup', '[]', 0, '2021-11-16 22:47:20', '2021-11-16 22:47:20', '2022-11-16 22:47:20'),
('fde40697db0f9d8703456503cf5690b21008a2c2447a058b48a314c706b1c0a76e6c7e463ffcee54', 30, 1, 'mealUp', '[]', 0, '2022-01-22 20:09:53', '2022-01-22 20:09:53', '2023-01-22 20:09:53'),
('fdff0b980fd70c90f82a7f6586125fc5f80d0d8b1ef73655e64c092acb152fec2a356f207b22215c', 22, 1, 'mealUp', '[]', 0, '2021-12-23 15:08:09', '2021-12-23 15:08:09', '2022-12-23 15:08:09'),
('ff2ea4ab4c1031a1997136617ae0900f374e0a1c5d7c0723fb4669199b7124f55f9211b7bd2d60af', 2, 1, 'mealUp', '[]', 0, '2021-12-14 21:26:46', '2021-12-14 21:26:46', '2022-12-14 21:26:46'),
('ffe4526a645f16bf53419042f8b86cb7eac1353a9ecb2b735c0d380c8e3f76e90ec923cbf0a1fec7', 3, 1, 'mealup', '[]', 0, '2022-01-09 19:36:18', '2022-01-09 19:36:18', '2023-01-09 19:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'IQTBkRO2wmRNP05O37ybqgVfwGbScAXniNvrdk6b', NULL, 'http://localhost', 1, 0, 0, '2020-11-28 07:10:19', '2020-11-28 07:10:19'),
(2, NULL, 'Laravel Password Grant Client', 'wGKoskBtEd46BnCBVvatwETRdZvQkZthevAKfcBv', 'users', 'http://localhost', 0, 1, 0, '2020-11-28 07:10:19', '2020-11-28 07:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-28 07:10:19', '2020-11-28 07:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `admin_commission` int(11) DEFAULT NULL,
  `vendor_amount` int(11) DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promocode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `promocode_price` int(11) DEFAULT 0,
  `vendor_discount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_discount_price` int(11) DEFAULT 0,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_charge` int(11) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_start_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_end_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_pending_amount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_schedule` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_id`, `vendor_id`, `user_id`, `delivery_person_id`, `date`, `time`, `payment_type`, `payment_token`, `payment_status`, `amount`, `admin_commission`, `vendor_amount`, `delivery_type`, `promocode_id`, `promocode_price`, `vendor_discount_id`, `vendor_discount_price`, `address_id`, `delivery_charge`, `order_status`, `cancel_by`, `cancel_reason`, `tax`, `order_start_time`, `order_end_time`, `vendor_pending_amount`, `created_at`, `updated_at`, `order_schedule`) VALUES
(73, '#278797', 1, 16, NULL, '2021-12-13', '04:39 pm', 'COD', NULL, '0', 100, 0, 100, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2021-12-13 16:39:06', '2021-12-13 17:39:13', '\"Delivery Date 2021-12-17  Time 17:30  Pick-up @ Hjalmar  Food allergies: nothing\"'),
(74, '#837801', 1, 16, NULL, '2021-12-13', '09:10 pm', 'COD', NULL, '0', 165, 0, 165, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2021-12-13 21:10:56', '2021-12-13 22:12:01', '\"Delivery Date 2021-12-17  Time 17:30  Pick @ Hjalmar  Food nothing\"'),
(75, '#815567', 1, 16, NULL, '2021-12-13', '09:56 pm', 'COD', NULL, '0', 240, 0, 240, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '10:38 pm', '01:08 pm', 0, '2021-12-13 21:56:57', '2021-12-14 13:08:40', '\"Delivery Date 2021-12-17  Time 18:30  Pick @ Nordstan  Food no allergies\"'),
(76, '#935904', 1, 16, NULL, '2021-12-13', '10:46 pm', 'COD', NULL, '0', 455, 0, 455, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '01:08 pm', '01:08 pm', 0, '2021-12-13 22:46:09', '2021-12-14 13:08:33', '\"Delivery Date 2021-12-16  Time 11:30  Pick @ Lindholmen  Food nuts allergy\"'),
(77, '#486012', 1, 16, NULL, '2021-12-14', '01:12 pm', 'COD', NULL, '0', 125, 0, 125, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '01:16 pm', '07:52 pm', 0, '2021-12-14 13:12:10', '2021-12-25 19:52:37', '\"Delivery Date 2021-12-20  Time 11:30  Pick @ Lindholmen  Food nothing\"'),
(78, '#151681', 1, 16, NULL, '2021-12-14', '01:13 pm', 'COD', NULL, '0', 195, 0, 195, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '01:15 pm', '01:15 pm', 0, '2021-12-14 13:13:12', '2021-12-14 13:15:58', '\"Delivery Date 2021-12-17  Time 17:30  Pick @ Hjalmar  Food Nothing\"'),
(79, '#393583', 1, 16, NULL, '2021-12-14', '06:46 pm', 'COD', NULL, '0', 235, 0, 235, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '08:23 pm', '07:52 pm', 0, '2021-12-14 18:47:00', '2021-12-25 19:52:34', '\"Delivery Date 2021-12-17  Time 11:30  Pick @ Hjalmar  Food nothing\"'),
(80, '#501344', 1, 16, NULL, '2021-12-14', '09:16 pm', 'COD', NULL, '0', 170, 0, 170, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '10:13 pm', '07:52 pm', 0, '2021-12-14 21:16:26', '2021-12-25 19:52:31', '\"Delivery Date 2021-12-17  Time 11:10  Pick @ Lindholmen  Food nothing\"'),
(81, '#490809', 1, 16, NULL, '2021-12-14', '10:12 pm', 'COD', NULL, '0', 245, 0, 245, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '02:02 am', '07:52 pm', 0, '2021-12-14 22:12:28', '2021-12-25 19:52:40', '\"Delivery Date 2021-12-22  Time 11:23  Pick @ Nordstan  Food No allergies\"'),
(82, '#372423', 1, 16, NULL, '2021-12-20', '12:27 pm', 'COD', NULL, '0', 105, 0, 105, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '12:32 pm', '07:52 pm', 0, '2021-12-20 12:28:00', '2021-12-25 19:52:43', '\"Delivery Date 2021-12-24  Time 17:30  Pick @ Nordstan Mall  Food no allergies\"'),
(83, '#351111', 1, 16, NULL, '2022-01-04', '08:20 pm', 'COD', NULL, '0', 45, 0, 45, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-04 20:20:37', '2022-01-05 11:00:31', '\"Delivery Date 2022-1-5  Time 18:30  Pick @ Hjalmar  Food nothing\"'),
(85, '#389418', 1, 16, NULL, '2022-01-05', '11:02 am', 'COD', NULL, '0', 60, 0, 60, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-05 11:02:44', '2022-01-05 15:33:20', '\"Delivery Date 2022-1-6  Time 11:30  Pick @ Hjelmer   Food nothing\"'),
(86, '#760622', 1, 16, NULL, '2022-01-05', '03:33 pm', 'COD', NULL, '0', 220, 0, 220, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-05 15:33:20', '2022-01-06 00:07:20', '\"Delivery Date 2022-1-7  Time 12:30  Pick @ Hjalmar  Food nothing\"'),
(87, '#602744', 1, 16, NULL, '2022-01-05', '03:35 pm', 'COD', NULL, '0', 195, 0, 195, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-05 15:35:21', '2022-01-06 00:07:20', '\"Delivery Date 2022-1-12  Time 12:30  Pick @ Hjalmar  Food nothing\"'),
(88, '#791716', 1, 16, NULL, '2022-01-05', '04:30 pm', 'COD', NULL, '0', 240, 0, 240, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-05 16:30:15', '2022-01-06 00:07:20', '\"Delivery Date 2022-1-14  Time 18:30  Pick @ hjalmar   Food nothing\"'),
(89, '#969089', 1, 16, NULL, '2022-01-06', '10:51 am', 'COD', NULL, '0', 45, 0, 45, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '08:13 pm', '11:31 am', 0, '2022-01-06 10:51:55', '2022-01-10 11:31:58', '\"Delivery Date: 2022-1-7; Delivery Time: 18:30; Pick-Up @ Hjalmar; Food Allergies:nothing\"'),
(90, '#973817', 1, 16, NULL, '2022-01-07', '04:13 pm', 'COD', NULL, '0', 140, 0, 140, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '04:15 pm', '11:20 am', 0, '2022-01-07 16:13:32', '2022-01-10 11:20:18', '\"Delivery Date: 2022-1-8; Delivery Time: 6:30; Pick-Up @ hjalmer; Food Allergies:no allergies \"'),
(92, '#208014', 1, 16, NULL, '2022-01-10', '11:31 am', 'COD', NULL, '0', 250, 0, 250, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '11:32 am', '04:58 pm', 0, '2022-01-10 11:31:37', '2022-01-18 16:58:20', '\"Delivery Date: 2022-1-13; Delivery Time: 16:45; Pick-Up @ Hjalmar; Food Allergies:nothing\"'),
(95, '#575872', 1, 16, NULL, '2022-01-18', '04:32 pm', 'COD', NULL, '0', 45, 0, 45, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '04:33 pm', '11:08 pm', 0, '2022-01-18 16:32:23', '2022-01-18 23:08:43', '\"Delivery Date: 2022-1-19; Delivery Time: 12:30; Pick-Up @ Hjalmar; Food Allergies:Nothing \"'),
(96, '#526361', 1, 16, NULL, '2022-01-18', '05:03 pm', 'COD', NULL, '0', 105, 0, 105, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '05:21 pm', '08:49 am', 0, '2022-01-18 17:03:19', '2022-01-19 08:49:02', '\"Delivery Date: 2022-1-19; Delivery Time: 12:0; Pick-Up @ Hjelmer ; Food Allergies:test\"'),
(97, '#963498', 1, 16, NULL, '2022-01-18', '05:48 pm', 'COD', NULL, '0', 155, 0, 155, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '11:08 pm', '12:52 pm', 0, '2022-01-18 17:48:51', '2022-01-19 12:52:13', '\"Delivery Date: 2022-1-19; Delivery Time: 12:30; Pick-Up @ Hammar ; Food Allergies:test \"'),
(98, '#720069', 1, 16, NULL, '2022-01-19', '08:38 am', 'COD', NULL, '0', 95, 0, 95, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '08:39 am', '08:49 am', 0, '2022-01-19 08:38:55', '2022-01-19 08:49:11', '\"Delivery Date: 2022-1-20; Delivery Time: 17:30; Pick-Up @ test order; Food Allergies:test order\"'),
(99, '#102344', 1, 16, NULL, '2022-01-19', '08:50 am', 'COD', NULL, '0', 45, 0, 45, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-19 08:51:00', '2022-01-19 10:06:48', '\"Delivery Date: 2022-1-20; Delivery Time: 12:30; Pick-Up @ hjalmar; Food Allergies:test\"'),
(100, '#972111', 1, 16, NULL, '2022-01-19', '12:05 pm', 'COD', NULL, '0', 125, 0, 125, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '12:06 pm', '12:52 pm', 0, '2022-01-19 12:05:53', '2022-01-19 12:52:18', '\"Delivery Date: 2022-1-26; Delivery Time: 6:30; Pick-Up @ test; Food Allergies:test\"'),
(123, '#794288', 1, 16, NULL, '2022-01-20', '10:08 pm', 'COD', NULL, '0', 125, 0, 125, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '10:09 pm', '02:36 am', 0, '2022-01-20 22:08:32', '2022-01-21 02:36:02', '\"Delivery Date: 2022-1-26; Delivery Time: 12:30; Pick-Up @ lindholmen; Food Allergies:test\"'),
(125, '#920956', 1, 16, NULL, '2022-01-21', '01:36 am', 'COD', NULL, '0', 55, 0, 55, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '02:36 am', '02:37 am', 0, '2022-01-21 01:36:54', '2022-01-21 02:37:53', '\"Delivery Date: 2022-1-27; Delivery Time: 12:30; Pick-Up @ hjalmar ; Food Allergies:test\"'),
(126, '#220568', 1, 16, NULL, '2022-01-21', '01:38 am', 'COD', NULL, '0', 55, 0, 55, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '02:38 am', '04:09 am', 0, '2022-01-21 01:38:36', '2022-01-21 04:09:06', '\"Delivery Date: 2022-1-26; Delivery Time: 13:30; Pick-Up @ test; Food Allergies:test\"'),
(127, '#505601', 1, 16, NULL, '2022-01-21', '01:47 am', 'COD', NULL, '0', 55, NULL, NULL, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-21 01:47:52', '2022-01-21 04:07:50', '\"Delivery Date: 2022-1-26; Delivery Time: 12:30; Pick-Up @ test; Food Allergies:test\"'),
(128, '#634693', 1, 16, NULL, '2022-01-21', '01:47 am', 'COD', NULL, '0', 55, NULL, NULL, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '02:34 am', '04:09 am', 0, '2022-01-21 01:48:04', '2022-01-21 04:09:01', '\"Delivery Date: 2022-1-26; Delivery Time: 12:30; Pick-Up @ test; Food Allergies:test\"'),
(129, '#741584', 1, 16, NULL, '2022-01-21', '01:53 am', 'COD', NULL, '0', 55, 0, 55, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '02:34 am', '04:08 am', 0, '2022-01-21 01:53:18', '2022-01-21 04:08:58', '\"Delivery Date: 2022-1-26; Delivery Time: 12:30; Pick-Up @ test; Food Allergies:test\"'),
(130, '#444303', 1, 16, NULL, '2022-01-21', '04:07 am', 'COD', NULL, '0', 55, 0, 55, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '04:08 am', '11:24 am', 0, '2022-01-21 04:07:49', '2022-01-21 11:24:29', '\"Delivery Date: 2022-1-27; Delivery Time: 12:30; Pick-Up @ Nordstan; Food Allergies:test\"'),
(132, '#479416', 1, 16, NULL, '2022-01-21', '02:37 pm', 'COD', NULL, '0', 55, 0, 55, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '02:38 pm', '05:11 pm', 0, '2022-01-21 14:37:38', '2022-01-22 17:11:08', '\"Delivery Date: 2022-1-26; Delivery Time: 12:30; Pick-Up @ hjalmar; Food Allergies:test\"'),
(133, '#618927', 1, 16, NULL, '2022-01-21', '08:17 pm', 'COD', NULL, '0', 45, 0, 45, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'COMPLETE', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', '08:18 pm', '05:11 pm', 0, '2022-01-21 20:17:07', '2022-01-22 17:11:04', '\"Delivery Date: 2022-1-23; Delivery Time: 11:30; Pick-Up @ Nordstan; Food Allergies:nothing\"'),
(134, '#590944', 1, 16, NULL, '2022-01-21', '08:19 pm', 'COD', NULL, '0', 55, 0, 55, 'HOME', NULL, 0, NULL, NULL, 14, NULL, 'CANCEL', NULL, NULL, '[{\"tax\":0.0,\"name\":\"other tax\"}]', NULL, NULL, 0, '2022-01-21 20:19:18', '2022-01-22 02:13:28', '\"Delivery Date: 2022-1-23; Delivery Time: 12:30; Pick-Up @ Nordstan; Food Allergies:nothing\"');

-- --------------------------------------------------------

--
-- Table structure for table `order_child`
--

CREATE TABLE `order_child` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `custimization` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_child`
--

INSERT INTO `order_child` (`id`, `order_id`, `item`, `price`, `qty`, `custimization`, `created_at`, `updated_at`) VALUES
(128, 73, 13, 45, 1, NULL, '2021-12-13 16:39:06', '2021-12-13 16:39:06'),
(129, 73, 12, 55, 1, NULL, '2021-12-13 16:39:06', '2021-12-13 16:39:06'),
(130, 74, 12, 165, 3, NULL, '2021-12-13 21:10:56', '2021-12-13 21:10:56'),
(131, 75, 13, 45, 1, NULL, '2021-12-13 21:56:57', '2021-12-13 21:56:57'),
(132, 75, 12, 55, 1, NULL, '2021-12-13 21:56:57', '2021-12-13 21:56:57'),
(133, 75, 14, 55, 1, NULL, '2021-12-13 21:56:57', '2021-12-13 21:56:57'),
(134, 75, 15, 85, 1, NULL, '2021-12-13 21:56:57', '2021-12-13 21:56:57'),
(135, 76, 13, 45, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(136, 76, 12, 55, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(137, 76, 14, 55, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(138, 76, 15, 85, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(139, 76, 3, 55, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(140, 76, 4, 50, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(141, 76, 5, 55, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(142, 76, 7, 55, 1, NULL, '2021-12-13 22:46:09', '2021-12-13 22:46:09'),
(143, 77, 19, 125, 1, NULL, '2021-12-14 13:12:10', '2021-12-14 13:12:10'),
(144, 78, 12, 55, 1, NULL, '2021-12-14 13:13:12', '2021-12-14 13:13:12'),
(145, 78, 14, 55, 1, NULL, '2021-12-14 13:13:12', '2021-12-14 13:13:12'),
(146, 78, 15, 85, 1, NULL, '2021-12-14 13:13:12', '2021-12-14 13:13:12'),
(147, 79, 13, 45, 1, NULL, '2021-12-14 18:47:00', '2021-12-14 18:47:00'),
(148, 79, 14, 55, 1, NULL, '2021-12-14 18:47:00', '2021-12-14 18:47:00'),
(149, 79, 15, 85, 1, NULL, '2021-12-14 18:47:00', '2021-12-14 18:47:00'),
(150, 79, 4, 50, 1, NULL, '2021-12-14 18:47:00', '2021-12-14 18:47:00'),
(151, 80, 13, 45, 1, NULL, '2021-12-14 21:16:26', '2021-12-14 21:16:26'),
(152, 80, 19, 125, 1, NULL, '2021-12-14 21:16:26', '2021-12-14 21:16:26'),
(153, 81, 5, 55, 1, NULL, '2021-12-14 22:12:28', '2021-12-14 22:12:28'),
(154, 81, 4, 50, 1, NULL, '2021-12-14 22:12:28', '2021-12-14 22:12:28'),
(155, 81, 15, 85, 1, NULL, '2021-12-14 22:12:28', '2021-12-14 22:12:28'),
(156, 81, 14, 55, 1, NULL, '2021-12-14 22:12:28', '2021-12-14 22:12:28'),
(157, 82, 4, 50, 1, NULL, '2021-12-20 12:28:00', '2021-12-20 12:28:00'),
(158, 82, 5, 55, 1, NULL, '2021-12-20 12:28:00', '2021-12-20 12:28:00'),
(159, 83, 21, 45, 1, NULL, '2022-01-04 20:20:37', '2022-01-04 20:20:37'),
(162, 85, 22, 60, 1, NULL, '2022-01-05 11:02:44', '2022-01-05 11:02:44'),
(163, 86, 23, 95, 1, NULL, '2022-01-05 15:33:20', '2022-01-05 15:33:20'),
(164, 86, 19, 125, 1, NULL, '2022-01-05 15:33:20', '2022-01-05 15:33:20'),
(165, 87, 12, 55, 1, NULL, '2022-01-05 15:35:21', '2022-01-05 15:35:21'),
(166, 87, 14, 55, 1, NULL, '2022-01-05 15:35:21', '2022-01-05 15:35:21'),
(167, 87, 15, 85, 1, NULL, '2022-01-05 15:35:21', '2022-01-05 15:35:21'),
(168, 88, 13, 45, 1, NULL, '2022-01-05 16:30:15', '2022-01-05 16:30:15'),
(169, 88, 12, 55, 1, NULL, '2022-01-05 16:30:15', '2022-01-05 16:30:15'),
(170, 88, 14, 55, 1, NULL, '2022-01-05 16:30:15', '2022-01-05 16:30:15'),
(171, 88, 15, 85, 1, NULL, '2022-01-05 16:30:15', '2022-01-05 16:30:15'),
(172, 89, 21, 45, 1, NULL, '2022-01-06 10:51:55', '2022-01-06 10:51:55'),
(173, 90, 21, 45, 1, NULL, '2022-01-07 16:13:32', '2022-01-07 16:13:32'),
(174, 90, 23, 95, 1, NULL, '2022-01-07 16:13:32', '2022-01-07 16:13:32'),
(178, 92, 20, 125, 1, NULL, '2022-01-10 11:31:37', '2022-01-10 11:31:37'),
(179, 92, 19, 125, 1, NULL, '2022-01-10 11:31:37', '2022-01-10 11:31:37'),
(184, 95, 21, 45, 1, NULL, '2022-01-18 16:32:23', '2022-01-18 16:32:23'),
(185, 96, 21, 45, 1, NULL, '2022-01-18 17:03:19', '2022-01-18 17:03:19'),
(186, 96, 22, 60, 1, NULL, '2022-01-18 17:03:19', '2022-01-18 17:03:19'),
(187, 97, 22, 60, 1, NULL, '2022-01-18 17:48:51', '2022-01-18 17:48:51'),
(188, 97, 23, 95, 1, NULL, '2022-01-18 17:48:51', '2022-01-18 17:48:51'),
(189, 98, 23, 95, 1, NULL, '2022-01-19 08:38:55', '2022-01-19 08:38:55'),
(190, 99, 13, 45, 1, NULL, '2022-01-19 08:51:00', '2022-01-19 08:51:00'),
(191, 100, 19, 125, 1, NULL, '2022-01-19 12:05:53', '2022-01-19 12:05:53'),
(231, 123, 19, 125, 1, NULL, '2022-01-20 22:08:32', '2022-01-20 22:08:32'),
(233, 125, 14, 55, 1, NULL, '2022-01-21 01:36:54', '2022-01-21 01:36:54'),
(234, 126, 12, 55, 1, NULL, '2022-01-21 01:38:36', '2022-01-21 01:38:36'),
(235, 127, 7, 55, 1, NULL, '2022-01-21 01:47:52', '2022-01-21 01:47:52'),
(236, 128, 7, 55, 1, NULL, '2022-01-21 01:48:04', '2022-01-21 01:48:04'),
(237, 129, 7, 55, 1, NULL, '2022-01-21 01:53:18', '2022-01-21 01:53:18'),
(238, 130, 5, 55, 1, NULL, '2022-01-21 04:07:49', '2022-01-21 04:07:49'),
(240, 132, 3, 55, 1, NULL, '2022-01-21 14:37:38', '2022-01-21 14:37:38'),
(241, 133, 13, 45, 1, NULL, '2022-01-21 20:17:07', '2022-01-21 20:17:07'),
(242, 134, 12, 55, 1, NULL, '2022-01-21 20:19:18', '2022-01-21 20:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_setting`
--

CREATE TABLE `order_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_order_max_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_order_max_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_setting`
--

INSERT INTO `order_setting` (`id`, `vendor_order_max_time`, `driver_order_max_time`, `delivery_charge_type`, `charges`, `created_at`, `updated_at`) VALUES
(1, '60', '60', 'order_amount', '[{\"min_value\":\"1\",\"max_value\":\"100000\",\"charges\":\"1\"}]', '2020-11-01 22:24:57', '2021-11-18 07:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_setting`
--

CREATE TABLE `payment_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod` tinyint(1) NOT NULL DEFAULT 1,
  `stripe` tinyint(1) DEFAULT NULL,
  `razorpay` tinyint(1) DEFAULT NULL,
  `paypal` tinyint(1) DEFAULT NULL,
  `flutterwave` tinyint(1) DEFAULT NULL,
  `wallet` tinyint(1) DEFAULT NULL,
  `stripe_publish_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_production` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_sendbox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_publish_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_setting`
--

INSERT INTO `payment_setting` (`id`, `cod`, `stripe`, `razorpay`, `paypal`, `flutterwave`, `wallet`, `stripe_publish_key`, `stripe_secret_key`, `paypal_production`, `paypal_sendbox`, `paypal_client_id`, `paypal_secret_key`, `razorpay_publish_key`, `public_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 06:09:35', '2021-11-16 20:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'role_add', NULL, NULL),
(2, 'role_edit', NULL, NULL),
(3, 'role_access', NULL, NULL),
(4, 'role_delete', NULL, NULL),
(5, 'user_access', NULL, NULL),
(6, 'user_add', NULL, NULL),
(7, 'user_edit', NULL, NULL),
(8, 'user_delete', NULL, NULL),
(9, 'delivery_zone_access', NULL, NULL),
(10, 'delivery_zone_add', NULL, NULL),
(11, 'delivery_zone_edit', NULL, NULL),
(12, 'delivery_zone_delete', NULL, NULL),
(13, 'delivery_person_access', NULL, NULL),
(14, 'delivery_person_add', NULL, NULL),
(15, 'delivery_person_edit', NULL, NULL),
(16, 'delivery_person_delete', NULL, NULL),
(17, 'promo_code_access', NULL, NULL),
(18, 'promo_code_add', NULL, NULL),
(19, 'promo_code_edit', NULL, NULL),
(20, 'promo_code_delete', NULL, NULL),
(21, 'admin_vendor_access', NULL, NULL),
(22, 'admin_vendor_add', NULL, NULL),
(23, 'admin_vendor_edit', NULL, NULL),
(24, 'admin_vendor_delete', NULL, NULL),
(25, 'cuisine_access', NULL, NULL),
(26, 'cuisine_add', NULL, NULL),
(27, 'cuisine_edit', NULL, NULL),
(28, 'cuisine_delete', NULL, NULL),
(29, 'faq_access', NULL, NULL),
(30, 'faq_add', NULL, NULL),
(31, 'faq_edit', NULL, NULL),
(32, 'faq_delete', NULL, NULL),
(33, 'banner_access', NULL, NULL),
(34, 'banner_add', NULL, NULL),
(35, 'banner_edit', NULL, NULL),
(36, 'banner_delete', NULL, NULL),
(37, 'countrymanagement_access', NULL, NULL),
(38, 'countrymanagement_add', NULL, NULL),
(39, 'countrymanagement_edit', NULL, NULL),
(40, 'countrymanagement_delete', NULL, NULL),
(41, 'admin_menu_access', NULL, NULL),
(42, 'admin_menu_add', NULL, NULL),
(43, 'admin_menu_edit', NULL, NULL),
(44, 'admin_menu_delete', NULL, NULL),
(46, 'country_access', NULL, NULL),
(47, 'country_add', NULL, NULL),
(48, 'country_edit', NULL, NULL),
(49, 'country_delete', NULL, NULL),
(50, 'state_access', NULL, NULL),
(51, 'state_add', NULL, NULL),
(52, 'state_edit', NULL, NULL),
(53, 'state_delete', NULL, NULL),
(54, 'city_access', NULL, NULL),
(55, 'city_add', NULL, NULL),
(56, 'city_edit', NULL, NULL),
(57, 'city_delete', NULL, NULL),
(58, 'admin_menu_category_access', NULL, NULL),
(59, 'menu_category_add', NULL, NULL),
(60, 'menu_category_edit', NULL, NULL),
(61, 'menu_category_delete', NULL, NULL),
(62, 'admin_setting', '2020-11-03 16:00:56', '2020-11-03 16:00:56'),
(63, 'notification_template_add', '2020-11-03 16:01:24', '2020-11-03 16:01:24'),
(64, 'notification_template_access', NULL, NULL),
(65, 'notification_template_edit', NULL, NULL),
(66, 'notification_template_delete', NULL, NULL),
(67, 'admin_profile_access', '2020-11-03 16:33:34', '2020-11-03 16:33:34'),
(68, 'admin_submenu_access', NULL, NULL),
(69, 'admin_submenu_add', NULL, NULL),
(70, 'admin_submenu_edit', NULL, NULL),
(71, 'admin_submenu_delete', NULL, NULL),
(72, 'admin_custimization_access', NULL, NULL),
(73, 'admin_custimization_add', NULL, NULL),
(74, 'admin_custimization_edit', NULL, NULL),
(75, 'admin_custimization_delete', NULL, NULL),
(76, 'admin_custimization_type_access', NULL, NULL),
(77, 'admin_custimization_type_add', NULL, NULL),
(78, 'admin_custimization_type_edit', NULL, NULL),
(79, 'admin_custimization_type_delete', NULL, NULL),
(80, 'admin_vendor_discount_access', NULL, NULL),
(81, 'vendor_discount_add', NULL, NULL),
(82, 'vendor_discount_edit', NULL, NULL),
(83, 'vendor_discount_delete', NULL, NULL),
(84, 'admin_vendor_financeDetails', NULL, NULL),
(85, 'admin_vendor_password', NULL, NULL),
(86, 'admin_vendor_bankDetails', NULL, NULL),
(87, 'admin_vendor_sellingTimeslots', NULL, NULL),
(88, 'admin_vendor_pickupTimeslots', NULL, NULL),
(89, 'admin_vendor_deliveryTimeslots', NULL, NULL),
(90, 'admin_vendor_reviews', NULL, NULL),
(91, 'vendor_discount_access', NULL, NULL),
(92, 'vendor_financeDetails', NULL, NULL),
(93, 'vendor_reviews', NULL, NULL),
(94, 'menu_category_access', NULL, NULL),
(95, 'vendor_bank_details', NULL, NULL),
(96, 'vendor_deliveryTimeslots', NULL, NULL),
(97, 'vendor_pickupTimeslots', NULL, NULL),
(98, 'vendor_sellingTimeslots', NULL, NULL),
(99, 'vendor_order_access', NULL, NULL),
(100, 'vendor_order_add', NULL, NULL),
(101, 'vendor_submenu_access', NULL, NULL),
(102, 'vendor_submenu_add', NULL, NULL),
(103, 'vendor_submenu_edit', NULL, NULL),
(104, 'vendor_menu_access', NULL, NULL),
(105, 'vendor_menu_add', NULL, NULL),
(106, 'vendor_menu_edit', NULL, NULL),
(107, 'vendor_custimization_access', NULL, NULL),
(108, 'vendor_custimization_add', NULL, NULL),
(109, 'vendor_custimization_edit', NULL, NULL),
(110, 'vendor_order_add', NULL, NULL),
(112, 'order_access', NULL, NULL),
(113, 'access_settelments', NULL, NULL),
(114, 'edit_settelments', NULL, NULL),
(115, 'vendor_bank_details', NULL, NULL),
(116, 'vendor_custimization_type_access', NULL, NULL),
(117, 'vendor_custimization_type_add', NULL, NULL),
(118, 'vendor_custimization_type_edit', NULL, NULL),
(119, 'vendor_custimization_type_delete', NULL, NULL),
(120, 'admin_dashboard', NULL, NULL),
(121, 'vendor_dashboard', NULL, NULL),
(122, 'admin_reports', NULL, NULL),
(123, 'vendor_reports', NULL, NULL),
(124, 'feedback_support', NULL, NULL),
(125, 'language_access', NULL, NULL),
(126, 'language_edit', NULL, NULL),
(127, 'language_add', NULL, NULL),
(128, 'refund_access', NULL, NULL),
(129, 'tax_access', '2021-06-01 13:05:31', '2021-06-01 13:05:31'),
(130, 'tax_add', '2021-06-01 13:05:31', '2021-06-01 13:05:31'),
(131, 'tax_edit', '2021-06-01 13:05:31', '2021-06-01 13:05:31'),
(132, 'tax_delete', '2021-06-01 13:05:31', '2021-06-01 13:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 51),
(2, 50),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 70),
(2, 69),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(4, 91),
(4, 95),
(4, 96),
(4, 97),
(4, 98),
(4, 92),
(4, 94),
(4, 90),
(4, 93),
(4, 99),
(4, 60),
(4, 61),
(4, 81),
(4, 82),
(4, 59),
(4, 101),
(4, 104),
(4, 102),
(4, 103),
(4, 107),
(4, 108),
(4, 109),
(2, 112),
(2, 113),
(4, 100),
(4, 116),
(4, 117),
(4, 118),
(4, 119),
(4, 121),
(2, 120),
(2, 122),
(2, 125),
(2, 126),
(2, 127),
(4, 9),
(4, 10),
(4, 11),
(4, 13),
(4, 14),
(4, 15),
(4, 123),
(2, 128),
(2, 124),
(2, 129),
(2, 130),
(2, 131),
(2, 132),
(2, 71),
(2, 20),
(4, 83);

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_customer_app` tinyint(1) NOT NULL,
  `vendor_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isFlat` tinyint(1) NOT NULL,
  `max_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_max_user` int(11) DEFAULT 0,
  `flatDiscount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discountType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(100) DEFAULT NULL,
  `max_disc_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_order_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_count` int(11) NOT NULL,
  `count_max_count` int(11) DEFAULT 0,
  `max_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_max_order` int(11) DEFAULT 0,
  `coupen_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_end_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refaund`
--

CREATE TABLE `refaund` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `refund_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `rate`, `comment`, `order_id`, `user_id`, `contact`, `image`, `vendor_id`, `created_at`, `updated_at`) VALUES
(9, 3, 'very tasty', 76, 16, '701043165', NULL, 1, '2021-12-20 12:20:48', '2021-12-20 12:20:48'),
(11, 5, 'very tasty food', 90, 16, '701043165', NULL, 1, '2022-01-14 17:03:04', '2022-01-14 17:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'admin', '2020-10-24 03:58:02', '2020-10-26 04:56:08'),
(3, 'user', '2020-10-26 05:17:20', '2020-10-26 05:17:20'),
(4, 'vendor', '2020-11-03 06:44:54', '2020-11-03 06:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 3),
(12, 4),
(15, 4),
(17, 4),
(20, 4),
(21, 4),
(23, 4),
(24, 4),
(28, 4),
(29, 4),
(31, 4),
(32, 4),
(33, 4),
(35, 4),
(36, 4),
(37, 3),
(38, 3),
(39, 3),
(40, 4),
(43, 4),
(44, 4),
(53, 3),
(56, 4),
(58, 4),
(59, 3),
(60, 4),
(61, 4),
(63, 3),
(62, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 4),
(78, 3),
(79, 3),
(80, 3),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 4),
(91, 3),
(92, 4),
(93, 4),
(94, 3),
(95, 4),
(96, 4),
(97, 4),
(98, 4),
(99, 4),
(100, 4),
(101, 4),
(102, 4),
(103, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(110, 4),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(125, 3),
(126, 4),
(127, 3),
(128, 4),
(129, 4),
(130, 4),
(131, 3),
(132, 4),
(133, 3),
(134, 4),
(135, 3),
(136, 4),
(137, 4),
(138, 4),
(139, 3),
(140, 3),
(141, 4),
(142, 4),
(143, 4),
(144, 4),
(145, 4),
(146, 4),
(147, 3),
(3, 4),
(4, 3),
(5, 4),
(6, 3),
(7, 3),
(8, 3),
(9, 4),
(10, 4),
(11, 3),
(13, 3),
(14, 3),
(16, 3),
(19, 3),
(22, 3),
(25, 3),
(26, 3),
(27, 3),
(18, 4),
(30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settlements`
--

CREATE TABLE `settlements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_earning` int(11) DEFAULT NULL,
  `payment` int(11) NOT NULL,
  `admin_earning` int(11) NOT NULL,
  `vendor_earning` int(11) NOT NULL,
  `vendor_status` int(11) NOT NULL,
  `driver_status` int(11) DEFAULT NULL,
  `payment_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_payment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_payment_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty_reset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `item_reset_value` int(11) DEFAULT NULL,
  `is_excel` int(11) NOT NULL DEFAULT 0,
  `availabel_item` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `vendor_id`, `menu_id`, `name`, `image`, `price`, `description`, `type`, `qty_reset`, `status`, `item_reset_value`, `is_excel`, `availabel_item`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Biriyani', 'product_default.jpg', '85', 'test', 'veg', 'never', 1, 0, 0, NULL, '2021-10-27 19:28:05', '2021-10-28 00:01:39'),
(2, 1, 1, 'paneer tikka', '61a52e19237bb.png', '45', 'text', 'veg', 'daily', 1, 0, 0, NULL, '2021-10-27 23:45:35', '2021-12-14 22:01:17'),
(3, 1, 4, 'text', '617c7db366ed3.png', '55', 'text', 'non-veg', 'never', 1, 0, 0, NULL, '2021-10-28 00:05:32', '2021-12-14 22:01:14'),
(4, 1, 4, 'Dosa', '617c7daa4ac21.png', '50', 'test', 'veg', 'never', 1, 0, 0, NULL, '2021-10-28 07:34:31', '2021-11-30 16:23:37'),
(5, 1, 4, 'vada', '617c7af84fd27.png', '55', 'vada', 'veg', 'never', 1, 0, 0, NULL, '2021-10-30 04:21:36', '2021-11-29 10:18:56'),
(7, 1, 4, 'Paneer Tikka', '61a52e08d532e.png', '55', 'delicious tikka from home made paneer', 'veg', 'never', 1, 0, 0, NULL, '2021-11-03 12:58:08', '2021-12-14 22:01:14'),
(10, 5, 7, '2rotis,sabji,rice', 'product_default.jpg', '75', '2 whole wheat rotis, spicy alu matta in tomato gravy and ghee rice', 'veg', 'never', 1, 0, 0, NULL, '2021-11-22 11:39:11', '2021-11-23 15:15:32'),
(11, 5, 8, 'spring rolls', 'product_default.jpg', '45', 'vegetable stuffed in doughwrapper and shallow fried. 1plate spring rolls contain 5 small pieces', 'veg', 'never', 1, 0, 0, NULL, '2021-11-22 15:10:02', '2022-01-04 20:42:14'),
(12, 1, 9, 'fish curry', '61a52db6e8165.png', '55', 'Telugu fish curry dish', 'non-veg', 'never', 1, 0, 0, NULL, '2021-11-22 15:19:09', '2021-12-14 22:01:10'),
(13, 1, 10, 'namkeen', 'product_default.jpg', '45', 'text', 'non-veg', 'never', 1, 0, 0, NULL, '2021-11-27 08:12:45', '2021-12-14 22:01:06'),
(14, 1, 9, 'chicken biriyani', '61a641eed9723.png', '55', 'authentic Hyderabad dum biriyani', 'non-veg', 'never', 1, 0, 0, NULL, '2021-11-28 20:48:03', '2021-11-30 16:23:26'),
(15, 1, 9, 'Dum Hyderabadi Biryani', '61b517f0106bb.png', '85', 'authentic Hyderabad taste', 'non-veg', 'never', 1, NULL, 0, NULL, '2021-12-11 22:28:16', '2021-12-11 22:28:16'),
(16, 8, 13, 'Chicken Afgani', 'product_default.jpg', '99', 'double for 2 persons', 'non-veg', 'never', 1, NULL, 0, NULL, '2021-12-11 22:52:57', '2021-12-11 22:52:57'),
(17, 8, 12, 'Mutton Biryani', 'product_default.jpg', '180', 'Family pack 2 adults and 1 kid', 'non-veg', 'never', 1, NULL, 0, NULL, '2021-12-11 22:54:20', '2021-12-11 22:54:20'),
(18, 8, 11, 'Chicken Biryani', 'product_default.jpg', '170', 'Family pack, 2 Adults and 1 kid', 'non-veg', 'never', 1, NULL, 0, NULL, '2021-12-11 22:55:21', '2021-12-11 22:55:21'),
(19, 1, 14, 'Boneless chicken biriyani', '61b7c1aa82351.png', '125', 'Rich flavours authentic taste', 'non-veg', 'never', 1, 15, 0, 1, '2021-12-13 22:56:58', '2021-12-14 22:00:35'),
(20, 1, 15, 'Fish Curry - Chepala Pulusu', '61b93e776ac9a.png', '125', 'authentic Telugu cuisine', 'non-veg', 'never', 1, 0, 0, NULL, '2021-12-15 02:01:43', '2022-01-22 14:34:13'),
(21, 1, 21, 'Chef special subji and dal - Mini', 'product_default.jpg', '45', 'Chef special subji and dal - Mini', 'veg', 'never', 1, 0, 0, NULL, '2022-01-03 12:20:55', '2022-01-22 02:49:13'),
(22, 1, 21, 'Chef special subji and dal - D', 'product_default.jpg', '60', 'Chef special subji and dal - D', 'veg', 'never', 1, 0, 0, NULL, '2022-01-03 12:22:14', '2022-01-22 02:49:08'),
(23, 1, 21, 'Chef special subji and dal - S', 'product_default.jpg', '95', 'Chef special subji and dal - S', 'veg', 'never', 1, 0, 0, NULL, '2022-01-03 12:22:48', '2022-01-22 11:18:22'),
(24, 10, 22, 'Masala Gobhi Aloo or Gatte ki Subji- Mini Meal', '61e55d188fd35.jpeg', '45', 'Spiced potato and cauliflower stir fry or Gram flour rondels( Gatte)  in onion tomato gray with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 12:30:57', '2022-01-17 13:17:41'),
(25, 10, 22, 'Masala Gobhi Aloo& Gatte ki Subji- Deluxe Meal', '61e55e403259e.jpeg', '60', 'Spiced potato and cauliflower stir fry and Gram flour roundels( Gatte)  in onion tomato gray with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 12:35:12', '2022-01-17 14:16:06'),
(26, 10, 22, 'Masala Gobhi Aloo & Gatte ki Subji- Shahi Meal', '61e55f1f101fd.jpeg', '95', 'Spiced potato and cauliflower stir fry Gram flour roundels(Gattte) in onion tomato gravy and  2 Rotis, Rice, Raita and Sweet of the day', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 12:40:11', '2022-01-17 13:22:39'),
(27, 10, 22, 'Rice', '61d4bb76c707a.jpeg', '10', 'Box of steamed rice', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 12:41:57', '2022-01-17 13:22:41'),
(28, 10, 23, 'Paneer Jalsa or Langarwali Dal- Mini Meal', 'product_default.jpg', '45', 'Paneer Jalsa(dry fruit filling) or Langarwali Dal with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 21:53:57', '2022-01-17 13:28:47'),
(29, 10, 23, 'Paneer Jalsa & Langarwali Dal - Deluxe Meal', 'product_default.jpg', '60', 'Paneer Jalsa(dryfruit filling) and Langarwali Dal with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 21:55:36', '2022-01-17 13:31:42'),
(30, 10, 23, 'Paneer Jalsa & Langarwali Dal - Shahi Meal', 'product_default.jpg', '95', 'Paneer Jalsa(dryfruit filling) and Langarwali Dal, 2 Rotis, Rice, Raita and Sweet of the day', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 21:57:58', '2022-01-17 13:33:20'),
(31, 10, 23, 'Rice box', 'product_default.jpg', '10', '1 box of Steamed rice', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 21:58:45', '2022-01-03 21:58:45'),
(32, 10, 24, 'Gobhi Aloo & Rajma-Mini Meal', '61d4bc736fa2b.jpeg', '45', 'Subji or Rajma with 2 Rotis', 'veg', 'never', 0, NULL, 0, NULL, '2022-01-03 22:30:54', '2022-01-09 23:06:59'),
(33, 10, 24, 'Gobhi Aloo & Rajma-Deluxe Meal', '61d4bc806cbb0.jpeg', '60', 'Subji and Rajma with 2 Rotis', 'veg', 'never', 0, NULL, 0, NULL, '2022-01-03 22:32:27', '2022-01-09 23:07:00'),
(34, 10, 24, 'Gobhi Aloo & Rajma- Shahi Meal', '61d4bc941b8a8.jpeg', '95', 'Subji and Rajma, 2 Rotis, Rice, Raita and Sweet of the day', 'veg', 'never', 0, NULL, 0, NULL, '2022-01-03 22:34:58', '2022-01-09 23:07:00'),
(35, 10, 24, 'Rice', '61d4bca7a4bdf.jpeg', '10', 'Box of steamed Rice', 'veg', 'never', 0, NULL, 0, NULL, '2022-01-03 22:36:44', '2022-01-09 23:07:01'),
(36, 10, 25, 'Stuffed Dum Aloo & Chole- Mini Meal', 'product_default.jpg', '45', 'Subji or Chole with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 22:55:01', '2022-01-03 22:55:01'),
(37, 10, 25, 'Stuffed Dum Aloo & Chole- Deluxe Meal', 'product_default.jpg', '60', 'Subji & Chole with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 22:58:08', '2022-01-03 22:58:08'),
(38, 10, 25, 'Stuffed Dum Aloo & Chole- Shahi Meal', 'product_default.jpg', '95', 'Stuffed Dum Aloo, Chole, Rice, Raita & Sweet of the day', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 23:01:30', '2022-01-03 23:01:30'),
(39, 10, 25, 'Rice', 'product_default.jpg', '10', 'Box of steamed Rice', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 23:02:02', '2022-01-03 23:07:37'),
(40, 10, 26, 'Vada Pav / Piece', '61d3761b580ee.jpeg', '35', 'This Maharatrian street food is our speciality', 'veg', 'never', 0, NULL, 0, NULL, '2022-01-03 23:14:56', '2022-01-10 00:00:01'),
(41, 10, 26, 'Dahi Bhalla/ Piece', '61d3783315628.png', '20', 'This mouth watering Dahi Bhallas are our speciality', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 23:26:59', '2022-01-10 00:00:07'),
(42, 10, 27, 'Roti- Per Piece', '61d4bd60d0178.jpeg', '5', 'Whole wheat roti', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-03 23:54:16', '2022-01-04 22:34:24'),
(43, 10, 27, 'Boiled or Jeera Rice- Small', '61d4bf4bc5276.jpeg', '10', 'This Rice box is suitable for 1 + person', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:06:27', '2022-01-04 22:42:35'),
(44, 10, 27, 'Boiled or Jeera Rice- Medium', '61d4bf60b2583.jpeg', '20', 'This Rice box is suitable for 2+ persons', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:08:10', '2022-01-04 22:42:56'),
(45, 10, 27, 'Boiled or Jeera Rice- large', '61d4bf93eee4c.jpeg', '30', 'This Rice box is suitable for 3+ person', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:18:05', '2022-01-04 22:43:47'),
(49, 10, 27, 'Boiled or Jeera Rice- Party Pack', '61d4c12d4a532.jpeg', '180', 'This Rice box is suitable for 15+ persons', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:39:05', '2022-01-04 22:50:37'),
(50, 10, 27, 'Paneer Special- Small', 'product_default.jpg', '45', 'This Paneer subji is our speciality. Suitable for 1+ person', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:42:30', '2022-01-04 00:47:23'),
(51, 10, 27, 'Paneer Special- Medium', 'product_default.jpg', '65', 'This Paneer subji is our speciality. Suitable for 2+ persons', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:45:14', '2022-01-04 00:47:04'),
(52, 10, 27, 'Paneer Special- Large', 'product_default.jpg', '90', 'This Paneer subji is our speciality. Suitable for 3+ persons', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:46:47', '2022-01-04 00:46:47'),
(53, 10, 27, 'Paneer Special- Party Pack', 'product_default.jpg', '525', 'This Paneer subji is our speciality. Suitable for 15+ persons', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 00:49:09', '2022-01-04 00:49:09'),
(54, 10, 27, 'Dal or Curries-Small', 'product_default.jpg', '40', 'Chef special dal or Curry. in a small box . Suitable for 1+ person', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 20:56:17', '2022-01-04 20:56:17'),
(55, 10, 27, 'Dal or Curries - Medium', 'product_default.jpg', '55', 'Cef special Dal or Curry in a medium box. Suitable for 2+ persons.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 20:57:44', '2022-01-04 20:57:44'),
(56, 10, 27, 'Dal or Curries - Large', 'product_default.jpg', '75', 'Chef special Dal or Curry in a large box. Suitable for 3+ persons.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 20:59:08', '2022-01-04 20:59:08'),
(57, 10, 27, 'Dal or Curries - Party Pack', 'product_default.jpg', '425', 'Chef special Dal or Curry in a big party box. Suitable for 15+ persons', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 21:00:35', '2022-01-04 21:00:35'),
(58, 10, 27, 'Vegetable curry - Small', 'product_default.jpg', '30', 'Vegetable curry of the day either Dry or with Gravy.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 21:03:47', '2022-01-04 21:04:19'),
(59, 10, 27, 'Vegetable curry - Medium', 'product_default.jpg', '45', 'Vegetable curry of the day either Dry or with Gravy', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 21:05:48', '2022-01-04 21:05:48'),
(60, 10, 27, 'Vegetable curry - Large', 'product_default.jpg', '65', 'Vegetable curry of the day either Dry or with Gravy', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 21:06:52', '2022-01-04 21:06:52'),
(61, 10, 27, 'Vegetable curry - Party Pack', 'product_default.jpg', '375', 'Vegetable curry of the day either Dry or Gravy', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-04 21:07:50', '2022-01-04 21:07:50'),
(62, 10, 29, 'Palak Malai Kofta or Yellow Dal Tadka - Mini Meal', '61e566eb2c499.jpeg', '45', 'Soft palak koftas in rich and creamy gravy or Yellow Dal tadka with 2 rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-09 23:46:50', '2022-01-17 13:54:03'),
(63, 10, 29, 'Palak Malai Kofta & Yellow Dal Tadka - Deluxe Meal', '61e56773e6534.jpeg', '60', 'Soft palak koftas in rich creamy gravy & Yellow dal tadka with 2 rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-09 23:50:54', '2022-01-17 13:56:19'),
(64, 10, 29, 'Palak Malai Kofta & Yellow Dal Tadka - Shahi Meal', '61e5682213920.jpeg', '95', 'Soft palak koftas in rich creamy gravy, Yellow dal tadka, 2 rotis, Rice, Raita and Sweet of the day.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-09 23:55:17', '2022-01-17 13:59:19'),
(65, 10, 26, 'Matar Paneer or Dal Makhani- Mini Meal', 'product_default.jpg', '45', 'Matar paneer subji or Dal Makhani with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-10 00:02:21', '2022-01-10 00:13:31'),
(66, 10, 26, 'Matar Paneer & Dal Makhani- Deluxe Meal', 'product_default.jpg', '60', 'Matar paneer subji and Dal makhani with 2 rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-10 00:03:48', '2022-01-10 00:13:52'),
(67, 10, 26, 'Matar Paneer & Dal Makhani- Shahi Meal', 'product_default.jpg', '95', 'Matar paneer subji, Dal makhani, 2 Rotis, Raita & Sweet of the day', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-10 00:05:24', '2022-01-10 00:14:08'),
(68, 10, 26, 'Sarson Ka Saag- Small box', '61db6d30c4178.jpeg', '40', 'Punjab special Sarson Saag(Mustard Leaves)  subji in a small box suitable for one person', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-10 00:07:43', '2022-01-10 00:18:08'),
(69, 10, 26, 'Sweet of the day/ Piece', 'product_default.jpg', '12', 'Chefs special Sweet of the day.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-10 00:09:28', '2022-01-10 00:09:28'),
(70, 10, 24, 'Veg Hakka Noodles(Medium box) & Chilli Paneer(Small box)', '61e564b0e13fc.jpeg', '79', 'Indo-Chinese stir fried noodles with veggies and sauces and Mild spicy and Crispy Paneer eaten as a Starter.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-17 13:43:16', '2022-01-17 13:44:37'),
(71, 10, 30, '2 Khasta Kachori with Aloo Subji(Small box)', '61e56a9af26ee.jpeg', '60', 'Delhi special Khasta Kachori with aloo subji', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-17 14:09:46', '2022-01-17 14:09:46'),
(72, 10, 30, 'Kada Halwa(Small box)', '61e56b5492563.jpeg', '35', 'Kada prashad is a smooth, velvety and rich halwa made with whole wheat flour', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-17 14:12:52', '2022-01-17 14:12:52'),
(73, 10, 29, 'Rice box', '61e56bbb2f61f.jpeg', '10', 'Steamed white rice', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-17 14:14:35', '2022-01-17 14:14:35'),
(75, 14, 35, 'Mirchi Bajji', 'product_default.jpg', '45', 'very spicy Guntur bajji', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-22 20:16:01', '2022-01-22 20:16:01'),
(76, 10, 39, 'Lobia or Capsicum Aloo - Mini Meal', '61edd16432c91.png', '45', 'Lobia Subji or Capsicum Aloo Subji with 2 rotis.', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 21:59:36', '2022-01-23 23:06:28'),
(77, 10, 39, 'Lobia & Capsicum Aloo - Deluxe Meal', '61edd155853b2.png', '60', 'Lobia & Capsicum Aloo Subji with 2 Rotis.', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 22:02:55', '2022-01-23 23:06:13'),
(78, 10, 39, 'Lobia & Capsicum Aloo - Shahi  Meal', '61edd1344ef3f.png', '95', 'Lobia and Capsicum Aloo Subji, 2 Rotis, Rice, Raita & Sweet of the day.', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 22:07:34', '2022-01-23 23:05:40'),
(79, 10, 39, 'Rice box( Add on)', '61edc55ac9dc9.jpeg', '10', 'Add Small Box of Steamed Rice for just 10kr.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-23 22:14:40', '2022-01-23 22:15:06'),
(80, 10, 40, 'Delhi Special', '61edd0caa7f2f.png', '69', '2 Puris, Chole(small box), Aloo(small box) + Halwa(mini box).', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 22:28:02', '2022-01-23 23:03:54'),
(81, 10, 41, 'Punjabi Rajma or Paneer Tikka Masala - Mini Meal', 'product_default.jpg', '45', 'Punjabi Rajma or Paneer Tikka Masala with 2 Rotis.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-23 22:50:59', '2022-01-23 22:50:59'),
(82, 10, 41, 'Punjabi Rajma & Paneer Tikka Masala - Deluxe  Meal', 'product_default.jpg', '60', 'Punjabi Rajma & Paneer Tikka Masala with 2 Rotis', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-23 22:55:06', '2022-01-23 22:55:06'),
(83, 10, 41, 'Punjabi Rajma & Paneer Tikka Masala - Shahi Meal', '61edd1230a0da.png', '95', 'Punjabi Rajma, Paneer Tikka Masala, 2 Rotis, Rice, Raita and Sweet of the day.', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 22:59:25', '2022-01-23 23:05:23'),
(84, 10, 41, 'Rice box( Add on)', '61edd0e6beb81.jpeg', '10', 'Add Small box of Steamed Rice for just 10kr.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-23 23:04:22', '2022-01-23 23:04:22'),
(85, 10, 42, 'Maa ki Dal or Methi Aloo - Mini Meal', '61edd1b6a3aa3.png', '45', 'Maa ki Dal or Methi Aloo Subji with 2 Rotis.', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 23:06:49', '2022-01-23 23:07:50'),
(86, 10, 42, 'Maa ki Dal & Methi Aloo - Deluxe Meal', '61edd1ccea349.png', '60', 'Maa ki Dal & Methi Aloo Subji with 2 Rotis.', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 23:07:56', '2022-01-23 23:08:12'),
(87, 10, 42, 'Maa ki Dal & Methi Aloo - Shahi Meal', 'product_default.jpg', '95', 'Maa ki Dal, Methi Aloo subji, 2 Rotis, Rice, Raita and Sweet of the day.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-23 23:09:28', '2022-01-23 23:09:28'),
(88, 10, 42, 'Rice box( Add on)', '61edd250d6c8b.jpeg', '10', 'Add Small box of Steamed Rice for just 10kr.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-23 23:10:24', '2022-01-23 23:10:24'),
(89, 10, 44, 'Delhi Special- Ram Ladoo(6 pieces)', '61edd5d1965ee.jpeg', '55', 'Ram Ladoo is one of the most popular quick bites in Delhi. Golden pakoras served with cilantro chutney and topped with shredded radish.', 'veg', 'never', 1, NULL, 0, NULL, '2022-01-23 23:25:21', '2022-01-23 23:25:21'),
(90, 10, 44, 'Khasta Kachori with Chutney', '61edda0e2e25d.png', '55', '3 plain Khasta kachori topeed with matra, sweet tangy chutney and onions.', 'veg', 'never', 1, 0, 0, NULL, '2022-01-23 23:29:56', '2022-01-23 23:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `submenu_cutsomization_type`
--

CREATE TABLE `submenu_cutsomization_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `submenu_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_item_selection` int(11) NOT NULL,
  `max_item_selection` int(11) NOT NULL,
  `custimazation_item` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `tax` text NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `CountryCode` char(2) NOT NULL,
  `Coordinates` char(15) NOT NULL,
  `TimeZone` char(32) NOT NULL,
  `Comments` varchar(85) NOT NULL,
  `UTC_offset` char(8) NOT NULL,
  `UTC_DST_offset` char(8) NOT NULL,
  `Notes` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`CountryCode`, `Coordinates`, `TimeZone`, `Comments`, `UTC_offset`, `UTC_DST_offset`, `Notes`) VALUES
('CI', '+0519-00402', 'Africa/Abidjan', '', '+00:00', '+00:00', ''),
('GH', '+0533-00013', 'Africa/Accra', '', '+00:00', '+00:00', ''),
('ET', '+0902+03842', 'Africa/Addis_Ababa', '', '+03:00', '+03:00', ''),
('DZ', '+3647+00303', 'Africa/Algiers', '', '+01:00', '+01:00', ''),
('ER', '+1520+03853', 'Africa/Asmara', '', '+03:00', '+03:00', ''),
('', '', 'Africa/Asmera', '', '+03:00', '+03:00', 'Link to Africa/Asmara'),
('ML', '+1239-00800', 'Africa/Bamako', '', '+00:00', '+00:00', ''),
('CF', '+0422+01835', 'Africa/Bangui', '', '+01:00', '+01:00', ''),
('GM', '+1328-01639', 'Africa/Banjul', '', '+00:00', '+00:00', ''),
('GW', '+1151-01535', 'Africa/Bissau', '', '+00:00', '+00:00', ''),
('MW', '-1547+03500', 'Africa/Blantyre', '', '+02:00', '+02:00', ''),
('CG', '-0416+01517', 'Africa/Brazzaville', '', '+01:00', '+01:00', ''),
('BI', '-0323+02922', 'Africa/Bujumbura', '', '+02:00', '+02:00', ''),
('EG', '+3003+03115', 'Africa/Cairo', '', '+02:00', '+02:00', 'DST has been canceled since 2011'),
('MA', '+3339-00735', 'Africa/Casablanca', '', '+00:00', '+01:00', ''),
('ES', '+3553-00519', 'Africa/Ceuta', 'Ceuta & Melilla', '+01:00', '+02:00', ''),
('GN', '+0931-01343', 'Africa/Conakry', '', '+00:00', '+00:00', ''),
('SN', '+1440-01726', 'Africa/Dakar', '', '+00:00', '+00:00', ''),
('TZ', '-0648+03917', 'Africa/Dar_es_Salaam', '', '+03:00', '+03:00', ''),
('DJ', '+1136+04309', 'Africa/Djibouti', '', '+03:00', '+03:00', ''),
('CM', '+0403+00942', 'Africa/Douala', '', '+01:00', '+01:00', ''),
('EH', '+2709-01312', 'Africa/El_Aaiun', '', '+00:00', '+00:00', ''),
('SL', '+0830-01315', 'Africa/Freetown', '', '+00:00', '+00:00', ''),
('BW', '-2439+02555', 'Africa/Gaborone', '', '+02:00', '+02:00', ''),
('ZW', '-1750+03103', 'Africa/Harare', '', '+02:00', '+02:00', ''),
('ZA', '-2615+02800', 'Africa/Johannesburg', '', '+02:00', '+02:00', ''),
('SS', '+0451+03136', 'Africa/Juba', '', '+03:00', '+03:00', ''),
('UG', '+0019+03225', 'Africa/Kampala', '', '+03:00', '+03:00', ''),
('SD', '+1536+03232', 'Africa/Khartoum', '', '+03:00', '+03:00', ''),
('RW', '-0157+03004', 'Africa/Kigali', '', '+02:00', '+02:00', ''),
('CD', '-0418+01518', 'Africa/Kinshasa', 'west Dem. Rep. of Congo', '+01:00', '+01:00', ''),
('NG', '+0627+00324', 'Africa/Lagos', '', '+01:00', '+01:00', ''),
('GA', '+0023+00927', 'Africa/Libreville', '', '+01:00', '+01:00', ''),
('TG', '+0608+00113', 'Africa/Lome', '', '+00:00', '+00:00', ''),
('AO', '-0848+01314', 'Africa/Luanda', '', '+01:00', '+01:00', ''),
('CD', '-1140+02728', 'Africa/Lubumbashi', 'east Dem. Rep. of Congo', '+02:00', '+02:00', ''),
('ZM', '-1525+02817', 'Africa/Lusaka', '', '+02:00', '+02:00', ''),
('GQ', '+0345+00847', 'Africa/Malabo', '', '+01:00', '+01:00', ''),
('MZ', '-2558+03235', 'Africa/Maputo', '', '+02:00', '+02:00', ''),
('LS', '-2928+02730', 'Africa/Maseru', '', '+02:00', '+02:00', ''),
('SZ', '-2618+03106', 'Africa/Mbabane', '', '+02:00', '+02:00', ''),
('SO', '+0204+04522', 'Africa/Mogadishu', '', '+03:00', '+03:00', ''),
('LR', '+0618-01047', 'Africa/Monrovia', '', '+00:00', '+00:00', ''),
('KE', '-0117+03649', 'Africa/Nairobi', '', '+03:00', '+03:00', ''),
('TD', '+1207+01503', 'Africa/Ndjamena', '', '+01:00', '+01:00', ''),
('NE', '+1331+00207', 'Africa/Niamey', '', '+01:00', '+01:00', ''),
('MR', '+1806-01557', 'Africa/Nouakchott', '', '+00:00', '+00:00', ''),
('BF', '+1222-00131', 'Africa/Ouagadougou', '', '+00:00', '+00:00', ''),
('BJ', '+0629+00237', 'Africa/Porto-Novo', '', '+01:00', '+01:00', ''),
('ST', '+0020+00644', 'Africa/Sao_Tome', '', '+00:00', '+00:00', ''),
('', '', 'Africa/Timbuktu', '', '+00:00', '+00:00', 'Link to Africa/Bamako'),
('LY', '+3254+01311', 'Africa/Tripoli', '', '+01:00', '+02:00', ''),
('TN', '+3648+01011', 'Africa/Tunis', '', '+01:00', '+01:00', ''),
('NA', '-2234+01706', 'Africa/Windhoek', '', '+01:00', '+02:00', ''),
('', '', 'AKST9AKDT', '', 'âˆ’09:00', 'âˆ’08:00', 'Link to America/Anchorage'),
('US', '+515248-1763929', 'America/Adak', 'Aleutian Islands', 'âˆ’10:00', 'âˆ’09:00', ''),
('US', '+611305-1495401', 'America/Anchorage', 'Alaska Time', 'âˆ’09:00', 'âˆ’08:00', ''),
('AI', '+1812-06304', 'America/Anguilla', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('AG', '+1703-06148', 'America/Antigua', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '-0712-04812', 'America/Araguaina', 'Tocantins', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3436-05827', 'America/Argentina/Buenos_Aires', 'Buenos Aires (BA, CF)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2828-06547', 'America/Argentina/Catamarca', 'Catamarca (CT), Chubut (CH)', 'âˆ’03:00', 'âˆ’03:00', ''),
('', '', 'America/Argentina/ComodRivadavia', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Catamarca'),
('AR', '-3124-06411', 'America/Argentina/Cordoba', 'most locations (CB, CC, CN, ER, FM, MN, SE, SF)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2411-06518', 'America/Argentina/Jujuy', 'Jujuy (JY)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2926-06651', 'America/Argentina/La_Rioja', 'La Rioja (LR)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3253-06849', 'America/Argentina/Mendoza', 'Mendoza (MZ)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-5138-06913', 'America/Argentina/Rio_Gallegos', 'Santa Cruz (SC)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2447-06525', 'America/Argentina/Salta', '(SA, LP, NQ, RN)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3132-06831', 'America/Argentina/San_Juan', 'San Juan (SJ)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3319-06621', 'America/Argentina/San_Luis', 'San Luis (SL)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2649-06513', 'America/Argentina/Tucuman', 'Tucuman (TM)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-5448-06818', 'America/Argentina/Ushuaia', 'Tierra del Fuego (TF)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AW', '+1230-06958', 'America/Aruba', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('PY', '-2516-05740', 'America/Asuncion', '', 'âˆ’04:00', 'âˆ’03:00', ''),
('CA', '+484531-0913718', 'America/Atikokan', 'Eastern Standard Time - Atikokan, Ontario and Southampton I, Nunavut', 'âˆ’05:00', 'âˆ’05:00', ''),
('', '', 'America/Atka', '', 'âˆ’10:00', 'âˆ’09:00', 'Link to America/Adak'),
('BR', '-1259-03831', 'America/Bahia', 'Bahia', 'âˆ’03:00', 'âˆ’03:00', ''),
('MX', '+2048-10515', 'America/Bahia_Banderas', 'Mexican Central Time - Bahia de Banderas', 'âˆ’06:00', 'âˆ’05:00', ''),
('BB', '+1306-05937', 'America/Barbados', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '-0127-04829', 'America/Belem', 'Amapa, E Para', 'âˆ’03:00', 'âˆ’03:00', ''),
('BZ', '+1730-08812', 'America/Belize', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('CA', '+5125-05707', 'America/Blanc-Sablon', 'Atlantic Standard Time - Quebec - Lower North Shore', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '+0249-06040', 'America/Boa_Vista', 'Roraima', 'âˆ’04:00', 'âˆ’04:00', ''),
('CO', '+0436-07405', 'America/Bogota', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('US', '+433649-1161209', 'America/Boise', 'Mountain Time - south Idaho & east Oregon', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'America/Buenos_Aires', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Buenos_Aires'),
('CA', '+690650-1050310', 'America/Cambridge_Bay', 'Mountain Time - west Nunavut', 'âˆ’07:00', 'âˆ’06:00', ''),
('BR', '-2027-05437', 'America/Campo_Grande', 'Mato Grosso do Sul', 'âˆ’04:00', 'âˆ’03:00', ''),
('MX', '+2105-08646', 'America/Cancun', 'Central Time - Quintana Roo', 'âˆ’06:00', 'âˆ’05:00', ''),
('VE', '+1030-06656', 'America/Caracas', '', 'âˆ’04:30', 'âˆ’04:30', ''),
('', '', 'America/Catamarca', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Catamarca'),
('GF', '+0456-05220', 'America/Cayenne', '', 'âˆ’03:00', 'âˆ’03:00', ''),
('KY', '+1918-08123', 'America/Cayman', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('US', '+415100-0873900', 'America/Chicago', 'Central Time', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2838-10605', 'America/Chihuahua', 'Mexican Mountain Time - Chihuahua away from US border', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'America/Coral_Harbour', '', 'âˆ’05:00', 'âˆ’05:00', 'Link to America/Atikokan'),
('', '', 'America/Cordoba', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Cordoba'),
('CR', '+0956-08405', 'America/Costa_Rica', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('CA', '+4906-11631', 'America/Creston', 'Mountain Standard Time - Creston, British Columbia', 'âˆ’07:00', 'âˆ’07:00', ''),
('BR', '-1535-05605', 'America/Cuiaba', 'Mato Grosso', 'âˆ’04:00', 'âˆ’03:00', ''),
('CW', '+1211-06900', 'America/Curacao', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('GL', '+7646-01840', 'America/Danmarkshavn', 'east coast, north of Scoresbysund', '+00:00', '+00:00', ''),
('CA', '+6404-13925', 'America/Dawson', 'Pacific Time - north Yukon', 'âˆ’08:00', 'âˆ’07:00', ''),
('CA', '+5946-12014', 'America/Dawson_Creek', 'Mountain Standard Time - Dawson Creek & Fort Saint John, British Columbia', 'âˆ’07:00', 'âˆ’07:00', ''),
('US', '+394421-1045903', 'America/Denver', 'Mountain Time', 'âˆ’07:00', 'âˆ’06:00', ''),
('US', '+421953-0830245', 'America/Detroit', 'Eastern Time - Michigan - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('DM', '+1518-06124', 'America/Dominica', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+5333-11328', 'America/Edmonton', 'Mountain Time - Alberta, east British Columbia & west Saskatchewan', 'âˆ’07:00', 'âˆ’06:00', ''),
('BR', '-0640-06952', 'America/Eirunepe', 'W Amazonas', 'âˆ’04:00', 'âˆ’04:00', ''),
('SV', '+1342-08912', 'America/El_Salvador', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('', '', 'America/Ensenada', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Tijuana'),
('BR', '-0343-03830', 'America/Fortaleza', 'NE Brazil (MA, PI, CE, RN, PB)', 'âˆ’03:00', 'âˆ’03:00', ''),
('', '', 'America/Fort_Wayne', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+4612-05957', 'America/Glace_Bay', 'Atlantic Time - Nova Scotia - places that did not observe DST 1966-1971', 'âˆ’04:00', 'âˆ’03:00', ''),
('GL', '+6411-05144', 'America/Godthab', 'most locations', 'âˆ’03:00', 'âˆ’02:00', ''),
('CA', '+5320-06025', 'America/Goose_Bay', 'Atlantic Time - Labrador - most locations', 'âˆ’04:00', 'âˆ’03:00', ''),
('TC', '+2128-07108', 'America/Grand_Turk', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('GD', '+1203-06145', 'America/Grenada', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('GP', '+1614-06132', 'America/Guadeloupe', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('GT', '+1438-09031', 'America/Guatemala', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('EC', '-0210-07950', 'America/Guayaquil', 'mainland', 'âˆ’05:00', 'âˆ’05:00', ''),
('GY', '+0648-05810', 'America/Guyana', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+4439-06336', 'America/Halifax', 'Atlantic Time - Nova Scotia (most places), PEI', 'âˆ’04:00', 'âˆ’03:00', ''),
('CU', '+2308-08222', 'America/Havana', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('MX', '+2904-11058', 'America/Hermosillo', 'Mountain Standard Time - Sonora', 'âˆ’07:00', 'âˆ’07:00', ''),
('US', '+394606-0860929', 'America/Indiana/Indianapolis', 'Eastern Time - Indiana - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+411745-0863730', 'America/Indiana/Knox', 'Central Time - Indiana - Starke County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+382232-0862041', 'America/Indiana/Marengo', 'Eastern Time - Indiana - Crawford County', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+382931-0871643', 'America/Indiana/Petersburg', 'Eastern Time - Indiana - Pike County', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+375711-0864541', 'America/Indiana/Tell_City', 'Central Time - Indiana - Perry County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+384452-0850402', 'America/Indiana/Vevay', 'Eastern Time - Indiana - Switzerland County', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+384038-0873143', 'America/Indiana/Vincennes', 'Eastern Time - Indiana - Daviess, Dubois, Knox & Martin Counties', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+410305-0863611', 'America/Indiana/Winamac', 'Eastern Time - Indiana - Pulaski County', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'America/Indianapolis', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+682059-1334300', 'America/Inuvik', 'Mountain Time - west Northwest Territories', 'âˆ’07:00', 'âˆ’06:00', ''),
('CA', '+6344-06828', 'America/Iqaluit', 'Eastern Time - east Nunavut - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('JM', '+1800-07648', 'America/Jamaica', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('', '', 'America/Jujuy', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Jujuy'),
('US', '+581807-1342511', 'America/Juneau', 'Alaska Time - Alaska panhandle', 'âˆ’09:00', 'âˆ’08:00', ''),
('US', '+381515-0854534', 'America/Kentucky/Louisville', 'Eastern Time - Kentucky - Louisville area', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+364947-0845057', 'America/Kentucky/Monticello', 'Eastern Time - Kentucky - Wayne County', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'America/Knox_IN', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Indiana/Knox'),
('BQ', '+120903-0681636', 'America/Kralendijk', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Curacao'),
('BO', '-1630-06809', 'America/La_Paz', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('PE', '-1203-07703', 'America/Lima', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('US', '+340308-1181434', 'America/Los_Angeles', 'Pacific Time', 'âˆ’08:00', 'âˆ’07:00', ''),
('', '', 'America/Louisville', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Kentucky/Louisville'),
('SX', '+180305-0630250', 'America/Lower_Princes', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Curacao'),
('BR', '-0940-03543', 'America/Maceio', 'Alagoas, Sergipe', 'âˆ’03:00', 'âˆ’03:00', ''),
('NI', '+1209-08617', 'America/Managua', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('BR', '-0308-06001', 'America/Manaus', 'E Amazonas', 'âˆ’04:00', 'âˆ’04:00', ''),
('MF', '+1804-06305', 'America/Marigot', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Guadeloupe'),
('MQ', '+1436-06105', 'America/Martinique', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('MX', '+2550-09730', 'America/Matamoros', 'US Central Time - Coahuila, Durango, Nuevo LeÃ³n, Tamaulipas near US border', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2313-10625', 'America/Mazatlan', 'Mountain Time - S Baja, Nayarit, Sinaloa', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'America/Mendoza', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Mendoza'),
('US', '+450628-0873651', 'America/Menominee', 'Central Time - Michigan - Dickinson, Gogebic, Iron & Menominee Counties', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2058-08937', 'America/Merida', 'Central Time - Campeche, YucatÃ¡n', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+550737-1313435', 'America/Metlakatla', 'Metlakatla Time - Annette Island', 'âˆ’08:00', 'âˆ’08:00', ''),
('MX', '+1924-09909', 'America/Mexico_City', 'Central Time - most locations', 'âˆ’06:00', 'âˆ’05:00', ''),
('PM', '+4703-05620', 'America/Miquelon', '', 'âˆ’03:00', 'âˆ’02:00', ''),
('CA', '+4606-06447', 'America/Moncton', 'Atlantic Time - New Brunswick', 'âˆ’04:00', 'âˆ’03:00', ''),
('MX', '+2540-10019', 'America/Monterrey', 'Mexican Central Time - Coahuila, Durango, Nuevo LeÃ³n, Tamaulipas away from US border', 'âˆ’06:00', 'âˆ’05:00', ''),
('UY', '-3453-05611', 'America/Montevideo', '', 'âˆ’03:00', 'âˆ’02:00', ''),
('CA', '+4531-07334', 'America/Montreal', 'Eastern Time - Quebec - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('MS', '+1643-06213', 'America/Montserrat', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BS', '+2505-07721', 'America/Nassau', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+404251-0740023', 'America/New_York', 'Eastern Time', 'âˆ’05:00', 'âˆ’04:00', ''),
('CA', '+4901-08816', 'America/Nipigon', 'Eastern Time - Ontario & Quebec - places that did not observe DST 1967-1973', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+643004-1652423', 'America/Nome', 'Alaska Time - west Alaska', 'âˆ’09:00', 'âˆ’08:00', ''),
('BR', '-0351-03225', 'America/Noronha', 'Atlantic islands', 'âˆ’02:00', 'âˆ’02:00', ''),
('US', '+471551-1014640', 'America/North_Dakota/Beulah', 'Central Time - North Dakota - Mercer County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+470659-1011757', 'America/North_Dakota/Center', 'Central Time - North Dakota - Oliver County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+465042-1012439', 'America/North_Dakota/New_Salem', 'Central Time - North Dakota - Morton County (except Mandan area)', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2934-10425', 'America/Ojinaga', 'US Mountain Time - Chihuahua near US border', 'âˆ’07:00', 'âˆ’06:00', ''),
('PA', '+0858-07932', 'America/Panama', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('CA', '+6608-06544', 'America/Pangnirtung', 'Eastern Time - Pangnirtung, Nunavut', 'âˆ’05:00', 'âˆ’04:00', ''),
('SR', '+0550-05510', 'America/Paramaribo', '', 'âˆ’03:00', 'âˆ’03:00', ''),
('US', '+332654-1120424', 'America/Phoenix', 'Mountain Standard Time - Arizona', 'âˆ’07:00', 'âˆ’07:00', ''),
('HT', '+1832-07220', 'America/Port-au-Prince', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'America/Porto_Acre', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Rio_Branco'),
('BR', '-0846-06354', 'America/Porto_Velho', 'Rondonia', 'âˆ’04:00', 'âˆ’04:00', ''),
('TT', '+1039-06131', 'America/Port_of_Spain', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('PR', '+182806-0660622', 'America/Puerto_Rico', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+4843-09434', 'America/Rainy_River', 'Central Time - Rainy River & Fort Frances, Ontario', 'âˆ’06:00', 'âˆ’05:00', ''),
('CA', '+624900-0920459', 'America/Rankin_Inlet', 'Central Time - central Nunavut', 'âˆ’06:00', 'âˆ’05:00', ''),
('BR', '-0803-03454', 'America/Recife', 'Pernambuco', 'âˆ’03:00', 'âˆ’03:00', ''),
('CA', '+5024-10439', 'America/Regina', 'Central Standard Time - Saskatchewan - most locations', 'âˆ’06:00', 'âˆ’06:00', ''),
('CA', '+744144-0944945', 'America/Resolute', 'Central Standard Time - Resolute, Nunavut', 'âˆ’06:00', 'âˆ’05:00', ''),
('BR', '-0958-06748', 'America/Rio_Branco', 'Acre', 'âˆ’04:00', 'âˆ’04:00', ''),
('', '', 'America/Rosario', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Cordoba'),
('BR', '-0226-05452', 'America/Santarem', 'W Para', 'âˆ’03:00', 'âˆ’03:00', ''),
('MX', '+3018-11452', 'America/Santa_Isabel', 'Mexican Pacific Time - Baja California away from US border', 'âˆ’08:00', 'âˆ’07:00', ''),
('CL', '-3327-07040', 'America/Santiago', 'most locations', 'âˆ’04:00', 'âˆ’03:00', ''),
('DO', '+1828-06954', 'America/Santo_Domingo', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '-2332-04637', 'America/Sao_Paulo', 'S & SE Brazil (GO, DF, MG, ES, RJ, SP, PR, SC, RS)', 'âˆ’03:00', 'âˆ’02:00', ''),
('GL', '+7029-02158', 'America/Scoresbysund', 'Scoresbysund / Ittoqqortoormiit', 'âˆ’01:00', '+00:00', ''),
('US', '+364708-1084111', 'America/Shiprock', 'Mountain Time - Navajo', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Denver'),
('US', '+571035-1351807', 'America/Sitka', 'Alaska Time - southeast Alaska panhandle', 'âˆ’09:00', 'âˆ’08:00', ''),
('BL', '+1753-06251', 'America/St_Barthelemy', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Guadeloupe'),
('CA', '+4734-05243', 'America/St_Johns', 'Newfoundland Time, including SE Labrador', 'âˆ’03:30', 'âˆ’02:30', ''),
('KN', '+1718-06243', 'America/St_Kitts', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('LC', '+1401-06100', 'America/St_Lucia', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('VI', '+1821-06456', 'America/St_Thomas', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('VC', '+1309-06114', 'America/St_Vincent', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+5017-10750', 'America/Swift_Current', 'Central Standard Time - Saskatchewan - midwest', 'âˆ’06:00', 'âˆ’06:00', ''),
('HN', '+1406-08713', 'America/Tegucigalpa', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('GL', '+7634-06847', 'America/Thule', 'Thule / Pituffik', 'âˆ’04:00', 'âˆ’03:00', ''),
('CA', '+4823-08915', 'America/Thunder_Bay', 'Eastern Time - Thunder Bay, Ontario', 'âˆ’05:00', 'âˆ’04:00', ''),
('MX', '+3232-11701', 'America/Tijuana', 'US Pacific Time - Baja California near US border', 'âˆ’08:00', 'âˆ’07:00', ''),
('CA', '+4339-07923', 'America/Toronto', 'Eastern Time - Ontario - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('VG', '+1827-06437', 'America/Tortola', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+4916-12307', 'America/Vancouver', 'Pacific Time - west British Columbia', 'âˆ’08:00', 'âˆ’07:00', ''),
('', '', 'America/Virgin', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/St_Thomas'),
('CA', '+6043-13503', 'America/Whitehorse', 'Pacific Time - south Yukon', 'âˆ’08:00', 'âˆ’07:00', ''),
('CA', '+4953-09709', 'America/Winnipeg', 'Central Time - Manitoba & west Ontario', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+593249-1394338', 'America/Yakutat', 'Alaska Time - Alaska panhandle neck', 'âˆ’09:00', 'âˆ’08:00', ''),
('CA', '+6227-11421', 'America/Yellowknife', 'Mountain Time - central Northwest Territories', 'âˆ’07:00', 'âˆ’06:00', ''),
('AQ', '-6617+11031', 'Antarctica/Casey', 'Casey Station, Bailey Peninsula', '+11:00', '+08:00', ''),
('AQ', '-6835+07758', 'Antarctica/Davis', 'Davis Station, Vestfold Hills', '+05:00', '+07:00', ''),
('AQ', '-6640+14001', 'Antarctica/DumontDUrville', 'Dumont-d\'Urville Station, Terre Adelie', '+10:00', '+10:00', ''),
('AQ', '-5430+15857', 'Antarctica/Macquarie', 'Macquarie Island Station, Macquarie Island', '+11:00', '+11:00', ''),
('AQ', '-6736+06253', 'Antarctica/Mawson', 'Mawson Station, Holme Bay', '+05:00', '+05:00', ''),
('AQ', '-7750+16636', 'Antarctica/McMurdo', 'McMurdo Station, Ross Island', '+12:00', '+13:00', ''),
('AQ', '-6448-06406', 'Antarctica/Palmer', 'Palmer Station, Anvers Island', 'âˆ’04:00', 'âˆ’03:00', ''),
('AQ', '-6734-06808', 'Antarctica/Rothera', 'Rothera Station, Adelaide Island', 'âˆ’03:00', 'âˆ’03:00', ''),
('AQ', '-9000+00000', 'Antarctica/South_Pole', 'Amundsen-Scott Station, South Pole', '+12:00', '+13:00', 'Link to Antarctica/McMurdo'),
('AQ', '-690022+0393524', 'Antarctica/Syowa', 'Syowa Station, E Ongul I', '+03:00', '+03:00', ''),
('AQ', '-7824+10654', 'Antarctica/Vostok', 'Vostok Station, Lake Vostok', '+06:00', '+06:00', ''),
('SJ', '+7800+01600', 'Arctic/Longyearbyen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('YE', '+1245+04512', 'Asia/Aden', '', '+03:00', '+03:00', ''),
('KZ', '+4315+07657', 'Asia/Almaty', 'most locations', '+06:00', '+06:00', ''),
('JO', '+3157+03556', 'Asia/Amman', '', '+03:00', '+03:00', ''),
('RU', '+6445+17729', 'Asia/Anadyr', 'Moscow+08 - Bering Sea', '+12:00', '+12:00', ''),
('KZ', '+4431+05016', 'Asia/Aqtau', 'Atyrau (Atirau, Gur\'yev), Mangghystau (Mankistau)', '+05:00', '+05:00', ''),
('KZ', '+5017+05710', 'Asia/Aqtobe', 'Aqtobe (Aktobe)', '+05:00', '+05:00', ''),
('TM', '+3757+05823', 'Asia/Ashgabat', '', '+05:00', '+05:00', ''),
('', '', 'Asia/Ashkhabad', '', '+05:00', '+05:00', 'Link to Asia/Ashgabat'),
('IQ', '+3321+04425', 'Asia/Baghdad', '', '+03:00', '+03:00', ''),
('BH', '+2623+05035', 'Asia/Bahrain', '', '+03:00', '+03:00', ''),
('AZ', '+4023+04951', 'Asia/Baku', '', '+04:00', '+05:00', ''),
('TH', '+1345+10031', 'Asia/Bangkok', '', '+07:00', '+07:00', ''),
('LB', '+3353+03530', 'Asia/Beirut', '', '+02:00', '+03:00', ''),
('KG', '+4254+07436', 'Asia/Bishkek', '', '+06:00', '+06:00', ''),
('BN', '+0456+11455', 'Asia/Brunei', '', '+08:00', '+08:00', ''),
('', '', 'Asia/Calcutta', '', '+05:30', '+05:30', 'Link to Asia/Kolkata'),
('MN', '+4804+11430', 'Asia/Choibalsan', 'Dornod, Sukhbaatar', '+08:00', '+08:00', ''),
('CN', '+2934+10635', 'Asia/Chongqing', 'central China - Sichuan, Yunnan, Guangxi, Shaanxi, Guizhou, etc.', '+08:00', '+08:00', 'Covering historic Kansu-Szechuan time zone.'),
('', '', 'Asia/Chungking', '', '+08:00', '+08:00', 'Link to Asia/Chongqing'),
('LK', '+0656+07951', 'Asia/Colombo', '', '+05:30', '+05:30', ''),
('', '', 'Asia/Dacca', '', '+06:00', '+06:00', 'Link to Asia/Dhaka'),
('SY', '+3330+03618', 'Asia/Damascus', '', '+02:00', '+03:00', ''),
('BD', '+2343+09025', 'Asia/Dhaka', '', '+06:00', '+06:00', ''),
('TL', '-0833+12535', 'Asia/Dili', '', '+09:00', '+09:00', ''),
('AE', '+2518+05518', 'Asia/Dubai', '', '+04:00', '+04:00', ''),
('TJ', '+3835+06848', 'Asia/Dushanbe', '', '+05:00', '+05:00', ''),
('PS', '+3130+03428', 'Asia/Gaza', 'Gaza Strip', '+02:00', '+03:00', ''),
('CN', '+4545+12641', 'Asia/Harbin', 'Heilongjiang (except Mohe), Jilin', '+08:00', '+08:00', 'Covering historic Changpai time zone.'),
('PS', '+313200+0350542', 'Asia/Hebron', 'West Bank', '+02:00', '+03:00', ''),
('HK', '+2217+11409', 'Asia/Hong_Kong', '', '+08:00', '+08:00', ''),
('MN', '+4801+09139', 'Asia/Hovd', 'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan', '+07:00', '+07:00', ''),
('VN', '+1045+10640', 'Asia/Ho_Chi_Minh', '', '+07:00', '+07:00', ''),
('RU', '+5216+10420', 'Asia/Irkutsk', 'Moscow+05 - Lake Baikal', '+09:00', '+09:00', ''),
('', '', 'Asia/Istanbul', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('ID', '-0610+10648', 'Asia/Jakarta', 'Java & Sumatra', '+07:00', '+07:00', ''),
('ID', '-0232+14042', 'Asia/Jayapura', 'west New Guinea (Irian Jaya) & Malukus (Moluccas)', '+09:00', '+09:00', ''),
('IL', '+3146+03514', 'Asia/Jerusalem', '', '+02:00', '+03:00', ''),
('AF', '+3431+06912', 'Asia/Kabul', '', '+04:30', '+04:30', ''),
('RU', '+5301+15839', 'Asia/Kamchatka', 'Moscow+08 - Kamchatka', '+12:00', '+12:00', ''),
('PK', '+2452+06703', 'Asia/Karachi', '', '+05:00', '+05:00', ''),
('CN', '+3929+07559', 'Asia/Kashgar', 'west Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Kunlun time zone.'),
('NP', '+2743+08519', 'Asia/Kathmandu', '', '+05:45', '+05:45', ''),
('', '', 'Asia/Katmandu', '', '+05:45', '+05:45', 'Link to Asia/Kathmandu'),
('IN', '+2232+08822', 'Asia/Kolkata', '', '+05:30', '+05:30', 'Note: Different zones in history, see Time in India.'),
('RU', '+5601+09250', 'Asia/Krasnoyarsk', 'Moscow+04 - Yenisei River', '+08:00', '+08:00', ''),
('MY', '+0310+10142', 'Asia/Kuala_Lumpur', 'peninsular Malaysia', '+08:00', '+08:00', ''),
('MY', '+0133+11020', 'Asia/Kuching', 'Sabah & Sarawak', '+08:00', '+08:00', ''),
('KW', '+2920+04759', 'Asia/Kuwait', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Macao', '', '+08:00', '+08:00', 'Link to Asia/Macau'),
('MO', '+2214+11335', 'Asia/Macau', '', '+08:00', '+08:00', ''),
('RU', '+5934+15048', 'Asia/Magadan', 'Moscow+08 - Magadan', '+12:00', '+12:00', ''),
('ID', '-0507+11924', 'Asia/Makassar', 'east & south Borneo, Sulawesi (Celebes), Bali, Nusa Tenggara, west Timor', '+08:00', '+08:00', ''),
('PH', '+1435+12100', 'Asia/Manila', '', '+08:00', '+08:00', ''),
('OM', '+2336+05835', 'Asia/Muscat', '', '+04:00', '+04:00', ''),
('CY', '+3510+03322', 'Asia/Nicosia', '', '+02:00', '+03:00', ''),
('RU', '+5345+08707', 'Asia/Novokuznetsk', 'Moscow+03 - Novokuznetsk', '+07:00', '+07:00', ''),
('RU', '+5502+08255', 'Asia/Novosibirsk', 'Moscow+03 - Novosibirsk', '+07:00', '+07:00', ''),
('RU', '+5500+07324', 'Asia/Omsk', 'Moscow+03 - west Siberia', '+07:00', '+07:00', ''),
('KZ', '+5113+05121', 'Asia/Oral', 'West Kazakhstan', '+05:00', '+05:00', ''),
('KH', '+1133+10455', 'Asia/Phnom_Penh', '', '+07:00', '+07:00', ''),
('ID', '-0002+10920', 'Asia/Pontianak', 'west & central Borneo', '+07:00', '+07:00', ''),
('KP', '+3901+12545', 'Asia/Pyongyang', '', '+09:00', '+09:00', ''),
('QA', '+2517+05132', 'Asia/Qatar', '', '+03:00', '+03:00', ''),
('KZ', '+4448+06528', 'Asia/Qyzylorda', 'Qyzylorda (Kyzylorda, Kzyl-Orda)', '+06:00', '+06:00', ''),
('MM', '+1647+09610', 'Asia/Rangoon', '', '+06:30', '+06:30', ''),
('SA', '+2438+04643', 'Asia/Riyadh', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Saigon', '', '+07:00', '+07:00', 'Link to Asia/Ho_Chi_Minh'),
('RU', '+4658+14242', 'Asia/Sakhalin', 'Moscow+07 - Sakhalin Island', '+11:00', '+11:00', ''),
('UZ', '+3940+06648', 'Asia/Samarkand', 'west Uzbekistan', '+05:00', '+05:00', ''),
('KR', '+3733+12658', 'Asia/Seoul', '', '+09:00', '+09:00', ''),
('CN', '+3114+12128', 'Asia/Shanghai', 'east China - Beijing, Guangdong, Shanghai, etc.', '+08:00', '+08:00', 'Covering historic Chungyuan time zone.'),
('SG', '+0117+10351', 'Asia/Singapore', '', '+08:00', '+08:00', ''),
('TW', '+2503+12130', 'Asia/Taipei', '', '+08:00', '+08:00', ''),
('UZ', '+4120+06918', 'Asia/Tashkent', 'east Uzbekistan', '+05:00', '+05:00', ''),
('GE', '+4143+04449', 'Asia/Tbilisi', '', '+04:00', '+04:00', ''),
('IR', '+3540+05126', 'Asia/Tehran', '', '+03:30', '+04:30', ''),
('', '', 'Asia/Tel_Aviv', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Asia/Thimbu', '', '+06:00', '+06:00', 'Link to Asia/Thimphu'),
('BT', '+2728+08939', 'Asia/Thimphu', '', '+06:00', '+06:00', ''),
('JP', '+353916+1394441', 'Asia/Tokyo', '', '+09:00', '+09:00', ''),
('', '', 'Asia/Ujung_Pandang', '', '+08:00', '+08:00', 'Link to Asia/Makassar'),
('MN', '+4755+10653', 'Asia/Ulaanbaatar', 'most locations', '+08:00', '+08:00', ''),
('', '', 'Asia/Ulan_Bator', '', '+08:00', '+08:00', 'Link to Asia/Ulaanbaatar'),
('CN', '+4348+08735', 'Asia/Urumqi', 'most of Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Sinkiang-Tibet time zone.'),
('LA', '+1758+10236', 'Asia/Vientiane', '', '+07:00', '+07:00', ''),
('RU', '+4310+13156', 'Asia/Vladivostok', 'Moscow+07 - Amur River', '+11:00', '+11:00', ''),
('RU', '+6200+12940', 'Asia/Yakutsk', 'Moscow+06 - Lena River', '+10:00', '+10:00', ''),
('RU', '+5651+06036', 'Asia/Yekaterinburg', 'Moscow+02 - Urals', '+06:00', '+06:00', ''),
('AM', '+4011+04430', 'Asia/Yerevan', '', '+04:00', '+04:00', ''),
('PT', '+3744-02540', 'Atlantic/Azores', 'Azores', 'âˆ’01:00', '+00:00', ''),
('BM', '+3217-06446', 'Atlantic/Bermuda', '', 'âˆ’04:00', 'âˆ’03:00', ''),
('ES', '+2806-01524', 'Atlantic/Canary', 'Canary Islands', '+00:00', '+01:00', ''),
('CV', '+1455-02331', 'Atlantic/Cape_Verde', '', 'âˆ’01:00', 'âˆ’01:00', ''),
('', '', 'Atlantic/Faeroe', '', '+00:00', '+01:00', 'Link to Atlantic/Faroe'),
('FO', '+6201-00646', 'Atlantic/Faroe', '', '+00:00', '+01:00', ''),
('', '', 'Atlantic/Jan_Mayen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('PT', '+3238-01654', 'Atlantic/Madeira', 'Madeira Islands', '+00:00', '+01:00', ''),
('IS', '+6409-02151', 'Atlantic/Reykjavik', '', '+00:00', '+00:00', ''),
('GS', '-5416-03632', 'Atlantic/South_Georgia', '', 'âˆ’02:00', 'âˆ’02:00', ''),
('FK', '-5142-05751', 'Atlantic/Stanley', '', 'âˆ’03:00', 'âˆ’03:00', ''),
('SH', '-1555-00542', 'Atlantic/St_Helena', '', '+00:00', '+00:00', ''),
('', '', 'Australia/ACT', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3455+13835', 'Australia/Adelaide', 'South Australia', '+09:30', '+10:30', ''),
('AU', '-2728+15302', 'Australia/Brisbane', 'Queensland - most locations', '+10:00', '+10:00', ''),
('AU', '-3157+14127', 'Australia/Broken_Hill', 'New South Wales - Yancowinna', '+09:30', '+10:30', ''),
('', '', 'Australia/Canberra', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3956+14352', 'Australia/Currie', 'Tasmania - King Island', '+10:00', '+11:00', ''),
('AU', '-1228+13050', 'Australia/Darwin', 'Northern Territory', '+09:30', '+09:30', ''),
('AU', '-3143+12852', 'Australia/Eucla', 'Western Australia - Eucla area', '+08:45', '+08:45', ''),
('AU', '-4253+14719', 'Australia/Hobart', 'Tasmania - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/LHI', '', '+10:30', '+11:00', 'Link to Australia/Lord_Howe'),
('AU', '-2016+14900', 'Australia/Lindeman', 'Queensland - Holiday Islands', '+10:00', '+10:00', ''),
('AU', '-3133+15905', 'Australia/Lord_Howe', 'Lord Howe Island', '+10:30', '+11:00', ''),
('AU', '-3749+14458', 'Australia/Melbourne', 'Victoria', '+10:00', '+11:00', ''),
('', '', 'Australia/North', '', '+09:30', '+09:30', 'Link to Australia/Darwin'),
('', '', 'Australia/NSW', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3157+11551', 'Australia/Perth', 'Western Australia - most locations', '+08:00', '+08:00', ''),
('', '', 'Australia/Queensland', '', '+10:00', '+10:00', 'Link to Australia/Brisbane'),
('', '', 'Australia/South', '', '+09:30', '+10:30', 'Link to Australia/Adelaide'),
('AU', '-3352+15113', 'Australia/Sydney', 'New South Wales - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/Tasmania', '', '+10:00', '+11:00', 'Link to Australia/Hobart'),
('', '', 'Australia/Victoria', '', '+10:00', '+11:00', 'Link to Australia/Melbourne'),
('', '', 'Australia/West', '', '+08:00', '+08:00', 'Link to Australia/Perth'),
('', '', 'Australia/Yancowinna', '', '+09:30', '+10:30', 'Link to Australia/Broken_Hill'),
('', '', 'Brazil/Acre', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Rio_Branco'),
('', '', 'Brazil/DeNoronha', '', 'âˆ’02:00', 'âˆ’02:00', 'Link to America/Noronha'),
('', '', 'Brazil/East', '', 'âˆ’03:00', 'âˆ’02:00', 'Link to America/Sao_Paulo'),
('', '', 'Brazil/West', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Manaus'),
('', '', 'Canada/Atlantic', '', 'âˆ’04:00', 'âˆ’03:00', 'Link to America/Halifax'),
('', '', 'Canada/Central', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Winnipeg'),
('', '', 'Canada/East-Saskatchewan', '', 'âˆ’06:00', 'âˆ’06:00', 'Link to America/Regina'),
('', '', 'Canada/Eastern', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Toronto'),
('', '', 'Canada/Mountain', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Edmonton'),
('', '', 'Canada/Newfoundland', '', 'âˆ’03:30', 'âˆ’02:30', 'Link to America/St_Johns'),
('', '', 'Canada/Pacific', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Vancouver'),
('', '', 'Canada/Saskatchewan', '', 'âˆ’06:00', 'âˆ’06:00', 'Link to America/Regina'),
('', '', 'Canada/Yukon', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Whitehorse'),
('', '', 'CET', '', '+01:00', '+02:00', ''),
('', '', 'Chile/Continental', '', 'âˆ’04:00', 'âˆ’03:00', 'Link to America/Santiago'),
('', '', 'Chile/EasterIsland', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to Pacific/Easter'),
('', '', 'CST6CDT', '', 'âˆ’06:00', 'âˆ’05:00', ''),
('', '', 'Cuba', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Havana'),
('', '', 'EET', '', '+02:00', '+03:00', ''),
('', '', 'Egypt', '', '+02:00', '+02:00', 'Link to Africa/Cairo'),
('', '', 'Eire', '', '+00:00', '+01:00', 'Link to Europe/Dublin'),
('', '', 'EST', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('', '', 'EST5EDT', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'Etc./GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UTC', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Zulu', '', '+00:00', '+00:00', 'Link to UTC'),
('NL', '+5222+00454', 'Europe/Amsterdam', '', '+01:00', '+02:00', ''),
('AD', '+4230+00131', 'Europe/Andorra', '', '+01:00', '+02:00', ''),
('GR', '+3758+02343', 'Europe/Athens', '', '+02:00', '+03:00', ''),
('', '', 'Europe/Belfast', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RS', '+4450+02030', 'Europe/Belgrade', '', '+01:00', '+02:00', ''),
('DE', '+5230+01322', 'Europe/Berlin', '', '+01:00', '+02:00', 'In 1945, the Trizone did not follow Berlin\'s switch to DST, see Time in Germany'),
('SK', '+4809+01707', 'Europe/Bratislava', '', '+01:00', '+02:00', 'Link to Europe/Prague'),
('BE', '+5050+00420', 'Europe/Brussels', '', '+01:00', '+02:00', ''),
('RO', '+4426+02606', 'Europe/Bucharest', '', '+02:00', '+03:00', ''),
('HU', '+4730+01905', 'Europe/Budapest', '', '+01:00', '+02:00', ''),
('MD', '+4700+02850', 'Europe/Chisinau', '', '+02:00', '+03:00', ''),
('DK', '+5540+01235', 'Europe/Copenhagen', '', '+01:00', '+02:00', ''),
('IE', '+5320-00615', 'Europe/Dublin', '', '+00:00', '+01:00', ''),
('GI', '+3608-00521', 'Europe/Gibraltar', '', '+01:00', '+02:00', ''),
('GG', '+4927-00232', 'Europe/Guernsey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('FI', '+6010+02458', 'Europe/Helsinki', '', '+02:00', '+03:00', ''),
('IM', '+5409-00428', 'Europe/Isle_of_Man', '', '+00:00', '+01:00', 'Link to Europe/London'),
('TR', '+4101+02858', 'Europe/Istanbul', '', '+02:00', '+03:00', ''),
('JE', '+4912-00207', 'Europe/Jersey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RU', '+5443+02030', 'Europe/Kaliningrad', 'Moscow-01 - Kaliningrad', '+03:00', '+03:00', ''),
('UA', '+5026+03031', 'Europe/Kiev', 'most locations', '+02:00', '+03:00', ''),
('PT', '+3843-00908', 'Europe/Lisbon', 'mainland', '+00:00', '+01:00', ''),
('SI', '+4603+01431', 'Europe/Ljubljana', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('GB', '+513030-0000731', 'Europe/London', '', '+00:00', '+01:00', ''),
('LU', '+4936+00609', 'Europe/Luxembourg', '', '+01:00', '+02:00', ''),
('ES', '+4024-00341', 'Europe/Madrid', 'mainland', '+01:00', '+02:00', ''),
('MT', '+3554+01431', 'Europe/Malta', '', '+01:00', '+02:00', ''),
('AX', '+6006+01957', 'Europe/Mariehamn', '', '+02:00', '+03:00', 'Link to Europe/Helsinki'),
('BY', '+5354+02734', 'Europe/Minsk', '', '+03:00', '+03:00', ''),
('MC', '+4342+00723', 'Europe/Monaco', '', '+01:00', '+02:00', ''),
('RU', '+5545+03735', 'Europe/Moscow', 'Moscow+00 - west Russia', '+04:00', '+04:00', ''),
('', '', 'Europe/Nicosia', '', '+02:00', '+03:00', 'Link to Asia/Nicosia'),
('NO', '+5955+01045', 'Europe/Oslo', '', '+01:00', '+02:00', ''),
('FR', '+4852+00220', 'Europe/Paris', '', '+01:00', '+02:00', ''),
('ME', '+4226+01916', 'Europe/Podgorica', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('CZ', '+5005+01426', 'Europe/Prague', '', '+01:00', '+02:00', ''),
('LV', '+5657+02406', 'Europe/Riga', '', '+02:00', '+03:00', ''),
('IT', '+4154+01229', 'Europe/Rome', '', '+01:00', '+02:00', ''),
('RU', '+5312+05009', 'Europe/Samara', 'Moscow+00 - Samara, Udmurtia', '+04:00', '+04:00', ''),
('SM', '+4355+01228', 'Europe/San_Marino', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('BA', '+4352+01825', 'Europe/Sarajevo', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4457+03406', 'Europe/Simferopol', 'central Crimea', '+02:00', '+03:00', ''),
('MK', '+4159+02126', 'Europe/Skopje', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('BG', '+4241+02319', 'Europe/Sofia', '', '+02:00', '+03:00', ''),
('SE', '+5920+01803', 'Europe/Stockholm', '', '+01:00', '+02:00', ''),
('EE', '+5925+02445', 'Europe/Tallinn', '', '+02:00', '+03:00', ''),
('AL', '+4120+01950', 'Europe/Tirane', '', '+01:00', '+02:00', ''),
('', '', 'Europe/Tiraspol', '', '+02:00', '+03:00', 'Link to Europe/Chisinau'),
('UA', '+4837+02218', 'Europe/Uzhgorod', 'Ruthenia', '+02:00', '+03:00', ''),
('LI', '+4709+00931', 'Europe/Vaduz', '', '+01:00', '+02:00', ''),
('VA', '+415408+0122711', 'Europe/Vatican', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('AT', '+4813+01620', 'Europe/Vienna', '', '+01:00', '+02:00', ''),
('LT', '+5441+02519', 'Europe/Vilnius', '', '+02:00', '+03:00', ''),
('RU', '+4844+04425', 'Europe/Volgograd', 'Moscow+00 - Caspian Sea', '+04:00', '+04:00', ''),
('PL', '+5215+02100', 'Europe/Warsaw', '', '+01:00', '+02:00', ''),
('HR', '+4548+01558', 'Europe/Zagreb', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4750+03510', 'Europe/Zaporozhye', 'Zaporozh\'ye, E Lugansk / Zaporizhia, E Luhansk', '+02:00', '+03:00', ''),
('CH', '+4723+00832', 'Europe/Zurich', '', '+01:00', '+02:00', ''),
('', '', 'GB', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GB-Eire', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT-0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Greenwich', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Hong Kong', '', '+08:00', '+08:00', 'Link to Asia/Hong_Kong'),
('', '', 'HST', '', 'âˆ’10:00', 'âˆ’10:00', ''),
('', '', 'Iceland', '', '+00:00', '+00:00', 'Link to Atlantic/Reykjavik'),
('MG', '-1855+04731', 'Indian/Antananarivo', '', '+03:00', '+03:00', ''),
('IO', '-0720+07225', 'Indian/Chagos', '', '+06:00', '+06:00', ''),
('CX', '-1025+10543', 'Indian/Christmas', '', '+07:00', '+07:00', ''),
('CC', '-1210+09655', 'Indian/Cocos', '', '+06:30', '+06:30', ''),
('KM', '-1141+04316', 'Indian/Comoro', '', '+03:00', '+03:00', ''),
('TF', '-492110+0701303', 'Indian/Kerguelen', '', '+05:00', '+05:00', ''),
('SC', '-0440+05528', 'Indian/Mahe', '', '+04:00', '+04:00', ''),
('MV', '+0410+07330', 'Indian/Maldives', '', '+05:00', '+05:00', ''),
('MU', '-2010+05730', 'Indian/Mauritius', '', '+04:00', '+04:00', ''),
('YT', '-1247+04514', 'Indian/Mayotte', '', '+03:00', '+03:00', ''),
('RE', '-2052+05528', 'Indian/Reunion', '', '+04:00', '+04:00', ''),
('', '', 'Iran', '', '+03:30', '+04:30', 'Link to Asia/Tehran'),
('', '', 'Israel', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Jamaica', '', 'âˆ’05:00', 'âˆ’05:00', 'Link to America/Jamaica'),
('', '', 'Japan', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'JST-9', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'Kwajalein', '', '+12:00', '+12:00', 'Link to Pacific/Kwajalein'),
('', '', 'Libya', '', '+02:00', '+02:00', 'Link to Africa/Tripoli'),
('', '', 'MET', '', '+01:00', '+02:00', ''),
('', '', 'Mexico/BajaNorte', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Tijuana'),
('', '', 'Mexico/BajaSur', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Mazatlan'),
('', '', 'Mexico/General', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Mexico_City'),
('', '', 'MST', '', 'âˆ’07:00', 'âˆ’07:00', ''),
('', '', 'MST7MDT', '', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'Navajo', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Denver'),
('', '', 'NZ', '', '+12:00', '+13:00', 'Link to Pacific/Auckland'),
('', '', 'NZ-CHAT', '', '+12:45', '+13:45', 'Link to Pacific/Chatham'),
('WS', '-1350-17144', 'Pacific/Apia', '', '+13:00', '+14:00', ''),
('NZ', '-3652+17446', 'Pacific/Auckland', 'most locations', '+12:00', '+13:00', ''),
('NZ', '-4357-17633', 'Pacific/Chatham', 'Chatham Islands', '+12:45', '+13:45', ''),
('FM', '+0725+15147', 'Pacific/Chuuk', 'Chuuk (Truk) and Yap', '+10:00', '+10:00', ''),
('CL', '-2709-10926', 'Pacific/Easter', 'Easter Island & Sala y Gomez', 'âˆ’06:00', 'âˆ’05:00', ''),
('VU', '-1740+16825', 'Pacific/Efate', '', '+11:00', '+11:00', ''),
('KI', '-0308-17105', 'Pacific/Enderbury', 'Phoenix Islands', '+13:00', '+13:00', ''),
('TK', '-0922-17114', 'Pacific/Fakaofo', '', '+13:00', '+13:00', ''),
('FJ', '-1808+17825', 'Pacific/Fiji', '', '+12:00', '+13:00', ''),
('TV', '-0831+17913', 'Pacific/Funafuti', '', '+12:00', '+12:00', ''),
('EC', '-0054-08936', 'Pacific/Galapagos', 'Galapagos Islands', 'âˆ’06:00', 'âˆ’06:00', ''),
('PF', '-2308-13457', 'Pacific/Gambier', 'Gambier Islands', 'âˆ’09:00', 'âˆ’09:00', ''),
('SB', '-0932+16012', 'Pacific/Guadalcanal', '', '+11:00', '+11:00', ''),
('GU', '+1328+14445', 'Pacific/Guam', '', '+10:00', '+10:00', ''),
('US', '+211825-1575130', 'Pacific/Honolulu', 'Hawaii', 'âˆ’10:00', 'âˆ’10:00', ''),
('UM', '+1645-16931', 'Pacific/Johnston', 'Johnston Atoll', 'âˆ’10:00', 'âˆ’10:00', ''),
('KI', '+0152-15720', 'Pacific/Kiritimati', 'Line Islands', '+14:00', '+14:00', ''),
('FM', '+0519+16259', 'Pacific/Kosrae', 'Kosrae', '+11:00', '+11:00', ''),
('MH', '+0905+16720', 'Pacific/Kwajalein', 'Kwajalein', '+12:00', '+12:00', ''),
('MH', '+0709+17112', 'Pacific/Majuro', 'most locations', '+12:00', '+12:00', ''),
('PF', '-0900-13930', 'Pacific/Marquesas', 'Marquesas Islands', 'âˆ’09:30', 'âˆ’09:30', ''),
('UM', '+2813-17722', 'Pacific/Midway', 'Midway Islands', 'âˆ’11:00', 'âˆ’11:00', ''),
('NR', '-0031+16655', 'Pacific/Nauru', '', '+12:00', '+12:00', ''),
('NU', '-1901-16955', 'Pacific/Niue', '', 'âˆ’11:00', 'âˆ’11:00', ''),
('NF', '-2903+16758', 'Pacific/Norfolk', '', '+11:30', '+11:30', ''),
('NC', '-2216+16627', 'Pacific/Noumea', '', '+11:00', '+11:00', ''),
('AS', '-1416-17042', 'Pacific/Pago_Pago', '', 'âˆ’11:00', 'âˆ’11:00', ''),
('PW', '+0720+13429', 'Pacific/Palau', '', '+09:00', '+09:00', ''),
('PN', '-2504-13005', 'Pacific/Pitcairn', '', 'âˆ’08:00', 'âˆ’08:00', ''),
('FM', '+0658+15813', 'Pacific/Pohnpei', 'Pohnpei (Ponape)', '+11:00', '+11:00', ''),
('', '', 'Pacific/Ponape', '', '+11:00', '+11:00', 'Link to Pacific/Pohnpei'),
('PG', '-0930+14710', 'Pacific/Port_Moresby', '', '+10:00', '+10:00', ''),
('CK', '-2114-15946', 'Pacific/Rarotonga', '', 'âˆ’10:00', 'âˆ’10:00', ''),
('MP', '+1512+14545', 'Pacific/Saipan', '', '+10:00', '+10:00', ''),
('', '', 'Pacific/Samoa', '', 'âˆ’11:00', 'âˆ’11:00', 'Link to Pacific/Pago_Pago'),
('PF', '-1732-14934', 'Pacific/Tahiti', 'Society Islands', 'âˆ’10:00', 'âˆ’10:00', ''),
('KI', '+0125+17300', 'Pacific/Tarawa', 'Gilbert Islands', '+12:00', '+12:00', ''),
('TO', '-2110-17510', 'Pacific/Tongatapu', '', '+13:00', '+13:00', ''),
('', '', 'Pacific/Truk', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('UM', '+1917+16637', 'Pacific/Wake', 'Wake Island', '+12:00', '+12:00', ''),
('WF', '-1318-17610', 'Pacific/Wallis', '', '+12:00', '+12:00', ''),
('', '', 'Pacific/Yap', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('', '', 'Poland', '', '+01:00', '+02:00', 'Link to Europe/Warsaw'),
('', '', 'Portugal', '', '+00:00', '+01:00', 'Link to Europe/Lisbon'),
('', '', 'PRC', '', '+08:00', '+08:00', 'Link to Asia/Shanghai'),
('', '', 'PST8PDT', '', 'âˆ’08:00', 'âˆ’07:00', ''),
('', '', 'ROC', '', '+08:00', '+08:00', 'Link to Asia/Taipei'),
('', '', 'ROK', '', '+09:00', '+09:00', 'Link to Asia/Seoul'),
('', '', 'Singapore', '', '+08:00', '+08:00', 'Link to Asia/Singapore'),
('', '', 'Turkey', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('', '', 'UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'US/Alaska', '', 'âˆ’09:00', 'âˆ’08:00', 'Link to America/Anchorage'),
('', '', 'US/Aleutian', '', 'âˆ’10:00', 'âˆ’09:00', 'Link to America/Adak'),
('', '', 'US/Arizona', '', 'âˆ’07:00', 'âˆ’07:00', 'Link to America/Phoenix'),
('', '', 'US/Central', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Chicago'),
('', '', 'US/East-Indiana', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Indiana/Indianapolis'),
('', '', 'US/Eastern', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/New_York'),
('', '', 'US/Hawaii', '', 'âˆ’10:00', 'âˆ’10:00', 'Link to Pacific/Honolulu'),
('', '', 'US/Indiana-Starke', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Indiana/Knox'),
('', '', 'US/Michigan', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Detroit'),
('', '', 'US/Mountain', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Denver'),
('', '', 'US/Pacific', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Pacific-New', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Samoa', '', 'âˆ’11:00', 'âˆ’11:00', 'Link to Pacific/Pago_Pago'),
('', '', 'UTC', '', '+00:00', '+00:00', ''),
('', '', 'W-SU', '', '+04:00', '+04:00', 'Link to Europe/Moscow'),
('', '', 'WET', '', '+00:00', '+01:00', ''),
('', '', 'Zulu', '', '+00:00', '+00:00', 'Link to UTC');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint(20) UNSIGNED NOT NULL,
  `withdraw_id` bigint(20) UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT 0,
  `fee` decimal(64,0) NOT NULL DEFAULT 0,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `faviroute` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `micr_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email_id`, `email_verified_at`, `device_token`, `password`, `phone`, `phone_code`, `is_verified`, `status`, `otp`, `faviroute`, `remember_token`, `vendor_id`, `language`, `ifsc_code`, `account_name`, `account_number`, `micr_code`, `provider_type`, `provider_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'noimage.png', 'admin@homchf.one', NULL, NULL, '$2y$10$E/dRCzctfSzemhSGc1O6B.YtJwPb4wcDYPgzq0pXKdOlHZd2f0vay', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-21 21:39:53'),
(3, 'Ghar ka Khana', 'noimage.jpg', 'abhiram.thuraga@gmail.com', NULL, 'd61b8734-7b6b-11ec-8f2c-528a3469379b', '$2y$10$88NyAvDznJ80i/9P614rK.vwtb4oZz.uhU65nIKyEu2hdXP0l5BAW', NULL, '+46', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 19:25:38', '2022-01-24 07:14:35'),
(4, 'Anil', 'noimage.png', 'boy4zone2.anil@gmail.com', NULL, NULL, '$2y$10$tAJQ0xthFvBRKAz9hMxQ8eoCWEGeCYuKblThd2F7GT9PKwK9AmT0C', '769389951', '+46', 1, 1, 5279, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 22:54:19', '2022-01-04 20:10:54'),
(7, 'Sunil Tokala', 'noimage.png', 'nani.guddu@gmail.com', NULL, NULL, '$2y$10$mZ15K2wHsg66dzY6awcbluMS2zoFFO.D3k1f7wqNBZc7/p8jkMHmS', '728866717', '+46', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-11 08:58:28', '2021-11-11 08:58:28'),
(8, 'a', 'noimage.png', 'permklmy1@gmail.com', NULL, NULL, '$2y$10$ybqvV3kczt5.iF0.HbxqQeRWGsQO52F.OiSzRI1EhDkZBNsVL41Pm', '103689476', '+60', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 02:12:12', '2021-11-12 02:12:12'),
(9, 'Priyankaben patel', 'noimage.png', 'priyapatel0510@yahoo.com', NULL, NULL, '$2y$10$DkQrLbc946ayHl4UENsY.OISfrMiJL3s66jXqoZXQ4ZGIO9W9EyqS', NULL, '+93', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 07:45:12', '2021-11-24 21:31:43'),
(11, 'Anil', 'noimage.png', 'anilvadali@gmail.com', NULL, NULL, '$2y$10$Ol7pLktWmbKMVTnOEUjb3O6fUYLpmMLocrFL66ZJOYQZf7DkgGP76', '769389951', '+46', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 20:44:32', '2021-11-16 20:44:32'),
(12, 'preeti’s kitchen', 'noimage.jpg', 'preeti.abhiram@gmail.com', NULL, 'N/A', '$2y$10$K8yLaCHRLbX7F9wPtVx5fO/o2nuK2hNWJK0sSwq/ReSSk84.FqniO', NULL, '+46', 1, 1, 3242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 11:33:51', '2022-01-04 20:34:10'),
(13, 'Abirami', 'noimage.png', 'abirami.vaithiyanathan@gmail.com', NULL, NULL, '$2y$10$Ser7RDEJZ3skCuYMRcxwveQBC5KajQ8.sIM3kfXaTO2wiDEyAC29W', '9739653199', '+91', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 17:58:32', '2021-11-22 17:58:32'),
(14, 'priya', 'noimage.png', 'priyanka.66@gmail.com', NULL, NULL, '$2y$10$3AVeDpyjP2JPXCVJ154YtuD041EtwDvdJOHILl03kf06nBn347nDC', '7675060069', '+91', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 18:36:14', '2021-11-22 18:36:14'),
(15, 'Vema', 'noimage.png', 'veen_mish@yahoo.co.in', NULL, NULL, '$2y$10$XtcKt9aqMRqCQnwIFb2QA.wEGm/KGKlIg3R2wWZkYOPTdlwCWN76K', NULL, '+93', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 19:59:52', '2021-11-24 21:04:05'),
(16, 'Abhi', '61dc7744c1a29.png', 'homchfapp@gmail.com', NULL, 'eea1149e-7ce3-11ec-925f-be56f55f913d', '$2y$10$R7QDNucK07WfQdq4XBXRHerE7dXD9XEI3SavrFxdoBqCtyoyOHPDK', '701043165', '+46', 1, 1, 6960, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 20:08:14', '2022-01-24 08:06:05'),
(17, 'ArtisticCakeswithLove', 'noimage.jpg', 'info@artisticcakeswithlove.com', NULL, 'N/A', '$2y$10$8SZ/7A2Fdl0cEVWtnXoC1O2/cDD91R/7zn1Ir3TdUR47YBU.Bxpmy', '0739988019', '+46', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-05 09:25:39', '2021-12-05 09:26:03'),
(19, 'Preeti vadali', 'noimage.png', 'preeti.abhiram+1@gmail.com', NULL, NULL, '$2y$10$5ro7d9zZ3uo6z2653DUGBegVI8eW9//Vc9jVl5DEqtQ7iMcfRK.s.', '701043165', '+46', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-11 22:00:01', '2021-12-11 22:00:01'),
(20, 'FlavHyd', 'noimage.jpg', 'jahed_ms@yahoo.com', NULL, 'N/A', '$2y$10$i1mRxuzcb76rG5vhBnfC/.vhC3TghxpaZA5t7GPNTkYVu7ibdpbHe', '0734884147', '+46', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-11 22:06:55', '2021-12-11 22:07:13'),
(21, 'quick', 'noimage.jpg', 'quickselection10.np@gmail.com', NULL, NULL, '$2y$10$E3IyZ5hyswPt7F.WQwDc8.vQIXHZwcDp.c27gVuzbV7KbnkmnYCUy', '9841112888', '+91', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(22, 'anusha', 'noimage.png', 'anushams06@gmail.com', NULL, NULL, '$2y$10$zT38v.TH4Ff8Zy5bYbSQSezAhtNv7A5CUBJcYwMxfqUhmiUR9kRJG', '8951361447', '+91', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 15:08:09', '2021-12-23 15:08:09'),
(23, 'Delhi Dhaba', 'noimage.jpg', 'nbcos1983@gmail.com', NULL, 'N/A', '$2y$10$AyHPbTVViBH8.vD.CzBN1OpHBRh/rjqJf4IBpS7c6mVASqRbTIWzy', '0727793153', '+46', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 20:13:37', '2021-12-23 20:14:04'),
(24, 'quick food', 'noimage.jpg', 'www.quickfood@gmail.com', NULL, 'N/A', '$2y$10$415cBS/VvXhRQdGrsx//iubObaGbHOn6AJclQ0oVqClnpy.xQbX5i', '9841112888', '+91', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-27 12:28:12', '2021-12-28 11:01:38'),
(25, 'SHARATH KUMAR', 'noimage.png', 'sarathpappu341@gmail.com', NULL, NULL, '$2y$10$etIGGy3O/7FNo9mP6Lt7YeMXdMdYSK6pjK5PRm00BDZ8w6VKNav52', '9677233264', '+91', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-28 12:48:27', '2021-12-28 12:48:27'),
(26, 'preeti vadali', 'noimage.png', 'homchf@gmail.com', NULL, 'c4cc2fe6-79e6-11ec-9043-72f2240bdb74', '$2y$10$DIECtokrJS4i.maujsVcweNstlQt1rZSMDCgM5FAaC4seTxsCgJzq', '701043165', '+46', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-04 20:46:35', '2022-01-22 23:22:37'),
(27, 'sarath', 'noimage.png', 'sarathbabu0091@gmail.com', NULL, NULL, '$2y$10$SpKHjU8AvlZHt91m11JVWOrfcdrlRnIkoUQz3k.vRBmzCXdjOtZWq', '8778009871', '+91', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 18:50:17', '2022-01-12 18:50:17'),
(28, 'new demo', 'noimage.jpg', '4deepan@gmail.com', NULL, 'b92798bc-7917-11ec-af1c-ce7416a3d21a', '$2y$10$fpY0cfDLV32.pcGj3i/7WulUGGlSUUe8DLzJmE02.nxJuuylAlXVm', '9944459100', '+91', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19 12:06:19', '2022-01-19 12:06:43'),
(30, 'Ram', 'noimage.png', 'thuragaabhiram@gmail.com', NULL, '92d3f726-7ba8-11ec-b667-96ef9b75962b', '$2y$10$xT2Ls35TJyu35Io9k14QG.coIH5dGFI9mb9Qv6k7M66vunq07PeDW', '723165252', '+46', 1, 1, NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-22 20:09:53', '2022-01-22 20:10:12'),
(31, 'Ram\'s Kitchen', 'noimage.jpg', 'peqon.net@gmail.com', NULL, 'd6ec3914-7b67-11ec-b5a7-4e5d719e838b', '$2y$10$bBqAmsXfE2AO4hlGZwjSIO7yRdeWIL7jDUNGNXujRXgw06EwUNDYC', NULL, '+46', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-22 20:13:53', '2022-01-24 07:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `lat`, `lang`, `address`, `type`, `created_at`, `updated_at`) VALUES
(11, 11, '57.6379546', '11.9426321', 'kobbegården 50', 'MyAddress', '2021-11-16 20:45:56', '2021-11-16 20:45:56'),
(12, 14, '57.6379546', '11.9426321', 'kobbegarden 50', 'kobbegarden 50', '2021-11-22 18:38:54', '2021-11-22 18:38:54'),
(13, 14, '57.6379546', '11.9426321', 'kobbegarden 50 436 37', 'hmm', '2021-11-22 18:39:58', '2021-11-22 18:39:58'),
(14, 16, '57.7546876', '11.9879224', 'friedländers gata 16', 'home', '2021-11-24 20:09:52', '2021-11-24 20:09:52'),
(16, 4, '57.6379546', '11.9426321', 'Kobbegården 50, lgh 1101, 43637', 'MyAddress', '2022-01-04 20:14:30', '2022-01-04 20:14:30'),
(17, 16, '16.3044885', '80.42868589999999', '4/18 Brodipet, Guntur', 'Guntur', '2022-01-10 21:26:51', '2022-01-10 21:26:51'),
(18, 16, '57.6379546', '11.9426321', 'Kobbegarden 50, Gothenburg', 'Anil home', '2022-01-10 21:28:07', '2022-01-10 21:28:07'),
(19, 30, '57.7549743', '11.9887196', 'friedländers Gata', 'home', '2022-01-22 20:10:49', '2022-01-22 20:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuisine_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_order_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_two_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avg_delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_comission_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_comission_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_slot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type_timeSlot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isExplorer` tinyint(1) NOT NULL,
  `isTop` tinyint(1) NOT NULL,
  `vendor_own_driver` int(11) DEFAULT NULL,
  `payment_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `vendor_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connector_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connector_descriptor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connector_port` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `user_id`, `name`, `vendor_logo`, `email_id`, `image`, `password`, `contact`, `cuisine_id`, `address`, `lat`, `lang`, `map_address`, `min_order_amount`, `for_two_person`, `avg_delivery_time`, `license_number`, `admin_comission_type`, `admin_comission_value`, `vendor_type`, `time_slot`, `tax`, `delivery_type_timeSlot`, `isExplorer`, `isTop`, `vendor_own_driver`, `payment_option`, `status`, `vendor_language`, `connector_type`, `connector_descriptor`, `connector_port`, `created_at`, `updated_at`) VALUES
(1, 3, 'Ghar ka Khana', '6182368f4f0aa.jpg', 'abhiram.thuraga@gmail.com', '6182368f4dca8.jpeg', '$2y$10$cNFkcNGFUoBSRy6eRHIIyeSq2AStybss3gocr0kcmhvn/EbCr9e1m', '0723165256', '1,2', 'Hisings Backa, Sweden', '57.70887', '11.97456', 'Goteborg, Sweden', '85', '85', '35', '12321242', 'amount', '0', 'all', '30', '1', NULL, 1, 1, 0, NULL, 1, 'english', NULL, NULL, NULL, '2021-10-27 19:25:39', '2022-01-22 20:16:37'),
(3, 9, 'Priyankaben patel', 'vendor-logo.png', 'priyapatel0510@yahoo.com', 'noimage.png', '$2y$10$lS8tJfcbKQrqdMa4ik09CuiDXw0pN4EqDai9iILD/jlputbusD.SW', '0735015190', '1,2', 'Hisings Backa, Sweden', '57.754700', '11.987920', NULL, '65', '65', '35', '53223532', 'percentage', '1', 'veg', '15', '1', NULL, 1, 1, 1, NULL, 0, 'english', NULL, NULL, NULL, '2021-11-12 07:45:12', '2021-12-06 23:28:03'),
(5, 12, 'preeti’s kitchen', 'vendor-logo.png', 'preeti.abhiram@gmail.com', 'noimage.png', '$2y$10$NuLv35rRJl.pcaBPGY4JRe.Vw7GhCa8MhrcPPxn2.09v3dNiw9ZZm', '0701043165', '1,2', 'Hisings Backa, Sweden', '57.70887', '11.97456', 'Goteborg, Sweden', '150', '75', '35', '24424242', 'amount', '1', 'veg', '15', '1', NULL, 1, 1, 1, NULL, 0, 'english', NULL, NULL, NULL, '2021-11-22 11:33:52', '2021-12-28 08:40:47'),
(6, 15, 'Vema', 'vendor-logo.png', 'veen_mish@yahoo.co.in', 'noimage.png', '$2y$10$tMIs7LHt01pWxhh112RrX.iXKNx3goa/t6eKjnIH37I0Pm/SCUiDq', '283689631478', '1,2,4', 'GOTHENBURG', '57.70887', '11.97456', 'Goteborg, Sweden', '75', '75', '45', '3234342353', 'percentage', '1', 'veg', '30', '1', NULL, 1, 1, 1, NULL, 0, 'english', NULL, NULL, NULL, '2021-11-24 19:59:52', '2021-12-06 23:27:54'),
(7, 17, 'ArtisticCakeswithLove', 'vendor-logo.png', 'info@artisticcakeswithlove.com', 'noimage.png', '$2y$10$oED7e9BX9.u6cYMWy0glMOmr80ygPr6ZHPY0WWefNvBWOAX00Y3SK', '0739988019', '1,2,4', 'Gothenburg, Sweden', '57.708870', '11.974560', NULL, NULL, NULL, NULL, NULL, 'percentage', '0', 'veg', '15', NULL, NULL, 1, 1, 1, NULL, 0, 'english', NULL, NULL, NULL, '2021-12-05 09:25:39', '2021-12-06 23:27:39'),
(8, 20, 'FlavHyd', 'vendor-logo.png', 'jahed_ms@yahoo.com', 'noimage.png', '$2y$10$.0TSD57pXBPDAxo8i3CwkObd7wTXk9N1iyEJhGlEOS4g2c2.CET2a', '0734884147', '1,2,4', 'Gothenburg, Sweden', '57.708870', '11.974560', NULL, NULL, NULL, NULL, NULL, 'percentage', '0', 'veg', '15', NULL, NULL, 1, 1, 1, NULL, 1, 'english', NULL, NULL, NULL, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(9, 21, 'quick', 'vendor-logo.png', 'quickselection10.np@gmail.com', 'noimage.png', '$2y$10$Ad9R0rOatr79D62xQQ1Mk.qp0QKArO.BamshwWW08V5kZJokCHfwi', '9841112888', '1,2,4', 'Gothenburg, Sweden', '57.708870', '11.974560', NULL, NULL, NULL, NULL, NULL, 'percentage', '0', 'veg', '15', NULL, NULL, 1, 1, 1, NULL, 0, 'english', NULL, NULL, NULL, '2021-12-19 22:07:15', '2022-01-10 08:59:30'),
(10, 23, 'Delhi Dhaba', 'vendor-logo.png', 'nbcos1983@gmail.com', '61c4cae37c208.png', '$2y$10$gVA0BEfxxWVr8mY.LHQyqORTUR/EzLCsoZnRdUnbPIZFn9N/fbp.W', '0727793153', '1,2,4', 'Gothenburg, Sweden', '57.708870', '11.974560', NULL, '80', '-', '-', '-', 'percentage', '0', 'veg', '15', NULL, NULL, 1, 1, 1, NULL, 1, 'english', NULL, NULL, NULL, '2021-12-23 20:13:38', '2021-12-25 09:51:47'),
(11, 24, 'quick food', 'vendor-logo.png', 'www.quickfood@gmail.com', 'noimage.png', '$2y$10$f9m44dGjMkEIuLmY7LXe5.k2TW0/WHWSkGV2R1GHukY.5vuGg4GuO', '9841112888', '1,2,4', 'Chennai', '57.708870', '11.974560', NULL, '100', '149', '30', '0', 'percentage', '0', 'all', '15', NULL, NULL, 1, 1, 1, NULL, 0, 'english', NULL, NULL, NULL, '2021-12-27 12:28:12', '2022-01-10 08:59:25'),
(12, 28, 'new demo', 'vendor-logo.png', '4deepan@gmail.com', 'noimage.png', '$2y$10$/I9t33hi49OoTumv4BcPZe2JOSTOxIMV0qbWAHQbfjsl.m4FP1F/.', '9944459100', '1,2,4', 'west anna nagar chennai', '57.708870', '11.974560', NULL, '100', '250', '30', 'FSSAI0987656', 'percentage', '0', 'all', '30', NULL, NULL, 1, 1, 1, NULL, 0, 'english', NULL, NULL, NULL, '2022-01-19 12:06:19', '2022-01-19 12:09:00'),
(14, 31, 'Ram\'s Kitchen', 'vendor-logo.png', 'peqon.net@gmail.com', 'noimage.png', '$2y$10$cntcerq5O2VUCkMdTBCnD.tEcwLZa/.T2w0UagHRy4PryDPbTOT16', '0723165253', '1,2,4', 'Friedländers gata 16', '57.70887', '11.97456', 'Gothenburg, Sweden', '55', '55', '55', '5555555', 'percentage', '1', 'all', '15', NULL, NULL, 1, 1, 0, NULL, 1, 'english', NULL, NULL, NULL, '2022-01-22 20:13:54', '2022-01-23 23:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_bank_details`
--

CREATE TABLE `vendor_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clabe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_discount`
--

CREATE TABLE `vendor_discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `min_item_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_discount_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_discount`
--

INSERT INTO `vendor_discount` (`id`, `image`, `vendor_id`, `type`, `discount`, `min_item_amount`, `max_discount_amount`, `start_end_date`, `description`, `created_at`, `updated_at`) VALUES
(1, 'product_default.jpg', 5, 'amount', 10, '2', '20', '2021-11-22 - 2021-12-22', 'test', '2021-11-22 12:11:30', '2021-11-22 12:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `balance` decimal(64,0) NOT NULL DEFAULT 0,
  `decimal_places` smallint(6) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `description`, `meta`, `balance`, `decimal_places`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'Default Wallet', 'default', NULL, '[]', '0', 2, '2021-10-30 04:26:25', '2021-10-30 04:26:25'),
(2, 'App\\Models\\User', 16, 'Default Wallet', 'default', NULL, '[]', '0', 2, '2021-12-13 15:08:09', '2021-12-13 15:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_payment`
--

CREATE TABLE `wallet_payment` (
  `id` int(11) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` text NOT NULL,
  `payment_token` text DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `working_hours`
--

CREATE TABLE `working_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `day_index` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `working_hours`
--

INSERT INTO `working_hours` (`id`, `vendor_id`, `day_index`, `period_list`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sunday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"11:30 pm\"}]', 'delivery_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:25:01'),
(2, 1, 'Monday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"11:30 pm\"}]', 'delivery_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:25:01'),
(3, 1, 'Tuesday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"11:30 pm\"}]', 'delivery_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:25:01'),
(4, 1, 'Wednesday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"11:30 pm\"}]', 'delivery_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:25:01'),
(5, 1, 'Thursday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"11:30 pm\"}]', 'delivery_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:25:01'),
(6, 1, 'Friday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"11:30 pm\"}]', 'delivery_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:25:01'),
(7, 1, 'Saturday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"11:30 pm\"}]', 'delivery_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:25:01'),
(8, 1, 'Sunday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'pick_up_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:26:02'),
(9, 1, 'Monday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'pick_up_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:26:02'),
(10, 1, 'Tuesday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'pick_up_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:26:02'),
(11, 1, 'Wednesday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'pick_up_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:26:02'),
(12, 1, 'Thursday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'pick_up_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:26:02'),
(13, 1, 'Friday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'pick_up_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:26:02'),
(14, 1, 'Saturday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'pick_up_time', 1, '2021-10-27 19:25:39', '2021-12-11 22:26:02'),
(15, 1, 'Sunday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'selling_timeslot', 1, '2021-10-27 19:25:39', '2021-11-21 21:43:20'),
(16, 1, 'Monday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'selling_timeslot', 1, '2021-10-27 19:25:39', '2021-11-21 21:43:20'),
(17, 1, 'Tuesday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'selling_timeslot', 1, '2021-10-27 19:25:39', '2021-11-21 21:43:20'),
(18, 1, 'Wednesday', '[{\"start_time\":\"4:00 am\",\"end_time\":\"11:30 pm\"}]', 'selling_timeslot', 1, '2021-10-27 19:25:39', '2021-11-21 21:43:20'),
(19, 1, 'Thursday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"12:00 pm\"}]', 'selling_timeslot', 1, '2021-10-27 19:25:39', '2021-11-21 14:46:17'),
(20, 1, 'Friday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"12:00 pm\"}]', 'selling_timeslot', 1, '2021-10-27 19:25:39', '2021-11-21 18:58:35'),
(21, 1, 'Saturday', '[{\"start_time\":\"1:00 am\",\"end_time\":\"12:00 pm\"}]', 'selling_timeslot', 1, '2021-10-27 19:25:39', '2021-11-21 14:46:17'),
(43, 3, 'Sunday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'delivery_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(44, 3, 'Monday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'delivery_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(45, 3, 'Tuesday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'delivery_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(46, 3, 'Wednesday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'delivery_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(47, 3, 'Thursday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'delivery_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(48, 3, 'Friday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'delivery_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(49, 3, 'Saturday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'delivery_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(50, 3, 'Sunday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'pick_up_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(51, 3, 'Monday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'pick_up_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(52, 3, 'Tuesday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'pick_up_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(53, 3, 'Wednesday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'pick_up_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(54, 3, 'Thursday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'pick_up_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(55, 3, 'Friday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'pick_up_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(56, 3, 'Saturday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'pick_up_time', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(57, 3, 'Sunday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'selling_timeslot', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(58, 3, 'Monday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'selling_timeslot', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(59, 3, 'Tuesday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'selling_timeslot', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(60, 3, 'Wednesday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'selling_timeslot', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(61, 3, 'Thursday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'selling_timeslot', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(62, 3, 'Friday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'selling_timeslot', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(63, 3, 'Saturday', '[{\"start_time\":\"06:00 am\",\"end_time\":\"09:00 pm\"}]', 'selling_timeslot', 1, '2021-11-12 07:45:12', '2021-11-12 07:45:12'),
(85, 5, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 0, '2021-11-22 11:33:52', '2021-11-22 12:06:06'),
(86, 5, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(87, 5, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(88, 5, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(89, 5, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(90, 5, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(91, 5, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 0, '2021-11-22 11:33:52', '2021-11-22 12:06:06'),
(92, 5, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 0, '2021-11-22 11:33:52', '2021-11-22 12:06:51'),
(93, 5, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(94, 5, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(95, 5, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(96, 5, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(97, 5, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(98, 5, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 0, '2021-11-22 11:33:52', '2021-11-22 12:06:51'),
(99, 5, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(100, 5, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(101, 5, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(102, 5, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(103, 5, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(104, 5, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(105, 5, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-11-22 11:33:52', '2021-11-22 11:33:52'),
(106, 6, 'Sunday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'delivery_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(107, 6, 'Monday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'delivery_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(108, 6, 'Tuesday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'delivery_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(109, 6, 'Wednesday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'delivery_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(110, 6, 'Thursday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'delivery_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(111, 6, 'Friday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'delivery_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(112, 6, 'Saturday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'delivery_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(113, 6, 'Sunday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'pick_up_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(114, 6, 'Monday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'pick_up_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(115, 6, 'Tuesday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'pick_up_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(116, 6, 'Wednesday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'pick_up_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(117, 6, 'Thursday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'pick_up_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(118, 6, 'Friday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'pick_up_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(119, 6, 'Saturday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'pick_up_time', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(120, 6, 'Sunday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'selling_timeslot', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(121, 6, 'Monday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'selling_timeslot', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(122, 6, 'Tuesday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'selling_timeslot', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(123, 6, 'Wednesday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'selling_timeslot', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(124, 6, 'Thursday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'selling_timeslot', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(125, 6, 'Friday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'selling_timeslot', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(126, 6, 'Saturday', '[{\"start_time\":\"04:00 am\",\"end_time\":\"11:55 pm\"}]', 'selling_timeslot', 1, '2021-11-24 19:59:52', '2021-11-24 19:59:52'),
(127, 7, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(128, 7, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(129, 7, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(130, 7, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(131, 7, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(132, 7, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(133, 7, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(134, 7, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(135, 7, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(136, 7, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(137, 7, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(138, 7, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(139, 7, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(140, 7, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(141, 7, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(142, 7, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(143, 7, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(144, 7, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(145, 7, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(146, 7, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(147, 7, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-05 09:25:39', '2021-12-05 09:25:39'),
(148, 8, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(149, 8, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(150, 8, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(151, 8, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(152, 8, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(153, 8, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(154, 8, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(155, 8, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(156, 8, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(157, 8, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(158, 8, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(159, 8, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(160, 8, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(161, 8, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(162, 8, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(163, 8, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(164, 8, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(165, 8, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(166, 8, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(167, 8, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(168, 8, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-11 22:06:55', '2021-12-11 22:06:55'),
(169, 9, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(170, 9, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(171, 9, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(172, 9, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(173, 9, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(174, 9, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(175, 9, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(176, 9, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(177, 9, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(178, 9, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(179, 9, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(180, 9, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(181, 9, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(182, 9, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(183, 9, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(184, 9, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(185, 9, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(186, 9, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(187, 9, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(188, 9, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(189, 9, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-19 22:07:15', '2021-12-19 22:07:15'),
(190, 10, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(191, 10, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(192, 10, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(193, 10, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(194, 10, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(195, 10, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(196, 10, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(197, 10, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(198, 10, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(199, 10, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(200, 10, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(201, 10, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(202, 10, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(203, 10, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(204, 10, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(205, 10, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(206, 10, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(207, 10, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(208, 10, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(209, 10, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(210, 10, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-23 20:13:38', '2021-12-23 20:13:38'),
(211, 11, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(212, 11, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(213, 11, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(214, 11, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(215, 11, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(216, 11, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(217, 11, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(218, 11, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(219, 11, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(220, 11, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(221, 11, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(222, 11, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(223, 11, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(224, 11, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(225, 11, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(226, 11, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(227, 11, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(228, 11, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(229, 11, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(230, 11, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(231, 11, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2021-12-27 12:28:12', '2021-12-27 12:28:12'),
(232, 12, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(233, 12, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(234, 12, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(235, 12, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(236, 12, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(237, 12, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(238, 12, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(239, 12, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(240, 12, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(241, 12, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(242, 12, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(243, 12, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(244, 12, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(245, 12, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(246, 12, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(247, 12, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(248, 12, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(249, 12, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(250, 12, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(251, 12, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(252, 12, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-19 12:06:19', '2022-01-19 12:06:19'),
(274, 14, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(275, 14, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(276, 14, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(277, 14, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(278, 14, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(279, 14, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(280, 14, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'delivery_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(281, 14, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(282, 14, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(283, 14, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(284, 14, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(285, 14, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(286, 14, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(287, 14, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'pick_up_time', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(288, 14, 'Sunday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(289, 14, 'Monday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(290, 14, 'Tuesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(291, 14, 'Wednesday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(292, 14, 'Thursday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(293, 14, 'Friday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54'),
(294, 14, 'Saturday', '[{\"start_time\":\"8:00 am\",\"end_time\":\"9:00 pm\"}]', 'selling_timeslot', 1, '2022-01-22 20:13:54', '2022-01-22 20:13:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_delivery_person_vendor_id` (`vendor_id`),
  ADD KEY `fk_delivery_person_delivery_zone_id` (`delivery_zone_id`);

--
-- Indexes for table `delivery_zone`
--
ALTER TABLE `delivery_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_zone_area`
--
ALTER TABLE `delivery_zone_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_delivery_zone_id` (`delivery_zone_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_user_id` (`user_id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_vendor_id` (`vendor_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_template`
--
ALTER TABLE `notification_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_vendor_id` (`vendor_id`),
  ADD KEY `fk_promo_code_id` (`promocode_id`),
  ADD KEY `fk_order_user_id` (`user_id`),
  ADD KEY `fk_delivery_person_id` (`delivery_person_id`),
  ADD KEY `fk_vendor_discount_id` (`vendor_discount_id`),
  ADD KEY `fk_address_id` (`address_id`);

--
-- Indexes for table `order_child`
--
ALTER TABLE `order_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderChild_id` (`order_id`);

--
-- Indexes for table `order_setting`
--
ALTER TABLE `order_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_setting`
--
ALTER TABLE `payment_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refaund`
--
ALTER TABLE `refaund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_refaund_user_id` (`user_id`),
  ADD KEY `fk_refaund_order_id` (`order_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_review_vendor_id` (`vendor_id`),
  ADD KEY `fk_review_order_id` (`order_id`),
  ADD KEY `fk_review_user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settlements`
--
ALTER TABLE `settlements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_settlement_vendor_id` (`vendor_id`),
  ADD KEY `fk_settlement_order_id` (`order_id`),
  ADD KEY `fk_settlement_delivery_boy_id` (`driver_id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_submenu_menu_id` (`vendor_id`);

--
-- Indexes for table `submenu_cutsomization_type`
--
ALTER TABLE `submenu_cutsomization_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_custimization_type_vendor_id` (`vendor_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`TimeZone`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_uuid_unique` (`uuid`),
  ADD KEY `transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfers_uuid_unique` (`uuid`),
  ADD KEY `transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_address_id` (`user_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_email_unique` (`email_id`),
  ADD KEY `fk_vendor_user_id` (`user_id`);

--
-- Indexes for table `vendor_bank_details`
--
ALTER TABLE `vendor_bank_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bank_details_vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor_discount`
--
ALTER TABLE `vendor_discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vendor_discount_vendor_id` (`vendor_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD KEY `wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `wallets_slug_index` (`slug`);

--
-- Indexes for table `wallet_payment`
--
ALTER TABLE `wallet_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_working_vendor_id` (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `delivery_person`
--
ALTER TABLE `delivery_person`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_zone`
--
ALTER TABLE `delivery_zone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_zone_area`
--
ALTER TABLE `delivery_zone_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT for table `notification_template`
--
ALTER TABLE `notification_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `order_child`
--
ALTER TABLE `order_child`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `order_setting`
--
ALTER TABLE `order_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_setting`
--
ALTER TABLE `payment_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refaund`
--
ALTER TABLE `refaund`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settlements`
--
ALTER TABLE `settlements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `submenu_cutsomization_type`
--
ALTER TABLE `submenu_cutsomization_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vendor_bank_details`
--
ALTER TABLE `vendor_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_discount`
--
ALTER TABLE `vendor_discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_payment`
--
ALTER TABLE `wallet_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `working_hours`
--
ALTER TABLE `working_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD CONSTRAINT `fk_delivery_person_delivery_zone_id` FOREIGN KEY (`delivery_zone_id`) REFERENCES `delivery_zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_delivery_person_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_zone_area`
--
ALTER TABLE `delivery_zone_area`
  ADD CONSTRAINT `fk_delivery_zone_id` FOREIGN KEY (`delivery_zone_id`) REFERENCES `delivery_zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_address_id` FOREIGN KEY (`address_id`) REFERENCES `user_address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_delivery_person_id` FOREIGN KEY (`delivery_person_id`) REFERENCES `delivery_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_promo_code_id` FOREIGN KEY (`promocode_id`) REFERENCES `promo_code` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vendor_discount_id` FOREIGN KEY (`vendor_discount_id`) REFERENCES `vendor_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_child`
--
ALTER TABLE `order_child`
  ADD CONSTRAINT `fk_orderChild_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `refaund`
--
ALTER TABLE `refaund`
  ADD CONSTRAINT `fk_refaund_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_refaund_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_review_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_review_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_review_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settlements`
--
ALTER TABLE `settlements`
  ADD CONSTRAINT `fk_settlement_delivery_boy_id` FOREIGN KEY (`driver_id`) REFERENCES `delivery_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_settlement_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_settlement_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submenu`
--
ALTER TABLE `submenu`
  ADD CONSTRAINT `fk_submenu_menu_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_submenu_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submenu_cutsomization_type`
--
ALTER TABLE `submenu_cutsomization_type`
  ADD CONSTRAINT `fk_custimization_type_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `fk_user_address_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `fk_vendor_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendor_bank_details`
--
ALTER TABLE `vendor_bank_details`
  ADD CONSTRAINT `fk_bank_details_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendor_discount`
--
ALTER TABLE `vendor_discount`
  ADD CONSTRAINT `fk_vendor_discount_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallet_payment`
--
ALTER TABLE `wallet_payment`
  ADD CONSTRAINT `wallet_payment_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD CONSTRAINT `fk_working_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
