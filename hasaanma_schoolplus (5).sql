-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2020 at 07:07 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasaanma_schoolplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`id`, `code`, `name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'AF', 'Africa', NULL, NULL, 1),
(2, 'AN', 'Antarctica', NULL, NULL, 1),
(3, 'AS', 'Asia', NULL, NULL, 1),
(4, 'EU', 'Europe', NULL, NULL, 1),
(5, 'NA', 'North America', NULL, NULL, 1),
(6, 'OC', 'Oceania', NULL, NULL, 1),
(7, 'SA', 'South America', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `continets`
--

CREATE TABLE `continets` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continets`
--

INSERT INTO `continets` (`id`, `code`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'AF', 'Africa', '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(2, 'AN', 'Antarctica', '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(3, 'AS', 'Asia', '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(4, 'EU', 'Europe', '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(5, 'NA', 'North America', '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(6, 'OC', 'Oceania', '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(7, 'SA', 'South America', '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `native`, `phone`, `continent`, `capital`, `currency`, `languages`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'AD', 'Andorra', 'Andorra', '376', 'EU', 'Andorra la Vella', 'EUR', 'ca', NULL, NULL, 1),
(2, 'AE', 'United Arab Emirates', 'دولة الإمارات العربية المتحدة', '971', 'AS', 'Abu Dhabi', 'AED', 'ar', NULL, NULL, 1),
(3, 'AF', 'Afghanistan', 'افغانستان', '93', 'AS', 'Kabul', 'AFN', 'ps,uz,tk', NULL, NULL, 1),
(4, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', '1268', 'NA', 'Saint John\'s', 'XCD', 'en', NULL, NULL, 1),
(5, 'AI', 'Anguilla', 'Anguilla', '1264', 'NA', 'The Valley', 'XCD', 'en', NULL, NULL, 1),
(6, 'AL', 'Albania', 'Shqipëria', '355', 'EU', 'Tirana', 'ALL', 'sq', NULL, NULL, 1),
(7, 'AM', 'Armenia', 'Հայաստան', '374', 'AS', 'Yerevan', 'AMD', 'hy,ru', NULL, NULL, 1),
(8, 'AO', 'Angola', 'Angola', '244', 'AF', 'Luanda', 'AOA', 'pt', NULL, NULL, 1),
(9, 'AQ', 'Antarctica', 'Antarctica', '672', 'AN', '', '', '', NULL, NULL, 1),
(10, 'AR', 'Argentina', 'Argentina', '54', 'SA', 'Buenos Aires', 'ARS', 'es,gn', NULL, NULL, 1),
(11, 'AS', 'American Samoa', 'American Samoa', '1684', 'OC', 'Pago Pago', 'USD', 'en,sm', NULL, NULL, 1),
(12, 'AT', 'Austria', 'Österreich', '43', 'EU', 'Vienna', 'EUR', 'de', NULL, NULL, 1),
(13, 'AU', 'Australia', 'Australia', '61', 'OC', 'Canberra', 'AUD', 'en', NULL, NULL, 1),
(14, 'AW', 'Aruba', 'Aruba', '297', 'NA', 'Oranjestad', 'AWG', 'nl,pa', NULL, NULL, 1),
(15, 'AX', 'Åland', 'Åland', '358', 'EU', 'Mariehamn', 'EUR', 'sv', NULL, NULL, 1),
(16, 'AZ', 'Azerbaijan', 'Azərbaycan', '994', 'AS', 'Baku', 'AZN', 'az', NULL, NULL, 1),
(17, 'BA', 'Bosnia and Herzegovina', 'Bosna i Hercegovina', '387', 'EU', 'Sarajevo', 'BAM', 'bs,hr,sr', NULL, NULL, 1),
(18, 'BB', 'Barbados', 'Barbados', '1246', 'NA', 'Bridgetown', 'BBD', 'en', NULL, NULL, 1),
(19, 'BD', 'Bangladesh', 'Bangladesh', '880', 'AS', 'Dhaka', 'BDT', 'bn', NULL, NULL, 1),
(20, 'BE', 'Belgium', 'België', '32', 'EU', 'Brussels', 'EUR', 'nl,fr,de', NULL, NULL, 1),
(21, 'BF', 'Burkina Faso', 'Burkina Faso', '226', 'AF', 'Ouagadougou', 'XOF', 'fr,ff', NULL, NULL, 1),
(22, 'BG', 'Bulgaria', 'България', '359', 'EU', 'Sofia', 'BGN', 'bg', NULL, NULL, 1),
(23, 'BH', 'Bahrain', '‏البحرين', '973', 'AS', 'Manama', 'BHD', 'ar', NULL, NULL, 1),
(24, 'BI', 'Burundi', 'Burundi', '257', 'AF', 'Bujumbura', 'BIF', 'fr,rn', NULL, NULL, 1),
(25, 'BJ', 'Benin', 'Bénin', '229', 'AF', 'Porto-Novo', 'XOF', 'fr', NULL, NULL, 1),
(26, 'BL', 'Saint Barthélemy', 'Saint-Barthélemy', '590', 'NA', 'Gustavia', 'EUR', 'fr', NULL, NULL, 1),
(27, 'BM', 'Bermuda', 'Bermuda', '1441', 'NA', 'Hamilton', 'BMD', 'en', NULL, NULL, 1),
(28, 'BN', 'Brunei', 'Negara Brunei Darussalam', '673', 'AS', 'Bandar Seri Begawan', 'BND', 'ms', NULL, NULL, 1),
(29, 'BO', 'Bolivia', 'Bolivia', '591', 'SA', 'Sucre', 'BOB,BOV', 'es,ay,qu', NULL, NULL, 1),
(30, 'BQ', 'Bonaire', 'Bonaire', '5997', 'NA', 'Kralendijk', 'USD', 'nl', NULL, NULL, 1),
(31, 'BR', 'Brazil', 'Brasil', '55', 'SA', 'Brasília', 'BRL', 'pt', NULL, NULL, 1),
(32, 'BS', 'Bahamas', 'Bahamas', '1242', 'NA', 'Nassau', 'BSD', 'en', NULL, NULL, 1),
(33, 'BT', 'Bhutan', 'ʼbrug-yul', '975', 'AS', 'Thimphu', 'BTN,INR', 'dz', NULL, NULL, 1),
(34, 'BV', 'Bouvet Island', 'Bouvetøya', '47', 'AN', '', 'NOK', 'no,nb,nn', NULL, NULL, 1),
(35, 'BW', 'Botswana', 'Botswana', '267', 'AF', 'Gaborone', 'BWP', 'en,tn', NULL, NULL, 1),
(36, 'BY', 'Belarus', 'Белару́сь', '375', 'EU', 'Minsk', 'BYR', 'be,ru', NULL, NULL, 1),
(37, 'BZ', 'Belize', 'Belize', '501', 'NA', 'Belmopan', 'BZD', 'en,es', NULL, NULL, 1),
(38, 'CA', 'Canada', 'Canada', '1', 'NA', 'Ottawa', 'CAD', 'en,fr', NULL, NULL, 1),
(39, 'CC', 'Cocos [Keeling] Islands', 'Cocos (Keeling) Islands', '61', 'AS', 'West Island', 'AUD', 'en', NULL, NULL, 1),
(40, 'CD', 'Democratic Republic of the Congo', 'République démocratique du Congo', '243', 'AF', 'Kinshasa', 'CDF', 'fr,ln,kg,sw,lu', NULL, NULL, 1),
(41, 'CF', 'Central African Republic', 'Ködörösêse tî Bêafrîka', '236', 'AF', 'Bangui', 'XAF', 'fr,sg', NULL, NULL, 1),
(42, 'CG', 'Republic of the Congo', 'République du Congo', '242', 'AF', 'Brazzaville', 'XAF', 'fr,ln', NULL, NULL, 1),
(43, 'CH', 'Switzerland', 'Schweiz', '41', 'EU', 'Bern', 'CHE,CHF,CHW', 'de,fr,it', NULL, NULL, 1),
(44, 'CI', 'Ivory Coast', 'Côte d\'Ivoire', '225', 'AF', 'Yamoussoukro', 'XOF', 'fr', NULL, NULL, 1),
(45, 'CK', 'Cook Islands', 'Cook Islands', '682', 'OC', 'Avarua', 'NZD', 'en', NULL, NULL, 1),
(46, 'CL', 'Chile', 'Chile', '56', 'SA', 'Santiago', 'CLF,CLP', 'es', NULL, NULL, 1),
(47, 'CM', 'Cameroon', 'Cameroon', '237', 'AF', 'Yaoundé', 'XAF', 'en,fr', NULL, NULL, 1),
(48, 'CN', 'China', '中国', '86', 'AS', 'Beijing', 'CNY', 'zh', NULL, NULL, 1),
(49, 'CO', 'Colombia', 'Colombia', '57', 'SA', 'Bogotá', 'COP', 'es', NULL, NULL, 1),
(50, 'CR', 'Costa Rica', 'Costa Rica', '506', 'NA', 'San José', 'CRC', 'es', NULL, NULL, 1),
(51, 'CU', 'Cuba', 'Cuba', '53', 'NA', 'Havana', 'CUC,CUP', 'es', NULL, NULL, 1),
(52, 'CV', 'Cape Verde', 'Cabo Verde', '238', 'AF', 'Praia', 'CVE', 'pt', NULL, NULL, 1),
(53, 'CW', 'Curacao', 'Curaçao', '5999', 'NA', 'Willemstad', 'ANG', 'nl,pa,en', NULL, NULL, 1),
(54, 'CX', 'Christmas Island', 'Christmas Island', '61', 'AS', 'Flying Fish Cove', 'AUD', 'en', NULL, NULL, 1),
(55, 'CY', 'Cyprus', 'Κύπρος', '357', 'EU', 'Nicosia', 'EUR', 'el,tr,hy', NULL, NULL, 1),
(56, 'CZ', 'Czech Republic', 'Česká republika', '420', 'EU', 'Prague', 'CZK', 'cs,sk', NULL, NULL, 1),
(57, 'DE', 'Germany', 'Deutschland', '49', 'EU', 'Berlin', 'EUR', 'de', NULL, NULL, 1),
(58, 'DJ', 'Djibouti', 'Djibouti', '253', 'AF', 'Djibouti', 'DJF', 'fr,ar', NULL, NULL, 1),
(59, 'DK', 'Denmark', 'Danmark', '45', 'EU', 'Copenhagen', 'DKK', 'da', NULL, NULL, 1),
(60, 'DM', 'Dominica', 'Dominica', '1767', 'NA', 'Roseau', 'XCD', 'en', NULL, NULL, 1),
(61, 'DO', 'Dominican Republic', 'República Dominicana', '1809,1829,1849', 'NA', 'Santo Domingo', 'DOP', 'es', NULL, NULL, 1),
(62, 'DZ', 'Algeria', 'الجزائر', '213', 'AF', 'Algiers', 'DZD', 'ar', NULL, NULL, 1),
(63, 'EC', 'Ecuador', 'Ecuador', '593', 'SA', 'Quito', 'USD', 'es', NULL, NULL, 1),
(64, 'EE', 'Estonia', 'Eesti', '372', 'EU', 'Tallinn', 'EUR', 'et', NULL, NULL, 1),
(65, 'EG', 'Egypt', 'مصر‎', '20', 'AF', 'Cairo', 'EGP', 'ar', NULL, NULL, 1),
(66, 'EH', 'Western Sahara', 'الصحراء الغربية', '212', 'AF', 'El Aaiún', 'MAD,DZD,MRU', 'es', NULL, NULL, 1),
(67, 'ER', 'Eritrea', 'ኤርትራ', '291', 'AF', 'Asmara', 'ERN', 'ti,ar,en', NULL, NULL, 1),
(68, 'ES', 'Spain', 'España', '34', 'EU', 'Madrid', 'EUR', 'es,eu,ca,gl,oc', NULL, NULL, 1),
(69, 'ET', 'Ethiopia', 'ኢትዮጵያ', '251', 'AF', 'Addis Ababa', 'ETB', 'am', NULL, NULL, 1),
(70, 'FI', 'Finland', 'Suomi', '358', 'EU', 'Helsinki', 'EUR', 'fi,sv', NULL, NULL, 1),
(71, 'FJ', 'Fiji', 'Fiji', '679', 'OC', 'Suva', 'FJD', 'en,fj,hi,ur', NULL, NULL, 1),
(72, 'FK', 'Falkland Islands', 'Falkland Islands', '500', 'SA', 'Stanley', 'FKP', 'en', NULL, NULL, 1),
(73, 'FM', 'Micronesia', 'Micronesia', '691', 'OC', 'Palikir', 'USD', 'en', NULL, NULL, 1),
(74, 'FO', 'Faroe Islands', 'Føroyar', '298', 'EU', 'Tórshavn', 'DKK', 'fo', NULL, NULL, 1),
(75, 'FR', 'France', 'France', '33', 'EU', 'Paris', 'EUR', 'fr', NULL, NULL, 1),
(76, 'GA', 'Gabon', 'Gabon', '241', 'AF', 'Libreville', 'XAF', 'fr', NULL, NULL, 1),
(77, 'GB', 'United Kingdom', 'United Kingdom', '44', 'EU', 'London', 'GBP', 'en', NULL, NULL, 1),
(78, 'GD', 'Grenada', 'Grenada', '1473', 'NA', 'St. George\'s', 'XCD', 'en', NULL, NULL, 1),
(79, 'GE', 'Georgia', 'საქართველო', '995', 'AS', 'Tbilisi', 'GEL', 'ka', NULL, NULL, 1),
(80, 'GF', 'French Guiana', 'Guyane française', '594', 'SA', 'Cayenne', 'EUR', 'fr', NULL, NULL, 1),
(81, 'GG', 'Guernsey', 'Guernsey', '44', 'EU', 'St. Peter Port', 'GBP', 'en,fr', NULL, NULL, 1),
(82, 'GH', 'Ghana', 'Ghana', '233', 'AF', 'Accra', 'GHS', 'en', NULL, NULL, 1),
(83, 'GI', 'Gibraltar', 'Gibraltar', '350', 'EU', 'Gibraltar', 'GIP', 'en', NULL, NULL, 1),
(84, 'GL', 'Greenland', 'Kalaallit Nunaat', '299', 'NA', 'Nuuk', 'DKK', 'kl', NULL, NULL, 1),
(85, 'GM', 'Gambia', 'Gambia', '220', 'AF', 'Banjul', 'GMD', 'en', NULL, NULL, 1),
(86, 'GN', 'Guinea', 'Guinée', '224', 'AF', 'Conakry', 'GNF', 'fr,ff', NULL, NULL, 1),
(87, 'GP', 'Guadeloupe', 'Guadeloupe', '590', 'NA', 'Basse-Terre', 'EUR', 'fr', NULL, NULL, 1),
(88, 'GQ', 'Equatorial Guinea', 'Guinea Ecuatorial', '240', 'AF', 'Malabo', 'XAF', 'es,fr', NULL, NULL, 1),
(89, 'GR', 'Greece', 'Ελλάδα', '30', 'EU', 'Athens', 'EUR', 'el', NULL, NULL, 1),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia', '500', 'AN', 'King Edward Point', 'GBP', 'en', NULL, NULL, 1),
(91, 'GT', 'Guatemala', 'Guatemala', '502', 'NA', 'Guatemala City', 'GTQ', 'es', NULL, NULL, 1),
(92, 'GU', 'Guam', 'Guam', '1671', 'OC', 'Hagåtña', 'USD', 'en,ch,es', NULL, NULL, 1),
(93, 'GW', 'Guinea-Bissau', 'Guiné-Bissau', '245', 'AF', 'Bissau', 'XOF', 'pt', NULL, NULL, 1),
(94, 'GY', 'Guyana', 'Guyana', '592', 'SA', 'Georgetown', 'GYD', 'en', NULL, NULL, 1),
(95, 'HK', 'Hong Kong', '香港', '852', 'AS', 'City of Victoria', 'HKD', 'zh,en', NULL, NULL, 1),
(96, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', '61', 'AN', '', 'AUD', 'en', NULL, NULL, 1),
(97, 'HN', 'Honduras', 'Honduras', '504', 'NA', 'Tegucigalpa', 'HNL', 'es', NULL, NULL, 1),
(98, 'HR', 'Croatia', 'Hrvatska', '385', 'EU', 'Zagreb', 'HRK', 'hr', NULL, NULL, 1),
(99, 'HT', 'Haiti', 'Haïti', '509', 'NA', 'Port-au-Prince', 'HTG,USD', 'fr,ht', NULL, NULL, 1),
(100, 'HU', 'Hungary', 'Magyarország', '36', 'EU', 'Budapest', 'HUF', 'hu', NULL, NULL, 1),
(101, 'ID', 'Indonesia', 'Indonesia', '62', 'AS', 'Jakarta', 'IDR', 'id', NULL, NULL, 1),
(102, 'IE', 'Ireland', 'Éire', '353', 'EU', 'Dublin', 'EUR', 'ga,en', NULL, NULL, 1),
(103, 'IL', 'Israel', 'יִשְׂרָאֵל', '972', 'AS', 'Jerusalem', 'ILS', 'he,ar', NULL, NULL, 1),
(104, 'IM', 'Isle of Man', 'Isle of Man', '44', 'EU', 'Douglas', 'GBP', 'en,gv', NULL, NULL, 1),
(105, 'IN', 'India', 'भारत', '91', 'AS', 'New Delhi', 'INR', 'hi,en', NULL, NULL, 1),
(106, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', '246', 'AS', 'Diego Garcia', 'USD', 'en', NULL, NULL, 1),
(107, 'IQ', 'Iraq', 'العراق', '964', 'AS', 'Baghdad', 'IQD', 'ar,ku', NULL, NULL, 1),
(108, 'IR', 'Iran', 'ایران', '98', 'AS', 'Tehran', 'IRR', 'fa', NULL, NULL, 1),
(109, 'IS', 'Iceland', 'Ísland', '354', 'EU', 'Reykjavik', 'ISK', 'is', NULL, NULL, 1),
(110, 'IT', 'Italy', 'Italia', '39', 'EU', 'Rome', 'EUR', 'it', NULL, NULL, 1),
(111, 'JE', 'Jersey', 'Jersey', '44', 'EU', 'Saint Helier', 'GBP', 'en,fr', NULL, NULL, 1),
(112, 'JM', 'Jamaica', 'Jamaica', '1876', 'NA', 'Kingston', 'JMD', 'en', NULL, NULL, 1),
(113, 'JO', 'Jordan', 'الأردن', '962', 'AS', 'Amman', 'JOD', 'ar', NULL, NULL, 1),
(114, 'JP', 'Japan', '日本', '81', 'AS', 'Tokyo', 'JPY', 'ja', NULL, NULL, 1),
(115, 'KE', 'Kenya', 'Kenya', '254', 'AF', 'Nairobi', 'KES', 'en,sw', NULL, NULL, 1),
(116, 'KG', 'Kyrgyzstan', 'Кыргызстан', '996', 'AS', 'Bishkek', 'KGS', 'ky,ru', NULL, NULL, 1),
(117, 'KH', 'Cambodia', 'Kâmpŭchéa', '855', 'AS', 'Phnom Penh', 'KHR', 'km', NULL, NULL, 1),
(118, 'KI', 'Kiribati', 'Kiribati', '686', 'OC', 'South Tarawa', 'AUD', 'en', NULL, NULL, 1),
(119, 'KM', 'Comoros', 'Komori', '269', 'AF', 'Moroni', 'KMF', 'ar,fr', NULL, NULL, 1),
(120, 'KN', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', '1869', 'NA', 'Basseterre', 'XCD', 'en', NULL, NULL, 1),
(121, 'KP', 'North Korea', '북한', '850', 'AS', 'Pyongyang', 'KPW', 'ko', NULL, NULL, 1),
(122, 'KR', 'South Korea', '대한민국', '82', 'AS', 'Seoul', 'KRW', 'ko', NULL, NULL, 1),
(123, 'KW', 'Kuwait', 'الكويت', '965', 'AS', 'Kuwait City', 'KWD', 'ar', NULL, NULL, 1),
(124, 'KY', 'Cayman Islands', 'Cayman Islands', '1345', 'NA', 'George Town', 'KYD', 'en', NULL, NULL, 1),
(125, 'KZ', 'Kazakhstan', 'Қазақстан', '76,77', 'AS', 'Astana', 'KZT', 'kk,ru', NULL, NULL, 1),
(126, 'LA', 'Laos', 'ສປປລາວ', '856', 'AS', 'Vientiane', 'LAK', 'lo', NULL, NULL, 1),
(127, 'LB', 'Lebanon', 'لبنان', '961', 'AS', 'Beirut', 'LBP', 'ar,fr', NULL, NULL, 1),
(128, 'LC', 'Saint Lucia', 'Saint Lucia', '1758', 'NA', 'Castries', 'XCD', 'en', NULL, NULL, 1),
(129, 'LI', 'Liechtenstein', 'Liechtenstein', '423', 'EU', 'Vaduz', 'CHF', 'de', NULL, NULL, 1),
(130, 'LK', 'Sri Lanka', 'śrī laṃkāva', '94', 'AS', 'Colombo', 'LKR', 'si,ta', NULL, NULL, 1),
(131, 'LR', 'Liberia', 'Liberia', '231', 'AF', 'Monrovia', 'LRD', 'en', NULL, NULL, 1),
(132, 'LS', 'Lesotho', 'Lesotho', '266', 'AF', 'Maseru', 'LSL,ZAR', 'en,st', NULL, NULL, 1),
(133, 'LT', 'Lithuania', 'Lietuva', '370', 'EU', 'Vilnius', 'EUR', 'lt', NULL, NULL, 1),
(134, 'LU', 'Luxembourg', 'Luxembourg', '352', 'EU', 'Luxembourg', 'EUR', 'fr,de,lb', NULL, NULL, 1),
(135, 'LV', 'Latvia', 'Latvija', '371', 'EU', 'Riga', 'EUR', 'lv', NULL, NULL, 1),
(136, 'LY', 'Libya', '‏ليبيا', '218', 'AF', 'Tripoli', 'LYD', 'ar', NULL, NULL, 1),
(137, 'MA', 'Morocco', 'المغرب', '212', 'AF', 'Rabat', 'MAD', 'ar', NULL, NULL, 1),
(138, 'MC', 'Monaco', 'Monaco', '377', 'EU', 'Monaco', 'EUR', 'fr', NULL, NULL, 1),
(139, 'MD', 'Moldova', 'Moldova', '373', 'EU', 'Chișinău', 'MDL', 'ro', NULL, NULL, 1),
(140, 'ME', 'Montenegro', 'Црна Гора', '382', 'EU', 'Podgorica', 'EUR', 'sr,bs,sq,hr', NULL, NULL, 1),
(141, 'MF', 'Saint Martin', 'Saint-Martin', '590', 'NA', 'Marigot', 'EUR', 'en,fr,nl', NULL, NULL, 1),
(142, 'MG', 'Madagascar', 'Madagasikara', '261', 'AF', 'Antananarivo', 'MGA', 'fr,mg', NULL, NULL, 1),
(143, 'MH', 'Marshall Islands', 'M̧ajeļ', '692', 'OC', 'Majuro', 'USD', 'en,mh', NULL, NULL, 1),
(144, 'MK', 'Macedonia', 'Македонија', '389', 'EU', 'Skopje', 'MKD', 'mk', NULL, NULL, 1),
(145, 'ML', 'Mali', 'Mali', '223', 'AF', 'Bamako', 'XOF', 'fr', NULL, NULL, 1),
(146, 'MM', 'Myanmar [Burma]', 'မြန်မာ', '95', 'AS', 'Naypyidaw', 'MMK', 'my', NULL, NULL, 1),
(147, 'MN', 'Mongolia', 'Монгол улс', '976', 'AS', 'Ulan Bator', 'MNT', 'mn', NULL, NULL, 1),
(148, 'MO', 'Macao', '澳門', '853', 'AS', '', 'MOP', 'zh,pt', NULL, NULL, 1),
(149, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', '1670', 'OC', 'Saipan', 'USD', 'en,ch', NULL, NULL, 1),
(150, 'MQ', 'Martinique', 'Martinique', '596', 'NA', 'Fort-de-France', 'EUR', 'fr', NULL, NULL, 1),
(151, 'MR', 'Mauritania', 'موريتانيا', '222', 'AF', 'Nouakchott', 'MRU', 'ar', NULL, NULL, 1),
(152, 'MS', 'Montserrat', 'Montserrat', '1664', 'NA', 'Plymouth', 'XCD', 'en', NULL, NULL, 1),
(153, 'MT', 'Malta', 'Malta', '356', 'EU', 'Valletta', 'EUR', 'mt,en', NULL, NULL, 1),
(154, 'MU', 'Mauritius', 'Maurice', '230', 'AF', 'Port Louis', 'MUR', 'en', NULL, NULL, 1),
(155, 'MV', 'Maldives', 'Maldives', '960', 'AS', 'Malé', 'MVR', 'dv', NULL, NULL, 1),
(156, 'MW', 'Malawi', 'Malawi', '265', 'AF', 'Lilongwe', 'MWK', 'en,ny', NULL, NULL, 1),
(157, 'MX', 'Mexico', 'México', '52', 'NA', 'Mexico City', 'MXN', 'es', NULL, NULL, 1),
(158, 'MY', 'Malaysia', 'Malaysia', '60', 'AS', 'Kuala Lumpur', 'MYR', 'ms', NULL, NULL, 1),
(159, 'MZ', 'Mozambique', 'Moçambique', '258', 'AF', 'Maputo', 'MZN', 'pt', NULL, NULL, 1),
(160, 'NA', 'Namibia', 'Namibia', '264', 'AF', 'Windhoek', 'NAD,ZAR', 'en,af', NULL, NULL, 1),
(161, 'NC', 'New Caledonia', 'Nouvelle-Calédonie', '687', 'OC', 'Nouméa', 'XPF', 'fr', NULL, NULL, 1),
(162, 'NE', 'Niger', 'Niger', '227', 'AF', 'Niamey', 'XOF', 'fr', NULL, NULL, 1),
(163, 'NF', 'Norfolk Island', 'Norfolk Island', '672', 'OC', 'Kingston', 'AUD', 'en', NULL, NULL, 1),
(164, 'NG', 'Nigeria', 'Nigeria', '234', 'AF', 'Abuja', 'NGN', 'en', NULL, NULL, 1),
(165, 'NI', 'Nicaragua', 'Nicaragua', '505', 'NA', 'Managua', 'NIO', 'es', NULL, NULL, 1),
(166, 'NL', 'Netherlands', 'Nederland', '31', 'EU', 'Amsterdam', 'EUR', 'nl', NULL, NULL, 1),
(167, 'NO', 'Norway', 'Norge', '47', 'EU', 'Oslo', 'NOK', 'no,nb,nn', NULL, NULL, 1),
(168, 'NP', 'Nepal', 'नपल', '977', 'AS', 'Kathmandu', 'NPR', 'ne', NULL, NULL, 1),
(169, 'NR', 'Nauru', 'Nauru', '674', 'OC', 'Yaren', 'AUD', 'en,na', NULL, NULL, 1),
(170, 'NU', 'Niue', 'Niuē', '683', 'OC', 'Alofi', 'NZD', 'en', NULL, NULL, 1),
(171, 'NZ', 'New Zealand', 'New Zealand', '64', 'OC', 'Wellington', 'NZD', 'en,mi', NULL, NULL, 1),
(172, 'OM', 'Oman', 'عمان', '968', 'AS', 'Muscat', 'OMR', 'ar', NULL, NULL, 1),
(173, 'PA', 'Panama', 'Panamá', '507', 'NA', 'Panama City', 'PAB,USD', 'es', NULL, NULL, 1),
(174, 'PE', 'Peru', 'Perú', '51', 'SA', 'Lima', 'PEN', 'es', NULL, NULL, 1),
(175, 'PF', 'French Polynesia', 'Polynésie française', '689', 'OC', 'Papeetē', 'XPF', 'fr', NULL, NULL, 1),
(176, 'PG', 'Papua New Guinea', 'Papua Niugini', '675', 'OC', 'Port Moresby', 'PGK', 'en', NULL, NULL, 1),
(177, 'PH', 'Philippines', 'Pilipinas', '63', 'AS', 'Manila', 'PHP', 'en', NULL, NULL, 1),
(178, 'PK', 'Pakistan', 'Pakistan', '92', 'AS', 'Islamabad', 'PKR', 'en,ur', NULL, NULL, 1),
(179, 'PL', 'Poland', 'Polska', '48', 'EU', 'Warsaw', 'PLN', 'pl', NULL, NULL, 1),
(180, 'PM', 'Saint Pierre and Miquelon', 'Saint-Pierre-et-Miquelon', '508', 'NA', 'Saint-Pierre', 'EUR', 'fr', NULL, NULL, 1),
(181, 'PN', 'Pitcairn Islands', 'Pitcairn Islands', '64', 'OC', 'Adamstown', 'NZD', 'en', NULL, NULL, 1),
(182, 'PR', 'Puerto Rico', 'Puerto Rico', '1787,1939', 'NA', 'San Juan', 'USD', 'es,en', NULL, NULL, 1),
(183, 'PS', 'Palestine', 'فلسطين', '970', 'AS', 'Ramallah', 'ILS', 'ar', NULL, NULL, 1),
(184, 'PT', 'Portugal', 'Portugal', '351', 'EU', 'Lisbon', 'EUR', 'pt', NULL, NULL, 1),
(185, 'PW', 'Palau', 'Palau', '680', 'OC', 'Ngerulmud', 'USD', 'en', NULL, NULL, 1),
(186, 'PY', 'Paraguay', 'Paraguay', '595', 'SA', 'Asunción', 'PYG', 'es,gn', NULL, NULL, 1),
(187, 'QA', 'Qatar', 'قطر', '974', 'AS', 'Doha', 'QAR', 'ar', NULL, NULL, 1),
(188, 'RE', 'Réunion', 'La Réunion', '262', 'AF', 'Saint-Denis', 'EUR', 'fr', NULL, NULL, 1),
(189, 'RO', 'Romania', 'România', '40', 'EU', 'Bucharest', 'RON', 'ro', NULL, NULL, 1),
(190, 'RS', 'Serbia', 'Србија', '381', 'EU', 'Belgrade', 'RSD', 'sr', NULL, NULL, 1),
(191, 'RU', 'Russia', 'Россия', '7', 'EU', 'Moscow', 'RUB', 'ru', NULL, NULL, 1),
(192, 'RW', 'Rwanda', 'Rwanda', '250', 'AF', 'Kigali', 'RWF', 'rw,en,fr', NULL, NULL, 1),
(193, 'SA', 'Saudi Arabia', 'العربية السعودية', '966', 'AS', 'Riyadh', 'SAR', 'ar', NULL, NULL, 1),
(194, 'SB', 'Solomon Islands', 'Solomon Islands', '677', 'OC', 'Honiara', 'SBD', 'en', NULL, NULL, 1),
(195, 'SC', 'Seychelles', 'Seychelles', '248', 'AF', 'Victoria', 'SCR', 'fr,en', NULL, NULL, 1),
(196, 'SD', 'Sudan', 'السودان', '249', 'AF', 'Khartoum', 'SDG', 'ar,en', NULL, NULL, 1),
(197, 'SE', 'Sweden', 'Sverige', '46', 'EU', 'Stockholm', 'SEK', 'sv', NULL, NULL, 1),
(198, 'SG', 'Singapore', 'Singapore', '65', 'AS', 'Singapore', 'SGD', 'en,ms,ta,zh', NULL, NULL, 1),
(199, 'SH', 'Saint Helena', 'Saint Helena', '290', 'AF', 'Jamestown', 'SHP', 'en', NULL, NULL, 1),
(200, 'SI', 'Slovenia', 'Slovenija', '386', 'EU', 'Ljubljana', 'EUR', 'sl', NULL, NULL, 1),
(201, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard og Jan Mayen', '4779', 'EU', 'Longyearbyen', 'NOK', 'no', NULL, NULL, 1),
(202, 'SK', 'Slovakia', 'Slovensko', '421', 'EU', 'Bratislava', 'EUR', 'sk', NULL, NULL, 1),
(203, 'SL', 'Sierra Leone', 'Sierra Leone', '232', 'AF', 'Freetown', 'SLL', 'en', NULL, NULL, 1),
(204, 'SM', 'San Marino', 'San Marino', '378', 'EU', 'City of San Marino', 'EUR', 'it', NULL, NULL, 1),
(205, 'SN', 'Senegal', 'Sénégal', '221', 'AF', 'Dakar', 'XOF', 'fr', NULL, NULL, 1),
(206, 'SO', 'Somalia', 'Soomaaliya', '252', 'AF', 'Mogadishu', 'SOS', 'so,ar', NULL, NULL, 1),
(207, 'SR', 'Suriname', 'Suriname', '597', 'SA', 'Paramaribo', 'SRD', 'nl', NULL, NULL, 1),
(208, 'SS', 'South Sudan', 'South Sudan', '211', 'AF', 'Juba', 'SSP', 'en', NULL, NULL, 1),
(209, 'ST', 'São Tomé and Príncipe', 'São Tomé e Príncipe', '239', 'AF', 'São Tomé', 'STN', 'pt', NULL, NULL, 1),
(210, 'SV', 'El Salvador', 'El Salvador', '503', 'NA', 'San Salvador', 'SVC,USD', 'es', NULL, NULL, 1),
(211, 'SX', 'Sint Maarten', 'Sint Maarten', '1721', 'NA', 'Philipsburg', 'ANG', 'nl,en', NULL, NULL, 1),
(212, 'SY', 'Syria', 'سوريا', '963', 'AS', 'Damascus', 'SYP', 'ar', NULL, NULL, 1),
(213, 'SZ', 'Swaziland', 'Swaziland', '268', 'AF', 'Lobamba', 'SZL', 'en,ss', NULL, NULL, 1),
(214, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', '1649', 'NA', 'Cockburn Town', 'USD', 'en', NULL, NULL, 1),
(215, 'TD', 'Chad', 'Tchad', '235', 'AF', 'N\'Djamena', 'XAF', 'fr,ar', NULL, NULL, 1),
(216, 'TF', 'French Southern Territories', 'Territoire des Terres australes et antarctiques fr', '262', 'AN', 'Port-aux-Français', 'EUR', 'fr', NULL, NULL, 1),
(217, 'TG', 'Togo', 'Togo', '228', 'AF', 'Lomé', 'XOF', 'fr', NULL, NULL, 1),
(218, 'TH', 'Thailand', 'ประเทศไทย', '66', 'AS', 'Bangkok', 'THB', 'th', NULL, NULL, 1),
(219, 'TJ', 'Tajikistan', 'Тоҷикистон', '992', 'AS', 'Dushanbe', 'TJS', 'tg,ru', NULL, NULL, 1),
(220, 'TK', 'Tokelau', 'Tokelau', '690', 'OC', 'Fakaofo', 'NZD', 'en', NULL, NULL, 1),
(221, 'TL', 'East Timor', 'Timor-Leste', '670', 'OC', 'Dili', 'USD', 'pt', NULL, NULL, 1),
(222, 'TM', 'Turkmenistan', 'Türkmenistan', '993', 'AS', 'Ashgabat', 'TMT', 'tk,ru', NULL, NULL, 1),
(223, 'TN', 'Tunisia', 'تونس', '216', 'AF', 'Tunis', 'TND', 'ar', NULL, NULL, 1),
(224, 'TO', 'Tonga', 'Tonga', '676', 'OC', 'Nuku\'alofa', 'TOP', 'en,to', NULL, NULL, 1),
(225, 'TR', 'Turkey', 'Türkiye', '90', 'AS', 'Ankara', 'TRY', 'tr', NULL, NULL, 1),
(226, 'TT', 'Trinidad and Tobago', 'Trinidad and Tobago', '1868', 'NA', 'Port of Spain', 'TTD', 'en', NULL, NULL, 1),
(227, 'TV', 'Tuvalu', 'Tuvalu', '688', 'OC', 'Funafuti', 'AUD', 'en', NULL, NULL, 1),
(228, 'TW', 'Taiwan', '臺灣', '886', 'AS', 'Taipei', 'TWD', 'zh', NULL, NULL, 1),
(229, 'TZ', 'Tanzania', 'Tanzania', '255', 'AF', 'Dodoma', 'TZS', 'sw,en', NULL, NULL, 1),
(230, 'UA', 'Ukraine', 'Україна', '380', 'EU', 'Kyiv', 'UAH', 'uk', NULL, NULL, 1),
(231, 'UG', 'Uganda', 'Uganda', '256', 'AF', 'Kampala', 'UGX', 'en,sw', NULL, NULL, 1),
(232, 'UM', 'U.S. Minor Outlying Islands', 'United States Minor Outlying Islands', '1', 'OC', '', 'USD', 'en', NULL, NULL, 1),
(233, 'US', 'United States', 'United States', '1', 'NA', 'Washington D.C.', 'USD,USN,USS', 'en', NULL, NULL, 1),
(234, 'UY', 'Uruguay', 'Uruguay', '598', 'SA', 'Montevideo', 'UYI,UYU', 'es', NULL, NULL, 1),
(235, 'UZ', 'Uzbekistan', 'O‘zbekiston', '998', 'AS', 'Tashkent', 'UZS', 'uz,ru', NULL, NULL, 1),
(236, 'VA', 'Vatican City', 'Vaticano', '39066,379', 'EU', 'Vatican City', 'EUR', 'it,la', NULL, NULL, 1),
(237, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '1784', 'NA', 'Kingstown', 'XCD', 'en', NULL, NULL, 1),
(238, 'VE', 'Venezuela', 'Venezuela', '58', 'SA', 'Caracas', 'VES', 'es', NULL, NULL, 1),
(239, 'VG', 'British Virgin Islands', 'British Virgin Islands', '1284', 'NA', 'Road Town', 'USD', 'en', NULL, NULL, 1),
(240, 'VI', 'U.S. Virgin Islands', 'United States Virgin Islands', '1340', 'NA', 'Charlotte Amalie', 'USD', 'en', NULL, NULL, 1),
(241, 'VN', 'Vietnam', 'Việt Nam', '84', 'AS', 'Hanoi', 'VND', 'vi', NULL, NULL, 1),
(242, 'VU', 'Vanuatu', 'Vanuatu', '678', 'OC', 'Port Vila', 'VUV', 'bi,en,fr', NULL, NULL, 1),
(243, 'WF', 'Wallis and Futuna', 'Wallis et Futuna', '681', 'OC', 'Mata-Utu', 'XPF', 'fr', NULL, NULL, 1),
(244, 'WS', 'Samoa', 'Samoa', '685', 'OC', 'Apia', 'WST', 'sm,en', NULL, NULL, 1),
(245, 'XK', 'Kosovo', 'Republika e Kosovës', '377,381,383,386', 'EU', 'Pristina', 'EUR', 'sq,sr', NULL, NULL, 1),
(246, 'YE', 'Yemen', 'اليَمَن', '967', 'AS', 'Sana\'a', 'YER', 'ar', NULL, NULL, 1),
(247, 'YT', 'Mayotte', 'Mayotte', '262', 'AF', 'Mamoudzou', 'EUR', 'fr', NULL, NULL, 1),
(248, 'ZA', 'South Africa', 'South Africa', '27', 'AF', 'Pretoria', 'ZAR', 'af,en,nr,st,ss,tn,ts,ve,xh,zu', NULL, NULL, 1),
(249, 'ZM', 'Zambia', 'Zambia', '260', 'AF', 'Lusaka', 'ZMK', 'en', NULL, NULL, 1),
(250, 'ZW', 'Zimbabwe', 'Zimbabwe', '263', 'AF', 'Harare', 'USD,ZAR,BWP,GBP,AUD,CNY,INR,JP', 'en,sn,nd', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `native`, `rtl`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'af', 'Afrikaans', 'Afrikaans', 0, NULL, NULL, 1),
(2, 'am', 'Amharic', 'አማርኛ', 0, NULL, NULL, 1),
(3, 'ar', 'Arabic', 'العربية', 1, NULL, NULL, 1),
(4, 'ay', 'Aymara', 'Aymar', 0, NULL, NULL, 1),
(5, 'az', 'Azerbaijani', 'Azərbaycanca / آذربايجان', 0, NULL, NULL, 1),
(6, 'be', 'Belarusian', 'Беларуская', 0, NULL, NULL, 1),
(7, 'bg', 'Bulgarian', 'Български', 0, NULL, NULL, 1),
(8, 'bi', 'Bislama', 'Bislama', 0, NULL, NULL, 1),
(9, 'bn', 'Bengali', 'বাংলা', 0, NULL, NULL, 1),
(10, 'bs', 'Bosnian', 'Bosanski', 0, NULL, NULL, 1),
(11, 'ca', 'Catalan', 'Català', 0, NULL, NULL, 1),
(12, 'ch', 'Chamorro', 'Chamoru', 0, NULL, NULL, 1),
(13, 'cs', 'Czech', 'Česky', 0, NULL, NULL, 1),
(14, 'da', 'Danish', 'Dansk', 0, NULL, NULL, 1),
(15, 'de', 'German', 'Deutsch', 0, NULL, NULL, 1),
(16, 'dv', 'Divehi', 'ދިވެހިބަސް', 1, NULL, NULL, 1),
(17, 'dz', 'Dzongkha', 'ཇོང་ཁ', 0, NULL, NULL, 1),
(18, 'el', 'Greek', 'Ελληνικά', 0, NULL, NULL, 1),
(19, 'en', 'English', 'English', 0, NULL, NULL, 1),
(20, 'es', 'Spanish', 'Español', 0, NULL, NULL, 1),
(21, 'et', 'Estonian', 'Eesti', 0, NULL, NULL, 1),
(22, 'eu', 'Basque', 'Euskara', 0, NULL, NULL, 1),
(23, 'fa', 'Persian', 'فارسی', 1, NULL, NULL, 1),
(24, 'ff', 'Peul', 'Fulfulde', 0, NULL, NULL, 1),
(25, 'fi', 'Finnish', 'Suomi', 0, NULL, NULL, 1),
(26, 'fj', 'Fijian', 'Na Vosa Vakaviti', 0, NULL, NULL, 1),
(27, 'fo', 'Faroese', 'Føroyskt', 0, NULL, NULL, 1),
(28, 'fr', 'French', 'Français', 0, NULL, NULL, 1),
(29, 'ga', 'Irish', 'Gaeilge', 0, NULL, NULL, 1),
(30, 'gl', 'Galician', 'Galego', 0, NULL, NULL, 1),
(31, 'gn', 'Guarani', 'Avañe\'ẽ', 0, NULL, NULL, 1),
(32, 'gv', 'Manx', 'Gaelg', 0, NULL, NULL, 1),
(33, 'he', 'Hebrew', 'עברית', 1, NULL, NULL, 1),
(34, 'hi', 'Hindi', 'हिन्दी', 0, NULL, NULL, 1),
(35, 'hr', 'Croatian', 'Hrvatski', 0, NULL, NULL, 1),
(36, 'ht', 'Haitian', 'Krèyol ayisyen', 0, NULL, NULL, 1),
(37, 'hu', 'Hungarian', 'Magyar', 0, NULL, NULL, 1),
(38, 'hy', 'Armenian', 'Հայերեն', 0, NULL, NULL, 1),
(39, 'id', 'Indonesian', 'Bahasa Indonesia', 0, NULL, NULL, 1),
(40, 'is', 'Icelandic', 'Íslenska', 0, NULL, NULL, 1),
(41, 'it', 'Italian', 'Italiano', 0, NULL, NULL, 1),
(42, 'ja', 'Japanese', '日本語', 0, NULL, NULL, 1),
(43, 'ka', 'Georgian', 'ქართული', 0, NULL, NULL, 1),
(44, 'kg', 'Kongo', 'KiKongo', 0, NULL, NULL, 1),
(45, 'kk', 'Kazakh', 'Қазақша', 0, NULL, NULL, 1),
(46, 'kl', 'Greenlandic', 'Kalaallisut', 0, NULL, NULL, 1),
(47, 'km', 'Cambodian', 'ភាសាខ្មែរ', 0, NULL, NULL, 1),
(48, 'ko', 'Korean', '한국어', 0, NULL, NULL, 1),
(49, 'ku', 'Kurdish', 'Kurdî / كوردی', 1, NULL, NULL, 1),
(50, 'ky', 'Kirghiz', 'Kırgızca / Кыргызча', 0, NULL, NULL, 1),
(51, 'la', 'Latin', 'Latina', 0, NULL, NULL, 1),
(52, 'lb', 'Luxembourgish', 'Lëtzebuergesch', 0, NULL, NULL, 1),
(53, 'ln', 'Lingala', 'Lingála', 0, NULL, NULL, 1),
(54, 'lo', 'Laotian', 'ລາວ / Pha xa lao', 0, NULL, NULL, 1),
(55, 'lt', 'Lithuanian', 'Lietuvių', 0, NULL, NULL, 1),
(56, 'lu', '', '', 0, NULL, NULL, 1),
(57, 'lv', 'Latvian', 'Latviešu', 0, NULL, NULL, 1),
(58, 'mg', 'Malagasy', 'Malagasy', 0, NULL, NULL, 1),
(59, 'mh', 'Marshallese', 'Kajin Majel / Ebon', 0, NULL, NULL, 1),
(60, 'mi', 'Maori', 'Māori', 0, NULL, NULL, 1),
(61, 'mk', 'Macedonian', 'Македонски', 0, NULL, NULL, 1),
(62, 'mn', 'Mongolian', 'Монгол', 0, NULL, NULL, 1),
(63, 'ms', 'Malay', 'Bahasa Melayu', 0, NULL, NULL, 1),
(64, 'mt', 'Maltese', 'bil-Malti', 0, NULL, NULL, 1),
(65, 'my', 'Burmese', 'မြန်မာစာ', 0, NULL, NULL, 1),
(66, 'na', 'Nauruan', 'Dorerin Naoero', 0, NULL, NULL, 1),
(67, 'nb', '', '', 0, NULL, NULL, 1),
(68, 'nd', 'North Ndebele', 'Sindebele', 0, NULL, NULL, 1),
(69, 'ne', 'Nepali', 'नेपाली', 0, NULL, NULL, 1),
(70, 'nl', 'Dutch', 'Nederlands', 0, NULL, NULL, 1),
(71, 'nn', 'Norwegian Nynorsk', 'Norsk (nynorsk)', 0, NULL, NULL, 1),
(72, 'no', 'Norwegian', 'Norsk (bokmål / riksmål)', 0, NULL, NULL, 1),
(73, 'nr', 'South Ndebele', 'isiNdebele', 0, NULL, NULL, 1),
(74, 'ny', 'Chichewa', 'Chi-Chewa', 0, NULL, NULL, 1),
(75, 'oc', 'Occitan', 'Occitan', 0, NULL, NULL, 1),
(76, 'pa', 'Panjabi / Punjabi', 'ਪੰਜਾਬੀ / पंजाबी / پنجابي', 0, NULL, NULL, 1),
(77, 'pl', 'Polish', 'Polski', 0, NULL, NULL, 1),
(78, 'ps', 'Pashto', 'پښتو', 1, NULL, NULL, 1),
(79, 'pt', 'Portuguese', 'Português', 0, NULL, NULL, 1),
(80, 'qu', 'Quechua', 'Runa Simi', 0, NULL, NULL, 1),
(81, 'rn', 'Kirundi', 'Kirundi', 0, NULL, NULL, 1),
(82, 'ro', 'Romanian', 'Română', 0, NULL, NULL, 1),
(83, 'ru', 'Russian', 'Русский', 0, NULL, NULL, 1),
(84, 'rw', 'Rwandi', 'Kinyarwandi', 0, NULL, NULL, 1),
(85, 'sg', 'Sango', 'Sängö', 0, NULL, NULL, 1),
(86, 'si', 'Sinhalese', 'සිංහල', 0, NULL, NULL, 1),
(87, 'sk', 'Slovak', 'Slovenčina', 0, NULL, NULL, 1),
(88, 'sl', 'Slovenian', 'Slovenščina', 0, NULL, NULL, 1),
(89, 'sm', 'Samoan', 'Gagana Samoa', 0, NULL, NULL, 1),
(90, 'sn', 'Shona', 'chiShona', 0, NULL, NULL, 1),
(91, 'so', 'Somalia', 'Soomaaliga', 0, NULL, NULL, 1),
(92, 'sq', 'Albanian', 'Shqip', 0, NULL, NULL, 1),
(93, 'sr', 'Serbian', 'Српски', 0, NULL, NULL, 1),
(94, 'ss', 'Swati', 'SiSwati', 0, NULL, NULL, 1),
(95, 'st', 'Southern Sotho', 'Sesotho', 0, NULL, NULL, 1),
(96, 'sv', 'Swedish', 'Svenska', 0, NULL, NULL, 1),
(97, 'sw', 'Swahili', 'Kiswahili', 0, NULL, NULL, 1),
(98, 'ta', 'Tamil', 'தமிழ்', 0, NULL, NULL, 1),
(99, 'tg', 'Tajik', 'Тоҷикӣ', 0, NULL, NULL, 1),
(100, 'th', 'Thai', 'ไทย / Phasa Thai', 0, NULL, NULL, 1),
(101, 'ti', 'Tigrinya', 'ትግርኛ', 0, NULL, NULL, 1),
(102, 'tk', 'Turkmen', 'Туркмен / تركمن', 0, NULL, NULL, 1),
(103, 'tn', 'Tswana', 'Setswana', 0, NULL, NULL, 1),
(104, 'to', 'Tonga', 'Lea Faka-Tonga', 0, NULL, NULL, 1),
(105, 'tr', 'Turkish', 'Türkçe', 0, NULL, NULL, 1),
(106, 'ts', 'Tsonga', 'Xitsonga', 0, NULL, NULL, 1),
(107, 'uk', 'Ukrainian', 'Українська', 0, NULL, NULL, 1),
(108, 'ur', 'Urdu', 'اردو', 1, NULL, NULL, 1),
(109, 'uz', 'Uzbek', 'Ўзбек', 0, NULL, NULL, 1),
(110, 've', 'Venda', 'Tshivenḓa', 0, NULL, NULL, 1),
(111, 'vi', 'Vietnamese', 'Tiếng Việt', 0, NULL, NULL, 1),
(112, 'xh', 'Xhosa', 'isiXhosa', 0, NULL, NULL, 1),
(113, 'zh', 'Chinese', '中文', 0, NULL, NULL, 1),
(114, 'zu', 'Zulu', 'isiZulu', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(166, '2014_10_12_100000_create_password_resets_table', 1),
(167, '2014_12_01_000001_create_sm_schools_table', 1),
(168, '2014_12_01_000002_create_roles_table', 1),
(169, '2014_12_01_000003_create_users_table', 1),
(170, '2014_12_01_000004_create_sm_base_groups_table', 1),
(171, '2014_12_01_000005_create_sm_base_setups_table', 1),
(172, '2014_12_01_000006_create_sm_classes_table', 1),
(173, '2014_12_01_000007_create_sm_sections_table', 1),
(174, '2014_12_01_000008_create_sm_class_sections_table', 1),
(175, '2014_12_01_000009_create_sm_subjects_table', 1),
(176, '2014_12_01_000010_create_sm_visitors_table', 1),
(177, '2014_12_01_000011_create_sm_fees_groups_table', 1),
(178, '2014_12_01_000012_create_sm_fees_types_table', 1),
(179, '2014_12_01_000013_create_sm_fees_discounts_table', 1),
(180, '2014_12_01_000014_create_sm_income_heads_table', 1),
(181, '2014_12_01_000015_create_sm_chart_of_accounts_table', 1),
(182, '2014_12_01_000016_create_sm_bank_accounts_table', 1),
(183, '2014_12_01_000017_create_sm_payment_gateway_settings_table', 1),
(184, '2014_12_01_000018_create_sm_payment_methhods_table', 1),
(185, '2014_12_01_000019_create_sm_add_incomes_table', 1),
(186, '2014_12_01_000020_create_sm_student_groups_table', 1),
(187, '2014_12_01_000021_create_sm_academic_years_table', 1),
(188, '2014_12_01_000022_create_sm_sessions_table', 1),
(189, '2014_12_01_000023_create_sm_dormitory_lists_table', 1),
(190, '2014_12_01_000024_create_sm_room_types_table', 1),
(191, '2014_12_01_000025_create_sm_room_lists_table', 1),
(192, '2014_12_01_000026_create_sm_designations_table', 1),
(193, '2014_12_01_000027_create_sm_human_departments_table', 1),
(194, '2014_12_01_000028_create_sm_staffs_table', 1),
(195, '2014_12_01_000029_create_sm_vehicles_table', 1),
(196, '2014_12_01_000030_create_sm_routes_table', 1),
(197, '2014_12_01_000031_create_sm_instructions_table', 1),
(198, '2014_12_01_000032_create_sm_question_levels_table', 1),
(199, '2014_12_01_000033_create_sm_question_groups_table', 1),
(200, '2014_12_01_000034_create_sm_question_banks_table', 1),
(201, '2014_12_01_000035_create_sm_online_exams_table', 1),
(202, '2014_12_01_000036_create_sm_exam_types_table', 1),
(203, '2014_12_01_000037_create_sm_marks_grades_table', 1),
(204, '2014_12_01_000038_create_sm_exams_table', 1),
(205, '2014_12_01_000039_create_sm_hourly_rates_table', 1),
(206, '2014_12_01_000040_create_sm_leave_types_table', 1),
(207, '2014_12_01_000041_create_sm_leave_defines_table', 1),
(208, '2014_12_01_000042_create_sm_leave_requests_table', 1),
(209, '2014_12_01_000043_create_sm_expense_heads_table', 1),
(210, '2014_12_01_000044_create_sm_add_expenses_table', 1),
(211, '2014_12_01_000045_create_sm_fees_masters_table', 1),
(212, '2014_12_01_000046_create_sm_setup_admins_table', 1),
(213, '2014_12_01_000047_create_sm_complaints_table', 1),
(214, '2014_12_01_000048_create_sm_postal_receives_table', 1),
(215, '2014_12_01_000049_create_sm_postal_dispatches_table', 1),
(216, '2014_12_01_000050_create_sm_phone_call_logs_table', 1),
(217, '2014_12_01_000051_create_sm_student_categories_table', 1),
(218, '2014_12_01_000052_create_sm_parents_table', 1),
(219, '2014_12_01_000054_create_sm_students_table', 1),
(220, '2014_12_01_000055_create_sm_student_attendances_table', 1),
(221, '2014_12_01_000056_create_sm_student_promotions_table', 1),
(222, '2014_12_01_000057_create_sm_staff_attendences_table', 1),
(223, '2014_12_01_000058_create_sm_student_homeworks_table', 1),
(224, '2014_12_01_000059_create_sm_teacher_upload_contents_table', 1),
(225, '2014_12_01_000060_create_sm_hr_salary_templates_table', 1),
(226, '2014_12_01_000061_create_sm_hr_payroll_generates_table', 1),
(227, '2014_12_01_000062_create_sm_exam_marks_registers_table', 1),
(228, '2014_12_01_000063_create_sm_marks_send_sms_table', 1),
(229, '2014_12_01_000064_create_sm_class_routines_table', 1),
(230, '2014_12_01_000064_create_sm_class_times_table', 1),
(231, '2014_12_01_000065_create_languages_table', 1),
(232, '2014_12_01_000065_create_sm_assign_subjects_table', 1),
(233, '2014_12_01_000066_create_sm_modules_table', 1),
(234, '2014_12_01_000067_create_sm_languages_table', 1),
(235, '2014_12_01_000068_create_sm_date_formats_table', 1),
(236, '2014_12_01_000069_create_sm_news_categories_table', 1),
(237, '2018_12_04_050352_create_sm_notice_boards_table', 1),
(238, '2018_12_04_051648_create_sm_send_messages_table', 1),
(239, '2018_12_04_060828_create_sm_events_table', 1),
(240, '2018_12_04_062330_create_sm_holidays_table', 1),
(241, '2018_12_04_062714_create_sm_book_categories_table', 1),
(242, '2018_12_04_063012_create_sm_books_table', 1),
(243, '2018_12_04_075138_create_sm_library_members_table', 1),
(244, '2018_12_04_075911_create_sm_book_issues_table', 1),
(245, '2018_12_13_093741_create_sm_fees_carry_forwards_table', 1),
(246, '2018_12_17_104146_create_sm_fees_assigns_table', 1),
(247, '2018_12_17_111529_create_sm_hr_payroll_earn_deducs_table', 1),
(248, '2018_12_20_064256_create_sm_fees_assign_discounts_table', 1),
(249, '2018_12_20_090159_create_sm_fees_payments_table', 1),
(250, '2018_12_24_052328_create_sm_homeworks_table', 1),
(251, '2018_12_26_084518_create_sm_homework_students_table', 1),
(252, '2018_12_28_054159_create_sm_upload_contents_table', 1),
(253, '2018_12_28_075918_create_sm_content_types_table', 1),
(254, '2018_12_28_122146_create_sm_assign_class_teachers_table', 1),
(255, '2018_12_28_122205_create_sm_class_teachers_table', 1),
(256, '2018_12_31_112538_create_sm_exam_schedules_table', 1),
(257, '2018_12_31_112600_create_sm_exam_schedule_subjects_table', 1),
(258, '2019_01_02_061148_create_sm_marks_registers_table', 1),
(259, '2019_01_02_061238_create_sm_marks_register_children_table', 1),
(260, '2019_01_03_105718_create_sm_class_rooms_table', 1),
(261, '2019_01_06_060144_create_sm_seat_plans_table', 1),
(262, '2019_01_06_060213_create_sm_seat_plan_children_table', 1),
(263, '2019_01_07_132108_create_sm_exam_attendances_table', 1),
(264, '2019_01_07_132220_create_sm_exam_attendance_children_table', 1),
(265, '2019_01_09_101421_create_sm_online_exam_questions_table', 1),
(266, '2019_01_09_101533_create_sm_online_exam_question_mu_options_table', 1),
(267, '2019_01_10_050231_create_sm_item_categories_table', 1),
(268, '2019_01_10_050645_create_sm_items_table', 1),
(269, '2019_01_10_054622_create_sm_item_stores_table', 1),
(270, '2019_01_10_070859_create_sm_suppliers_table', 1),
(271, '2019_01_10_112518_create_sm_item_receives_table', 1),
(272, '2019_01_12_104449_create_sm_item_receive_children_table', 1),
(273, '2019_01_13_113100_create_sm_online_exam_marks_table', 1),
(274, '2019_01_14_061003_create_sm_assign_vehicles_table', 1),
(275, '2019_01_16_065238_create_sm_module_links_table', 1),
(276, '2019_01_16_065239_create_sm_role_permissions_table', 1),
(277, '2019_01_19_094137_create_sm_inventory_payments_table', 1),
(278, '2019_01_21_063031_create_sm_student_excel_formats_table', 1),
(279, '2019_01_21_131008_create_sm_item_sells_table', 1),
(280, '2019_01_22_104243_create_sm_item_sell_children_table', 1),
(281, '2019_01_23_121931_create_sm_item_issues_table', 1),
(282, '2019_01_26_054046_create_sm_sms_gateways_table', 1),
(283, '2019_01_30_122524_create_sm_student_documents_table', 1),
(284, '2019_01_31_052142_create_sm_student_timelines_table', 1),
(285, '2019_01_31_101401_create_sm_question_bank_mu_options_table', 1),
(286, '2019_02_02_043028_create_sm_online_exam_question_assigns_table', 1),
(287, '2019_02_02_112647_create_sm_student_take_online_exams_table', 1),
(288, '2019_02_02_112719_create_sm_student_take_online_exam_questions_table', 1),
(289, '2019_02_02_115540_create_sm_student_take_onln_ex_ques_options_table', 1),
(290, '2019_02_09_050800_create_sm_email_sms_logs_table', 1),
(291, '2019_02_10_125119_create_sm_general_settings_table', 1),
(292, '2019_02_11_093834_create_sm_user_logs_table', 1),
(293, '2019_02_12_064024_create_sm_email_settings_table', 1),
(294, '2019_02_16_082050_create_sm_student_certificates_table', 1),
(295, '2019_02_17_124203_create_sm_student_id_cards_table', 1),
(296, '2019_02_24_124115_create_sm_to_dos_table', 1),
(297, '2019_03_13_075602_create_sm_admission_queries_table', 1),
(298, '2019_03_14_075324_create_sm_admission_query_followups_table', 1),
(299, '2019_04_04_124508_create_sm_backups_table', 1),
(300, '2019_04_10_054237_create_sm_temporary_meritlist', 1),
(301, '2019_04_10_054237_create_sm_temporary_meritlists', 1),
(302, '2019_04_13_062212_create_sm_exam_setups_table', 1),
(303, '2019_04_15_055616_create_sm_mark_stores_table', 1),
(304, '2019_04_17_101844_create_sm_result_stores_table', 1),
(305, '2019_04_21_071626_create_sm_class_routine_updates_table', 1),
(306, '2019_04_23_051315_create_sm_weekends_table', 1),
(307, '2019_04_25_164649_create_sm_countries_table', 1),
(308, '2019_04_27_121353_create_sm_language_phrases_table', 1),
(309, '2019_04_28_074534_create_sm_notifications_table', 1),
(310, '2019_04_30_181622_create_continents_table', 1),
(311, '2019_04_30_181730_create_countries_table', 1),
(312, '2019_05_07_103627_create_sm_currencies_table', 1),
(313, '2019_05_26_095459_create_sm_news_table', 1),
(314, '2019_05_27_103844_create_sm_testimonials_table', 1),
(315, '2019_06_01_113053_create_sm_contact_pages_table', 1),
(316, '2019_06_01_165107_create_sm_contact_messages_table', 1),
(317, '2019_06_10_155041_create_sm_product_purchases_table', 1),
(318, '2019_06_11_112109_create_sm_about_pages_table', 1),
(319, '2019_06_12_143430_create_sm_courses_table', 1),
(320, '2019_07_17_182142_create_sm_dashboard_settings_table', 1),
(321, '2019_07_18_141858_create_sm_background_settings_table', 1),
(322, '2019_07_20_151115_create_sm_custom_links_table', 1),
(323, '2019_07_20_183407_create_sm_frontend_persmissions_table', 1),
(324, '2019_07_21_110814_create_sm_home_page_settings_table', 1),
(325, '2019_09_01_171428_create_sm_system_versions_table', 1),
(326, '2019_09_06_113029_create_continets_table', 1),
(327, '2019_09_09_142112_create_sm_styles_table', 1),
(328, '2019_09_25_183656_create_sm_module_permissions_table', 1),
(329, '2019_09_26_115256_create_sm_module_permission_assigns_table', 1),
(330, '2019_10_16_160104_create_sm_time_zones_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'System',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `type`, `active_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Super admin', 'System', 1, '1', '1', NULL, NULL, 1),
(2, 'Student', 'System', 1, '1', '1', NULL, NULL, 1),
(3, 'Parents', 'System', 1, '1', '1', NULL, NULL, 1),
(4, 'Teacher', 'System', 1, '1', '1', NULL, NULL, 1),
(5, 'Admin', 'System', 1, '1', '1', NULL, NULL, 1),
(6, 'Accountant', 'System', 1, '1', '1', NULL, NULL, 1),
(7, 'Receptionist', 'System', 1, '1', '1', NULL, NULL, 1),
(8, 'Librarian', 'System', 1, '1', '1', NULL, NULL, 1),
(9, 'Driver', 'System', 1, '1', '1', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_about_pages`
--

CREATE TABLE `sm_about_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `main_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_about_pages`
--

INSERT INTO `sm_about_pages` (`id`, `created_at`, `updated_at`, `title`, `description`, `main_title`, `main_description`, `image`, `main_image`, `button_text`, `button_url`, `active_status`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, NULL, 'About Infix', 'Lisus consequat sapien metus dis urna, facilisi. Nonummy rutrum eu lacinia platea a, ipsum parturient, orci tristique. Nisi diam natoque.', 'Under Graduate Education', 'INFIX has all in one place. You’ll find everything what you are looking into education management system software. We care! User will never bothered in our real eye catchy user friendly UI & UX  Interface design. You know! Smart Idea always comes to well planners. And Our INFIX is Smart for its Well Documentation. Explore in new support world! It’s now faster & quicker. You’ll find us on Support Ticket, Email, Skype, WhatsApp.', 'public/uploads/about_page/about.jpg', 'public/uploads/about_page/about-img.jpg', 'Learn More About Us', 'about', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_academic_years`
--

CREATE TABLE `sm_academic_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_academic_years`
--

INSERT INTO `sm_academic_years` (`id`, `year`, `title`, `starting_date`, `ending_date`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2019', 'Academic Year 2019', '2019-01-01', '2019-12-31', 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(2, '2020', 'Academic Year 2020', '2020-01-01', '2020-12-31', 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(3, '2021', 'Academic Year 2021', '2021-01-01', '2021-12-31', 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(4, '2022', 'Academic Year 2022', '2022-01-01', '2022-12-31', 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(5, '2023', 'Academic Year 2023', '2023-01-01', '2023-12-31', 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(6, '2024', 'Academic Year 2024', '2024-01-01', '2024-12-31', 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_add_expenses`
--

CREATE TABLE `sm_add_expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expense_head_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_add_expenses`
--

INSERT INTO `sm_add_expenses` (`id`, `name`, `date`, `amount`, `file`, `description`, `active_status`, `created_at`, `updated_at`, `expense_head_id`, `account_id`, `payment_method_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'ele bill', '2019-12-03', 2395.00, 'public/uploads/addExpense/01fc8ac65f0e6138a5f16d8c00d82a06.docx', 'ele bill', 1, '2019-12-03 17:29:59', '2019-12-03 17:29:59', 4, NULL, 1, 1, 1, 1),
(2, 'bill', '2019-12-03', 10500.00, 'public/uploads/addExpense/54884962afa9783e52215af98957439d.docx', 'ele bill', 1, '2019-12-03 17:31:54', '2019-12-03 17:31:54', 4, NULL, 1, 1, 1, 1),
(3, 'Bills', '2019-12-30', 30000.00, '', NULL, 1, '2019-12-30 21:33:34', '2019-12-30 21:33:34', 4, NULL, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_add_incomes`
--

CREATE TABLE `sm_add_incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `income_head_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_add_incomes`
--

INSERT INTO `sm_add_incomes` (`id`, `name`, `date`, `amount`, `file`, `description`, `active_status`, `created_at`, `updated_at`, `income_head_id`, `account_id`, `payment_method_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Tanzila', '2019-12-03', 2000.00, 'public/uploads/add_income/4ba4c2b4cfc939bf8498513a8dca94bb.docx', 'late fee', 1, '2019-12-03 17:24:26', '2019-12-03 17:24:26', 3, NULL, 1, 1, 1, 1),
(2, 'hassan', '2019-12-03', 3000.00, 'public/uploads/add_income/8f95826a5f0b3f943205ea44c7f0da1e.docx', 'monthly fee', 1, '2019-12-03 17:26:02', '2019-12-03 17:26:02', 3, NULL, 1, 1, 1, 1),
(3, 'Shafaq', '2019-12-03', 5000.00, 'public/uploads/add_income/217441c7b053dffb7371a289193694e7.docx', 'addmission fee', 1, '2019-12-03 17:27:04', '2019-12-03 17:27:04', 1, NULL, 1, 1, 1, 1),
(4, 'Shafaq', '2019-12-03', 5000.00, 'public/uploads/add_income/a51e31f9ba59afd8dfc04fe5992f36e6.docx', 'addmission fee', 1, '2019-12-03 17:27:08', '2019-12-03 17:27:08', 1, NULL, 1, 1, 1, 1),
(5, 'ali', '2019-12-03', 23.00, 'public/uploads/add_income/d4e684e7daa65885dce8bc1bb64ad32e.docx', 'donation', 1, '2019-12-03 17:36:22', '2019-12-03 17:36:22', 1, NULL, 1, 1, 1, 1),
(6, 'imran', '2020-01-02', 33000.00, '', NULL, 1, '2020-01-02 20:11:48', '2020-01-02 20:11:48', 1, NULL, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_admission_queries`
--

CREATE TABLE `sm_admission_queries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `next_follow_up_date` date DEFAULT NULL,
  `assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `no_of_child` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_admission_queries`
--

INSERT INTO `sm_admission_queries` (`id`, `name`, `phone`, `email`, `address`, `description`, `date`, `follow_up_date`, `next_follow_up_date`, `assigned`, `reference`, `source`, `no_of_child`, `active_status`, `created_at`, `updated_at`, `class`, `created_by`, `updated_by`, `school_id`) VALUES
(2, 'Faran Azmat', '0123456789', 'Naumanijaz299@gmail.com', 'DHA Phase 4', NULL, '2020-01-05', '2020-01-20', '2020-01-22', NULL, NULL, 3, 1, 1, '2020-01-16 17:19:03', '2020-01-16 17:20:06', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_admission_query_followups`
--

CREATE TABLE `sm_admission_query_followups` (
  `id` int(10) UNSIGNED NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admission_query_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_admission_query_followups`
--

INSERT INTO `sm_admission_query_followups` (`id`, `response`, `note`, `date`, `active_status`, `created_at`, `updated_at`, `admission_query_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'positive', NULL, NULL, 1, '2020-01-16 17:20:06', '2020-01-16 17:20:06', 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_assign_class_teachers`
--

CREATE TABLE `sm_assign_class_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_assign_class_teachers`
--

INSERT INTO `sm_assign_class_teachers` (`id`, `active_status`, `created_at`, `updated_at`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-12-26 16:35:12', '2020-01-13 23:32:27', 1, 3, 1, 1, 1),
(4, 1, '2019-12-30 16:53:08', '2019-12-30 16:53:08', 2, 1, 1, 1, 1),
(5, 1, '2020-01-01 19:39:34', '2020-01-01 19:39:34', 3, 1, 1, 1, 1),
(6, 1, '2020-01-09 22:00:13', '2020-01-09 22:00:13', 2, 1, 1, 1, 1),
(7, 1, '2020-01-16 22:01:09', '2020-01-16 22:01:09', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_assign_subjects`
--

CREATE TABLE `sm_assign_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_assign_subjects`
--

INSERT INTO `sm_assign_subjects` (`id`, `active_status`, `created_at`, `updated_at`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `created_by`, `updated_by`, `school_id`) VALUES
(5, 1, NULL, NULL, 2, 1, 2, 2, 1, 1, 1),
(6, 1, NULL, NULL, 2, 1, 2, 3, 1, 1, 1),
(105, 1, '2020-01-13 23:35:57', '2020-01-13 23:35:57', 17, 1, 3, 3, 1, 1, 1),
(104, 1, '2020-01-13 23:35:57', '2020-01-13 23:35:57', 17, 1, 3, 2, 1, 1, 1),
(11, 1, NULL, NULL, 2, 1, 4, 2, 1, 1, 1),
(12, 1, NULL, NULL, 2, 1, 4, 3, 1, 1, 1),
(14, 1, NULL, NULL, 2, 1, 5, 2, 1, 1, 1),
(15, 1, NULL, NULL, 2, 1, 5, 3, 1, 1, 1),
(98, 1, '2020-01-09 23:32:53', '2020-01-09 23:32:53', 17, 2, 1, 3, 1, 1, 1),
(97, 1, '2020-01-09 23:32:53', '2020-01-09 23:32:53', 17, 2, 1, 2, 1, 1, 1),
(20, 1, NULL, NULL, 2, 2, 2, 2, 1, 1, 1),
(21, 1, NULL, NULL, 2, 2, 2, 3, 1, 1, 1),
(23, 1, NULL, NULL, 2, 2, 3, 2, 1, 1, 1),
(24, 1, NULL, NULL, 2, 2, 3, 3, 1, 1, 1),
(26, 1, NULL, NULL, 2, 2, 4, 2, 1, 1, 1),
(27, 1, NULL, NULL, 2, 2, 4, 3, 1, 1, 1),
(29, 1, NULL, NULL, 2, 2, 5, 2, 1, 1, 1),
(30, 1, NULL, NULL, 2, 2, 5, 3, 1, 1, 1),
(32, 1, NULL, NULL, 2, 3, 1, 2, 1, 1, 1),
(33, 1, NULL, NULL, 2, 3, 1, 3, 1, 1, 1),
(35, 1, NULL, NULL, 2, 3, 2, 2, 1, 1, 1),
(36, 1, NULL, NULL, 2, 3, 2, 3, 1, 1, 1),
(38, 1, NULL, NULL, 2, 3, 3, 2, 1, 1, 1),
(39, 1, NULL, NULL, 2, 3, 3, 3, 1, 1, 1),
(41, 1, NULL, NULL, 2, 3, 4, 2, 1, 1, 1),
(42, 1, NULL, NULL, 2, 3, 4, 3, 1, 1, 1),
(44, 1, NULL, NULL, 2, 3, 5, 2, 1, 1, 1),
(45, 1, NULL, NULL, 2, 3, 5, 3, 1, 1, 1),
(103, 1, '2020-01-09 23:32:53', '2020-01-09 23:32:53', 17, 2, 1, 5, 1, 1, 1),
(47, 1, NULL, NULL, 2, 4, 1, 2, 1, 1, 1),
(48, 1, NULL, NULL, 2, 4, 1, 3, 1, 1, 1),
(102, 1, '2020-01-09 23:32:53', '2020-01-09 23:32:53', 17, 2, 1, 6, 1, 1, 1),
(50, 1, NULL, NULL, 2, 4, 2, 2, 1, 1, 1),
(51, 1, NULL, NULL, 2, 4, 2, 3, 1, 1, 1),
(101, 1, '2020-01-09 23:32:53', '2020-01-09 23:32:53', 17, 2, 1, 7, 1, 1, 1),
(53, 1, NULL, NULL, 2, 4, 3, 2, 1, 1, 1),
(54, 1, NULL, NULL, 2, 4, 3, 3, 1, 1, 1),
(100, 1, '2020-01-09 23:32:53', '2020-01-09 23:32:53', 17, 2, 1, 4, 1, 1, 1),
(56, 1, NULL, NULL, 2, 4, 4, 2, 1, 1, 1),
(57, 1, NULL, NULL, 2, 4, 4, 3, 1, 1, 1),
(99, 1, '2020-01-09 23:32:53', '2020-01-09 23:32:53', 17, 2, 1, 8, 1, 1, 1),
(59, 1, NULL, NULL, 2, 4, 5, 2, 1, 1, 1),
(60, 1, NULL, NULL, 2, 4, 5, 3, 1, 1, 1),
(110, 1, '2020-01-16 21:56:45', '2020-01-16 21:56:45', 20, 1, 1, 2, 1, 1, 1),
(62, 1, NULL, NULL, 2, 5, 1, 2, 1, 1, 1),
(63, 1, NULL, NULL, 2, 5, 1, 3, 1, 1, 1),
(109, 1, '2020-01-16 21:56:45', '2020-01-16 21:56:45', 17, 1, 1, 8, 1, 1, 1),
(65, 1, NULL, NULL, 2, 5, 2, 2, 1, 1, 1),
(66, 1, NULL, NULL, 2, 5, 2, 3, 1, 1, 1),
(108, 1, '2020-01-16 21:56:45', '2020-01-16 21:56:45', 17, 1, 1, 4, 1, 1, 1),
(68, 1, NULL, NULL, 2, 5, 3, 2, 1, 1, 1),
(69, 1, NULL, NULL, 2, 5, 3, 3, 1, 1, 1),
(107, 1, '2020-01-16 21:56:45', '2020-01-16 21:56:45', 17, 1, 1, 7, 1, 1, 1),
(71, 1, NULL, NULL, 2, 5, 4, 2, 1, 1, 1),
(72, 1, NULL, NULL, 2, 5, 4, 3, 1, 1, 1),
(106, 1, '2020-01-16 21:56:45', '2020-01-16 21:56:45', 17, 1, 1, 6, 1, 1, 1),
(74, 1, NULL, NULL, 2, 5, 5, 2, 1, 1, 1),
(75, 1, NULL, NULL, 2, 5, 5, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_assign_vehicles`
--

CREATE TABLE `sm_assign_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_id` int(10) UNSIGNED DEFAULT NULL,
  `route_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_background_settings`
--

CREATE TABLE `sm_background_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_background_settings`
--

INSERT INTO `sm_background_settings` (`id`, `title`, `type`, `image`, `color`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard Background', 'image', 'public/backEnd/img/body-bg.jpg', '', 1, NULL, '2019-11-14 23:19:16'),
(2, 'Login Background', 'image', 'public/backEnd/img/login-bg.jpg', '', 1, NULL, '2020-01-17 23:54:48'),
(3, 'Dashboard Background', 'image', 'public/uploads/backgroundImage/0f7b88deb2ed00dadd915dc69cf6d7ee.png', NULL, 0, '2019-11-14 23:11:58', '2019-11-14 23:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `sm_backups`
--

CREATE TABLE `sm_backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` tinyint(4) DEFAULT NULL COMMENT '0=Database, 1=File, 2=Image',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_backups`
--

INSERT INTO `sm_backups` (`id`, `file_name`, `source_link`, `file_type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'database_backup_25_11_2019_03:38.sql', 'public/databaseBackup/database_backup_25_11_2019_03:38.sql', 0, 1, '2019-11-25 21:38:15', '2019-11-25 21:38:15', 1, 1, 1),
(2, 'Backup_25_11_2019_03:43_Images.zip', '/home2/hasaanmalik/schoolplus.ivylabtech.com/public/Backup_25_11_2019_03:43_Images.zip', 1, 1, '2019-11-25 21:43:09', '2019-11-25 21:43:09', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_bank_accounts`
--

CREATE TABLE `sm_bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_bank_accounts`
--

INSERT INTO `sm_bank_accounts` (`id`, `account_name`, `opening_balance`, `note`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(4, 'Adeel Sons', 5000, 'Payables', 1, '2020-01-21 18:52:04', '2020-01-21 18:52:43', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_base_groups`
--

CREATE TABLE `sm_base_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_base_groups`
--

INSERT INTO `sm_base_groups` (`id`, `name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Gender', 1, NULL, NULL, 1, 1, 1),
(2, 'Religion', 1, NULL, NULL, 1, 1, 1),
(3, 'Blood Group', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_base_setups`
--

CREATE TABLE `sm_base_setups` (
  `id` int(10) UNSIGNED NOT NULL,
  `base_setup_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `base_group_id` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_base_setups`
--

INSERT INTO `sm_base_setups` (`id`, `base_setup_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `base_group_id`, `school_id`) VALUES
(1, 'Male', 1, NULL, NULL, 1, 1, 1, 1),
(2, 'Female', 1, NULL, NULL, 1, 1, 1, 1),
(3, 'Others', 1, NULL, NULL, 1, 1, 1, 1),
(4, 'Islam', 1, NULL, NULL, 1, 1, 2, 1),
(5, 'Hinduism', 1, NULL, NULL, 1, 1, 2, 1),
(6, 'Sikhism', 1, NULL, NULL, 1, 1, 2, 1),
(7, 'Buddhism', 1, NULL, NULL, 1, 1, 2, 1),
(8, 'Protestantism', 1, NULL, NULL, 1, 1, 2, 1),
(9, 'A+', 1, NULL, NULL, 1, 1, 3, 1),
(10, 'O+', 1, NULL, NULL, 1, 1, 3, 1),
(11, 'B+', 1, NULL, NULL, 1, 1, 3, 1),
(12, 'AB+', 1, NULL, NULL, 1, 1, 3, 1),
(13, 'A-', 1, NULL, NULL, 1, 1, 3, 1),
(14, 'O-', 1, NULL, NULL, 1, 1, 3, 1),
(15, 'B-', 1, NULL, NULL, 1, 1, 3, 1),
(16, 'AB-', 1, NULL, NULL, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_books`
--

CREATE TABLE `sm_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rack_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `book_price` int(11) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `book_category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_books`
--

INSERT INTO `sm_books` (`id`, `book_title`, `book_number`, `isbn_no`, `publisher_name`, `author_name`, `rack_number`, `quantity`, `book_price`, `post_date`, `details`, `active_status`, `created_at`, `updated_at`, `subject_id`, `book_category_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'How To Grow Your Buisness', '1', '145', 'xyz', 'abc', '6', 19, 300, '2019-12-30', NULL, 1, '2019-12-30 22:15:11', '2020-01-08 22:41:51', 8, 46, 1, 1, 1),
(2, 'Social Studies', '381', '25', NULL, NULL, NULL, 120, 500, '2020-01-17', NULL, 1, '2020-01-17 23:05:19', '2020-01-17 23:08:35', 7, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_book_categories`
--

CREATE TABLE `sm_book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_book_categories`
--

INSERT INTO `sm_book_categories` (`id`, `category_name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Action and adventure', NULL, NULL, 1),
(2, 'Alternate history', NULL, NULL, 1),
(3, 'Anthology', NULL, NULL, 1),
(4, 'Chick lit', NULL, NULL, 1),
(5, 'Kids', NULL, NULL, 1),
(6, 'Comic book', NULL, NULL, 1),
(7, 'Coming-of-age', NULL, NULL, 1),
(8, 'Crime', NULL, NULL, 1),
(9, 'Drama', NULL, NULL, 1),
(10, 'Fairytale', NULL, NULL, 1),
(11, 'Fantasy', NULL, NULL, 1),
(12, 'Graphic novel', NULL, NULL, 1),
(13, 'Historical fiction', NULL, NULL, 1),
(14, 'Horror', NULL, NULL, 1),
(15, 'Mystery', NULL, NULL, 1),
(16, 'Paranormal romance', NULL, NULL, 1),
(17, 'Picture book', NULL, NULL, 1),
(18, 'Poetry', NULL, NULL, 1),
(19, 'Political thriller', NULL, NULL, 1),
(20, 'Romance', NULL, NULL, 1),
(21, 'Satire', NULL, NULL, 1),
(22, 'Science fiction', NULL, NULL, 1),
(23, 'Short story', NULL, NULL, 1),
(24, 'Suspense', NULL, NULL, 1),
(25, 'Thriller', NULL, NULL, 1),
(26, 'Young adult', NULL, NULL, 1),
(27, 'Art', NULL, NULL, 1),
(28, 'Autobiography', NULL, NULL, 1),
(29, 'Biography', NULL, NULL, 1),
(30, 'Book review', NULL, NULL, 1),
(31, 'Cookbook', NULL, NULL, 1),
(32, 'Diary', NULL, NULL, 1),
(33, 'Dictionary', NULL, NULL, 1),
(34, 'Encyclopedia', NULL, NULL, 1),
(35, 'Guide', NULL, NULL, 1),
(36, 'Health', NULL, NULL, 1),
(37, 'History', NULL, NULL, 1),
(38, 'Journal', NULL, NULL, 1),
(39, 'Math', NULL, NULL, 1),
(40, 'Memoir', NULL, NULL, 1),
(41, 'Prayer', NULL, NULL, 1),
(42, 'Religion, spirituality, and new age', NULL, NULL, 1),
(43, 'Textbook', NULL, NULL, 1),
(44, 'Review', NULL, NULL, 1),
(45, 'Science', NULL, NULL, 1),
(46, 'Self help', NULL, NULL, 1),
(47, 'Travel', NULL, NULL, 1),
(48, 'True crime', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_book_issues`
--

CREATE TABLE `sm_book_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `given_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `issue_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_book_issues`
--

INSERT INTO `sm_book_issues` (`id`, `quantity`, `given_date`, `due_date`, `issue_status`, `note`, `active_status`, `created_at`, `updated_at`, `book_id`, `member_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, '2020-01-08', '2020-01-08', 'R', NULL, 1, '2020-01-08 22:41:10', '2020-01-08 22:41:28', 1, 525, 527, 527, 1),
(2, NULL, '2020-01-08', '2020-01-08', 'I', NULL, 1, '2020-01-08 22:41:51', '2020-01-08 22:41:51', 1, 525, 527, 1, 1),
(3, NULL, '2020-01-17', '2020-01-17', 'R', NULL, 1, '2020-01-17 23:08:02', '2020-01-17 23:08:35', 2, 538, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_chart_of_accounts`
--

CREATE TABLE `sm_chart_of_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `head` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'E = expense, I = income',
  `active_status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_chart_of_accounts`
--

INSERT INTO `sm_chart_of_accounts` (`id`, `head`, `type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Donation', 'I', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(2, 'Scholarship', 'E', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(3, 'Product Sales', 'I', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(4, 'Utility Bills', 'E', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(5, 'Construction Cost', 'E', 1, '2020-02-17 16:16:15', '2020-02-17 16:16:15', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_classes`
--

CREATE TABLE `sm_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_classes`
--

INSERT INTO `sm_classes` (`id`, `class_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'One', 1, NULL, NULL, 1, 1, 1),
(2, 'Two', 1, NULL, NULL, 1, 1, 1),
(3, 'Three', 1, NULL, NULL, 1, 1, 1),
(4, 'Four', 1, NULL, NULL, 1, 1, 1),
(5, 'Five', 1, NULL, NULL, 1, 1, 1),
(6, 'Six', 1, NULL, NULL, 1, 1, 1),
(7, 'Seven', 1, NULL, NULL, 1, 1, 1),
(8, 'Eight', 1, NULL, NULL, 1, 1, 1),
(9, 'Nine', 1, NULL, NULL, 1, 1, 1),
(10, 'Ten', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_rooms`
--

CREATE TABLE `sm_class_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_class_rooms`
--

INSERT INTO `sm_class_rooms` (`id`, `room_no`, `capacity`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Room 101', 60, 1, NULL, NULL, 1, 1, 1),
(2, 'Room 102', 55, 1, NULL, NULL, 1, 1, 1),
(3, 'Room 103', 55, 1, NULL, NULL, 1, 1, 1),
(4, 'Room 104', 60, 1, NULL, NULL, 1, 1, 1),
(5, 'Room 201', 60, 1, NULL, NULL, 1, 1, 1),
(6, 'Room 202', 55, 1, NULL, NULL, 1, 1, 1),
(7, 'Room 203', 55, 1, NULL, NULL, 1, 1, 1),
(8, 'Room 204', 60, 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_routines`
--

CREATE TABLE `sm_class_routines` (
  `id` int(10) UNSIGNED NOT NULL,
  `monday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_start_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_end_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `tuesday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_start_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_end_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `wednesday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_start_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_end_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `thursday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_start_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_end_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `friday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_start_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `saturday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_start_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_end_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `sunday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_start_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_end_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_routine_updates`
--

CREATE TABLE `sm_class_routine_updates` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` int(11) DEFAULT NULL COMMENT '1=sat,2=sun,7=fri',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `class_period_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_class_routine_updates`
--

INSERT INTO `sm_class_routine_updates` (`id`, `day`, `active_status`, `created_at`, `updated_at`, `room_id`, `teacher_id`, `class_period_id`, `subject_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`) VALUES
(2, 3, 1, '2019-12-26 16:50:44', '2019-12-26 16:50:44', 1, 14, 12, 2, 1, 1, 1, 1, 1),
(14, 3, 1, '2020-01-02 18:13:27', '2020-01-02 18:13:27', 1, 17, 7, 4, 1, 1, 1, 1, 1),
(13, 3, 1, '2020-01-02 18:12:52', '2020-01-02 18:12:52', 1, 17, 5, 6, 1, 1, 1, 1, 1),
(12, 3, 1, '2020-01-02 18:12:26', '2020-01-02 18:12:26', 1, 17, 4, 8, 1, 1, 1, 1, 1),
(11, 3, 1, '2020-01-02 18:12:00', '2020-01-02 18:12:00', 1, 17, 3, 7, 1, 1, 1, 1, 1),
(10, 3, 1, '2020-01-02 18:10:18', '2020-01-02 18:10:18', 1, 17, 2, 5, 1, 1, 1, 1, 1),
(18, 4, 1, '2020-01-16 22:14:22', '2020-01-16 22:14:22', 4, 20, 1, 2, 1, 1, 1, 1, 1),
(16, 1, 1, '2020-01-16 21:53:43', '2020-01-16 21:53:43', 1, 17, 7, 2, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_sections`
--

CREATE TABLE `sm_class_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_class_sections`
--

INSERT INTO `sm_class_sections` (`id`, `active_status`, `created_at`, `updated_at`, `class_id`, `section_id`, `school_id`) VALUES
(1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 1, 1),
(2, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 2, 1),
(3, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 3, 1),
(4, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 4, 1),
(5, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 1, 5, 1),
(30, 1, '2019-12-26 16:04:50', '2019-12-26 16:04:50', 2, 5, 1),
(29, 1, '2019-12-26 16:04:50', '2019-12-26 16:04:50', 2, 4, 1),
(28, 1, '2019-12-26 16:04:50', '2019-12-26 16:04:50', 2, 3, 1),
(27, 1, '2019-12-26 16:04:50', '2019-12-26 16:04:50', 2, 2, 1),
(26, 1, '2019-12-26 16:04:50', '2019-12-26 16:04:50', 2, 1, 1),
(11, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 3, 1, 1),
(12, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 3, 2, 1),
(13, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 3, 3, 1),
(14, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 3, 4, 1),
(15, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 3, 5, 1),
(16, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 4, 1, 1),
(17, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 4, 2, 1),
(18, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 4, 3, 1),
(19, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 4, 4, 1),
(20, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 4, 5, 1),
(21, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 5, 1, 1),
(22, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 5, 2, 1),
(23, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 5, 3, 1),
(24, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 5, 4, 1),
(25, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45', 5, 5, 1),
(36, 1, '2020-01-16 22:00:37', '2020-01-16 22:00:37', 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_teachers`
--

CREATE TABLE `sm_class_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `assign_class_teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_class_teachers`
--

INSERT INTO `sm_class_teachers` (`id`, `active_status`, `created_at`, `updated_at`, `teacher_id`, `assign_class_teacher_id`, `created_by`, `updated_by`, `school_id`) VALUES
(11, 1, '2020-01-13 23:32:27', '2020-01-13 23:32:27', 17, 1, 1, 1, 1),
(2, 1, '2019-12-26 16:43:22', '2019-12-26 16:43:22', 14, 2, 1, 1, 1),
(3, 1, '2019-12-30 16:52:13', '2019-12-30 16:52:13', 15, 3, 1, 1, 1),
(4, 1, '2019-12-30 16:53:08', '2019-12-30 16:53:08', 15, 4, 1, 1, 1),
(5, 1, '2020-01-01 19:39:34', '2020-01-01 19:39:34', 16, 5, 1, 1, 1),
(6, 1, '2020-01-09 22:00:14', '2020-01-09 22:00:14', 17, 6, 1, 1, 1),
(12, 1, '2020-01-16 22:01:09', '2020-01-16 22:01:09', 20, 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_times`
--

CREATE TABLE `sm_class_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('exam','class') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_break` tinyint(4) DEFAULT NULL COMMENT '1 = tiffin time, 0 = class',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_class_times`
--

INSERT INTO `sm_class_times` (`id`, `type`, `period`, `start_time`, `end_time`, `is_break`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'class', '1st class', '09:00:00', '09:45:00', 0, NULL, NULL, 1),
(2, 'class', '2nd class', '09:45:00', '10:30:00', 0, NULL, NULL, 1),
(3, 'class', '3rd class', '10:30:00', '11:15:00', 0, NULL, NULL, 1),
(4, 'class', '4th class', '11:15:00', '12:00:00', 0, NULL, NULL, 1),
(5, 'class', '5th class', '12:00:00', '12:45:00', 0, NULL, NULL, 1),
(6, 'class', 'Tiffin Break', '12:45:00', '14:00:00', 1, NULL, NULL, 1),
(7, 'class', '6th class', '14:45:00', '15:39:00', 0, NULL, NULL, 1),
(8, 'exam', '1st period', '09:00:00', '12:00:00', 0, NULL, NULL, 1),
(9, 'exam', '2nd period', '01:00:00', '03:00:00', 0, NULL, NULL, 1),
(10, 'exam', '3rd period', '04:00:00', '06:00:00', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_complaints`
--

CREATE TABLE `sm_complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `complaint_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaint_type` tinyint(4) DEFAULT NULL,
  `complaint_source` tinyint(4) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `action_taken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_complaints`
--

INSERT INTO `sm_complaints` (`id`, `complaint_by`, `complaint_type`, `complaint_source`, `phone`, `date`, `description`, `action_taken`, `assigned`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Dr. Maeve Bednar', 1, 1, '1-855-570-5171', '1979-07-18', 'I the Queen, the jury consider their paws. \'And who were lying round your tongue, Ma!\' said Alice.', 'officia', 'Officia nihil voluptatem molestiae suscipit aut expedita.', 'public/uploads/complaint/complaint.jpg', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(2, 'Avis Hand', 2, 2, '1-888-294-4354', '1981-07-08', 'Queen, who is to-day! And mentioned Dinah!\' she went slowly followed a long silence, and Alice in.', 'possimus', 'Dicta id illo dolorum voluptas.', 'public/uploads/complaint/complaint.jpg', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(3, 'Prof. Wellington Toy', 3, 3, '866.618.8708', '2000-08-17', 'How I shouldn\'t like a funny it\'ll seem to the door began an opportunity for the case with some of.', 'a', 'Cum reprehenderit sed corrupti.', 'public/uploads/complaint/complaint.jpg', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(4, 'Nauman', 11, 1, '03360333383', '2019-12-24', NULL, 'punish them', NULL, '', 1, '2019-12-24 19:52:06', '2019-12-24 19:52:06', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_contact_messages`
--

CREATE TABLE `sm_contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `view_status` tinyint(4) NOT NULL DEFAULT '0',
  `reply_status` tinyint(4) NOT NULL DEFAULT '0',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_contact_pages`
--

CREATE TABLE `sm_contact_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_contact_pages`
--

INSERT INTO `sm_contact_pages` (`id`, `title`, `description`, `image`, `button_text`, `button_url`, `address`, `address_text`, `phone`, `phone_text`, `email`, `email_text`, `latitude`, `longitude`, `google_map_address`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Contact Us', 'Have any questions? We’d love to hear from you! Here’s how to get in touch with us.', 'public/uploads/contactPage/contact.jpg', 'Learn More About Us', 'about', '56/8 Panthapath, Dhanmondi,Dhaka', 'Santa monica bullevard', '0184113625', 'Mon to Fri 9am to 6 pm', 'admin@infixedu.com', 'Send us your query anytime!', '23.707310', '90.415480', 'Panthapath, Dhaka', 1, NULL, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sm_content_types`
--

CREATE TABLE `sm_content_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_content_types`
--

INSERT INTO `sm_content_types` (`id`, `type_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Home', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(2, 'About', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(3, 'Contact', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(4, 'Services', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_countries`
--

CREATE TABLE `sm_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `native` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sm_courses`
--

CREATE TABLE `sm_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `outline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequisites` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resources` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_courses`
--

INSERT INTO `sm_courses` (`id`, `title`, `image`, `overview`, `outline`, `prerequisites`, `resources`, `stats`, `active_status`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Est dolores praesentium dolores.', 'public/uploads/course/academic1.jpg', 'Qui occaecati quisquam id perferendis rerum qui. Dolorem voluptatem beatae cupiditate. Non doloremque quia et tenetur. Voluptatum nostrum eveniet quo pariatur beatae consequatur. Atque necessitatibus quaerat ipsa consequatur quia eos. Eveniet deleniti omnis dolore ipsa. Deserunt dolor dolore expedita sint. Aut dolores blanditiis dolor velit et. Nobis natus vel voluptates ab. Quae quasi sint aut eum soluta deleniti. Perferendis veritatis provident similique sint assumenda commodi. Porro excepturi nemo in qui repudiandae veniam. Hic vitae illo odit officiis non soluta labore. Sapiente sunt aliquid dolor voluptatem. Et dolor est occaecati consequatur facilis sunt. Earum adipisci officia ullam dolorum iusto ad. Itaque atque perferendis sed dolorem optio quis. Sit facere officia rerum voluptas possimus. Reiciendis nisi consequatur quibusdam ut. Est quisquam pariatur expedita aspernatur. Reprehenderit itaque voluptatem molestias id blanditiis cum ut. Esse officia aut aut. Nesciunt illum enim soluta et et debitis modi. Vel laborum quisquam eveniet officiis est omnis placeat. Qui perspiciatis omnis ad. Molestias eaque quisquam aliquid sit enim vitae ad. Possimus dolore ut velit porro. Aliquam eos maiores quis magni in omnis perspiciatis. Eos ut ut velit aut tempore dolorem officiis. Quia exercitationem est dolores voluptas reprehenderit voluptatem rerum alias. Saepe optio dolorem dicta ut. Quaerat accusantium sit ab eius quis accusamus eum accusantium. Nam nemo iusto repellendus error enim adipisci. Voluptas voluptates quia aperiam rem asperiores nam nihil quae. Corrupti quaerat eos fuga quibusdam. Autem perspiciatis eaque ea perferendis totam dolor nemo recusandae. Est distinctio animi culpa id accusantium omnis corrupti. Cum consequatur quibusdam odio enim quidem. Odit molestias voluptas facere et sit ut ducimus. Molestias ipsam adipisci nam fuga. Dicta excepturi distinctio velit ullam dolorem.', 'Sunt id quod adipisci non et tempora. Id et et sint dolor consequatur reprehenderit modi. Odit natus odit at ut et quos id. Cumque voluptates ad in voluptas sed ducimus veritatis excepturi. Maiores et placeat minima voluptates aut consequatur libero voluptatem. Perspiciatis ab ut nihil ipsam maxime velit. Adipisci deleniti aperiam at quibusdam qui ut accusantium. Eos voluptatum sed et perferendis. Expedita adipisci omnis fugit aut. Non eum voluptatem eaque sit. Adipisci ratione sint suscipit tempore laudantium sit. Necessitatibus saepe nihil vel inventore. Eos fugit et distinctio vel sunt reprehenderit corrupti. Quae modi quaerat quo labore vitae quisquam aut. Aliquam molestiae aut voluptas. Eum assumenda nulla doloribus earum. Cumque sit impedit aliquam debitis ab est et doloribus. Nulla temporibus odit ut impedit autem fuga expedita. Sed fugit adipisci beatae soluta in officiis. Ratione assumenda odio omnis possimus. Et cumque dolores dolor. Natus eos accusantium et asperiores. Error incidunt rerum et esse. Culpa nobis fugit minus earum unde ipsa et. Non eligendi assumenda est corrupti eos nostrum sit. Sed qui dignissimos nobis in assumenda at vel deleniti. Ea laudantium non dolorem in qui assumenda consequatur. Illo fuga asperiores id aperiam magnam delectus. Perspiciatis culpa nihil eveniet rerum. Sit esse nisi nemo velit eligendi deserunt asperiores. Praesentium consequuntur repellat deserunt id quos cum. Doloremque laudantium aut eveniet consequatur sapiente voluptatibus quia. Dolores a vero mollitia corporis. Sequi voluptatibus corrupti cumque perferendis. Aspernatur error cum facilis aliquid. Consequuntur minus placeat iusto molestias et dolor. Aut quidem recusandae aut pariatur et. Nihil voluptatum illum quibusdam aut itaque eum explicabo. Est accusamus laborum possimus earum id corporis. Ut ab quibusdam consequatur et asperiores nam. Dolor natus dicta dicta est. Illo tenetur cupiditate asperiores inventore qui et.', 'Odit qui id ut dolor voluptatem voluptate. Sit dignissimos pariatur non similique vitae. In officia non voluptates dolores qui quis consequatur. Nam aut rem vel officia sunt numquam. Eum officiis laudantium rerum maxime dignissimos quibusdam commodi. Id sint natus eum. Doloremque laborum omnis nostrum inventore modi. Error similique illum blanditiis ut aut quisquam illo voluptatem. Expedita est natus sint cum asperiores necessitatibus amet. Tempore rerum et ullam possimus. Reprehenderit modi est iure et. Molestias cum voluptatem repellat accusamus voluptates. Ex delectus iusto animi inventore dolor placeat sequi. Provident distinctio sit minima. Recusandae sit tempore rerum voluptas eum. Architecto ex voluptatem facilis perferendis non ratione hic. Est fugiat et inventore alias aut incidunt voluptates omnis. Praesentium ut rerum magni repellat in et. Veritatis repellat et eligendi facere ipsum sit. Itaque ut odio occaecati accusamus at. Ad quisquam non veniam sapiente id nostrum. Voluptatibus explicabo natus recusandae molestiae. Eaque ex et voluptate quia mollitia. Quos sequi rerum consequatur in. Neque iusto et est dignissimos deleniti veniam. Iure molestiae temporibus occaecati. In rerum perferendis odio voluptatibus. Eum necessitatibus facilis magnam aspernatur nulla ex. Ea eos laboriosam laborum id quidem. Aspernatur corrupti consequatur sunt ea iure hic. Voluptatem nostrum maxime excepturi voluptatem nisi et unde. At quo sit quo et nihil. Minus voluptas veniam vero quasi voluptatum nam. Facere asperiores mollitia a. Vel repellendus vero dolorem est. Omnis mollitia optio rem quisquam ratione adipisci suscipit sunt. Aspernatur tempore aut aperiam asperiores tenetur nihil minus. Similique quis ratione autem earum molestias. Aspernatur sed repudiandae quaerat. Fugiat eveniet officia iure sint voluptatibus in vel. Nostrum quis amet quis repellendus facere quia in. Eaque enim veniam quasi delectus soluta sit. Animi amet rerum quia qui illum ab.', 'Omnis provident sed eum unde temporibus et non. Quisquam dolorem maxime atque expedita quis. Amet est quo in eligendi quidem ut sed. Delectus possimus fugit inventore cum repellendus rerum veritatis esse. Voluptatum autem nihil laboriosam ratione. Vel tenetur nostrum dolorem id ullam natus. A similique eum est iusto incidunt expedita voluptatibus saepe. Sint quis neque voluptatem quis est minima. Non eum architecto sed ducimus eum unde corporis. Dolor officiis facere laudantium aspernatur ut. Et amet iure cum nemo eveniet consectetur. Ut voluptate sed quia. Perferendis ut commodi atque dolorum debitis exercitationem. Illo aspernatur consequatur suscipit. Illum atque officiis consequatur et voluptates. Magni corrupti necessitatibus impedit dolores non amet error. Tempora iusto quia et. Et quo neque aliquid et minima. Non iure possimus molestiae error. Non iste quia sint. Quisquam doloremque quisquam similique quia ut earum. Error at quia et velit quis vel. Eum dolorem hic voluptates in nihil. Rerum reiciendis dolor praesentium et. Quos consequuntur est beatae est temporibus. Id et architecto sit et blanditiis explicabo repellendus. Iure aliquam corporis sit maxime voluptas exercitationem facere. Voluptas qui cum quod nam odio quam est. Ut officia eos incidunt et placeat. Repudiandae commodi et laborum doloribus voluptate quo doloremque. Minus facilis sequi quibusdam officia cupiditate dolorum. Itaque ut eum in aut. Dicta eveniet et sed rerum harum soluta. Quia voluptatem cupiditate numquam eaque laboriosam reprehenderit rem. Eius voluptatem debitis non. Ut vitae occaecati iste qui id vel nobis. Veniam ut ab ipsum in neque dolorum aut voluptas. Eos et consequatur aperiam perspiciatis excepturi explicabo aliquam cum. Et pariatur corrupti aperiam eos sed ut. Aspernatur et et in. Ducimus delectus harum quis reiciendis laborum et esse vero. A modi occaecati libero id earum itaque iure. Corrupti et natus sed maxime non.', 'Repudiandae aliquam mollitia recusandae nihil hic excepturi. Culpa nihil ut voluptas qui ea iure ut. A ipsa adipisci ut amet laudantium aut est. Fugiat iure odit rerum est placeat ex. Odio natus id aut ipsa. Voluptatem sint provident quo quas qui autem. Temporibus nesciunt modi officiis laborum veritatis quae rem. Dolores quis voluptatem illo voluptas et aut voluptatibus. Qui velit animi corrupti perspiciatis nesciunt. Aut rem explicabo et cum velit pariatur repudiandae. Nobis ea non omnis facilis. Et et impedit maxime inventore optio. Deleniti rerum voluptatem similique dolorem consequatur maxime. Temporibus voluptatibus assumenda reprehenderit tenetur consequatur ut. Quas sed rem reprehenderit nulla. Est ipsa voluptas libero itaque debitis possimus. Doloribus quasi omnis eum autem impedit. Iusto consequuntur qui voluptas voluptas quibusdam similique reiciendis. Id non modi sint velit est. Sit modi repudiandae sint sit nemo dolores. At iste sit suscipit nam rerum eveniet ut. Voluptatem tenetur voluptatem repellat aliquam est. Natus et similique et est. Et dolorum nam explicabo itaque incidunt. Nisi voluptatem deleniti ducimus a et dolore explicabo. Pariatur atque rem aut excepturi. Optio eveniet nulla facere est omnis facilis. Ut error adipisci vel qui amet est est. Dolor voluptas sit error ut. Omnis id sed ipsam omnis voluptatem expedita vel. Reiciendis hic id in. Fugiat dolorem veritatis ut non voluptatem labore. Eaque quod commodi dolorem ducimus. Quo aspernatur harum quia quas. Enim quaerat illum deleniti consequatur labore laboriosam repellendus. Aut quod blanditiis autem assumenda et exercitationem nihil vero. Aut magnam quaerat illum qui fugiat. Ut veniam est voluptatibus doloremque harum earum possimus. Libero assumenda perspiciatis et quas voluptatum iusto. Molestiae voluptas iure consequatur animi. Magnam culpa recusandae odio eum vel.', 1, NULL, NULL, 1),
(2, 'Dicta beatae similique eveniet dicta in.', 'public/uploads/course/academic3.jpg', 'Velit iste dolore culpa corrupti id aut. Enim facere exercitationem accusamus recusandae doloribus voluptatem fuga. Quasi neque sed sit adipisci est esse sit expedita. Dolorem natus fuga architecto odit similique ipsa id. Dolorem quaerat illo eveniet beatae aspernatur. Ducimus quia quos deleniti quam dolorem numquam. Aut et veniam impedit. Blanditiis enim libero cum. Quaerat omnis ut aut. Ex aut voluptatem iure illum officiis. Omnis asperiores et sapiente debitis fugit a est. Aut corrupti veniam sed velit. Et ratione blanditiis qui sunt consequuntur impedit. In libero mollitia eveniet autem. Delectus porro et repellendus et. Rem similique nesciunt aliquam occaecati corporis quibusdam. Deleniti eos velit ipsa nihil quam quae commodi. Velit maiores nam nulla voluptatibus accusantium. Quas et error non ab ex. Consequatur aperiam et aliquam dignissimos tempora quo. Aut maxime tempore beatae rerum illo sunt. Error alias totam quia architecto odit. Pariatur aliquid ratione dolorum natus placeat ut quidem est. Eius aliquid nulla ab sed voluptatem quia omnis. Sit natus natus impedit explicabo magnam. Est rerum et consectetur est possimus. Numquam deserunt consequuntur autem est dolorum. Voluptate maiores nemo dicta et occaecati vero est id. Assumenda sint corrupti laudantium iure ut. Dolorem quia ipsam consectetur tempore maiores est. Quos sit maxime recusandae qui. Velit aliquam deserunt et deserunt ut. Expedita tempore iure maiores accusamus tempore. Consequatur quis ut eum libero. Nam aut distinctio cum autem excepturi est possimus. Non aliquid nisi nulla et quia suscipit. Eos id voluptates fugiat possimus. Eum officia id et numquam et voluptatem. Et ullam ea vel aut. In aut assumenda recusandae dolores. Rerum est et unde. Quas velit quia voluptatem similique aut et commodi velit. Id reprehenderit sequi id dolores dolorum. Enim praesentium est et maiores.', 'Quo non minus vero impedit sed dolor. Eius non sit quaerat cumque optio sed. Velit aut tempora laboriosam sit provident quas. Qui sit nesciunt dolore fuga. Illum molestias maiores eos sed laboriosam natus aspernatur. Expedita nemo rem consequatur sit omnis consequatur. Provident nemo voluptatem nam dolorem laboriosam voluptas necessitatibus error. Distinctio vel minima delectus adipisci ratione. Maiores natus ut animi accusamus non in iure. Tenetur omnis cupiditate soluta enim eaque. Et minima sequi maxime. Voluptas molestias nobis ut. Eaque et sit repellendus numquam expedita necessitatibus consequatur. Et quis sit aperiam commodi maxime magni non. Quis consequuntur error odit qui et ad exercitationem. Autem dolores autem porro et optio quia libero facilis. Quas amet debitis laboriosam unde expedita quis dolorum id. Id ipsam aut totam voluptatem. Modi natus non autem qui. Vero voluptatem doloribus magni iusto. Repudiandae molestiae omnis omnis deleniti. Est at fugit voluptate delectus dolor tempora aut. Mollitia tempore facere molestiae cupiditate. Reiciendis corporis autem libero in est. Laborum quia in odit quam odit at. Dolor eum aut sed at fugiat quod delectus suscipit. Aut quo quisquam vel enim quibusdam temporibus aut. Numquam ea et autem modi eveniet. Et qui quisquam nihil nihil odit consequatur ea. Voluptatem veritatis aut iusto enim in. Ducimus nobis debitis mollitia iusto et explicabo. Molestiae qui delectus voluptatum dolorem quo consequatur. Praesentium est nam in voluptatem deleniti in. Doloribus vero provident totam explicabo dolorem. Est quas quaerat culpa reprehenderit voluptatibus culpa. Ea illum nemo natus totam magnam. Quibusdam voluptatibus aliquam veniam delectus quas. Vel qui et tenetur facere et et reiciendis. Itaque laudantium ad illum dolorum incidunt. Aut nihil similique cum iste adipisci facilis assumenda. Dolores rerum velit consectetur ut vel tempora et. Modi rem quos officia neque. Eos sint ab dolor ratione cumque autem minima.', 'Alias ipsam quis dolorum a. Dolorem vel non distinctio ea dolorum laborum sint. Ullam corrupti quasi nostrum corporis esse. Ipsum vitae vel quia sed illo est qui. Suscipit deserunt reiciendis voluptatem assumenda quis facere animi eveniet. Porro totam voluptatem amet doloremque. Alias voluptas amet enim sequi. Sunt et animi qui tempore. Aut dolor praesentium ut omnis nam illum harum. Nobis rem rerum laudantium cumque. Facere quos aliquid consequuntur ad aut. Ipsam aliquam reprehenderit quidem voluptas maiores eum nobis. Autem omnis voluptatem nisi voluptatem sapiente aut. Accusamus maiores eveniet ab optio earum. Saepe et non debitis cupiditate voluptatem quis. Voluptatem sapiente molestiae pariatur nam dolores. Rem quasi nihil aut aut delectus sunt. Ut quisquam sint totam et ipsa enim. Aspernatur vitae sunt vel cumque nostrum. Quos modi sit blanditiis dolorum itaque. Corporis et architecto vel error. Aspernatur ratione aut quis ipsa et. Explicabo autem quis autem architecto. Nihil quisquam eum voluptatem voluptatibus molestiae nihil. Ipsa ex eum molestias molestias saepe suscipit excepturi. Quaerat dignissimos molestias dicta placeat fugit rem. Sed et odio ipsam rerum asperiores odit. Velit mollitia sunt sint officiis eius necessitatibus non. Consequatur nemo in eligendi cupiditate voluptate labore et. Possimus velit non quisquam est quidem. Accusantium numquam omnis qui culpa blanditiis. Iure a sint aut id et. Voluptas corporis rerum soluta debitis enim maiores laudantium molestiae. Dolorem praesentium et iusto quia. Quisquam nesciunt nulla libero est autem voluptatibus vitae natus. Maxime accusamus et corporis. Sint dolores deserunt quis neque. Voluptate nemo tempore aspernatur. Suscipit ipsam recusandae reprehenderit molestias. Porro nostrum architecto error architecto laboriosam. Exercitationem optio et aliquam culpa autem exercitationem. Illo eum omnis est molestias et et occaecati. Sed facere in a rerum accusamus.', 'Iste praesentium libero omnis qui aliquam eos. Aspernatur quisquam explicabo illum omnis corporis itaque voluptas aut. Aut perferendis est nihil iste aliquam est quae. Et cumque repudiandae cumque accusantium debitis numquam alias. Cumque ut iure vel impedit. Ullam impedit possimus ducimus optio dolore vel. Quod officiis aut harum laboriosam. Quam omnis quod dolores nihil non cumque eius. Numquam quas ad quisquam et ut recusandae expedita voluptatem. Provident nulla rerum cum nam iure. Porro et quia architecto assumenda. Et et et officiis tenetur velit. At enim commodi omnis sint minima aut pariatur. Esse ipsa velit similique voluptatem at temporibus omnis. Odio corporis reprehenderit assumenda dolores natus. Soluta esse ipsum aut. Accusamus aut minus et molestiae eligendi. In provident quia totam non ducimus quia. Accusantium magnam delectus quas dolor saepe occaecati aspernatur. Distinctio quibusdam aut eum possimus. Et id dolorum blanditiis et aliquid doloremque. Facere itaque commodi ex officiis quae. Aliquid perferendis quidem asperiores totam in. Architecto aut aliquid quasi cum laudantium molestiae quo. Voluptatem facilis tenetur dolore at similique blanditiis provident esse. Velit quisquam quasi dolores. Corrupti facere repellat velit rerum. Dolores eum aliquid nesciunt odio quia. Qui dolor quidem consequatur et vel. Et culpa consequuntur corrupti unde beatae. Eos est corrupti debitis reprehenderit deserunt temporibus ut. Sit nam accusamus magni natus quas praesentium autem. Aut non debitis voluptatem omnis et. Hic facere consequuntur in. Nihil et quas omnis. Minima mollitia earum sit voluptatem perspiciatis accusamus. Soluta quaerat quod maxime cupiditate praesentium. Similique accusamus ducimus nihil non. Aut inventore nisi autem quasi. Quae debitis neque nisi quidem iusto doloremque sequi.', 'Eaque et quis nulla qui sint minus corporis vel. Quia quia aut earum voluptas esse qui. Unde doloremque veritatis ducimus corporis id voluptatem quos. Quo nam dolor laudantium at atque unde nobis. Et non illum maxime. Occaecati laudantium aliquid qui aspernatur nisi et. Voluptatem exercitationem illum quas iusto fugit at. Sit repellendus perferendis eius voluptatibus quae qui. Doloribus explicabo mollitia non ex doloremque. Sequi voluptate veritatis omnis. Soluta nihil rerum eos aut est nobis. Assumenda impedit omnis fugiat id voluptatem. Corrupti minima dolorem tempore sed et. Labore aut et alias quae nihil molestiae nobis. Sint cumque esse et nostrum ipsa est. Soluta aspernatur qui reiciendis non nihil quis cupiditate. Quia provident omnis et est accusantium rerum illum vel. Beatae quod fugit non fuga aut voluptatum. Quia molestiae aut tenetur et. Nesciunt qui itaque vel id. Vel cumque nihil deserunt nulla nulla qui ipsum. Placeat minima laboriosam atque voluptas ratione voluptate commodi. Cumque officiis rerum est rerum deleniti voluptatem id. Quod nostrum molestias explicabo doloremque. Sint et aut soluta harum sed. Eveniet fugiat nesciunt maiores voluptatibus earum deleniti. Voluptatem praesentium eveniet quos unde ab libero. Sit provident amet vitae aut voluptas voluptate atque. Sit eligendi accusamus sequi rerum. Odit sint eius et nihil autem dolor est. Placeat necessitatibus est recusandae nobis nobis. Id ullam enim vel eos quia rerum repellat laborum. Suscipit sit voluptas dolor hic et vero quam. Animi sint illum recusandae ut. Enim rerum inventore tenetur harum ea odio ipsam. Tempora accusamus a nesciunt quia. Sequi minus libero alias sit omnis. Est rerum nostrum ut beatae dolorem amet. Eum et porro eaque architecto quo alias. Nesciunt ut perspiciatis ut animi tempora sit maxime sint. Qui quod voluptatem in quia. Et id quibusdam et nam tempora aut harum. Quo sint quibusdam ipsum consequatur tenetur qui. Error enim consequuntur dolores sed qui qui.', 1, NULL, NULL, 1),
(3, 'Quas ad quo velit unde ullam dolorem.', 'public/uploads/course/academic5.jpg', 'Voluptatibus doloremque qui quas libero autem. Omnis minus voluptates culpa qui ut exercitationem. Quo vero nisi consequatur ad quia. Illum iste aut nam est quidem quidem. Vero qui natus tempora nulla. Voluptatum maxime sunt rerum harum sit quisquam. Ut autem beatae consequatur perspiciatis dolore. Facere impedit ut iure ad. Autem tempora ipsa dolores tenetur. Quod totam qui maiores aliquid. At tenetur voluptates aliquam quaerat voluptatem. Sequi quaerat ut aspernatur. Pariatur alias quasi sunt et laboriosam voluptatem. Non voluptatem dolor quia fugiat. Eius deleniti accusantium voluptatem hic aliquam qui. Nesciunt maiores dicta maxime qui sed. Nam a blanditiis recusandae vel tenetur quia eos. Labore saepe omnis accusamus non non rem porro. Non repellat rerum illum perferendis laboriosam et dolor. Illo odio officia rerum quaerat possimus qui ab. Consequatur laboriosam architecto omnis voluptatum qui voluptatem. Officiis delectus quod fugiat earum. Et placeat earum nihil accusantium et eveniet mollitia. Non nobis omnis libero. Officia quisquam quidem enim. Nostrum id dolores dolores sint odit nemo. Amet dolorem saepe consectetur enim natus eius et. Neque et aut cupiditate eum ut. Ipsa odit rerum voluptas ut. Labore sint enim ex tempore velit et. Aliquam dolorum dolor ut et et voluptatem rerum. Sunt ea ex quae non ipsa eos ipsa. Aut perspiciatis sit modi minus numquam et quos. Quaerat id et sed optio soluta quam et. Ad quae sint recusandae voluptas corporis. Cupiditate ut libero saepe suscipit omnis. Sunt optio et consectetur maxime. Et ut in quia error vel aut asperiores et. Perspiciatis dignissimos voluptatem odio fuga dolores sed rerum. Quis pariatur velit laborum deserunt aspernatur. Et explicabo exercitationem odio. Sit eius soluta consequuntur asperiores laboriosam qui. Aliquam hic earum eveniet adipisci. Est quia praesentium omnis voluptates natus saepe. Dolor est rem amet quaerat quod ut.', 'Assumenda dolorum non enim amet molestias. Ut vero a est aspernatur minus. Voluptatem nesciunt impedit doloremque beatae necessitatibus consectetur quae. Cupiditate quia cum voluptates quis facere sed. In qui labore ut omnis voluptas aut. Beatae fuga id autem. Optio quisquam quasi vel eveniet odit quo vero. Accusamus omnis ducimus aut sunt. Et ut dignissimos eum tempora dolor ut. Ratione mollitia maxime quo assumenda voluptate. Et id soluta temporibus similique enim. Laborum neque ut nemo adipisci ipsum. Aperiam veritatis ex necessitatibus et. Sunt saepe sed et excepturi voluptatem et atque. Optio voluptatem culpa laudantium et. Ratione voluptas aperiam et. Minus placeat molestiae repellat velit nisi tempore commodi ut. Architecto voluptatum voluptates cumque hic. Sunt ab molestiae omnis velit et facilis non nisi. Sit minus cupiditate rerum ullam excepturi ut. Perspiciatis maxime qui repellat. Aspernatur eos error sed. Dicta similique unde consequatur impedit. Corporis qui minima ab quibusdam ullam omnis. Maiores incidunt culpa adipisci natus. Consequatur deleniti iure enim laborum. Eveniet commodi quibusdam et excepturi ea nam ipsum similique. Quasi sit provident qui. Aperiam consequatur quas eos adipisci. Laudantium quibusdam quia voluptatem suscipit animi mollitia. Accusamus rerum rerum et. Magnam aut ipsum eos nihil et. Est incidunt voluptatem molestiae dolores autem fugiat molestiae adipisci. Quis quia ipsum nisi animi. Voluptas doloremque velit asperiores tempore. Dicta eum accusamus vel voluptas a rerum. Temporibus placeat sunt unde sunt saepe occaecati. Suscipit accusantium non esse veritatis amet dolores excepturi. Ut vel qui ut ut molestias rerum. Ex aut iusto eveniet enim sequi. Mollitia ea neque vitae enim eaque nulla vitae. Quia inventore sit est quaerat cupiditate. Eveniet ut ducimus modi voluptas eum fugit dolor veritatis. Blanditiis est consequatur beatae optio. Libero quia qui natus.', 'Tempora culpa hic cupiditate. Voluptatibus est quam non maxime ex neque. In et et dolorem. Sed exercitationem debitis iusto nobis ut. Consequatur temporibus ea ex quaerat. Non consequuntur eum vero libero nihil. Laboriosam sed a est laudantium. Rerum quaerat facere qui asperiores a aut nam. Est quisquam in ea laborum. Veritatis cupiditate odit doloribus officia iste. Suscipit necessitatibus accusamus consequatur et explicabo temporibus aperiam. Inventore corrupti dignissimos sed ut velit non molestiae. Rerum sed eos magnam quas corporis id veritatis quia. Animi sed vitae odit sequi ad quia. Sapiente sit iure necessitatibus nisi excepturi. Voluptatum quidem commodi nesciunt vitae. Molestiae molestias excepturi placeat ut. Voluptatum et magni quasi. Similique aut beatae quasi qui placeat. Quia iure officiis dolores quod praesentium. Consectetur laborum eius beatae. Nam quasi quisquam non unde quos fuga perferendis ut. Ratione qui saepe dolorum sed voluptatem. Officiis nihil veritatis ea nisi. Dolor facere fugiat ut doloribus adipisci ut. Velit sequi repudiandae ipsum est quos animi dolor. Exercitationem repellat est totam voluptatem sit. Suscipit qui autem et. Eveniet in dolorem velit ullam harum unde dolor laborum. Ex fugit rerum itaque cumque qui quos illo maxime. Perferendis beatae aut aut sit eius consectetur. Tempore aperiam nam sunt nihil architecto sequi enim. Sunt et est enim iusto dolorem optio nihil. Et in sunt ut cum. Est laborum quasi nam aut praesentium et sapiente. Eius nam vero rerum consequatur cupiditate. Non iure quis dolor tenetur sit. Ullam ea voluptas et est delectus et qui. Ipsa dolorem et expedita rerum et id commodi. Esse suscipit facere animi dignissimos consequatur. Iure eos quia vel ut necessitatibus quo. Ut et saepe maiores consequatur esse illo ducimus. Pariatur veniam maiores et repellat veniam impedit ut perspiciatis. Qui et quae non omnis eligendi et.', 'Voluptatum molestiae delectus et occaecati odit reprehenderit alias. Unde excepturi ut nisi voluptas dolor sunt consequuntur. Rerum et aut sapiente occaecati quia laborum. Libero beatae non fugiat minima odio. Amet sapiente omnis dolor in provident distinctio sint. Optio libero adipisci et nulla aut veniam. Veniam eaque enim eum magnam atque cumque natus. Et ut a dolorum delectus. Consequuntur et distinctio eum qui non. Fugit neque et rerum veritatis est nisi. Reiciendis harum consequatur harum totam. Qui magni voluptatem itaque. Molestiae ipsam dolores nam omnis voluptatem inventore ut. Eaque placeat enim facere temporibus sint et eaque. Est ratione quod et corporis asperiores libero quis officiis. Numquam tempora rerum culpa molestiae molestiae magnam in. Delectus vitae ut ut officia. Inventore assumenda odit facere omnis iure necessitatibus amet et. Doloribus numquam ut qui doloremque incidunt exercitationem. Doloremque dolorum necessitatibus quasi ut natus. Inventore ea enim ut vitae sed in. Id modi et et voluptatum sint maiores. Neque mollitia non earum non repellendus. Aut voluptatem in at officiis. Non totam saepe ratione numquam. A a aliquam est temporibus. Deserunt quia sequi voluptate nulla officiis. Nihil sunt molestiae nisi natus voluptate id. Totam error qui asperiores perspiciatis amet quis. Ea excepturi ullam ea. Ut quae explicabo officia ut labore architecto. Eligendi dolore molestias consequuntur dolorum dolores est incidunt. Quisquam mollitia sed provident repellendus magni quod. Vel non reiciendis quia minima veniam. Et et quis accusamus mollitia ullam officiis libero porro. Numquam aliquid assumenda dolor similique dolore minima. Libero et ullam voluptas repudiandae voluptatem. Quos laborum est voluptates sit exercitationem. Odio voluptatem et et occaecati. Fugit eum et sed in omnis et sunt.', 'Dolores necessitatibus reprehenderit nesciunt. Dignissimos sed quod consequatur in qui et. Sed error soluta saepe voluptate aspernatur amet facilis beatae. Dolorem fugiat aut est. Neque odit quo aut dicta maxime. Omnis et ea nihil neque vitae inventore aspernatur. Vitae similique asperiores est sed. Voluptate illo eos corrupti adipisci quibusdam. Aliquid velit accusantium ipsa. Voluptate soluta voluptatibus voluptates possimus delectus dolorem quibusdam. Architecto quisquam dignissimos qui dolores. Nesciunt velit nihil sit explicabo at accusamus autem eos. Ab delectus earum aut ipsam culpa. Velit vitae est cumque laborum. Quia voluptas distinctio vel maxime. Nisi est recusandae perferendis aut eveniet. Incidunt laudantium suscipit assumenda porro. Aut dolore eveniet laborum libero sunt. Aspernatur aliquid et aperiam dolore eaque aut magni veritatis. Et nobis sit voluptatem quisquam. Officiis earum qui est voluptas. Laudantium odio voluptas quisquam labore magnam at excepturi. Qui perspiciatis eum natus hic dolorum illum non. Officiis sed rem ut consectetur repudiandae facere. Ut voluptates quos similique autem autem. Voluptatem quidem ut itaque sed numquam. Quo qui omnis est earum quo dolores incidunt. Porro soluta qui laudantium. Repellendus nam est molestiae dolorem. At quaerat consequatur voluptas perspiciatis dolorem. Et tempora est rerum commodi est libero. Doloribus quo neque commodi. Saepe repellat necessitatibus dolores quos dolores. Officiis et omnis odio deleniti sit. Nobis et et porro iste. Similique est quos alias consequatur ut quibusdam officia. Ea minus quis numquam maiores velit ut excepturi. Odio placeat fugit voluptas enim occaecati ea. Consequatur nostrum maiores dolores et assumenda ipsum. Exercitationem quos rem deleniti voluptatem quisquam vitae voluptas. Consequatur ratione aliquid pariatur assumenda sed. Inventore vel facere velit velit et est reprehenderit.', 1, NULL, NULL, 1),
(4, 'English', 'public/uploads/course/stu-90bea8db494977e1159f0ecda67681db.jpeg', 'Text book', 'Learn english quickly', 'positive', 'Oxford book', '50', 1, '2020-01-16 19:13:14', '2020-01-16 19:13:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_currencies`
--

CREATE TABLE `sm_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_currencies`
--

INSERT INTO `sm_currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(2, 'Dollars', 'USD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(3, 'Afghanis', 'AFN', '؋', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(4, 'Pesos', 'ARS', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(5, 'Guilders', 'AWG', 'ƒ', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(6, 'Dollars', 'AUD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(7, 'New Manats', 'AZN', 'ман', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(8, 'Dollars', 'BSD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(9, 'Dollars', 'BBD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(10, 'Rubles', 'BYR', 'p.', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(11, 'Euro', 'EUR', '€', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(12, 'Dollars', 'BZD', 'BZ$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(13, 'Dollars', 'BMD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(14, 'Bolivianos', 'BOB', '$b', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(15, 'Convertible Marka', 'BAM', 'KM', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(16, 'Pula', 'BWP', 'P', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(17, 'Leva', 'BGN', 'лв', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(18, 'Reais', 'BRL', 'R$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(19, 'Pounds', 'GBP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(20, 'Dollars', 'BND', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(21, 'Riels', 'KHR', '៛', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(22, 'Dollars', 'CAD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(23, 'Dollars', 'KYD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(24, 'Pesos', 'CLP', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(25, 'Yuan Renminbi', 'CNY', '¥', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(26, 'Pesos', 'COP', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(27, 'Colón', 'CRC', '₡', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(28, 'Kuna', 'HRK', 'kn', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(29, 'Pesos', 'CUP', '₱', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(30, 'Koruny', 'CZK', 'Kč', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(31, 'Kroner', 'DKK', 'kr', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(32, 'Pesos', 'DOP ', 'RD$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(33, 'Dollars', 'XCD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(34, 'Pounds', 'EGP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(35, 'Colones', 'SVC', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(36, 'Pounds', 'FKP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(37, 'Dollars', 'FJD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(38, 'Cedis', 'GHC', '¢', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(39, 'Pounds', 'GIP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(40, 'Quetzales', 'GTQ', 'Q', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(41, 'Pounds', 'GGP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(42, 'Dollars', 'GYD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(43, 'Lempiras', 'HNL', 'L', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(44, 'Dollars', 'HKD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(45, 'Forint', 'HUF', 'Ft', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(46, 'Kronur', 'ISK', 'kr', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(47, 'Rupees', 'INR', '₹', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(48, 'Rupiahs', 'IDR', 'Rp', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(49, 'Rials', 'IRR', '﷼', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(50, 'Pounds', 'IMP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(51, 'New Shekels', 'ILS', '₪', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(52, 'Dollars', 'JMD', 'J$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(53, 'Yen', 'JPY', '¥', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(54, 'Pounds', 'JEP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(55, 'Tenge', 'KZT', 'лв', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(56, 'Won', 'KPW', '₩', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(57, 'Won', 'KRW', '₩', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(58, 'Soms', 'KGS', 'лв', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(59, 'Kips', 'LAK', '₭', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(60, 'Lati', 'LVL', 'Ls', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(61, 'Pounds', 'LBP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(62, 'Dollars', 'LRD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(64, 'Litai', 'LTL', 'Lt', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(65, 'Denars', 'MKD', 'ден', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(66, 'Ringgits', 'MYR', 'RM', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(67, 'Rupees', 'MUR', '₨', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(68, 'Pesos', 'MXN', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(69, 'Tugriks', 'MNT', '₮', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(70, 'Meticais', 'MZN', 'MT', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(71, 'Dollars', 'NAD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(72, 'Rupees', 'NPR', '₨', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(73, 'Guilders', 'ANG', 'ƒ', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(74, 'Dollars', 'NZD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(75, 'Cordobas', 'NIO', 'C$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(76, 'Nairas', 'NGN', '₦', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(77, 'Krone', 'NOK', 'kr', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(78, 'Rials', 'OMR', '﷼', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(79, 'Rupees', 'PKR', '₨', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(80, 'Balboa', 'PAB', 'B/.', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(81, 'Guarani', 'PYG', 'Gs', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(83, 'Pesos', 'PHP', 'Php', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(84, 'Zlotych', 'PLN', 'zł', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(85, 'Rials', 'QAR', '﷼', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(86, 'New Lei', 'RON', 'lei', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(87, 'Rubles', 'RUB', 'руб', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(88, 'Pounds', 'SHP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(89, 'Riyals', 'SAR', '﷼', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(90, 'Dinars', 'RSD', 'Дин.', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(91, 'Rupees', 'SCR', '₨', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(92, 'Dollars', 'SGD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(93, 'Dollars', 'SBD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(94, 'Shillings', 'SOS', 'S', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(95, 'Rand', 'ZAR', 'R', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(96, 'Rupees', 'LKR', '₨', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(97, 'Kronor', 'SEK', 'kr', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(98, 'Dollars', 'SRD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(99, 'Pounds', 'SYP', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(100, 'New Dollars', 'TWD', 'NT$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(101, 'Baht', 'THB', '฿', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(102, 'Dollars', 'TTD', 'TT$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(103, 'Lira', 'TRY', 'TL', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(104, 'Liras', 'TRL', '£', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(105, 'Dollars', 'TVD', '$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(106, 'Hryvnia', 'UAH', '₴', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(107, 'Pesos', 'UYU', '$U', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(108, 'Sums', 'UZS', 'лв', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(110, 'Dong', 'VND', '₫', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(111, 'Rials', 'YER', '﷼', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(112, 'Taka', 'BDT', '৳', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1),
(113, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_custom_links`
--

CREATE TABLE `sm_custom_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dribble_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behance_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_custom_links`
--

INSERT INTO `sm_custom_links` (`id`, `title1`, `title2`, `title3`, `title4`, `link_label1`, `link_href1`, `link_label2`, `link_href2`, `link_label3`, `link_href3`, `link_label4`, `link_href4`, `link_label5`, `link_href5`, `link_label6`, `link_href6`, `link_label7`, `link_href7`, `link_label8`, `link_href8`, `link_label9`, `link_href9`, `link_label10`, `link_href10`, `link_label11`, `link_href11`, `link_label12`, `link_href12`, `link_label13`, `link_href13`, `link_label14`, `link_href14`, `link_label15`, `link_href15`, `link_label16`, `link_href16`, `facebook_url`, `twitter_url`, `dribble_url`, `linkedin_url`, `behance_url`, `created_at`, `updated_at`) VALUES
(1, 'Departments', 'Health Care', 'About Our System', 'Resources', 'About Infix', 'http://infixedu.com', 'Infix Home', 'http://infixedu.com/home', 'Business', 'http://infixedu.com', 'link_label4', 'http://infixedu.com', 'link_label5', 'http://infixedu.com', 'link_label6', 'http://infixedu.com', 'link_label7', 'http://infixedu.com', 'link_label8', 'http://infixedu.com', 'Home', 'http://infixedu.com/home', 'About', 'http://infixedu.com/about', 'Contact', 'http://infixedu.com/contact', 'link_label12', 'http://infixedu.com', 'link_label13', 'http://infixedu.com', 'link_label14', 'http://infixedu.com', 'link_label15', 'http://infixedu.com', 'link_label16', 'http://infixedu.com', 'https://www.facebook.com/SchoolManagementSoftwarePro/', 'https://twitter.com/infix_official', 'https://dribbble.com/codethemes', 'https://www.linkedin.com/in/infix-edu-875458190/', '', '2019-11-13 00:22:44', '2019-11-13 00:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `sm_dashboard_settings`
--

CREATE TABLE `sm_dashboard_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `dashboard_sec_id` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_date_formats`
--

CREATE TABLE `sm_date_formats` (
  `id` int(10) UNSIGNED NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_date_formats`
--

INSERT INTO `sm_date_formats` (`id`, `format`, `normal_view`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'jS M, Y', '17th May, 2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(2, 'Y-m-d', '2019-05-17', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(3, 'Y-d-m', '2019-17-05', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(4, 'd-m-Y', '17-05-2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(5, 'm-d-Y', '05-17-2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(6, 'Y/m/d', '2019/05/17', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(7, 'Y/d/m', '2019/17/05', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(8, 'd/m/Y', '17/05/2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(9, 'm/d/Y', '05/17/2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(10, 'l jS \\of F Y', 'Monday 17th of May 2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(11, 'jS \\of F Y', '17th of May 2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(12, 'g:ia \\o\\n l jS F Y', '12:00am on Monday 17th May 2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(13, 'F j, Y, g:i a', 'May 7, 2019, 6:20 pm', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(14, 'F j, Y', 'May 17, 2019', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1),
(15, '\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y', 'it is the 17th day', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_designations`
--

CREATE TABLE `sm_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_designations`
--

INSERT INTO `sm_designations` (`id`, `title`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Headmaster', 1, NULL, NULL, 1, 1, 1),
(2, 'Assistant Head Master', 1, NULL, NULL, 1, 1, 1),
(3, 'Assistant Teacher', 1, NULL, NULL, 1, 1, 1),
(4, 'Senior Teacher', 1, NULL, NULL, 1, 1, 1),
(5, 'Senior Assistant Teacher', 1, NULL, NULL, 1, 1, 1),
(6, 'Faculty', 1, NULL, NULL, 1, 1, 1),
(7, 'Accountant', 1, NULL, NULL, 1, 1, 1),
(8, 'Librarian', 1, NULL, NULL, 1, 1, 1),
(9, 'Admin', 1, NULL, NULL, 1, 1, 1),
(10, 'Receptionist', 1, NULL, NULL, 1, 1, 1),
(11, 'Principal', 1, NULL, NULL, 1, 1, 1),
(12, 'Director', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_dormitory_lists`
--

CREATE TABLE `sm_dormitory_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `dormitory_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'B=Boys, G=Girls',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_dormitory_lists`
--

INSERT INTO `sm_dormitory_lists` (`id`, `dormitory_name`, `type`, `address`, `intake`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Sir Isaac Newton Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(2, 'Louis Pasteur Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(3, 'Galileo Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(4, 'Marie Curie Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(5, 'Albert Einstein Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(6, 'Charles Darwin Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(7, 'Nikola Tesla Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(8, 'Sir Isaac Newton Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(9, 'Louis Pasteur Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(10, 'Galileo Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(11, 'Marie Curie Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(12, 'Albert Einstein Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(13, 'Charles Darwin Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1),
(14, 'Nikola Tesla Hostel', 'B', '25/13, Sukrabad Rd, Tallahbag, Dhaka 1215', 120, 'Hostels provide lower-priced, sociable accommodation where guests can rent a bed, usually a bunk bed, in a dormitory and share a bathroom, lounge and sometimes a kitchen.', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_email_settings`
--

CREATE TABLE `sm_email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_engine_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_email_settings`
--

INSERT INTO `sm_email_settings` (`id`, `email_engine_type`, `from_name`, `from_email`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'smtp', 'IVY Smart Medic', 'hello@ivylabtech.com', 'smtp', 'gator4013.hostgator.com', '465', 'hello@ivylabtech.com', 'IVYhe@123', 'ssl', 1, NULL, '2020-01-08 19:51:26', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_email_sms_logs`
--

CREATE TABLE `sm_email_sms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  `send_through` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_email_sms_logs`
--

INSERT INTO `sm_email_sms_logs` (`id`, `title`, `description`, `send_date`, `send_through`, `send_to`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'PTM', 'It is notified that school arrange an annual Parent Teaching Meeting on 10/Jan/2020', '2020-01-02', 'E', 'G', 1, '2020-01-02 17:34:41', '2020-01-02 17:34:41', 1, 1, 1),
(2, 'PTM', 'It is notified that school arrange an annual Parent Teaching Meeting on 10/Jan/2020', '2020-01-02', 'E', 'G', 1, '2020-01-02 17:36:38', '2020-01-02 17:36:38', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_events`
--

CREATE TABLE `sm_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_des` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uplad_image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_events`
--

INSERT INTO `sm_events` (`id`, `event_title`, `event_location`, `event_des`, `from_date`, `to_date`, `uplad_image_file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Biggest Robotics Competition in Campus', 'Main Campus', 'Amet enim curabitur urna. Faucibus tincidunt pellentesque varius blandit fermentum tristique vulputate sodales tempus est hendrerit est tincidunt ligula lorem tellus eu malesuada tortor, lacinia posuere. Conubia Egestas sed senectus.', '2019-06-12', '2019-06-21', 'public/uploads/events/event1.jpg', 1, NULL, NULL, 1, 1, 1),
(2, 'Great Science Fair in main campus', 'Main Campus', 'Magna odio in. Facilisi arcu nec augue lacus augue maecenas hendrerit euismod cras vulputate dignissim pellentesque sociis est. Ut congue Leo dignissim. Fermentum curabitur pede bibendum aptent, quam, ultrices Nam convallis sed condimentum. Adipiscing mollis lorem integer eget neque, vel.', '2019-06-12', '2019-06-21', 'public/uploads/events/event2.jpg', 1, NULL, NULL, 1, 1, 1),
(3, 'Seminar on Internet of Thing in Campus', 'Main Campus', 'Libero erat porta ridiculus semper mi eleifend. Nisl nulla. Tempus, rhoncus per. Varius. Pharetra nisi potenti ut ultrices sociosqu adipiscing at. Suscipit vulputate senectus. Nostra. Aliquam fringilla eleifend accumsan dui.', '2019-06-12', '2019-06-21', 'public/uploads/events/event3.jpg', 1, NULL, NULL, 1, 1, 1),
(4, 'Art Competition in Campus', 'Main Campus', 'Dui nunc faucibus Feugiat penatibus molestie taciti nibh nulla pellentesque convallis praesent. Fusce. Vivamus egestas Rutrum est eu dictum volutpat morbi et. Placerat justo elementum dictumst magna nisl ut mollis varius velit facilisi. Duis tellus ullamcorper aenean massa nibh mi.', '2019-06-12', '2019-06-21', 'public/uploads/events/event4.jpg', 1, NULL, NULL, 1, 1, 1),
(5, 'Parent Teacher Meeting', 'Main Campus', 'Parent Teacher Meeting call to students and parents.', '2020-01-06', '2020-01-06', '', 1, '2019-12-30 22:21:46', '2020-01-02 17:40:10', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_exams`
--

CREATE TABLE `sm_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_mark` double(8,2) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_type_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_exams`
--

INSERT INTO `sm_exams` (`id`, `exam_mark`, `active_status`, `created_at`, `updated_at`, `exam_type_id`, `class_id`, `section_id`, `subject_id`, `created_by`, `updated_by`, `school_id`) VALUES
(4, 100.00, 1, '2019-12-26 16:59:14', '2019-12-26 16:59:14', 1, 1, 1, 2, 1, 1, 1),
(24, 100.00, 1, '2020-01-17 22:11:14', '2020-01-17 22:11:14', 1, 1, 1, 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_attendances`
--

CREATE TABLE `sm_exam_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_exam_attendances`
--

INSERT INTO `sm_exam_attendances` (`id`, `active_status`, `created_at`, `updated_at`, `subject_id`, `exam_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-12-26 17:39:38', '2019-12-26 17:39:38', 2, 1, 1, 1, 1, 1, 1),
(2, 1, '2020-01-17 22:16:19', '2020-01-17 22:16:19', 7, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_attendance_children`
--

CREATE TABLE `sm_exam_attendance_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendance_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'P = present A = Absent',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_attendance_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_exam_attendance_children`
--

INSERT INTO `sm_exam_attendance_children` (`id`, `attendance_type`, `active_status`, `created_at`, `updated_at`, `exam_attendance_id`, `student_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'P', 1, '2019-12-26 17:39:38', '2019-12-26 17:39:38', 1, 3, 1, 1, 1),
(2, 'P', 1, '2019-12-26 17:39:39', '2019-12-26 17:39:39', 1, 4, 1, 1, 1),
(3, 'P', 1, '2020-01-17 22:16:19', '2020-01-17 22:16:19', 2, 6, 1, 1, 1),
(4, 'P', 1, '2020-01-17 22:16:19', '2020-01-17 22:16:19', 2, 11, 1, 1, 1),
(5, 'P', 1, '2020-01-17 22:16:19', '2020-01-17 22:16:19', 2, 12, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_marks_registers`
--

CREATE TABLE `sm_exam_marks_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `obtained_marks` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_schedules`
--

CREATE TABLE `sm_exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_period_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_term_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_exam_schedules`
--

INSERT INTO `sm_exam_schedules` (`id`, `date`, `active_status`, `created_at`, `updated_at`, `exam_period_id`, `room_id`, `subject_id`, `exam_term_id`, `exam_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`) VALUES
(5, '2020-01-03', 1, '2020-01-02 18:22:14', '2020-01-02 18:22:14', 8, 1, 3, 1, NULL, 1, 1, 1, 1, 1),
(2, '2019-12-31', 1, '2019-12-30 17:52:35', '2019-12-30 17:52:35', 8, 2, 3, 2, NULL, 1, 1, 1, 1, 1),
(3, '2020-01-02', 1, '2019-12-30 21:41:47', '2019-12-30 21:41:47', 8, 1, 3, 1, NULL, 3, 2, 1, 1, 1),
(4, '2020-01-02', 1, '2019-12-30 21:42:16', '2019-12-30 21:42:16', 9, 2, 2, 1, NULL, 3, 2, 1, 1, 1),
(6, '2020-01-04', 1, '2020-01-02 18:22:46', '2020-01-02 18:22:46', 8, 1, 5, 1, NULL, 1, 1, 1, 1, 1),
(7, '2020-02-10', 1, '2020-01-02 18:23:21', '2020-01-17 22:13:16', 8, 1, 6, 1, NULL, 1, 1, 1, 1, 1),
(8, '2020-01-06', 1, '2020-01-02 18:23:45', '2020-01-02 18:23:45', 8, 1, 7, 1, NULL, 1, 1, 1, 1, 1),
(9, '2020-01-07', 1, '2020-01-02 18:24:24', '2020-01-02 18:24:24', 8, 1, 4, 1, NULL, 1, 1, 1, 1, 1),
(10, '2020-01-08', 1, '2020-01-02 18:24:47', '2020-01-02 18:24:47', 8, 1, 2, 1, NULL, 1, 1, 1, 1, 1),
(11, '2020-01-09', 1, '2020-01-02 18:25:08', '2020-01-02 18:25:08', 8, 1, 8, 1, NULL, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_schedule_subjects`
--

CREATE TABLE `sm_exam_schedule_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_mark` int(11) DEFAULT NULL,
  `pass_mark` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_schedule_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_setups`
--

CREATE TABLE `sm_exam_setups` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_mark` double(8,2) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_term_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_exam_setups`
--

INSERT INTO `sm_exam_setups` (`id`, `exam_title`, `exam_mark`, `active_status`, `created_at`, `updated_at`, `exam_id`, `class_id`, `subject_id`, `section_id`, `exam_term_id`, `created_by`, `updated_by`, `school_id`) VALUES
(2, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 2, 1, 1, 1, 1, 1),
(3, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 3, 1, 1, 1, 1, 1),
(5, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 2, 2, 1, 1, 1, 1),
(6, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 3, 2, 1, 1, 1, 1),
(8, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 2, 3, 1, 1, 1, 1),
(9, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 3, 3, 1, 1, 1, 1),
(11, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 2, 4, 1, 1, 1, 1),
(12, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 3, 4, 1, 1, 1, 1),
(14, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 2, 5, 1, 1, 1, 1),
(15, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 1, 3, 5, 1, 1, 1, 1),
(17, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 2, 1, 1, 1, 1, 1),
(18, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 3, 1, 1, 1, 1, 1),
(20, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 2, 2, 1, 1, 1, 1),
(21, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 3, 2, 1, 1, 1, 1),
(23, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 2, 3, 1, 1, 1, 1),
(24, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 3, 3, 1, 1, 1, 1),
(96, 'pass', 80.00, 1, '2020-01-17 22:11:14', '2020-01-17 22:11:14', 24, 1, 7, 1, 1, 1, 1, 1),
(26, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 2, 4, 1, 1, 1, 1),
(27, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 3, 4, 1, 1, 1, 1),
(29, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 2, 5, 1, 1, 1, 1),
(30, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 2, 3, 5, 1, 1, 1, 1),
(32, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 2, 1, 1, 1, 1, 1),
(33, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 3, 1, 1, 1, 1, 1),
(35, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 2, 2, 1, 1, 1, 1),
(36, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 3, 2, 1, 1, 1, 1),
(38, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 2, 3, 1, 1, 1, 1),
(39, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 3, 3, 1, 1, 1, 1),
(41, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 2, 4, 1, 1, 1, 1),
(42, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 3, 4, 1, 1, 1, 1),
(44, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 2, 5, 1, 1, 1, 1),
(45, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 3, 3, 5, 1, 1, 1, 1),
(47, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 2, 1, 1, 1, 1, 1),
(48, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 3, 1, 1, 1, 1, 1),
(50, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 2, 2, 1, 1, 1, 1),
(51, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 3, 2, 1, 1, 1, 1),
(53, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 2, 3, 1, 1, 1, 1),
(54, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 3, 3, 1, 1, 1, 1),
(56, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 2, 4, 1, 1, 1, 1),
(57, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 3, 4, 1, 1, 1, 1),
(59, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 2, 5, 1, 1, 1, 1),
(60, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 4, 3, 5, 1, 1, 1, 1),
(62, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 2, 1, 1, 1, 1, 1),
(63, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 3, 1, 1, 1, 1, 1),
(65, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 2, 2, 1, 1, 1, 1),
(66, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 3, 2, 1, 1, 1, 1),
(68, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 2, 3, 1, 1, 1, 1),
(69, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 3, 3, 1, 1, 1, 1),
(71, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 2, 4, 1, 1, 1, 1),
(72, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 3, 4, 1, 1, 1, 1),
(76, 'JANUARY EXAMS', NULL, 1, '2019-12-26 16:59:14', '2019-12-26 16:59:14', 4, 1, 2, 1, 1, 1, 1, 1),
(74, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 2, 5, 1, 1, 1, 1),
(75, 'Exam', 100.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', NULL, 5, 3, 5, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_types`
--

CREATE TABLE `sm_exam_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_exam_types`
--

INSERT INTO `sm_exam_types` (`id`, `active_status`, `title`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, 'First Term', NULL, NULL, 1, 1, 1),
(2, 1, 'Second Term', NULL, NULL, 1, 1, 1),
(3, 1, 'Third Term', NULL, NULL, 1, 1, 1),
(4, 1, 'Science Exams', '2019-12-30 22:34:36', '2019-12-30 22:34:36', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_expense_heads`
--

CREATE TABLE `sm_expense_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_expense_heads`
--

INSERT INTO `sm_expense_heads` (`id`, `name`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'et', 'Duchess! The Queen shrieked out. \'Behead that day. \'That depends a deal frightened at the largest.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(2, 'explicabo', 'I\'m not come upon an undertone, \'important--unimportant--unimportant--important--\' as the King.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(3, 'esse', 'FOOT, ESQ. HEARTHRUG, NEAR THE.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(4, 'tempora', 'Alice said \'That\'s right!\' shouted the use now,\' thought poor Alice, \'a dog\'s not a moment that.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(5, 'corrupti', 'Queen had read that person, I\'ll have croqueted the fan and the sea. So they never do it was.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(6, 'eos', 'Tortoise, if not, could tell me larger, I can\'t think! And Alice panted as if I\'ve fallen by.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(7, 'nihil', 'Alice, and bread-and-butter, and that was to the shore. CHAPTER VI. Pig and she exclaimed Alice.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(8, 'incidunt', 'Alice thought Alice. \'You should be a serpent, I did: there\'s no time she went on a Cheshire Cat.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(9, 'velit', 'There was a lobster as the door, so far,\' thought Alice, and barking hoarsely all joined in a.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(10, 'cum', 'It was moving them she could not, would all that beautiful Soup? Pennyworth only grinned a vague.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_assigns`
--

CREATE TABLE `sm_fees_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_master_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_fees_assigns`
--

INSERT INTO `sm_fees_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `fees_master_id`, `student_id`, `created_by`, `updated_by`, `school_id`) VALUES
(28, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 23, 6, 1, 1, 1),
(27, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 22, 6, 1, 1, 1),
(26, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 15, 6, 1, 1, 1),
(25, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 14, 6, 1, 1, 1),
(24, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 13, 6, 1, 1, 1),
(23, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 12, 6, 1, 1, 1),
(22, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 11, 6, 1, 1, 1),
(21, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 23, 7, 1, 1, 1),
(20, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 22, 7, 1, 1, 1),
(19, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 15, 7, 1, 1, 1),
(18, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 14, 7, 1, 1, 1),
(17, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 13, 7, 1, 1, 1),
(16, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 12, 7, 1, 1, 1),
(15, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 11, 7, 1, 1, 1),
(40, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 21, 6, 1, 1, 1),
(39, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 20, 6, 1, 1, 1),
(38, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 19, 6, 1, 1, 1),
(37, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 18, 6, 1, 1, 1),
(36, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 17, 6, 1, 1, 1),
(35, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 16, 6, 1, 1, 1),
(41, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 16, 11, 1, 1, 1),
(42, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 17, 11, 1, 1, 1),
(43, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 18, 11, 1, 1, 1),
(44, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 19, 11, 1, 1, 1),
(45, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 20, 11, 1, 1, 1),
(46, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 21, 11, 1, 1, 1),
(47, 1, '2020-01-20 19:32:02', '2020-01-20 19:32:02', 24, 6, 1, 1, 1),
(48, 1, '2020-01-20 19:32:02', '2020-01-20 19:32:02', 24, 11, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_assign_discounts`
--

CREATE TABLE `sm_fees_assign_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `fees_discount_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_carry_forwards`
--

CREATE TABLE `sm_fees_carry_forwards` (
  `id` int(10) UNSIGNED NOT NULL,
  `balance` double(16,2) NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_fees_carry_forwards`
--

INSERT INTO `sm_fees_carry_forwards` (`id`, `balance`, `active_status`, `created_at`, `updated_at`, `student_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 4971.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 1, 1, 1, 1),
(2, 3902.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 2, 1, 1, 1),
(3, 3398.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 3, 1, 1, 1),
(4, 1742.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 4, 1, 1, 1),
(5, 3683.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 5, 1, 1, 1),
(6, 4170.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 6, 1, 1, 1),
(7, 3560.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 7, 1, 1, 1),
(8, 3773.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 8, 1, 1, 1),
(9, 2324.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 9, 1, 1, 1),
(10, 4436.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 10, 1, 1, 1),
(11, 3180.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 11, 1, 1, 1),
(12, 3468.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 12, 1, 1, 1),
(13, 3871.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 13, 1, 1, 1),
(14, 4778.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 14, 1, 1, 1),
(15, 4132.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 15, 1, 1, 1),
(16, 2583.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 16, 1, 1, 1),
(17, 4348.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 17, 1, 1, 1),
(18, 3384.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 18, 1, 1, 1),
(19, 3395.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 19, 1, 1, 1),
(20, 4416.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 20, 1, 1, 1),
(21, 3716.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 21, 1, 1, 1),
(22, 3294.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 22, 1, 1, 1),
(23, 1642.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 23, 1, 1, 1),
(24, 2986.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 24, 1, 1, 1),
(25, 4629.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 25, 1, 1, 1),
(26, 2459.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 26, 1, 1, 1),
(27, 1679.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 27, 1, 1, 1),
(28, 2013.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 28, 1, 1, 1),
(29, 2263.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 29, 1, 1, 1),
(30, 3673.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 30, 1, 1, 1),
(31, 4332.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 31, 1, 1, 1),
(32, 1933.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 32, 1, 1, 1),
(33, 4256.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 33, 1, 1, 1),
(34, 1718.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 34, 1, 1, 1),
(35, 1457.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 35, 1, 1, 1),
(36, 2850.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 36, 1, 1, 1),
(37, 2844.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 37, 1, 1, 1),
(38, 1832.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 38, 1, 1, 1),
(39, 4305.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 39, 1, 1, 1),
(40, 2449.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 40, 1, 1, 1),
(41, 3550.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 41, 1, 1, 1),
(42, 3164.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 42, 1, 1, 1),
(43, 3156.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 43, 1, 1, 1),
(44, 1605.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 44, 1, 1, 1),
(45, 4724.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 45, 1, 1, 1),
(46, 5000.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 46, 1, 1, 1),
(47, 2993.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 47, 1, 1, 1),
(48, 1002.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 48, 1, 1, 1),
(49, 3375.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 49, 1, 1, 1),
(50, 1431.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 50, 1, 1, 1),
(51, 4616.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 51, 1, 1, 1),
(52, 3946.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 52, 1, 1, 1),
(53, 2560.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 53, 1, 1, 1),
(54, 2187.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 54, 1, 1, 1),
(55, 3811.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 55, 1, 1, 1),
(56, 1383.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 56, 1, 1, 1),
(57, 3080.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 57, 1, 1, 1),
(58, 3463.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 58, 1, 1, 1),
(59, 3792.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 59, 1, 1, 1),
(60, 1955.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 60, 1, 1, 1),
(61, 2795.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 61, 1, 1, 1),
(62, 3517.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 62, 1, 1, 1),
(63, 2318.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 63, 1, 1, 1),
(64, 2831.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 64, 1, 1, 1),
(65, 1873.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 65, 1, 1, 1),
(66, 3451.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 66, 1, 1, 1),
(67, 4249.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 67, 1, 1, 1),
(68, 1186.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 68, 1, 1, 1),
(69, 4573.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 69, 1, 1, 1),
(70, 2356.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 70, 1, 1, 1),
(71, 1134.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 71, 1, 1, 1),
(72, 3162.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 72, 1, 1, 1),
(73, 3284.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 73, 1, 1, 1),
(74, 2518.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 74, 1, 1, 1),
(75, 4177.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 75, 1, 1, 1),
(76, 4380.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 76, 1, 1, 1),
(77, 1062.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 77, 1, 1, 1),
(78, 4787.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 78, 1, 1, 1),
(79, 1636.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 79, 1, 1, 1),
(80, 1657.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 80, 1, 1, 1),
(81, 4467.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 81, 1, 1, 1),
(82, 2667.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 82, 1, 1, 1),
(83, 4298.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 83, 1, 1, 1),
(84, 2732.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 84, 1, 1, 1),
(85, 2967.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 85, 1, 1, 1),
(86, 1326.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 86, 1, 1, 1),
(87, 1059.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 87, 1, 1, 1),
(88, 2257.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 88, 1, 1, 1),
(89, 2760.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 89, 1, 1, 1),
(90, 1434.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 90, 1, 1, 1),
(91, 3212.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 91, 1, 1, 1),
(92, 2675.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 92, 1, 1, 1),
(93, 2773.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 93, 1, 1, 1),
(94, 3734.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 94, 1, 1, 1),
(95, 2314.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 95, 1, 1, 1),
(96, 4651.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 96, 1, 1, 1),
(97, 3152.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 97, 1, 1, 1),
(98, 4276.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 98, 1, 1, 1),
(99, 4016.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 99, 1, 1, 1),
(100, 3414.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 100, 1, 1, 1),
(101, 2081.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 101, 1, 1, 1),
(102, 3793.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 102, 1, 1, 1),
(103, 4788.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 103, 1, 1, 1),
(104, 2923.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 104, 1, 1, 1),
(105, 2888.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 105, 1, 1, 1),
(106, 3396.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 106, 1, 1, 1),
(107, 4199.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 107, 1, 1, 1),
(108, 3842.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 108, 1, 1, 1),
(109, 3647.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 109, 1, 1, 1),
(110, 4241.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 110, 1, 1, 1),
(111, 4632.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 111, 1, 1, 1),
(112, 3054.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 112, 1, 1, 1),
(113, 4237.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 113, 1, 1, 1),
(114, 4303.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 114, 1, 1, 1),
(115, 4605.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 115, 1, 1, 1),
(116, 4620.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 116, 1, 1, 1),
(117, 3909.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 117, 1, 1, 1),
(118, 4476.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 118, 1, 1, 1),
(119, 3766.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 119, 1, 1, 1),
(120, 1643.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 120, 1, 1, 1),
(121, 3129.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 121, 1, 1, 1),
(122, 1224.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 122, 1, 1, 1),
(123, 1740.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 123, 1, 1, 1),
(124, 1578.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 124, 1, 1, 1),
(125, 2614.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 125, 1, 1, 1),
(126, 4060.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 126, 1, 1, 1),
(127, 3448.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 127, 1, 1, 1),
(128, 2884.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 128, 1, 1, 1),
(129, 1072.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 129, 1, 1, 1),
(130, 2654.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 130, 1, 1, 1),
(131, 2936.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 131, 1, 1, 1),
(132, 3074.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 132, 1, 1, 1),
(133, 1639.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 133, 1, 1, 1),
(134, 2700.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 134, 1, 1, 1),
(135, 3825.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 135, 1, 1, 1),
(136, 3147.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 136, 1, 1, 1),
(137, 2320.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 137, 1, 1, 1),
(138, 3066.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 138, 1, 1, 1),
(139, 4043.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 139, 1, 1, 1),
(140, 2920.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 140, 1, 1, 1),
(141, 3197.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 141, 1, 1, 1),
(142, 1414.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 142, 1, 1, 1),
(143, 2918.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 143, 1, 1, 1),
(144, 3854.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 144, 1, 1, 1),
(145, 2272.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 145, 1, 1, 1),
(146, 3817.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 146, 1, 1, 1),
(147, 4549.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 147, 1, 1, 1),
(148, 3185.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 148, 1, 1, 1),
(149, 1683.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 149, 1, 1, 1),
(150, 4775.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 150, 1, 1, 1),
(151, 3786.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 151, 1, 1, 1),
(152, 1790.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 152, 1, 1, 1),
(153, 1053.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 153, 1, 1, 1),
(154, 1541.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 154, 1, 1, 1),
(155, 3554.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 155, 1, 1, 1),
(156, 3273.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 156, 1, 1, 1),
(157, 2826.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 157, 1, 1, 1),
(158, 3100.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 158, 1, 1, 1),
(159, 2843.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 159, 1, 1, 1),
(160, 2003.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 160, 1, 1, 1),
(161, 2515.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 161, 1, 1, 1),
(162, 2710.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 162, 1, 1, 1),
(163, 3324.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 163, 1, 1, 1),
(164, 3772.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 164, 1, 1, 1),
(165, 2099.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 165, 1, 1, 1),
(166, 1616.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 166, 1, 1, 1),
(167, 3131.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 167, 1, 1, 1),
(168, 4979.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 168, 1, 1, 1),
(169, 1182.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 169, 1, 1, 1),
(170, 2677.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 170, 1, 1, 1),
(171, 3933.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 171, 1, 1, 1),
(172, 4154.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 172, 1, 1, 1),
(173, 1844.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 173, 1, 1, 1),
(174, 1058.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 174, 1, 1, 1),
(175, 2138.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 175, 1, 1, 1),
(176, 1036.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 176, 1, 1, 1),
(177, 1157.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 177, 1, 1, 1),
(178, 2762.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 178, 1, 1, 1),
(179, 3296.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 179, 1, 1, 1),
(180, 1564.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 180, 1, 1, 1),
(181, 2012.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 181, 1, 1, 1),
(182, 2431.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 182, 1, 1, 1),
(183, 2608.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 183, 1, 1, 1),
(184, 2485.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 184, 1, 1, 1),
(185, 1785.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 185, 1, 1, 1),
(186, 2732.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 186, 1, 1, 1),
(187, 4860.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 187, 1, 1, 1),
(188, 2488.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 188, 1, 1, 1),
(189, 1438.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 189, 1, 1, 1),
(190, 1685.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 190, 1, 1, 1),
(191, 2476.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 191, 1, 1, 1),
(192, 1142.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 192, 1, 1, 1),
(193, 3148.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 193, 1, 1, 1),
(194, 3232.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 194, 1, 1, 1),
(195, 2541.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 195, 1, 1, 1),
(196, 1105.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 196, 1, 1, 1),
(197, 4865.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 197, 1, 1, 1),
(198, 4578.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 198, 1, 1, 1),
(199, 4310.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 199, 1, 1, 1),
(200, 3557.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 200, 1, 1, 1),
(201, 1172.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 201, 1, 1, 1),
(202, 3741.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 202, 1, 1, 1),
(203, 2380.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 203, 1, 1, 1),
(204, 2513.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 204, 1, 1, 1),
(205, 2059.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 205, 1, 1, 1),
(206, 4893.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 206, 1, 1, 1),
(207, 2311.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 207, 1, 1, 1),
(208, 4596.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 208, 1, 1, 1),
(209, 1727.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 209, 1, 1, 1),
(210, 4626.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 210, 1, 1, 1),
(211, 3436.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 211, 1, 1, 1),
(212, 1501.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 212, 1, 1, 1),
(213, 3190.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 213, 1, 1, 1),
(214, 4137.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 214, 1, 1, 1),
(215, 1428.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 215, 1, 1, 1),
(216, 4585.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 216, 1, 1, 1),
(217, 3142.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 217, 1, 1, 1),
(218, 1303.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 218, 1, 1, 1),
(219, 1469.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 219, 1, 1, 1),
(220, 1429.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 220, 1, 1, 1),
(221, 4973.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 221, 1, 1, 1),
(222, 2170.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 222, 1, 1, 1),
(223, 4587.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 223, 1, 1, 1),
(224, 4499.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 224, 1, 1, 1),
(225, 2616.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 225, 1, 1, 1),
(226, 1265.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 226, 1, 1, 1),
(227, 2882.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 227, 1, 1, 1),
(228, 4121.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 228, 1, 1, 1),
(229, 3067.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 229, 1, 1, 1),
(230, 1257.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 230, 1, 1, 1),
(231, 4737.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 231, 1, 1, 1),
(232, 2558.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 232, 1, 1, 1),
(233, 3131.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 233, 1, 1, 1),
(234, 4721.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 234, 1, 1, 1),
(235, 2017.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 235, 1, 1, 1),
(236, 3322.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 236, 1, 1, 1),
(237, 3856.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 237, 1, 1, 1),
(238, 2904.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 238, 1, 1, 1),
(239, 1245.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 239, 1, 1, 1),
(240, 3822.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 240, 1, 1, 1),
(241, 1266.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 241, 1, 1, 1),
(242, 2294.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 242, 1, 1, 1),
(243, 2877.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 243, 1, 1, 1),
(244, 1192.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 244, 1, 1, 1),
(245, 3375.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 245, 1, 1, 1),
(246, 2955.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 246, 1, 1, 1),
(247, 2524.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 247, 1, 1, 1),
(248, 4281.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 248, 1, 1, 1),
(249, 4434.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 249, 1, 1, 1),
(250, 1226.00, 1, '2019-11-13 00:23:41', '2019-11-13 00:23:41', 250, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_discounts`
--

CREATE TABLE `sm_fees_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('once','year') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'once for one time, year for all months',
  `amount` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_fees_discounts`
--

INSERT INTO `sm_fees_discounts` (`id`, `name`, `code`, `type`, `amount`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Merit Scholarship', 'SS-01', 'year', 1000.00, 'Merit Scholarship', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(2, 'Siblings Scholarship', 'SB-01', 'once', 1000.00, 'Siblings Scholarship', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(3, 'Sadqa/Zakat', '2979699', 'year', 5000.00, NULL, 1, '2020-01-15 19:42:08', '2020-01-15 19:42:08', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_groups`
--

CREATE TABLE `sm_fees_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_fees_groups`
--

INSERT INTO `sm_fees_groups` (`id`, `name`, `type`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Transport Fee', 'System', 'System Automatic created this fee group', 1, NULL, NULL, 1, 1, 1),
(2, 'Dormitory Fee', 'System', 'System Automatic created this fee group', 1, NULL, NULL, 1, 1, 1),
(3, 'Library Fee', 'System', 'System Automatic created this fee group', 1, NULL, NULL, 1, 1, 1),
(4, 'Processing Fee', 'System', 'System Automatic created this fee group', 1, NULL, NULL, 1, 1, 1),
(5, 'Tuition Fee One', 'System', 'System Automatic created this fee group', 1, NULL, '2020-01-20 19:27:54', 1, 1, 1),
(6, 'Development Fee', 'System', 'System Automatic created this fee group', 1, NULL, NULL, 1, 1, 1),
(7, 'Sports Fee', NULL, 'Here is test sports fee', 1, '2020-01-15 19:39:21', '2020-01-15 19:39:21', 1, 1, 1),
(8, 'Tuition Fee two', NULL, NULL, 1, '2020-01-20 19:28:34', '2020-01-20 19:28:34', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_masters`
--

CREATE TABLE `sm_fees_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_group_id` int(10) UNSIGNED DEFAULT NULL,
  `fees_type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_fees_masters`
--

INSERT INTO `sm_fees_masters` (`id`, `date`, `amount`, `active_status`, `created_at`, `updated_at`, `fees_group_id`, `fees_type_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2019-11-12', 1664.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1, 1, 1),
(2, '2019-11-12', 1657.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 2, 1, 1, 1, 1),
(3, '2019-11-12', 1566.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 2, 2, 1, 1, 1),
(4, '2019-11-12', 1830.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 3, 1, 1, 1, 1),
(5, '2019-11-12', 1011.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 3, 2, 1, 1, 1),
(6, '2019-11-12', 1373.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 3, 3, 1, 1, 1),
(7, '2019-11-12', 1580.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 4, 1, 1, 1, 1),
(8, '2019-11-12', 1507.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 4, 2, 1, 1, 1),
(9, '2019-11-12', 1091.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 4, 3, 1, 1, 1),
(10, '2019-11-12', 1856.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 4, 4, 1, 1, 1),
(11, '2019-11-12', 1132.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 5, 1, 1, 1, 1),
(12, '2019-11-12', 1957.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 5, 2, 1, 1, 1),
(13, '2019-11-12', 1811.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 5, 3, 1, 1, 1),
(14, '2019-11-12', 1388.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 5, 4, 1, 1, 1),
(15, '2019-11-12', 1975.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 5, 5, 1, 1, 1),
(16, '2019-11-12', 1642.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 6, 1, 1, 1, 1),
(17, '2019-11-12', 1031.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 6, 2, 1, 1, 1),
(18, '2019-11-12', 1236.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 6, 3, 1, 1, 1),
(19, '2019-11-12', 1517.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 6, 4, 1, 1, 1),
(20, '2019-11-12', 1925.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 6, 5, 1, 1, 1),
(21, '2019-11-12', 1296.00, 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 6, 6, 1, 1, 1),
(22, '2019-11-30', 12000.00, 1, '2019-11-20 18:17:59', '2019-11-20 18:17:59', 5, 7, 1, 1, 1),
(23, '2019-12-25', 5000.00, 1, '2019-12-26 18:14:02', '2019-12-26 18:14:02', 5, 8, 1, 1, 1),
(24, '2020-01-20', 9000.00, 1, '2020-01-20 19:30:30', '2020-01-20 19:30:30', 8, 14, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_payments`
--

CREATE TABLE `sm_fees_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_month` tinyint(4) DEFAULT NULL,
  `discount_amount` double(8,2) DEFAULT NULL,
  `fine` double(8,2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_mode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'C= Cash, Cq=Cheque, D=DD',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_discount_id` int(10) UNSIGNED DEFAULT NULL,
  `fees_type_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_fees_payments`
--

INSERT INTO `sm_fees_payments` (`id`, `discount_month`, `discount_amount`, `fine`, `amount`, `payment_date`, `payment_mode`, `active_status`, `created_at`, `updated_at`, `fees_discount_id`, `fees_type_id`, `student_id`, `created_by`, `updated_by`, `school_id`) VALUES
(3, NULL, 0.00, 0.00, 12000.00, '2020-01-01', 'C', 1, '2020-01-01 19:45:50', '2020-01-01 19:45:50', NULL, 7, 5, 1, 1, 1),
(2, NULL, 0.00, 0.00, 5000.00, '2020-01-01', 'C', 1, '2020-01-01 18:21:05', '2020-01-01 18:21:05', NULL, 8, 4, 1, 1, 1),
(4, NULL, 0.00, 0.00, 5000.00, '2020-01-03', 'C', 1, '2020-01-03 23:32:29', '2020-01-03 23:32:29', NULL, 8, 6, 1, 1, 1),
(5, NULL, 0.00, 0.00, 1517.00, '2020-01-17', 'C', 1, '2020-01-17 21:21:19', '2020-01-17 21:21:19', NULL, 4, 11, 1, 1, 1),
(6, NULL, 0.00, 0.00, 1296.00, '2020-01-17', 'C', 1, '2020-01-17 21:23:20', '2020-01-17 21:23:20', NULL, 6, 11, 1, 1, 1),
(7, NULL, 0.00, 0.00, 1925.00, '2020-01-17', 'C', 1, '2020-01-17 21:23:42', '2020-01-17 21:23:42', NULL, 5, 11, 1, 1, 1),
(8, NULL, 0.00, 0.00, 1236.00, '2020-01-17', 'C', 1, '2020-01-17 21:24:06', '2020-01-17 21:24:06', NULL, 3, 11, 1, 1, 1),
(9, NULL, 0.00, 0.00, 1031.00, '2020-01-17', 'C', 1, '2020-01-17 21:24:29', '2020-01-17 21:24:29', NULL, 2, 11, 1, 1, 1),
(10, NULL, 0.00, 0.00, 1642.00, '2020-01-17', 'C', 1, '2020-01-17 21:24:51', '2020-01-17 21:24:51', NULL, 1, 11, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_types`
--

CREATE TABLE `sm_fees_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(230) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(230) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_fees_types`
--

INSERT INTO `sm_fees_types` (`id`, `name`, `code`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Overheads/operating costs', '91555366', 'THE COURT.\' Everybody looked at last, and told you see.\' \'I dare say a wretched height to Alice; \'but a bone in the whole party that lay on both cried. \'Come, let\'s hear the rattle of having nothing.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(2, 'Educational materials', '07151040', 'I can find herself before HE taught us,\' said the table, but you please! \"William the bill, \"French, music, AND SHOES.\' the Hatter dropped his eyes ran with one end of the end to write out again, so.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(3, 'The use of textbooks', '79390491', 'Owl and got into a whiting. Now you don\'t believe I hadn\'t quite enough--I hope I hadn\'t quite pale (with passion, and sharks are gone, if you\'ve seen a muchness?\' \'Really, now what I wouldn\'t keep.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(4, 'Apps for e-learning', '95945354', 'There was I don\'t like the Hatter. \'You shan\'t be angry tone, \'and most interesting, and the jury, of it was, that Dormouse! Turn that rabbit-hole--and yet--and yet--it\'s rather not,\' Alice said the.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(5, 'e-textbooks', '14593802', 'Alice, a bat?\' when the long as well as the floor, and perhaps you want YOU with their heads!\' and walked down \'important,\' and up and now and drew herself useful, and washing her head appeared, and.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(6, 'Some extra-curricular activities', '00697156', 'However, the Hatter, \'I said Alice, were using it had now that had become very fond of use now,\' thought she, oh! she was delighted to her, about her, and was close by everybody laughed, \'Let me.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(7, 'Laptop computer', '98249312', 'Then came between whiles.\' \'Then it at Alice, and hurried off from her eyes appeared, she picked up and more than three.\' \'Your Majesty must have done that, if I can listen all the darkness as if it.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(8, 'Computer software', '47509573', 'I hadn\'t gone from the Queen. \'You might catch a great curiosity. \'It\'s a child,\' said to beautify is, what?\' said Alice. \'That\'s very interesting. I hadn\'t gone from a hard word, I tell me help.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(9, 'Uniforms for school and PE', '44998059', 'The Cat sitting between them, and whiskers, how small for it, but was to the number of lullaby to grow taller, and then, if something like the stick, running about trouble!\' said a fancy what such.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(10, 'Transportation to and from school', '01035940', 'Who for some severity; \'it\'s laid his father; \'don\'t be raving mad things had learnt it.\' And took the judge,\' she had the game began. Alice could not, would be in it,\' she wanted leaders, and she.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(11, 'Lunch', '07722004', 'King, and talking at all.\' \'Thank you, won\'t do you did,\' said the list, feeling very nearly out her neck nicely by the end of more than his hand in the voice to her ear, and eager with diamonds.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(12, 'Personal school supplies', '20826802', 'And she too close, and found the shriek of bright flowers and there were birds,) \'I daresay it\'s always ready to herself, as we had never ONE with the Gryphon, \'she wants cutting,\' said the back. At.', 1, '2019-11-13 00:23:34', '2019-11-13 00:23:34', 1, 1, 1),
(13, 'Football Fee', '97968', 'test description', 1, '2020-01-15 19:40:26', '2020-01-15 19:40:26', 1, 1, 1),
(14, 'Apps for tution', 'asdasd', 'for tution fee 2', 1, '2020-01-20 19:29:07', '2020-01-20 19:29:07', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_frontend_persmissions`
--

CREATE TABLE `sm_frontend_persmissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_published` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_frontend_persmissions`
--

INSERT INTO `sm_frontend_persmissions` (`id`, `name`, `parent_id`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 0, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(2, 'About Page', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(3, 'Image Banner', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(4, 'Latest News', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(5, 'Notice Board', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(6, 'Event List', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(7, 'Academics', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(8, 'Testimonial', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(9, 'Custom Links', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(10, 'Social Icons', 1, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(11, 'About Image', 2, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(12, 'Statistic Number Section', 2, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(13, 'Our History', 2, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(14, 'Our Mission and Vision', 2, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42'),
(15, 'Testimonial', 2, 1, '2019-11-13 00:23:42', '2019-11-13 00:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `sm_general_settings`
--

CREATE TABLE `sm_general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '$',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1.0',
  `active_status` int(11) DEFAULT '1',
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `language_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `session_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '2019',
  `system_purchase_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_activated_date` date DEFAULT NULL,
  `envato_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envato_item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_url` int(11) NOT NULL DEFAULT '1',
  `ttl_rtl` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_zone_id` int(11) DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `language_id` int(10) UNSIGNED DEFAULT '1',
  `date_format_id` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_general_settings`
--

INSERT INTO `sm_general_settings` (`id`, `school_name`, `site_title`, `school_code`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `logo`, `favicon`, `system_version`, `active_status`, `currency_code`, `language_name`, `session_year`, `system_purchase_code`, `system_activated_date`, `envato_user`, `envato_item_id`, `system_domain`, `copyright_text`, `api_url`, `ttl_rtl`, `created_at`, `updated_at`, `time_zone_id`, `session_id`, `language_id`, `date_format_id`, `school_id`) VALUES
(1, 'IVY School Plus', 'IVY School Plus', 'IvySchoolPlus', '244 CCA, Sector FF, Phase 4, DHA, Lahore', '03214311205', 'admin@ivylabtech.com', 'PKR', '₨', 'public/uploads/settings/ae9210d7b4eccaf53122a5ba267e7528.png', 'public/uploads/settings/bec65539eb2ea24909956e1a479a9127.png', '1.0', 1, 'USD', 'en', '2019', '94df2fd1-5cf1-4375-bfa0-72eee37e297c', NULL, NULL, NULL, NULL, 'Copyright &copy; 2019 All rights reserved | Powered by IvyLab Technologies', 1, 2, NULL, '2019-11-22 18:24:32', 292, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_holidays`
--

CREATE TABLE `sm_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `holiday_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `upload_image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_holidays`
--

INSERT INTO `sm_holidays` (`id`, `holiday_title`, `details`, `from_date`, `to_date`, `upload_image_file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Winter Vacation', NULL, '2019-01-22', '2019-01-28', NULL, 1, NULL, NULL, 1, 1, 1),
(2, 'Summer Vacation', NULL, '2019-05-02', '2019-05-08', NULL, 1, NULL, NULL, 1, 1, 1),
(3, 'Public Holiday', NULL, '2019-05-10', '2019-05-11', NULL, 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_homeworks`
--

CREATE TABLE `sm_homeworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `file` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluated_by` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_homeworks`
--

INSERT INTO `sm_homeworks` (`id`, `homework_date`, `submission_date`, `evaluation_date`, `file`, `marks`, `description`, `active_status`, `created_at`, `updated_at`, `evaluated_by`, `class_id`, `section_id`, `subject_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2020-01-08', '2020-01-09', NULL, '', '20', 'Make assignment on information and communication technology applications.', 1, '2020-01-08 22:30:12', '2020-01-08 22:30:12', NULL, 1, 1, 5, 527, 1, 1),
(2, '2020-01-15', '2020-01-17', '2020-01-17', 'public/uploads/homework/0a4b686110049d0139816168a3aab4fd.png', '10', 'Submit Within Due Date', 1, '2020-01-16 19:46:48', '2020-01-17 22:32:11', NULL, 1, 1, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_homework_students`
--

CREATE TABLE `sm_homework_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `homework_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_homework_students`
--

INSERT INTO `sm_homework_students` (`id`, `marks`, `teacher_comments`, `complete_status`, `active_status`, `created_at`, `updated_at`, `student_id`, `homework_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, 'NG', 'C', 1, '2020-01-17 22:32:11', '2020-01-17 22:32:11', 6, 2, 1, 1, 1),
(2, '8', 'G', 'C', 1, '2020-01-17 22:32:11', '2020-01-17 22:32:11', 11, 2, 1, 1, 1),
(3, '6', 'G', 'C', 1, '2020-01-17 22:32:11', '2020-01-17 22:32:11', 12, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_home_page_settings`
--

CREATE TABLE `sm_home_page_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `link_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_home_page_settings`
--

INSERT INTO `sm_home_page_settings` (`id`, `title`, `long_title`, `short_description`, `link_label`, `link_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'THE ULTIMATE EDUCATION ERP', 'INFIX', 'Managing various administrative tasks in one place is now quite easy and time savior with this INFIX and Give your valued time to your institute that will increase next generation productivity for our society.', 'Learn More About Us', 'http://infixedu.com/about', 'public/backEnd/img/client/home-banner1.jpg', '2019-11-13 00:23:42', '2019-11-13 00:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `sm_hourly_rates`
--

CREATE TABLE `sm_hourly_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_hourly_rates`
--

INSERT INTO `sm_hourly_rates` (`id`, `grade`, `rate`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'A+', 20, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1, 1, 1),
(2, 'A+', 20, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1, 1, 1),
(3, 'A+', 20, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1, 1, 1),
(4, 'A+', 20, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1, 1, 1),
(5, 'A+', 20, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_hr_payroll_earn_deducs`
--

CREATE TABLE `sm_hr_payroll_earn_deducs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `earn_dedc_type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'e for earnings and d for deductions',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payroll_generate_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_hr_payroll_generates`
--

CREATE TABLE `sm_hr_payroll_generates` (
  `id` int(10) UNSIGNED NOT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `total_earning` int(11) DEFAULT NULL,
  `total_deduction` int(11) DEFAULT NULL,
  `gross_salary` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `net_salary` int(11) DEFAULT NULL,
  `payroll_month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'NG for not generated, G for generated, P for paid',
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_hr_payroll_generates`
--

INSERT INTO `sm_hr_payroll_generates` (`id`, `basic_salary`, `total_earning`, `total_deduction`, `gross_salary`, `tax`, `net_salary`, `payroll_month`, `payroll_year`, `payroll_status`, `payment_mode`, `payment_date`, `note`, `active_status`, `created_at`, `updated_at`, `staff_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 30000, NULL, NULL, NULL, 0, 30000, 'January', '2020', 'P', '1', '2020-01-02', NULL, 1, '2020-01-02 18:40:43', '2020-01-02 18:43:25', 17, 1, 1, 1),
(2, 30000, 0, 0, 30000, 0, 30000, 'December', '2019', 'P', '1', '2020-01-21', NULL, 1, '2020-01-21 19:41:49', '2020-01-21 19:42:36', 17, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_hr_salary_templates`
--

CREATE TABLE `sm_hr_salary_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `salary_grades` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_basic` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overtime_rate` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_rent` int(11) DEFAULT NULL,
  `provident_fund` int(11) DEFAULT NULL,
  `gross_salary` int(11) DEFAULT NULL,
  `total_deduction` int(11) DEFAULT NULL,
  `net_salary` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_human_departments`
--

CREATE TABLE `sm_human_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_human_departments`
--

INSERT INTO `sm_human_departments` (`id`, `name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Academic', 1, NULL, NULL, 1, 1, 1),
(2, 'Admin', 1, NULL, NULL, 1, 1, 1),
(3, 'Arts', 1, NULL, NULL, 1, 1, 1),
(4, 'Commerce', 1, NULL, NULL, 1, 1, 1),
(5, 'Library', 1, NULL, NULL, 1, 1, 1),
(6, 'Sports', 1, NULL, NULL, 1, 1, 1),
(7, 'Science', 1, NULL, NULL, 1, 1, 1),
(8, 'Exam', 1, NULL, NULL, 1, 1, 1),
(9, 'Finance', 1, NULL, NULL, 1, 1, 1),
(10, 'Health', 1, NULL, NULL, 1, 1, 1),
(11, 'Technology', 1, NULL, NULL, 1, 1, 1),
(12, 'Music and Theater', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_income_heads`
--

CREATE TABLE `sm_income_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_income_heads`
--

INSERT INTO `sm_income_heads` (`id`, `name`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'eaque', 'HAVE tasted eggs, I wish it was!\' said to her hand again, and all dark overhead; before the White Rabbit coming down! I could hear it asked. \'Why, Mary Ann, and Alice remained looking uneasily at.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(2, 'cupiditate', 'Caterpillar. \'Not I!\' said the morning, but Alice indignantly. \'Ah! that for any more--As it happens; and found a Long Tale They all these were clasped upon the young Crab, a hoarse and doesn\'t like.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(3, 'est', 'IS that case it is such dainties would like a great wonder if she had now had been changed for it off. \'If you by it, and this she stood the matter which was surprised he\'ll be some of a long time.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(4, 'dolorem', 'Alice to avoid shrinking away the Queen said--\' \'Get up!\' said the Gryphon. \'Turn them red. Alice by the mushroom growing larger again, so dreadfully puzzled. \'Does the whole party that you don\'t be.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(5, 'odit', 'Alice got used to know the King and howling and brought herself down that it home?\' when she remembered trying to him: the subject. \'Go on the heads of them again, and the waving the driest thing at.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(6, 'neque', 'Dodo solemnly, rising to grow larger, sir, for poor Alice, a great wig.\' The first minute there goes on the court with me,\' said the Queen, who got entangled among them, and it likes.\' \'I\'d have you.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(7, 'delectus', 'And yet what Latitude was, what? Alice said Alice, surprised he\'ll be turned crimson velvet cushion; and, after the doors of it; and the officer could not much into her own mind about them--all.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(8, 'ea', 'And she could see if I know she was quite forgetting that have grown up and was coming. \'There\'s no larger: still in the Mock Turtle, capering wildly up I must go through was to her sharp little.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(9, 'reprehenderit', 'I\'ve tried to trouble of repeating his eyes filled with us!\"\' \'They have called out of eating and added as it down \'stupid things!\' on with this was just missed her. She ate a snatch in her head.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(10, 'expedita', 'Do cats eat the Queen. \'Well, perhaps I fancied that WOULD go anywhere without interrupting it. \'They lived on the Queen had just now, my dear: she felt a minute or not.\' \'I\'m a tone of the lefthand.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_instructions`
--

CREATE TABLE `sm_instructions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_inventory_payments`
--

CREATE TABLE `sm_inventory_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_receive_sell_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'R for receive S for sell',
  `payment_method` int(10) UNSIGNED DEFAULT NULL,
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_items`
--

CREATE TABLE `sm_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_in_stock` double(8,2) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_items`
--

INSERT INTO `sm_items` (`id`, `item_name`, `total_in_stock`, `description`, `created_at`, `updated_at`, `category_name`, `school_id`) VALUES
(1, 'CHAIRS', 20.00, 'Purchase chairs of total expenditure round about 50,000', '2019-12-30 21:32:12', '2019-12-30 22:53:38', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_categories`
--

CREATE TABLE `sm_item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_item_categories`
--

INSERT INTO `sm_item_categories` (`id`, `category_name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Raw Materials Inventory', '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1),
(2, 'Transit Inventory', '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1),
(3, 'Buffer Inventory', '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1),
(4, 'Application Inventory', '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1),
(5, 'Enterprice Inventory', '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1),
(6, 'Others Inventory', '2019-11-13 00:23:43', '2019-11-13 00:23:43', 1),
(7, 'Chairs', '2019-12-30 21:23:45', '2019-12-30 21:23:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_issues`
--

CREATE TABLE `sm_item_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `issue_to` int(10) UNSIGNED DEFAULT NULL,
  `issue_by` int(10) UNSIGNED DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `issue_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `item_category_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_receives`
--

CREATE TABLE `sm_item_receives` (
  `id` int(10) UNSIGNED NOT NULL,
  `receive_date` date DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `total_paid` int(11) DEFAULT NULL,
  `total_due` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_item_receives`
--

INSERT INTO `sm_item_receives` (`id`, `receive_date`, `reference_no`, `grand_total`, `total_quantity`, `total_paid`, `total_due`, `payment_method`, `paid_status`, `active_status`, `created_at`, `updated_at`, `supplier_id`, `store_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2019-12-30', '1', 50000, 20, 50000, 0, NULL, 'P', 1, '2019-12-30 22:53:38', '2019-12-30 22:53:38', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_receive_children`
--

CREATE TABLE `sm_item_receive_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `item_receive_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_item_receive_children`
--

INSERT INTO `sm_item_receive_children` (`id`, `unit_price`, `quantity`, `sub_total`, `description`, `active_status`, `created_at`, `updated_at`, `item_id`, `item_receive_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 2500, 20, 50000, NULL, 1, '2019-12-30 22:53:38', '2019-12-30 22:53:38', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_sells`
--

CREATE TABLE `sm_item_sells` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_staff_id` int(11) DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `total_paid` int(11) DEFAULT NULL,
  `total_due` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_sell_children`
--

CREATE TABLE `sm_item_sell_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `sell_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_sell_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_stores`
--

CREATE TABLE `sm_item_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_item_stores`
--

INSERT INTO `sm_item_stores` (`id`, `store_name`, `store_no`, `description`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Abc Store', '1', NULL, '2019-12-30 22:50:59', '2019-12-30 22:50:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_languages`
--

CREATE TABLE `sm_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_universal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang_id` int(10) UNSIGNED DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_languages`
--

INSERT INTO `sm_languages` (`id`, `language_name`, `native`, `language_universal`, `active_status`, `created_at`, `updated_at`, `lang_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'English', 'English', 'en', 1, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1, 1),
(2, 'Spanish', 'Español', 'es', 0, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1, 1),
(3, 'French', 'Français', 'fr', 0, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1, 1),
(4, 'Bengali', 'বাংলা', 'bn', 0, '2019-11-13 00:22:30', '2019-11-13 00:22:30', 1, 1, 1, 1),
(5, 'Urdu', 'اردو', 'ur', 0, '2019-11-22 00:03:54', '2019-11-22 00:03:54', 108, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_language_phrases`
--

CREATE TABLE `sm_language_phrases` (
  `id` int(10) UNSIGNED NOT NULL,
  `modules` text,
  `default_phrases` text,
  `en` text,
  `es` text,
  `fr` text,
  `bn` text,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ur` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sm_language_phrases`
--

INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `es`, `fr`, `bn`, `active_status`, `created_at`, `updated_at`, `ur`) VALUES
(1, '0', 'dashboard', 'Dashboard', 'Tablero', 'Tableau de bord', 'ড্যাশবোর্ড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Dashboard'),
(2, '0', 'welcome', 'Welcome', 'Bienvenido', 'Bienvenue', 'স্বাগত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Welcome'),
(3, '0', 'student', 'Student', 'Estudiante', 'Étudiant', 'ছাত্র', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Student'),
(4, '0', 'total', 'Total', 'Total', 'Total', 'মোট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Total'),
(5, '0', 'teachers', 'Teachers', 'Maestros', 'Enseignants', 'শিক্ষক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Teachers'),
(6, '0', 'parents', 'Parents', 'Los padres', 'Parents', 'মাতাপিতা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Parents'),
(7, '0', 'staffs', 'Staffs', 'Personal', 'Le personnel', 'কর্মীরা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Staffs'),
(8, '0', 'income_and_expenses_for', 'Income and Expenses for', 'Ingresos y gastos para', 'Revenus et dépenses pour', 'আয় এবং ব্যয় জন্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Income and Expenses for'),
(9, '0', 'total_income', 'Total Income', 'Ingresos totales', 'Revenu total', 'মোট আয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Total Income'),
(10, '0', 'total_expenses', 'Total Expenses', 'Gastos totales', 'Dépenses totales', 'মোট খরচ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Total Expenses'),
(11, '0', 'total_profit', 'Total Profit', 'Beneficio total', 'Bénéfice total', 'সমস্ত লাভ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Total Profit'),
(12, '0', 'total_revenue', 'Total Revenue', 'Los ingresos totales', 'Revenu total', 'মোট রাজস্ব', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Total Revenue'),
(13, '0', 'title', 'Title', 'Título', 'Titre', 'খেতাব', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Title'),
(14, '0', 'message', 'Message', 'Mensaje', 'Message', 'বার্তা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Message'),
(15, '0', 'actions', 'Actions', 'Comportamiento', 'actes', 'ক্রিয়াকলাপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Actions'),
(16, '0', 'calendar', 'Calendar', 'Calendario', 'Calendrier', 'পাঁজি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Calendar'),
(17, '0', 'view', 'View', 'Ver', 'Vue', 'দৃশ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'View'),
(18, '0', 'to_do_list', 'To Do List', 'Lista de quehaceres', 'Liste de choses à faire', 'তালিকা তৈরি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'To Do List'),
(19, '0', 'add', 'Add', 'Añadir', 'Ajouter', 'যোগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Add'),
(20, '0', 'edit', 'Edit', 'Editar', 'modifier', 'সম্পাদন করা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Edit'),
(21, '0', 'no_do_lists_assigned_yet', 'No Do Lists Assigned Yet', 'No hay listas asignadas aún', 'Aucune liste assignée pour linstant', 'না এখনো তালিকাভুক্ত করা তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'No Do Lists Assigned Yet'),
(22, '1', 'admin_section', 'Admin Section', 'Sección de Administración', 'Section Admin', 'অ্যাডমিন বিভাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Admin Section'),
(23, '1', 'admission_query', 'Admission Query', 'Consulta de Admisión', 'Requête dadmission', 'ভর্তি প্রশ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Admission Query'),
(24, '1', 'select_criteria', 'Select Criteria', 'Seleccione los criterios', 'Sélectionner des critères', 'মাপদণ্ড নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Select Criteria'),
(25, '1', 'date_from', 'Date From', 'Fecha de', 'Dater de', 'তারিখ হতে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Date From'),
(26, '1', 'date_to', 'Date To', 'Fecha para', 'Date à', 'তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Date To'),
(27, '1', 'select_source', 'Select Source', 'Seleccione Fuente', 'Sélectionnez la source', 'উৎস নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Select Source'),
(28, '1', 'select_status', 'Select status', 'Seleccionar estado', 'Sélectionnez le statut', 'অবস্থা নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Select status'),
(29, '1', 'Status', 'Status', 'Estado', 'Statut', 'অবস্থা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Status'),
(30, '1', 'active', 'Active', 'Activo', 'actif', 'সক্রিয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Active'),
(31, '1', 'inactive', 'Inactive', 'Inactivo', 'Inactif', 'নিষ্ক্রিয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Inactive'),
(32, '1', 'search', 'Search', 'Buscar', 'Chercher', 'অনুসন্ধান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Search'),
(33, '1', 'query_list', 'Query List', 'Lista de consultas', 'Liste de requêtes', 'প্রশ্ন তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Query List'),
(34, '1', 'name', 'Name', 'Nombre', 'prénom', 'নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Name'),
(35, '1', 'phone', 'Phone', 'Teléfono', 'Téléphone', 'ফোন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Phone'),
(36, '1', 'source', 'Source', 'Fuente', 'La source', 'সূত্র', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Source'),
(37, '1', 'email', 'Email', 'Email', 'Email', 'ইমেইল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Email'),
(38, '1', 'query_date', 'Query Date', 'Fecha de consulta', 'Date de la requête', 'প্রশ্ন তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Query Date'),
(39, '1', 'last_follow_up_date', 'last follow up date', 'última fecha de seguimiento', 'dernière date de suivi', 'সর্বশেষ ফলো আপ তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'last follow up date'),
(40, '1', 'next_follow_up_date', 'next follow up date', 'siguiente fecha de seguimiento', 'prochaine date de suivi', 'পরবর্তী অনুসরণ তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'next follow up date'),
(41, '1', 'select', 'Select', 'Seleccionar', 'Sélectionner', 'নির্বাচন করা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Select'),
(42, '1', 'add_query', 'Add Query', 'Añadir consulta', 'Ajouter une requête', 'প্রশ্ন যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Add Query'),
(43, '1', 'delete', 'Delete', 'Borrar', 'Effacer', 'মুছে ফেলা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Delete'),
(44, '1', 'delete_admission_query', 'Delete Admission Query', 'Eliminar consulta de admisión', 'Supprimer la requête dadmission', 'ভর্তি প্রশ্ন মুছে ফেলুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Delete Admission Query'),
(45, '1', 'are_you_sure_to_delete', 'Are you sure to delete this item?', '¿Estás seguro de eliminar este elemento?', 'Êtes-vous sûr de vouloir supprimer cet article?', 'আপনি এই আইটেম মুছে ফেলার জন্য নিশ্চিত?', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Are you sure to delete this item?'),
(46, '1', 'cancel', 'Cancel', 'Cancelar', 'Annuler', 'বাতিল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Cancel'),
(47, '1', 'admission_enquiry', 'Admission Enquiry', 'Consulta de Admisión', 'Enquête dadmission', 'ভর্তি পরীক্ষা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Admission Enquiry'),
(48, '1', 'address', 'Address', 'Dirección', 'Adresse', 'ঠিকানা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Address'),
(49, '1', 'description', 'Description', 'Descripción', 'La description', 'বিবরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Description'),
(50, '1', 'date', 'Date', 'Fecha', 'Rendez-vous amoureux', 'তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Date'),
(51, '1', 'assigned', 'Assigned', 'Asignado', 'Attribué', 'বরাদ্দ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Assigned'),
(52, '1', 'reference', 'Reference', 'Referencia', 'Référence', 'উল্লেখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Reference'),
(53, '1', 'number_of_child', 'Number of child', 'Numero de niño', 'Nombre denfant', 'সন্তানের সংখ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Number of child'),
(54, '1', 'save', 'Save', 'Salvar', 'sauvegarder', 'সংরক্ষণ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Save'),
(55, '1', 'visitor_book', 'Visitor Book', 'Libro de visitas', 'Livre de visites', 'ভিজিটর বুক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Visitor Book'),
(56, '1', 'visitor', 'Visitor', 'Visitante', 'Visiteur', 'পরিদর্শক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Visitor'),
(57, '1', 'purpose', 'Purpose', 'Propósito', 'Objectif', 'উদ্দেশ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Purpose'),
(58, '1', 'id', 'Id', 'CARNÉ DE IDENTIDAd', 'Id', 'আইডি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Id'),
(59, '1', 'no_of_person', 'No. of Person', 'No. de persona', 'No. de personne', 'ব্যক্তির সংখ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'No. of Person'),
(60, '1', 'in_time', 'In Time', 'A tiempo', 'À lheure', 'সময়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'In Time'),
(61, '1', 'out_time', 'Out time', 'Fuera de tiempo', 'Temps de sortie', 'সময় শেষ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Out time'),
(62, '1', 'browse', 'browse', 'vistazo', 'Feuilleter', 'ব্রাউজ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'browse'),
(63, '1', 'update', 'Update', 'Actualizar', 'Mettre à jour', 'হালনাগাদ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Update'),
(64, '1', 'visitor_list', 'Visitor List', 'Lista de visitantes', 'Liste de visiteurs', 'ভিজিটর তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Visitor List'),
(65, '1', 'download', 'Download', 'Descargar', 'Télécharger', 'ডাউনলোড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Download'),
(66, '1', 'complaint', 'Complaint', 'Queja', 'Plainte', 'অভিযোগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Complaint'),
(67, '1', 'by', 'By', 'Por', 'Par', 'দ্বারা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'By'),
(68, '1', 'type', 'Type', 'Tipo', 'Type', 'আদর্শ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Type'),
(69, '1', 'taken', 'Taken', 'Tomado', 'Pris', 'ধরা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Taken'),
(70, '1', 'list', 'List', 'Lista', 'liste', 'তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'List'),
(71, '1', 'postal_receive', 'Postal Receive', 'Recibir Postal', 'Réception postale', 'পোস্টাল গ্রহণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Postal Receive'),
(72, '1', 'from_title', 'From Title', 'Del título', 'De titre', 'শিরোনাম থেকে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'From Title'),
(73, '1', 'no', 'No.', 'No.', 'Non.', 'না।', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'No.'),
(74, '1', 'note', 'Note', 'Nota', 'Remarque', 'বিঃদ্রঃ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Note'),
(75, '1', 'to_title', 'To Title', 'Al título', 'Au titre', 'শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'To Title'),
(76, '1', 'postal_dispatch', 'Postal Dispatch', 'Despacho Postal', 'Envoi postal', 'ডাক প্রেরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Postal Dispatch'),
(77, '1', 'phone_call_log', 'Phone Call Log', 'Registro de llamadas telefónicas', 'Journal des appels téléphoniques', 'ফোন কল লগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Phone Call Log'),
(78, '1', 'phone_call', 'Phone Call', 'Llamada telefónica', 'Appel téléphonique', 'ফোন কল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Phone Call'),
(79, '1', 'follow_up_date', 'Follow Up Date', 'Fecha de seguimiento', 'Date de suivi', 'আপ অনুসরণ করুন তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Follow Up Date'),
(80, '1', 'call_duration', 'Call Duration', 'Duración de la llamada', 'Durée dappel', 'কল সময়কাল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Call Duration'),
(81, '1', 'incoming', 'Incoming', 'Entrante', 'Entrant', 'ইনকামিং', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Incoming'),
(82, '1', 'outgoing', 'Outgoing', 'Saliente', 'Sortant', 'বিদায়ী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Outgoing'),
(83, '1', 'call', 'Call', 'Llamada', 'Appel', 'কল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Call'),
(84, '1', 'admin_setup', 'Admin Setup', 'Configuración de administrador', 'Configuration de ladministrateur', 'অ্যাডমিন সেটআপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Admin Setup'),
(85, '1', 'student_certificate', 'Student Certificate', 'Certificado de estudiante', 'Certificat détudiant', 'ছাত্র সার্টিফিকেট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Student Certificate'),
(86, '1', 'certificate', 'Certificate', 'Certificado', 'Certificat', 'শংসাপত্র', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Certificate'),
(87, '1', 'header_left_text', 'Header left text', 'Encabezado texto a la izquierda', 'En-tête gauche du texte', 'শিরোনাম বাম টেক্সট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Header left text'),
(88, '1', 'body', 'Body', 'Cuerpo', 'Corps', 'শরীর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Body'),
(89, '1', 'footer_left_text', 'Footer left text', 'Pie de página texto a la izquierda', 'Footer left text', 'পাদচরণ বাম টেক্সট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Footer left text'),
(90, '1', 'footer_center_text', 'Footer Center text', 'Texto del centro de pie de página', 'Footer Center text', 'পাদচরণ কেন্দ্র টেক্সট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Footer Center text'),
(91, '1', 'footer_right_text', 'Footer Right text', 'Pie derecho texto', 'Footer Right text', 'পাদচরণ ডান টেক্সট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Footer Right text'),
(92, '1', 'student_photo', 'Student Photo', 'Foto de estudiante', 'Photo étudiante', 'ছাত্র ফটো', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Student Photo'),
(93, '1', 'yes', 'yes', 'sí', 'Oui', 'হাঁ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'yes'),
(94, '1', 'none', 'No', 'No', 'Non', 'না', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'No'),
(95, '1', 'background_image', 'Background Image', 'Imagen de fondo', 'Image de fond', 'পটভূমি চিত্র', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Background Image'),
(96, '1', 'generate_certificate', 'Generate Certificate', 'Generar certificado', 'Générer un certificat', 'শংসাপত্র তৈরি করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Generate Certificate'),
(97, '1', 'select_section', 'Select section', 'Seleccione la sección', 'Sélectionnez une section', 'বিভাগ নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Select section'),
(98, '1', 'generate', 'Generate', 'Generar', 'produire', 'জেনারেট করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Generate'),
(99, '1', 'admission', 'Admission', 'Admisión', 'Admission', 'স্বীকারোক্তি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Admission'),
(100, '1', 'class_Sec', 'Class (Sec.)', 'Clase (Sec.)', 'Classe (Sec.)', 'ক্লাস (সেকেন্ড।)', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Class (Sec.)'),
(101, '1', 'father', 'Father', 'Padre', 'Père', 'পিতা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Father'),
(102, '1', 'date_of_birth', 'Date Of Birth', 'Fecha de nacimiento', 'Date de naissance', 'জন্ম তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Date Of Birth'),
(103, '1', 'gender', 'Gender', 'Género', 'Le sexe', 'লিঙ্গ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Gender'),
(104, '1', 'mobile', 'Mobile', 'Móvil', 'Mobile', 'মোবাইল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Mobile'),
(105, '1', 'student_id_card', 'Student ID Card', 'Credencial de estudiante', 'Carde didentité détudiant', 'ছাত্র আইডি কার্ড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Student ID Card'),
(106, '1', 'id_card_title', 'ID Card Title', 'Título de la tarjeta de identificación', 'Titre de la carte didentité', 'আইডি কার্ড শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'ID Card Title'),
(107, '1', 'number', 'Number', 'Número', 'Nombre', 'সংখ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Number'),
(108, '1', 'mother', 'Mother', 'Madre', 'Mère', 'মা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Mother'),
(109, '1', 'blood_group', 'Blood Group', 'Grupo sanguíneo', 'Groupe sanguin', 'রক্তের গ্রুপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Blood Group'),
(110, '1', 'id_card', 'ID Card', 'Tarjeta de identificación', 'Carte didentité', 'পরিচয় পত্র', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'ID Card'),
(111, '1', 'generate_id_card', 'Generate ID Card', 'Generar tarjeta de identificación', 'Générer une carte didentité', 'আইডি কার্ড জেনারেট করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Generate ID Card'),
(112, '1', 'all', 'All', 'Todos', 'Tout', 'সব', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'All'),
(113, '1', 'relation_with_guardian', 'Relation with Guardian', 'Relación con Guardian', 'Relation avec le gardien', 'গার্ডিয়ান সঙ্গে সম্পর্ক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Relation with Guardian'),
(114, '1', 'admin', 'Admin', 'Administración', 'Admin', 'অ্যাডমিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Admin'),
(115, '1', 'follow_up', 'Follow up', 'Seguir', 'Suivre', 'অনুসরণ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Follow up'),
(116, '1', 'follow_up_admission_query', 'Follow Up Admission Query', 'Consulta de seguimiento de admisión', 'Requête dadmission de suivi', 'ভর্তি পরীক্ষা প্রশ্ন অনুসরণ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Follow Up Admission Query'),
(117, '1', 'response', 'Response', 'Respuesta', 'Réponse', 'প্রতিক্রিয়া', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Response'),
(118, '1', 'follow_up_list', 'Follow Up List', 'Lista de seguimiento', 'Liste de suivi', 'তালিকা অনুসরণ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Follow Up List'),
(119, '1', 'query_by', 'Query By', 'Consulta por', 'Requête par', 'দ্বারা প্রশ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Query By'),
(120, '1', 'delete_follow_up_query', 'Delete Follow up query', 'Eliminar consulta de seguimiento', 'Supprimer la requête de suivi', 'ফলো আপ প্রশ্ন মুছে ফেলুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Delete Follow up query'),
(121, '1', 'certificate_body_len', 'Max Character lenght 500', 'Longitud máxima de caracteres 500', 'Longueur maximum 500 caractères', 'সর্বোচ্চ অক্ষর 500 সামান্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Max Character lenght 500'),
(122, '2', 'student_information', 'Student Info', 'Información del estudiante', 'Info étudiant', 'ছাত্র তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Student Info'),
(123, '2', 'student_admission', 'Student Admission', 'Admisión de estudiantes', 'Admission des étudiants', 'ছাত্র ভর্তি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Student Admission'),
(124, '2', 'student_import', 'Student Import', 'Estudiante de importación', 'Import étudiant', 'ছাত্র আমদানি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Student Import'),
(125, '2', 'import', 'Import', 'Importar', 'Importation', 'আমদানি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Import'),
(126, '2', 'personal', 'Personal', 'Personal', 'Personnel', 'ব্যক্তিগত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Personal'),
(127, '2', 'info', 'Info', 'Información', 'Info', 'তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Info'),
(128, '2', 'roll', 'Roll', 'Rodar', 'Rouleau', 'রোল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Roll'),
(129, '2', 'first', 'First', 'primero', 'Premier', 'প্রথম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'First'),
(130, '2', 'last', 'Last', 'Último', 'Dernier', 'গত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Last'),
(131, '2', 'religion', 'Religion', 'Religión', 'Religion', 'ধর্ম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Religion'),
(132, '2', 'caste', 'Caste', 'Casta', 'Caste', 'জাত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Caste'),
(133, '2', 'category', 'Category', 'Categoría', 'Catégorie', 'বিভাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Category'),
(134, '2', 'height', 'Height', 'Altura', 'la taille', 'উচ্চতা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Height'),
(135, '2', 'Weight', 'Weight', 'Peso', 'Poids', 'ওজন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Weight'),
(136, '2', 'sibling', 'Sibling', 'Hermano', 'Enfant de mêmes parents', 'সমরূপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Sibling'),
(137, '2', 'information', 'Information', 'Información', 'Information', 'তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Information'),
(138, '2', 'guardian', 'Guardian', 'guardián', 'Gardien', 'অভিভাবক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Guardian'),
(139, '2', '&', '&', 'Y', 'Et', '&', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', '&'),
(140, '2', 'occupation', 'Occupation', 'Ocupación', 'Occupation', 'পেশা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Occupation'),
(141, '2', 'photo', 'Photo', 'Foto', 'Photo', 'ছবি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Photo'),
(142, '2', 'Other', 'Others', 'Otros', 'Autres', 'অন্যরা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Others'),
(143, '2', 'relation_with_guardian', 'Relation with Guardian', 'Relación con Guardian', 'Relation avec le gardien', 'গার্ডিয়ান সঙ্গে সম্পর্ক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Relation with Guardian'),
(144, '2', 'current', 'Current', 'Corriente', 'Actuel', 'বর্তমান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Current'),
(145, '2', 'permanent', 'Permanent', 'Permanente', 'Permanent', 'স্থায়ী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Permanent'),
(146, '2', 'route_list', 'Route List', 'Lista de rutas', 'Liste des itinéraires', 'রুট তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Route List'),
(147, '2', 'driver', 'Driver', 'Conductor', 'Chauffeur', 'চালক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Driver'),
(148, '2', 'room', 'Room', 'Habitación', 'Pièce', 'ঘর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Room'),
(149, '2', 'national_iD_number', 'National ID Number', 'Numero de identificacion nacional', 'numéro national didentité', 'জাতীয় আইডি নম্বর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'National ID Number'),
(150, '2', 'local_Id_Number', 'Local Id Number', 'Número de identificación local', 'Numéro didentification local', 'স্থানীয় আইডি নম্বর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Local Id Number'),
(151, '2', 'bank', 'Bank', 'Banco', 'Banque', 'ব্যাংক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Bank'),
(152, '2', 'previous_school_details', 'Previous School Details', 'Detalles de la escuela anterior', 'Détails de lécole précédente', 'পূর্ববর্তী স্কুল বিবরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Previous School Details'),
(153, '2', 'additional_notes', 'Additional Notes', 'Notas adicionales', 'Notes complémentaires', 'অতিরিক্ত নোট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'Additional Notes'),
(154, '2', 'parents_and_guardian_info', 'PARENTS & GUARDIAN INFO', 'INFORMACIÓN PARA LOS PADRES Y TUTORES', 'INFO PARENTS ET GARDIENS', 'পিতামাতা এবং গার্ডিয়ান তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:54', 'PARENTS & GUARDIAN INFO'),
(155, '2', 'transport_and_dormitory_info', 'Transport & Dormitory Info', 'Información de transporte y dormitorio', 'Informations sur le transport et le dortoir', 'পরিবহন ও ডরমিটার তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Transport & Dormitory Info'),
(156, '2', 'document_info', 'Document Info', 'Información del documento', 'Informations sur le document', 'নথি তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Document Info'),
(157, '2', 'document_01_title', 'Document 01 Title', 'Documento 01 Título', 'Document 01 Titre', 'ডকুমেন্ট ১ শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Document 01 Title'),
(158, '2', 'document_02_title', 'Document 02 Title', 'Documento 02 Titulo', 'Document 02 Titre', 'ডকুমেন্ট ২ শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Document 02 Title'),
(159, '2', 'document_03_title', 'Document 03 Title', 'Título del documento 03', 'Document 03 Titre', 'ডকুমেন্ট ৩ শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Document 03 Title'),
(160, '2', 'document_04_title', 'Document 04 Title', 'Documento 04 Título', 'Document 04 Titre', 'ডকুমেন্ট ৪ শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Document 04 Title'),
(161, '2', 'student_details', 'Student Details', 'Detalles del estudiante', 'Détails de létudiant', 'ছাত্র বিস্তারিত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Details'),
(162, '2', 'search_by_name', 'Search By Name', 'Buscar por nombre', 'Rechercher par nom', 'নাম দ্বারা অনুসন্ধান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Search By Name'),
(163, '2', 'search_by_roll_no', 'Search By Roll No', 'Búsqueda por rollo no', 'Recherche par roulement no', 'রোল নম্বর দ্বারা অনুসন্ধান করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Search By Roll No'),
(164, '2', 'father_name', 'Fathers Name', 'Nombre del Padre', 'Le nom du père', 'বাবার নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fathers Name'),
(165, '2', 'student_promote', 'Student Promote', 'Estudiante de promoción', 'Étudiant promouvoir', 'ছাত্র প্রচার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Promote'),
(166, '2', 'select_current_session', 'Select Current Session', 'Seleccionar sesión actual', 'Sélectionner la session en cours', 'বর্তমান সেশন নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Current Session'),
(167, '2', 'select_current_class', 'Select current Class', 'Seleccione la clase actual', 'Sélectionnez la classe actuelle', 'বর্তমান ক্লাস নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select current Class'),
(168, '2', 'select_current_section', 'Select Current section', 'Seleccione la sección actual', 'Sélectionnez la section actuelle', 'বর্তমান বিভাগ নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Current section'),
(169, '2', 'promote_student_in_next_session', 'Promote Student In Next Session', 'Promover estudiante en la próxima sesión', 'Promouvoir létudiant à la prochaine session', 'পরবর্তী সেশনে ছাত্র প্রচার করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Promote Student In Next Session'),
(170, '2', 'view_academic_performance', 'View Academic Performance', 'Ver rendimiento académico', 'Voir la performance académique', 'একাডেমিক পারফরম্যান্স দেখুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'View Academic Performance'),
(171, '2', 'pass', 'Pass', 'Pasar', 'Passer', 'পাস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Pass'),
(172, '2', 'fail', 'Fail', 'Fallar', 'Échouer', 'ব্যর্থ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fail'),
(173, '2', 'select_promote_session', 'Select Promote Session', 'Seleccione Promover Sesión', 'Sélectionnez la session de promotion', 'সেশন প্রচার করুন নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Promote Session'),
(174, '2', 'select_promote_class', 'Select Promote Class', 'Seleccione Promover clase', 'Sélectionnez Promouvoir la classe', 'ক্লাস প্রচার করুন নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Promote Class'),
(175, '2', 'the_session_is_required', 'The session is required', 'La sesion es obligatoria', 'La session est obligatoire', 'অধিবেশন প্রয়োজন হয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'The session is required'),
(176, '2', 'the_class_is_required', 'The class is required', 'La clase es obligatoria', 'Le cours est obligatoire', 'ক্লাস প্রয়োজন হয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'The class is required'),
(177, '2', 'the_section_is_required', 'The section is required', 'La sección es obligatoria.', 'La section est obligatoire', 'বিভাগ প্রয়োজন হয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'The section is required'),
(178, '2', 'select_promote_section', 'Select Promote Section', 'Seleccione la sección de promoción', 'Sélectionnez la section de promotion', 'নির্বাচন বিভাগ নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Promote Section'),
(179, '2', 'promote', 'Promote', 'Promover', 'Promouvoir', 'উন্নীত করা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Promote'),
(180, '2', 'student_attendance', 'Student Attendance', 'Asistencia de estudiantes', 'Assiduité des étudiants', 'ছাত্র উপস্থিতি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Attendance'),
(181, '2', 'select_class', 'Select Class', 'Seleccionar clase', 'Sélectionnez une classe', 'ক্লাস নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Class'),
(182, '2', 'attendance', 'Attendance', 'Asistencia', 'Présence', 'উপস্থিতি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Attendance'),
(183, '2', 'attendance_already_submitted_as_holiday', 'Attendance Already Submitted As Holiday. You Can Edit Record', 'Asistencia ya enviada como festivo. Puede editar el registro', 'Présence déjà soumise à titre de vacances. Vous pouvez modifier lenregistrement', 'উপস্থিতি ইতিমধ্যে ছুটির দিন হিসাবে জমা দেওয়া।আপনি রেকর্ড সম্পাদনা করতে পারেন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Attendance Already Submitted As Holiday. You Can Edit Record'),
(184, '2', 'attendance_already_submitted', 'Attendance Already Submitted You Can Edit Record', 'La asistencia ya enviada Puede editar el registro', 'Présence déjà soumise Vous pouvez modifier la fiche', 'উপস্থিতি ইতিমধ্যে জমা আপনি রেকর্ড সম্পাদনা করতে পারেন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Attendance Already Submitted You Can Edit Record'),
(185, '2', 'mark_holiday', 'Mark Holiday', 'Mark Holiday', 'Mark Holiday', 'ছুটির দিন চিহ্নিত করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Mark Holiday'),
(186, '2', 'present', 'Present', 'Presente', 'Présent', 'বর্তমান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Present'),
(187, '2', 'late', 'Late', 'Tarde', 'En retard', 'বিলম্বে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Late'),
(188, '2', 'absent', 'Absent', 'Ausente', 'Absent', 'অনুপস্থিত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Absent'),
(189, '2', 'half_day', 'Half Day', 'Medio día', 'Demi-journée', 'অর্ধেক দিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Half Day'),
(190, '2', 'add_note_here', 'Add Note Here', 'Añadir nota aquí', 'Ajouter une note ici', 'এখানে নোট যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Add Note Here'),
(191, '2', 'error', 'Error', 'Error', 'Erreur', 'এরর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Error'),
(192, '2', 'student_attendance_report', 'Student Attendance Report', 'Informe de asistencia del estudiante', 'Rapport de présence des étudiants', 'ছাত্র উপস্থিতি রিপোর্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Attendance Report'),
(193, '2', 'january', 'January', 'enero', 'janvier', 'জানুয়ারী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'January'),
(194, '2', 'february', 'February', 'febrero', 'février', 'ফেব্রুয়ারি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'February'),
(195, '2', 'march', 'March', 'marzo', 'Mars', 'মার্চ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'March'),
(196, '2', 'april', 'April', 'abril', 'avril', 'এপ্রিল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'April'),
(197, '2', 'may', 'May', 'Mayo', 'Peut', 'মে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'May'),
(198, '2', 'june', 'June', 'junio', 'juin', 'জুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'June'),
(199, '2', 'july', 'July', 'julio', 'juillet', 'জুলাই', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'July'),
(200, '2', 'august', 'August', 'agosto', 'août', 'অগাস্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'August'),
(201, '2', 'september', 'September', 'septiembre', 'septembre', 'সেপ্টেম্বর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'September'),
(202, '2', 'october', 'October', 'octubre', 'octobre', 'অক্টোবর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'October'),
(203, '2', 'november', 'November', 'noviembre', 'novembre', 'নভেম্বর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'November'),
(204, '2', 'december', 'December', 'diciembre', 'décembre', 'ডিসেম্বর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'December'),
(205, '2', 'select_month', 'Select Month', 'Seleccione mes', 'Sélectionnez un mois', 'মাস নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Month'),
(206, '2', 'select_year', 'Select Year', 'Seleccione el año', 'Sélectionnez lannée', 'বছর নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Year'),
(207, '2', 'student_category', 'Student Category', 'Categoría de estudiante', 'Catégorie détudiant', 'ছাত্র বিভাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Category'),
(208, '2', 'student_category_list', 'Student Category List', 'Lista de categorías de estudiantes', 'Liste des catégories détudiants', 'ছাত্র শ্রেণী তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Category List'),
(209, '2', 'student_group', 'Student Group', 'Grupo de estudiantes', 'Groupe détudiants', 'ছাত্র গ্রুপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Group'),
(210, '2', 'group', 'Group', 'Grupo', 'Groupe', 'গ্রুপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Group'),
(211, '2', 'disabled_student', 'Disabled Students', 'Estudiantes discapacitados', 'Etudiants handicapés', 'নিষ্ক্রিয় ছাত্রদের', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Disabled Students'),
(212, '2', 'student_list', 'Student List', 'Lista de estudiantes', 'Liste des étudiants', 'ছাত্র তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student List'),
(213, '2', 'birth_certificate', 'Birth Certificate', 'Certificado de nacimiento', 'Certificat de naissance', 'জন্ম সনদ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Birth Certificate'),
(214, '2', 'student_edit', 'Student Edit', 'Estudiante Editar', 'Étudiant modifier', 'ছাত্র সম্পাদনা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Edit'),
(215, '2', 'in', 'In', 'En', 'Dans', 'মধ্যে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'In'),
(216, '2', 'kg', 'KG', 'KG', 'KG', 'কেজি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'KG'),
(217, '2', 'add_parent', 'Add Parent', 'Añadir padre', 'Ajouter un parent', 'মূল যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Add Parent'),
(218, '2', 'update_information', 'Update information', 'Actualizar información', 'Mettre à jour les informations', 'হালনাগাদ তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Update information'),
(219, '2', 'siblings', 'Siblings', 'Hermanos', 'Frères et sœurs', 'ভাইবোন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Siblings'),
(220, '2', 'guardian_name', 'Guardians Name', 'Nombre del guardián', 'Nom du gardien', 'গার্ডিয়ান এর নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Guardians Name'),
(221, '2', 'guardian_email', 'Guardians Email', 'Email del guardián', 'Email du gardien', 'গার্ডিয়ান এর ইমেল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Guardians Email'),
(222, '2', 'guardian_phone', 'Guardians Phone', 'Teléfono del guardián', 'Téléphone du gardien', 'গার্ডিয়ান ফোন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Guardians Phone'),
(223, '2', 'guardian_occupation', 'Guardian Occupation', 'Ocupación Guardián', 'Profession de gardien', 'গার্ডিয়ান পেশা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Guardian Occupation'),
(224, '2', 'guardian_address', 'Guardian Address', 'Dirección del tutor', 'Adresse du gardien', 'গার্ডিয়ান ঠিকানা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Guardian Address'),
(225, '2', 'student_address_info', 'Student Address Info', 'Información de la dirección del estudiante', 'Adresse de l\'étudiant', 'ছাত্র ঠিকানা তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Student Address Info'),
(226, '2', 'current_address', 'Current Address', 'Direccion actual', 'Adresse actuelle', 'বর্তমান ঠিকানা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Current Address'),
(227, '2', 'permanent_address', 'Permanent Address', 'dirección permanente', 'Adresse permanente', 'স্থায়ী ঠিকানা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Permanent Address'),
(228, '2', 'vehicle_number', 'Vehicle Number', 'Número de vehículo', 'Numéro de véhicule', 'যানবাহন নম্বর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Vehicle Number'),
(229, '2', 'driver_name', 'Driver Name', 'Nombre del conductor', 'Nom du conducteur', 'ড্রাইভার নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Driver Name'),
(230, '2', 'bank_name', 'Bank Name', 'Nombre del banco', 'Nom de banque', 'ব্যাংকের নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Bank Name'),
(231, '2', 'update_student', 'update student', 'actualizar estudiante', 'mise à jour de létudiant', 'ছাত্র আপডেট করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'update student'),
(232, '2', 'remove', 'Remove', 'retirar', 'Retirer', 'অপসারণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Remove'),
(233, '2', 'are_you', 'Are you sure to remove siblings?', '¿Estás seguro de eliminar a los hermanos?', 'Êtes-vous sûr de vouloir supprimer vos frères et soeurs?', 'আপনি ভাইবোন অপসারণ নিশ্চিত?', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Are you sure to remove siblings?'),
(234, '2', 'download_sample_file', 'Download Sample File', 'Descargar archivo de muestra', 'Télécharger un exemple de fichier', 'নমুনা ফাইল ডাউনলোড করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Download Sample File'),
(235, '3', 'teacher', 'Teacher', 'Profesor', 'Prof', 'শিক্ষক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Teacher'),
(236, '3', 'upload_content', 'Upload Content', 'Subir contenido', 'Télécharger du contenu', 'আপলোড কন্টেন্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Upload Content'),
(237, '3', 'assignment', 'Assignment', 'Asignación', 'Affectation', 'নিয়োগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Assignment'),
(238, '3', 'content_title', 'Content Title', 'Título del contenido', 'Titre du contenu', 'বিষয়বস্তু শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Content Title'),
(239, '3', 'study_material', 'Study Material', 'Material de estudio', 'Matériel détude', 'শিক্ষাসামগ্রী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Study Material'),
(240, '3', 'syllabus', 'Syllabus', 'Silaba', 'Programme', 'সিলেবাস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Syllabus'),
(241, '3', 'other_download', 'Other Downloads', 'Otras descargas', 'Autres téléchargements', 'অন্যান্য ডাউনলোড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Other Downloads'),
(242, '3', 'available_for', 'Available for', 'Disponible para', 'Disponible pour', 'সহজলভ্যের জন্যে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Available for'),
(243, '3', 'admin', 'Admin', 'Administración', 'Admin', 'অ্যাডমিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Admin'),
(244, '3', 'available_for_all_classes', 'Available for all classes', 'Disponible para todas las clases.', 'Disponible pour toutes les classes', 'সব ক্লাসের জন্য উপলব্ধ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Available for all classes'),
(245, '3', 'action', 'Action', 'Acción', 'action', 'কর্ম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Action'),
(246, '3', 'other_downloads_list', 'Other Downloads List', 'Lista de otras descargas', 'Autres téléchargements', 'অন্যান্য ডাউনলোড তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Other Downloads List'),
(247, '4', 'fees_collection', 'Fees Collection', 'Colección de tarifas', 'Collection de frais', 'ফি সংগ্রহ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Collection'),
(248, '4', 'collect_fees', 'Collect Fees', 'Cobrar honorarios', 'Recueillir les frais', 'ফি সংগ্রহ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Collect Fees'),
(249, '4', 'search_fees_payment', 'Search Fees Payment', 'Pago de tarifas de búsqueda', 'Recherche des frais de paiement', 'অনুসন্ধান ফি প্রদান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Search Fees Payment'),
(250, '4', 'search_fees_due', 'Search Fees Due', 'Tarifas de búsqueda vencidas', 'Frais de recherche dus', 'অনুসন্ধান ফি কারণে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Search Fees Due'),
(251, '4', 'fees_master', 'Fees Master', 'Honorarios maestro', 'Frais Maître', 'ফি মাস্টার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Master'),
(252, '4', 'fees_group', 'Fees Group', 'Grupo de tarifas', 'Groupe de frais', 'ফি গ্রুপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Group'),
(253, '4', 'fees_type', 'Fees Type', 'Tipo de Cuotas', 'Type de frais', 'ফি প্রকার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Type'),
(254, '4', 'fees_discount', 'Fees Discount', 'Tarifas de descuento', 'Remise des frais', 'ফি ছাড়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Discount'),
(255, '4', 'fees_forward', 'Fees Carry Forward', 'Cuotas de llevar adelante', 'Frais reportés', 'ফি ফরওয়ার্ড বহন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Carry Forward'),
(256, '4', 'payment', 'Payment', 'Pago', 'Paiement', 'পারিশ্রমিক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payment'),
(257, '4', 'payment_ID_Details', 'Payment ID Details', 'Detalles de ID de pago', 'ID de paiement', 'পেমেন্ট আইডি বিবরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payment ID Details'),
(258, '4', 'mode', 'Mode', 'Modo', 'Mode', 'মোড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Mode'),
(259, '4', 'amount', 'Amount', 'Cantidad', 'Montant', 'পরিমাণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Amount'),
(260, '4', 'discount', 'Discount', 'Descuento', 'Remise', 'ডিসকাউন্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Discount'),
(261, '4', 'fine', 'Fine', 'Multa', 'Bien', 'জরিমানা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fine'),
(262, '4', 'fees_due_list', 'Fees Due List', 'Lista de cuotas', 'Frais à payer', 'ফি কারণে তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Due List'),
(263, '4', 'due_birth', 'Due Birth', 'Nacimiento debido', 'Naissance due', 'জন্মের কারণে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Due Birth'),
(264, '4', 'deposit', 'Deposit', 'Depositar', 'Dépôt', 'আমানত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Deposit'),
(265, '4', 'balance', 'Balance', 'Equilibrar', 'Équilibre', 'ভারসাম্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Balance'),
(266, '4', 'master', 'Master', 'Dominar', 'Maîtriser', 'মনিব', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Master'),
(267, '4', 'assign', 'Assign', 'Asignar', 'Attribuer', 'দায়িত্ব অর্পণ করা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Assign'),
(268, '4', 'item', 'Item', 'ít', 'Article', 'পদ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Item'),
(269, '4', 'content', 'content', 'contenido', 'contenu', 'সন্তুষ্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'content'),
(270, '4', 'fees_code', 'Fees Code', 'Código de Cuotas', 'Code des frais', 'ফি কোড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fees Code'),
(271, '4', 'code', 'Code', 'Código', 'Code', 'কোড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Code'),
(272, '4', 'once', 'Once', 'Una vez', 'Une fois que', 'একদা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Once'),
(273, '4', 'year', 'Year', 'Año', 'Année', 'বছর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Year'),
(274, '4', 'previous_Session_Balance_Fees', 'Previous Session Balance Fees', 'Cuotas de balance de la sesión anterior', 'Frais de solde de la session précédente', 'পূর্ববর্তী অধিবেশন ব্যালেন্স ফি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Previous Session Balance Fees'),
(275, '4', 'previous_balance_can_only_update_now.', 'Previous balance already forwarded, you can only update now.', 'El saldo anterior ya reenviado, solo se puede actualizar ahora.', 'Le solde précédent ayant déjà été transféré, vous ne pouvez mettre à jour que maintenant.', 'পূর্ববর্তী ভারসাম্য ইতিমধ্যে ফরোয়ার্ড করা হয়েছে, আপনি এখন শুধুমাত্র আপডেট করতে পারেন।', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Previous balance already forwarded, you can only update now.'),
(276, '5', 'accounts', 'Accounts', 'Cuentas', 'Comptes', 'অ্যাকাউন্টস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Accounts'),
(277, '5', 'profit', 'Profit', 'Lucro', 'Profit', 'মুনাফা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Profit'),
(278, '5', 'income', 'Income', 'Ingresos', 'le revenu', 'আয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Income'),
(279, '5', 'expense', 'Expense', 'Gastos', 'Frais', 'ব্যয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Expense'),
(280, '5', 'chart_of_account', 'Chart Of Account', 'Plan de cuentas', 'Charte dutilisation', 'অ্যাকাউন্ট চার্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Chart Of Account'),
(281, '5', 'payment_method', 'Payment Method', 'Método de pago', 'Mode de paiement', 'মূল্যপরিশোধ পদ্ধতি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payment Method'),
(282, '5', 'bank_account', 'Bank Account', 'Cuenta bancaria', 'Compte bancaire', 'ব্যাংক হিসাব', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Bank Account'),
(283, '5', 'a_c_Head', 'A/C Head', 'A / C Head', 'Tête A / C', 'এ-সি হেড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'A/C Head'),
(284, '5', 'add_expense', 'Add Expense', 'Añadir gastos', 'Ajouter une dépense', 'ব্যয় যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Add Expense'),
(285, '5', 'search_income_expense', 'Search Income/Expense', 'Buscar ingresos / gastos', 'Recherche revenu / dépense', 'অনুসন্ধান আয়-ব্যয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Search Income/Expense'),
(286, '5', 'item_Receive', 'Item Receive', 'El artículo recibe', 'Point recevoir', 'আইটেম প্রাপ্তি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Item Receive'),
(287, '5', 'income_Head', 'Income Head', 'Jefe de ingresos', 'Chef de revenu', 'আয় হেড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Income Head'),
(288, '5', 'sells', 'Sells', 'Vende', 'Vend', 'বিক্রি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Sells'),
(289, '5', 'grand_total', 'Grand Total', 'Gran total', 'somme finale', 'সর্বমোট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Grand Total'),
(290, '5', 'expense_head', 'Expense Head', 'Cabeza de gastos', 'Chef de dépenses', 'ব্যয় মাথা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Expense Head'),
(291, '5', 'purchase', 'Purchase', 'Compra', 'achat', 'ক্রয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Purchase'),
(292, '5', 'from', 'From', 'Desde', 'De', 'থেকে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'From'),
(293, '5', 'head', 'Head', 'Cabeza', 'Tête', 'মাথা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Head'),
(294, '5', 'method', 'Method', 'Método', 'Méthode', 'পদ্ধতি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Method'),
(295, '5', 'account_name', 'Account Name', 'Nombre de la cuenta', 'Nom du compte', 'হিসাবের নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Account Name'),
(296, '5', 'opening_balance', 'Opening Balance', 'Saldo de apertura', 'Solde douverture', 'ব্যালেন্স খোলা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Opening Balance'),
(297, '5', 'account', 'Account', 'Cuenta', 'Compte', 'হিসাব', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Account'),
(298, '6', 'human_resource', 'Human resource', 'Recursos humanos', 'Ressource humaine', 'মানব সম্পদ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Human resource'),
(299, '6', 'staff_directory', 'Staff Directory', 'Directorio de Personal', 'Répertoire personnel', 'স্টাফ ডিরেক্টরি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staff Directory'),
(300, '6', 'staff_attendance', 'Staff Attendance', 'Asistencia del personal', 'Présence du personnel', 'স্টাফ উপস্থিতি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staff Attendance'),
(301, '6', 'staff_attendance_report', 'Staff Attendance Report', 'Informe de asistencia del personal', 'Rapport de présence du personnel', 'স্টাফ উপস্থিতি রিপোর্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staff Attendance Report'),
(302, '6', 'payroll', 'Payroll', 'Nómina de sueldos', 'Paie', 'বেতনের', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payroll'),
(303, '6', 'payroll_report', 'Payroll Report', 'Informe de nómina', 'Rapport de paie', 'Payroll রিপোর্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payroll Report'),
(304, '6', 'approve_leave_request', 'Approve Leave Request', 'Aprobar Solicitud de Licencia', 'Approuver la demande de congé', 'ছাড় অনুরোধ অনুমোদন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Approve Leave Request'),
(305, '6', 'apply_leave', 'Apply Leave', 'Aplicar licencia', 'Appliquer congé', 'আবেদন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Apply Leave'),
(306, '6', 'leave_type', 'Leave type', 'Dejar tipo', 'Laisser type', 'টাইপ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Leave type'),
(307, '6', 'department', 'Department', 'Departamento', 'département', 'বিভাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Department'),
(308, '6', 'designation', 'Designation', 'Designacion', 'La désignation', 'উপাধি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Designation'),
(309, '6', 'staff_list', 'Staff List', 'Lista de personal', 'Liste du personnel', 'স্টাফ তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staff List'),
(310, '6', 'add_staff', 'Add Staff', 'Añadir personal', 'Ajouter du personnel', 'স্টাফ যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Add Staff'),
(311, '6', 'search_by_staff_id', 'Search By Staff Id', 'Búsqueda por identificación del personal', 'Rechercher par ID de personnel', 'স্টাফ আইডি দ্বারা অনুসন্ধান করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Search By Staff Id'),
(312, '6', 'staff', 'Staff', 'Personal', 'Personnel', 'কর্মী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staff'),
(313, '6', 'select_role', 'Select Role', 'Seleccionar rol', 'Sélectionnez un rôle', 'ভূমিকা নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Role');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `es`, `fr`, `bn`, `active_status`, `created_at`, `updated_at`, `ur`) VALUES
(314, '6', 'generate_payroll', 'Generate Payroll', 'Generar Nómina', 'Générer la paie', 'Payroll জেনারেট করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Generate Payroll'),
(315, '6', 'generated', 'Generate', 'Generar', 'produire', 'জেনারেট করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Generate'),
(316, '6', 'paid', 'Paid', 'Pagado', 'Payé', 'পেইড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Paid'),
(317, '6', 'not', 'Not', 'No', 'ne pas', 'না', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Not'),
(318, '6', 'proceed_to_pay', 'Proceed to Pay', 'Proceda a pagar', 'Procéder au paiement', 'বেতন দিতে এগিয়ে যান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Proceed to Pay'),
(319, '6', 'view_payslip', 'View Payslip', 'Ver recibo de sueldo', 'Voir fiche de paie', 'Paylip দেখুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'View Payslip'),
(320, '6', 'month', 'Month', 'Mes', 'Mois', 'মাস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Month'),
(321, '6', 'payslip', 'Payslip', 'Boleta de pago', 'Fiche de paie', 'স্লিপে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payslip'),
(322, '6', 'basic_salary', 'Basic Salary', 'Salario base', 'Salaire de base', 'মূল বেতন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Basic Salary'),
(323, '6', 'earnings', 'Earnings', 'Ganancias', 'Gains', 'উপার্জন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Earnings'),
(324, '6', 'deductions', 'Deductions', 'Deducciones', 'Déductions', 'কর্তন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Deductions'),
(325, '6', 'gross_salary', 'Gross Salary', 'Salario bruto', 'Salaire brut', 'মোট বেতন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Gross Salary'),
(326, '6', 'tax', 'Tax', 'Impuesto', 'Impôt', 'কর', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Tax'),
(327, '6', 'net_salary', 'Net Salary', 'Sueldo neto', 'Salaire net', 'মোট বেতন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Net Salary'),
(328, '6', 'to', 'To', 'A', 'À', 'থেকে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'To'),
(329, '6', 'apply_date', 'Apply date', 'Fecha de aplicación', 'Date dapplication', 'তারিখ প্রয়োগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Apply date'),
(330, '6', 'pending', 'Pending', 'Pendiente', 'en attendant', 'মুলতুবী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Pending'),
(331, '6', 'approved', 'Approved', 'Aprobado', 'Approuvé', 'অনুমোদিত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Approved'),
(332, '6', 'cancelled', 'Cancelled', 'Cancelado', 'Annulé', 'বাতিল করা হয়েছে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Cancelled'),
(333, '6', 'leave_from', 'Leave From', 'Dejar de', 'Partir de', 'থেকে ত্যাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Leave From'),
(334, '6', 'leave_to', 'Leave to', 'Dejar', 'Laisser à', 'ছেড়ে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Leave to'),
(335, '6', 'reason', 'Reason', 'Razón', 'Raison', 'কারণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Reason'),
(336, '6', 'leave', 'Leave', 'Salir', 'Laisser', 'ত্যাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Leave'),
(337, '6', 'type_name', 'Type Name', 'Escribe un nombre', 'Nom du type', 'নাম লিখুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Type Name'),
(338, '6', 'total_days', 'Total Days', 'Días totales', 'Nombre total de jours', 'মোট দিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Total Days'),
(339, '6', 'leave_type_list', 'Leave Type List', 'Deja la lista de tipos', 'Quitter la liste des types', 'টাইপ তালিকা ছেড়ে দিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Leave Type List'),
(340, '6', 'departments', 'Departments', 'Departamentos', 'Départements', 'বিভাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Departments'),
(341, '6', 'department_name', 'Department Name', 'Nombre de Departamento', 'Nom du département', 'বিভাগ নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Department Name'),
(342, '6', 'designations', 'Designations', 'Designaciones', 'Désignations', 'প্রশিক্ষণে', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Designations'),
(343, '6', 'staffs_payroll', 'Staffs Payroll', 'Nómina de personal', 'Personnel', 'স্টাফ Payroll', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staffs Payroll'),
(344, '6', 'staff_no', 'Staff No', 'Personal No', 'Numéro du personnel', 'স্টাফ নং', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staff No'),
(345, '6', 'date_of_joining', 'Date of Joining', 'Fecha de inscripción', 'Date dadhésion', 'যোগদানের তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Date of Joining'),
(346, '6', 'value', 'Value', 'Valor', 'Valeur', 'মান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Value'),
(347, '6', 'payroll_summary', 'Payroll Summary', 'Resumen de nómina', 'Résumé de la paie', 'Payroll সারাংশ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payroll Summary'),
(348, '6', 'calculate', 'calculate', 'calcular', 'calculer', 'গণনা করা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'calculate'),
(349, '6', 'earning', 'Earning', 'Ganador', 'Revenus', 'রোজগার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Earning'),
(350, '6', 'deduction', 'Deduction', 'Deducción', 'Déduction', 'সিদ্ধান্তগ্রহণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Deduction'),
(351, '6', 'submit', 'Submit', 'Enviar', 'Soumettre', 'জমা দিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Submit'),
(352, '6', 'edit_staff', 'Edit Staff', 'Editar Personal', 'Modifier le personnel', 'স্টাফ সম্পাদনা করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Edit Staff'),
(353, '6', 'basic_info', 'Basic Info', 'Información básica', 'Informations de base', 'মৌলিক তথ্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Basic Info'),
(354, '6', 'staff_number', 'Staff Number', 'Numero de personal', 'Numéro du personnel', 'স্টাফ সংখ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Staff Number'),
(355, '6', 'emergency_mobile', 'Emergency Mobile', 'Móvil de emergencia', 'Mobile durgence', 'জরুরী মোবাইল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Emergency Mobile'),
(356, '6', 'current_address', 'Current Address', 'Direccion actual', 'Adresse actuelle', 'বর্তমান ঠিকানা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Current Address'),
(357, '6', 'permanent_address', 'Permanent Address', 'dirección permanente', 'Adresse permanente', 'স্থায়ী ঠিকানা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Permanent Address'),
(358, '6', 'qualifications', 'Qualifications', 'Calificaciones', 'Qualifications', 'যোগ্যতা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Qualifications'),
(359, '6', 'experience', 'Experience', 'Experiencia', 'Expérience', 'অভিজ্ঞতা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Experience'),
(360, '6', 'payroll_details', 'Payroll Details', 'Detalles de la nómina', 'Détails de la paie', 'পেপার বিবরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Payroll Details'),
(361, '6', 'epf_no', 'EPF NO', 'EPF NO', 'EPF NO', 'ইপিএফ নং', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'EPF NO'),
(362, '6', 'bank_info_details', 'Bank Info Details', 'Detalles de la información del banco', 'Informations bancaires', 'ব্যাংক তথ্য বিবরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Bank Info Details'),
(363, '6', 'bank_account_name', 'Bank Account Name', 'Nombre de la cuenta bancaria', 'Nom du compte bancaire', 'ব্যাংক হিসাব নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Bank Account Name'),
(364, '6', 'branch_name', 'Branch Name', 'Nombre de la rama', 'Nom de la filiale', 'শাখার নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Branch Name'),
(365, '6', 'social_links_details', 'Social Links Details', 'Detalles de enlaces sociales', 'Liens sociaux Détails', 'সামাজিক লিঙ্ক বিবরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Social Links Details'),
(366, '6', 'facebook_url', 'Facebook Url', 'Facebook URL', 'Ladresse URL de Facebook', 'ফেসবুক ইউআরএল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Facebook Url'),
(367, '6', 'twitter_url', 'Twitter Url', 'URL de Twitter', 'URL de Twitter', 'টুইটার ইউআরএল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Twitter Url'),
(368, '6', 'linkedin_url', 'Linkedin Url', 'Linkedin url', 'URL de Linkedin', 'লিঙ্কডিন ইউআরএল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Linkedin Url'),
(369, '6', 'instragram_url', 'Instragram Url', 'Url de instagram', 'URL Instragram', 'ইনস্ট্রগ্রাম ইউআরএল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Instragram Url'),
(370, '6', 'update_staff', 'Update Staff', 'Personal de actualización', 'Mettre à jour le personnel', 'আপডেট স্টাফ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Update Staff'),
(371, '7', 'leave', 'Leave', 'Salir', 'Laisser', 'ত্যাগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Leave'),
(372, '7', 'leave_define', 'Leave Define', 'Dejar definir', 'Quitter Définir', 'Define ছেড়ে দিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Leave Define'),
(373, '7', 'my_remaining_leaves', 'My Remaining Leaves', 'Mis hojas restantes', 'Mes feuilles restantes', 'আমার অবশিষ্ট পাতা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'My Remaining Leaves'),
(374, '7', 'remaining_days', 'Remaining Days', 'Días restantes', 'Jours restants', 'বাকি দিনগুলো', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Remaining Days'),
(375, '7', 'extra_taken', 'Extra Taken', 'Extra Taken', 'Extra pris', 'অতিরিক্ত নেওয়া', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Extra Taken'),
(376, '7', 'total_days', 'Total Days', 'Días totales', 'Nombre total de jours', 'মোট দিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Total Days'),
(377, '7', 'days', 'Days', 'Dias', 'Journées', 'দিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Days'),
(378, '8', 'examination', 'Examination', 'Examen', 'Examen', 'পরীক্ষা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Examination'),
(379, '8', 'exam', 'Exam', 'Examen', 'Examen', 'পরীক্ষা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam'),
(380, '8', 'add_exam_type', 'Add Exam Type', 'Añadir tipo de examen', 'Ajouter un type dexamen', 'পরীক্ষার ধরন যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Add Exam Type'),
(381, '8', 'exam_schedule', 'Exam Schedule', 'Horario del examen', 'Calendrier des examens', 'পরীক্ষার সময়সূচি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Schedule'),
(382, '8', 'marks_register', 'Marks Register', 'Registro de marcas', 'Registre des marques', 'চিহ্ন নিবন্ধন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Marks Register'),
(383, '8', 'seat_plan', 'Seat Plan', 'Plan de asiento', 'Plan de siège', 'আসন পরিকল্পনা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Seat Plan'),
(384, '8', 'exam_attendance', 'Exam Attendance', 'Examen de asistencia', 'Présence à lexamen', 'পরীক্ষা উপস্থিতি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Attendance'),
(385, '8', 'marks_grade', 'Marks Grade', 'Nota de calificaciones', 'Note de marques', 'মার্ক গ্রেড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Marks Grade'),
(386, '8', 'send_marks_by_sms', 'Send Marks By Sms', 'Enviar marcas por sms', 'Envoyer des marques par sms', 'এসএমএস দ্বারা চিহ্ন পাঠান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Send Marks By Sms'),
(387, '8', 'question_group', 'Question Group', 'Grupo de preguntas', 'Groupe de questions', 'প্রশ্ন গ্রুপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Question Group'),
(388, '8', 'question_bank', 'Question Bank', 'Banco de preguntas', 'Banque de questions', 'প্রশ্ন ব্যাংক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Question Bank'),
(389, '8', 'online_exam', 'Online Exam', 'Examen en linea', 'Examen en ligne', 'অনলাইন পরীক্ষা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Online Exam'),
(390, '8', 'exam_type', 'Exam Type', 'Tipo de examen', 'Type dexamen', 'পরীক্ষার ধরন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Type'),
(391, '8', 'exam_setup', 'Exam Setup', 'Configuración del examen', 'Configuration de lexamen', 'পরীক্ষা সেটআপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Setup'),
(392, '8', 'exam_name', 'Exam Name', 'Nombre del examen', 'Nom de lexamen', 'পরীক্ষার নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Name'),
(393, '8', 'sl', 'Sl', 'Sl', 'Sl', 'ক্রমিক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Sl'),
(394, '8', 'select_subjects', 'Select Subjects', 'Temas seleccionados', 'Sélectionner des sujets', 'বিষয় নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Subjects'),
(395, '8', 'exam_mark', 'Exam Mark', 'Marca de examen', 'Marque dexamen', 'পরীক্ষার চিহ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Mark'),
(396, '8', 'add_mark_distributions', 'Add Mark Distributions', 'Añadir Distribuciones de Marca', 'Ajouter des distributions de marques', 'মার্ক বিতরণ যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Add Mark Distributions'),
(397, '8', 'exam_title', 'Exam Title', 'Título del examen', 'Titre de lexamen', 'পরীক্ষার শিরোনাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Title'),
(398, '8', 'ct_AT_Exam', 'Name', 'Nombre', 'prénom', 'নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Name'),
(399, '8', 'mark_distribution', 'Mark Distribution', 'Distribución de marcas', 'Distribution des marques', 'মার্ক বিতরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Mark Distribution'),
(400, '8', 'subject', 'Subject', 'Tema', 'Assujettir', 'বিষয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Subject'),
(401, '8', 'total_mark', 'Total Mark', 'Marca total', 'Total Mark', 'মোট চিহ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Total Mark'),
(402, '8', 'view_status', 'View Status', 'Ver el estado de', 'Voir le statut', 'অবস্থা দেখুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'View Status'),
(403, '8', 'copy', 'Copy', 'Dupdo', 'Copie', 'কপি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Copy'),
(404, '8', 'add_exam_schedule', 'add Exam Schedule', 'añadir horario de exámenes', 'ajouter un calendrier dexamen', 'পরীক্ষার সময়সূচী যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'add Exam Schedule'),
(405, '8', 'exam_list', 'Exam List', 'Lista de exámenes', 'Liste dexamen', 'পরীক্ষা তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam List'),
(406, '8', 'marks', 'Marks', 'Marcas', 'Des notes', 'চিহ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Marks'),
(407, '8', 'select_exam', 'Select Exam', 'Seleccionar examen', 'Sélectionnez un examen', 'পরীক্ষা নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Exam'),
(408, '8', 'percent', 'Percent', 'Por ciento', 'Pour cent', 'শতাংশ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Percent'),
(409, '8', 'seat_plan_report', 'Seat Plan Report', 'Informe del plan de asiento', 'Rapport de plan de siège', 'আসন পরিকল্পনা রিপোর্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Seat Plan Report'),
(410, '8', 'assign_students', 'Assign Students', 'Asignar estudiantes', 'Attribuer des étudiants', 'ছাত্র নিয়োগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Assign Students'),
(411, '8', 'start_end_time', 'start-end time', 'hora de inicio y fin', 'heure de début', 'শুরু শেষ সময়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'start-end time'),
(412, '8', 'total_students', 'Total Students', 'Total de estudiantes', 'Total des étudiants', 'মোট ছাত্র', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Total Students'),
(413, '8', 'attendance_create', 'Attendance Create', 'Asistencia Crear', 'Présence Créer', 'উপস্থিতি তৈরি করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Attendance Create'),
(414, '8', 'grade', 'Grade', 'Grado', 'Qualité', 'শ্রেণী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Grade'),
(415, '8', 'gpa', 'GPA', 'GPA', 'GPA', 'জিপিএ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'GPA'),
(416, '8', 'percent_from', 'Percent From', 'Porcentaje de', 'Pour cent de', 'থেকে শতাংশ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Percent From'),
(417, '8', 'percent_upto', 'Percent Upto', 'Por ciento hasta', 'Pourcentage jusquà', 'শতাংশ পর্যন্ত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Percent Upto'),
(418, '8', 'send_marks_via_SMS', 'Send Marks Via SMS', 'Enviar marcas a través de SMS', 'Envoyer des marques par SMS', 'এসএমএস মাধ্যমে চিহ্ন পাঠান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Send Marks Via SMS'),
(419, '8', 'select_receiver', 'Select Receiver', 'Seleccionar Receptor', 'Sélectionnez le destinataire', 'রিসিভার নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Receiver'),
(420, '8', 'students', 'Students', 'Estudiantes', 'Étudiants', 'শিক্ষার্থীরা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Students'),
(421, '8', 'select_group', 'Select Group', 'Selecciona grupo', 'Sélectionner un groupe', 'গ্রুপ নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Group'),
(422, '8', 'question_type', 'Question Type', 'tipo de pregunta', 'Type de question', 'প্রশ্নের ধরন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Question Type'),
(423, '8', 'multiple_choice', 'Multiple Choice', 'Opción multiple', 'Choix multiple', 'বহু নির্বাচনী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Multiple Choice'),
(424, '8', 'true_false', 'True False', 'Verdadero Falso', 'Vrai faux', 'সত্য মিথ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'True False'),
(425, '8', 'fill_in_the_blanks', 'Fill in the Blanks', 'Rellenar los espacios en blanco', 'Remplir les espaces vides', 'শুন্যস্তান পূরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Fill in the Blanks'),
(426, '8', 'question', 'Question', 'Pregunta', 'Question', 'প্রশ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Question'),
(427, '8', 'number_of_options', 'Number Of Options', 'Número de opciones', 'Nombre doptions', 'বিকল্প সংখ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Number Of Options'),
(428, '8', 'create', 'Create', 'Crear', 'Créer', 'সৃষ্টি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Create'),
(429, '8', 'option', 'option', 'opción', 'option', 'পছন্দ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'option'),
(430, '8', 'TRUE', 'TRUE', 'CIERTO', 'VRAI', 'সত্য', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'TRUE'),
(431, '8', 'FALSE', 'FALSE', 'FALSO', 'FAUX', 'মিথ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'FALSE'),
(432, '8', 'suitable_words', 'Suitable Words', 'Palabras adecuadas', 'Mots convenables', 'উপযুক্ত শব্দ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Suitable Words'),
(433, '8', 'start_time', 'Start Time', 'Hora de inicio', 'Heure de début', 'সময় শুরু', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Start Time'),
(434, '8', 'end_time', 'End time', 'Hora de finalización', 'Heure de fin', 'শেষ সময়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'End time'),
(435, '8', 'minimum_percentage', 'Minimum Percentage', 'Porcentaje mínimo', 'Pourcentage minimum', 'নূন্যতম শতাংশ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Minimum Percentage'),
(436, '8', 'instruction', 'Instruction', 'Instrucción', 'Instruction', 'নির্দেশ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Instruction'),
(437, '8', 'exam_date', 'Exam Date', 'Fecha de examen', 'Date de lexamen', 'পরীক্ষার তারিখ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Date'),
(438, '8', 'time', 'Time', 'Hora', 'Temps', 'সময়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Time'),
(439, '8', 'published', 'Published', 'Publicado', 'Publié', 'প্রকাশিত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Published'),
(440, '8', 'manage_question', 'Manage Question', 'Gestionar pregunta', 'Gérer la question', 'প্রশ্ন পরিচালনা করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Manage Question'),
(441, '8', 'published_now', 'Published Now', 'Publicado ahora', 'Publié maintenant', 'এখন প্রকাশিত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Published Now'),
(442, '8', 'view_result', 'View Result', 'Ver resultado', 'Voir résultat', 'ফলাফল দেখুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'View Result'),
(443, '8', 'monday', 'Monday', 'lunes', 'Lundi', 'সোমবার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Monday'),
(444, '8', 'tuesday', 'Tuesday', 'martes', 'Mardi', 'মঙ্গলবার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Tuesday'),
(445, '8', 'wednesday', 'Wednesday', 'miércoles', 'Mercredi', 'বুধবার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Wednesday'),
(446, '8', 'thursday', 'Thursday', 'jueves', 'Jeudi', 'বৃহস্পতিবার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Thursday'),
(447, '8', 'friday', 'Friday', 'viernes', 'Vendredi', 'শুক্রবার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Friday'),
(448, '8', 'Saturday', 'Saturday', 'sábado', 'samedi', 'শনিবার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Saturday'),
(449, '8', 'sunday', 'Sunday', 'domingo', 'dimanche', 'রবিবার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Sunday'),
(450, '8', 'room_number', 'Room Number', 'Número de habitación', 'Numéro de chambre', 'রুম সংখ্যা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Room Number'),
(451, '8', 'not_scheduled', 'Not Scheduled', 'No programada', 'Non prévu', 'নির্ধারিত না', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Not Scheduled'),
(452, '8', 'result_view', 'Result View', 'Vista de resultados', 'Résultat', 'ফলাফল দেখুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Result View'),
(453, '8', 'total_marks', 'Total Marks', 'Notas totales', 'Total des notes', 'মোট চিহ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Total Marks'),
(454, '8', 'obtained_marks', 'Obtained Marks', 'Marcas obtenidas', 'Obtenu Marques', 'প্রাপ্ত মার্কস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Obtained Marks'),
(455, '8', 'marking', 'Marking', 'Calificación', 'Marquage', 'অবস্থানসূচক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Marking'),
(456, '8', 'view_answer_marking', 'View answer & marking', 'Ver respuesta y marcado', 'Voir la réponse et le marquage', 'উত্তর এবং চিহ্নিতকরণ দেখুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'View answer & marking'),
(457, '8', 'online_exam_question', 'Online Exam Question', 'Pregunta de examen en línea', 'Question dexamen en ligne', 'অনলাইন পরীক্ষা প্রশ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Online Exam Question'),
(458, '8', 'question_list', 'Question List', 'Lista de preguntas', 'Liste de questions', 'প্রশ্ন তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Question List'),
(459, '8', 'questions', 'Questions', 'Preguntas', 'Des questions', 'প্রশ্নাবলি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Questions'),
(460, '8', 'exam_details', 'Exam Details', 'Detalles del examen', 'Détails de lexamen', 'পরীক্ষা বিবরণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Details'),
(461, '8', 'passing_percentage', 'Passing Percentage', 'Pasando el porcentaje', 'Passage Pourcentage', 'শতাংশ পাস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Passing Percentage'),
(462, '8', 'online_active_exams', 'Online Active Exams', 'Exámenes activos en línea', 'Examens actifs en ligne', 'অনলাইন সক্রিয় পরীক্ষা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Online Active Exams'),
(463, '8', 'take_exam', 'Take Exam', 'Tomar examen', 'Passer un examen', 'পরীক্ষা নিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Take Exam'),
(464, '8', 'classes', 'Classes', 'Las clases', 'Des classes', 'ক্লাস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Classes'),
(465, '8', 'exam_terms', 'Exam Terms', 'Términos del examen', 'Termes de lexamen', 'পরীক্ষার শর্তাবলী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Terms'),
(466, '8', 'document', 'document', 'document', 'document', 'কাগজপত্র', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'document'),
(467, '8', 'timeline', 'Timeline', 'Línea de tiempo', 'Chronologie', 'সময়রেখা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Timeline'),
(468, '8', 'Parent_Guardian_Details', 'Parent / Guardian Details', 'Detalles de padres / tutores', 'Détails sur le parent / tuteur', 'পিতামাতা / অভিভাবক বিস্তারিত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Parent / Guardian Details'),
(469, '8', 'full_marks', 'Full Marks', 'La máxima puntuación', 'La totalité des points', 'পুরো চিহ্ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Full Marks'),
(470, '8', 'results', 'Results', 'Resultados', 'Résultats', 'ফলাফল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Results'),
(471, '8', 'visible_to_this_person', 'Visible to this person', 'Visible para esta persona', 'Visible à cette personne', 'এই ব্যক্তির কাছে দৃশ্যমান', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Visible to this person'),
(472, '8', '', '', '', '', '', 1, '2019-11-13 00:22:42', '2019-11-13 00:22:42', NULL),
(473, '9', 'academics', 'Academics', 'Académica', 'Les universitaires', 'শিক্ষাবিদগণ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Academics'),
(474, '9', 'class_routine', 'Class Routine', 'Rutina de clase', 'Routine de classe', 'ক্লাস রুটিন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Class Routine'),
(475, '9', 'class_routine_create', 'Class Routine Create', 'Rutina de clase Crear', 'Classe Routine Create', 'ক্লাস রুটিন তৈরি করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Class Routine Create'),
(476, '9', 'view_teacher_routine', 'View Class Routine(Teacher)', 'Ver la rutina de la clase (profesor)', 'Voir la routine de classe (enseignant)', 'ক্লাস রুটিন দেখুন (শিক্ষক)', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'View Class Routine(Teacher)'),
(477, '9', 'assign_subject', 'Assign Subject', 'Asignar Asunto', 'Attribuer un sujet', 'বিষয় বরাদ্দ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Assign Subject'),
(478, '9', 'assign_subject_create', 'Assign Subject create', 'Asignar Asunto crear', 'Assigner le sujet créer', 'বিষয় নির্ধারণ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Assign Subject create'),
(479, '9', 'assign_class_teacher', 'Assign Class Teacher', 'Asignar profesor de clase', 'Attribuer un enseignant de classe', 'ক্লাস শিক্ষক নিয়োগ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Assign Class Teacher'),
(480, '9', 'subjects', 'Subjects', 'Asignaturas', 'Sujets', 'বিষয়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Subjects'),
(481, '9', 'class', 'Class', 'Clase', 'Classe', 'শ্রেণী', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Class'),
(482, '9', 'section', 'Section', 'Seccion', 'Section', 'সেকশনস', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Section'),
(483, '9', 'class_room', 'Class Room', 'Salón de clases', 'Salle de cours', 'ক্লাস রুম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Class Room'),
(484, '9', 'n_a', 'N/A', 'N / A', 'N / A', 'এন / এ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'N/A'),
(485, '9', 'class_teacher', 'Class Teacher', 'Profesor de la clase', 'Professeur de classe', 'শ্রেণী শিক্ষক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Class Teacher'),
(486, '9', 'assign_teacher', 'Assign teacher', 'Asignar maestro', 'Assigner un enseignant', 'শিক্ষক নিয়োগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Assign teacher'),
(487, '9', 'subject_name', 'Subject Name', 'Nombre del tema', 'Nom du sujet', 'বিষয় নাম', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Subject Name'),
(488, '9', 'theory', 'Theory', 'Teoría', 'Théorie', 'তত্ত্ব', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Theory'),
(489, '9', 'practical', 'Practical', 'Práctico', 'Pratique', 'ব্যবহারিক', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Practical'),
(490, '9', 'subject_code', 'Subject Code', 'Código del Asunto', 'Code de sujet', 'বিষয় কোড', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Subject Code'),
(491, '9', 'subject_type', 'Subject Type', 'Tipo de asunto', 'Type de sujet', 'বিষয় প্রকার', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Subject Type'),
(492, '9', 'capacity', 'Capacity', 'Capacidad', 'Capacité', 'ধারণক্ষমতা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Capacity'),
(493, '9', 'cl_ex_time_setup', 'Cl/Ex Time Setup', 'Cl / Ex Configuración de hora', 'Configuration de lheure Cl / Ex', 'ক্ল / প্রাক্তন সময় সেটআপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Cl/Ex Time Setup'),
(494, '9', 'class_exam_time_setup', 'Class & Exam Time Setup', 'Configuración de clase y tiempo de examen', 'Configuration du temps de cours et dexamen', 'ক্লাস এবং পরীক্ষার সময় সেটআপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Class & Exam Time Setup'),
(495, '9', 'class_time', 'Class Time', 'Hora de clase', 'Le moment daller en classe', 'ক্লাস সময়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Class Time'),
(496, '9', 'time_type', 'Time Type', 'Tipo de tiempo', 'Type de temps', 'টাইম টাইপ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Time Type'),
(497, '9', 'exam_time', 'Exam Time', 'Tiempo de examen', 'Temps dexamen', 'পরীক্ষার সময়', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Exam Time'),
(498, '9', 'period', 'Period', 'Período', 'Période', 'কাল', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Period'),
(499, '9', 'select_time', 'Select Time', 'Seleccione tiempo', 'Sélectionnez lheure', 'সময় নির্বাচন করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Select Time'),
(500, '9', 'not_assigned_yet', 'Not assigned yet', 'Aún no asignado', 'Pas encore assigné', 'এখনো বরাদ্দ করা হয় নি', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Not assigned yet'),
(501, '10', 'home_work', 'HomeWork', 'Deberes', 'Devoirs', 'বাড়ির কাজ', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'HomeWork'),
(502, '10', 'add_homework', 'Add Homework', 'Añadir tarea', 'Ajouter des devoirs', 'বাড়ির কাজ যোগ করুন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Add Homework'),
(503, '10', 'homework_list', 'Homework List', 'Lista de tareas', 'Liste de devoirs', 'হোমওয়ার্ক তালিকা', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Homework List'),
(504, '10', 'evaluation_report', 'Homework Evaluation Report', 'Informe de evaluación de tareas', 'Rapport dévaluation des devoirs', 'হোমওয়ার্ক মূল্যায়ন রিপোর্ট', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Homework Evaluation Report'),
(505, '10', 'submission', 'Submission', 'Sumisión', 'Soumission', 'নমন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Submission'),
(506, '10', 'attach_file', 'Attach File', 'Adjuntar archivo', 'Pièce jointe', 'ফাইল সংযুক্ত', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Attach File'),
(507, '10', 'evaluation', 'Evaluation', 'Evaluación', 'Évaluation', 'মূল্যায়ন', 1, '2019-11-13 00:22:42', '2019-11-22 00:03:55', 'Evaluation'),
(508, '10', 'created_by', 'Created By', 'Creado por', 'Créé par', 'দ্বারা সৃষ্টি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Created By'),
(509, '10', 'complete', 'Complete', 'Completar', 'Achevée', 'সম্পূর্ণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Complete'),
(510, '10', 'incomplete', 'Incomplete', 'Incompleto', 'Incomplet', 'অসম্পূর্ণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Incomplete'),
(511, '11', 'communicate', 'Communicate', 'Comunicar', 'Communiquer', 'যোগাযোগ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Communicate'),
(512, '11', 'notice_board', 'Notice Board', 'Tablón de anuncios', 'Tableau daffichage', 'নোটিসবোর্ড', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Notice Board'),
(513, '11', 'send_message', 'Send Message', 'Enviar mensaje', 'Envoyer le message', 'বার্তা পাঠান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Send Message'),
(514, '11', 'send_email', 'Send Email / Sms', 'Enviar correo electrónico / SMS', 'Envoyer un email / sms', 'ইমেল / এসএমএস পাঠান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Send Email / Sms'),
(515, '11', 'email_sms_log', 'Email / Sms Log', 'Email / Sms Log', 'Journal Email / Sms', 'ইমেইল / এসএমএস লগ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Email / Sms Log'),
(516, '11', 'event', 'Event', 'Evento', 'un événement', 'ঘটনা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Event'),
(517, '11', 'notices', 'Notices', 'Avisos', 'Les avis', 'নোটিশ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Notices'),
(518, '11', 'notice', 'Notice', 'darse cuenta', 'Remarquer', 'বিজ্ঞপ্তি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Notice'),
(519, '11', 'publish', 'Publish', 'Publicar', 'Publier', 'প্রকাশ করা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Publish'),
(520, '11', 'add_notice', 'Add Notice', 'Añadir aviso', 'Ajouter un avis', 'নোটিশ যোগ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Add Notice'),
(521, '11', 'add_a_notice', 'Add a Notice', 'Añadir un aviso', 'Ajouter un avis', 'একটি নোটিশ যোগ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Add a Notice'),
(522, '11', 'publish_on', 'Publish On', 'Publicar en', 'Publier sur', 'প্রকাশ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Publish On'),
(523, '11', 'Send_Email_Sms', 'Send Email', 'Enviar correo electrónico', 'Envoyer un email', 'ইমেইল পাঠান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Send Email'),
(524, '11', 'sms', 'Sms', 'SMS', 'SMS', 'খুদেবার্তা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Sms'),
(525, '11', 'individual', 'Individual', 'Individual', 'Individuel', 'স্বতন্ত্র', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Individual'),
(526, '11', 'select_all', 'Select All', 'Seleccionar todo', 'Tout sélectionner', 'সব নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select All'),
(527, '11', 'For_Sending_Email', 'For Sending Email / Sms, It may take some seconds. So please take patience.', 'Para enviar correo electrónico / SMS, puede tardar unos segundos. Así que por favor ten paciencia.', 'Pour lenvoi demails / sms, cela peut prendre quelques secondes. Alors sil vous plaît prenez patience.', 'ইমেল / এসএমএস পাঠানোর জন্য, এটি কয়েক সেকেন্ড সময় নিতে পারে। তাই ধৈর্য ধরুন।', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'For Sending Email / Sms, It may take some seconds. So please take patience.'),
(528, '11', 'send', 'Send', 'Enviar', 'Envoyer', 'পাঠান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Send'),
(529, '11', 'start_date', 'Start Date', 'Fecha de inicio', 'Date de début', 'শুরুর তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Start Date'),
(530, '11', 'to_date', 'To Date', 'Hasta la fecha', 'À ce jour', 'এখন পর্যন্ত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'To Date'),
(531, '11', 'from_date', 'from Date', 'partir de la fecha', 'partir de la date', 'তারিখ হইতে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'from Date'),
(532, '11', 'details', 'Details', 'Detalles', 'Détails', 'বিস্তারিত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Details'),
(533, '11', 'notice_date', 'Notice Date', 'Fecha de notificacion', 'Date davis', 'নোটিশ তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Notice Date'),
(534, '11', 'update_content', 'Update content', 'Actualizar contenido', 'Mettre à jour le contenu', 'কন্টেন্ট আপডেট করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Update content'),
(535, '12', 'library', 'Library', 'Biblioteca', 'Bibliothèque', 'গ্রন্থাগার', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Library'),
(536, '12', 'add_book', 'Add Book', 'Añadir libro', 'Ajouter un livre', 'বই যোগ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Add Book'),
(537, '12', 'book_list', 'Book List', 'Lista de libros', 'Liste de livres', 'বইএর তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Book List'),
(538, '12', 'book_category', 'Book Categories', 'Categorías de libros', 'Catégories de livre', 'বই বিভাগ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Book Categories'),
(539, '12', 'library_member', 'Add Member', 'Añadir miembro', 'Ajouter un membre', 'সদস্য যুক্ত করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Add Member'),
(540, '12', 'member_list', 'Issue/Return Book', 'Libro de emisión / devolución', 'Livre démission / retour', 'ইস্যু / রিটার্ন বুক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue/Return Book'),
(541, '12', 'all_issued_book', 'All Issued Book', 'Todo el libro publicado', 'Tous les livres publiés', 'সব প্রকাশিত বই', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'All Issued Book'),
(542, '12', 'edit_book', 'Edit Book', 'Editar libro', 'Editer le livre', 'বই সম্পাদনা করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Edit Book'),
(543, '12', 'book', 'Book', 'Libro', 'Livre', 'বই', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Book'),
(544, '12', 'book_title', 'Book Title', 'Titulo del libro', 'Titre de livre', 'বইয়ের শিরোনাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Book Title'),
(545, '12', 'select_book_category', 'Select Book Category', 'Seleccionar categoría de libro', 'Sélectionnez une catégorie de livre', 'বই বিভাগ নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Book Category'),
(546, '12', 'isbn', 'ISBN', 'ISBN', 'ISBN', 'আইএসবিএন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'ISBN'),
(547, '12', 'publisher', 'Publisher', 'Editor', 'Éditeur', 'প্রকাশক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Publisher'),
(548, '12', 'author_name', 'Author Name', 'Nombre del autor', 'Nom de lauteur', 'লেখকের নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Author Name'),
(549, '12', 'rack', 'Rack', 'Estante', 'Grille', 'তাক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Rack'),
(550, '12', 'quantity', 'Quantity', 'Cantidad', 'Quantité', 'পরিমাণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Quantity'),
(551, '12', 'book_price', 'Book Price', 'Precio del libro', 'Prix ​​du livre', 'বই মূল্য', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Book Price'),
(552, '12', 'price', 'Price', 'Precio', 'Prix', 'মূল্য', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Price'),
(553, '12', 'category_name', 'Category Name', 'nombre de la categoría', 'Nom de catégorie', 'বিভাগ নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Category Name'),
(554, '12', 'add_member', 'Add Member', 'Añadir miembro', 'Ajouter un membre', 'সদস্য যুক্ত করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Add Member'),
(555, '12', 'member', 'Member', 'Miembro', 'Membre', 'সদস্য', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Member'),
(556, '12', 'member_type', 'Member Type', 'Tipo de miembro', 'Type de membre', 'সদস্য প্রকার', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Member Type'),
(557, '12', 'select_student', 'Select Student', 'Seleccionar estudiante', 'Sélectionnez étudiant', 'ছাত্র নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Student'),
(558, '12', 'issue_books', 'Issue Books', 'Libros de emisión', 'Livres de questions', 'ইস্যু বই', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue Books'),
(559, '12', 'full_name', 'Full Name', 'Nombre completo', 'Nom complet', 'পুরো নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Full Name'),
(560, '12', 'issue_return_Book', 'Issue / Return Book', 'Libro de emisión / devolución', 'Livre démission / retour', 'ইস্যু / রিটার্ন বুক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue / Return Book'),
(561, '12', 'issued_Book_List', 'Issued Book List', 'Lista de libros emitidos', 'Liste des livres publiés', 'ইস্যু করা বই তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issued Book List'),
(562, '12', 'select_Book_Name', 'Select Book Name', 'Seleccione el nombre del libro', 'Sélectionnez le nom du livre', 'বুক নাম নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Book Name'),
(563, '12', 'search_By_Book_ID', 'Search By Book ID', 'Buscar por ID de libro', 'Rechercher par numéro de livre', 'বই আইডি দ্বারা অনুসন্ধান করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Search By Book ID'),
(564, '12', 'author', 'Author', 'Autor', 'Auteur', 'লেখক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Author'),
(565, '12', 'library_book_issue', 'Library Book Issue', 'Número de libro de la biblioteca', 'Problème de livre de bibliothèque', 'লাইব্রেরী বই ইস্যু', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Library Book Issue'),
(566, '12', 'staff_name', 'Staff Name', 'Nombre del personal', 'Nom du personnel', 'স্টাফ নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Staff Name'),
(567, '12', 'select_book', 'Select Book', 'Seleccionar libro', 'Sélectionnez un livre', 'বই নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Book'),
(568, '12', 'issue_book', 'Issue Book', 'Libro de temas', 'Numéro de livre', 'ইস্যু বই', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue Book'),
(569, '12', 'issued_book', 'Issued Book', 'Libro publicado', 'Livre publié', 'প্রকাশিত বই', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issued Book'),
(570, '12', 'book_number', 'Book Number', 'Número de libro', 'Numéro du livre', 'বই সংখ্যা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Book Number'),
(571, '12', 'status', 'Status', 'Estado', 'Statut', 'অবস্থা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Status'),
(572, '12', 'issue_date', 'Issue Date', 'Fecha de asunto', 'Date démission', 'প্রদানের তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue Date'),
(573, '12', 'return_this_book', 'Are you sure to Return This Book ?', '¿Seguro que regresas este libro?', 'Êtes-vous sûr de retourner ce livre?', 'আপনি এই বই ফেরত নিশ্চিত?', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Are you sure to Return This Book ?'),
(574, '12', 'return_date', 'Return Date', 'Fecha de regreso', 'Date de retour', 'ফিরে তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Return Date'),
(575, '13', 'inventory', 'Inventory', 'Inventario', 'Inventaire', 'জায়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Inventory'),
(576, '13', 'item_category', 'Item Category', 'Categoría de artículo', 'Catégorie darticle', 'আইটেম বিভাগ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Item Category'),
(577, '13', 'item_list', 'Item List', 'Lista de articulos', 'Liste des articles', 'উপকরণ তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Item List'),
(578, '13', 'item_store', 'Item Store', 'Tienda de articulos', 'Magasin darticles', 'আইটেম স্টোর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Item Store'),
(579, '13', 'supplier', 'Supplier', 'Proveedor', 'Fournisseur', 'সরবরাহকারী', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Supplier'),
(580, '13', 'item_receive', 'Item Receive', 'El artículo recibe', 'Point recevoir', 'আইটেম প্রাপ্তি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Item Receive'),
(581, '13', 'item_receive_list', 'Item Receive List', 'Lista de artículos recibidos', 'Item Receive List', 'আইটেম তালিকা প্রাপ্তি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Item Receive List'),
(582, '13', 'item_sell', 'Item Sell', 'Venta de artículos', 'Article Vendre', 'আইটেম বিক্রি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Item Sell'),
(583, '13', 'item_issue', 'Item Issue', 'Emisión del artículo', 'Question darticle', 'আইটেম ইস্যু', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Item Issue'),
(584, '13', 'select_item_category', 'Select Item Category', 'Seleccione la categoría del artículo', 'Sélectionner une catégorie darticle', 'আইটেম বিভাগ নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Item Category'),
(585, '13', 'selected', 'Selected', 'Seleccionado', 'Choisi', 'নির্বাচিত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Selected'),
(586, '13', 'total_in_stock', 'Total in Stock', 'Total en Stock', 'Total en stock', 'স্টক মোট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Total in Stock'),
(587, '13', 'store_name', 'Store Name', 'Nombre de la tienda', 'Nom du magasin', 'দোকানের নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Store Name'),
(588, '13', 'store_number', 'Store Number', 'Número de tienda', 'Numéro de magasin', 'স্টোর সংখ্যা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Store Number'),
(589, '13', 'company', 'Company', 'Empresa', 'Entreprise', 'কোম্পানির', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Company'),
(590, '13', 'contact_person_name', 'Contact Person Name', 'Nombre del Contacto', 'nom de contacte dune personne', 'যোগাযোগ ব্যক্তির নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Contact Person Name'),
(591, '13', 'contact_person', 'Contact Person', 'Persona de contacto', 'Contact', 'যোগাযোগ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Contact Person'),
(592, '13', 'receive_details', 'Receive Details', 'Recibir detalles', 'Recevoir les détails', 'বিস্তারিত পাবেন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Receive Details'),
(593, '13', 'select_supplier', 'Select Supplier', 'Seleccionar Proveedor', 'Sélectionner un fournisseur', 'সরবরাহকারী নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Supplier'),
(594, '13', 'receive_date', 'Receive Date', 'Fecha de recepción', 'date de réception', 'গ্রহণের তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Receive Date'),
(595, '13', 'product_name', 'Product Name', 'nombre del producto', 'Nom du produit', 'পণ্যের নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Product Name'),
(596, '13', 'unit_price', 'Unit Price', 'Precio unitario', 'Prix ​​unitaire', 'একক দাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Unit Price'),
(597, '13', 'sub_total', 'Sub Total', 'Sub Total', 'Total partiel', 'সাব মোট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Sub Total'),
(598, '13', 'full_paid', 'Full Paid', 'Completo pagado', 'Complet payé', 'সম্পূর্ণ পরিশোধিত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Full Paid'),
(599, '13', 'total_paid', 'Total Paid', 'Total pagado', 'Total payé', 'মোট দেওয়া', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Total Paid'),
(600, '13', 'total_due', 'Total Due', 'Total a pagar', 'Total dû', 'মোট বাকি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Total Due'),
(601, '13', 'receive', 'Receive', 'Recibir', 'Recevoir', 'গ্রহণ করা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Receive'),
(602, '13', 'new', 'New', 'Nuevo', 'Nouveau', 'নতুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'New'),
(603, '13', 'total_quantity', 'Total Quantity', 'Cantidad total', 'Quantité totale', 'মোট পরিমাণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Total Quantity'),
(604, '13', 'partial_paid', 'Partial Paid', 'Parcial pagado', 'Partiellement payé', 'আংশিক প্রদত্ত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Partial Paid'),
(605, '13', 'unpaid', 'Unpaid', 'No pagado', 'Non payé', 'অবৈতনিক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Unpaid'),
(606, '13', 'refund', 'Refund', 'Reembolso', 'Rembourser', 'প্রত্যর্পণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Refund'),
(607, '13', 'buyer', 'Buyer', 'Comprador', 'Acheteur', 'ক্রেতা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Buyer'),
(608, '13', 'issue_item', 'Issue Item', 'Elemento de emisión', 'Point démission', 'সমস্যা আইটেম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue Item'),
(609, '13', 'issue_a_item', 'Issue a Item', 'Emitir un artículo', 'Émettre un article', 'একটি আইটেম ইস্যু', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue a Item'),
(610, '13', 'user_type', 'User Type', 'Tipo de usuario', 'Type dutilisateur', 'ব্যবহারকারীর ধরন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'User Type'),
(611, '13', 'select_student_for_issue', 'Select Student For Issue', 'Seleccionar estudiante para su emisión', 'Sélectionner un étudiant pour lédition', 'সমস্যা জন্য ছাত্র নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Student For Issue'),
(612, '13', 'issue_to', 'Issue To', 'Emitido a', 'Issue to', 'ইস্যু', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issue To'),
(613, '13', 'issued_item_list', 'Issued Item List', 'Lista de elementos emitidos', 'Liste darticles publiés', 'ইস্যু আইটেম তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issued Item List'),
(614, '13', 'issued', 'Issued', 'Emitido', 'Publié', 'ইস্যু করা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Issued'),
(615, '13', 'returned', 'Returned', 'Devuelto', 'Revenu', 'ফেরৎ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Returned'),
(616, '13', 'cancel_the_record', 'You are about to cancel the record. This cannot be undone. are you sure?', 'Estás a punto de cancelar el registro. Esto no se puede deshacer. ¿Estás seguro?', 'Vous êtes sur le point dannuler lenregistrement. Ça ne peut pas être annulé. êtes-vous sûr?', 'আপনি রেকর্ড বাতিল করতে চলেছেন। এটা অসম্পূর্ণ থাকতে পারে না. তুমি কি নিশ্চিত?', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'You are about to cancel the record. This cannot be undone. are you sure?'),
(617, '13', 'return', 'Return', 'Regreso', 'Revenir', 'প্রত্যাবর্তন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Return'),
(618, '13', 'purchase_details', 'Purchase Details', 'Detalles de la compra', 'Les détails dachat', 'ক্রয় বিবরণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Purchase Details'),
(619, '14', 'transport', 'Transport', 'Transporte', 'Transport', 'পরিবহন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Transport'),
(620, '14', 'routes', 'Routes', 'Rutas', 'Itinéraires', 'রুট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Routes'),
(621, '14', 'vehicle', 'Vehicle', 'Vehículo', 'Véhicule', 'বাহন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Vehicle'),
(622, '14', 'assign_vehicle', 'Assign Vehicle', 'Asignar vehículo', 'Assigner un véhicule', 'যানবাহন বরাদ্দ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Assign Vehicle'),
(623, '14', 'student_transport_report', 'Student Transport Report', 'Informe de transporte de estudiantes', 'Rapport de transport étudiant', 'ছাত্র পরিবহন রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student Transport Report'),
(624, '14', 'transport_route', 'Transport Route', 'Ruta de transporte', 'Route de transport', 'পরিবহন রুট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Transport Route'),
(625, '14', 'route', 'Route', 'Ruta', 'Route', 'রুট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Route');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `es`, `fr`, `bn`, `active_status`, `created_at`, `updated_at`, `ur`) VALUES
(626, '14', 'route_title', 'Route Title', 'Título de la ruta', 'Titre de la route', 'রুট শিরোনাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Route Title'),
(627, '14', 'fare', 'Fare', 'Tarifa', 'Tarif', 'ভাড়া', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Fare'),
(628, '14', 'model', 'Model', 'Modelo', 'Modèle', 'মডেল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Model'),
(629, '14', 'year_made', 'Year Made', 'Año hecho', 'Année de fabrication', 'বছর তৈরি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Year Made'),
(630, '14', 'select_driver', 'Select Driver', 'Seleccione Driver', 'Sélectionnez le pilote', 'ড্রাইভার নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Driver'),
(631, '14', 'license', 'License', 'Licencia', 'Licence', 'লাইসেন্স', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'License'),
(632, '14', 'select_route', 'Select Route', 'Seleccione Ruta', 'Sélectionnez un itinéraire', 'রুট নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Route'),
(633, '14', 'select_vehicle', 'Select Vehicle', 'Seleccionar vehiculo', 'Choisir un véhicule', 'যানবাহন নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Vehicle'),
(634, '14', 'father_phone', 'Fathers Phone', 'Telefono del padre', 'Téléphone du père', 'বাবা ফোন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Fathers Phone'),
(635, '14', 'mother_name', 'Mothers Name', 'Nombre de la madre', 'Le nom de la mère', 'মায়ের নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Mothers Name'),
(636, '14', 'mother_phone', 'Mothers Phone', 'Teléfono de la madre', 'Téléphone de la mère', 'মা এর ফোন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Mothers Phone'),
(637, '15', 'dormitory', 'Dormitory', 'Dormitorio', 'Dortoir', 'ছাত্রাবাস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Dormitory'),
(638, '15', 'dormitory_rooms', 'Dormitory Rooms', 'Dormitorios', 'Dortoirs', 'ডরমিটার রুম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Dormitory Rooms'),
(639, '15', 'room_type', 'Room Type', 'Tipo de habitación', 'Type de chambre', 'ঘরের বিবরণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Room Type'),
(640, '15', 'student_dormitory_report', 'Student Dormitory Report', 'Informe del dormitorio de estudiantes', 'Rapport du dortoir des étudiants', 'ছাত্র ডরমিটার রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student Dormitory Report'),
(641, '15', 'number_of_bed', 'Number Of Bed', 'Numero de cama', 'Nombre de lit', 'বিছানা সংখ্যা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Number Of Bed'),
(642, '15', 'cost_per_bed', 'Cost Per Bed', 'Costo por cama', 'Coût par lit', 'বিছানা প্রতি খরচ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Cost Per Bed'),
(643, '15', 'no_of_bed', 'NO. OF BEd', 'NO. DE LA CAMA', 'NON. DE LIT', 'কোন বেড এর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'NO. OF BEd'),
(644, '15', 'dormitory_list', 'Dormitory List', 'Lista de dormitorios', 'Liste des dortoirs', 'ডরমিটার তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Dormitory List'),
(645, '15', 'boys', 'Boys', 'Muchachos', 'Garçons', 'বয়েজ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Boys'),
(646, '15', 'girls', 'Girls', 'Chicas', 'Filles', 'গার্লস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Girls'),
(647, '15', 'intake', 'Intake', 'Consumo', 'Admission', 'ঘেরা জমি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Intake'),
(648, '15', 'select_dormitory', 'Select Dormitory', 'Dormitorio selecto', 'Sélectionnez un dortoir', 'ডরমিটার নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Dormitory'),
(649, '15', 'guardian_phone', 'Guardians Phone', 'Teléfono del guardián', 'Téléphone du gardien', 'গার্ডিয়ান ফোন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Guardians Phone'),
(650, '16', 'reports', 'Reports', 'Informes', 'Rapports', 'প্রতিবেদন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Reports'),
(651, '16', 'student_report', 'Student Report', 'Informe del estudiante', 'Rapport détudiant', 'ছাত্র রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student Report'),
(652, '16', 'guardian_report', 'Guardian Reports', 'Informes del tutor', 'Rapports de gardien', 'গার্ডিয়ান রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Guardian Reports'),
(653, '16', 'student_history', 'Student History', 'Historia del estudiante', 'Histoire des étudiants', 'ছাত্র ইতিহাস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student History'),
(654, '16', 'student_login_report', 'Student Login Report', 'Informe de inicio de sesión del estudiante', 'Rapport de connexion détudiant', 'ছাত্র লগইন রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student Login Report'),
(655, '16', 'fees_statement', 'Fees Statement', 'Declaración de honorarios', 'Relevé des frais', 'ফি বিবৃতি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Fees Statement'),
(656, '16', 'balance_fees_report', 'Balance Fees Report', 'Informe de comisiones de saldo', 'Bilan des frais', 'ব্যালেন্স ফি রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Balance Fees Report'),
(657, '16', 'transaction_report', 'Transaction Report', 'Reporte de transacción', 'Rapport de transaction', 'লেনদেন রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Transaction Report'),
(658, '16', 'class_report', 'Class Report', 'Informe de clase', 'Rapport de classe', 'ক্লাস রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Class Report'),
(659, '16', 'merit_list_report', 'Merit List Report', 'Informe de la lista de méritos', 'Rapport de liste de mérite', 'মেধার তালিকা রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Merit List Report'),
(660, '16', 'online_exam_report', 'Online Exam Report', 'Informe de examen en línea', 'Rapport dexamen en ligne', 'অনলাইন পরীক্ষা রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Online Exam Report'),
(661, '16', 'mark_sheet_report', 'Mark Sheet Report', 'Informe de hoja de marcas', 'Rapport de feuille de marque', 'মার্ক শীট রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Mark Sheet Report'),
(662, '16', 'tabulation_sheet_report', 'Tabulation Sheet Report', 'Informe de hoja de tabulación', 'Rapport de tabulation', 'ট্যাবলেট শীট রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Tabulation Sheet Report'),
(663, '16', 'student_fine_report', 'Student Fine Report', 'Informe de estudiante bien', 'Rapport de létudiant bien', 'ছাত্র ফাইন রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student Fine Report'),
(664, '16', 'user_log', 'User Log', 'Registro de usuario', 'Journal de lutilisateur', 'ব্যবহারকারী লগ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'User Log'),
(665, '16', 'exam_routine', 'Exam Routine', 'Rutina de examen', 'Routine dexamen', 'পরীক্ষা রুটিন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Exam Routine'),
(666, '16', 'select_type', 'Select Type', 'Seleccione tipo', 'Sélectionner le genre', 'টাইপ নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Type'),
(667, '16', 'select_gender', 'Select Gender', 'Seleccione género', 'Sélectionnez le sexe', 'লিংগ নির্বাচন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Gender'),
(668, '16', 'nid', 'NID', 'NID', 'NID', 'জাতীয় পরিচয়পত্র', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'NID'),
(669, '16', 'Birth_Certificate_Number', 'Birth Certificate Number', 'Número de Certificado de Nacimiento', 'Numéro Acte de Naissance', 'জন্ম শংসাপত্র সংখ্যা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Birth Certificate Number'),
(670, '16', 'select_admission_year', 'Select admission Year', 'Seleccione el año de admisión', 'Sélectionnez lannée dadmission', 'ভর্তি বছর নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select admission Year'),
(671, '16', 'start_end', 'Start-End', 'Inicio fin', 'Début Fin', 'শুরু শেষ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Start-End'),
(672, '16', 'student_login_info', 'Student Login Info', 'Información de inicio de sesión del estudiante', 'Informations de connexion des étudiants', 'ছাত্র লগইন তথ্য', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student Login Info'),
(673, '16', 'login_info_report', 'Login Info Report', 'Informe de información de inicio de sesión', 'Login Info Report', 'লগইন তথ্য রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Login Info Report'),
(674, '16', 'username', 'Username', 'Nombre de usuario', 'Nom dutilisateur', 'ব্যবহারকারীর নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Username'),
(675, '16', 'password', 'Password', 'Contraseña', 'Mot de passe', 'পাসওয়ার্ড', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Password'),
(676, '16', 'parent', 'Parent', 'Padre', 'Parent', 'মাতা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Parent'),
(677, '16', 'reset', 'Reset', 'Reiniciar', 'Réinitialiser', 'রিসেট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Reset'),
(678, '16', 'due_date', 'Due Date', 'Fecha de vencimiento', 'Date déchéance', 'নির্দিষ্ট তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Due Date'),
(679, '16', 'partial', 'Partial', 'Parcial', 'Partiel', 'আংশিক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Partial'),
(680, '16', 'discount_of', 'Discount of', 'Descuento de', 'Remise de', 'ছাড়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Discount of'),
(681, '16', 'fees_report', 'Fees Report', 'Informe de tarifas', 'Rapport de frais', 'ফি রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Fees Report'),
(682, '16', 'paid_fees', 'Paid Fees', 'Honorarios pagados', 'Frais payés', 'পরিশোধিত ফি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Paid Fees'),
(683, '16', 'fees_collection_details', 'Fees Collection Details', 'Detalles de la colección', 'Frais Collection Détails', 'ফি সংগ্রহ বিবরণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Fees Collection Details'),
(684, '16', 'number_of_student', 'Number Of Student', 'Numero de estudiante', 'Nombre détudiant', 'ছাত্র সংখ্যা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Number Of Student'),
(685, '16', 'total_subjects_assigned', 'Total Subjects assigned', 'Total de asignaturas asignadas', 'Nombre total de sujets assignés', 'মোট বিষয় বরাদ্দ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Total Subjects assigned'),
(686, '16', 'collection', 'Collection', 'Colección', 'Collection', 'সংগ্রহ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Collection'),
(687, '16', 'due', 'Due', 'Debido', 'Dû', 'দরুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Due'),
(688, '16', 'fees_details', 'Fees Details', 'Detalles de tarifas', 'Détails des frais', 'ফি বিবরণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Fees Details'),
(689, '16', 'class_routine_report', 'Class Routine Report', 'Informe de rutina de la clase', 'Rapport de routine de classe', 'ক্লাস রুটিন রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Class Routine Report'),
(690, '16', 'report', 'Report', 'Informe', 'rapport', 'প্রতিবেদন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Report'),
(691, '16', 'teacher_class_routine_report', 'Teacher Class Routine Report', 'Informe de rutina para el maestro', 'Rapport de routine de classe denseignant', 'শিক্ষক ক্লাস রুটিন রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Teacher Class Routine Report'),
(692, '16', 'select_teacher', 'Select Teacher', 'Seleccionar profesor', 'Sélectionnez un enseignant', 'শিক্ষক নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Teacher'),
(693, '16', 'school_management_system', 'School Management System', 'Sistema de gestión escolar', 'Système de gestion scolaire', 'স্কুল ম্যানেজমেন্ট সিস্টেম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'School Management System'),
(694, '16', 'united_states_of_america', 'House 25, Road 27, Block B, 54th Floor, New York, United States of America', 'House 25, Road 27, Block B, 54th Floor, Nueva York, Estados Unidos de América', 'Maison 25, route 27, bloc B, 54ème étage, New York, États-Unis dAmérique', 'হাউস ২5, রোড 27, ব্লক বি, 54 তলা, নিউ ইয়র্ক, আমেরিকা যুক্তরাষ্ট্র', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'House 25, Road 27, Block B, 54th Floor, New York, United States of America'),
(695, '16', 'order_of_merit_list', 'Order of merit list', 'Lista de orden de mérito', 'Ordre de mérite', 'মেধার তালিকা আদেশ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Order of merit list'),
(696, '16', 'position', 'Position', 'Posición', 'Position', 'অবস্থান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Position'),
(697, '16', 'average', 'Average', 'Promedio', 'Moyenne', 'গড়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Average'),
(698, '16', 'obtained_marks', 'Obtained Marks', 'Marcas obtenidas', 'Obtenu Marques', 'প্রাপ্ত মার্কস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Obtained Marks'),
(699, '16', 'top_obtained_mark', 'Top Obtained Mark', 'Mejor marca obtenida', 'Top obtenu la marque', 'শীর্ষ প্রাপ্ত মার্ক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Top Obtained Mark'),
(700, '16', 'student_terminal_report', 'Student Terminal Report', 'Informe de terminal de estudiante', 'Rapport de fin détude', 'ছাত্র টার্মিনাল রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Student Terminal Report'),
(701, '16', 'progress_card_report', 'Progress card report', 'Informe de progreso', 'Rapport de carte de progression', 'অগ্রগতি কার্ড রিপোর্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Progress card report'),
(702, '16', 'position_in_class', 'Position in Class', 'Posición en clase', 'Position en classe', 'ক্লাস অবস্থান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Position in Class'),
(703, '16', 'class_test', 'Class Test', 'Prueba de clase', 'Test de classe', 'ক্লাস টেস্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Class Test'),
(704, '16', 'remarks', 'Remarks', 'Observaciones', 'Remarques', 'মন্তব্য', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Remarks'),
(705, '16', 'user', 'User', 'Usuario', 'Utilisateur', 'ব্যবহারকারী', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'User'),
(706, '16', 'ip', 'IP', 'IP', 'IP', 'আইপি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'IP'),
(707, '16', 'login_time', 'Login Time', 'Hora de inicio de sesión', 'Heure de connexion', 'লগইন সময়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Login Time'),
(708, '16', 'user_agent', 'User Agent', 'Agente de usuario', 'Agent utilisateur', 'ব্যবহারিক দূত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'User Agent'),
(709, '17', 'system_settings', 'System Settings', 'Ajustes del sistema', 'Les paramètres du système', 'পদ্ধতি নির্ধারণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'System Settings'),
(710, '17', 'general_settings', 'General Settings', 'Configuración general', 'réglages généraux', 'সাধারণ সেটিংস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'General Settings'),
(711, '17', 'email_settings', 'Email Settings', 'Ajustes del correo electrónico', 'Paramètres de messagerie', 'ইমেল সেটিংস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Email Settings'),
(712, '17', 'payment_method_settings', 'Payment Method Settings', 'Configuración del método de pago', 'Méthode de paiement', 'পেমেন্ট পদ্ধতি সেটিংস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Payment Method Settings'),
(713, '17', 'role', 'Role', 'Papel', 'Rôle', 'ভূমিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Role'),
(714, '17', 'base_group', 'Base Group', 'Grupo base', 'Groupe de base', 'বেস গ্রুপ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Base Group'),
(715, '17', 'base_setup', 'Base Setup', 'Configuración de la base', 'Configuration de base', 'বেস সেটআপ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Base Setup'),
(716, '17', 'academic_year', 'Academic Year', 'Año académico', 'Année académique', 'শিক্ষাবর্ষ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Academic Year'),
(717, '17', 'session', 'Session', 'Sesión', 'Session', 'সেশন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Session'),
(718, '17', 'holiday', 'Holiday', 'Vacaciones', 'Vacances', 'ছুটির দিন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Holiday'),
(719, '17', 'sms_settings', 'Sms Settings', 'Configuración de SMS', 'Paramètres Sms', 'এসএমএস সেটিংস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Sms Settings'),
(720, '17', 'language_settings', 'Language Settings', 'Configuraciones de idioma', 'Paramètres de langue', 'ভাষা ব্যাবস্থা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Language Settings'),
(721, '17', 'backup_settings', 'Backup', 'Apoyo', 'Sauvegarde', 'ব্যাকআপ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Backup'),
(722, '17', 'select_language', 'Select Language', 'Seleccione el idioma', 'Choisir la langue', 'ভাষা নির্বাচন কর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Language'),
(723, '17', 'native', 'Native', 'Nativo', 'Originaire de', 'স্থানীয়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Native'),
(724, '17', 'universal', 'Universal', 'Universal', 'Universel', 'সার্বজনীন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Universal'),
(725, '17', 'make_default', 'Make Default', 'Hacer por defecto', 'Faire défaut', 'ডিফল্ট করা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Make Default'),
(726, '17', 'setup', 'Setup', 'Preparar', 'Installer', 'সেটআপ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Setup'),
(727, '17', 'change_logo', 'Change Logo', 'Cambiar Logo', 'Changer le logo', 'লোগো পরিবর্তন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Change Logo'),
(728, '17', 'change_fav', 'Change Favicon', 'Cambiar Favicon', 'Changer de favicon', 'পরিবর্তন ফেভিকন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Change Favicon'),
(729, '17', 'upload', 'Upload', 'Subir', 'Télécharger', 'আপলোড', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Upload'),
(730, '17', 'school_name', 'School Name', 'Nombre de la escuela', 'Nom de lécole', 'স্কুল নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'School Name'),
(731, '17', 'school_code', 'School Code', 'Código escolar', 'Code détablissement', 'স্কুল কোড', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'School Code'),
(732, '17', 'language', 'Language', 'Idioma', 'La langue', 'ভাষা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Language'),
(733, '17', 'date_format', 'Date Format', 'Formato de fecha', 'Format de date', 'তারিখ বিন্যাস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Date Format'),
(734, '17', 'currency', 'Currency', 'Moneda', 'Devise', 'মুদ্রা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Currency'),
(735, '17', 'symbol', 'Symbol', 'Símbolo', 'symbole', 'প্রতীক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Symbol'),
(736, '17', 'sand', 'Sand', 'Arena', 'Le sable', 'বালি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Sand'),
(737, '17', 'smtp', 'SMTP', 'SMTP', 'SMTP', 'SMTP এর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'SMTP'),
(738, '17', 'from_name', 'From Name', 'De Nombre', 'De nom', 'নাম থেকে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'From Name'),
(739, '17', 'from_email', 'From Email', 'Desde el e-mail', 'De lemail', 'ইমেইল থেকে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'From Email'),
(740, '17', 'server', 'Server', 'Servidor', 'Serveur', 'সার্ভার', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Server'),
(741, '17', 'port', 'Port', 'Puerto', 'Port', 'বন্দর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Port'),
(742, '17', 'security', 'Security', 'Seguridad', 'Sécurité', 'নিরাপত্তা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Security'),
(743, '17', 'select_a_payment_gateway', 'Select a Payment Gateway', 'Seleccione una pasarela de pago', 'Sélectionnez une passerelle de paiement', 'একটি পেমেন্ট গেটওয়ে নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select a Payment Gateway'),
(744, '17', 'checked', 'Checked', 'Comprobado', 'Vérifié', 'সংযত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Checked'),
(745, '17', 'paypal', 'Paypal', 'Paypal', 'Pay Pal', 'পেপ্যাল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Paypal'),
(746, '17', 'stripe', 'Stripe', 'Raya', 'Bande', 'ডোরা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Stripe'),
(747, '17', 'payUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'PayUMoney'),
(748, '17', 'signature', 'Signature', 'Firma', 'Signature', 'স্বাক্ষর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Signature'),
(749, '17', 'client_id', 'Client ID', 'Identificación del cliente', 'identité du client', 'ক্লায়েন্ট আইডি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Client ID'),
(750, '17', 'secret_id', 'Secret ID', 'ID secreta', 'ID secret', 'গোপন আইডি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Secret ID'),
(751, '17', 'stripe_api_secret_key', 'Stripe API Secret Key', 'Stripe API Secret Key', 'Clé secrète de lAPI de bande', 'স্ট্রিপ এপিআই গোপন কী', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Stripe API Secret Key'),
(752, '17', 'stripe_publisher_key', 'Stripe Publishable Key', 'Stripe Publishable Key', 'Raie Clé Publiable', 'দাগ প্রকাশযোগ্য কী', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Stripe Publishable Key'),
(753, '17', 'pay_u_money_key', 'PayU Money Key', 'PayU Money Key', 'Clé PayU Money', 'PayU টাকা কী', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'PayU Money Key'),
(754, '17', 'pay_u_money_salt', 'PayU Money Salt', 'PayU Money Salt', 'PayU Money Salt', 'PayU টাকা লবণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'PayU Money Salt'),
(755, '17', 'role_permission', 'Role Permission', 'Permiso de rol', 'Permission de rôle', 'ভূমিকা অনুমতি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Role Permission'),
(756, '17', 'assign_permission', 'Assign Permission', 'Asignar permiso', 'Attribuer une autorisation', 'অনুমতি বরাদ্দ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Assign Permission'),
(757, '17', 'label', 'Label', 'Etiqueta', 'Étiquette', 'লেবেল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Label'),
(758, '17', 'base', 'Base', 'Base', 'Base', 'ভিত্তি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Base'),
(759, '17', 'year_title', 'Year Title', 'Título del año', 'Titre de lannée', 'বছর শিরোনাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Year Title'),
(760, '17', 'starting_date', 'Starting Date', 'Fecha de inicio', 'Date de début', 'শুরু তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Starting Date'),
(761, '17', 'ending_date', 'Ending Date', 'Fecha de finalización', 'Fin', 'শেষ তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Ending Date'),
(762, '17', 'select_a_SMS_service', 'Select a SMS Service', 'Seleccione un servicio de SMS', 'Sélectionnez un service SMS', 'একটি এসএমএস সেবা নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select a SMS Service'),
(763, '17', 'clickatell', 'Clickatell', 'Clickatell', 'Clickatell', 'Clickatell', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Clickatell'),
(764, '17', 'settings', 'Settings', 'Ajustes', 'Réglages', 'সেটিংস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Settings'),
(765, '17', 'twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Twilio'),
(766, '17', 'api', 'API', 'API', 'API', 'এপিআই', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'API'),
(767, '17', 'sid', 'SID', 'SID', 'SID', 'জন্য SId', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'SID'),
(768, '17', 'authentication', 'Authentication', 'Autenticación', 'Authentification', 'প্রমাণীকরণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Authentication'),
(769, '17', 'token', 'Token', 'Simbólico', 'Jeton', 'টোকেন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Token'),
(770, '17', 'registered_phone_number', 'Registered Phone Number', 'Número de teléfono registrado', 'Numéro de téléphone enregistré', 'নিবন্ধিত ফোন নম্বর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Registered Phone Number'),
(771, '17', 'authentication_key_SId', 'Authentication Key SId', 'Clave de autenticación SId', 'Clé dauthentification SId', 'প্রমাণীকরণ কী এসআইডি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Authentication Key SId'),
(772, '17', 'sender', 'Sender', 'Remitente', 'Expéditeur', 'প্রেরকের', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Sender'),
(773, '17', 'country_code', 'Country Code', 'Código de país', 'Code postal', 'কান্ট্রি কোড', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Country Code'),
(774, '17', 'select_serial', 'Select serial', 'Seleccione serial', 'Sélectionnez série', 'সিরিয়াল নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select serial'),
(775, '17', 'day_list', 'Day list', 'Lista de días', 'Liste de jour', 'দিন তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Day list'),
(776, '17', 'serial', 'Serial', 'De serie', 'En série', 'ক্রমিক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Serial'),
(777, '17', 'upload_from_local_directory', 'Upload From Local Directory', 'Subir desde el directorio local', 'Télécharger depuis le répertoire local', 'স্থানীয় ডিরেক্টরি থেকে আপলোড করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Upload From Local Directory'),
(778, '17', 'file', 'File', 'Expediente', 'Fichier', 'ফাইল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'File'),
(779, '17', 'cron_secret_key', 'Cron Secret Key', 'Clave secreta de Cron', 'Cron Secret Key', 'ক্রন সিক্রেট কী', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Cron Secret Key'),
(780, '17', 'generate_key', 'Generate key', 'Generar clave', 'Générer une clé', 'কী জেনারেট করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Generate key'),
(781, '17', 'database_backup_list', 'Database Backup List', 'Lista de respaldo de la base de datos', 'Liste de sauvegarde de la base de données', 'ডাটাবেস ব্যাকআপ তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Database Backup List'),
(782, '17', 'backup', 'Backup', 'Apoyo', 'Sauvegarde', 'ব্যাকআপ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Backup'),
(783, '17', 'created_date_time', 'Created Date Time', 'Fecha de creación', 'Date de création heure', 'তৈরি তারিখ সময়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Created Date Time'),
(784, '17', 'backup_files', 'Backup Files', 'Archivos de respaldo', 'Fichiers de sauvegarde', 'ব্যাকআপ ফাইল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Backup Files'),
(785, '17', 'weekend', 'Weekend', 'Fin de semana', 'Weekend', 'সপ্তাহান্তিক কাল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Weekend'),
(786, '17', 'restore', 'Restore', 'Restaurar', 'Restaurer', 'প্রত্যর্পণ করা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Restore'),
(787, '17', 'default', 'Default', 'Defecto', 'Défaut', 'ডিফল্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Default'),
(788, '17', 'module', 'Module', 'Módulo', 'Module', 'মডিউল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Module'),
(789, '17', 'module_link', 'Module Link', 'Enlace del módulo', 'Lien de module', 'মডিউল লিঙ্ক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Module Link'),
(790, '17', 'permission', 'Permission', 'Permiso', 'Autorisation', 'অনুমতি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Permission'),
(791, '17', 'site_title', 'Site Title', 'Título del sitio', 'Titre du site', 'সাইট শিরোনাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Site Title'),
(792, '17', 'select_session', 'Select Session', 'Seleccionar sesion', 'Sélectionnez une session', 'সেশন নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Session'),
(793, '17', 'select_date_format', 'Select Date Format', 'Seleccione el formato de fecha', 'Sélectionnez le format de date', 'তারিখ ফরম্যাট নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Date Format'),
(794, '17', 'select_currency', 'Select Currency', 'Seleccione el tipo de moneda', 'Sélectionnez la devise', 'কারেন্সি নির্বাচন করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Select Currency'),
(795, '17', 'currency_symbol', 'Currency Symbol', 'Símbolo de moneda', 'Symbole de la monnaie', 'মুদ্রা চিহ্ন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Currency Symbol'),
(796, '17', 'school_address', 'School Address', 'Dirección de Escuela', 'Adresse de lécole', 'স্কুল ঠিকানা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'School Address'),
(797, '17', 'update_language', 'Update Language', 'Actualizar idioma', 'Mise à jour de la langue', 'ভাষা আপডেট করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Update Language'),
(798, '17', 'language_setup', 'Language Setup', 'Configuración de idioma', 'Configuration de la langue', 'ভাষা সেটআপ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Language Setup'),
(799, '18', 'front_end_settings', 'Front End Settings', 'Configuraciones frontales', 'Paramètres frontaux', 'ফ্রন্ট শেষ সেটিংস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Front End Settings'),
(800, '18', 'add_news', 'Add News', 'Añadir noticias', 'Ajouter des nouvelles', 'সংবাদ যোগ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Add News'),
(801, '18', 'news', 'News', 'Noticias', 'Nouvelles', 'খবর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'News'),
(802, '18', 'news_list', 'News List', 'Lista de noticias', 'Liste de nouvelles', 'সংবাদ তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'News List'),
(803, '18', 'image', 'Image', 'Imagen', 'Image', 'ভাবমূর্তি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Image'),
(804, '18', 'publication_date', 'Publication Date', 'Fecha de publicación', 'Date de publication', 'প্রকাশনার তারিখ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:55', 'Publication Date'),
(805, '18', 'add_testimonial', 'Add Testimonial', 'Añadir Testimonial', 'Ajouter un témoignage', 'প্রশংসাপত্র যোগ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Add Testimonial'),
(806, '18', 'testimonial', 'Testimonial', 'Testimonial', 'Témoignage', 'এজাহারনামা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Testimonial'),
(807, '18', 'institution_name', 'Institution Name', 'Nombre de la Institución', 'nom de linstitution', 'প্রতিষ্ঠানের নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Institution Name'),
(808, '18', 'location', 'Location', 'Ubicación', 'Emplacement', 'অবস্থান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Location'),
(809, '18', 'front_settings', 'Front Settings', 'Ajustes frontales', 'Paramètres avant', 'ফ্রন্ট সেটিংস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Front Settings'),
(810, '19', 'my_profile', 'My Profile', 'Mi perfil', 'Mon profil', 'আমার প্রোফাইল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'My Profile'),
(811, '19', 'fees', 'Fees', 'Matrícula', 'Honoraires', 'ফি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Fees'),
(812, '19', 'pay_fees', 'Pay Fees', 'Cuotas de pago', 'Payer les frais', 'ফি পরিশোধ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Pay Fees'),
(813, '19', 'download_center', 'Download Center', 'Centro de descargas', 'centre de téléchargement', 'ডাউনলোড কেন্দ্র', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Download Center'),
(814, '19', 'student_study_material', 'Study Materials', 'Materiales de estudio', 'Matériel détudes', 'স্টাডি সামগ্রী', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Study Materials'),
(815, '19', 'examinations', 'Examinations', 'Exámenes', 'Examens', 'পরীক্ষায়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Examinations'),
(816, '19', 'result', 'result', 'resultado', 'résultat', 'ফল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'result'),
(817, '19', 'active_exams', 'Active Exams', 'Exámenes activos', 'Examens actifs', 'সক্রিয় পরীক্ষা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Active Exams'),
(818, '19', 'book_issue', 'Book issued', 'Libro emitido', 'Livre publié', 'বই জারি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Book issued'),
(819, '19', 'my_children', 'My Children', 'Mis hijos', 'Mes enfants', 'আমার শিশু', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'My Children'),
(820, '19', 'exam_result', 'Exam Result', 'Resultado del examen', 'Résultat déxamen', 'পরীক্ষার ফলাফল', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Exam Result'),
(821, '19', 'teacher_list', 'Teacher list', 'Lista de profesores', 'Liste des enseignants', 'শিক্ষক তালিকা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Teacher list'),
(822, '19', 'inserted_message', 'Operation Successfully', 'Insertado con éxito', 'Inséré avec succès', 'সফলভাবে সন্নিবেশ করানো হয়েছে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Operation Successfully'),
(823, '19', 'updated_message', 'Updated Successfully', 'Actualizado exitosamente', 'Mis à jour avec succés', 'সফলভাবে আপডেট করা হয়েছে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Updated Successfully'),
(824, '19', 'deleted_message', 'Deleted Successfully', 'Borrado exitosamente', 'Supprimé avec succès', 'সফলভাবে মুছে ফেলা হয়েছে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Deleted Successfully'),
(825, '19', 'inactive_message', 'Inactivated Successfully', 'Inactivado con éxito', 'Inactivé avec succès', 'সফলভাবে নিষ্ক্রিয়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Inactivated Successfully'),
(826, '19', 'active_message', 'Activated Successfully', 'Activado con éxito', 'Activé avec succès', 'সফলভাবে সক্রিয়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Activated Successfully'),
(827, '19', 'backup_message', 'Backup Successfully', 'Copia de seguridad con éxito', 'Sauvegarde réussie', 'ব্যাকআপ সফলভাবে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Backup Successfully'),
(828, '19', 'restore_message', 'Restore Successfully', 'Restaurar con éxito', 'Restaurer avec succès', 'সফলভাবে পুনরুদ্ধার করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Restore Successfully'),
(829, '19', 'not_found_message', 'Ops! Data not Found', 'Ops! Datos no encontrados', 'Ops! Données non trouvées', 'অপস! তথ্য পাওয়া যায়নি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Ops! Data not Found'),
(830, '19', 'error_message', 'Ops! Something went wrong, please try again', 'Ops! Algo salió mal. Por favor, vuelva a intentarlo', 'Ops! Une erreur sest produite. Veuillez réessayer', 'অপস! কিছু ভুল হয়েছে আবার চেষ্টা করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Ops! Something went wrong, please try again'),
(831, '19', 'front_cms', 'Front cms', 'Frente cms', 'Cms avant', 'ফ্রন্ট সিএমএস', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Front cms'),
(832, '19', 'update_system', 'Update System', 'Sistema de actualización', 'Système de mise à jour', 'আপডেট সিস্টেম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Update System'),
(833, '19', 'System_Status', 'System Status', 'Estado del sistema', 'État du système', 'সিস্টেমের অবস্থা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'System Status'),
(834, '19', 'Upgrade', 'Upgrade', 'Mejorar', 'Améliorer', 'আপগ্রেড', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Upgrade'),
(835, '19', 'Version', 'Version', 'Versión', 'Version', 'সংস্করণ', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Version'),
(836, '19', 'Existing', 'Existing', 'Existente', 'Existant', 'বর্তমান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Existing'),
(837, '19', 'Available', 'Available', 'Disponible', 'Disponible', 'সহজলভ্য', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Available'),
(838, '19', 'Alert', 'Alert', 'Alerta', 'Alerte', 'সতর্ক', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Alert'),
(839, '19', 'New_Features', 'New Features', 'Nuevas características', 'Nouvelles fonctionnalités', 'নতুন বৈশিষ্ট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'New Features'),
(840, '19', 'copyright_text', 'Copyright Text', 'Texto de copyright', 'Texte de copyright', 'কপিরাইট টেক্সট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Copyright Text'),
(841, '20', 'point1', 'Your CSV data should be in the format download file. The first line of your CSV file should be the column headers as in the table example. Also make sure that your file is UTF-8 to avoid unnecessary encoding problems.', 'Sus datos CSV deben estar en el archivo de descarga de formato. La primera línea de su archivo CSV debe ser los encabezados de columna como en el ejemplo de la tabla. También asegúrese de que su archivo sea UTF-8 para evitar problemas de codificación innecesarios.', 'Vos données CSV doivent être dans le fichier de téléchargement au format. La première ligne de votre fichier CSV doit correspondre aux en-têtes de colonne, comme dans lexemple de tableau. Assurez-vous également que votre fichier est au format UTF-8 afin déviter des problèmes de codage inutiles.', 'আপনার CSV ডেটা ফরম্যাট ডাউনলোড ফাইলে থাকা উচিত। আপনার CSV ফাইলের প্রথম লাইন টেবিল উদাহরণের মতো কলাম শিরোনাম হওয়া উচিত। এছাড়াও আপনার ফাইলটি অপ্রয়োজনীয় এনকোডিং সমস্যাগুলি এড়ানোর জন্য UTF-8 নিশ্চিত করুন।', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Your CSV data should be in the format download file. The first line of your CSV file should be the column headers as in the table example. Also make sure that your file is UTF-8 to avoid unnecessary encoding problems.'),
(842, '20', 'point2', 'If the column you are trying to import is date make sure that is formatted in format Y-m-d (2018-06-06).', 'Si la columna que está intentando importar es fecha, asegúrese de que esté formateada en el formato Y-m-d (2018-06-06).', 'Si la colonne que vous tentez dimporter est datée, assurez-vous quelle est formatée au format Y-m-d (2018-06-06).', 'আপনি যে কলামটি আমদানি করার চেষ্টা করছেন তা তারিখটি Y-m-d (2018-06-06) বিন্যাসে ফর্ম্যাট করা হয়েছে তা নিশ্চিত করার তারিখ।', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'If the column you are trying to import is date make sure that is formatted in format Y-m-d (2018-06-06).'),
(843, '20', 'point3', 'Duplicate \"Roll Number\" (unique in section) rows will not be imported. Roll No used or not you can get from student report page search on class & section', 'Las filas duplicadas de \"Número de rollo\" (único en la sección) no se importarán. Rollo No se utiliza o no se puede obtener de la página de informe del alumno en clase y sección', 'Les lignes en double \"Numéro de rouleau\" (uniques dans la section) ne seront pas importées. Pas de recherche doccasion ou non, vous pouvez obtenir une recherche de page de rapport d’étudiant dans la classe et la section', 'সদৃশ \"রোল নম্বর\" (বিভাগে অনন্য) সারি আমদানি করা হবে না। রোল নম্বর ব্যবহার করা হয়নি অথবা আপনি শ্রেণী এবং বিভাগে ছাত্র প্রতিবেদন পৃষ্ঠা অনুসন্ধান থেকে পেতে পারেন না', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Duplicate \"Roll Number\" (unique in section) rows will not be imported. Roll No used or not you can get from student report page search on class & section'),
(844, '20', 'point4', 'Duplicate \"Guardian email & Guardian Phone\" rows will not be imported. Guardian email & Guardian Phone used or not you can get from student report page search on class & section', 'No se importarán filas duplicadas de \"Guardian email & Guardian Phone\". El correo electrónico de Guardian & Guardian Phone utilizado o no se puede obtener de la página de informe del alumno en la clase y sección', 'Les lignes dupliquées \"Email et téléphone Guardian\" ne seront pas importées. Guardian email & Guardian Phone utilisé ou non, vous pouvez obtenir une recherche dans la page de rapport de létudiant sur la classe et la section', 'সদৃশ গার্ডিয়ান ইমেল ও গার্ডিয়ান ফোন সারি আমদানি করা হবে না। গার্ডিয়ান ইমেল এবং গার্ডিয়ান ফোন ব্যবহার করা হয়েছে অথবা আপনি বিভাগ এবং বিভাগে ছাত্র প্রতিবেদন পৃষ্ঠা অনুসন্ধান থেকে পেতে পারেন না', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Duplicate \"Guardian email & Guardian Phone\" rows will not be imported. Guardian email & Guardian Phone used or not you can get from student report page search on class & section'),
(845, '20', 'point5', 'For student Session use Id', 'Para el estudiante Sesión use Id', 'Pour les étudiants \"Session\", utilisez lidentifiant', 'ছাত্র \"সেশন\" জন্য আইডি ব্যবহার করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'For student Session use Id'),
(846, '20', 'point6', 'For student \"Gender\" use ID', 'Para el estudiante \"Género\" usar ID', 'Pour létudiant \"Sexe\", utilisez lidentifiant', 'শিক্ষার্থী জন্য \"লিঙ্গ\" আইডি ব্যবহার করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'For student \"Gender\" use ID'),
(847, '20', 'point7', 'For student \"Blood Group\" use Id', 'Para el estudiante \"Grupo de sangre\" use ID', 'Pour les étudiants Groupe sanguin, utilisez lId', 'ছাত্রদের জন্য রক্ত গ্রুপ আইডি ব্যবহার করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'For student \"Blood Group\" use Id'),
(848, '20', 'point8', 'For student \"Religion\" use ID', 'Para el estudiante \"Religión\" usar identificación', 'Pour les étudiants Religion, utilisez votre identifiant', 'ছাত্রের জন্য ধর্ম আইডি ব্যবহার করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'For student \"Religion\" use ID'),
(849, '20', 'point9', 'For student \"Guardian Relation\" use capital O for Other, F for Father M for Mother.', 'Para el estudiante \"Guardian Relation\" use mayúscula O para Otro, F para el Padre M para la Madre.', 'Pour les étudiants \"Relation Gardien\", utilisez la majuscule O pour Autre, F pour Père M pour Mère.', 'ছাত্রের জন্য \"গার্ডিয়ান রিলেশন\" অন্যের জন্য মূলধন ও ব্যবহার করুন, মায়ের জন্য ফাদার এম এর জন্য F।', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'For student \"Guardian Relation\" use capital O for Other, F for Father M for Mother.'),
(850, '20', 'save_bulk_students', 'save bulk students', 'guardar estudiantes a granel', 'sauver des étudiants en vrac', 'বাল্ক ছাত্র সংরক্ষণ করুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'save bulk students'),
(851, '20', 'bank_account_number', 'Bank Account Number', 'Número de cuenta bancaria', 'Numéro de compte bancaire', 'ব্যাংক একাউন্ট নম্বর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Bank Account Number'),
(852, '20', 'IFSC_Code', 'IFSC Code', 'Código IFSC', 'Code IFSC', 'আইএফএসসি কোড', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'IFSC Code'),
(853, '20', 'payment_id', 'Payment Id', 'ID de pago', 'ID de paiement', 'পেমেন্ট আইডি', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Payment Id'),
(854, '20', 'passing_marks', 'Passing Marks', 'Marcas de paso', 'Marques de passage', 'পাসিং চিহ্ন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Passing Marks'),
(855, '20', 'website', 'Website', 'Sitio web', 'Site Internet', 'ওয়েবসাইট', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Website'),
(856, '20', 'you_have', 'You have', 'Tienes', 'Tu as', 'তোমার আছে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'You have'),
(857, '20', 'new', 'new', 'nuevo', 'Nouveau', 'নতুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'new'),
(858, '20', 'notification', 'notification', 'notificación', 'notification', 'প্রজ্ঞাপন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'notification'),
(859, '20', 'mark_all_as_read', 'Mark All As Read', 'Marcar todo como leido', 'Tout marquer comme lu', 'সবগুলো পঠিত বলে সনাক্ত কর', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Mark All As Read'),
(860, '20', 'view_profile', 'view profile', 'ver perfil', 'Voir le profil', 'প্রোফাইল দেখুন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'view profile'),
(861, '20', 'completed', 'Completed', 'Terminado', 'Terminé', 'সম্পন্ন', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Completed'),
(862, '20', 'to_do_title', 'To Do Title', 'Para hacer titulo', 'Titre à faire', 'শিরোনাম করতে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'To Do Title'),
(863, '20', 'Designation_of_Signature_person', 'Designation of Signature person', 'Designación de la persona de la firma', 'Désignation de la personne signataire', 'স্বাক্ষর ব্যক্তির নাম', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Designation of Signature person'),
(864, '20', 'student_wise', 'Student Wise', 'Estudiante sabio', 'Étudiant sage', 'ছাত্র বুদ্ধিমান', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Student Wise'),
(865, '20', 'print', 'print', 'impresión', 'impression', 'ছাপা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'print'),
(866, '20', 'discount_of', 'Discount of', 'Descuento de', 'Remise de', 'ছাড়', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Discount of'),
(867, '20', 'applied', 'Applied', 'Aplicado', 'Appliqué', 'ফলিত', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Applied'),
(868, '20', 'fees_assign', 'Fees Assign', 'Asignar cuotas', 'Affectation des frais', 'ফি বরাদ্দ করা', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Fees Assign'),
(869, '20', 'background', 'Background', 'Background', 'Background', 'Background', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Background'),
(870, '20', 'style', 'Style', 'Style', 'Style', 'Style', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Style'),
(871, '20', 'color', 'Color', 'Color', 'Color', 'Color', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Color'),
(872, '20', 'select_position', 'Select Position', 'Select Position', 'Select Position', 'Select Position', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Select Position'),
(873, '20', 'background_settings', 'Background Settings', 'Background Settings', 'Background Settings', 'Background Settings', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Background Settings'),
(874, '20', 'background_type', 'Background Type', 'Background Type', 'Background Type', 'Background Type', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Background Type'),
(875, '20', 'course_list', 'Course List', 'Course List', 'Course List', 'Course List', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Course List'),
(876, '20', 'about_us', 'About Us', 'About Us', 'About Us', 'About Us', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'About Us'),
(877, '20', 'custom_links', 'Custom Links', 'Custom Links', 'Custom Links', 'Custom Links', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Custom Links'),
(878, '20', 'operation_success_message', 'Operation Successful', 'Operation Successful', 'Operation Successful', 'Operation Successful', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Operation Successful'),
(879, '20', 'home_page', 'Home Page', 'Home Page', 'Home Page', 'Home Page', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Home Page'),
(880, '20', 'payment_id', 'Payment ID', 'Payment ID', 'Payment ID', 'Payment ID', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Payment ID'),
(881, '20', 'payment_ID', 'Payment ID', 'Payment ID', 'Payment ID', 'Payment ID', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Payment ID'),
(882, '20', 'contact', 'Contact', 'Contact', 'Contact', 'Contact', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Contact'),
(883, '20', 'page', 'Page', 'Page', 'Page', 'Page', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Page'),
(884, '20', 'SampleDataEmpty', 'Sample Data', 'Sample Data', 'Sample Data', 'Sample Data', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Sample Data'),
(885, '20', 'authentication_key_SID', 'Authentication KEY SID', 'Authentication KEY SID', 'Authentication KEY SID', 'Authentication KEY SID', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Authentication KEY SID'),
(886, '20', 'validation_data', 'Data Validation', 'Data Validation', 'Data Validation', 'Data Validation', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Data Validation'),
(887, '6', 'pending_leave_request', 'Pending Leave', 'Pending Leave', 'Pending Leave', 'Pending Leave', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Pending Leave'),
(888, '3', 'available_for', 'Available For', 'Disponible para', 'Disponible pour', 'সহজলভ্যের জন্যে', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Available For'),
(889, '20', 'login_permission', 'Login Permission', 'Login Permission', 'Login Permission', 'Login Permission', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Login Permission'),
(890, '20', 'profile', 'Profile', 'Profile', 'Profile', 'Profile', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Profile'),
(891, '20', 'primary_color', 'Primary Color', 'Primary Color', 'Primary Color', 'Primary Color', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Primary Color'),
(892, '20', 'primary_color2', 'Primary Color 2', 'Primary Color 2', 'Primary Color 2', 'Primary Color2', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Primary Color 2'),
(893, '20', 'primary_color3', 'Primary Color 3', 'Primary Color 3', 'Primary Color 3', 'Primary Color 3', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Primary Color 3'),
(894, '20', 'title_color', 'Title Color', 'Title Color', 'Title Color', 'Title Color', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Title Color'),
(895, '20', 'text_color', 'Text Color', 'Text Color', 'Text Color', 'Text Color', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Text Color'),
(896, '20', 'sidebar_bg', 'Sidebar', 'Sidebar', 'Sidebar', 'Sidebar', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Sidebar'),
(897, '20', 'theme', 'Theme', 'Theme', 'Theme', 'Theme', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Theme'),
(898, '1', 'class_section', 'Class (Sec.)', 'Clase (Sec.)', 'Classe (Sec.)', 'ক্লাস (section)', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Class (Sec.)'),
(899, '1', 'are_you_sure_to_remove', 'Are you sure to remove this item?', '¿Estás seguro de eliminar este elemento?', 'Êtes-vous sûr de vouloir supprimer cet article?', 'আপনি এই আইটেম মুছে ফেলার জন্য নিশ্চিত?', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'Are you sure to remove this item?'),
(900, '1', 'time_zone', 'time zone', 'time zone', 'time zone', 'time zone', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'time zone'),
(901, '1', 'mail', 'mail', 'mail', 'mail', 'mail', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'mail'),
(902, '1', 'host', 'host', 'host', 'host', 'host', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'host'),
(903, '1', 'host', 'host', 'host', 'host', 'host', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'host');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `es`, `fr`, `bn`, `active_status`, `created_at`, `updated_at`, `ur`) VALUES
(904, '1', 'encryption', 'encryption', 'encryption', 'encryption', 'encryption', 1, '2019-11-13 00:22:43', '2019-11-22 00:03:56', 'encryption');

-- --------------------------------------------------------

--
-- Table structure for table `sm_leave_defines`
--

CREATE TABLE `sm_leave_defines` (
  `id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_leave_defines`
--

INSERT INTO `sm_leave_defines` (`id`, `days`, `active_status`, `created_at`, `updated_at`, `role_id`, `type_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 5, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 4, 3, 1, 1, 1),
(2, 10, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 5, 1, 1, 1, 1),
(3, 8, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 6, 1, 1, 1, 1),
(4, 9, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 7, 4, 1, 1, 1),
(5, 4, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 8, 3, 1, 1, 1),
(6, 1, 1, '2019-11-13 00:23:43', '2019-11-13 00:23:43', 9, 5, 1, 1, 1),
(7, 2, 1, '2020-01-17 23:31:55', '2020-01-17 23:31:55', 5, 8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_leave_requests`
--

CREATE TABLE `sm_leave_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `apply_date` date DEFAULT NULL,
  `leave_from` date DEFAULT NULL,
  `leave_to` date DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'P for Pending, A for Approve, R for reject',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `leave_define_id` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_leave_requests`
--

INSERT INTO `sm_leave_requests` (`id`, `apply_date`, `leave_from`, `leave_to`, `reason`, `note`, `file`, `approve_status`, `active_status`, `created_at`, `updated_at`, `leave_define_id`, `staff_id`, `role_id`, `type_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2020-01-08', '2020-01-08', '2020-01-10', 'sick', NULL, 'public/uploads/leave_request/23ad9a59089c7be63f24237e4020a9ad.jpg', 'A', 1, '2020-01-08 23:04:33', '2020-01-08 23:18:10', 1, 527, 4, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_leave_types`
--

CREATE TABLE `sm_leave_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_days` int(10) UNSIGNED DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_leave_types`
--

INSERT INTO `sm_leave_types` (`id`, `type`, `total_days`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Casual Leave', 10, 1, NULL, NULL, 1, 1, 1),
(2, 'Sick Leave', 14, 1, NULL, NULL, 1, 1, 1),
(3, 'Annual/Vacation Leave', 10, 1, NULL, NULL, 1, 1, 1),
(4, 'Earned Leave', 10, 1, NULL, NULL, 1, 1, 1),
(5, 'Public holidays', 20, 1, NULL, NULL, 1, 1, 1),
(6, 'Maternity/Paternity', 7, 1, NULL, NULL, 1, 1, 1),
(7, 'Administrative leave', 5, 1, NULL, NULL, 1, 1, 1),
(8, 'Family Event', NULL, 1, '2020-01-17 23:30:32', '2020-01-17 23:30:32', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_library_members`
--

CREATE TABLE `sm_library_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_ud_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `member_type` int(10) UNSIGNED DEFAULT NULL,
  `student_staff_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_library_members`
--

INSERT INTO `sm_library_members` (`id`, `member_ud_id`, `active_status`, `created_at`, `updated_at`, `member_type`, `student_staff_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '123', 1, '2020-01-08 22:40:19', '2020-01-08 22:40:19', 2, 525, 527, 1, 1),
(2, '456', 1, '2020-01-17 23:06:39', '2020-01-17 23:06:39', 4, 538, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_grades`
--

CREATE TABLE `sm_marks_grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` double(8,2) DEFAULT NULL,
  `up` double(8,2) DEFAULT NULL,
  `percent_from` int(11) DEFAULT NULL,
  `percent_upto` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_marks_grades`
--

INSERT INTO `sm_marks_grades` (`id`, `grade_name`, `gpa`, `from`, `up`, `percent_from`, `percent_upto`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'A+', '5.00', 5.00, 5.99, 80, 100, 'Outstanding !', 1, '2019-11-13 00:22:24', '2019-11-13 00:22:24', 1, 1, 1),
(2, 'A', '4.00', 4.00, 4.99, 70, 79, 'Very Good !', 1, '2019-11-13 00:22:24', '2019-11-13 00:22:24', 1, 1, 1),
(3, 'A-', '3.00', 3.50, 4.00, 60, 69, 'Good !', 1, '2019-11-13 00:22:24', '2019-11-13 00:22:24', 1, 1, 1),
(4, 'B', '3.00', 3.00, 3.50, 50, 59, 'Outstanding !', 1, '2019-11-13 00:22:24', '2019-11-13 00:22:24', 1, 1, 1),
(5, 'C', '2.00', 2.00, 2.99, 40, 49, 'Bad !', 1, '2019-11-13 00:22:24', '2019-11-13 00:22:24', 1, 1, 1),
(6, 'D', '1.00', 1.00, 1.99, 33, 39, 'Very Bad !', 1, '2019-11-13 00:22:24', '2019-11-13 00:22:24', 1, 1, 1),
(7, 'F', '0.00', 0.00, 0.99, 0, 32, 'Failed !', 1, '2019-11-13 00:22:24', '2019-11-13 00:22:24', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_registers`
--

CREATE TABLE `sm_marks_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_register_children`
--

CREATE TABLE `sm_marks_register_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `abs` int(11) NOT NULL DEFAULT '0' COMMENT '1 for absent, 0 for present',
  `gpa_point` double(8,2) DEFAULT NULL,
  `gpa_grade` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `marks_register_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_send_sms`
--

CREATE TABLE `sm_marks_send_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `sms_send_status` tinyint(4) NOT NULL DEFAULT '1',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_mark_stores`
--

CREATE TABLE `sm_mark_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_roll_no` int(11) NOT NULL DEFAULT '1',
  `student_addmission_no` int(11) NOT NULL DEFAULT '1',
  `total_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `is_absent` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_term_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_setup_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_mark_stores`
--

INSERT INTO `sm_mark_stores` (`id`, `student_roll_no`, `student_addmission_no`, `total_marks`, `is_absent`, `created_at`, `updated_at`, `subject_id`, `exam_term_id`, `exam_setup_id`, `student_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, 1, 10.00, 0, '2019-12-26 17:42:30', '2019-12-26 17:42:30', 2, 1, 2, 3, 1, 1, 1, 1, 1),
(2, 1, 1, 10.00, 0, '2019-12-26 17:42:30', '2019-12-26 17:42:30', 2, 1, 76, 3, 1, 1, 1, 1, 1),
(3, 1, 1, 90.00, 0, '2019-12-26 17:42:30', '2019-12-26 17:44:43', 2, 1, 2, 4, 1, 1, 1, 1, 1),
(4, 1, 1, 90.00, 0, '2019-12-26 17:42:30', '2019-12-26 17:44:43', 2, 1, 76, 4, 1, 1, 1, 1, 1),
(5, 1, 1, 10.00, 1, '2019-12-26 17:45:32', '2019-12-26 17:45:32', 3, 1, 3, 3, 1, 1, 1, 1, 1),
(6, 1, 1, 10.00, 1, '2019-12-26 17:45:32', '2019-12-26 17:45:32', 3, 1, 3, 4, 1, 1, 1, 1, 1),
(7, 1, 1, 89.00, 0, '2020-01-17 22:15:16', '2020-01-17 22:15:16', 7, 1, 96, 6, 1, 1, 1, 1, 1),
(8, 1, 1, 79.00, 0, '2020-01-17 22:15:16', '2020-01-17 22:15:16', 7, 1, 96, 11, 1, 1, 1, 1, 1),
(9, 1, 1, 94.00, 0, '2020-01-17 22:15:16', '2020-01-17 22:15:16', 7, 1, 96, 12, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_modules`
--

CREATE TABLE `sm_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_modules`
--

INSERT INTO `sm_modules` (`id`, `name`, `active_status`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Dashboard', 1, 0, NULL, NULL, 1, 1, 1),
(2, 'Admin Section', 1, 1, NULL, NULL, 1, 1, 1),
(3, 'Student Information', 1, 2, NULL, NULL, 1, 1, 1),
(4, 'Teacher', 1, 3, NULL, NULL, 1, 1, 1),
(5, 'Fees Collection', 1, 4, NULL, NULL, 1, 1, 1),
(6, 'Accounts', 1, 5, NULL, NULL, 1, 1, 1),
(7, 'Human resource', 1, 6, NULL, NULL, 1, 1, 1),
(8, 'Leave Application', 1, 7, NULL, NULL, 1, 1, 1),
(9, 'Examination', 1, 8, NULL, NULL, 1, 1, 1),
(10, 'Academics', 1, 9, NULL, NULL, 1, 1, 1),
(11, 'HomeWork', 1, 10, NULL, NULL, 1, 1, 1),
(12, 'Communicate', 1, 11, NULL, NULL, 1, 1, 1),
(13, 'Library', 1, 12, NULL, NULL, 1, 1, 1),
(14, 'Inventory', 1, 13, NULL, NULL, 1, 1, 1),
(15, 'Transport', 1, 14, NULL, NULL, 1, 1, 1),
(16, 'Dormitory', 1, 15, NULL, NULL, 1, 1, 1),
(17, 'Reports', 1, 16, NULL, NULL, 1, 1, 1),
(18, 'System Settings', 1, 17, NULL, NULL, 1, 1, 1),
(19, 'Common', 1, 18, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_module_links`
--

CREATE TABLE `sm_module_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_module_links`
--

INSERT INTO `sm_module_links` (`id`, `module_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(2, 1, '➡ Number of Student', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(3, 1, '➡ Number of Teacher', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(4, 1, '➡ Number of Parents', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(5, 1, '➡ Number of Staff', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(6, 1, '➡ Current Month Income and Expense Chart', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(7, 1, '➡ Current Year Income and Expense Chart', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(8, 1, '➡ Notice Board', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(9, 1, '➡ Calendar Section', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(10, 1, '➡ To Do list', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(11, 2, 'Admin Section Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(12, 2, 'Admission Query menu', 'admission-query', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(13, 2, '➡ Create Query Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(14, 2, '➡ Create Query Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(15, 2, '➡ Create Query Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(16, 2, 'Visitor Book Menu', 'visitor', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(17, 2, '➡ Visitor  Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(18, 2, '➡ Visitor Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(19, 2, '➡ Visitor Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(20, 2, '➡ Visitor Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(21, 2, 'Complaint Menu', 'complaint', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(22, 2, '➡ Complaint Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(23, 2, '➡ Complaint Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(24, 2, '➡ Complaint Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(25, 2, '➡ Complaint Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(26, 2, '➡ Complaint View', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(27, 2, 'Postal Receive Menu', 'postal-receive', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(28, 2, '➡ Postal Receive Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(29, 2, '➡ Postal Receive Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(30, 2, '➡ Postal Receive Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(31, 2, '➡ Postal Receive Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(32, 2, 'Postal Dispatch Menu', 'postal-dispatch', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(33, 2, '➡ Postal Dispatch Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(34, 2, '➡ Postal Dispatch Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(35, 2, '➡ Postal Dispatch Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(36, 2, 'Phone Call Log Menu', 'phone-call', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(37, 2, '➡ Phone Call Log Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(38, 2, '➡ Phone Call Log Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(39, 2, '➡ Phone Call Log Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(40, 2, '➡ Phone Call Log Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(41, 2, 'Admin Setup Menu', 'setup-admin', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(42, 2, '➡ Admin Setup Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(43, 2, '➡ Admin Setup Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(44, 2, '➡ Admin Setup Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(45, 2, 'Student ID Menu', 'student-id-card', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(46, 2, '➡ Student ID Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(47, 2, '➡ Student ID Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(48, 2, '➡ Student ID Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(49, 2, 'Student Certificate Menu', 'student-certificate', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(50, 2, '➡ Student Certificate Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(51, 2, '➡ Student Certificate Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(52, 2, '➡ Student Certificate Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(53, 2, 'Generate Certificate Menu', 'generate-certificate', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(54, 2, '➡ Generate Certificate Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(55, 2, '➡ Generate Certificate Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(56, 2, '➡ Generate Certificate Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(57, 2, 'Generate ID Card Menu', 'generate-id-card', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(58, 2, '➡ Generate ID Card Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(59, 2, '➡ Generate ID Card Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(60, 2, '➡ Generate ID Card Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(61, 3, 'Student Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(62, 3, 'Student Admission Menu', 'student-admission', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(63, 3, '➡ Import Student', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(64, 3, 'Student List Menu', 'student-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(65, 3, '➡ Student List Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(66, 3, '➡ Student List Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(67, 3, '➡ Student List Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(68, 3, 'Student Attendance Menu', 'student-attendance', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(69, 3, '➡ Student Attendance Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(70, 3, 'Student Attendance Report Menu', 'student-attendance-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(71, 3, 'Student Category Menu', 'student-category', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(72, 3, '➡ Student Category Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(73, 3, '➡ Student Category Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(74, 3, '➡ Student Category Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(75, 3, '➡ Student Category Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(76, 3, 'Student Group Menu', 'student-group', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(77, 3, '➡ Student Group Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(79, 3, '➡ Student Group Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(80, 3, '➡ Student Group Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(81, 3, 'Student Promote Menu', 'student-promote', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(82, 3, '➡ Student Promote Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(83, 3, 'Disabled Students Menu', 'disabled-student', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(84, 3, '➡ Disabled Students Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(85, 3, '➡ Disabled Students Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(86, 3, '➡ Disabled Students Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(87, 4, 'Teacher Section Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(88, 4, 'Upload Content Menu', 'upload-content', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(89, 4, '➡ Create Content Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(90, 4, '➡ Content Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(91, 4, '➡ Content Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(92, 4, 'Assignment Menu', 'assignment-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(93, 4, '➡ Create Assignment Add', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(94, 4, '➡ Assignment Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(95, 4, '➡ Assignment Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(96, 4, 'Study Material Menu', 'study-metarial-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(97, 4, '➡ Create Study Material Add', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(98, 4, '➡ Study Material Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(99, 4, '➡ Study Material Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(100, 4, 'Syllabus Menu', 'syllabus-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(101, 4, '➡ Create Study Syllabus Add', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(102, 4, '➡ Study Syllabus Edit', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(103, 4, '➡ Study Syllabus Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(104, 4, '➡ Study Syllabus Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(105, 4, 'Other Downloads Menu', 'other-download-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(106, 4, '➡ Other Downloads Download', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(107, 4, '➡ Other Downloads Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(108, 5, 'Fees Collection Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(109, 5, 'Collect Fees Menu', 'collect-fees', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(110, 5, '➡ Create Collect Fees', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(111, 5, '➡ Collect Fees Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(112, 5, '➡ Collect Fees Print', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(113, 5, 'Search Fees Payment Menu', 'search-fees-payment', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(114, 5, '➡ Create Search Fees Payment Add', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(115, 5, '➡ Search Fees Payment View', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(116, 5, 'Search Fees Due Menu', 'search-fees-due', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(117, 5, '➡ Search Fees Due View', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(118, 5, 'Fees Master Menu', 'fees-master', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(119, 5, '➡ Create Fees Master Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(120, 5, '➡ Fees Master Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(121, 5, '➡ Fees Master Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(122, 5, '➡ Fees Master Assign', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(123, 5, 'Fees Group Menu', 'fees-group', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(124, 5, '➡ Create Fees Group Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(125, 5, '➡ Fees Group Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(126, 5, '➡ Fees Group Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(127, 5, 'Fees Type Menu', 'fees-type', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(128, 5, '➡ Create Fees Type Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(129, 5, '➡ Fees Type Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(130, 5, '➡ Fees Type Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(131, 5, 'Fees Discount Menu', 'fees-discount', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(132, 5, '➡ Create Fees Discount Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(133, 5, '➡ Fees Discount Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(134, 5, '➡ Fees Discount Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(135, 5, '➡ Fees Discount Assign', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(136, 5, 'Fees Carry Forward Menu', 'fees-forward', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(137, 6, 'Accounts Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(138, 6, 'Profit Menu', 'profit', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(139, 6, 'Income Menu', 'add-income', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(140, 6, '➡ Create Income Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(141, 6, '➡ Income Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(142, 6, '➡ Income Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(143, 6, 'Expense Menu', 'add-expense', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(144, 6, '➡ Create Expense Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(145, 6, '➡ Expense Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(146, 6, '➡ Expense Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(147, 6, 'Search Menu', 'search-account', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(148, 6, 'Chart of Account Menu', 'chart-of-account', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(149, 6, '➡ Create Chart of Account Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(150, 6, '➡ Chart of Account Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(151, 6, '➡ Chart of Account Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(152, 6, 'Payment method Menu', 'payment-method', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(153, 6, '➡ Create Payment method Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(154, 6, '➡ Payment method Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(155, 6, '➡ Payment method Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(156, 6, 'Bank Account Menu', 'bank-account', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(157, 6, '➡ Create Bank Account Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(158, 6, '➡ Bank Account Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(159, 6, '➡ Bank Account Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(160, 7, 'Human Resource Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(161, 7, 'Staff Directory Menu', 'staff-directory', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(162, 7, '➡ Staff Directory Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(163, 7, '➡ Staff Directory Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(164, 7, '➡ Staff Directory Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(165, 7, 'Staff Attendance Menu', 'staff-attendance', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(166, 7, '➡ Staff Attendance Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(167, 7, '➡ Staff Attendance Edit', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(168, 7, '➡ Staff Attendance Delete', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(169, 7, 'Staff Attendance Report Menu', 'staff-attendance-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(170, 7, 'Payroll Menu', 'payroll', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(171, 7, '➡ Payroll Edit', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(172, 7, '➡ Payroll Delete', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(173, 7, '➡ Payroll Search', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(174, 7, '➡ Generate Payroll', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(175, 7, '➡ Payroll Create', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(176, 7, '➡ Payroll Proceed To Pay', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(177, 7, '➡ View Payslip', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(178, 7, 'Payroll Report Menu', 'payroll-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(179, 7, '➡ Payroll Report Search', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(180, 7, 'Designations Menu', 'designation', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(181, 7, '➡ Designations Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(182, 7, '➡ Designations Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(183, 7, '➡ Designations Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(184, 7, 'Departments Menu', 'department', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(185, 7, '➡ Departments Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(186, 7, '➡ Departments Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(187, 7, '➡ Departments Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(188, 8, 'Leave Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(189, 8, 'Approve Leave Menu', 'approve-leave', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(190, 8, '➡ Approve Leave Add', '', 0, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(191, 8, '➡ Approve Leave Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(192, 8, '➡ Approve Leave Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(193, 8, 'Apply Leave Menu', 'apply-leave', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(194, 8, '➡ Apply Leave View', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(195, 8, '➡ Apply Leave Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(196, 8, 'Pending Leave Menu', 'pending-leave', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(197, 8, '➡ Pending Leave View', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(198, 8, '➡ Pending Leave Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(199, 8, 'Leave Define Menu', 'leave-define', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(200, 8, '➡ Leave Define Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(201, 8, '➡ Leave Define Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(202, 8, '➡ Leave Define Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(203, 8, 'Leave Type Menu', 'leave-type', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(204, 8, '➡ Leave Type Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(205, 8, '➡ Leave Type Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(206, 8, '➡ Leave Type Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(207, 9, 'Examination Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(208, 9, 'Add Exam Type Menu', 'exam-type', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(209, 9, '➡ Add Exam Type Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(210, 9, '➡ Add Exam Type Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(211, 9, '➡ Add Exam Type Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(214, 9, 'Exam Setup Menu', 'exam', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(215, 9, '➡ Exam Setup Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(216, 9, '➡ Exam Setup Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(217, 9, 'Exam Schedule Menu', 'exam-schedule', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(218, 9, '➡ Exam Schedule Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(219, 9, '➡ Exam Schedule Create', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(220, 9, 'Exam Attendance Menu', 'exam-attendance', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(221, 9, '➡ Exam Attendance Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(222, 9, 'Marks Register Menu', 'marks-register', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(223, 9, '➡ Marks Register Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(224, 9, '➡ Marks Register Create', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(225, 9, 'Marks Grade Menu', 'marks-grade', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(226, 9, '➡ Marks Grade Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(227, 9, '➡ Marks Grade Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(228, 9, '➡ Marks Grade Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(229, 9, 'Send Marks By SMS Menu', 'send-marks-by-sms', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(230, 9, 'Question Group Menu', 'question-group', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(231, 9, '➡ Question Group Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(232, 9, '➡ Question Group Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(233, 9, '➡ Question Group Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(234, 9, 'Question Bank Menu', 'question-bank', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(235, 9, '➡ Question Bank Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(236, 9, '➡ Question Bank Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(237, 9, '➡ Question Bank Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(238, 9, 'Online Exam Menu', 'online-exam', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(239, 9, '➡ Online Exam Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(240, 9, '➡ Online Exam Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(241, 9, '➡ Online Exam Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(242, 9, '➡ Online Exam Manage Question', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(243, 9, '➡ Online Exam Marks Register', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(244, 9, '➡ Online Exam Result', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(245, 10, 'Academics Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(246, 10, 'Class Routine Menu', 'class-routine-new', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(247, 10, '➡ Class Routine Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(248, 10, '➡ Class Routine Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(249, 10, '➡ Class Routine Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(250, 10, 'Assign Subject Menu', 'assign-subject', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(251, 10, '➡ Assign Subject Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(252, 10, '➡ Assign Subject Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(253, 10, 'Assign Class Teacher Menu', 'assign-class-teacher', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(254, 10, '➡ Assign Class Teacher Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(255, 10, '➡ Assign Class Teacher Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(256, 10, '➡ Assign Class Teacher Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(257, 10, 'Subjects Menu', 'subject', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(258, 10, '➡ Subjects Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(259, 10, '➡ Subjects Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(260, 10, '➡ Subjects Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(261, 10, 'Class Menu', 'class', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(262, 10, '➡ Class Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(263, 10, '➡ Class Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(264, 10, '➡ Class Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(265, 10, 'Section Menu', 'section', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(266, 10, '➡ Section Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(267, 10, '➡ Section Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(268, 10, '➡ Section Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(269, 10, 'Class Room Menu', 'class-room', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(270, 10, '➡ Class Room Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(271, 10, '➡ Class Room Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(272, 10, '➡ Class Room Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(273, 10, 'CL/EX Time Setup Menu', 'class-time', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(274, 10, '➡ CL/EX Time Setup Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(275, 10, '➡ CL/EX Time Setup Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(276, 10, '➡ CL/EX Time Setup Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(277, 11, 'Homework Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(278, 11, 'Add Homework Menu', 'add-homeworks', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(279, 11, '➡ Create Homework Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(280, 11, 'Homework List Menu', 'homework-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(281, 11, '➡ Homework List Evaluation', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(282, 11, '➡ Homework List Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(283, 11, '➡ Homework List Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(284, 11, 'Homework Evaluation Report Menu', 'evaluation-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(285, 11, '➡ Homework Evaluation Report View', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(286, 12, 'Communicate Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(287, 12, 'Notice Board Menu', 'notice-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(288, 12, '➡ Create Notice Board Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(289, 12, '➡ Create Notice Board Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(290, 12, '➡ Create Notice Board Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(291, 12, 'Send Email / SMS  Menu', 'send-email-sms-view', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(292, 12, '➡ Send Email / SMS  Send', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(293, 12, 'Email / SMS Log Menu', 'email-sms-log', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(294, 12, 'Event Menu', 'event', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(295, 12, '➡ Event Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(296, 12, '➡ Event Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(297, 12, '➡ Event Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(298, 13, 'Library Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(299, 13, 'Add Book Menu', 'add-book', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(300, 13, '➡ Create Add Book Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(301, 13, 'Book List  Menu', 'book-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(302, 13, '➡ Create Book List Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(303, 13, '➡ Create Book List Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(304, 13, 'Book Category Menu', 'book-category-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(305, 13, '➡ Book Category Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(306, 13, '➡ Book Category Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(307, 13, '➡ Book Category Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(308, 13, 'Add Member Menu', 'library-member', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(309, 13, '➡ Add Member Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(310, 13, '➡ Add Member Cancel', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(311, 13, 'Issue/Return Book Menu', 'member-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(312, 13, '➡ Issue/Return Book Issue', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(313, 13, '➡ Issue/Return Book Return', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(314, 13, 'All Issued Book', 'all-issed-book', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(315, 14, 'Inventory Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(316, 14, 'Item Category Menu', 'item-category', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(317, 14, '➡ Create Item Category Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(318, 14, '➡ Create Item Category Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(319, 14, '➡ Item Category Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(320, 14, 'Item List Menu', 'item-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(321, 14, '➡ Create Item List Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(322, 14, '➡ Item List Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(323, 14, '➡ Item List Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(324, 14, 'Item Store Menu', 'item-store', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(325, 14, '➡ Create Item Store Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(326, 14, '➡ Item Store Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(327, 14, '➡ Item Store Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(328, 14, 'Supplier Menu', 'suppliers', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(329, 14, '➡ Create Supplier Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(330, 14, '➡ Supplier Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(331, 14, '➡ Supplier Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(332, 14, 'Item Receive Menu', 'item-receive', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(333, 14, '➡ Create Item Receive Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(334, 14, 'Item Receive List Menu', 'item-receive-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(335, 14, '➡ Create Item Receive List Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(336, 14, '➡ Item Receive List Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(337, 14, '➡ Item Receive List View', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(338, 14, '➡ Item Receive List Cancel', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(339, 14, 'Item Sell Menu', 'item-sell-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(340, 14, '➡ Create Item Sell Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(341, 14, '➡ Item Sell Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(342, 14, '➡ Item Sell Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(343, 14, '➡ Add Payment', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(344, 14, '➡ View Payment', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(345, 14, 'Item Issue Menu', 'item-issue', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(346, 14, '➡ Create Item Issue Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(347, 14, '➡ Item Issue Return', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(348, 15, 'Transport Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(349, 15, 'Routes Menu', 'transport-route', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(350, 15, '➡ Create Routes Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(351, 15, '➡ Create Routes Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(352, 15, '➡ Create Routes Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(353, 15, 'Vehicle Menu', 'vehicle', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(354, 15, '➡ Create Vehicle Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(355, 15, '➡ Create Vehicle Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(356, 15, '➡ Create Vehicle Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(357, 15, 'Assign Vehicle Menu', 'assign-vehicle', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(358, 15, '➡ Create Assign Vehicle Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(359, 15, '➡ Create Assign Vehicle Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(360, 15, '➡ Create Assign Vehicle Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(361, 15, 'Student Transport Report Menu', 'student-transport-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(362, 16, 'Dormitory Menu', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(363, 16, 'Dormitory Rooms Menu', 'room-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(364, 16, '➡ Create Dormitory Rooms Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(365, 16, '➡ Create Dormitory Rooms Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(366, 16, '➡ Create Dormitory Rooms Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(367, 16, 'Dormitory Menu', 'dormitory-list', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(368, 16, '➡ Create Dormitory Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(369, 16, '➡ Create Dormitory Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(370, 16, '➡ Create Dormitory Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(371, 16, 'Room Type Menu', 'room-type', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(372, 16, '➡ Create Room Type Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(373, 16, '➡ Create Room Type Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(374, 16, '➡ Create Room Type Delete', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(375, 16, 'Student Dormitory Report Menu', 'student-dormitory-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(376, 17, 'Reports Menu', 'student-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(377, 17, 'Guardian Report Menu', 'guardian-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(378, 17, 'Student History Menu', 'student-history', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(379, 17, 'Student Login Report', 'student-login-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(380, 17, '➡ Student Login Report Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(381, 17, 'Fees Statement Menu', 'fees-statement', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(382, 17, 'Balance Fees Report Menu', 'balance-fees-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(383, 17, 'Transaction Report Menu', 'transaction-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(384, 17, 'Class Report Menu', 'class-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(385, 17, 'Class Routine Menu', 'class-routine-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(386, 17, 'Exam Routine Menu', 'exam-routine-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(387, 17, 'Teacher Class Routine Menu', 'teacher-class-routine-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(388, 17, 'Merit List Report Menu', 'merit-list-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(389, 17, 'Online Exam Report Menu', 'online-exam-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(390, 17, 'Mark Sheet Report Menu', 'mark-sheet-report-student', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(391, 17, 'Tabulation Sheet Report Menu', 'tabulation-sheet-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(392, 17, 'Progress Card Report Menu', 'progress-card-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(393, 17, 'Student Fine Report Menu', 'student-fine-report', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(394, 17, 'User Log Menu', 'user-log', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(395, 8, '➡ Apply Leave Add', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(396, 8, '➡ Apply Leave Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22'),
(397, 9, '➡ Exam Setup Edit', '', 1, 1, 1, 1, '2019-07-25 07:21:21', '2019-07-25 09:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `sm_module_permissions`
--

CREATE TABLE `sm_module_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `dashboard_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_module_permissions`
--

INSERT INTO `sm_module_permissions` (`id`, `dashboard_id`, `name`, `active_status`, `created_by`, `updated_by`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(2, 1, 'Admin Section', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(3, 1, 'Student Information', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(4, 1, 'Teacher', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(5, 1, 'Fees Collection', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(6, 1, 'Accounts', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(7, 1, 'Human Resource', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(8, 1, 'Leave Application', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(9, 1, 'Examination', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(10, 1, 'Academics', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(11, 1, 'Homework', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(12, 1, 'Communicate', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(13, 1, 'Library', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(14, 1, 'Inventory', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(15, 1, 'Transport', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(16, 1, 'Dormitory', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(17, 1, 'Reports', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(18, 1, 'System Settings', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(19, 1, 'Style', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(20, 1, 'API Permission', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(21, 1, 'Front Settings', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(22, 2, 'My Profile', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(23, 2, 'Fees', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(24, 2, 'Class Routine', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(25, 2, 'Homework', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(26, 2, 'Download Center', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(27, 2, 'Attendance', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(28, 2, 'Examinations', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(29, 2, 'Online Exam', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(30, 2, 'Notice Board', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(31, 2, 'Subjects', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(32, 2, 'Teacher', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(33, 2, 'Library', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(34, 2, 'Transfort', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(35, 2, 'Dormitory', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(36, 3, 'My Children', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(37, 3, 'Fees', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(38, 3, 'Class Routine', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(39, 3, 'Homework', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(40, 3, 'Attendance', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(41, 3, 'Exam Result', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(42, 3, 'Notice Board', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(43, 3, 'Subjects', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(44, 3, 'Teacher', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(45, 3, 'Transfort', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22'),
(46, 3, 'Dormitory', 1, 1, 1, 1, '2019-07-25 02:21:21', '2019-07-25 04:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `sm_module_permission_assigns`
--

CREATE TABLE `sm_module_permission_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_module_permission_assigns`
--

INSERT INTO `sm_module_permission_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `module_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 1, 1, 1, 1, 1),
(2, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 2, 1, 1, 1, 1),
(3, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 3, 1, 1, 1, 1),
(4, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 4, 1, 1, 1, 1),
(5, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 5, 1, 1, 1, 1),
(6, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 6, 1, 1, 1, 1),
(7, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 7, 1, 1, 1, 1),
(8, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 8, 1, 1, 1, 1),
(9, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 9, 1, 1, 1, 1),
(10, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 10, 1, 1, 1, 1),
(11, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 11, 1, 1, 1, 1),
(12, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 12, 1, 1, 1, 1),
(13, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 13, 1, 1, 1, 1),
(14, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 14, 1, 1, 1, 1),
(15, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 15, 1, 1, 1, 1),
(16, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 16, 1, 1, 1, 1),
(17, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 17, 1, 1, 1, 1),
(18, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 18, 1, 1, 1, 1),
(19, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 19, 1, 1, 1, 1),
(20, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 20, 1, 1, 1, 1),
(21, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 21, 1, 1, 1, 1),
(22, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 1, 4, 1, 1, 1),
(23, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 2, 4, 1, 1, 1),
(24, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 3, 4, 1, 1, 1),
(25, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 4, 4, 1, 1, 1),
(26, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 5, 4, 1, 1, 1),
(27, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 6, 4, 1, 1, 1),
(28, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 7, 4, 1, 1, 1),
(29, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 8, 4, 1, 1, 1),
(30, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 9, 4, 1, 1, 1),
(31, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 10, 4, 1, 1, 1),
(32, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 11, 4, 1, 1, 1),
(33, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 12, 4, 1, 1, 1),
(34, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 13, 4, 1, 1, 1),
(35, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 14, 4, 1, 1, 1),
(36, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 15, 4, 1, 1, 1),
(37, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 16, 4, 1, 1, 1),
(38, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 17, 4, 1, 1, 1),
(39, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 18, 4, 1, 1, 1),
(40, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 19, 4, 1, 1, 1),
(41, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 20, 4, 1, 1, 1),
(42, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 21, 4, 1, 1, 1),
(64, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 1, 6, 1, 1, 1),
(65, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 2, 6, 1, 1, 1),
(66, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 3, 6, 1, 1, 1),
(67, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 4, 6, 1, 1, 1),
(68, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 5, 6, 1, 1, 1),
(69, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 6, 6, 1, 1, 1),
(70, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 7, 6, 1, 1, 1),
(71, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 8, 6, 1, 1, 1),
(72, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 9, 6, 1, 1, 1),
(73, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 10, 6, 1, 1, 1),
(74, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 11, 6, 1, 1, 1),
(75, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 12, 6, 1, 1, 1),
(76, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 13, 6, 1, 1, 1),
(77, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 14, 6, 1, 1, 1),
(78, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 15, 6, 1, 1, 1),
(79, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 16, 6, 1, 1, 1),
(80, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 17, 6, 1, 1, 1),
(81, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 18, 6, 1, 1, 1),
(82, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 19, 6, 1, 1, 1),
(83, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 20, 6, 1, 1, 1),
(84, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 21, 6, 1, 1, 1),
(85, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 1, 7, 1, 1, 1),
(86, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 2, 7, 1, 1, 1),
(87, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 3, 7, 1, 1, 1),
(88, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 4, 7, 1, 1, 1),
(89, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 5, 7, 1, 1, 1),
(90, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 6, 7, 1, 1, 1),
(91, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 7, 7, 1, 1, 1),
(92, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 8, 7, 1, 1, 1),
(93, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 9, 7, 1, 1, 1),
(94, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 10, 7, 1, 1, 1),
(95, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 11, 7, 1, 1, 1),
(96, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 12, 7, 1, 1, 1),
(97, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 13, 7, 1, 1, 1),
(98, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 14, 7, 1, 1, 1),
(99, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 15, 7, 1, 1, 1),
(100, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 16, 7, 1, 1, 1),
(101, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 17, 7, 1, 1, 1),
(102, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 18, 7, 1, 1, 1),
(103, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 19, 7, 1, 1, 1),
(104, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 20, 7, 1, 1, 1),
(105, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 21, 7, 1, 1, 1),
(106, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 1, 8, 1, 1, 1),
(107, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 2, 8, 1, 1, 1),
(108, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 3, 8, 1, 1, 1),
(109, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 4, 8, 1, 1, 1),
(110, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 5, 8, 1, 1, 1),
(111, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 6, 8, 1, 1, 1),
(112, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 7, 8, 1, 1, 1),
(113, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 8, 8, 1, 1, 1),
(114, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 9, 8, 1, 1, 1),
(115, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 10, 8, 1, 1, 1),
(116, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 11, 8, 1, 1, 1),
(117, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 12, 8, 1, 1, 1),
(118, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 13, 8, 1, 1, 1),
(119, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 14, 8, 1, 1, 1),
(120, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 15, 8, 1, 1, 1),
(121, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 16, 8, 1, 1, 1),
(122, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 17, 8, 1, 1, 1),
(123, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 18, 8, 1, 1, 1),
(124, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 19, 8, 1, 1, 1),
(125, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 20, 8, 1, 1, 1),
(126, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 21, 8, 1, 1, 1),
(127, 1, '2019-10-22 13:55:59', '2019-10-22 13:55:59', 22, 2, 1, 1, 1),
(128, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 23, 2, 1, 1, 1),
(129, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 24, 2, 1, 1, 1),
(130, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 25, 2, 1, 1, 1),
(131, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 26, 2, 1, 1, 1),
(132, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 27, 2, 1, 1, 1),
(133, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 28, 2, 1, 1, 1),
(134, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 29, 2, 1, 1, 1),
(135, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 30, 2, 1, 1, 1),
(136, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 31, 2, 1, 1, 1),
(137, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 32, 2, 1, 1, 1),
(138, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 33, 2, 1, 1, 1),
(139, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 34, 2, 1, 1, 1),
(140, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 35, 2, 1, 1, 1),
(141, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 36, 3, 1, 1, 1),
(142, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 37, 3, 1, 1, 1),
(143, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 38, 3, 1, 1, 1),
(144, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 39, 3, 1, 1, 1),
(145, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 40, 3, 1, 1, 1),
(146, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 41, 3, 1, 1, 1),
(147, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 42, 3, 1, 1, 1),
(148, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 43, 3, 1, 1, 1),
(149, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 44, 3, 1, 1, 1),
(150, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 45, 3, 1, 1, 1),
(151, 1, '2019-10-22 13:56:00', '2019-10-22 13:56:00', 46, 3, 1, 1, 1),
(169, 1, '2019-11-25 23:51:56', '2019-11-25 23:51:56', 2, 5, 1, 1, 1),
(170, 1, '2019-11-25 23:51:56', '2019-11-25 23:51:56', 3, 5, 1, 1, 1),
(171, 1, '2019-11-25 23:51:56', '2019-11-25 23:51:56', 4, 5, 1, 1, 1),
(172, 1, '2019-11-25 23:51:56', '2019-11-25 23:51:56', 5, 5, 1, 1, 1),
(173, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 6, 5, 1, 1, 1),
(174, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 7, 5, 1, 1, 1),
(175, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 8, 5, 1, 1, 1),
(176, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 9, 5, 1, 1, 1),
(177, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 10, 5, 1, 1, 1),
(178, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 11, 5, 1, 1, 1),
(179, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 12, 5, 1, 1, 1),
(180, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 13, 5, 1, 1, 1),
(181, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 14, 5, 1, 1, 1),
(182, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 15, 5, 1, 1, 1),
(183, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 16, 5, 1, 1, 1),
(184, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 17, 5, 1, 1, 1),
(185, 1, '2019-11-25 23:51:57', '2019-11-25 23:51:57', 18, 5, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_news`
--

CREATE TABLE `sm_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_body` text COLLATE utf8mb4_unicode_ci,
  `publish_date` date DEFAULT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_news_categories`
--

CREATE TABLE `sm_news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_news_categories`
--

INSERT INTO `sm_news_categories` (`id`, `category_name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'International', NULL, NULL, 1),
(2, 'Our history', NULL, NULL, 1),
(3, 'Our mission and vision', NULL, NULL, 1),
(4, 'National', NULL, NULL, 1),
(5, 'Sports', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_notice_boards`
--

CREATE TABLE `sm_notice_boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_message` text COLLATE utf8mb4_unicode_ci,
  `notice_date` date DEFAULT NULL,
  `publish_on` date DEFAULT NULL,
  `inform_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Notice message sent to these roles',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `is_published` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_notice_boards`
--

INSERT INTO `sm_notice_boards` (`id`, `notice_title`, `notice_message`, `notice_date`, `publish_on`, `inform_to`, `active_status`, `is_published`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'HOLIDAY', '<p>IT IS INFORM YOU THAT ON THE EVE OF NEW YEAR ALL STUDENTS ENJOY A HOLIDAY ON 1ST OF JANUARY 2020.</p>\r\n\r\n<p>THANKS</p>', '2019-12-26', '2019-12-26', '2,3', 1, 0, '2019-12-26 19:08:08', '2019-12-26 19:08:08', 1, 1, 1),
(2, 'PTM', '<p><strong>Assalamualaikum!</strong></p>\r\n\r\n<p><strong>Dear Parents,</strong></p>\r\n\r\n<p><strong>The Parent Teacher Meeting (PTM) of&nbsp;the first term of academic year 2019-20&nbsp;has been scheduled on 15th january&nbsp;2016 (Saturday)&nbsp;from 9:00 am till 11:00 am&nbsp;sharp. You are requested to ensure your attendance and strictly adhere to the timings. The school gate will close at&nbsp;10:45 am sharp after which Parents will not be entertained.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong><br />\r\n<strong>Administration</strong></p>', '2020-01-06', '2020-01-02', '1,2,3,4,5,6,7,8,9', 1, 0, '2019-12-30 22:26:01', '2020-01-22 18:59:28', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_notifications`
--

CREATE TABLE `sm_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT '1',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `school_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_notifications`
--

INSERT INTO `sm_notifications` (`id`, `date`, `message`, `is_read`, `active_status`, `created_at`, `updated_at`, `user_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2020-01-01', 'New fees Assigned', 1, 1, '2020-01-01 18:06:22', '2020-01-01 19:22:31', 4, 2, 1, 1, 1),
(2, '2020-01-01', 'New fees Assigned', 0, 1, '2020-01-01 18:06:22', '2020-01-01 18:06:22', 5, 2, 1, 1, 1),
(3, '2020-01-02', 'New fees Assigned', 0, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 4, 2, 1, 1, 1),
(4, '2020-01-02', 'New fees Assigned', 0, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 5, 2, 1, 1, 1),
(5, '2020-01-02', 'New fees Assigned', 0, 1, '2020-01-02 18:33:42', '2020-01-02 18:33:42', 6, 2, 1, 1, 1),
(6, '2020-01-02', 'New fees Assigned', 1, 1, '2020-01-02 18:33:42', '2020-01-02 19:21:21', 7, 2, 1, 1, 1),
(7, '2020-01-03', 'Others Download updated', 0, 1, '2020-01-03 23:12:33', '2020-01-03 23:12:33', 516, 4, 1, 1, 1),
(8, '2020-01-03', 'Others Download updated', 0, 1, '2020-01-03 23:12:33', '2020-01-03 23:12:33', 521, 4, 1, 1, 1),
(9, '2020-01-03', 'Others Download updated', 0, 1, '2020-01-03 23:12:33', '2020-01-03 23:12:33', 522, 4, 1, 1, 1),
(10, '2020-01-03', 'Others Download updated', 0, 1, '2020-01-03 23:12:33', '2020-01-03 23:12:33', 527, 4, 1, 1, 1),
(11, '2020-01-03', 'Others Download updated', 0, 1, '2020-01-03 23:12:33', '2020-01-03 23:12:33', 509, 5, 1, 1, 1),
(12, '2020-01-03', 'New fees Assigned', 0, 1, '2020-01-03 23:29:51', '2020-01-03 23:29:51', 6, 2, 1, 1, 1),
(13, '2020-01-03', 'assignment updated', 0, 1, '2020-01-03 23:58:52', '2020-01-03 23:58:52', NULL, 2, 1, 1, 1),
(14, '2020-01-06', 'assignment updated', 0, 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, 2, 1, 1, 1),
(15, '2020-01-06', 'assignment updated', 0, 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, 2, 1, 1, 1),
(16, '2020-01-06', 'assignment updated', 0, 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, 2, 1, 1, 1),
(17, '2020-01-06', 'assignment updated', 0, 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, 2, 1, 1, 1),
(18, '2020-01-06', 'assignment updated', 0, 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, 2, 1, 1, 1),
(19, '2020-01-06', 'assignment updated', 0, 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, 2, 1, 1, 1),
(20, '2020-01-06', 'assignment updated', 0, 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, 2, 1, 1, 1),
(21, '2020-01-06', 'New online exam created', 0, 1, '2020-01-06 18:14:00', '2020-01-06 18:14:00', 3, 2, 1, 1, 1),
(22, '2020-01-06', 'New online exam created', 0, 1, '2020-01-06 18:14:00', '2020-01-06 18:14:00', 4, 2, 1, 1, 1),
(23, '2020-01-06', 'New online exam created', 0, 1, '2020-01-06 18:14:00', '2020-01-06 18:14:00', 5, 2, 1, 1, 1),
(24, '2020-01-06', 'New online exam created', 1, 1, '2020-01-06 18:14:00', '2020-01-06 17:28:29', 7, 2, 1, 1, 1),
(25, '2020-01-06', 'New online exam created', 0, 1, '2020-01-06 23:34:12', '2020-01-06 23:34:12', 3, 2, 1, 1, 1),
(26, '2020-01-06', 'New online exam created', 0, 1, '2020-01-06 23:34:12', '2020-01-06 23:34:12', 4, 2, 1, 1, 1),
(27, '2020-01-06', 'New online exam created', 0, 1, '2020-01-06 23:34:12', '2020-01-06 23:34:12', 5, 2, 1, 1, 1),
(28, '2020-01-06', 'New online exam created', 1, 1, '2020-01-06 23:34:12', '2020-01-06 23:04:05', 7, 2, 1, 1, 1),
(29, '2020-01-08', 'New online exam created', 0, 1, '2020-01-08 22:02:24', '2020-01-08 22:02:24', 3, 2, 1, 1, 1),
(30, '2020-01-08', 'New online exam created', 0, 1, '2020-01-08 22:02:24', '2020-01-08 22:02:24', 4, 2, 1, 1, 1),
(31, '2020-01-08', 'New online exam created', 0, 1, '2020-01-08 22:02:24', '2020-01-08 22:02:24', 5, 2, 1, 1, 1),
(32, '2020-01-08', 'New online exam created', 1, 1, '2020-01-08 22:02:24', '2020-01-08 21:18:13', 7, 2, 1, 1, 1),
(33, '2020-01-08', 'New online exam created', 0, 1, '2020-01-08 22:30:12', '2020-01-08 22:30:12', 6, 2, 1, 1, 1),
(34, '2020-01-08', 'Leave status updated', 0, 1, '2020-01-08 23:18:10', '2020-01-08 23:18:10', 527, 4, 1, 1, 1),
(35, '2020-01-13', 'Study Material updated', 0, 1, '2020-01-13 23:16:29', '2020-01-13 23:16:29', NULL, 2, 1, 1, 1),
(36, '2020-01-13', 'New online exam created', 1, 1, '2020-01-14 01:07:51', '2020-01-14 16:26:56', 9, 2, 1, 1, 1),
(37, '2020-01-15', 'Study Material updated', 0, 1, '2020-01-15 18:34:46', '2020-01-15 18:34:46', NULL, 2, 1, 1, 1),
(38, '2020-01-15', 'Study Material updated', 0, 1, '2020-01-15 18:34:47', '2020-01-15 18:34:47', NULL, 2, 1, 1, 1),
(39, '2020-01-15', 'Study Material updated', 0, 1, '2020-01-15 18:34:47', '2020-01-15 18:34:47', NULL, 2, 1, 1, 1),
(40, '2020-01-15', 'Study Material updated', 0, 1, '2020-01-15 18:34:47', '2020-01-15 18:34:47', NULL, 2, 1, 1, 1),
(41, '2020-01-15', 'assignment updated', 0, 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', 516, 4, 1, 1, 1),
(42, '2020-01-15', 'assignment updated', 0, 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', 521, 4, 1, 1, 1),
(43, '2020-01-15', 'assignment updated', 0, 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', 522, 4, 1, 1, 1),
(44, '2020-01-15', 'assignment updated', 0, 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', 527, 4, 1, 1, 1),
(45, '2020-01-15', 'assignment updated', 0, 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', 534, 4, 1, 1, 1),
(46, '2020-01-15', 'assignment updated', 0, 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', 509, 5, 1, 1, 1),
(47, '2020-01-15', 'assignment updated', 0, 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', 535, 6, 1, 1, 1),
(48, '2020-01-16', 'New online exam created', 0, 1, '2020-01-16 19:46:48', '2020-01-16 19:46:48', 6, 2, 1, 1, 1),
(49, '2020-01-16', 'New online exam created', 1, 1, '2020-01-16 19:46:48', '2020-01-16 21:49:34', 11, 2, 1, 1, 1),
(50, '2020-01-17', 'New fees Assigned', 0, 1, '2020-01-17 21:19:11', '2020-01-17 21:19:11', 6, 2, 1, 1, 1),
(51, '2020-01-17', 'New fees Assigned', 0, 1, '2020-01-17 21:19:11', '2020-01-17 21:19:11', 11, 2, 1, 1, 1),
(52, '2020-01-20', 'assignment updated', 0, 1, '2020-01-20 19:17:41', '2020-01-20 19:17:41', NULL, 2, 1, 1, 1),
(53, '2020-01-20', 'assignment updated', 0, 1, '2020-01-20 19:17:41', '2020-01-20 19:17:41', NULL, 2, 1, 1, 1),
(54, '2020-01-20', 'assignment updated', 0, 1, '2020-01-20 19:17:41', '2020-01-20 19:17:41', NULL, 2, 1, 1, 1),
(55, '2020-01-20', 'New fees Assigned', 0, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 6, 2, 1, 1, 1),
(56, '2020-01-20', 'New fees Assigned', 0, 1, '2020-01-20 19:24:29', '2020-01-20 19:24:29', 11, 2, 1, 1, 1),
(57, '2020-01-20', 'New fees Assigned', 0, 1, '2020-01-20 19:32:02', '2020-01-20 19:32:02', 6, 2, 1, 1, 1),
(58, '2020-01-20', 'New fees Assigned', 0, 1, '2020-01-20 19:32:02', '2020-01-20 19:32:02', 11, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exams`
--

CREATE TABLE `sm_online_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 = Pending 1 Published',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_online_exams`
--

INSERT INTO `sm_online_exams` (`id`, `title`, `date`, `start_time`, `end_time`, `end_date_time`, `percentage`, `instruction`, `status`, `active_status`, `created_at`, `updated_at`, `class_id`, `section_id`, `subject_id`, `created_by`, `updated_by`, `school_id`) VALUES
(2, 'MID TERM EXAM', '2020-01-06', '16:40:00', '17:40:00', '2020-01-06 17:40:00', 50, 'ALL STUDENTS MUST BE ON TIME FOR MID TERM EXAM', 1, 1, '2020-01-06 22:13:13', '2020-01-06 23:34:12', 2, 1, 6, 1, 1, 1),
(3, 'FINAL TERM EXAM', '2020-01-08', '15:05:00', '16:05:00', '2020-01-08 16:05:00', 50, 'all students must be on time.', 1, 1, '2020-01-08 21:00:28', '2020-01-08 22:02:24', 2, 1, 6, 1, 1, 1),
(4, 'Test Title', '2020-01-13', '18:13:00', '18:16:00', '2020-01-13 18:16:00', 50, 'test', 1, 1, '2020-01-13 23:59:59', '2020-01-14 00:10:33', 1, 3, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_marks`
--

CREATE TABLE `sm_online_exam_marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `abs` int(11) NOT NULL DEFAULT '0',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_questions`
--

CREATE TABLE `sm_online_exam_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_question_assigns`
--

CREATE TABLE `sm_online_exam_question_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `question_bank_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_online_exam_question_assigns`
--

INSERT INTO `sm_online_exam_question_assigns` (`id`, `created_at`, `updated_at`, `online_exam_id`, `question_bank_id`, `created_by`, `updated_by`, `school_id`) VALUES
(16, '2020-01-06 22:11:04', '2020-01-06 22:11:04', 1, 3, 1, 1, 1),
(15, '2020-01-06 22:11:04', '2020-01-06 22:11:04', 1, 2, 1, 1, 1),
(14, '2020-01-06 22:11:04', '2020-01-06 22:11:04', 1, 1, 1, 1, 1),
(31, '2020-01-06 23:01:33', '2020-01-06 23:01:33', 2, 3, 1, 1, 1),
(30, '2020-01-06 23:01:33', '2020-01-06 23:01:33', 2, 2, 1, 1, 1),
(29, '2020-01-06 23:01:33', '2020-01-06 23:01:33', 2, 1, 1, 1, 1),
(32, '2020-01-08 21:02:15', '2020-01-08 21:02:15', 3, 1, 1, 1, 1),
(33, '2020-01-08 21:02:15', '2020-01-08 21:02:15', 3, 2, 1, 1, 1),
(34, '2020-01-08 21:02:15', '2020-01-08 21:02:15', 3, 3, 1, 1, 1),
(35, '2020-01-14 00:05:17', '2020-01-14 00:05:17', 4, 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_question_mu_options`
--

CREATE TABLE `sm_online_exam_question_mu_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 unchecked 1 checked',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `online_exam_question_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'here we use foreign key shorter name',
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_parents`
--

CREATE TABLE `sm_parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `fathers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_relation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guardian` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_parents`
--

INSERT INTO `sm_parents` (`id`, `fathers_name`, `fathers_mobile`, `fathers_occupation`, `fathers_photo`, `mothers_name`, `mothers_mobile`, `mothers_occupation`, `mothers_photo`, `relation`, `guardians_name`, `guardians_mobile`, `guardians_email`, `guardians_occupation`, `guardians_relation`, `guardians_photo`, `guardians_address`, `is_guardian`, `active_status`, `created_at`, `updated_at`, `user_id`, `school_id`) VALUES
(1, 'Raheem Shah', '03405566272', 'Carpenter', 'public/uploads/student/861bace2fbd626265afea380abc6fbcf.png', 'Shanzeh', '03456688902', 'Raheem', 'public/uploads/student/08839220814c57c3c08f53d2c68f222e.png', 'F', 'Raheem Shah', '03405566272', 'ibrahimnasir124@gmail.com', 'Carpenter', 'Father', NULL, '344-FF, street 4, Phase 7, Model Town, Lahore', NULL, 1, '2019-12-09 23:14:34', '2019-12-09 23:14:34', 511, 1),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', NULL, '030038484848', 'ibrahim.nasir@ivylabtech.com', NULL, 'Father', NULL, NULL, NULL, 1, '2019-12-11 20:15:46', '2019-12-11 20:15:46', 513, 1),
(3, 'asdasdf', '03458703330', 'sadf', NULL, NULL, NULL, NULL, NULL, 'F', 'asdasdf', '03458703330', 'bilal.yasir@gmail.com', 'sadf', 'Other', NULL, 'asfdsafd', NULL, 1, '2019-12-24 23:28:41', '2019-12-24 23:28:41', 515, 1),
(4, 'AMIR', '03024656792', 'LAHORE', NULL, 'AYESHA', '03210454699', 'LAHORE', NULL, 'F', 'AMIR', '03024656792', 'AMIR@GMAIL.COM', 'LAHORE', 'Other', NULL, 'LAHORE,PAKISTAN', NULL, 1, '2019-12-26 17:08:40', '2019-12-26 17:08:40', 518, 1),
(5, 'Haseeb', '03001234567', NULL, 'public/uploads/student/5e7fab90585cf9153c180921c2f84f62.png', NULL, NULL, NULL, NULL, 'F', 'Haseeb', '03001234567', 'ohyeah@gmail.com', NULL, 'Father', 'public/uploads/student/893ee8ce7a6630097aee083f557498b6.png', NULL, NULL, 1, '2019-12-27 18:14:44', '2019-12-28 00:18:51', 520, 1),
(6, 'M Anwar', '03001234567', 'test occupation', 'public/uploads/student/8e432204d52c4519f351123fbb7864c3.png', NULL, NULL, NULL, NULL, 'F', 'M Anwar', '030012998776', 'guardian@gmail.com', 'test occupation', 'Other', 'public/uploads/student/1ce22c5c23342f40816488638068a05d.png', NULL, NULL, 1, '2020-01-01 19:13:04', '2020-01-01 19:13:04', 524, 1),
(7, 'AZMAT', '03074901503', 'PAKISTAN ARMY', NULL, NULL, NULL, NULL, NULL, 'F', 'AZMAT', '03074901503', 'azmat@ivylabtech.com', 'PAKISTAN ARMY', 'Other', NULL, 'DHA PHASE 5,LAHORE,PAKISTAN', NULL, 1, '2020-01-02 16:48:26', '2020-01-02 17:17:56', 526, 1),
(8, 'M Anwar', '03001234577', 'test occupation', NULL, NULL, NULL, NULL, NULL, 'F', 'M Anwar', '03001234577', 'haseebanwar010@gmail.com', 'test occupation', 'Father', NULL, NULL, NULL, 1, '2020-01-07 17:30:01', '2020-01-07 18:55:31', 529, 1),
(9, NULL, '03001234567', NULL, NULL, NULL, NULL, NULL, NULL, 'F', 'M Anwar', '03456139455', 'father@gmail.com', NULL, 'Father', NULL, NULL, NULL, 1, '2020-01-07 19:33:27', '2020-01-07 19:33:27', 531, 1),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', NULL, '03215645869', 'fahadfather@ivylabtech.com', NULL, 'Other', NULL, NULL, NULL, 1, '2020-01-07 19:46:45', '2020-01-07 19:46:45', 533, 1),
(11, 'Azmat Ali', '0987654321', 'Businessman', 'public/uploads/student/6a2c2f800578f3b37cc948d5836988d8.png', 'Mrs. Azmat', '567432190', 'house wife', 'public/uploads/student/c661b270dd692588f44fc67a3206e4d8.png', 'O', 'Ali Azmat', '1234567890', 'aliazmat123@gmail.com', 'Marketer', 'Other', 'public/uploads/student/d479695f9c4cb7b666901a9b8c5c1173.png', 'DHA Phase 4 Lahore', NULL, 1, '2020-01-16 17:42:28', '2020-01-17 17:57:25', 537, 1),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'O', 'M Anwar', '03678945234', 'manwar@gmail.com', NULL, 'Other', NULL, NULL, NULL, 1, '2020-01-17 16:35:41', '2020-01-17 16:35:41', 540, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_payment_gateway_settings`
--

CREATE TABLE `sm_payment_gateway_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_secret_word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_publisher_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_private_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_payment_gateway_settings`
--

INSERT INTO `sm_payment_gateway_settings` (`id`, `gateway_name`, `gateway_username`, `gateway_password`, `gateway_signature`, `gateway_client_id`, `gateway_mode`, `gateway_secret_key`, `gateway_secret_word`, `gateway_publisher_key`, `gateway_private_key`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'PayPal', 'demo@paypal.com', '12334589', NULL, 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1-qNwv_Wz9mI_6MKSW5dS9uPAha3rd7eB82ToOCQLp31c', NULL, 'EMgxBzeJ9By7D0xvkSUblDd_GW99WvK0DDNyvkGn7rBikvjPw46xz9Plozp4jl7AOsx-isWmBFnw1h2j', NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1),
(2, 'Stripe', 'demo@strip.com', '12334589', NULL, '', NULL, 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1-isWmBFnw1h2j', 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1', NULL, NULL, 0, NULL, NULL, 1, 1, 1),
(3, 'Paystack', 'demo@gmail.com', '12334589', NULL, '', NULL, 'sk_live_2679322872013c265e161bc8ea11efc1e822bce1', NULL, 'pk_live_e5738ce9aade963387204f1f19bee599176e7a71', NULL, 0, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_payment_methhods`
--

CREATE TABLE `sm_payment_methhods` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gateway_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_payment_methhods`
--

INSERT INTO `sm_payment_methhods` (`id`, `method`, `type`, `active_status`, `created_at`, `updated_at`, `gateway_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Cash', 'System', 1, NULL, NULL, NULL, 1, 1, 1),
(2, 'Cheque', 'System', 1, NULL, NULL, NULL, 1, 1, 1),
(3, 'Bank', 'System', 1, NULL, NULL, NULL, 1, 1, 1),
(4, 'Paypal', 'System', 1, NULL, NULL, NULL, 1, 1, 1),
(5, 'Stripe', 'System', 1, NULL, NULL, NULL, 1, 1, 1),
(6, 'Paystack', 'System', 1, NULL, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_phone_call_logs`
--

CREATE TABLE `sm_phone_call_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `next_follow_up_date` date DEFAULT NULL,
  `call_duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_phone_call_logs`
--

INSERT INTO `sm_phone_call_logs` (`id`, `name`, `phone`, `date`, `description`, `next_follow_up_date`, `call_duration`, `call_type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Nauman Ahmad', '03360333383', '2019-12-24', NULL, '2019-12-24', '05:20', 'O', 1, '2019-12-24 19:56:24', '2019-12-24 19:56:24', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_postal_dispatches`
--

CREATE TABLE `sm_postal_dispatches` (
  `id` int(10) UNSIGNED NOT NULL,
  `to_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_postal_dispatches`
--

INSERT INTO `sm_postal_dispatches` (`id`, `to_title`, `from_title`, `reference_no`, `address`, `date`, `note`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'ahmad', 'Nauman', '381381', 'DHA Phase 4', '2019-12-24', 'acknowledge', '', 1, '2019-12-24 19:55:25', '2019-12-24 19:55:25', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_postal_receives`
--

CREATE TABLE `sm_postal_receives` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_postal_receives`
--

INSERT INTO `sm_postal_receives` (`id`, `from_title`, `to_title`, `reference_no`, `address`, `date`, `note`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Carolanne Anderson', 'Ms. Itzel Wuckert DVM', '44703516', '9553 Stanton Vista Suite 073East Felipastad, OH 06483-0198', '1971-09-06', 'Do you play croquet with us!\"\' \'They told you may look of the whole party sat down at the matter.', 'public/uploads/postal/postal_receive.png', 1, '2019-11-13 00:23:44', '2020-01-14 17:59:29', 1, 1, 1),
(2, 'Miss Marina Torphy', 'Alaina Labadie II', '40874678', '20078 Ivah Garden\nSouth Margarettaport, ID 37241', '1995-04-20', 'Soup! Soup of any rules for it, that savage Queen: so full effect, and must be off, and all.', 'public/uploads/postal/postal_receive.png', 1, '2019-11-13 00:23:44', '2019-11-13 00:23:44', 1, 1, 1),
(3, 'Miss Miracle Hills Sr.', 'Marshall Hills', '75727925', '246 Elinore Divide Apt. 123\nKohlertown, MS 85149', '1978-09-12', 'Alice, \'as the royal children; there were or is the next verse,\' said the way back, please: we.', 'public/uploads/postal/postal_receive.png', 1, '2019-11-13 00:23:44', '2019-11-13 00:23:44', 1, 1, 1),
(4, 'Kaylin Robel', 'Mr. Tyrique Funk', '92585607', '736 Sawayn Village Suite 631New Devinchester, NE 84396-5981', '1986-09-03', 'I tell them her head. But she had caught the dance? \"You have been reading about; and she felt.', 'public/uploads/postal/fedad847f3438e45b777da938311fe6f.png', 1, '2019-11-13 00:23:44', '2020-01-14 18:01:32', 1, 1, 1),
(5, 'Mr. Eusebio Schuppe MD', 'Mrs. Myah Sawayn', '47225497', '2474 Cortez Spring\nGrahamborough, MN 60897', '2010-10-17', 'I used to leave it makes them round it, busily painting them hit her brother\'s Latin Grammar, \'A.', 'public/uploads/postal/postal_receive.png', 1, '2019-11-13 00:23:44', '2019-11-13 00:23:44', 1, 1, 1),
(6, 'Nauman', 'Ahmad', '381381', 'DHA Phase 4', '2019-12-24', 'please send the conformation email asap', '', 1, '2019-12-24 19:53:08', '2019-12-24 19:54:24', 1, 1, 1),
(7, 'HA Tech Sol', 'test to title', '23451', 'test address', '2020-01-14', 'test  note', 'public/uploads/postal/62d0958992b5ac4f9186eaa0f85ab88e.png', 1, '2020-01-14 18:11:39', '2020-01-14 18:11:39', 1, 1, 1),
(8, 'Ivy Lab Tech', 'Fly With Us', '567', 'Sector FF Phase 4 DHA', '2020-01-20', 'List of NOC Issued In 2019', '', 1, '2020-01-21 00:06:27', '2020-01-21 00:06:27', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_product_purchases`
--

CREATE TABLE `sm_product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_date` date NOT NULL,
  `expaire_date` date NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `package` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_banks`
--

CREATE TABLE `sm_question_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'M for multi ans, T for trueFalse, F for fill in the blanks',
  `question` text COLLATE utf8mb4_unicode_ci,
  `marks` int(11) DEFAULT NULL,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci,
  `number_of_option` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `q_group_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_question_banks`
--

INSERT INTO `sm_question_banks` (`id`, `type`, `question`, `marks`, `trueFalse`, `suitable_words`, `number_of_option`, `active_status`, `created_at`, `updated_at`, `q_group_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'M', 'WHAT IS VOLTAGE...?', 1, NULL, NULL, '4', 1, '2020-01-06 17:00:46', '2020-01-06 17:00:46', 2, 2, 1, 1, 1, 1),
(2, 'T', 'IS VOLTAGE IS THE PRODUCT OF CURRENT AND RESISTANCE....?', 1, 'T', NULL, NULL, 1, '2020-01-06 17:09:24', '2020-01-06 17:09:24', 5, 2, 1, 1, 1, 1),
(3, 'F', 'VOLTAGE IS THE PRODUCT OF CURRENT AND _____________', 1, NULL, 'RESISTANCE, PRESSURE, AREA, VISCOSITY', NULL, 1, '2020-01-06 17:12:06', '2020-01-06 17:12:06', 4, 2, 1, 1, 1, 1),
(4, 'M', 'What is your name?', 50, NULL, NULL, '3', 1, '2020-01-14 00:03:32', '2020-01-14 00:03:32', 6, 1, 3, 1, 1, 1),
(5, 'T', NULL, 20, 'T', NULL, NULL, 1, '2020-01-17 22:28:53', '2020-01-17 22:28:53', 2, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_bank_mu_options`
--

CREATE TABLE `sm_question_bank_mu_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 = false, 1 = correct',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_bank_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_question_bank_mu_options`
--

INSERT INTO `sm_question_bank_mu_options` (`id`, `title`, `status`, `active_status`, `created_at`, `updated_at`, `question_bank_id`, `created_by`, `updated_by`, `school_id`) VALUES
(12, 'BOTH OPTION-1 AND OPTION-3', 0, 1, '2020-01-06 22:14:04', '2020-01-06 22:14:04', 1, 1, 1, 1),
(10, 'V=I/R', 0, 1, '2020-01-06 22:14:04', '2020-01-06 22:14:04', 1, 1, 1, 1),
(11, 'PRODUCT OF CURRENT AND RESISTANCE', 0, 1, '2020-01-06 22:14:04', '2020-01-06 22:14:04', 1, 1, 1, 1),
(9, 'V=I*R', 0, 1, '2020-01-06 22:14:04', '2020-01-06 22:14:04', 1, 1, 1, 1),
(18, 'Haseeb', 0, 1, '2020-01-14 00:03:58', '2020-01-14 00:03:58', 4, 1, 1, 1),
(17, 'Numan', 0, 1, '2020-01-14 00:03:58', '2020-01-14 00:03:58', 4, 1, 1, 1),
(16, 'Ali', 1, 1, '2020-01-14 00:03:58', '2020-01-14 00:03:58', 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_groups`
--

CREATE TABLE `sm_question_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_question_groups`
--

INSERT INTO `sm_question_groups` (`id`, `title`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(2, '1st Part', 1, '2020-01-06 16:54:38', '2020-01-17 22:22:03', 1, 1, 1),
(4, '3rd Part', 1, '2020-01-06 16:56:00', '2020-01-17 22:23:02', 1, 1, 1),
(5, '2nd Part', 1, '2020-01-06 17:06:01', '2020-01-17 22:22:33', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_levels`
--

CREATE TABLE `sm_question_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_result_stores`
--

CREATE TABLE `sm_result_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_roll_no` int(11) NOT NULL DEFAULT '1',
  `student_addmission_no` int(11) NOT NULL DEFAULT '1',
  `is_absent` int(11) NOT NULL DEFAULT '0' COMMENT '1=Absent, 0=Present',
  `total_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `total_gpa_point` double(8,2) DEFAULT NULL,
  `total_gpa_grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_type_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_setup_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_result_stores`
--

INSERT INTO `sm_result_stores` (`id`, `student_roll_no`, `student_addmission_no`, `is_absent`, `total_marks`, `total_gpa_point`, `total_gpa_grade`, `created_at`, `updated_at`, `exam_type_id`, `subject_id`, `exam_setup_id`, `student_id`, `class_id`, `section_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, 1, 0, 20.00, 0.00, 'F', '2019-12-26 17:42:30', '2019-12-26 17:44:43', 1, 2, NULL, 3, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 10.00, 0.00, 'F', '2019-12-26 17:45:32', '2019-12-26 17:45:32', 1, 3, NULL, 3, 1, 1, 1, 1, 1),
(3, 1, 1, 1, 10.00, 0.00, 'F', '2019-12-26 17:45:32', '2019-12-26 17:45:32', 1, 3, NULL, 4, 1, 1, 1, 1, 1),
(4, 1, 1, 0, 89.00, 5.00, 'A+', '2020-01-17 22:15:16', '2020-01-17 22:15:16', 1, 7, NULL, 6, 1, 1, 1, 1, 1),
(5, 1, 1, 0, 79.00, 4.00, 'A', '2020-01-17 22:15:16', '2020-01-17 22:15:16', 1, 7, NULL, 11, 1, 1, 1, 1, 1),
(6, 1, 1, 0, 94.00, 5.00, 'A+', '2020-01-17 22:15:16', '2020-01-17 22:15:16', 1, 7, NULL, 12, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_role_permissions`
--

CREATE TABLE `sm_role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_link_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_role_permissions`
--

INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 1, 1, 1, 1, 1),
(2, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 2, 1, 1, 1, 1),
(3, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 3, 1, 1, 1, 1),
(4, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 4, 1, 1, 1, 1),
(5, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 5, 1, 1, 1, 1),
(6, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 6, 1, 1, 1, 1),
(7, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 7, 1, 1, 1, 1),
(8, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 8, 1, 1, 1, 1),
(9, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 9, 1, 1, 1, 1),
(10, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 10, 1, 1, 1, 1),
(11, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 11, 1, 1, 1, 1),
(12, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 12, 1, 1, 1, 1),
(13, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 13, 1, 1, 1, 1),
(14, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 14, 1, 1, 1, 1),
(15, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 15, 1, 1, 1, 1),
(16, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 16, 1, 1, 1, 1),
(17, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 17, 1, 1, 1, 1),
(18, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 18, 1, 1, 1, 1),
(19, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 19, 1, 1, 1, 1),
(20, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 20, 1, 1, 1, 1),
(21, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 21, 1, 1, 1, 1),
(22, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 22, 1, 1, 1, 1),
(23, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 23, 1, 1, 1, 1),
(24, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 24, 1, 1, 1, 1),
(25, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 25, 1, 1, 1, 1),
(26, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 26, 1, 1, 1, 1),
(27, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 27, 1, 1, 1, 1),
(28, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 28, 1, 1, 1, 1),
(29, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 29, 1, 1, 1, 1),
(30, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 30, 1, 1, 1, 1),
(31, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 31, 1, 1, 1, 1),
(32, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 32, 1, 1, 1, 1),
(33, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 33, 1, 1, 1, 1),
(34, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 34, 1, 1, 1, 1),
(35, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 35, 1, 1, 1, 1),
(36, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 36, 1, 1, 1, 1),
(37, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 37, 1, 1, 1, 1),
(38, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 38, 1, 1, 1, 1),
(39, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 39, 1, 1, 1, 1),
(40, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 40, 1, 1, 1, 1),
(41, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 41, 1, 1, 1, 1),
(42, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 42, 1, 1, 1, 1),
(43, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 43, 1, 1, 1, 1),
(44, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 44, 1, 1, 1, 1),
(45, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 45, 1, 1, 1, 1),
(46, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 46, 1, 1, 1, 1),
(47, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 47, 1, 1, 1, 1),
(48, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 48, 1, 1, 1, 1),
(49, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 49, 1, 1, 1, 1),
(50, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 50, 1, 1, 1, 1),
(51, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 51, 1, 1, 1, 1),
(52, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 52, 1, 1, 1, 1),
(53, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 53, 1, 1, 1, 1),
(54, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 54, 1, 1, 1, 1),
(55, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 55, 1, 1, 1, 1),
(56, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 56, 1, 1, 1, 1),
(57, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 57, 1, 1, 1, 1),
(58, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 58, 1, 1, 1, 1),
(59, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 59, 1, 1, 1, 1),
(60, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 60, 1, 1, 1, 1),
(61, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 61, 1, 1, 1, 1),
(62, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 62, 1, 1, 1, 1),
(63, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 63, 1, 1, 1, 1),
(64, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 64, 1, 1, 1, 1),
(65, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 65, 1, 1, 1, 1),
(66, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 66, 1, 1, 1, 1),
(67, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 67, 1, 1, 1, 1),
(68, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 68, 1, 1, 1, 1),
(69, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 69, 1, 1, 1, 1),
(70, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 70, 1, 1, 1, 1),
(71, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 71, 1, 1, 1, 1),
(72, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 72, 1, 1, 1, 1),
(73, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 73, 1, 1, 1, 1),
(74, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 74, 1, 1, 1, 1),
(75, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 75, 1, 1, 1, 1),
(76, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 76, 1, 1, 1, 1),
(77, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 77, 1, 1, 1, 1),
(78, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 79, 1, 1, 1, 1),
(79, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 80, 1, 1, 1, 1),
(80, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 81, 1, 1, 1, 1),
(81, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 82, 1, 1, 1, 1),
(82, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 83, 1, 1, 1, 1),
(83, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 84, 1, 1, 1, 1),
(84, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 85, 1, 1, 1, 1),
(85, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 86, 1, 1, 1, 1),
(86, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 87, 1, 1, 1, 1),
(87, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 88, 1, 1, 1, 1),
(88, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 89, 1, 1, 1, 1),
(89, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 90, 1, 1, 1, 1),
(90, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 91, 1, 1, 1, 1),
(91, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 92, 1, 1, 1, 1),
(92, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 93, 1, 1, 1, 1),
(93, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 94, 1, 1, 1, 1),
(94, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 95, 1, 1, 1, 1),
(95, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 96, 1, 1, 1, 1),
(96, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 97, 1, 1, 1, 1),
(97, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 98, 1, 1, 1, 1),
(98, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 99, 1, 1, 1, 1),
(99, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 100, 1, 1, 1, 1),
(100, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 101, 1, 1, 1, 1),
(101, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 102, 1, 1, 1, 1),
(102, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 103, 1, 1, 1, 1),
(103, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 104, 1, 1, 1, 1),
(104, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 105, 1, 1, 1, 1),
(105, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 106, 1, 1, 1, 1),
(106, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 107, 1, 1, 1, 1),
(107, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 108, 1, 1, 1, 1),
(108, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 109, 1, 1, 1, 1),
(109, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 110, 1, 1, 1, 1),
(110, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 111, 1, 1, 1, 1),
(111, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 112, 1, 1, 1, 1),
(112, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 113, 1, 1, 1, 1),
(113, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 114, 1, 1, 1, 1),
(114, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 115, 1, 1, 1, 1),
(115, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 116, 1, 1, 1, 1),
(116, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 117, 1, 1, 1, 1),
(117, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 118, 1, 1, 1, 1),
(118, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 119, 1, 1, 1, 1),
(119, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 120, 1, 1, 1, 1),
(120, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 121, 1, 1, 1, 1),
(121, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 122, 1, 1, 1, 1),
(122, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 123, 1, 1, 1, 1),
(123, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 124, 1, 1, 1, 1),
(124, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 125, 1, 1, 1, 1),
(125, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 126, 1, 1, 1, 1),
(126, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 127, 1, 1, 1, 1),
(127, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 128, 1, 1, 1, 1),
(128, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 129, 1, 1, 1, 1),
(129, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 130, 1, 1, 1, 1),
(130, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 131, 1, 1, 1, 1),
(131, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 132, 1, 1, 1, 1),
(132, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 133, 1, 1, 1, 1),
(133, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 134, 1, 1, 1, 1),
(134, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 135, 1, 1, 1, 1),
(135, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 136, 1, 1, 1, 1),
(136, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 137, 1, 1, 1, 1),
(137, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 138, 1, 1, 1, 1),
(138, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 139, 1, 1, 1, 1),
(139, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 140, 1, 1, 1, 1),
(140, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 141, 1, 1, 1, 1),
(141, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 142, 1, 1, 1, 1),
(142, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 143, 1, 1, 1, 1),
(143, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 144, 1, 1, 1, 1),
(144, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 145, 1, 1, 1, 1),
(145, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 146, 1, 1, 1, 1),
(146, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 147, 1, 1, 1, 1),
(147, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 148, 1, 1, 1, 1),
(148, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 149, 1, 1, 1, 1),
(149, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 150, 1, 1, 1, 1),
(150, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 151, 1, 1, 1, 1),
(151, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 152, 1, 1, 1, 1),
(152, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 153, 1, 1, 1, 1),
(153, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 154, 1, 1, 1, 1),
(154, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 155, 1, 1, 1, 1),
(155, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 156, 1, 1, 1, 1),
(156, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 157, 1, 1, 1, 1),
(157, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 158, 1, 1, 1, 1),
(158, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 159, 1, 1, 1, 1),
(159, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 160, 1, 1, 1, 1),
(160, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 161, 1, 1, 1, 1),
(161, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 162, 1, 1, 1, 1),
(162, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 163, 1, 1, 1, 1),
(163, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 164, 1, 1, 1, 1),
(164, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 165, 1, 1, 1, 1),
(165, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 166, 1, 1, 1, 1),
(166, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 167, 1, 1, 1, 1),
(167, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 168, 1, 1, 1, 1),
(168, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 169, 1, 1, 1, 1),
(169, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 170, 1, 1, 1, 1),
(170, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 171, 1, 1, 1, 1),
(171, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 172, 1, 1, 1, 1),
(172, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 173, 1, 1, 1, 1),
(173, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 174, 1, 1, 1, 1),
(174, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 175, 1, 1, 1, 1),
(175, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 176, 1, 1, 1, 1),
(176, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 177, 1, 1, 1, 1),
(177, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 178, 1, 1, 1, 1),
(178, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 179, 1, 1, 1, 1),
(179, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 180, 1, 1, 1, 1),
(180, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 181, 1, 1, 1, 1),
(181, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 182, 1, 1, 1, 1),
(182, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 183, 1, 1, 1, 1),
(183, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 184, 1, 1, 1, 1),
(184, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 185, 1, 1, 1, 1),
(185, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 186, 1, 1, 1, 1),
(186, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 187, 1, 1, 1, 1),
(187, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 188, 1, 1, 1, 1),
(188, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 189, 1, 1, 1, 1),
(189, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 190, 1, 1, 1, 1),
(190, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 191, 1, 1, 1, 1),
(191, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 192, 1, 1, 1, 1),
(192, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 193, 1, 1, 1, 1),
(193, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 194, 1, 1, 1, 1),
(194, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 195, 1, 1, 1, 1),
(195, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 196, 1, 1, 1, 1),
(196, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 197, 1, 1, 1, 1),
(197, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 198, 1, 1, 1, 1),
(198, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 199, 1, 1, 1, 1),
(199, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 200, 1, 1, 1, 1),
(200, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 201, 1, 1, 1, 1),
(201, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 202, 1, 1, 1, 1),
(202, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 203, 1, 1, 1, 1),
(203, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 204, 1, 1, 1, 1),
(204, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 205, 1, 1, 1, 1),
(205, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 206, 1, 1, 1, 1),
(206, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 207, 1, 1, 1, 1),
(207, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 208, 1, 1, 1, 1),
(208, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 209, 1, 1, 1, 1),
(209, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 210, 1, 1, 1, 1),
(210, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 211, 1, 1, 1, 1),
(211, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 214, 1, 1, 1, 1),
(212, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 215, 1, 1, 1, 1),
(213, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 216, 1, 1, 1, 1),
(214, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 217, 1, 1, 1, 1),
(215, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 218, 1, 1, 1, 1),
(216, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 219, 1, 1, 1, 1),
(217, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 220, 1, 1, 1, 1),
(218, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 221, 1, 1, 1, 1),
(219, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 222, 1, 1, 1, 1),
(220, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 223, 1, 1, 1, 1),
(221, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 224, 1, 1, 1, 1),
(222, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 225, 1, 1, 1, 1),
(223, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 226, 1, 1, 1, 1),
(224, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 227, 1, 1, 1, 1),
(225, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 228, 1, 1, 1, 1),
(226, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 229, 1, 1, 1, 1),
(227, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 230, 1, 1, 1, 1),
(228, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 231, 1, 1, 1, 1),
(229, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 232, 1, 1, 1, 1),
(230, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 233, 1, 1, 1, 1),
(231, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 234, 1, 1, 1, 1),
(232, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 235, 1, 1, 1, 1),
(233, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 236, 1, 1, 1, 1),
(234, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 237, 1, 1, 1, 1),
(235, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 238, 1, 1, 1, 1),
(236, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 239, 1, 1, 1, 1),
(237, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 240, 1, 1, 1, 1),
(238, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 241, 1, 1, 1, 1),
(239, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 242, 1, 1, 1, 1),
(240, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 243, 1, 1, 1, 1),
(241, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 244, 1, 1, 1, 1),
(242, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 245, 1, 1, 1, 1),
(243, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 246, 1, 1, 1, 1),
(244, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 247, 1, 1, 1, 1),
(245, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 248, 1, 1, 1, 1),
(246, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 249, 1, 1, 1, 1),
(247, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 250, 1, 1, 1, 1),
(248, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 251, 1, 1, 1, 1),
(249, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 252, 1, 1, 1, 1),
(250, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 253, 1, 1, 1, 1),
(251, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 254, 1, 1, 1, 1),
(252, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 255, 1, 1, 1, 1),
(253, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 256, 1, 1, 1, 1),
(254, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 257, 1, 1, 1, 1),
(255, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 258, 1, 1, 1, 1),
(256, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 259, 1, 1, 1, 1),
(257, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 260, 1, 1, 1, 1),
(258, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 261, 1, 1, 1, 1),
(259, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 262, 1, 1, 1, 1),
(260, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 263, 1, 1, 1, 1),
(261, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 264, 1, 1, 1, 1),
(262, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 265, 1, 1, 1, 1),
(263, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 266, 1, 1, 1, 1),
(264, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 267, 1, 1, 1, 1),
(265, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 268, 1, 1, 1, 1),
(266, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 269, 1, 1, 1, 1),
(267, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 270, 1, 1, 1, 1),
(268, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 271, 1, 1, 1, 1),
(269, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 272, 1, 1, 1, 1),
(270, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 273, 1, 1, 1, 1),
(271, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 274, 1, 1, 1, 1),
(272, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 275, 1, 1, 1, 1),
(273, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 276, 1, 1, 1, 1),
(274, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 277, 1, 1, 1, 1),
(275, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 278, 1, 1, 1, 1),
(276, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 279, 1, 1, 1, 1),
(277, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 280, 1, 1, 1, 1),
(278, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 281, 1, 1, 1, 1),
(279, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 282, 1, 1, 1, 1),
(280, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 283, 1, 1, 1, 1),
(281, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 284, 1, 1, 1, 1),
(282, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 285, 1, 1, 1, 1),
(283, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 286, 1, 1, 1, 1),
(284, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 287, 1, 1, 1, 1),
(285, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 288, 1, 1, 1, 1),
(286, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 289, 1, 1, 1, 1),
(287, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 290, 1, 1, 1, 1),
(288, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 291, 1, 1, 1, 1),
(289, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 292, 1, 1, 1, 1),
(290, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 293, 1, 1, 1, 1),
(291, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 294, 1, 1, 1, 1),
(292, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 295, 1, 1, 1, 1),
(293, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 296, 1, 1, 1, 1),
(294, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 297, 1, 1, 1, 1),
(295, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 298, 1, 1, 1, 1),
(296, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 299, 1, 1, 1, 1),
(297, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 300, 1, 1, 1, 1),
(298, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 301, 1, 1, 1, 1),
(299, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 302, 1, 1, 1, 1),
(300, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 303, 1, 1, 1, 1),
(301, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 304, 1, 1, 1, 1),
(302, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 305, 1, 1, 1, 1),
(303, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 306, 1, 1, 1, 1),
(304, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 307, 1, 1, 1, 1),
(305, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 308, 1, 1, 1, 1),
(306, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 309, 1, 1, 1, 1),
(307, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 310, 1, 1, 1, 1),
(308, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 311, 1, 1, 1, 1),
(309, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 312, 1, 1, 1, 1),
(310, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 313, 1, 1, 1, 1),
(311, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 314, 1, 1, 1, 1),
(312, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 315, 1, 1, 1, 1),
(313, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 316, 1, 1, 1, 1),
(314, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 317, 1, 1, 1, 1),
(315, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 318, 1, 1, 1, 1),
(316, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 319, 1, 1, 1, 1),
(317, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 320, 1, 1, 1, 1),
(318, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 321, 1, 1, 1, 1),
(319, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 322, 1, 1, 1, 1),
(320, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 323, 1, 1, 1, 1),
(321, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 324, 1, 1, 1, 1),
(322, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 325, 1, 1, 1, 1),
(323, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 326, 1, 1, 1, 1),
(324, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 327, 1, 1, 1, 1),
(325, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 328, 1, 1, 1, 1),
(326, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 329, 1, 1, 1, 1),
(327, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 330, 1, 1, 1, 1),
(328, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 331, 1, 1, 1, 1),
(329, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 332, 1, 1, 1, 1),
(330, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 333, 1, 1, 1, 1),
(331, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 334, 1, 1, 1, 1),
(332, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 335, 1, 1, 1, 1),
(333, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 336, 1, 1, 1, 1),
(334, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 337, 1, 1, 1, 1),
(335, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 338, 1, 1, 1, 1),
(336, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 339, 1, 1, 1, 1),
(337, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 340, 1, 1, 1, 1),
(338, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 341, 1, 1, 1, 1),
(339, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 342, 1, 1, 1, 1),
(340, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 343, 1, 1, 1, 1),
(341, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 344, 1, 1, 1, 1),
(342, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 345, 1, 1, 1, 1),
(343, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 346, 1, 1, 1, 1),
(344, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 347, 1, 1, 1, 1),
(345, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 348, 1, 1, 1, 1),
(346, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 349, 1, 1, 1, 1),
(347, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 350, 1, 1, 1, 1),
(348, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 351, 1, 1, 1, 1),
(349, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 352, 1, 1, 1, 1),
(350, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 353, 1, 1, 1, 1),
(351, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 354, 1, 1, 1, 1),
(352, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 355, 1, 1, 1, 1),
(353, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 356, 1, 1, 1, 1),
(354, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 357, 1, 1, 1, 1),
(355, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 358, 1, 1, 1, 1),
(356, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 359, 1, 1, 1, 1),
(357, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 360, 1, 1, 1, 1),
(358, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 361, 1, 1, 1, 1),
(359, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 362, 1, 1, 1, 1),
(360, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 363, 1, 1, 1, 1),
(361, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 364, 1, 1, 1, 1),
(362, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 365, 1, 1, 1, 1),
(363, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 366, 1, 1, 1, 1),
(364, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 367, 1, 1, 1, 1),
(365, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 368, 1, 1, 1, 1),
(366, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 369, 1, 1, 1, 1),
(367, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 370, 1, 1, 1, 1),
(368, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 371, 1, 1, 1, 1),
(369, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 372, 1, 1, 1, 1),
(370, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 373, 1, 1, 1, 1),
(371, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 374, 1, 1, 1, 1),
(372, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 375, 1, 1, 1, 1),
(373, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 376, 1, 1, 1, 1),
(374, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 377, 1, 1, 1, 1),
(375, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 378, 1, 1, 1, 1),
(376, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 379, 1, 1, 1, 1),
(377, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 380, 1, 1, 1, 1),
(378, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 381, 1, 1, 1, 1),
(379, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 382, 1, 1, 1, 1),
(380, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 383, 1, 1, 1, 1),
(381, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 384, 1, 1, 1, 1),
(382, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 385, 1, 1, 1, 1),
(383, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 386, 1, 1, 1, 1),
(384, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 387, 1, 1, 1, 1),
(385, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 388, 1, 1, 1, 1),
(386, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 389, 1, 1, 1, 1),
(387, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 390, 1, 1, 1, 1),
(388, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 391, 1, 1, 1, 1),
(389, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 392, 1, 1, 1, 1),
(390, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 393, 1, 1, 1, 1),
(391, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 394, 1, 1, 1, 1),
(392, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 395, 1, 1, 1, 1),
(393, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 396, 1, 1, 1, 1),
(394, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 1, 4, 1, 1, 1),
(395, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 2, 4, 1, 1, 1),
(396, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 3, 4, 1, 1, 1),
(397, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 4, 4, 1, 1, 1),
(398, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 5, 4, 1, 1, 1),
(399, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 6, 4, 1, 1, 1),
(400, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 7, 4, 1, 1, 1),
(401, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 8, 4, 1, 1, 1),
(402, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 9, 4, 1, 1, 1),
(403, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 10, 4, 1, 1, 1),
(404, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 11, 4, 1, 1, 1),
(405, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 12, 4, 1, 1, 1),
(406, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 13, 4, 1, 1, 1),
(407, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 14, 4, 1, 1, 1),
(408, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 15, 4, 1, 1, 1),
(409, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 16, 4, 1, 1, 1),
(410, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 17, 4, 1, 1, 1),
(411, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 18, 4, 1, 1, 1),
(412, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 19, 4, 1, 1, 1),
(413, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 20, 4, 1, 1, 1),
(414, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 21, 4, 1, 1, 1),
(415, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 22, 4, 1, 1, 1),
(416, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 23, 4, 1, 1, 1),
(417, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 24, 4, 1, 1, 1),
(418, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 25, 4, 1, 1, 1),
(419, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 26, 4, 1, 1, 1),
(420, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 27, 4, 1, 1, 1),
(421, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 28, 4, 1, 1, 1),
(422, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 29, 4, 1, 1, 1),
(423, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 30, 4, 1, 1, 1),
(424, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 31, 4, 1, 1, 1),
(425, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 32, 4, 1, 1, 1),
(426, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 33, 4, 1, 1, 1),
(427, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 34, 4, 1, 1, 1),
(428, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 35, 4, 1, 1, 1),
(429, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 36, 4, 1, 1, 1),
(430, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 37, 4, 1, 1, 1),
(431, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 38, 4, 1, 1, 1),
(432, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 39, 4, 1, 1, 1),
(433, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 40, 4, 1, 1, 1),
(434, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 41, 4, 1, 1, 1),
(435, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 42, 4, 1, 1, 1),
(436, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 43, 4, 1, 1, 1),
(437, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 44, 4, 1, 1, 1),
(438, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 45, 4, 1, 1, 1),
(439, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 46, 4, 1, 1, 1),
(440, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 47, 4, 1, 1, 1),
(441, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 48, 4, 1, 1, 1),
(442, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 49, 4, 1, 1, 1),
(443, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 50, 4, 1, 1, 1),
(444, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 51, 4, 1, 1, 1),
(445, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 52, 4, 1, 1, 1),
(446, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 53, 4, 1, 1, 1),
(447, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 54, 4, 1, 1, 1),
(448, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 55, 4, 1, 1, 1),
(449, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 56, 4, 1, 1, 1),
(450, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 57, 4, 1, 1, 1),
(451, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 58, 4, 1, 1, 1),
(452, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 59, 4, 1, 1, 1),
(453, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 60, 4, 1, 1, 1),
(454, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 61, 4, 1, 1, 1),
(455, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 62, 4, 1, 1, 1),
(456, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 63, 4, 1, 1, 1),
(457, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 64, 4, 1, 1, 1),
(458, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 65, 4, 1, 1, 1),
(459, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 66, 4, 1, 1, 1),
(460, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 67, 4, 1, 1, 1),
(461, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 68, 4, 1, 1, 1),
(462, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 69, 4, 1, 1, 1),
(463, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 70, 4, 1, 1, 1),
(464, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 71, 4, 1, 1, 1),
(465, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 72, 4, 1, 1, 1),
(466, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 73, 4, 1, 1, 1),
(467, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 74, 4, 1, 1, 1),
(468, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 75, 4, 1, 1, 1),
(469, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 76, 4, 1, 1, 1),
(470, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 77, 4, 1, 1, 1),
(471, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 79, 4, 1, 1, 1),
(472, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 80, 4, 1, 1, 1),
(473, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 81, 4, 1, 1, 1),
(474, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 82, 4, 1, 1, 1),
(475, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 83, 4, 1, 1, 1),
(476, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 84, 4, 1, 1, 1),
(477, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 85, 4, 1, 1, 1),
(478, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 86, 4, 1, 1, 1),
(479, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 87, 4, 1, 1, 1),
(480, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 88, 4, 1, 1, 1),
(481, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 89, 4, 1, 1, 1),
(482, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 90, 4, 1, 1, 1),
(483, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 91, 4, 1, 1, 1),
(484, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 92, 4, 1, 1, 1),
(485, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 93, 4, 1, 1, 1),
(486, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 94, 4, 1, 1, 1),
(487, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 95, 4, 1, 1, 1),
(488, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 96, 4, 1, 1, 1),
(489, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 97, 4, 1, 1, 1),
(490, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 98, 4, 1, 1, 1),
(491, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 99, 4, 1, 1, 1),
(492, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 100, 4, 1, 1, 1),
(493, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 101, 4, 1, 1, 1),
(494, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 102, 4, 1, 1, 1),
(495, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 103, 4, 1, 1, 1),
(496, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 104, 4, 1, 1, 1),
(497, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 105, 4, 1, 1, 1),
(498, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 106, 4, 1, 1, 1),
(499, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 107, 4, 1, 1, 1),
(500, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 108, 4, 1, 1, 1),
(501, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 109, 4, 1, 1, 1),
(502, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 110, 4, 1, 1, 1),
(503, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 111, 4, 1, 1, 1),
(504, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 112, 4, 1, 1, 1),
(505, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 113, 4, 1, 1, 1),
(506, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 114, 4, 1, 1, 1),
(507, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 115, 4, 1, 1, 1),
(508, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 116, 4, 1, 1, 1),
(509, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 117, 4, 1, 1, 1),
(510, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 118, 4, 1, 1, 1),
(511, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 119, 4, 1, 1, 1),
(512, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 120, 4, 1, 1, 1),
(513, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 121, 4, 1, 1, 1),
(514, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 122, 4, 1, 1, 1),
(515, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 123, 4, 1, 1, 1),
(516, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 124, 4, 1, 1, 1),
(517, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 125, 4, 1, 1, 1),
(518, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 126, 4, 1, 1, 1),
(519, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 127, 4, 1, 1, 1),
(520, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 128, 4, 1, 1, 1),
(521, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 129, 4, 1, 1, 1),
(522, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 130, 4, 1, 1, 1),
(523, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 131, 4, 1, 1, 1),
(524, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 132, 4, 1, 1, 1),
(525, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 133, 4, 1, 1, 1),
(526, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 134, 4, 1, 1, 1),
(527, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 135, 4, 1, 1, 1),
(528, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 136, 4, 1, 1, 1),
(529, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 137, 4, 1, 1, 1),
(530, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 138, 4, 1, 1, 1),
(531, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 139, 4, 1, 1, 1),
(532, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 140, 4, 1, 1, 1),
(533, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 141, 4, 1, 1, 1),
(534, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 142, 4, 1, 1, 1),
(535, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 143, 4, 1, 1, 1),
(536, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 144, 4, 1, 1, 1),
(537, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 145, 4, 1, 1, 1),
(538, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 146, 4, 1, 1, 1),
(539, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 147, 4, 1, 1, 1),
(540, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 148, 4, 1, 1, 1),
(541, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 149, 4, 1, 1, 1),
(542, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 150, 4, 1, 1, 1),
(543, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 151, 4, 1, 1, 1),
(544, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 152, 4, 1, 1, 1),
(545, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 153, 4, 1, 1, 1),
(546, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 154, 4, 1, 1, 1),
(547, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 155, 4, 1, 1, 1),
(548, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 156, 4, 1, 1, 1),
(549, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 157, 4, 1, 1, 1),
(550, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 158, 4, 1, 1, 1),
(551, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 159, 4, 1, 1, 1),
(552, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 160, 4, 1, 1, 1),
(553, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 161, 4, 1, 1, 1),
(554, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 162, 4, 1, 1, 1),
(555, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 163, 4, 1, 1, 1),
(556, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 164, 4, 1, 1, 1),
(557, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 165, 4, 1, 1, 1),
(558, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 166, 4, 1, 1, 1),
(559, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 167, 4, 1, 1, 1),
(560, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 168, 4, 1, 1, 1),
(561, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 169, 4, 1, 1, 1),
(562, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 170, 4, 1, 1, 1),
(563, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 171, 4, 1, 1, 1),
(564, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 172, 4, 1, 1, 1),
(565, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 173, 4, 1, 1, 1),
(566, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 174, 4, 1, 1, 1),
(567, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 175, 4, 1, 1, 1),
(568, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 176, 4, 1, 1, 1),
(569, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 177, 4, 1, 1, 1),
(570, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 178, 4, 1, 1, 1),
(571, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 179, 4, 1, 1, 1),
(572, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 180, 4, 1, 1, 1),
(573, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 181, 4, 1, 1, 1),
(574, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 182, 4, 1, 1, 1),
(575, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 183, 4, 1, 1, 1),
(576, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 184, 4, 1, 1, 1),
(577, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 185, 4, 1, 1, 1),
(578, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 186, 4, 1, 1, 1),
(579, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 187, 4, 1, 1, 1),
(580, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 188, 4, 1, 1, 1),
(581, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 189, 4, 1, 1, 1),
(582, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 190, 4, 1, 1, 1),
(583, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 191, 4, 1, 1, 1),
(584, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 192, 4, 1, 1, 1),
(585, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 193, 4, 1, 1, 1),
(586, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 194, 4, 1, 1, 1),
(587, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 195, 4, 1, 1, 1),
(588, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 196, 4, 1, 1, 1),
(589, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 197, 4, 1, 1, 1),
(590, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 198, 4, 1, 1, 1),
(591, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 199, 4, 1, 1, 1),
(592, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 200, 4, 1, 1, 1),
(593, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 201, 4, 1, 1, 1),
(594, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 202, 4, 1, 1, 1),
(595, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 203, 4, 1, 1, 1),
(596, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 204, 4, 1, 1, 1),
(597, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 205, 4, 1, 1, 1),
(598, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 206, 4, 1, 1, 1),
(599, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 207, 4, 1, 1, 1),
(600, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 208, 4, 1, 1, 1),
(601, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 209, 4, 1, 1, 1),
(602, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 210, 4, 1, 1, 1),
(603, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 211, 4, 1, 1, 1),
(604, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 214, 4, 1, 1, 1),
(605, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 215, 4, 1, 1, 1),
(606, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 216, 4, 1, 1, 1),
(607, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 217, 4, 1, 1, 1),
(608, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 218, 4, 1, 1, 1),
(609, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 219, 4, 1, 1, 1),
(610, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 220, 4, 1, 1, 1),
(611, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 221, 4, 1, 1, 1),
(612, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 222, 4, 1, 1, 1),
(613, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 223, 4, 1, 1, 1),
(614, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 224, 4, 1, 1, 1),
(615, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 225, 4, 1, 1, 1),
(616, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 226, 4, 1, 1, 1),
(617, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 227, 4, 1, 1, 1),
(618, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 228, 4, 1, 1, 1),
(619, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 229, 4, 1, 1, 1),
(620, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 230, 4, 1, 1, 1),
(621, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 231, 4, 1, 1, 1),
(622, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 232, 4, 1, 1, 1),
(623, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 233, 4, 1, 1, 1),
(624, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 234, 4, 1, 1, 1),
(625, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 235, 4, 1, 1, 1),
(626, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 236, 4, 1, 1, 1),
(627, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 237, 4, 1, 1, 1),
(628, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 238, 4, 1, 1, 1),
(629, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 239, 4, 1, 1, 1),
(630, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 240, 4, 1, 1, 1),
(631, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 241, 4, 1, 1, 1),
(632, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 242, 4, 1, 1, 1),
(633, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 243, 4, 1, 1, 1),
(634, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 244, 4, 1, 1, 1),
(635, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 245, 4, 1, 1, 1),
(636, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 246, 4, 1, 1, 1),
(637, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 247, 4, 1, 1, 1),
(638, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 248, 4, 1, 1, 1),
(639, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 249, 4, 1, 1, 1),
(640, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 250, 4, 1, 1, 1),
(641, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 251, 4, 1, 1, 1),
(642, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 252, 4, 1, 1, 1),
(643, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 253, 4, 1, 1, 1),
(644, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 254, 4, 1, 1, 1),
(645, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 255, 4, 1, 1, 1),
(646, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 256, 4, 1, 1, 1),
(647, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 257, 4, 1, 1, 1),
(648, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 258, 4, 1, 1, 1),
(649, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 259, 4, 1, 1, 1),
(650, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 260, 4, 1, 1, 1),
(651, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 261, 4, 1, 1, 1),
(652, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 262, 4, 1, 1, 1),
(653, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 263, 4, 1, 1, 1),
(654, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 264, 4, 1, 1, 1),
(655, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 265, 4, 1, 1, 1),
(656, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 266, 4, 1, 1, 1),
(657, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 267, 4, 1, 1, 1),
(658, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 268, 4, 1, 1, 1),
(659, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 269, 4, 1, 1, 1),
(660, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 270, 4, 1, 1, 1),
(661, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 271, 4, 1, 1, 1),
(662, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 272, 4, 1, 1, 1),
(663, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 273, 4, 1, 1, 1),
(664, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 274, 4, 1, 1, 1),
(665, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 275, 4, 1, 1, 1),
(666, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 276, 4, 1, 1, 1),
(667, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 277, 4, 1, 1, 1),
(668, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 278, 4, 1, 1, 1),
(669, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 279, 4, 1, 1, 1),
(670, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 280, 4, 1, 1, 1),
(671, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 281, 4, 1, 1, 1),
(672, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 282, 4, 1, 1, 1),
(673, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 283, 4, 1, 1, 1),
(674, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 284, 4, 1, 1, 1),
(675, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 285, 4, 1, 1, 1),
(676, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 286, 4, 1, 1, 1),
(677, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 287, 4, 1, 1, 1),
(678, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 288, 4, 1, 1, 1),
(679, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 289, 4, 1, 1, 1),
(680, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 290, 4, 1, 1, 1),
(681, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 291, 4, 1, 1, 1),
(682, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 292, 4, 1, 1, 1),
(683, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 293, 4, 1, 1, 1),
(684, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 294, 4, 1, 1, 1),
(685, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 295, 4, 1, 1, 1),
(686, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 296, 4, 1, 1, 1),
(687, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 297, 4, 1, 1, 1),
(688, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 298, 4, 1, 1, 1),
(689, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 299, 4, 1, 1, 1),
(690, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 300, 4, 1, 1, 1),
(691, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 301, 4, 1, 1, 1),
(692, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 302, 4, 1, 1, 1),
(693, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 303, 4, 1, 1, 1),
(694, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 304, 4, 1, 1, 1),
(695, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 305, 4, 1, 1, 1),
(696, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 306, 4, 1, 1, 1),
(697, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 307, 4, 1, 1, 1),
(698, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 308, 4, 1, 1, 1),
(699, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 309, 4, 1, 1, 1),
(700, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 310, 4, 1, 1, 1),
(701, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 311, 4, 1, 1, 1),
(702, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 312, 4, 1, 1, 1),
(703, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 313, 4, 1, 1, 1),
(704, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 314, 4, 1, 1, 1),
(705, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 315, 4, 1, 1, 1),
(706, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 316, 4, 1, 1, 1);
INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(707, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 317, 4, 1, 1, 1),
(708, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 318, 4, 1, 1, 1),
(709, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 319, 4, 1, 1, 1),
(710, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 320, 4, 1, 1, 1),
(711, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 321, 4, 1, 1, 1),
(712, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 322, 4, 1, 1, 1),
(713, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 323, 4, 1, 1, 1),
(714, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 324, 4, 1, 1, 1),
(715, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 325, 4, 1, 1, 1),
(716, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 326, 4, 1, 1, 1),
(717, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 327, 4, 1, 1, 1),
(718, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 328, 4, 1, 1, 1),
(719, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 329, 4, 1, 1, 1),
(720, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 330, 4, 1, 1, 1),
(721, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 331, 4, 1, 1, 1),
(722, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 332, 4, 1, 1, 1),
(723, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 333, 4, 1, 1, 1),
(724, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 334, 4, 1, 1, 1),
(725, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 335, 4, 1, 1, 1),
(726, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 336, 4, 1, 1, 1),
(727, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 337, 4, 1, 1, 1),
(728, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 338, 4, 1, 1, 1),
(729, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 339, 4, 1, 1, 1),
(730, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 340, 4, 1, 1, 1),
(731, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 341, 4, 1, 1, 1),
(732, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 342, 4, 1, 1, 1),
(733, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 343, 4, 1, 1, 1),
(734, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 344, 4, 1, 1, 1),
(735, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 345, 4, 1, 1, 1),
(736, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 346, 4, 1, 1, 1),
(737, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 347, 4, 1, 1, 1),
(738, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 348, 4, 1, 1, 1),
(739, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 349, 4, 1, 1, 1),
(740, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 350, 4, 1, 1, 1),
(741, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 351, 4, 1, 1, 1),
(742, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 352, 4, 1, 1, 1),
(743, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 353, 4, 1, 1, 1),
(744, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 354, 4, 1, 1, 1),
(745, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 355, 4, 1, 1, 1),
(746, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 356, 4, 1, 1, 1),
(747, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 357, 4, 1, 1, 1),
(748, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 358, 4, 1, 1, 1),
(749, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 359, 4, 1, 1, 1),
(750, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 360, 4, 1, 1, 1),
(751, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 361, 4, 1, 1, 1),
(752, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 362, 4, 1, 1, 1),
(753, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 363, 4, 1, 1, 1),
(754, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 364, 4, 1, 1, 1),
(755, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 365, 4, 1, 1, 1),
(756, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 366, 4, 1, 1, 1),
(757, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 367, 4, 1, 1, 1),
(758, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 368, 4, 1, 1, 1),
(759, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 369, 4, 1, 1, 1),
(760, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 370, 4, 1, 1, 1),
(761, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 371, 4, 1, 1, 1),
(762, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 372, 4, 1, 1, 1),
(763, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 373, 4, 1, 1, 1),
(764, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 374, 4, 1, 1, 1),
(765, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 375, 4, 1, 1, 1),
(766, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 376, 4, 1, 1, 1),
(767, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 377, 4, 1, 1, 1),
(768, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 378, 4, 1, 1, 1),
(769, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 379, 4, 1, 1, 1),
(770, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 380, 4, 1, 1, 1),
(771, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 381, 4, 1, 1, 1),
(772, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 382, 4, 1, 1, 1),
(773, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 383, 4, 1, 1, 1),
(774, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 384, 4, 1, 1, 1),
(775, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 385, 4, 1, 1, 1),
(776, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 386, 4, 1, 1, 1),
(777, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 387, 4, 1, 1, 1),
(778, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 388, 4, 1, 1, 1),
(779, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 389, 4, 1, 1, 1),
(780, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 390, 4, 1, 1, 1),
(781, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 391, 4, 1, 1, 1),
(782, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 392, 4, 1, 1, 1),
(783, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 393, 4, 1, 1, 1),
(784, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 394, 4, 1, 1, 1),
(785, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 395, 4, 1, 1, 1),
(786, 1, '2019-11-13 00:22:36', '2019-11-13 00:22:36', 396, 4, 1, 1, 1),
(2751, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 394, 5, 1, 1, 1),
(2750, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 393, 5, 1, 1, 1),
(2749, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 392, 5, 1, 1, 1),
(2748, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 391, 5, 1, 1, 1),
(2747, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 390, 5, 1, 1, 1),
(2746, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 389, 5, 1, 1, 1),
(2745, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 388, 5, 1, 1, 1),
(2744, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 387, 5, 1, 1, 1),
(2743, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 386, 5, 1, 1, 1),
(2742, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 385, 5, 1, 1, 1),
(2741, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 384, 5, 1, 1, 1),
(2740, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 383, 5, 1, 1, 1),
(2739, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 382, 5, 1, 1, 1),
(2738, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 381, 5, 1, 1, 1),
(2737, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 380, 5, 1, 1, 1),
(2736, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 379, 5, 1, 1, 1),
(2735, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 378, 5, 1, 1, 1),
(2734, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 377, 5, 1, 1, 1),
(2733, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 376, 5, 1, 1, 1),
(2732, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 375, 5, 1, 1, 1),
(2731, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 374, 5, 1, 1, 1),
(2730, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 373, 5, 1, 1, 1),
(2729, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 372, 5, 1, 1, 1),
(2728, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 371, 5, 1, 1, 1),
(2727, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 370, 5, 1, 1, 1),
(2726, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 369, 5, 1, 1, 1),
(2725, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 368, 5, 1, 1, 1),
(2724, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 367, 5, 1, 1, 1),
(2723, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 366, 5, 1, 1, 1),
(2722, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 365, 5, 1, 1, 1),
(2721, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 364, 5, 1, 1, 1),
(2720, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 363, 5, 1, 1, 1),
(2719, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 362, 5, 1, 1, 1),
(2718, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 361, 5, 1, 1, 1),
(2717, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 360, 5, 1, 1, 1),
(2716, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 359, 5, 1, 1, 1),
(2715, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 358, 5, 1, 1, 1),
(2714, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 357, 5, 1, 1, 1),
(2713, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 356, 5, 1, 1, 1),
(2712, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 355, 5, 1, 1, 1),
(2711, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 354, 5, 1, 1, 1),
(2710, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 353, 5, 1, 1, 1),
(2709, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 352, 5, 1, 1, 1),
(2708, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 351, 5, 1, 1, 1),
(2707, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 350, 5, 1, 1, 1),
(2706, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 349, 5, 1, 1, 1),
(2705, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 348, 5, 1, 1, 1),
(2704, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 347, 5, 1, 1, 1),
(2703, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 346, 5, 1, 1, 1),
(2702, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 345, 5, 1, 1, 1),
(2701, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 344, 5, 1, 1, 1),
(2700, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 343, 5, 1, 1, 1),
(2699, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 342, 5, 1, 1, 1),
(2698, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 341, 5, 1, 1, 1),
(2697, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 340, 5, 1, 1, 1),
(2696, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 339, 5, 1, 1, 1),
(2695, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 338, 5, 1, 1, 1),
(2694, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 337, 5, 1, 1, 1),
(2693, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 336, 5, 1, 1, 1),
(2692, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 335, 5, 1, 1, 1),
(2691, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 334, 5, 1, 1, 1),
(2690, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 333, 5, 1, 1, 1),
(2689, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 332, 5, 1, 1, 1),
(2688, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 331, 5, 1, 1, 1),
(2687, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 330, 5, 1, 1, 1),
(2686, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 329, 5, 1, 1, 1),
(2685, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 328, 5, 1, 1, 1),
(2684, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 327, 5, 1, 1, 1),
(2683, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 326, 5, 1, 1, 1),
(2682, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 325, 5, 1, 1, 1),
(2681, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 324, 5, 1, 1, 1),
(2680, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 323, 5, 1, 1, 1),
(2679, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 322, 5, 1, 1, 1),
(2678, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 321, 5, 1, 1, 1),
(2677, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 320, 5, 1, 1, 1),
(2676, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 319, 5, 1, 1, 1),
(2675, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 318, 5, 1, 1, 1),
(2674, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 317, 5, 1, 1, 1),
(2673, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 316, 5, 1, 1, 1),
(2672, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 315, 5, 1, 1, 1),
(2671, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 314, 5, 1, 1, 1),
(2670, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 313, 5, 1, 1, 1),
(2669, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 312, 5, 1, 1, 1),
(2668, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 311, 5, 1, 1, 1),
(2667, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 310, 5, 1, 1, 1),
(2666, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 309, 5, 1, 1, 1),
(2665, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 308, 5, 1, 1, 1),
(2664, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 307, 5, 1, 1, 1),
(2663, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 306, 5, 1, 1, 1),
(2662, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 305, 5, 1, 1, 1),
(2661, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 304, 5, 1, 1, 1),
(2660, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 303, 5, 1, 1, 1),
(2659, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 302, 5, 1, 1, 1),
(2658, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 301, 5, 1, 1, 1),
(2657, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 300, 5, 1, 1, 1),
(2656, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 299, 5, 1, 1, 1),
(2655, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 298, 5, 1, 1, 1),
(2654, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 297, 5, 1, 1, 1),
(2653, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 296, 5, 1, 1, 1),
(2652, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 295, 5, 1, 1, 1),
(2651, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 294, 5, 1, 1, 1),
(2650, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 293, 5, 1, 1, 1),
(2649, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 292, 5, 1, 1, 1),
(2648, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 291, 5, 1, 1, 1),
(2647, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 290, 5, 1, 1, 1),
(2646, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 289, 5, 1, 1, 1),
(2645, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 288, 5, 1, 1, 1),
(2644, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 287, 5, 1, 1, 1),
(2643, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 286, 5, 1, 1, 1),
(2642, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 285, 5, 1, 1, 1),
(2641, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 284, 5, 1, 1, 1),
(2640, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 283, 5, 1, 1, 1),
(2639, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 282, 5, 1, 1, 1),
(2638, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 281, 5, 1, 1, 1),
(2637, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 280, 5, 1, 1, 1),
(2636, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 279, 5, 1, 1, 1),
(2635, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 278, 5, 1, 1, 1),
(2634, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 277, 5, 1, 1, 1),
(2633, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 276, 5, 1, 1, 1),
(2632, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 275, 5, 1, 1, 1),
(2631, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 274, 5, 1, 1, 1),
(2630, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 273, 5, 1, 1, 1),
(2629, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 272, 5, 1, 1, 1),
(2628, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 271, 5, 1, 1, 1),
(2627, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 270, 5, 1, 1, 1),
(2626, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 269, 5, 1, 1, 1),
(2625, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 268, 5, 1, 1, 1),
(2624, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 267, 5, 1, 1, 1),
(2623, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 266, 5, 1, 1, 1),
(2622, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 265, 5, 1, 1, 1),
(2621, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 264, 5, 1, 1, 1),
(2620, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 263, 5, 1, 1, 1),
(2619, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 262, 5, 1, 1, 1),
(2618, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 261, 5, 1, 1, 1),
(2617, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 260, 5, 1, 1, 1),
(2616, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 259, 5, 1, 1, 1),
(2615, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 258, 5, 1, 1, 1),
(2614, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 257, 5, 1, 1, 1),
(2613, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 256, 5, 1, 1, 1),
(2612, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 255, 5, 1, 1, 1),
(2611, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 254, 5, 1, 1, 1),
(2610, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 253, 5, 1, 1, 1),
(2609, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 252, 5, 1, 1, 1),
(2608, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 251, 5, 1, 1, 1),
(2607, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 250, 5, 1, 1, 1),
(2606, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 249, 5, 1, 1, 1),
(2605, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 248, 5, 1, 1, 1),
(2604, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 247, 5, 1, 1, 1),
(2603, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 246, 5, 1, 1, 1),
(2602, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 245, 5, 1, 1, 1),
(2601, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 244, 5, 1, 1, 1),
(2600, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 243, 5, 1, 1, 1),
(2599, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 242, 5, 1, 1, 1),
(2598, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 241, 5, 1, 1, 1),
(2597, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 240, 5, 1, 1, 1),
(2596, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 239, 5, 1, 1, 1),
(2595, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 238, 5, 1, 1, 1),
(2594, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 237, 5, 1, 1, 1),
(2593, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 236, 5, 1, 1, 1),
(2592, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 235, 5, 1, 1, 1),
(2591, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 234, 5, 1, 1, 1),
(2590, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 233, 5, 1, 1, 1),
(2589, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 232, 5, 1, 1, 1),
(2588, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 231, 5, 1, 1, 1),
(2587, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 230, 5, 1, 1, 1),
(2586, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 229, 5, 1, 1, 1),
(2585, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 228, 5, 1, 1, 1),
(2584, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 227, 5, 1, 1, 1),
(2583, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 226, 5, 1, 1, 1),
(2582, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 225, 5, 1, 1, 1),
(2581, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 224, 5, 1, 1, 1),
(2580, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 223, 5, 1, 1, 1),
(2579, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 222, 5, 1, 1, 1),
(2578, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 221, 5, 1, 1, 1),
(2577, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 220, 5, 1, 1, 1),
(2576, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 219, 5, 1, 1, 1),
(2575, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 218, 5, 1, 1, 1),
(2574, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 217, 5, 1, 1, 1),
(2573, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 216, 5, 1, 1, 1),
(2572, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 215, 5, 1, 1, 1),
(2571, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 214, 5, 1, 1, 1),
(2570, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 211, 5, 1, 1, 1),
(2569, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 210, 5, 1, 1, 1),
(2568, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 209, 5, 1, 1, 1),
(2567, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 208, 5, 1, 1, 1),
(2566, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 207, 5, 1, 1, 1),
(2565, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 396, 5, 1, 1, 1),
(2564, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 395, 5, 1, 1, 1),
(2563, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 206, 5, 1, 1, 1),
(2562, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 205, 5, 1, 1, 1),
(2561, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 204, 5, 1, 1, 1),
(2560, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 203, 5, 1, 1, 1),
(2559, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 202, 5, 1, 1, 1),
(2558, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 201, 5, 1, 1, 1),
(2557, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 200, 5, 1, 1, 1),
(2556, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 199, 5, 1, 1, 1),
(2555, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 198, 5, 1, 1, 1),
(2554, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 197, 5, 1, 1, 1),
(2553, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 196, 5, 1, 1, 1),
(2552, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 195, 5, 1, 1, 1),
(2551, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 194, 5, 1, 1, 1),
(2550, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 193, 5, 1, 1, 1),
(2549, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 192, 5, 1, 1, 1),
(2548, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 191, 5, 1, 1, 1),
(2547, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 190, 5, 1, 1, 1),
(2546, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 189, 5, 1, 1, 1),
(2545, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 188, 5, 1, 1, 1),
(2544, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 187, 5, 1, 1, 1),
(2543, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 186, 5, 1, 1, 1),
(2542, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 185, 5, 1, 1, 1),
(2541, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 184, 5, 1, 1, 1),
(2540, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 183, 5, 1, 1, 1),
(2539, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 182, 5, 1, 1, 1),
(2538, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 181, 5, 1, 1, 1),
(2537, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 180, 5, 1, 1, 1),
(2536, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 179, 5, 1, 1, 1),
(2535, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 178, 5, 1, 1, 1),
(2534, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 177, 5, 1, 1, 1),
(2533, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 176, 5, 1, 1, 1),
(2532, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 175, 5, 1, 1, 1),
(2531, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 174, 5, 1, 1, 1),
(2530, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 173, 5, 1, 1, 1),
(2529, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 172, 5, 1, 1, 1),
(2528, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 171, 5, 1, 1, 1),
(2527, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 170, 5, 1, 1, 1),
(2526, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 169, 5, 1, 1, 1),
(2525, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 168, 5, 1, 1, 1),
(2524, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 167, 5, 1, 1, 1),
(2523, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 166, 5, 1, 1, 1),
(2522, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 165, 5, 1, 1, 1),
(2521, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 164, 5, 1, 1, 1),
(2520, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 163, 5, 1, 1, 1),
(2519, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 162, 5, 1, 1, 1),
(2518, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 161, 5, 1, 1, 1),
(2517, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 160, 5, 1, 1, 1),
(2516, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 159, 5, 1, 1, 1),
(2515, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 158, 5, 1, 1, 1),
(2514, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 157, 5, 1, 1, 1),
(2513, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 156, 5, 1, 1, 1),
(2512, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 155, 5, 1, 1, 1),
(2511, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 154, 5, 1, 1, 1),
(2510, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 153, 5, 1, 1, 1),
(2509, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 152, 5, 1, 1, 1),
(2508, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 151, 5, 1, 1, 1),
(2507, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 150, 5, 1, 1, 1),
(2506, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 149, 5, 1, 1, 1),
(2505, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 148, 5, 1, 1, 1),
(2504, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 147, 5, 1, 1, 1),
(2503, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 146, 5, 1, 1, 1),
(2502, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 145, 5, 1, 1, 1),
(2501, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 144, 5, 1, 1, 1),
(2500, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 143, 5, 1, 1, 1),
(2499, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 142, 5, 1, 1, 1),
(2498, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 141, 5, 1, 1, 1),
(2497, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 140, 5, 1, 1, 1),
(2496, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 139, 5, 1, 1, 1),
(2495, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 138, 5, 1, 1, 1),
(2494, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 137, 5, 1, 1, 1),
(2493, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 136, 5, 1, 1, 1),
(2492, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 135, 5, 1, 1, 1),
(2491, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 134, 5, 1, 1, 1),
(2490, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 133, 5, 1, 1, 1),
(2489, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 132, 5, 1, 1, 1),
(2488, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 131, 5, 1, 1, 1),
(2487, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 130, 5, 1, 1, 1),
(2486, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 129, 5, 1, 1, 1),
(2485, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 128, 5, 1, 1, 1),
(2484, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 127, 5, 1, 1, 1),
(2483, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 126, 5, 1, 1, 1),
(2482, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 125, 5, 1, 1, 1),
(2481, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 124, 5, 1, 1, 1),
(2480, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 123, 5, 1, 1, 1),
(2479, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 122, 5, 1, 1, 1),
(2478, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 121, 5, 1, 1, 1),
(2477, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 120, 5, 1, 1, 1),
(2476, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 119, 5, 1, 1, 1),
(2475, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 118, 5, 1, 1, 1),
(2474, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 117, 5, 1, 1, 1),
(2473, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 116, 5, 1, 1, 1),
(2472, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 115, 5, 1, 1, 1),
(2471, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 114, 5, 1, 1, 1),
(2470, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 113, 5, 1, 1, 1),
(2469, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 112, 5, 1, 1, 1),
(2468, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 111, 5, 1, 1, 1),
(2467, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 110, 5, 1, 1, 1),
(2466, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 109, 5, 1, 1, 1),
(2465, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 108, 5, 1, 1, 1),
(2464, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 107, 5, 1, 1, 1),
(2463, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 106, 5, 1, 1, 1),
(2462, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 105, 5, 1, 1, 1),
(2461, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 104, 5, 1, 1, 1),
(2460, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 103, 5, 1, 1, 1),
(2459, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 102, 5, 1, 1, 1),
(2458, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 101, 5, 1, 1, 1),
(2457, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 100, 5, 1, 1, 1),
(2456, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 99, 5, 1, 1, 1),
(2455, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 98, 5, 1, 1, 1),
(2454, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 97, 5, 1, 1, 1),
(2453, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 96, 5, 1, 1, 1),
(2452, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 95, 5, 1, 1, 1),
(2451, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 94, 5, 1, 1, 1),
(2450, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 93, 5, 1, 1, 1),
(2449, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 92, 5, 1, 1, 1),
(2448, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 91, 5, 1, 1, 1),
(2447, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 90, 5, 1, 1, 1),
(2446, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 89, 5, 1, 1, 1),
(2445, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 88, 5, 1, 1, 1),
(2444, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 87, 5, 1, 1, 1),
(2443, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 86, 5, 1, 1, 1),
(2442, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 85, 5, 1, 1, 1),
(2441, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 84, 5, 1, 1, 1),
(2440, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 83, 5, 1, 1, 1),
(2439, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 82, 5, 1, 1, 1),
(2438, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 81, 5, 1, 1, 1),
(2437, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 80, 5, 1, 1, 1),
(2436, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 79, 5, 1, 1, 1),
(2435, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 77, 5, 1, 1, 1),
(2434, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 76, 5, 1, 1, 1),
(2433, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 75, 5, 1, 1, 1),
(2432, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 74, 5, 1, 1, 1),
(2431, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 73, 5, 1, 1, 1),
(2430, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 72, 5, 1, 1, 1),
(2429, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 71, 5, 1, 1, 1),
(2428, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 70, 5, 1, 1, 1),
(2427, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 69, 5, 1, 1, 1),
(2426, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 68, 5, 1, 1, 1),
(2425, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 67, 5, 1, 1, 1),
(2424, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 66, 5, 1, 1, 1),
(2423, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 65, 5, 1, 1, 1),
(2422, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 64, 5, 1, 1, 1),
(2421, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 63, 5, 1, 1, 1),
(2420, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 62, 5, 1, 1, 1),
(2419, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 61, 5, 1, 1, 1),
(2418, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 60, 5, 1, 1, 1),
(2417, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 59, 5, 1, 1, 1),
(2416, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 58, 5, 1, 1, 1),
(2415, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 57, 5, 1, 1, 1),
(2414, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 56, 5, 1, 1, 1),
(2413, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 55, 5, 1, 1, 1),
(2412, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 54, 5, 1, 1, 1),
(2411, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 53, 5, 1, 1, 1),
(2410, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 52, 5, 1, 1, 1),
(2409, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 51, 5, 1, 1, 1),
(2408, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 50, 5, 1, 1, 1),
(2407, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 49, 5, 1, 1, 1),
(2406, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 48, 5, 1, 1, 1),
(2405, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 47, 5, 1, 1, 1),
(2404, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 46, 5, 1, 1, 1),
(2403, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 45, 5, 1, 1, 1),
(2402, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 44, 5, 1, 1, 1),
(2401, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 43, 5, 1, 1, 1),
(2400, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 42, 5, 1, 1, 1),
(2399, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 41, 5, 1, 1, 1),
(2398, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 40, 5, 1, 1, 1),
(2397, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 39, 5, 1, 1, 1),
(2396, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 38, 5, 1, 1, 1),
(2395, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 37, 5, 1, 1, 1),
(2394, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 36, 5, 1, 1, 1),
(2393, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 35, 5, 1, 1, 1),
(2392, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 34, 5, 1, 1, 1),
(2391, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 33, 5, 1, 1, 1),
(2390, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 32, 5, 1, 1, 1),
(2389, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 31, 5, 1, 1, 1),
(2388, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 30, 5, 1, 1, 1),
(2387, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 29, 5, 1, 1, 1),
(2386, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 28, 5, 1, 1, 1),
(2385, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 27, 5, 1, 1, 1),
(2384, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 26, 5, 1, 1, 1),
(2383, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 25, 5, 1, 1, 1),
(2382, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 24, 5, 1, 1, 1),
(2381, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 23, 5, 1, 1, 1),
(2380, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 22, 5, 1, 1, 1),
(2379, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 21, 5, 1, 1, 1),
(2378, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 20, 5, 1, 1, 1),
(2377, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 19, 5, 1, 1, 1),
(2376, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 18, 5, 1, 1, 1),
(2375, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 17, 5, 1, 1, 1),
(2374, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 16, 5, 1, 1, 1),
(2373, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 15, 5, 1, 1, 1),
(2372, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 14, 5, 1, 1, 1),
(2371, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 13, 5, 1, 1, 1),
(2370, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 12, 5, 1, 1, 1),
(2369, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 11, 5, 1, 1, 1),
(2368, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 10, 5, 1, 1, 1),
(2367, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 9, 5, 1, 1, 1),
(2366, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 8, 5, 1, 1, 1),
(2365, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 7, 5, 1, 1, 1),
(2364, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 6, 5, 1, 1, 1),
(2363, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 5, 5, 1, 1, 1),
(2362, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 4, 5, 1, 1, 1),
(2361, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 3, 5, 1, 1, 1),
(2360, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 2, 5, 1, 1, 1),
(2359, 1, '2019-11-25 23:56:26', '2019-11-25 23:56:26', 1, 5, 1, 1, 1),
(1180, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 1, 6, 1, 1, 1),
(1181, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 2, 6, 1, 1, 1),
(1182, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 3, 6, 1, 1, 1),
(1183, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 4, 6, 1, 1, 1),
(1184, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 5, 6, 1, 1, 1),
(1185, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 6, 6, 1, 1, 1),
(1186, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 7, 6, 1, 1, 1),
(1187, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 8, 6, 1, 1, 1),
(1188, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 9, 6, 1, 1, 1),
(1189, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 10, 6, 1, 1, 1),
(1190, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 11, 6, 1, 1, 1),
(1191, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 12, 6, 1, 1, 1),
(1192, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 13, 6, 1, 1, 1),
(1193, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 14, 6, 1, 1, 1),
(1194, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 15, 6, 1, 1, 1),
(1195, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 16, 6, 1, 1, 1),
(1196, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 17, 6, 1, 1, 1),
(1197, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 18, 6, 1, 1, 1),
(1198, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 19, 6, 1, 1, 1),
(1199, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 20, 6, 1, 1, 1),
(1200, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 21, 6, 1, 1, 1),
(1201, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 22, 6, 1, 1, 1),
(1202, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 23, 6, 1, 1, 1),
(1203, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 24, 6, 1, 1, 1),
(1204, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 25, 6, 1, 1, 1),
(1205, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 26, 6, 1, 1, 1),
(1206, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 27, 6, 1, 1, 1),
(1207, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 28, 6, 1, 1, 1),
(1208, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 29, 6, 1, 1, 1),
(1209, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 30, 6, 1, 1, 1),
(1210, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 31, 6, 1, 1, 1),
(1211, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 32, 6, 1, 1, 1),
(1212, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 33, 6, 1, 1, 1),
(1213, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 34, 6, 1, 1, 1),
(1214, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 35, 6, 1, 1, 1),
(1215, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 36, 6, 1, 1, 1),
(1216, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 37, 6, 1, 1, 1),
(1217, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 38, 6, 1, 1, 1),
(1218, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 39, 6, 1, 1, 1),
(1219, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 40, 6, 1, 1, 1),
(1220, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 41, 6, 1, 1, 1),
(1221, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 42, 6, 1, 1, 1),
(1222, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 43, 6, 1, 1, 1),
(1223, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 44, 6, 1, 1, 1),
(1224, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 45, 6, 1, 1, 1),
(1225, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 46, 6, 1, 1, 1),
(1226, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 47, 6, 1, 1, 1),
(1227, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 48, 6, 1, 1, 1),
(1228, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 49, 6, 1, 1, 1),
(1229, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 50, 6, 1, 1, 1),
(1230, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 51, 6, 1, 1, 1),
(1231, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 52, 6, 1, 1, 1),
(1232, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 53, 6, 1, 1, 1),
(1233, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 54, 6, 1, 1, 1),
(1234, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 55, 6, 1, 1, 1),
(1235, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 56, 6, 1, 1, 1),
(1236, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 57, 6, 1, 1, 1),
(1237, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 58, 6, 1, 1, 1),
(1238, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 59, 6, 1, 1, 1),
(1239, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 60, 6, 1, 1, 1),
(1240, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 61, 6, 1, 1, 1),
(1241, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 62, 6, 1, 1, 1),
(1242, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 63, 6, 1, 1, 1),
(1243, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 64, 6, 1, 1, 1),
(1244, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 65, 6, 1, 1, 1),
(1245, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 66, 6, 1, 1, 1),
(1246, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 67, 6, 1, 1, 1),
(1247, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 68, 6, 1, 1, 1),
(1248, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 69, 6, 1, 1, 1),
(1249, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 70, 6, 1, 1, 1),
(1250, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 71, 6, 1, 1, 1),
(1251, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 72, 6, 1, 1, 1),
(1252, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 73, 6, 1, 1, 1),
(1253, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 74, 6, 1, 1, 1),
(1254, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 75, 6, 1, 1, 1),
(1255, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 76, 6, 1, 1, 1),
(1256, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 77, 6, 1, 1, 1),
(1257, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 79, 6, 1, 1, 1),
(1258, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 80, 6, 1, 1, 1),
(1259, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 81, 6, 1, 1, 1),
(1260, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 82, 6, 1, 1, 1),
(1261, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 83, 6, 1, 1, 1),
(1262, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 84, 6, 1, 1, 1),
(1263, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 85, 6, 1, 1, 1),
(1264, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 86, 6, 1, 1, 1),
(1265, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 87, 6, 1, 1, 1),
(1266, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 88, 6, 1, 1, 1),
(1267, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 89, 6, 1, 1, 1),
(1268, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 90, 6, 1, 1, 1),
(1269, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 91, 6, 1, 1, 1),
(1270, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 92, 6, 1, 1, 1),
(1271, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 93, 6, 1, 1, 1),
(1272, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 94, 6, 1, 1, 1),
(1273, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 95, 6, 1, 1, 1),
(1274, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 96, 6, 1, 1, 1),
(1275, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 97, 6, 1, 1, 1),
(1276, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 98, 6, 1, 1, 1),
(1277, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 99, 6, 1, 1, 1),
(1278, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 100, 6, 1, 1, 1),
(1279, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 101, 6, 1, 1, 1),
(1280, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 102, 6, 1, 1, 1),
(1281, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 103, 6, 1, 1, 1),
(1282, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 104, 6, 1, 1, 1),
(1283, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 105, 6, 1, 1, 1),
(1284, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 106, 6, 1, 1, 1),
(1285, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 107, 6, 1, 1, 1),
(1286, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 108, 6, 1, 1, 1),
(1287, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 109, 6, 1, 1, 1),
(1288, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 110, 6, 1, 1, 1),
(1289, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 111, 6, 1, 1, 1),
(1290, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 112, 6, 1, 1, 1),
(1291, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 113, 6, 1, 1, 1),
(1292, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 114, 6, 1, 1, 1),
(1293, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 115, 6, 1, 1, 1),
(1294, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 116, 6, 1, 1, 1),
(1295, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 117, 6, 1, 1, 1),
(1296, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 118, 6, 1, 1, 1),
(1297, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 119, 6, 1, 1, 1),
(1298, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 120, 6, 1, 1, 1),
(1299, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 121, 6, 1, 1, 1),
(1300, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 122, 6, 1, 1, 1),
(1301, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 123, 6, 1, 1, 1),
(1302, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 124, 6, 1, 1, 1),
(1303, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 125, 6, 1, 1, 1),
(1304, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 126, 6, 1, 1, 1),
(1305, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 127, 6, 1, 1, 1),
(1306, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 128, 6, 1, 1, 1),
(1307, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 129, 6, 1, 1, 1),
(1308, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 130, 6, 1, 1, 1),
(1309, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 131, 6, 1, 1, 1),
(1310, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 132, 6, 1, 1, 1),
(1311, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 133, 6, 1, 1, 1),
(1312, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 134, 6, 1, 1, 1),
(1313, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 135, 6, 1, 1, 1),
(1314, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 136, 6, 1, 1, 1),
(1315, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 137, 6, 1, 1, 1),
(1316, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 138, 6, 1, 1, 1),
(1317, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 139, 6, 1, 1, 1),
(1318, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 140, 6, 1, 1, 1),
(1319, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 141, 6, 1, 1, 1),
(1320, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 142, 6, 1, 1, 1),
(1321, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 143, 6, 1, 1, 1),
(1322, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 144, 6, 1, 1, 1),
(1323, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 145, 6, 1, 1, 1),
(1324, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 146, 6, 1, 1, 1),
(1325, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 147, 6, 1, 1, 1),
(1326, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 148, 6, 1, 1, 1),
(1327, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 149, 6, 1, 1, 1),
(1328, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 150, 6, 1, 1, 1),
(1329, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 151, 6, 1, 1, 1),
(1330, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 152, 6, 1, 1, 1),
(1331, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 153, 6, 1, 1, 1),
(1332, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 154, 6, 1, 1, 1),
(1333, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 155, 6, 1, 1, 1),
(1334, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 156, 6, 1, 1, 1),
(1335, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 157, 6, 1, 1, 1),
(1336, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 158, 6, 1, 1, 1),
(1337, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 159, 6, 1, 1, 1),
(1338, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 160, 6, 1, 1, 1),
(1339, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 161, 6, 1, 1, 1),
(1340, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 162, 6, 1, 1, 1),
(1341, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 163, 6, 1, 1, 1),
(1342, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 164, 6, 1, 1, 1),
(1343, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 165, 6, 1, 1, 1),
(1344, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 166, 6, 1, 1, 1),
(1345, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 167, 6, 1, 1, 1),
(1346, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 168, 6, 1, 1, 1),
(1347, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 169, 6, 1, 1, 1),
(1348, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 170, 6, 1, 1, 1),
(1349, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 171, 6, 1, 1, 1),
(1350, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 172, 6, 1, 1, 1),
(1351, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 173, 6, 1, 1, 1),
(1352, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 174, 6, 1, 1, 1),
(1353, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 175, 6, 1, 1, 1),
(1354, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 176, 6, 1, 1, 1),
(1355, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 177, 6, 1, 1, 1),
(1356, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 178, 6, 1, 1, 1),
(1357, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 179, 6, 1, 1, 1),
(1358, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 180, 6, 1, 1, 1),
(1359, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 181, 6, 1, 1, 1),
(1360, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 182, 6, 1, 1, 1),
(1361, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 183, 6, 1, 1, 1),
(1362, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 184, 6, 1, 1, 1),
(1363, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 185, 6, 1, 1, 1),
(1364, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 186, 6, 1, 1, 1),
(1365, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 187, 6, 1, 1, 1),
(1366, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 188, 6, 1, 1, 1),
(1367, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 189, 6, 1, 1, 1),
(1368, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 190, 6, 1, 1, 1),
(1369, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 191, 6, 1, 1, 1),
(1370, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 192, 6, 1, 1, 1),
(1371, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 193, 6, 1, 1, 1),
(1372, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 194, 6, 1, 1, 1),
(1373, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 195, 6, 1, 1, 1),
(1374, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 196, 6, 1, 1, 1),
(1375, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 197, 6, 1, 1, 1),
(1376, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 198, 6, 1, 1, 1),
(1377, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 199, 6, 1, 1, 1),
(1378, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 200, 6, 1, 1, 1),
(1379, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 201, 6, 1, 1, 1),
(1380, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 202, 6, 1, 1, 1),
(1381, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 203, 6, 1, 1, 1),
(1382, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 204, 6, 1, 1, 1),
(1383, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 205, 6, 1, 1, 1),
(1384, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 206, 6, 1, 1, 1),
(1385, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 207, 6, 1, 1, 1),
(1386, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 208, 6, 1, 1, 1),
(1387, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 209, 6, 1, 1, 1),
(1388, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 210, 6, 1, 1, 1),
(1389, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 211, 6, 1, 1, 1),
(1390, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 214, 6, 1, 1, 1),
(1391, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 215, 6, 1, 1, 1),
(1392, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 216, 6, 1, 1, 1),
(1393, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 217, 6, 1, 1, 1),
(1394, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 218, 6, 1, 1, 1),
(1395, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 219, 6, 1, 1, 1),
(1396, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 220, 6, 1, 1, 1),
(1397, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 221, 6, 1, 1, 1),
(1398, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 222, 6, 1, 1, 1),
(1399, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 223, 6, 1, 1, 1),
(1400, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 224, 6, 1, 1, 1),
(1401, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 225, 6, 1, 1, 1),
(1402, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 226, 6, 1, 1, 1);
INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1403, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 227, 6, 1, 1, 1),
(1404, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 228, 6, 1, 1, 1),
(1405, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 229, 6, 1, 1, 1),
(1406, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 230, 6, 1, 1, 1),
(1407, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 231, 6, 1, 1, 1),
(1408, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 232, 6, 1, 1, 1),
(1409, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 233, 6, 1, 1, 1),
(1410, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 234, 6, 1, 1, 1),
(1411, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 235, 6, 1, 1, 1),
(1412, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 236, 6, 1, 1, 1),
(1413, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 237, 6, 1, 1, 1),
(1414, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 238, 6, 1, 1, 1),
(1415, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 239, 6, 1, 1, 1),
(1416, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 240, 6, 1, 1, 1),
(1417, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 241, 6, 1, 1, 1),
(1418, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 242, 6, 1, 1, 1),
(1419, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 243, 6, 1, 1, 1),
(1420, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 244, 6, 1, 1, 1),
(1421, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 245, 6, 1, 1, 1),
(1422, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 246, 6, 1, 1, 1),
(1423, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 247, 6, 1, 1, 1),
(1424, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 248, 6, 1, 1, 1),
(1425, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 249, 6, 1, 1, 1),
(1426, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 250, 6, 1, 1, 1),
(1427, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 251, 6, 1, 1, 1),
(1428, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 252, 6, 1, 1, 1),
(1429, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 253, 6, 1, 1, 1),
(1430, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 254, 6, 1, 1, 1),
(1431, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 255, 6, 1, 1, 1),
(1432, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 256, 6, 1, 1, 1),
(1433, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 257, 6, 1, 1, 1),
(1434, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 258, 6, 1, 1, 1),
(1435, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 259, 6, 1, 1, 1),
(1436, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 260, 6, 1, 1, 1),
(1437, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 261, 6, 1, 1, 1),
(1438, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 262, 6, 1, 1, 1),
(1439, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 263, 6, 1, 1, 1),
(1440, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 264, 6, 1, 1, 1),
(1441, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 265, 6, 1, 1, 1),
(1442, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 266, 6, 1, 1, 1),
(1443, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 267, 6, 1, 1, 1),
(1444, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 268, 6, 1, 1, 1),
(1445, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 269, 6, 1, 1, 1),
(1446, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 270, 6, 1, 1, 1),
(1447, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 271, 6, 1, 1, 1),
(1448, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 272, 6, 1, 1, 1),
(1449, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 273, 6, 1, 1, 1),
(1450, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 274, 6, 1, 1, 1),
(1451, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 275, 6, 1, 1, 1),
(1452, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 276, 6, 1, 1, 1),
(1453, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 277, 6, 1, 1, 1),
(1454, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 278, 6, 1, 1, 1),
(1455, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 279, 6, 1, 1, 1),
(1456, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 280, 6, 1, 1, 1),
(1457, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 281, 6, 1, 1, 1),
(1458, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 282, 6, 1, 1, 1),
(1459, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 283, 6, 1, 1, 1),
(1460, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 284, 6, 1, 1, 1),
(1461, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 285, 6, 1, 1, 1),
(1462, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 286, 6, 1, 1, 1),
(1463, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 287, 6, 1, 1, 1),
(1464, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 288, 6, 1, 1, 1),
(1465, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 289, 6, 1, 1, 1),
(1466, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 290, 6, 1, 1, 1),
(1467, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 291, 6, 1, 1, 1),
(1468, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 292, 6, 1, 1, 1),
(1469, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 293, 6, 1, 1, 1),
(1470, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 294, 6, 1, 1, 1),
(1471, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 295, 6, 1, 1, 1),
(1472, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 296, 6, 1, 1, 1),
(1473, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 297, 6, 1, 1, 1),
(1474, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 298, 6, 1, 1, 1),
(1475, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 299, 6, 1, 1, 1),
(1476, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 300, 6, 1, 1, 1),
(1477, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 301, 6, 1, 1, 1),
(1478, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 302, 6, 1, 1, 1),
(1479, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 303, 6, 1, 1, 1),
(1480, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 304, 6, 1, 1, 1),
(1481, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 305, 6, 1, 1, 1),
(1482, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 306, 6, 1, 1, 1),
(1483, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 307, 6, 1, 1, 1),
(1484, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 308, 6, 1, 1, 1),
(1485, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 309, 6, 1, 1, 1),
(1486, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 310, 6, 1, 1, 1),
(1487, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 311, 6, 1, 1, 1),
(1488, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 312, 6, 1, 1, 1),
(1489, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 313, 6, 1, 1, 1),
(1490, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 314, 6, 1, 1, 1),
(1491, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 315, 6, 1, 1, 1),
(1492, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 316, 6, 1, 1, 1),
(1493, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 317, 6, 1, 1, 1),
(1494, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 318, 6, 1, 1, 1),
(1495, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 319, 6, 1, 1, 1),
(1496, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 320, 6, 1, 1, 1),
(1497, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 321, 6, 1, 1, 1),
(1498, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 322, 6, 1, 1, 1),
(1499, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 323, 6, 1, 1, 1),
(1500, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 324, 6, 1, 1, 1),
(1501, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 325, 6, 1, 1, 1),
(1502, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 326, 6, 1, 1, 1),
(1503, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 327, 6, 1, 1, 1),
(1504, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 328, 6, 1, 1, 1),
(1505, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 329, 6, 1, 1, 1),
(1506, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 330, 6, 1, 1, 1),
(1507, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 331, 6, 1, 1, 1),
(1508, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 332, 6, 1, 1, 1),
(1509, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 333, 6, 1, 1, 1),
(1510, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 334, 6, 1, 1, 1),
(1511, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 335, 6, 1, 1, 1),
(1512, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 336, 6, 1, 1, 1),
(1513, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 337, 6, 1, 1, 1),
(1514, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 338, 6, 1, 1, 1),
(1515, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 339, 6, 1, 1, 1),
(1516, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 340, 6, 1, 1, 1),
(1517, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 341, 6, 1, 1, 1),
(1518, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 342, 6, 1, 1, 1),
(1519, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 343, 6, 1, 1, 1),
(1520, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 344, 6, 1, 1, 1),
(1521, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 345, 6, 1, 1, 1),
(1522, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 346, 6, 1, 1, 1),
(1523, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 347, 6, 1, 1, 1),
(1524, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 348, 6, 1, 1, 1),
(1525, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 349, 6, 1, 1, 1),
(1526, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 350, 6, 1, 1, 1),
(1527, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 351, 6, 1, 1, 1),
(1528, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 352, 6, 1, 1, 1),
(1529, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 353, 6, 1, 1, 1),
(1530, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 354, 6, 1, 1, 1),
(1531, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 355, 6, 1, 1, 1),
(1532, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 356, 6, 1, 1, 1),
(1533, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 357, 6, 1, 1, 1),
(1534, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 358, 6, 1, 1, 1),
(1535, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 359, 6, 1, 1, 1),
(1536, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 360, 6, 1, 1, 1),
(1537, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 361, 6, 1, 1, 1),
(1538, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 362, 6, 1, 1, 1),
(1539, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 363, 6, 1, 1, 1),
(1540, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 364, 6, 1, 1, 1),
(1541, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 365, 6, 1, 1, 1),
(1542, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 366, 6, 1, 1, 1),
(1543, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 367, 6, 1, 1, 1),
(1544, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 368, 6, 1, 1, 1),
(1545, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 369, 6, 1, 1, 1),
(1546, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 370, 6, 1, 1, 1),
(1547, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 371, 6, 1, 1, 1),
(1548, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 372, 6, 1, 1, 1),
(1549, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 373, 6, 1, 1, 1),
(1550, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 374, 6, 1, 1, 1),
(1551, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 375, 6, 1, 1, 1),
(1552, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 376, 6, 1, 1, 1),
(1553, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 377, 6, 1, 1, 1),
(1554, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 378, 6, 1, 1, 1),
(1555, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 379, 6, 1, 1, 1),
(1556, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 380, 6, 1, 1, 1),
(1557, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 381, 6, 1, 1, 1),
(1558, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 382, 6, 1, 1, 1),
(1559, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 383, 6, 1, 1, 1),
(1560, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 384, 6, 1, 1, 1),
(1561, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 385, 6, 1, 1, 1),
(1562, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 386, 6, 1, 1, 1),
(1563, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 387, 6, 1, 1, 1),
(1564, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 388, 6, 1, 1, 1),
(1565, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 389, 6, 1, 1, 1),
(1566, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 390, 6, 1, 1, 1),
(1567, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 391, 6, 1, 1, 1),
(1568, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 392, 6, 1, 1, 1),
(1569, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 393, 6, 1, 1, 1),
(1570, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 394, 6, 1, 1, 1),
(1571, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 395, 6, 1, 1, 1),
(1572, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 396, 6, 1, 1, 1),
(1573, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 1, 7, 1, 1, 1),
(1574, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 2, 7, 1, 1, 1),
(1575, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 3, 7, 1, 1, 1),
(1576, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 4, 7, 1, 1, 1),
(1577, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 5, 7, 1, 1, 1),
(1578, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 6, 7, 1, 1, 1),
(1579, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 7, 7, 1, 1, 1),
(1580, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 8, 7, 1, 1, 1),
(1581, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 9, 7, 1, 1, 1),
(1582, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 10, 7, 1, 1, 1),
(1583, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 11, 7, 1, 1, 1),
(1584, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 12, 7, 1, 1, 1),
(1585, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 13, 7, 1, 1, 1),
(1586, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 14, 7, 1, 1, 1),
(1587, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 15, 7, 1, 1, 1),
(1588, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 16, 7, 1, 1, 1),
(1589, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 17, 7, 1, 1, 1),
(1590, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 18, 7, 1, 1, 1),
(1591, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 19, 7, 1, 1, 1),
(1592, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 20, 7, 1, 1, 1),
(1593, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 21, 7, 1, 1, 1),
(1594, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 22, 7, 1, 1, 1),
(1595, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 23, 7, 1, 1, 1),
(1596, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 24, 7, 1, 1, 1),
(1597, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 25, 7, 1, 1, 1),
(1598, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 26, 7, 1, 1, 1),
(1599, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 27, 7, 1, 1, 1),
(1600, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 28, 7, 1, 1, 1),
(1601, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 29, 7, 1, 1, 1),
(1602, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 30, 7, 1, 1, 1),
(1603, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 31, 7, 1, 1, 1),
(1604, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 32, 7, 1, 1, 1),
(1605, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 33, 7, 1, 1, 1),
(1606, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 34, 7, 1, 1, 1),
(1607, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 35, 7, 1, 1, 1),
(1608, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 36, 7, 1, 1, 1),
(1609, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 37, 7, 1, 1, 1),
(1610, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 38, 7, 1, 1, 1),
(1611, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 39, 7, 1, 1, 1),
(1612, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 40, 7, 1, 1, 1),
(1613, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 41, 7, 1, 1, 1),
(1614, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 42, 7, 1, 1, 1),
(1615, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 43, 7, 1, 1, 1),
(1616, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 44, 7, 1, 1, 1),
(1617, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 45, 7, 1, 1, 1),
(1618, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 46, 7, 1, 1, 1),
(1619, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 47, 7, 1, 1, 1),
(1620, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 48, 7, 1, 1, 1),
(1621, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 49, 7, 1, 1, 1),
(1622, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 50, 7, 1, 1, 1),
(1623, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 51, 7, 1, 1, 1),
(1624, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 52, 7, 1, 1, 1),
(1625, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 53, 7, 1, 1, 1),
(1626, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 54, 7, 1, 1, 1),
(1627, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 55, 7, 1, 1, 1),
(1628, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 56, 7, 1, 1, 1),
(1629, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 57, 7, 1, 1, 1),
(1630, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 58, 7, 1, 1, 1),
(1631, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 59, 7, 1, 1, 1),
(1632, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 60, 7, 1, 1, 1),
(1633, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 61, 7, 1, 1, 1),
(1634, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 62, 7, 1, 1, 1),
(1635, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 63, 7, 1, 1, 1),
(1636, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 64, 7, 1, 1, 1),
(1637, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 65, 7, 1, 1, 1),
(1638, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 66, 7, 1, 1, 1),
(1639, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 67, 7, 1, 1, 1),
(1640, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 68, 7, 1, 1, 1),
(1641, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 69, 7, 1, 1, 1),
(1642, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 70, 7, 1, 1, 1),
(1643, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 71, 7, 1, 1, 1),
(1644, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 72, 7, 1, 1, 1),
(1645, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 73, 7, 1, 1, 1),
(1646, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 74, 7, 1, 1, 1),
(1647, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 75, 7, 1, 1, 1),
(1648, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 76, 7, 1, 1, 1),
(1649, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 77, 7, 1, 1, 1),
(1650, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 79, 7, 1, 1, 1),
(1651, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 80, 7, 1, 1, 1),
(1652, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 81, 7, 1, 1, 1),
(1653, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 82, 7, 1, 1, 1),
(1654, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 83, 7, 1, 1, 1),
(1655, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 84, 7, 1, 1, 1),
(1656, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 85, 7, 1, 1, 1),
(1657, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 86, 7, 1, 1, 1),
(1658, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 87, 7, 1, 1, 1),
(1659, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 88, 7, 1, 1, 1),
(1660, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 89, 7, 1, 1, 1),
(1661, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 90, 7, 1, 1, 1),
(1662, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 91, 7, 1, 1, 1),
(1663, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 92, 7, 1, 1, 1),
(1664, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 93, 7, 1, 1, 1),
(1665, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 94, 7, 1, 1, 1),
(1666, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 95, 7, 1, 1, 1),
(1667, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 96, 7, 1, 1, 1),
(1668, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 97, 7, 1, 1, 1),
(1669, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 98, 7, 1, 1, 1),
(1670, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 99, 7, 1, 1, 1),
(1671, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 100, 7, 1, 1, 1),
(1672, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 101, 7, 1, 1, 1),
(1673, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 102, 7, 1, 1, 1),
(1674, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 103, 7, 1, 1, 1),
(1675, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 104, 7, 1, 1, 1),
(1676, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 105, 7, 1, 1, 1),
(1677, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 106, 7, 1, 1, 1),
(1678, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 107, 7, 1, 1, 1),
(1679, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 108, 7, 1, 1, 1),
(1680, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 109, 7, 1, 1, 1),
(1681, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 110, 7, 1, 1, 1),
(1682, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 111, 7, 1, 1, 1),
(1683, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 112, 7, 1, 1, 1),
(1684, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 113, 7, 1, 1, 1),
(1685, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 114, 7, 1, 1, 1),
(1686, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 115, 7, 1, 1, 1),
(1687, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 116, 7, 1, 1, 1),
(1688, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 117, 7, 1, 1, 1),
(1689, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 118, 7, 1, 1, 1),
(1690, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 119, 7, 1, 1, 1),
(1691, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 120, 7, 1, 1, 1),
(1692, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 121, 7, 1, 1, 1),
(1693, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 122, 7, 1, 1, 1),
(1694, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 123, 7, 1, 1, 1),
(1695, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 124, 7, 1, 1, 1),
(1696, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 125, 7, 1, 1, 1),
(1697, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 126, 7, 1, 1, 1),
(1698, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 127, 7, 1, 1, 1),
(1699, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 128, 7, 1, 1, 1),
(1700, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 129, 7, 1, 1, 1),
(1701, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 130, 7, 1, 1, 1),
(1702, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 131, 7, 1, 1, 1),
(1703, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 132, 7, 1, 1, 1),
(1704, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 133, 7, 1, 1, 1),
(1705, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 134, 7, 1, 1, 1),
(1706, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 135, 7, 1, 1, 1),
(1707, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 136, 7, 1, 1, 1),
(1708, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 137, 7, 1, 1, 1),
(1709, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 138, 7, 1, 1, 1),
(1710, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 139, 7, 1, 1, 1),
(1711, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 140, 7, 1, 1, 1),
(1712, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 141, 7, 1, 1, 1),
(1713, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 142, 7, 1, 1, 1),
(1714, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 143, 7, 1, 1, 1),
(1715, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 144, 7, 1, 1, 1),
(1716, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 145, 7, 1, 1, 1),
(1717, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 146, 7, 1, 1, 1),
(1718, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 147, 7, 1, 1, 1),
(1719, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 148, 7, 1, 1, 1),
(1720, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 149, 7, 1, 1, 1),
(1721, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 150, 7, 1, 1, 1),
(1722, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 151, 7, 1, 1, 1),
(1723, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 152, 7, 1, 1, 1),
(1724, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 153, 7, 1, 1, 1),
(1725, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 154, 7, 1, 1, 1),
(1726, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 155, 7, 1, 1, 1),
(1727, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 156, 7, 1, 1, 1),
(1728, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 157, 7, 1, 1, 1),
(1729, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 158, 7, 1, 1, 1),
(1730, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 159, 7, 1, 1, 1),
(1731, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 160, 7, 1, 1, 1),
(1732, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 161, 7, 1, 1, 1),
(1733, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 162, 7, 1, 1, 1),
(1734, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 163, 7, 1, 1, 1),
(1735, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 164, 7, 1, 1, 1),
(1736, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 165, 7, 1, 1, 1),
(1737, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 166, 7, 1, 1, 1),
(1738, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 167, 7, 1, 1, 1),
(1739, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 168, 7, 1, 1, 1),
(1740, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 169, 7, 1, 1, 1),
(1741, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 170, 7, 1, 1, 1),
(1742, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 171, 7, 1, 1, 1),
(1743, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 172, 7, 1, 1, 1),
(1744, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 173, 7, 1, 1, 1),
(1745, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 174, 7, 1, 1, 1),
(1746, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 175, 7, 1, 1, 1),
(1747, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 176, 7, 1, 1, 1),
(1748, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 177, 7, 1, 1, 1),
(1749, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 178, 7, 1, 1, 1),
(1750, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 179, 7, 1, 1, 1),
(1751, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 180, 7, 1, 1, 1),
(1752, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 181, 7, 1, 1, 1),
(1753, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 182, 7, 1, 1, 1),
(1754, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 183, 7, 1, 1, 1),
(1755, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 184, 7, 1, 1, 1),
(1756, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 185, 7, 1, 1, 1),
(1757, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 186, 7, 1, 1, 1),
(1758, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 187, 7, 1, 1, 1),
(1759, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 188, 7, 1, 1, 1),
(1760, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 189, 7, 1, 1, 1),
(1761, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 190, 7, 1, 1, 1),
(1762, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 191, 7, 1, 1, 1),
(1763, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 192, 7, 1, 1, 1),
(1764, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 193, 7, 1, 1, 1),
(1765, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 194, 7, 1, 1, 1),
(1766, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 195, 7, 1, 1, 1),
(1767, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 196, 7, 1, 1, 1),
(1768, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 197, 7, 1, 1, 1),
(1769, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 198, 7, 1, 1, 1),
(1770, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 199, 7, 1, 1, 1),
(1771, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 200, 7, 1, 1, 1),
(1772, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 201, 7, 1, 1, 1),
(1773, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 202, 7, 1, 1, 1),
(1774, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 203, 7, 1, 1, 1),
(1775, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 204, 7, 1, 1, 1),
(1776, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 205, 7, 1, 1, 1),
(1777, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 206, 7, 1, 1, 1),
(1778, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 207, 7, 1, 1, 1),
(1779, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 208, 7, 1, 1, 1),
(1780, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 209, 7, 1, 1, 1),
(1781, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 210, 7, 1, 1, 1),
(1782, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 211, 7, 1, 1, 1),
(1783, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 214, 7, 1, 1, 1),
(1784, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 215, 7, 1, 1, 1),
(1785, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 216, 7, 1, 1, 1),
(1786, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 217, 7, 1, 1, 1),
(1787, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 218, 7, 1, 1, 1),
(1788, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 219, 7, 1, 1, 1),
(1789, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 220, 7, 1, 1, 1),
(1790, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 221, 7, 1, 1, 1),
(1791, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 222, 7, 1, 1, 1),
(1792, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 223, 7, 1, 1, 1),
(1793, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 224, 7, 1, 1, 1),
(1794, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 225, 7, 1, 1, 1),
(1795, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 226, 7, 1, 1, 1),
(1796, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 227, 7, 1, 1, 1),
(1797, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 228, 7, 1, 1, 1),
(1798, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 229, 7, 1, 1, 1),
(1799, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 230, 7, 1, 1, 1),
(1800, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 231, 7, 1, 1, 1),
(1801, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 232, 7, 1, 1, 1),
(1802, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 233, 7, 1, 1, 1),
(1803, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 234, 7, 1, 1, 1),
(1804, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 235, 7, 1, 1, 1),
(1805, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 236, 7, 1, 1, 1),
(1806, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 237, 7, 1, 1, 1),
(1807, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 238, 7, 1, 1, 1),
(1808, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 239, 7, 1, 1, 1),
(1809, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 240, 7, 1, 1, 1),
(1810, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 241, 7, 1, 1, 1),
(1811, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 242, 7, 1, 1, 1),
(1812, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 243, 7, 1, 1, 1),
(1813, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 244, 7, 1, 1, 1),
(1814, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 245, 7, 1, 1, 1),
(1815, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 246, 7, 1, 1, 1),
(1816, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 247, 7, 1, 1, 1),
(1817, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 248, 7, 1, 1, 1),
(1818, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 249, 7, 1, 1, 1),
(1819, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 250, 7, 1, 1, 1),
(1820, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 251, 7, 1, 1, 1),
(1821, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 252, 7, 1, 1, 1),
(1822, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 253, 7, 1, 1, 1),
(1823, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 254, 7, 1, 1, 1),
(1824, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 255, 7, 1, 1, 1),
(1825, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 256, 7, 1, 1, 1),
(1826, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 257, 7, 1, 1, 1),
(1827, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 258, 7, 1, 1, 1),
(1828, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 259, 7, 1, 1, 1),
(1829, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 260, 7, 1, 1, 1),
(1830, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 261, 7, 1, 1, 1),
(1831, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 262, 7, 1, 1, 1),
(1832, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 263, 7, 1, 1, 1),
(1833, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 264, 7, 1, 1, 1),
(1834, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 265, 7, 1, 1, 1),
(1835, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 266, 7, 1, 1, 1),
(1836, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 267, 7, 1, 1, 1),
(1837, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 268, 7, 1, 1, 1),
(1838, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 269, 7, 1, 1, 1),
(1839, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 270, 7, 1, 1, 1),
(1840, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 271, 7, 1, 1, 1),
(1841, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 272, 7, 1, 1, 1),
(1842, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 273, 7, 1, 1, 1),
(1843, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 274, 7, 1, 1, 1),
(1844, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 275, 7, 1, 1, 1),
(1845, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 276, 7, 1, 1, 1),
(1846, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 277, 7, 1, 1, 1),
(1847, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 278, 7, 1, 1, 1),
(1848, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 279, 7, 1, 1, 1),
(1849, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 280, 7, 1, 1, 1),
(1850, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 281, 7, 1, 1, 1),
(1851, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 282, 7, 1, 1, 1),
(1852, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 283, 7, 1, 1, 1),
(1853, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 284, 7, 1, 1, 1),
(1854, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 285, 7, 1, 1, 1),
(1855, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 286, 7, 1, 1, 1),
(1856, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 287, 7, 1, 1, 1),
(1857, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 288, 7, 1, 1, 1),
(1858, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 289, 7, 1, 1, 1),
(1859, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 290, 7, 1, 1, 1),
(1860, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 291, 7, 1, 1, 1),
(1861, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 292, 7, 1, 1, 1),
(1862, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 293, 7, 1, 1, 1),
(1863, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 294, 7, 1, 1, 1),
(1864, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 295, 7, 1, 1, 1),
(1865, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 296, 7, 1, 1, 1),
(1866, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 297, 7, 1, 1, 1),
(1867, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 298, 7, 1, 1, 1),
(1868, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 299, 7, 1, 1, 1),
(1869, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 300, 7, 1, 1, 1),
(1870, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 301, 7, 1, 1, 1),
(1871, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 302, 7, 1, 1, 1),
(1872, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 303, 7, 1, 1, 1),
(1873, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 304, 7, 1, 1, 1),
(1874, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 305, 7, 1, 1, 1),
(1875, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 306, 7, 1, 1, 1),
(1876, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 307, 7, 1, 1, 1),
(1877, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 308, 7, 1, 1, 1),
(1878, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 309, 7, 1, 1, 1),
(1879, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 310, 7, 1, 1, 1),
(1880, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 311, 7, 1, 1, 1),
(1881, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 312, 7, 1, 1, 1),
(1882, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 313, 7, 1, 1, 1),
(1883, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 314, 7, 1, 1, 1),
(1884, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 315, 7, 1, 1, 1),
(1885, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 316, 7, 1, 1, 1),
(1886, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 317, 7, 1, 1, 1),
(1887, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 318, 7, 1, 1, 1),
(1888, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 319, 7, 1, 1, 1),
(1889, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 320, 7, 1, 1, 1),
(1890, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 321, 7, 1, 1, 1),
(1891, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 322, 7, 1, 1, 1),
(1892, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 323, 7, 1, 1, 1),
(1893, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 324, 7, 1, 1, 1),
(1894, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 325, 7, 1, 1, 1),
(1895, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 326, 7, 1, 1, 1),
(1896, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 327, 7, 1, 1, 1),
(1897, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 328, 7, 1, 1, 1),
(1898, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 329, 7, 1, 1, 1),
(1899, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 330, 7, 1, 1, 1),
(1900, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 331, 7, 1, 1, 1),
(1901, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 332, 7, 1, 1, 1),
(1902, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 333, 7, 1, 1, 1),
(1903, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 334, 7, 1, 1, 1),
(1904, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 335, 7, 1, 1, 1),
(1905, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 336, 7, 1, 1, 1),
(1906, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 337, 7, 1, 1, 1),
(1907, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 338, 7, 1, 1, 1),
(1908, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 339, 7, 1, 1, 1),
(1909, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 340, 7, 1, 1, 1),
(1910, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 341, 7, 1, 1, 1),
(1911, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 342, 7, 1, 1, 1),
(1912, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 343, 7, 1, 1, 1),
(1913, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 344, 7, 1, 1, 1),
(1914, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 345, 7, 1, 1, 1),
(1915, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 346, 7, 1, 1, 1),
(1916, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 347, 7, 1, 1, 1),
(1917, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 348, 7, 1, 1, 1),
(1918, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 349, 7, 1, 1, 1),
(1919, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 350, 7, 1, 1, 1),
(1920, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 351, 7, 1, 1, 1),
(1921, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 352, 7, 1, 1, 1),
(1922, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 353, 7, 1, 1, 1),
(1923, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 354, 7, 1, 1, 1),
(1924, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 355, 7, 1, 1, 1),
(1925, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 356, 7, 1, 1, 1),
(1926, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 357, 7, 1, 1, 1),
(1927, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 358, 7, 1, 1, 1),
(1928, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 359, 7, 1, 1, 1),
(1929, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 360, 7, 1, 1, 1),
(1930, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 361, 7, 1, 1, 1),
(1931, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 362, 7, 1, 1, 1),
(1932, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 363, 7, 1, 1, 1),
(1933, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 364, 7, 1, 1, 1),
(1934, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 365, 7, 1, 1, 1),
(1935, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 366, 7, 1, 1, 1),
(1936, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 367, 7, 1, 1, 1),
(1937, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 368, 7, 1, 1, 1),
(1938, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 369, 7, 1, 1, 1),
(1939, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 370, 7, 1, 1, 1),
(1940, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 371, 7, 1, 1, 1),
(1941, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 372, 7, 1, 1, 1),
(1942, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 373, 7, 1, 1, 1),
(1943, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 374, 7, 1, 1, 1),
(1944, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 375, 7, 1, 1, 1),
(1945, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 376, 7, 1, 1, 1),
(1946, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 377, 7, 1, 1, 1),
(1947, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 378, 7, 1, 1, 1),
(1948, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 379, 7, 1, 1, 1),
(1949, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 380, 7, 1, 1, 1),
(1950, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 381, 7, 1, 1, 1),
(1951, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 382, 7, 1, 1, 1),
(1952, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 383, 7, 1, 1, 1),
(1953, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 384, 7, 1, 1, 1),
(1954, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 385, 7, 1, 1, 1),
(1955, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 386, 7, 1, 1, 1),
(1956, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 387, 7, 1, 1, 1),
(1957, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 388, 7, 1, 1, 1),
(1958, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 389, 7, 1, 1, 1),
(1959, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 390, 7, 1, 1, 1),
(1960, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 391, 7, 1, 1, 1),
(1961, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 392, 7, 1, 1, 1),
(1962, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 393, 7, 1, 1, 1),
(1963, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 394, 7, 1, 1, 1),
(1964, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 395, 7, 1, 1, 1),
(1965, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 396, 7, 1, 1, 1),
(1966, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 1, 8, 1, 1, 1),
(1967, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 2, 8, 1, 1, 1),
(1968, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 3, 8, 1, 1, 1),
(1969, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 4, 8, 1, 1, 1),
(1970, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 5, 8, 1, 1, 1),
(1971, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 6, 8, 1, 1, 1),
(1972, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 7, 8, 1, 1, 1),
(1973, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 8, 8, 1, 1, 1),
(1974, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 9, 8, 1, 1, 1),
(1975, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 10, 8, 1, 1, 1),
(1976, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 11, 8, 1, 1, 1),
(1977, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 12, 8, 1, 1, 1),
(1978, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 13, 8, 1, 1, 1),
(1979, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 14, 8, 1, 1, 1),
(1980, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 15, 8, 1, 1, 1),
(1981, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 16, 8, 1, 1, 1),
(1982, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 17, 8, 1, 1, 1),
(1983, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 18, 8, 1, 1, 1),
(1984, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 19, 8, 1, 1, 1),
(1985, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 20, 8, 1, 1, 1),
(1986, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 21, 8, 1, 1, 1),
(1987, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 22, 8, 1, 1, 1),
(1988, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 23, 8, 1, 1, 1),
(1989, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 24, 8, 1, 1, 1),
(1990, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 25, 8, 1, 1, 1),
(1991, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 26, 8, 1, 1, 1),
(1992, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 27, 8, 1, 1, 1),
(1993, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 28, 8, 1, 1, 1),
(1994, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 29, 8, 1, 1, 1),
(1995, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 30, 8, 1, 1, 1),
(1996, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 31, 8, 1, 1, 1),
(1997, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 32, 8, 1, 1, 1),
(1998, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 33, 8, 1, 1, 1),
(1999, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 34, 8, 1, 1, 1),
(2000, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 35, 8, 1, 1, 1),
(2001, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 36, 8, 1, 1, 1),
(2002, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 37, 8, 1, 1, 1),
(2003, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 38, 8, 1, 1, 1),
(2004, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 39, 8, 1, 1, 1),
(2005, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 40, 8, 1, 1, 1),
(2006, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 41, 8, 1, 1, 1),
(2007, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 42, 8, 1, 1, 1),
(2008, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 43, 8, 1, 1, 1),
(2009, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 44, 8, 1, 1, 1),
(2010, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 45, 8, 1, 1, 1),
(2011, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 46, 8, 1, 1, 1),
(2012, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 47, 8, 1, 1, 1),
(2013, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 48, 8, 1, 1, 1),
(2014, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 49, 8, 1, 1, 1),
(2015, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 50, 8, 1, 1, 1),
(2016, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 51, 8, 1, 1, 1),
(2017, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 52, 8, 1, 1, 1),
(2018, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 53, 8, 1, 1, 1),
(2019, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 54, 8, 1, 1, 1),
(2020, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 55, 8, 1, 1, 1),
(2021, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 56, 8, 1, 1, 1),
(2022, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 57, 8, 1, 1, 1),
(2023, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 58, 8, 1, 1, 1),
(2024, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 59, 8, 1, 1, 1),
(2025, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 60, 8, 1, 1, 1),
(2026, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 61, 8, 1, 1, 1),
(2027, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 62, 8, 1, 1, 1),
(2028, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 63, 8, 1, 1, 1),
(2029, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 64, 8, 1, 1, 1),
(2030, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 65, 8, 1, 1, 1),
(2031, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 66, 8, 1, 1, 1),
(2032, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 67, 8, 1, 1, 1),
(2033, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 68, 8, 1, 1, 1),
(2034, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 69, 8, 1, 1, 1),
(2035, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 70, 8, 1, 1, 1),
(2036, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 71, 8, 1, 1, 1),
(2037, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 72, 8, 1, 1, 1),
(2038, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 73, 8, 1, 1, 1),
(2039, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 74, 8, 1, 1, 1),
(2040, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 75, 8, 1, 1, 1),
(2041, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 76, 8, 1, 1, 1),
(2042, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 77, 8, 1, 1, 1),
(2043, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 79, 8, 1, 1, 1),
(2044, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 80, 8, 1, 1, 1),
(2045, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 81, 8, 1, 1, 1),
(2046, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 82, 8, 1, 1, 1),
(2047, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 83, 8, 1, 1, 1),
(2048, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 84, 8, 1, 1, 1),
(2049, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 85, 8, 1, 1, 1),
(2050, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 86, 8, 1, 1, 1),
(2051, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 87, 8, 1, 1, 1),
(2052, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 88, 8, 1, 1, 1),
(2053, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 89, 8, 1, 1, 1),
(2054, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 90, 8, 1, 1, 1),
(2055, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 91, 8, 1, 1, 1),
(2056, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 92, 8, 1, 1, 1),
(2057, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 93, 8, 1, 1, 1),
(2058, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 94, 8, 1, 1, 1),
(2059, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 95, 8, 1, 1, 1),
(2060, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 96, 8, 1, 1, 1),
(2061, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 97, 8, 1, 1, 1),
(2062, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 98, 8, 1, 1, 1),
(2063, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 99, 8, 1, 1, 1),
(2064, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 100, 8, 1, 1, 1),
(2065, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 101, 8, 1, 1, 1),
(2066, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 102, 8, 1, 1, 1),
(2067, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 103, 8, 1, 1, 1),
(2068, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 104, 8, 1, 1, 1),
(2069, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 105, 8, 1, 1, 1),
(2070, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 106, 8, 1, 1, 1),
(2071, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 107, 8, 1, 1, 1),
(2072, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 108, 8, 1, 1, 1),
(2073, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 109, 8, 1, 1, 1),
(2074, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 110, 8, 1, 1, 1),
(2075, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 111, 8, 1, 1, 1),
(2076, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 112, 8, 1, 1, 1),
(2077, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 113, 8, 1, 1, 1),
(2078, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 114, 8, 1, 1, 1),
(2079, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 115, 8, 1, 1, 1),
(2080, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 116, 8, 1, 1, 1),
(2081, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 117, 8, 1, 1, 1),
(2082, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 118, 8, 1, 1, 1),
(2083, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 119, 8, 1, 1, 1),
(2084, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 120, 8, 1, 1, 1),
(2085, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 121, 8, 1, 1, 1),
(2086, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 122, 8, 1, 1, 1),
(2087, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 123, 8, 1, 1, 1),
(2088, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 124, 8, 1, 1, 1),
(2089, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 125, 8, 1, 1, 1),
(2090, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 126, 8, 1, 1, 1),
(2091, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 127, 8, 1, 1, 1),
(2092, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 128, 8, 1, 1, 1),
(2093, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 129, 8, 1, 1, 1),
(2094, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 130, 8, 1, 1, 1),
(2095, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 131, 8, 1, 1, 1),
(2096, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 132, 8, 1, 1, 1),
(2097, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 133, 8, 1, 1, 1);
INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(2098, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 134, 8, 1, 1, 1),
(2099, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 135, 8, 1, 1, 1),
(2100, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 136, 8, 1, 1, 1),
(2101, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 137, 8, 1, 1, 1),
(2102, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 138, 8, 1, 1, 1),
(2103, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 139, 8, 1, 1, 1),
(2104, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 140, 8, 1, 1, 1),
(2105, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 141, 8, 1, 1, 1),
(2106, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 142, 8, 1, 1, 1),
(2107, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 143, 8, 1, 1, 1),
(2108, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 144, 8, 1, 1, 1),
(2109, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 145, 8, 1, 1, 1),
(2110, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 146, 8, 1, 1, 1),
(2111, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 147, 8, 1, 1, 1),
(2112, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 148, 8, 1, 1, 1),
(2113, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 149, 8, 1, 1, 1),
(2114, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 150, 8, 1, 1, 1),
(2115, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 151, 8, 1, 1, 1),
(2116, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 152, 8, 1, 1, 1),
(2117, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 153, 8, 1, 1, 1),
(2118, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 154, 8, 1, 1, 1),
(2119, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 155, 8, 1, 1, 1),
(2120, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 156, 8, 1, 1, 1),
(2121, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 157, 8, 1, 1, 1),
(2122, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 158, 8, 1, 1, 1),
(2123, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 159, 8, 1, 1, 1),
(2124, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 160, 8, 1, 1, 1),
(2125, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 161, 8, 1, 1, 1),
(2126, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 162, 8, 1, 1, 1),
(2127, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 163, 8, 1, 1, 1),
(2128, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 164, 8, 1, 1, 1),
(2129, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 165, 8, 1, 1, 1),
(2130, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 166, 8, 1, 1, 1),
(2131, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 167, 8, 1, 1, 1),
(2132, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 168, 8, 1, 1, 1),
(2133, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 169, 8, 1, 1, 1),
(2134, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 170, 8, 1, 1, 1),
(2135, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 171, 8, 1, 1, 1),
(2136, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 172, 8, 1, 1, 1),
(2137, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 173, 8, 1, 1, 1),
(2138, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 174, 8, 1, 1, 1),
(2139, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 175, 8, 1, 1, 1),
(2140, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 176, 8, 1, 1, 1),
(2141, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 177, 8, 1, 1, 1),
(2142, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 178, 8, 1, 1, 1),
(2143, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 179, 8, 1, 1, 1),
(2144, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 180, 8, 1, 1, 1),
(2145, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 181, 8, 1, 1, 1),
(2146, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 182, 8, 1, 1, 1),
(2147, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 183, 8, 1, 1, 1),
(2148, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 184, 8, 1, 1, 1),
(2149, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 185, 8, 1, 1, 1),
(2150, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 186, 8, 1, 1, 1),
(2151, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 187, 8, 1, 1, 1),
(2152, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 188, 8, 1, 1, 1),
(2153, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 189, 8, 1, 1, 1),
(2154, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 190, 8, 1, 1, 1),
(2155, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 191, 8, 1, 1, 1),
(2156, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 192, 8, 1, 1, 1),
(2157, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 193, 8, 1, 1, 1),
(2158, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 194, 8, 1, 1, 1),
(2159, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 195, 8, 1, 1, 1),
(2160, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 196, 8, 1, 1, 1),
(2161, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 197, 8, 1, 1, 1),
(2162, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 198, 8, 1, 1, 1),
(2163, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 199, 8, 1, 1, 1),
(2164, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 200, 8, 1, 1, 1),
(2165, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 201, 8, 1, 1, 1),
(2166, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 202, 8, 1, 1, 1),
(2167, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 203, 8, 1, 1, 1),
(2168, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 204, 8, 1, 1, 1),
(2169, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 205, 8, 1, 1, 1),
(2170, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 206, 8, 1, 1, 1),
(2171, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 207, 8, 1, 1, 1),
(2172, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 208, 8, 1, 1, 1),
(2173, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 209, 8, 1, 1, 1),
(2174, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 210, 8, 1, 1, 1),
(2175, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 211, 8, 1, 1, 1),
(2176, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 214, 8, 1, 1, 1),
(2177, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 215, 8, 1, 1, 1),
(2178, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 216, 8, 1, 1, 1),
(2179, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 217, 8, 1, 1, 1),
(2180, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 218, 8, 1, 1, 1),
(2181, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 219, 8, 1, 1, 1),
(2182, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 220, 8, 1, 1, 1),
(2183, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 221, 8, 1, 1, 1),
(2184, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 222, 8, 1, 1, 1),
(2185, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 223, 8, 1, 1, 1),
(2186, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 224, 8, 1, 1, 1),
(2187, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 225, 8, 1, 1, 1),
(2188, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 226, 8, 1, 1, 1),
(2189, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 227, 8, 1, 1, 1),
(2190, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 228, 8, 1, 1, 1),
(2191, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 229, 8, 1, 1, 1),
(2192, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 230, 8, 1, 1, 1),
(2193, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 231, 8, 1, 1, 1),
(2194, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 232, 8, 1, 1, 1),
(2195, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 233, 8, 1, 1, 1),
(2196, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 234, 8, 1, 1, 1),
(2197, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 235, 8, 1, 1, 1),
(2198, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 236, 8, 1, 1, 1),
(2199, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 237, 8, 1, 1, 1),
(2200, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 238, 8, 1, 1, 1),
(2201, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 239, 8, 1, 1, 1),
(2202, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 240, 8, 1, 1, 1),
(2203, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 241, 8, 1, 1, 1),
(2204, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 242, 8, 1, 1, 1),
(2205, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 243, 8, 1, 1, 1),
(2206, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 244, 8, 1, 1, 1),
(2207, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 245, 8, 1, 1, 1),
(2208, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 246, 8, 1, 1, 1),
(2209, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 247, 8, 1, 1, 1),
(2210, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 248, 8, 1, 1, 1),
(2211, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 249, 8, 1, 1, 1),
(2212, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 250, 8, 1, 1, 1),
(2213, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 251, 8, 1, 1, 1),
(2214, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 252, 8, 1, 1, 1),
(2215, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 253, 8, 1, 1, 1),
(2216, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 254, 8, 1, 1, 1),
(2217, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 255, 8, 1, 1, 1),
(2218, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 256, 8, 1, 1, 1),
(2219, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 257, 8, 1, 1, 1),
(2220, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 258, 8, 1, 1, 1),
(2221, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 259, 8, 1, 1, 1),
(2222, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 260, 8, 1, 1, 1),
(2223, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 261, 8, 1, 1, 1),
(2224, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 262, 8, 1, 1, 1),
(2225, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 263, 8, 1, 1, 1),
(2226, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 264, 8, 1, 1, 1),
(2227, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 265, 8, 1, 1, 1),
(2228, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 266, 8, 1, 1, 1),
(2229, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 267, 8, 1, 1, 1),
(2230, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 268, 8, 1, 1, 1),
(2231, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 269, 8, 1, 1, 1),
(2232, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 270, 8, 1, 1, 1),
(2233, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 271, 8, 1, 1, 1),
(2234, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 272, 8, 1, 1, 1),
(2235, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 273, 8, 1, 1, 1),
(2236, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 274, 8, 1, 1, 1),
(2237, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 275, 8, 1, 1, 1),
(2238, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 276, 8, 1, 1, 1),
(2239, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 277, 8, 1, 1, 1),
(2240, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 278, 8, 1, 1, 1),
(2241, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 279, 8, 1, 1, 1),
(2242, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 280, 8, 1, 1, 1),
(2243, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 281, 8, 1, 1, 1),
(2244, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 282, 8, 1, 1, 1),
(2245, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 283, 8, 1, 1, 1),
(2246, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 284, 8, 1, 1, 1),
(2247, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 285, 8, 1, 1, 1),
(2248, 1, '2019-11-13 00:22:37', '2019-11-13 00:22:37', 286, 8, 1, 1, 1),
(2249, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 287, 8, 1, 1, 1),
(2250, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 288, 8, 1, 1, 1),
(2251, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 289, 8, 1, 1, 1),
(2252, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 290, 8, 1, 1, 1),
(2253, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 291, 8, 1, 1, 1),
(2254, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 292, 8, 1, 1, 1),
(2255, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 293, 8, 1, 1, 1),
(2256, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 294, 8, 1, 1, 1),
(2257, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 295, 8, 1, 1, 1),
(2258, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 296, 8, 1, 1, 1),
(2259, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 297, 8, 1, 1, 1),
(2260, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 298, 8, 1, 1, 1),
(2261, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 299, 8, 1, 1, 1),
(2262, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 300, 8, 1, 1, 1),
(2263, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 301, 8, 1, 1, 1),
(2264, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 302, 8, 1, 1, 1),
(2265, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 303, 8, 1, 1, 1),
(2266, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 304, 8, 1, 1, 1),
(2267, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 305, 8, 1, 1, 1),
(2268, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 306, 8, 1, 1, 1),
(2269, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 307, 8, 1, 1, 1),
(2270, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 308, 8, 1, 1, 1),
(2271, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 309, 8, 1, 1, 1),
(2272, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 310, 8, 1, 1, 1),
(2273, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 311, 8, 1, 1, 1),
(2274, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 312, 8, 1, 1, 1),
(2275, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 313, 8, 1, 1, 1),
(2276, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 314, 8, 1, 1, 1),
(2277, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 315, 8, 1, 1, 1),
(2278, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 316, 8, 1, 1, 1),
(2279, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 317, 8, 1, 1, 1),
(2280, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 318, 8, 1, 1, 1),
(2281, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 319, 8, 1, 1, 1),
(2282, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 320, 8, 1, 1, 1),
(2283, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 321, 8, 1, 1, 1),
(2284, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 322, 8, 1, 1, 1),
(2285, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 323, 8, 1, 1, 1),
(2286, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 324, 8, 1, 1, 1),
(2287, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 325, 8, 1, 1, 1),
(2288, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 326, 8, 1, 1, 1),
(2289, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 327, 8, 1, 1, 1),
(2290, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 328, 8, 1, 1, 1),
(2291, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 329, 8, 1, 1, 1),
(2292, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 330, 8, 1, 1, 1),
(2293, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 331, 8, 1, 1, 1),
(2294, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 332, 8, 1, 1, 1),
(2295, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 333, 8, 1, 1, 1),
(2296, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 334, 8, 1, 1, 1),
(2297, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 335, 8, 1, 1, 1),
(2298, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 336, 8, 1, 1, 1),
(2299, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 337, 8, 1, 1, 1),
(2300, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 338, 8, 1, 1, 1),
(2301, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 339, 8, 1, 1, 1),
(2302, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 340, 8, 1, 1, 1),
(2303, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 341, 8, 1, 1, 1),
(2304, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 342, 8, 1, 1, 1),
(2305, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 343, 8, 1, 1, 1),
(2306, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 344, 8, 1, 1, 1),
(2307, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 345, 8, 1, 1, 1),
(2308, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 346, 8, 1, 1, 1),
(2309, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 347, 8, 1, 1, 1),
(2310, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 348, 8, 1, 1, 1),
(2311, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 349, 8, 1, 1, 1),
(2312, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 350, 8, 1, 1, 1),
(2313, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 351, 8, 1, 1, 1),
(2314, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 352, 8, 1, 1, 1),
(2315, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 353, 8, 1, 1, 1),
(2316, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 354, 8, 1, 1, 1),
(2317, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 355, 8, 1, 1, 1),
(2318, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 356, 8, 1, 1, 1),
(2319, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 357, 8, 1, 1, 1),
(2320, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 358, 8, 1, 1, 1),
(2321, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 359, 8, 1, 1, 1),
(2322, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 360, 8, 1, 1, 1),
(2323, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 361, 8, 1, 1, 1),
(2324, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 362, 8, 1, 1, 1),
(2325, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 363, 8, 1, 1, 1),
(2326, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 364, 8, 1, 1, 1),
(2327, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 365, 8, 1, 1, 1),
(2328, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 366, 8, 1, 1, 1),
(2329, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 367, 8, 1, 1, 1),
(2330, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 368, 8, 1, 1, 1),
(2331, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 369, 8, 1, 1, 1),
(2332, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 370, 8, 1, 1, 1),
(2333, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 371, 8, 1, 1, 1),
(2334, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 372, 8, 1, 1, 1),
(2335, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 373, 8, 1, 1, 1),
(2336, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 374, 8, 1, 1, 1),
(2337, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 375, 8, 1, 1, 1),
(2338, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 376, 8, 1, 1, 1),
(2339, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 377, 8, 1, 1, 1),
(2340, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 378, 8, 1, 1, 1),
(2341, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 379, 8, 1, 1, 1),
(2342, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 380, 8, 1, 1, 1),
(2343, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 381, 8, 1, 1, 1),
(2344, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 382, 8, 1, 1, 1),
(2345, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 383, 8, 1, 1, 1),
(2346, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 384, 8, 1, 1, 1),
(2347, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 385, 8, 1, 1, 1),
(2348, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 386, 8, 1, 1, 1),
(2349, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 387, 8, 1, 1, 1),
(2350, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 388, 8, 1, 1, 1),
(2351, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 389, 8, 1, 1, 1),
(2352, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 390, 8, 1, 1, 1),
(2353, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 391, 8, 1, 1, 1),
(2354, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 392, 8, 1, 1, 1),
(2355, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 393, 8, 1, 1, 1),
(2356, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 394, 8, 1, 1, 1),
(2357, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 395, 8, 1, 1, 1),
(2358, 1, '2019-11-13 00:22:38', '2019-11-13 00:22:38', 396, 8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_room_lists`
--

CREATE TABLE `sm_room_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_bed` int(11) NOT NULL,
  `cost_per_bed` double(16,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dormitory_id` int(10) UNSIGNED DEFAULT '1',
  `room_type_id` int(10) UNSIGNED DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_room_lists`
--

INSERT INTO `sm_room_lists` (`id`, `name`, `number_of_bed`, `cost_per_bed`, `description`, `active_status`, `created_at`, `updated_at`, `dormitory_id`, `room_type_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Neque voluptates ea ut qui. Quia et aut placeat. Eveniet odit dignissimos delectus quia voluptas.', 87, 5893.00, 'Quia ab et hic sit et explicabo. Laborum odio perferendis cumque quaerat doloribus itaque. Voluptas unde quos quam sint pariatur quia voluptatem.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1, 1, 1),
(2, 'Optio voluptas magni eos et quo quaerat. In hic enim molestiae ea.', 56, 5099.00, 'Explicabo est omnis eum aut. Animi quisquam tenetur voluptas qui assumenda. Id aperiam labore maiores ea quam assumenda voluptate.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 2, 1, 1, 1),
(3, 'Eligendi est totam amet occaecati aliquid aut. Hic non ex repellat consequatur.', 85, 5162.00, 'Dolorem sed reprehenderit culpa minus animi asperiores. Cum dolore sed dolorem accusantium quam rerum necessitatibus sequi. Eum dolorum molestiae ut aut repellendus consequuntur provident.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 3, 1, 1, 1),
(4, 'Beatae eaque officiis aliquid qui deleniti et. Nihil magni omnis minima in.', 46, 5047.00, 'Qui rerum inventore eum dolor ratione. Quisquam tempora laboriosam dolores impedit qui ab. Dolores unde dolorum enim et consequatur quia natus. Sit inventore dignissimos dolorem molestias.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 4, 1, 1, 1),
(5, 'Amet odio inventore rem reprehenderit. Sit eaque reprehenderit hic. Nemo incidunt cum aut atque.', 50, 5100.00, 'Dolor accusamus quod sit. Ut quidem iure iste vitae enim repudiandae. Quia voluptatibus eos deserunt commodi deleniti.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 5, 1, 1, 1),
(6, 'Est distinctio ab quas. In minima sed autem commodi ipsa. Id in doloremque quae error.', 40, 6857.00, 'Tempore modi distinctio debitis illo commodi quod asperiores eligendi. Ut aperiam omnis iste voluptatibus ut. Illum dolor praesentium tenetur ut.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 6, 1, 1, 1),
(7, 'Reiciendis accusamus itaque aperiam. Necessitatibus nobis et voluptas fugiat aut.', 83, 5307.00, 'Rerum omnis tempore voluptatem est. Praesentium et veritatis optio. Ipsam atque voluptatem minima corporis eaque.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 2, 1, 1, 1, 1),
(8, 'Cupiditate maxime qui aut accusantium illo ut. Ducimus repellendus quis fugit.', 71, 6627.00, 'Qui assumenda voluptatem aut doloribus. Adipisci itaque modi culpa dolor accusantium. Error praesentium tenetur quia. Omnis dolor eveniet eos sapiente magni est quia.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 2, 2, 1, 1, 1),
(9, 'Consequatur nihil enim omnis dolorem qui nulla. Voluptas ad ipsum quis et est.', 81, 6933.00, 'Tempora maxime ducimus sed nihil quos. Adipisci aut totam omnis nulla maiores. Natus sint expedita quia non ipsam voluptatibus minima. Est delectus illo et error rem.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 2, 3, 1, 1, 1),
(10, 'A quibusdam est totam laudantium quia in atque. Omnis ut illo necessitatibus et vel ut.', 83, 6031.00, 'Sunt eaque voluptate a provident sunt aspernatur. Qui a tempore et doloremque. Deserunt voluptatum dolor quia aut eaque neque. Necessitatibus aut porro veniam reiciendis harum.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 2, 4, 1, 1, 1),
(11, 'Voluptatem iusto debitis asperiores a. Error quaerat quasi molestiae ratione accusamus.', 60, 5261.00, 'Expedita laudantium sint a omnis eligendi qui non. Occaecati quibusdam distinctio repellat voluptas magnam. Quo porro ullam velit. Sed ut saepe distinctio.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 2, 5, 1, 1, 1),
(12, 'Fugit recusandae omnis occaecati quo. Ut animi saepe quisquam tenetur magnam a inventore.', 68, 6436.00, 'Veritatis velit consequuntur facere quo. Quia maxime sunt ipsum sed sed. Veniam saepe autem distinctio omnis nulla facere mollitia.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 2, 6, 1, 1, 1),
(13, 'Et excepturi ut facilis officia sit omnis. Enim expedita aut id rerum et quaerat doloremque.', 52, 5716.00, 'Sunt consequatur nobis possimus ab debitis. Quia repellat eligendi ut facilis maiores id. Fugit sit quia aut ut unde tempora sint velit.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 3, 1, 1, 1, 1),
(14, 'Sed eos ut amet ullam. Voluptatem cum voluptatem eum cumque.', 83, 5737.00, 'Et consequatur vero voluptatem nihil et ipsam nostrum. Tempora debitis cupiditate voluptas rerum. Eaque quo maiores similique asperiores ex a eligendi.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 3, 2, 1, 1, 1),
(15, 'Vel ut nam soluta hic. Sed eum autem cupiditate maxime nesciunt.', 42, 6832.00, 'Cumque quasi ipsam facere. Temporibus beatae blanditiis nulla quam. Odit quo laudantium autem libero.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 3, 3, 1, 1, 1),
(16, 'Voluptatem corporis magnam quo alias dignissimos. Labore fuga officia laudantium amet dolores id.', 75, 5687.00, 'Laboriosam quos rerum exercitationem. Quia doloribus esse nulla sunt fugiat aut non. Sed et similique dolores adipisci sint sint molestias. Illum occaecati et odio dicta quia nisi ducimus.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 3, 4, 1, 1, 1),
(17, 'Debitis hic rerum optio sed quo. Non in ut nemo aut facilis in qui.', 55, 6770.00, 'Vitae sit nesciunt aut excepturi veritatis neque voluptatem. Voluptatem aliquam sint quibusdam quisquam omnis quasi. Laboriosam nemo et veniam hic. Eum enim ut quas quos inventore et.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 3, 5, 1, 1, 1),
(18, 'Illo et vero quisquam tempora enim quisquam ut. Nulla tempore natus occaecati atque sed eius rerum.', 65, 5337.00, 'Veritatis soluta dolorum nulla dolorem. Ratione laudantium eum ipsa voluptatum quam sint. Dolores omnis doloribus aut nam ea doloribus dolore labore.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 3, 6, 1, 1, 1),
(19, 'Et rerum aut voluptas deserunt ipsa natus in et. Dicta qui quisquam laboriosam mollitia.', 87, 5999.00, 'Accusantium aut amet odit voluptatem eius. Est aperiam error quisquam dolorem doloribus aliquam. Impedit qui commodi voluptas.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 4, 1, 1, 1, 1),
(20, 'Nisi officia ut iure id esse. Quibusdam dicta tenetur aut. Et impedit quod sapiente deleniti.', 51, 5912.00, 'Omnis non dolor asperiores odit soluta consequatur optio. Natus non impedit laborum natus. Doloribus eius autem voluptatum. Est assumenda eius harum eius omnis.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 4, 2, 1, 1, 1),
(21, 'Laborum eius omnis magnam enim. Sint molestiae nobis vitae.', 90, 6384.00, 'Odit occaecati quasi voluptas. Autem ea sed sapiente quae atque. Libero unde velit odit unde provident. Error aut perspiciatis molestiae velit tempora omnis.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 4, 3, 1, 1, 1),
(22, 'Maiores earum hic sint. Consectetur esse dignissimos ea dolores. Non sapiente dolores et ipsam et.', 45, 6250.00, 'Fugiat velit impedit voluptatem voluptates aut laborum voluptatem quo. Totam modi similique laborum quas et ratione. Modi nisi sunt error qui. Iste quia sit quia officia ut eius ab.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 4, 4, 1, 1, 1),
(23, 'Et sit dicta quod nostrum fuga amet libero. Enim ut voluptas unde voluptas.', 68, 5150.00, 'Qui odit magnam excepturi exercitationem a odio. Excepturi quibusdam consequuntur cum atque id velit officiis sit. Et ad nobis qui quisquam.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 4, 5, 1, 1, 1),
(24, 'Amet minus beatae maxime quia assumenda. Facilis quidem corrupti sint earum consequatur dolore et.', 52, 6696.00, 'Nostrum aut sit deserunt ut placeat fugiat nostrum. Sed necessitatibus quos illum ducimus aut. Aut a beatae illum incidunt.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 4, 6, 1, 1, 1),
(25, 'Tempora qui omnis beatae voluptas ut esse. Ex maxime ullam velit eos omnis odio.', 73, 6891.00, 'Eveniet aut asperiores rerum error. Vel aut minima delectus. Odio sequi voluptatem ut fuga. Quo est amet autem excepturi nemo. Maiores dolorem quisquam illum.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 5, 1, 1, 1, 1),
(26, 'Maiores velit sed distinctio. Ullam ut sit dolorem sit aliquid.', 68, 6252.00, 'Odio non modi suscipit deserunt ut molestiae. Itaque consectetur optio saepe qui eveniet voluptatem.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 5, 2, 1, 1, 1),
(27, 'Et vitae quia tempora. Eius rerum animi fugit temporibus debitis. Ipsam eaque similique optio et.', 54, 5199.00, 'Voluptas minus impedit autem reiciendis ea veniam sed. Enim qui distinctio eveniet cupiditate dignissimos quis. Quia molestiae voluptas aut.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 5, 3, 1, 1, 1),
(28, 'Officiis esse repellat natus sed. Repudiandae error ea qui. Modi consequatur et tenetur eum ut ab.', 90, 5771.00, 'Odit quidem alias temporibus est repellat dolore doloremque. In eos et fuga. Recusandae vel est sunt nemo ab aut sint.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 5, 4, 1, 1, 1),
(29, 'Et quia molestiae quas. Aut sit cupiditate nesciunt hic. Laborum amet neque omnis accusantium.', 94, 5078.00, 'Numquam omnis quae voluptas velit voluptatibus. Non porro provident autem quae suscipit voluptas. Aut eveniet aut est ex. Natus error nisi rerum laudantium corrupti.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 5, 5, 1, 1, 1),
(30, 'Et quis maxime aliquid. Commodi dolor illo facilis omnis. Voluptate sint numquam aut suscipit.', 89, 5921.00, 'Ut aliquid quia et quam quo. Voluptatem et voluptas vitae adipisci. Fugit dolorem qui impedit aspernatur voluptas. Maxime dolores at ut maxime rerum.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 5, 6, 1, 1, 1),
(31, 'Qui deleniti ratione aut et ducimus officia. Atque unde error itaque excepturi quo beatae.', 87, 5262.00, 'Nemo sed iure voluptatibus vero facere ipsum quidem sit. Voluptas aut ea omnis fuga nulla ipsum nobis. Quos amet consectetur non quod quis porro.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 6, 1, 1, 1, 1),
(32, 'Fugiat expedita cupiditate consequatur commodi itaque et. A nulla corporis sunt.', 80, 5825.00, 'Libero corrupti quis eligendi consequatur accusantium. Fugit iusto nobis quas voluptatum. Quo ut ullam aut cupiditate odit aspernatur tempora.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 6, 2, 1, 1, 1),
(33, 'Asperiores velit et deleniti et quidem. Eos tenetur nostrum eum rerum.', 66, 6708.00, 'Ut odio itaque eligendi ipsa sed. Id ab debitis voluptatem adipisci. Blanditiis corrupti maiores omnis odio vitae nostrum deleniti accusamus.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 6, 3, 1, 1, 1),
(34, 'Totam enim et ullam odio nemo soluta. Aut illo voluptate vitae velit odio.', 85, 6225.00, 'Est perspiciatis id voluptatum sunt ad molestias vel adipisci. Voluptatum perspiciatis ipsum quo quia impedit. Quo ratione quaerat rem accusamus expedita.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 6, 4, 1, 1, 1),
(35, 'Iusto nisi hic sed culpa. Debitis rerum eaque ut ut.', 80, 5560.00, 'Soluta non placeat id id. Praesentium asperiores corporis harum totam. Velit fuga eveniet qui omnis mollitia doloremque dolorem. Voluptatum enim omnis assumenda aperiam veniam non voluptatum quidem.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 6, 5, 1, 1, 1),
(36, 'Corrupti consequuntur quod similique voluptatum. Reprehenderit aut asperiores accusantium.', 88, 5285.00, 'Atque non possimus sit nesciunt nemo dignissimos. Adipisci aliquid est sint nisi. Nam et illo quibusdam illum pariatur.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 6, 6, 1, 1, 1),
(37, 'Quasi et fugiat in corporis. Sint velit fugiat doloribus voluptatibus.', 57, 5130.00, 'Aut deserunt ipsam nihil cupiditate animi quam similique. Id quia ut quia maiores placeat et.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 7, 1, 1, 1, 1),
(38, 'Aliquam quas autem placeat et ea possimus hic. Qui odio impedit nihil.', 92, 5682.00, 'Id autem id sint est. Ducimus vitae veniam molestias rerum. Pariatur harum sapiente voluptate aut a ut. Sint quasi eum dolore pariatur laborum. Non eius veniam quis sed.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 7, 2, 1, 1, 1),
(39, 'Quae omnis numquam sapiente quia et animi quia. Quos eum aliquid recusandae.', 94, 6357.00, 'Facere quasi rerum voluptas exercitationem molestiae. Voluptatem provident sed hic illo atque repudiandae est. Non odio eos magni voluptatem dolorem expedita quia.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 7, 3, 1, 1, 1),
(40, 'Corporis alias temporibus nobis expedita veniam eveniet sunt. Est dicta illum est aut architecto.', 95, 6617.00, 'Pariatur et dolores cumque aliquam at occaecati. Qui tempora molestias expedita numquam aliquid.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 7, 4, 1, 1, 1),
(41, 'Accusantium sint est qui veniam. Impedit ea nostrum doloremque.', 73, 6470.00, 'Assumenda illo molestias sequi commodi sit qui. Earum et et natus sequi ut. Rem et vel neque qui. Excepturi sapiente fugiat ipsa eos doloribus error.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 7, 5, 1, 1, 1),
(42, 'Itaque nobis at dolores sapiente. Non eum qui eaque. Labore adipisci in dolore.', 85, 5792.00, 'Consectetur blanditiis nam rerum ut blanditiis. Possimus dolores eveniet aut sed rerum earum. Est ratione ipsam ipsam eos est ea voluptas iste.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 7, 6, 1, 1, 1),
(43, 'Est culpa magnam incidunt dolorem. Quas possimus qui autem cum. In qui placeat consequuntur eius.', 57, 6533.00, 'Nisi est incidunt qui repellendus. Non officia modi et magnam. Libero ut magnam dolores. Facilis est tempora non.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 8, 1, 1, 1, 1),
(44, 'Et itaque culpa et occaecati minus sunt ut. Qui quaerat et quia unde.', 51, 5867.00, 'Minus sunt illum cumque ut praesentium recusandae possimus. Voluptatem voluptas ipsam voluptas tempora eum recusandae. Earum necessitatibus et minus exercitationem.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 8, 2, 1, 1, 1),
(45, 'Voluptas architecto suscipit ut voluptatibus rerum. Fugiat rerum fugiat est facilis ut id.', 84, 5662.00, 'Nostrum pariatur atque cum neque sunt illo ea. Aut consequatur qui eius quia quo omnis in. Adipisci quae iure eius atque et neque.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 8, 3, 1, 1, 1),
(46, 'Nihil qui et est. Facilis atque deserunt sit natus.', 49, 6276.00, 'Cumque quo voluptates suscipit ipsum. Quo et aperiam eaque molestiae earum. Aut maxime maiores aliquam sint labore amet magni.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 8, 4, 1, 1, 1),
(47, 'Explicabo reprehenderit non amet quibusdam consequatur. Ad aliquid soluta eos autem.', 66, 6211.00, 'Ut porro et architecto doloribus veritatis voluptatum a magni. Maiores velit rerum nihil quis consequuntur id labore nostrum. Quis non voluptatem officiis consequuntur est quia fuga.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 8, 5, 1, 1, 1),
(48, 'Nesciunt hic quaerat quae iste aliquam ea. Rerum laudantium harum nobis quaerat dolorum fugit.', 84, 6226.00, 'Assumenda quaerat quas occaecati inventore delectus distinctio. Velit odit cum ut quas est quas placeat dicta. Est sapiente fuga qui veniam.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 8, 6, 1, 1, 1),
(49, 'Impedit est quasi placeat. Et dolores aut occaecati nam quisquam.', 93, 6583.00, 'Quia nostrum quo dolore porro. Repellat enim voluptate dolores nesciunt. Tenetur voluptatibus nihil eos facere quia laudantium magni. Amet velit qui officiis reiciendis fugiat eligendi aspernatur.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 9, 1, 1, 1, 1),
(50, 'Quasi ab consectetur sapiente nam deleniti. Aperiam in voluptatem non nemo ut quam neque.', 82, 6310.00, 'Non quia debitis asperiores ut quia autem eos excepturi. Rem magnam quia fugiat culpa aut. Aperiam et alias qui quam et. Sed ut quia architecto ut ratione molestiae.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 9, 2, 1, 1, 1),
(51, 'Non vero ipsa minus alias. Dolorem magni distinctio iusto qui rerum.', 58, 5260.00, 'Laboriosam id fugit sapiente saepe et in. Perferendis at eos corporis. Corporis et molestiae quaerat libero recusandae autem et autem. Sit id ut recusandae sit.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 9, 3, 1, 1, 1),
(52, 'Dolorem quasi autem aut recusandae. Sequi sed facilis saepe velit reiciendis tempora eligendi.', 53, 6049.00, 'Voluptas eos optio animi aut. Id tempore non minima molestias. Voluptates sit non et vero et. Dolor qui vero in doloremque molestias ad.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 9, 4, 1, 1, 1),
(53, 'Corporis quibusdam iusto eveniet voluptatem earum suscipit et. Ipsum possimus qui saepe.', 88, 5030.00, 'A autem id tempore impedit in corporis. Corporis qui quia ad cupiditate dolores eaque dignissimos. Optio sed atque aut. Iure vel cum aperiam autem.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 9, 5, 1, 1, 1),
(54, 'Neque deleniti cum totam aliquam. Quos optio magni cupiditate.', 64, 5114.00, 'Assumenda molestiae impedit est ea harum. Deserunt voluptatem consequatur officia. Quis at aliquid atque voluptas ad.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 9, 6, 1, 1, 1),
(55, 'Ea exercitationem molestias qui saepe velit aut corrupti. Voluptate minima eos et ut aut.', 48, 6807.00, 'Perferendis aliquid temporibus magni doloribus suscipit. Cum et suscipit nihil itaque omnis provident. Consectetur dolorem laborum eligendi error doloribus. Sed pariatur quidem ipsa est ipsum et.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 10, 1, 1, 1, 1),
(56, 'Dolorem sit id consequatur ad. Vel aliquid voluptatum hic voluptatem. Sint eum sint et ab enim et.', 45, 5849.00, 'Ut voluptatibus ipsam expedita consequuntur incidunt nulla. Reiciendis repudiandae repellendus illum quo veniam necessitatibus culpa occaecati. Soluta totam quasi tempore.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 10, 2, 1, 1, 1),
(57, 'Ullam ut illum minus pariatur aut optio numquam autem. Aut ut est accusantium repudiandae sunt.', 51, 5851.00, 'Molestias hic et ad omnis quaerat minima dolores. Consequatur explicabo id et. Ut quis rerum magni totam facilis. Quo voluptas culpa error doloremque ex omnis.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 10, 3, 1, 1, 1),
(58, 'Adipisci corrupti aut sed iure sint. Voluptatem et sit et architecto qui quibusdam temporibus modi.', 77, 6201.00, 'Laboriosam in vel modi veritatis maiores aperiam nostrum. Molestias rem veniam vel et ut deserunt.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 10, 4, 1, 1, 1),
(59, 'Impedit aut molestiae labore. Animi nulla et natus laborum deleniti quae suscipit.', 45, 6651.00, 'Tempora consequuntur voluptatem unde labore iure et. Inventore et velit animi fuga. Dolorum fuga repellat rerum alias. Tempore quam id omnis enim laudantium in voluptas animi.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 10, 5, 1, 1, 1),
(60, 'Hic non non quaerat. Quam vel sunt quasi iste. Porro quam quod minus officia.', 75, 5308.00, 'Provident earum voluptatem ut optio. Consequatur non non libero fugit. Consequatur aut molestias aut sit aut.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 10, 6, 1, 1, 1),
(61, 'Ut voluptatem odio suscipit. Consequatur velit quia velit ut repellendus dolorem.', 84, 5683.00, 'Autem autem et nihil qui libero natus nulla. Est est illum autem eaque facere. Nihil sit nemo distinctio amet vero.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 11, 1, 1, 1, 1),
(62, 'Sit aspernatur dolorem non sed at. Quaerat dolorem quod est minima et molestias.', 70, 6567.00, 'Saepe eligendi nulla ipsa necessitatibus maiores repellat ea et. Illo esse quaerat ducimus saepe ipsum necessitatibus. Consequatur consequatur esse tenetur adipisci.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 11, 2, 1, 1, 1),
(63, 'Velit fugit ipsum quaerat consequatur vero. Aut et autem ut et molestias.', 68, 6721.00, 'Quo provident minus pariatur animi. Distinctio dignissimos et beatae placeat non et eius. Voluptas sit molestias animi sint.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 11, 3, 1, 1, 1),
(64, 'Illum inventore ea voluptatem aut. Consequuntur voluptates consequatur aut.', 50, 6691.00, 'Sed totam sit natus quia. Blanditiis vitae est dolorem dolorem occaecati. At maxime quaerat excepturi quia. Eius fugiat quia similique. Dolorum ipsum quisquam aut perferendis harum sit qui.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 11, 4, 1, 1, 1),
(65, 'Facilis eaque consequatur vel cum recusandae. Quia ut magnam rem eos voluptatem.', 97, 6366.00, 'Aut et sunt occaecati iste et dolor modi. Qui cumque deleniti qui. Ipsam placeat sapiente perspiciatis vero. Reprehenderit blanditiis voluptas aliquid vel minus.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 11, 5, 1, 1, 1),
(66, 'Aut qui et et facilis. Ut iure quaerat et praesentium aperiam. Ea eos architecto nihil aut non.', 52, 5982.00, 'Nisi similique voluptas ut vitae deserunt dolorum similique sed. Alias ut ipsa eius animi. Eligendi repellendus ipsam placeat eum.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 11, 6, 1, 1, 1),
(67, 'Ratione ad ut libero. Et aut placeat dolorum alias libero rerum.', 98, 5153.00, 'Quas vitae et porro consequatur sed odio quia. Asperiores minus saepe sed ea inventore consectetur. Ut quisquam laboriosam velit.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 12, 1, 1, 1, 1),
(68, 'Voluptatum ut eos ad a. Itaque reprehenderit perspiciatis reprehenderit nihil et qui.', 69, 6185.00, 'Minima et mollitia inventore voluptate quia nam qui adipisci. Commodi eveniet omnis quo molestiae labore eligendi id. Consectetur vero libero tempora corrupti officia fugiat et.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 12, 2, 1, 1, 1),
(69, 'Sed vitae odit rerum qui. Quo officia est vero dolorum exercitationem labore libero.', 65, 5859.00, 'Itaque quisquam exercitationem qui quis natus ea. Autem fuga eum id autem qui aut maxime aut. Aliquid molestiae iure quis. Sed et quia sint ea. Libero quod nesciunt ut sunt qui.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 12, 3, 1, 1, 1),
(70, 'Architecto eaque numquam sequi eaque harum aliquam quia. Iusto earum et voluptates ad nostrum.', 41, 6757.00, 'Fugit recusandae perferendis nisi harum earum ipsa. A aut possimus enim. Eos aut modi velit in tempore nisi at. Repudiandae aut cupiditate voluptatem omnis.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 12, 4, 1, 1, 1),
(71, 'Rerum amet ex voluptas rerum tenetur praesentium enim. Expedita et temporibus eaque eius natus.', 92, 5873.00, 'Atque voluptate harum explicabo dolor alias voluptas. Eveniet corrupti sed totam eum iusto magnam cupiditate. Rem quis consectetur dicta occaecati incidunt.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 12, 5, 1, 1, 1),
(72, 'Quo iste quaerat placeat reprehenderit in mollitia. Aut debitis nam perspiciatis porro.', 42, 6552.00, 'Optio molestias illo temporibus repudiandae. Tenetur consequatur quibusdam nostrum rerum recusandae. Fugit ut recusandae debitis minima.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 12, 6, 1, 1, 1),
(73, 'Veniam quasi et doloribus ut excepturi. Voluptatem est aut expedita. Aliquid sed rerum quasi vel.', 93, 5884.00, 'Odio et minus aut praesentium nisi. Reprehenderit ea unde aut magnam aut harum. Qui necessitatibus quia provident porro sapiente illo id.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 13, 1, 1, 1, 1),
(74, 'In vel sit sint. Iste non et cum fuga.', 85, 5009.00, 'Tempore ullam placeat repellendus a atque. Totam et saepe deleniti eos consequatur aut. Aut tempora deserunt qui consequatur. Eligendi molestias aut perferendis ut velit.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 13, 2, 1, 1, 1),
(75, 'Doloribus omnis omnis enim eius occaecati assumenda. Ut natus dolore rerum non maiores et.', 60, 5693.00, 'Magni repellat ex sit sint tempore et. Voluptatibus dolor autem aut necessitatibus placeat. Blanditiis sed blanditiis consectetur qui rerum. Voluptas dignissimos animi corporis delectus ducimus.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 13, 3, 1, 1, 1),
(76, 'Aliquid cumque quos quia. Et amet sed qui voluptate est non tenetur dignissimos.', 93, 5313.00, 'Voluptatem sit cum hic quo ea. Qui harum corrupti impedit explicabo cumque. Deleniti iste sed a exercitationem nesciunt non porro. Consequatur saepe reiciendis et perspiciatis praesentium porro est.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 13, 4, 1, 1, 1),
(77, 'Porro maiores harum ea qui et nobis ut. Laborum sit deleniti facilis veritatis.', 78, 5679.00, 'Autem delectus culpa sunt consectetur alias numquam deleniti. Eos ut tenetur qui quisquam recusandae rerum voluptas. Totam sed asperiores et.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 13, 5, 1, 1, 1),
(78, 'Eius eius voluptatem nisi. Dolorem tempore a officia tempore quos quia reprehenderit.', 63, 6105.00, 'Ut sequi enim libero sed porro. Vitae quibusdam et voluptate pariatur omnis. Et enim mollitia qui at et reprehenderit illo.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 13, 6, 1, 1, 1),
(79, 'Officiis laudantium id assumenda fuga vel ducimus. Alias cupiditate hic consequatur sed.', 91, 5449.00, 'Occaecati in id dolorum consequatur doloremque. Possimus et omnis id. Est ratione eos illum aperiam quaerat praesentium.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 14, 1, 1, 1, 1),
(80, 'Quia eveniet tempora est sint animi velit. Reprehenderit et pariatur dicta pariatur et libero.', 42, 6399.00, 'Hic saepe pariatur iure aperiam rem. Consequatur quam quam et velit. Eaque nobis explicabo veritatis aperiam in quia fuga.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 14, 2, 1, 1, 1),
(81, 'Rem sit beatae sunt nobis commodi. Consequatur sunt voluptate qui voluptas qui rerum quidem.', 47, 6066.00, 'Ducimus sint consequatur accusamus. Facilis placeat deleniti debitis id. Quidem laborum totam velit qui doloremque.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 14, 3, 1, 1, 1),
(82, 'Et earum placeat quam alias enim est. Sed molestias repellendus doloremque provident.', 46, 5193.00, 'Vel autem deserunt nobis et quia voluptas itaque officiis. Suscipit omnis beatae ad facilis. Voluptatem qui animi ea sint omnis sit repellat.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 14, 4, 1, 1, 1),
(83, 'Et est impedit quidem nihil. Ut nihil ut inventore minus sed. Quam ratione suscipit aliquam magnam.', 95, 6874.00, 'Nam fugiat molestiae et veritatis. Fugiat quo impedit soluta voluptas quo temporibus non molestias.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 14, 5, 1, 1, 1),
(84, 'Aut soluta provident voluptas quia eveniet et ut vero. Unde quisquam sed aut ipsum blanditiis.', 54, 6983.00, 'Tempore magni quia sunt sit sunt eum. Iure illo architecto nulla vel itaque architecto. Excepturi impedit blanditiis quaerat voluptates magnam vel aut nihil.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 14, 6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_room_types`
--

CREATE TABLE `sm_room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_room_types`
--

INSERT INTO `sm_room_types` (`id`, `type`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Single', 'A room assigned to one person. May have one or more beds.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(2, 'Double', 'A room assigned to two people. May have one or more beds.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(3, 'Triple', 'A room assigned to three people. May have two or more beds', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(4, 'Quad', 'A room assigned to four people. May have two or more beds.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(5, 'Queen', 'A room with a queen-sized bed. May be occupied by one or more people', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1),
(6, 'King', 'A room with a king-sized bed. May be occupied by one or more people.', 1, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_routes`
--

CREATE TABLE `sm_routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `far` double(10,2) NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_schools`
--

CREATE TABLE `sm_schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` tinyint(4) NOT NULL DEFAULT '1',
  `updated_by` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_schools`
--

INSERT INTO `sm_schools` (`id`, `school_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'InfixEdu', 1, 1, NULL, NULL),
(2, 'Larkin, Ernser and Gutmann School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(3, 'Rath, Durgan and Strosin School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(4, 'Parker-Shanahan School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(5, 'Effertz PLC School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(6, 'Jaskolski-Walter School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(7, 'Lehner-Leuschke School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(8, 'Considine, Waters and Johnson School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(9, 'Marvin-Roberts School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(10, 'Stroman, Roberts and Hammes School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45'),
(11, 'Bartoletti Inc School', 1, 1, '2019-11-13 00:22:45', '2019-11-13 00:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `sm_seat_plans`
--

CREATE TABLE `sm_seat_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_seat_plan_children`
--

CREATE TABLE `sm_seat_plan_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` tinyint(4) DEFAULT NULL,
  `assign_students` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seat_plan_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_sections`
--

CREATE TABLE `sm_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_sections`
--

INSERT INTO `sm_sections` (`id`, `section_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'A', 1, NULL, NULL, 1, 1, 1),
(2, 'B', 1, NULL, NULL, 1, 1, 1),
(3, 'C', 1, NULL, NULL, 1, 1, 1),
(4, 'D', 1, NULL, NULL, 1, 1, 1),
(5, 'E', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_send_messages`
--

CREATE TABLE `sm_send_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_des` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `publish_on` date DEFAULT NULL,
  `message_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'message sent to these roles',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_sessions`
--

CREATE TABLE `sm_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_sessions`
--

INSERT INTO `sm_sessions` (`id`, `session`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2019-2020', 1, '2019-11-13 00:22:22', '2019-11-13 00:22:22', 1, 1, 1),
(2, '2019', 1, NULL, NULL, 1, 1, 1),
(3, '2020', 1, NULL, NULL, 1, 1, 1),
(4, '2021', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_setup_admins`
--

CREATE TABLE `sm_setup_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1 purpose, 2 complaint type, 3 source, 4 Reference',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_setup_admins`
--

INSERT INTO `sm_setup_admins` (`id`, `type`, `name`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 3, 'Newspaper', 'Inform from Newspaper', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(2, 3, 'Online Marketing', 'Inform From Online Marketing', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(3, 3, 'Facebook', 'Inform From Facebook', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(4, 1, 'Admission', 'Admission Test', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(5, 1, 'Transfer Certificate', 'Transfer Certificate', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(6, 1, 'Re-Admission', 'Re-Admission', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(7, 1, 'Confirmation Inquiry', 'You give students a question, its answer and the method of reaching this answer. Their goal is to build investigation and critical-thinking skills, learning how the specific method works.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(8, 1, 'Structured Inquiry', 'You give students an open question and an investigation method. They must use the method to craft an evidence-backed conclusion.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(9, 1, 'Guided Inquiry', 'You give students an open question. Typically in groups, they design investigation methods to reach a conclusion.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(10, 1, 'Open Inquiry', 'You give students time and support. They pose original questions that they investigate through their own methods, and eventually present their results to discuss and expand.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(11, 2, 'General complaint', 'A student may submit a complaint regarding staff, faculty, or other student. Complainant must submit their concern via the preliminary complaint form.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(12, 2, 'ADA grievance/accommodation', 'ADA grievance/accommodation', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(13, 2, 'Academic Misconduct allegation', 'A student should be informed of any academic misconduct allegation by their instructor.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(14, 2, 'Sexual Assault', 'Sexual harassment is a serious problem for students at all educational levels.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(15, 2, 'Domestic and Interpersonal Violence', 'Domestic and Interpersonal Violence', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(16, 2, 'Sexual Harassment, and Other Discrimination', 'Sexual Harassment, and Other Discrimination', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(17, 2, 'Appeals regarding grades and student conduct', 'A student may only appeal a capricious grade, or student conduct expulsion or suspension.', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(18, 4, 'Teacher', 'Reference by teacher', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(19, 4, 'Student', 'Student', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1),
(20, 4, 'Institution Committee', 'Institution Committee', 1, '2019-11-13 00:23:45', '2019-11-13 00:23:45', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_sms_gateways`
--

CREATE TABLE `sm_sms_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_api_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_account_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_authentication_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_registered_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_authentication_key_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_sender_id` int(11) DEFAULT NULL,
  `msg91_route` int(11) DEFAULT NULL,
  `msg91_country_code` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_sms_gateways`
--

INSERT INTO `sm_sms_gateways` (`id`, `gateway_name`, `clickatell_username`, `clickatell_password`, `clickatell_api_id`, `twilio_account_sid`, `twilio_authentication_token`, `twilio_registered_no`, `msg91_authentication_key_sid`, `msg91_sender_id`, `msg91_route`, `msg91_country_code`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Clickatell', 'demo1', '122334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-11-25 23:57:33', 1, 1, 1),
(2, 'Twilio', 'demo2', '12336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2019-11-25 23:57:33', 1, 1, 1),
(3, 'Msg91', 'demo3', '23445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_staffs`
--

CREATE TABLE `sm_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_no` int(11) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merital_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epf_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `casual_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metarnity_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_brach` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiteer_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instragram_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_letter` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_document` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `driving_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_license_ex_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `gender_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_staffs`
--

INSERT INTO `sm_staffs` (`id`, `staff_no`, `first_name`, `last_name`, `full_name`, `fathers_name`, `mothers_name`, `date_of_birth`, `date_of_joining`, `email`, `mobile`, `emergency_mobile`, `marital_status`, `merital_status`, `staff_photo`, `current_address`, `permanent_address`, `qualification`, `experience`, `epf_no`, `basic_salary`, `contract_type`, `location`, `casual_leave`, `medical_leave`, `metarnity_leave`, `bank_account_name`, `bank_account_no`, `bank_name`, `bank_brach`, `facebook_url`, `twiteer_url`, `linkedin_url`, `instragram_url`, `joining_letter`, `resume`, `other_document`, `notes`, `active_status`, `driving_license`, `driving_license_ex_date`, `created_at`, `updated_at`, `designation_id`, `department_id`, `user_id`, `role_id`, `gender_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, 'Nauman', 'Ahmad', 'Nauman Ahmad', 'Ejaz Ahmad', 'NA', '1993-12-19', '2019-12-23', 'admin@ivylabtech.com', '+923360333383', '+923214311205', 'unmarried', 'NA', 'public/uploads/staff/e4888cb3f5412482573b5445594c19f0.png', 'DHA Phase 4 Lahore', 'DHA Phase 4 Lahore', 'P.H.D & M.Phill', '25 Years', NULL, '375000', 'permanent', 'lahore', '12', '15', '45', 'Nauman Ahmad', '1234567890', 'Alfalah', 'Gulburg', NULL, NULL, NULL, NULL, 'public/uploads/staff_joining_letter/fae2e888ffa89a3d47dc127b19d20039.jpg', 'public/uploads/resume/6702e631041e2afa12540fcbb837296a.jpg', 'public/uploads/others_documents/15871eb262e8d65eb676d147632c5ef2.jpg', NULL, 1, '56776987453', '2019-02-23', NULL, '2020-01-17 23:25:05', 1, 1, 1, 1, 1, 1, 1, 1),
(13, 1, 'Super', 'Admin', 'Super Admin', 'NA', 'NA', '1980-12-26', '2019-05-26', 'admin@ivylabtech.com', '', '', NULL, '', 'public/uploads/staff/staff1.jpg', '', '', '', '', NULL, NULL, NULL, NULL, '12', '15', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '2019-02-23', '2019-11-25 23:49:21', '2019-11-25 23:49:21', 1, 1, 1, 1, 1, 1, 1, 1),
(14, 3, 'Imran', 'Khan', 'Imran Khan', 'Ali', 'Ayesha', '1994-10-30', '2019-12-23', 'admin@ivylabtech.com', '03074901503', NULL, 'unmarried', NULL, NULL, 'Lahore,Pakistan', 'Lahore,Pakistan', 'PhD', 'ONE year', NULL, '20000', 'contract', 'lahore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 0, NULL, NULL, '2019-12-26 16:23:29', '2020-01-02 16:01:50', 6, 1, 516, 4, 1, 1, 1, 1),
(15, 4, 'NASIR', 'KHAN', 'NASIR KHAN', 'NASIR', 'AMNA', '1996-08-14', '2019-12-30', 'nasir@ivylabtech.com', '03214578693', NULL, 'unmarried', NULL, NULL, 'Lahore,Pakistan', 'Lahore,Pakistan', NULL, NULL, NULL, '25000', 'contract', 'Lahore,Pakistan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 0, NULL, NULL, '2019-12-30 16:49:35', '2020-01-03 15:42:18', 6, 1, 521, 4, 1, 1, 1, 1),
(16, 5, 'Asim', 'Azhar', 'Asim Azhar', 'Asif', 'Ayesha', '1990-09-17', '2019-12-30', 'asim@ivylabtech.com', '03458754210', NULL, 'married', NULL, NULL, 'Lahore,Pakistan', 'Lahore,Pakistan', NULL, NULL, NULL, '25000', 'contract', 'Lahore,Pakistan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 0, NULL, NULL, '2019-12-30 21:50:10', '2020-01-02 16:01:19', 6, 1, 522, 4, 1, 1, 1, 1),
(17, 6, 'BILAL', 'YASIR', 'BILAL YASIR', 'YASIR', 'ABC', '1994-10-30', '2020-01-02', 'bilalyasir@ivylabtech.com', '03145264745', NULL, 'unmarried', NULL, 'public/uploads/staff/820567d5817c29e7a87711731ef949f6.png', 'DHA PHASE 4,LAHORE,PAKISTAN', 'DHA PHASE 4,LAHORE,PAKISTAN', 'MBA', '3 YEARS', NULL, '30000', 'permanent', 'DHA PHASE 4,LAHORE,PAKISTAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 1, NULL, NULL, '2020-01-02 16:58:16', '2020-01-06 17:16:00', 6, 1, 527, 4, 1, 1, 1, 1),
(18, 7, 'Haseeb', 'Anwar', 'Haseeb Anwar', 'Haseeb', NULL, '1970-01-01', '2020-01-13', 'haseeb.anwar@ivylabtech.com', '04523456654', NULL, NULL, NULL, 'public/uploads/staff/b7bf129980d5e416cd48c151d5b7fd17.png', 'test address', NULL, NULL, NULL, NULL, '50000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 1, NULL, NULL, '2020-01-13 23:00:30', '2020-01-13 23:00:30', 6, 7, 534, 4, 1, 1, 1, 1),
(19, 8, 'Ibrahim', 'Anwar', 'Ibrahim Anwar', 'M Anwar', NULL, '1970-01-01', '2020-01-13', 'haseebanwar022@gmail.com', '03456789123', NULL, NULL, NULL, 'public/uploads/staff/db8ee4854174e6213ed9167b4e3ab357.png', 'test address', NULL, NULL, NULL, NULL, '15000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 1, NULL, NULL, '2020-01-13 23:03:12', '2020-01-13 23:03:12', 7, 4, 535, 6, 1, 1, 1, 1),
(20, 9, 'Abdullah', 'Amin', 'Abdullah Amin', 'Ahmad', NULL, '1990-06-16', '2019-12-01', 'AbdullahAmin@gmail.com', '1234567890', '0987654321', 'married', NULL, 'public/uploads/staff/972ab17a6bd38037e95a76990af05f3a.png', 'DHA Phase 1 Lahore', 'DHA Lahore', 'M.Phil', '5 Years', '786', '50000', 'permanent', 'lahore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/uploads/staff_joining_letter/0c687a7477cc7ce125acbac18744b9e5.png', 'public/uploads/resume/0c687a7477cc7ce125acbac18744b9e5.png', 'public/uploads/others_documents/0c687a7477cc7ce125acbac18744b9e5.png', NULL, 1, NULL, NULL, '2020-01-16 21:41:04', '2020-01-16 21:41:04', 3, 1, 538, 4, 1, 1, 1, 1),
(12, 2, 'Demo', 'Demo', 'Demo Demo', NULL, NULL, '1970-01-01', '2019-11-25', 'demo@ivylabtech.com', '+923214311205', NULL, NULL, NULL, 'public/uploads/staff/930cf2f48d0b06adf907463b69493ad0.png', '244 CCA, Sector FF, Phase 4, DHA, Lahore', NULL, NULL, NULL, NULL, '50000', 'permanent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 1, NULL, NULL, '2019-11-25 23:45:56', '2019-11-25 23:45:56', 9, 2, 509, 5, 1, 1, 1, 1),
(21, 10, 'khurram', 'Rajput', 'khurram Rajput', NULL, NULL, '1990-01-01', '2019-01-01', 'khurram675@gmail.com', '03444789022', NULL, 'married', NULL, 'public/uploads/staff/a0eef42e3ee05739e42526b68ae0a4d8.png', 'street 1, peer colony, walton road, lahore cantt.', NULL, NULL, NULL, NULL, '50000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 1, NULL, NULL, '2020-02-18 18:42:04', '2020-02-18 18:42:04', 9, 8, 541, 5, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_staff_attendences`
--

CREATE TABLE `sm_staff_attendences` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendence_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendence_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_staff_attendences`
--

INSERT INTO `sm_staff_attendences` (`id`, `attendence_type`, `notes`, `attendence_date`, `created_at`, `updated_at`, `staff_id`, `created_by`, `updated_by`, `school_id`) VALUES
(25, 'P', NULL, '2020-01-16', '2020-01-16 23:54:07', '2020-01-16 23:54:07', 14, 1, 1, 1),
(26, 'P', NULL, '2020-01-16', '2020-01-16 23:54:07', '2020-01-16 23:54:07', 15, 1, 1, 1),
(27, 'P', NULL, '2020-01-16', '2020-01-16 23:54:07', '2020-01-16 23:54:07', 16, 1, 1, 1),
(28, 'P', NULL, '2020-01-16', '2020-01-16 23:54:07', '2020-01-16 23:54:07', 17, 1, 1, 1),
(29, 'P', NULL, '2020-01-16', '2020-01-16 23:54:07', '2020-01-16 23:54:07', 18, 1, 1, 1),
(30, 'P', NULL, '2020-01-16', '2020-01-16 23:54:07', '2020-01-16 23:54:07', 20, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_students`
--

CREATE TABLE `sm_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `admission_no` int(11) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `caste` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `student_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_id_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aditional_notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bloodgroup_id` int(10) UNSIGNED DEFAULT NULL,
  `religion_id` int(10) UNSIGNED DEFAULT NULL,
  `route_list_id` int(10) UNSIGNED DEFAULT NULL,
  `dormitory_id` int(10) UNSIGNED DEFAULT NULL,
  `vechile_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `student_category_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_students`
--

INSERT INTO `sm_students` (`id`, `admission_no`, `roll_no`, `first_name`, `last_name`, `full_name`, `date_of_birth`, `caste`, `email`, `mobile`, `admission_date`, `student_photo`, `height`, `weight`, `current_address`, `permanent_address`, `driver_id`, `national_id_no`, `local_id_no`, `bank_account_no`, `bank_name`, `previous_school_details`, `aditional_notes`, `document_title_1`, `document_file_1`, `document_title_2`, `document_file_2`, `document_title_3`, `document_file_3`, `document_title_4`, `document_file_4`, `active_status`, `created_at`, `updated_at`, `bloodgroup_id`, `religion_id`, `route_list_id`, `dormitory_id`, `vechile_id`, `room_id`, `student_category_id`, `class_id`, `section_id`, `session_id`, `parent_id`, `user_id`, `role_id`, `gender_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, 1190400330, 'Ahsan', 'Khan', 'Ahsan Khan', '2011-12-15', 'Shia', 'ibrahim.nasir@ivylabtech.com', '03437742015', '2019-12-09', 'public/uploads/student/b896101b7f7bdea3e89a3cfc3a17984a.png', '4.4', '42', '344-FF, street 4, Phase 7, Model Town, Lahore', '344-FF, street 4, Phase 7, Model Town, Lahore', NULL, '35302-6784563-2', '667348939393', '22493030849', 'HBL', NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2019-12-09 23:14:34', '2019-12-09 23:32:54', 11, 4, NULL, NULL, NULL, NULL, 1, 4, 3, 2, 1, 510, 2, 1, 1, 1, 1),
(2, 2, 1, 'Hashim', 'Ibrahim', 'Hashim Ibrahim', '2009-07-16', NULL, 'ibrahimnasir124@gmail.com', NULL, '2019-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2019-12-11 20:15:46', '2019-12-11 20:15:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 3, 2, 512, 2, 1, 1, 1, 1),
(3, 3, 1022, 'sadf', 'sgsdfg', 'sadf sgsdfg', '2019-12-17', NULL, NULL, NULL, '2019-12-24', NULL, NULL, NULL, '36 a5 pgechs Punjab Society Near Wapda Town', 'upper portion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2019-12-24 23:28:41', '2020-01-03 23:08:44', 9, 4, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 3, 514, 2, 1, 1, 1, 1),
(4, 4, 12345, 'ALI', 'KHAN', 'ALI KHAN', '1994-10-30', NULL, 'ALI@GMAIL.COM', '03214565869', '2019-12-26', NULL, '80', '70', NULL, 'DEFENCE,LAHORE,PAKISTAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2019-12-26 17:08:40', '2020-01-03 23:08:44', 11, 4, NULL, NULL, NULL, NULL, 1, 2, 1, 1, 4, 517, 2, 1, 1, 1, 1),
(5, 5, 12346, 'Naeem', 'Ameen', 'Naeem Ameen', '2019-12-04', NULL, 'haseeb.anwar022@gmail.com', '0300123456', '2019-12-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2019-12-27 18:14:44', '2020-01-03 23:08:44', 9, 4, NULL, NULL, NULL, NULL, 1, 2, 1, 1, 5, 519, 2, 1, 1, 1, 1),
(6, 6, 53097, 'Haseeb', 'Anwar', 'Haseeb Anwar', '2020-01-01', NULL, 'haseebanwar010@gmail.com', '030012865467', '2020-01-01', 'public/uploads/student/f3829aa330c437dd5df531268c509df0.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2020-01-01 19:13:04', '2020-01-01 19:13:04', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 2, 6, 523, 2, 1, 1, 1, 1),
(7, 7, 123456, 'FARAN', 'AZMAT', 'FARAN AZMAT', '1994-10-30', NULL, 'faranazmat@ivylabtech.com', '03074901503', '2020-01-02', 'public/uploads/student/44c99199ab0b7a24670a6d0f0c3ddb48.png', '6.3', '70', 'DHA PHASE 5,LAHORE,PAKISTAN', 'DHA PHASE 5,LAHORE,PAKISTAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2020-01-02 16:48:26', '2020-01-06 17:23:16', 11, 4, NULL, NULL, NULL, NULL, 1, 2, 1, 1, 7, 525, 2, 1, 1, 1, 1),
(8, 8, 22, 'Haseeb', 'Anwar', 'Haseeb Anwar', '2020-01-22', NULL, 'hssy@gmail.com', NULL, '2020-01-07', 'public/uploads/student/e19e9afbd6682eda47c1f464fe4ea9e6.png', NULL, NULL, 'test address', 'test address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2020-01-07 17:30:01', '2020-01-07 19:13:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 8, 528, 2, 1, 1, 1, 1),
(9, 9, 987, 'Haseeb', 'Anwar', 'Haseeb Anwar', '2020-01-15', NULL, 'student@gmail.com', NULL, '2020-01-07', NULL, NULL, NULL, 'test address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2020-01-07 19:33:27', '2020-01-07 19:33:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 1, 9, 530, 2, 1, 1, 1, 1),
(10, 10, 125, 'FAHAD', NULL, 'FAHAD ', '2017-08-14', NULL, 'fahad@ivylabtech.com', NULL, '2020-01-07', NULL, '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2020-01-07 19:46:45', '2020-01-07 19:46:45', 11, 4, NULL, NULL, NULL, NULL, 1, 1, 5, 3, 10, 532, 2, 1, 1, 1, 1),
(11, 11, 11, 'Faran', 'Azmat', 'Faran Azmat', '2013-01-01', 'Malik', 'naumanijaz299@gmail.com', '0123456789', '2020-01-20', 'public/uploads/student/a8b0a5287f0a84ae2e682919e02c62b4.png', '3.2', '25', 'DHA Phase 4 Lahore', 'DHA Phase 4 Lahore', NULL, '35202-12345-6', '1234567', '2345-567890-321', 'Alfalah', NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2020-01-16 17:42:28', '2020-01-17 17:57:25', 11, 4, NULL, 1, NULL, 1, 1, 1, 1, 1, 11, 536, 2, 1, 1, 1, 1),
(12, 12, 53098, 'Ibrahim', 'Anwar', 'Ibrahim Anwar', '2020-01-01', NULL, NULL, NULL, '2020-01-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, '', 1, '2020-01-17 16:35:41', '2020-01-17 16:35:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 12, 539, 2, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_attendances`
--

CREATE TABLE `sm_student_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_attendances`
--

INSERT INTO `sm_student_attendances` (`id`, `attendance_type`, `notes`, `attendance_date`, `created_at`, `updated_at`, `student_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'P', NULL, '2020-01-03', '2020-01-03 22:59:12', '2020-01-03 22:59:12', 3, 1, 1, 1),
(2, 'P', NULL, '2020-01-03', '2020-01-03 22:59:12', '2020-01-03 22:59:12', 4, 1, 1, 1),
(3, 'P', NULL, '2020-01-03', '2020-01-03 22:59:12', '2020-01-03 22:59:12', 5, 1, 1, 1),
(4, 'P', NULL, '2020-01-03', '2020-01-03 22:59:12', '2020-01-03 22:59:12', 6, 1, 1, 1),
(5, 'P', NULL, '2020-01-03', '2020-01-03 22:59:12', '2020-01-03 22:59:12', 7, 1, 1, 1),
(6, 'P', NULL, '2020-01-14', '2020-01-14 20:01:29', '2020-01-14 20:01:29', 3, 1, 1, 1),
(7, 'P', NULL, '2020-01-14', '2020-01-14 20:01:29', '2020-01-14 20:01:29', 4, 1, 1, 1),
(8, 'P', NULL, '2020-01-14', '2020-01-14 20:01:29', '2020-01-14 20:01:29', 5, 1, 1, 1),
(9, 'P', NULL, '2020-01-14', '2020-01-14 20:01:29', '2020-01-14 20:01:29', 7, 1, 1, 1),
(10, 'P', 'Test Note Here', '2020-01-15', '2020-01-15 17:58:45', '2020-01-15 17:58:45', 3, 1, 1, 1),
(11, 'P', NULL, '2020-01-15', '2020-01-15 17:58:45', '2020-01-15 17:58:45', 4, 1, 1, 1),
(12, 'P', NULL, '2020-01-15', '2020-01-15 17:58:45', '2020-01-15 17:58:45', 5, 1, 1, 1),
(13, 'P', NULL, '2020-01-15', '2020-01-15 17:58:45', '2020-01-15 17:58:45', 7, 1, 1, 1),
(14, 'P', NULL, '2020-01-16', '2020-01-16 19:50:12', '2020-01-16 19:50:12', 6, 1, 1, 1),
(15, 'P', NULL, '2020-01-16', '2020-01-16 19:50:12', '2020-01-16 19:50:12', 11, 1, 1, 1),
(16, 'A', NULL, '2020-02-07', '2020-02-07 21:56:34', '2020-02-07 21:56:34', 6, 1, 1, 1),
(17, 'P', NULL, '2020-02-07', '2020-02-07 21:56:34', '2020-02-07 21:56:34', 11, 1, 1, 1),
(18, 'L', NULL, '2020-02-07', '2020-02-07 21:56:34', '2020-02-07 21:56:34', 12, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_categories`
--

CREATE TABLE `sm_student_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_categories`
--

INSERT INTO `sm_student_categories` (`id`, `category_name`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Normal', NULL, NULL, 1, 1, 1),
(2, 'Obsessive Compulsive Disorder', NULL, NULL, 1, 1, 1),
(3, 'Attention Deficit Hyperactivity Disorder (ADHD)', NULL, NULL, 1, 1, 1),
(4, 'Oppositional Defiant Disorder (ODD)', NULL, NULL, 1, 1, 1),
(5, 'Anxiety Disorder', NULL, NULL, 1, 1, 1),
(6, 'Conduct Disorders', NULL, NULL, 1, 1, 1),
(7, 'New Group', '2020-01-09 04:48:52', '2020-01-09 04:48:52', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_certificates`
--

CREATE TABLE `sm_student_certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_left_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `footer_left_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_center_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_right_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = yes 0 no',
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_certificates`
--

INSERT INTO `sm_student_certificates` (`id`, `name`, `header_left_text`, `date`, `body`, `footer_left_text`, `footer_center_text`, `footer_right_text`, `student_photo`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Achievement in Sports', 'nsdnjsidn', '2019-12-10', 'kjnsndksndjkndjknskjdnsjkdnsjkdnsdns', 'jnjnjnjnjd', 'ndjnsjdnjsdn', 'ndjsndjsndjs', 0, 'public/uploads/certificate/60b71f647454f907a5271d823312f1b6.jpg', 1, '2019-12-10 21:32:43', '2019-12-10 21:32:43', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_documents`
--

CREATE TABLE `sm_student_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_staff_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stu=student,stf=staff',
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_excel_formats`
--

CREATE TABLE `sm_student_excel_formats` (
  `roll_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siblings_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_identification_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_identification_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_groups`
--

CREATE TABLE `sm_student_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_groups`
--

INSERT INTO `sm_student_groups` (`id`, `group`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Promoters', 1, '2019-11-13 00:23:46', '2020-01-16 19:31:46', 1, 1, 1),
(2, 'Teen', 1, '2019-11-13 00:23:46', '2020-01-16 19:29:30', 1, 1, 1),
(5, 'Kinder Garten', 1, '2019-11-13 00:23:46', '2020-01-16 19:30:41', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_homeworks`
--

CREATE TABLE `sm_student_homeworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluated_by` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_id_cards`
--

CREATE TABLE `sm_student_id_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `admission_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `student_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `blood` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_id_cards`
--

INSERT INTO `sm_student_id_cards` (`id`, `title`, `logo`, `designation`, `signature`, `address`, `admission_no`, `student_name`, `class`, `father_name`, `mother_name`, `student_address`, `phone`, `dob`, `blood`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Ibrahim Nasir', 'public/uploads/studentIdCard/logo-19b7b4a4f03597c5e0bf407e90d305e2.png', 'Student', 'public/uploads/studentIdCard/signature-afcd073a56677cf2cca6b69ae3f11ee1.png', '03437742015', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '2019-12-10 22:57:21', '2019-12-10 22:57:21', 1, 1, 1),
(2, 'CR Card', 'public/uploads/studentIdCard/logo-529e8d2592a9eb9248f6fbf5ff72285b.jpg', 'CR of the Class', 'public/uploads/studentIdCard/signature-529e8d2592a9eb9248f6fbf5ff72285b.jpg', '03360000083', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '2019-12-24 20:02:42', '2019-12-24 20:02:42', 1, 1, 1),
(3, 'Student', 'public/uploads/studentIdCard/logo-5920316c1878107e160328e476cd93cd.png', 'CR', 'public/uploads/studentIdCard/signature-e73124295224a574211a0638e70487a3.jpg', '0123456789', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '2020-01-16 19:20:12', '2020-01-16 19:20:12', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_promotions`
--

CREATE TABLE `sm_student_promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `result_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `previous_class_id` int(10) UNSIGNED DEFAULT NULL,
  `current_class_id` int(10) UNSIGNED DEFAULT NULL,
  `previous_session_id` int(10) UNSIGNED DEFAULT NULL,
  `current_session_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_promotions`
--

INSERT INTO `sm_student_promotions` (`id`, `result_status`, `created_at`, `updated_at`, `previous_class_id`, `current_class_id`, `previous_session_id`, `current_session_id`, `student_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'F', '2020-01-03 23:08:44', '2020-01-03 23:08:44', 1, 2, 1, 1, 3, 1, 1, 1),
(2, 'P', '2020-01-03 23:08:44', '2020-01-03 23:08:44', 1, 2, 1, 1, 4, 1, 1, 1),
(3, 'P', '2020-01-03 23:08:44', '2020-01-03 23:08:44', 1, 2, 1, 1, 5, 1, 1, 1),
(4, 'P', '2020-01-03 23:08:44', '2020-01-03 23:08:44', 1, 2, 1, 1, 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_take_online_exams`
--

CREATE TABLE `sm_student_take_online_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Not Yet, 1 = alreday submitted, 2 = got marks',
  `total_marks` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_take_online_exams`
--

INSERT INTO `sm_student_take_online_exams` (`id`, `status`, `total_marks`, `active_status`, `created_at`, `updated_at`, `student_id`, `online_exam_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 2, 1, 1, '2020-01-06 21:26:07', '2020-01-06 22:08:07', 7, 1, 1, 1, 1),
(2, 2, 3, 1, '2020-01-06 22:56:39', '2020-01-07 16:44:46', 7, 2, 1, 1, 1),
(3, 1, NULL, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 7, 3, 1, 1, 1),
(4, 2, 50, 1, '2020-01-14 00:15:59', '2020-01-14 00:17:37', 9, 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_take_online_exam_questions`
--

CREATE TABLE `sm_student_take_online_exam_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `take_online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `question_bank_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_take_online_exam_questions`
--

INSERT INTO `sm_student_take_online_exam_questions` (`id`, `trueFalse`, `suitable_words`, `active_status`, `created_at`, `updated_at`, `take_online_exam_id`, `question_bank_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, 'ahoio', 1, '2020-01-06 21:26:07', '2020-01-06 21:26:07', 1, 3, 1, 1, 1),
(2, 'T', NULL, 1, '2020-01-06 21:26:07', '2020-01-06 21:26:07', 1, 2, 1, 1, 1),
(3, NULL, NULL, 1, '2020-01-06 21:26:07', '2020-01-06 21:26:07', 1, 1, 1, 1, 1),
(4, NULL, NULL, 1, '2020-01-06 22:56:39', '2020-01-06 22:56:39', 2, 3, 1, 1, 1),
(5, 'T', NULL, 1, '2020-01-06 22:56:39', '2020-01-06 22:56:39', 2, 2, 1, 1, 1),
(6, NULL, NULL, 1, '2020-01-06 22:56:39', '2020-01-06 22:56:39', 2, 1, 1, 1, 1),
(7, NULL, NULL, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 3, 1, 1, 1, 1),
(8, 'T', NULL, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 3, 2, 1, 1, 1),
(9, NULL, NULL, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 3, 3, 1, 1, 1),
(10, NULL, NULL, 1, '2020-01-14 00:15:59', '2020-01-14 00:15:59', 4, 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_take_onln_ex_ques_options`
--

CREATE TABLE `sm_student_take_onln_ex_ques_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 unchecked 1 checked',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `take_online_exam_question_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_take_onln_ex_ques_options`
--

INSERT INTO `sm_student_take_onln_ex_ques_options` (`id`, `title`, `status`, `active_status`, `created_at`, `updated_at`, `take_online_exam_question_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'V=I*R', 0, 1, '2020-01-06 21:26:07', '2020-01-06 21:26:07', 3, 1, 1, 1),
(2, 'V=I/R', 1, 1, '2020-01-06 21:26:07', '2020-01-06 21:26:07', 3, 1, 1, 1),
(3, 'PRODUCT OF CURRENT AND RESISTANCE', 0, 1, '2020-01-06 21:26:07', '2020-01-06 21:26:07', 3, 1, 1, 1),
(4, 'BOTH OPTION-1 AND OPTION-3', 0, 1, '2020-01-06 21:26:07', '2020-01-06 21:26:07', 3, 1, 1, 1),
(5, 'BOTH OPTION-1 AND OPTION-3', 0, 1, '2020-01-06 22:56:39', '2020-01-06 22:56:39', 6, 1, 1, 1),
(6, 'V=I/R', 0, 1, '2020-01-06 22:56:39', '2020-01-06 22:56:39', 6, 1, 1, 1),
(7, 'PRODUCT OF CURRENT AND RESISTANCE', 1, 1, '2020-01-06 22:56:39', '2020-01-06 22:56:39', 6, 1, 1, 1),
(8, 'V=I*R', 1, 1, '2020-01-06 22:56:39', '2020-01-06 22:56:39', 6, 1, 1, 1),
(9, 'BOTH OPTION-1 AND OPTION-3', 1, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 7, 1, 1, 1),
(10, 'V=I/R', 0, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 7, 1, 1, 1),
(11, 'PRODUCT OF CURRENT AND RESISTANCE', 0, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 7, 1, 1, 1),
(12, 'V=I*R', 0, 1, '2020-01-08 21:59:19', '2020-01-08 21:59:19', 7, 1, 1, 1),
(13, 'Haseeb', 0, 1, '2020-01-14 00:15:59', '2020-01-14 00:15:59', 10, 1, 1, 1),
(14, 'Numan', 0, 1, '2020-01-14 00:15:59', '2020-01-14 00:15:59', 10, 1, 1, 1),
(15, 'Ali', 1, 1, '2020-01-14 00:15:59', '2020-01-14 00:15:59', 10, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_timelines`
--

CREATE TABLE `sm_student_timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_student_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stu=student,stf=staff',
  `visible_to_student` int(11) NOT NULL DEFAULT '0' COMMENT '0 = no, 1 = yes',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_styles`
--

CREATE TABLE `sm_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_main_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_infix_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `white` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `black` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barchart1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barchart2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcharttextcolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcharttextfamily` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areachartlinecolor1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areachartlinecolor2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboardbackground` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_styles`
--

INSERT INTO `sm_styles` (`id`, `style_name`, `path_main_style`, `path_infix_style`, `primary_color`, `primary_color2`, `title_color`, `text_color`, `white`, `black`, `sidebar_bg`, `barchart1`, `barchart2`, `barcharttextcolor`, `barcharttextfamily`, `areachartlinecolor1`, `areachartlinecolor2`, `dashboardbackground`, `active_status`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Default', 'style.css', 'infix.css', '#415094', '#7c32ff', '#222222', '#828bb2', '#ffffff', '#000000', '#e7ecff', '#8a33f8', '#f25278', '#415094', '\"poppins\", sans-serif', 'rgba(124, 50, 255, 0.5)', 'rgba(242, 82, 120, 0.5)', '', 1, 0, '2019-11-13 00:22:44', '2020-01-17 23:56:16', 1, 1, 1),
(2, 'Lawn Green', 'lawngreen_version/style.css', 'lawngreen_version/infix.css', '#0073ac', '#39b54ae6', '#222222', '#828bb2', '#ffffff', '#000000', '#e7ecff', '#415094', '#03e396', '#03e396', '\"Cerebri Sans\", Helvetica, Arial, sans-serif', '#415094', '#03e396', '#e7ecff', 1, 1, '2019-11-13 00:22:44', '2020-01-17 23:56:16', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_subjects`
--

CREATE TABLE `sm_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_type` enum('T','P') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'T=Theory, P=Practical',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_subjects`
--

INSERT INTO `sm_subjects` (`id`, `subject_name`, `subject_code`, `subject_type`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(8, 'Management and Technology', 'MT-01', 'T', 1, '2019-12-30 22:10:23', '2019-12-30 22:12:24', 1, 1, 1),
(2, 'English', 'ENG-01', 'T', 1, NULL, '2020-01-01 19:42:52', 1, 1, 1),
(3, 'Mathematics', 'MATH-01', 'T', 1, NULL, NULL, 1, 1, 1),
(4, 'Agricultural Education', 'AG-01', 'T', 1, NULL, NULL, 1, 1, 1),
(5, 'Information and Communication Technology', 'ICT-01', 'T', 1, NULL, NULL, 1, 1, 1),
(6, 'Science', 'SI-01', 'T', 1, NULL, NULL, 1, 1, 1),
(7, 'Islam & Ethical Education', 'IEE-01', 'T', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_suppliers`
--

CREATE TABLE `sm_suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cotact_person_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_suppliers`
--

INSERT INTO `sm_suppliers` (`id`, `company_name`, `company_address`, `contact_person_name`, `contact_person_mobile`, `contact_person_email`, `cotact_person_address`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'XYZ Company', 'Lahore,Pakistan', 'Salman', '03214650182', 'Salman@gmail.com', NULL, 'Chair Manufacture Company', 1, '2019-12-30 22:45:13', '2019-12-30 22:45:13', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_system_versions`
--

CREATE TABLE `sm_system_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `version_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_system_versions`
--

INSERT INTO `sm_system_versions` (`id`, `version_name`, `title`, `features`, `created_at`, `updated_at`) VALUES
(1, '3.2', 'Upgrade System Integration', 'features 1, features 2', '2019-11-13 00:22:44', '2019-11-13 00:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `sm_teacher_upload_contents`
--

CREATE TABLE `sm_teacher_upload_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'as assignment, st study material, sy sullabus, ot others download',
  `available_for_admin` int(11) NOT NULL DEFAULT '0',
  `available_for_all_classes` int(11) NOT NULL DEFAULT '0',
  `upload_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class` int(10) UNSIGNED DEFAULT NULL,
  `section` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_teacher_upload_contents`
--

INSERT INTO `sm_teacher_upload_contents` (`id`, `content_title`, `content_type`, `available_for_admin`, `available_for_all_classes`, `upload_date`, `description`, `upload_file`, `active_status`, `created_at`, `updated_at`, `class`, `section`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Science project', 'as', 0, 0, '2019-12-24', 'asfdasd', 'public/uploads/upload_contents/30e911258db82aa36f4870113920f9d3.png', 1, '2019-12-24 23:37:03', '2019-12-24 23:37:03', 1, 2, 1, 1, 1),
(2, 'student result', 'ot', 1, 0, '2020-01-03', 'student result biodata', '', 1, '2020-01-03 23:12:33', '2020-01-03 23:12:33', NULL, NULL, 1, 1, 1),
(3, 'assignment', 'as', 0, 0, '2020-01-03', NULL, 'public/uploads/upload_contents/9cca13bc32da79d8f4f6afa91b791cbe.txt', 1, '2020-01-03 23:58:52', '2020-01-03 23:58:52', 1, 1, 527, 1, 1),
(4, 'ASSIGNMENT', 'as', 0, 1, '2020-01-06', NULL, 'public/uploads/upload_contents/f154e8b681e343992364b25b75e354d0.jpg', 1, '2020-01-06 16:26:19', '2020-01-06 16:26:19', NULL, NULL, 527, 1, 1),
(5, 'test', 'st', 0, 0, '2020-01-13', NULL, 'public/uploads/upload_contents/e85e2f49cb23c8fcd35ea9855e05bb73.txt', 1, '2020-01-13 23:16:29', '2020-01-13 23:16:29', 1, 3, 534, 1, 1),
(6, 'test title', 'st', 0, 0, '2020-01-15', NULL, 'public/uploads/upload_contents/960fcae0c43cedc4241b86fa3e9775a8.txt', 1, '2020-01-15 18:34:46', '2020-01-15 18:34:46', 2, 1, 1, 1, 1),
(7, 'test title', 'as', 1, 0, '2020-01-15', 'test', 'public/uploads/upload_contents/6fd0cb09fe467debd912b9be905d6e53.txt', 1, '2020-01-15 18:36:57', '2020-01-15 18:36:57', NULL, NULL, 1, 1, 1),
(8, 'Assignment 1', 'as', 0, 0, '2020-01-20', 'Please follow it', 'public/uploads/upload_contents/01b27b052ae0523f5062c1c2a8b8668b.jpg', 1, '2020-01-20 19:17:41', '2020-01-20 19:17:41', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_temporary_meritlist`
--

CREATE TABLE `sm_temporary_meritlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_no` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjects_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_mark` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa_point` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_temporary_meritlists`
--

CREATE TABLE `sm_temporary_meritlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `merit_order` int(11) DEFAULT NULL,
  `student_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_no` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjects_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_mark` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa_point` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_testimonials`
--

CREATE TABLE `sm_testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_testimonials`
--

INSERT INTO `sm_testimonials` (`id`, `name`, `designation`, `institution_name`, `image`, `description`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Tristique euhen', 'CEO', 'Google', 'public/uploads/testimonial/testimonial_1.jpg', 'its vast! Infix has more additional feature that will expect in a complete solution.', NULL, NULL, 1),
(2, 'Malala euhen', 'Chairman', 'Linkdin', 'public/uploads/testimonial/testimonial_2.jpg', 'its vast! Infix has more additional feature that will expect in a complete solution.', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_time_zones`
--

CREATE TABLE `sm_time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_time_zones`
--

INSERT INTO `sm_time_zones` (`id`, `code`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'AD', 'Europe/Andorra', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(2, 'AE', 'Asia/Dubai', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(3, 'AF', 'Asia/Kabul', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(4, 'AG', 'America/Antigua', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(5, 'AI', 'America/Anguilla', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(6, 'AL', 'Europe/Tirane', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(7, 'AM', 'Asia/Yerevan', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(8, 'AO', 'Africa/Luanda', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(9, 'AQ', 'Antarctica/McMurdo', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(10, 'AQ', 'Antarctica/Casey', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(11, 'AQ', 'Antarctica/Davis', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(12, 'AQ', 'Antarctica/DumontDUrville', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(13, 'AQ', 'Antarctica/Mawson', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(14, 'AQ', 'Antarctica/Palmer', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(15, 'AQ', 'Antarctica/Rothera', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(16, 'AQ', 'Antarctica/Syowa', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(17, 'AQ', 'Antarctica/Troll', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(18, 'AQ', 'Antarctica/Vostok', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(19, 'AR', 'America/Argentina/Buenos_Aires', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(20, 'AR', 'America/Argentina/Cordoba', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(21, 'AR', 'America/Argentina/Salta', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(22, 'AR', 'America/Argentina/Jujuy', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(23, 'AR', 'America/Argentina/Tucuman', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(24, 'AR', 'America/Argentina/Catamarca', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(25, 'AR', 'America/Argentina/La_Rioja', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(26, 'AR', 'America/Argentina/San_Juan', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(27, 'AR', 'America/Argentina/Mendoza', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(28, 'AR', 'America/Argentina/San_Luis', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(30, 'AR', 'America/Argentina/Ushuaia', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(31, 'AS', 'Pacific/Pago_Pago', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(32, 'AT', 'Europe/Vienna', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(33, 'AU', 'Australia/Lord_Howe', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(34, 'AU', 'Antarctica/Macquarie', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(35, 'AU', 'Australia/Hobart', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(36, 'AU', 'Australia/Currie', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(37, 'AU', 'Australia/Melbourne', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(38, 'AU', 'Australia/Sydney', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(39, 'AU', 'Australia/Broken_Hill', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(40, 'AU', 'Australia/Brisbane', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(41, 'AU', 'Australia/Lindeman', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(42, 'AU', 'Australia/Adelaide', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(43, 'AU', 'Australia/Darwin', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(44, 'AU', 'Australia/Perth', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(45, 'AU', 'Australia/Eucla', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(46, 'AW', 'America/Aruba', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(47, 'AX', 'Europe/Mariehamn', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(48, 'AZ', 'Asia/Baku', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(49, 'BA', 'Europe/Sarajevo', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(50, 'BB', 'America/Barbados', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(51, 'BD', 'Asia/Dhaka', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(52, 'BE', 'Europe/Brussels', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(53, 'BF', 'Africa/Ouagadougou', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(54, 'BG', 'Europe/Sofia', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(55, 'BH', 'Asia/Bahrain', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(56, 'BI', 'Africa/Bujumbura', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(57, 'BJ', 'Africa/Porto-Novo', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(58, 'BL', 'America/St_Barthelemy', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(59, 'BM', 'Atlantic/Bermuda', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(60, 'BN', 'Asia/Brunei', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(61, 'BO', 'America/La_Paz', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(62, 'BQ', 'America/Kralendijk', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(63, 'BR', 'America/Noronha', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(64, 'BR', 'America/Belem', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(65, 'BR', 'America/Fortaleza', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(66, 'BR', 'America/Recife', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(67, 'BR', 'America/Araguaina', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(68, 'BR', 'America/Maceio', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(69, 'BR', 'America/Bahia', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(70, 'BR', 'America/Sao_Paulo', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(71, 'BR', 'America/Campo_Grande', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(72, 'BR', 'America/Cuiaba', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(73, 'BR', 'America/Santarem', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(74, 'BR', 'America/Porto_Velho', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(75, 'BR', 'America/Boa_Vista', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(76, 'BR', 'America/Manaus', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(77, 'BR', 'America/Eirunepe', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(78, 'BR', 'America/Rio_Branco', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(79, 'BS', 'America/Nassau', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(80, 'BT', 'Asia/Thimphu', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(81, 'BW', 'Africa/Gaborone', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(82, 'BY', 'Europe/Minsk', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(83, 'BZ', 'America/Belize', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(84, 'CA', 'America/St_Johns', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(85, 'CA', 'America/Halifax', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(86, 'CA', 'America/Glace_Bay', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(87, 'CA', 'America/Moncton', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(88, 'CA', 'America/Goose_Bay', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(89, 'CA', 'America/Blanc-Sablon', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(90, 'CA', 'America/Toronto', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(91, 'CA', 'America/Nipigon', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(92, 'CA', 'America/Thunder_Bay', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(93, 'CA', 'America/Iqaluit', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(94, 'CA', 'America/Pangnirtung', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(95, 'CA', 'America/Atikokan', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(96, 'CA', 'America/Winnipeg', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(97, 'CA', 'America/Rainy_River', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(98, 'CA', 'America/Resolute', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(99, 'CA', 'America/Rankin_Inlet', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(100, 'CA', 'America/Regina', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(101, 'CA', 'America/Swift_Current', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(102, 'CA', 'America/Edmonton', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(103, 'CA', 'America/Cambridge_Bay', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(104, 'CA', 'America/Yellowknife', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(105, 'CA', 'America/Inuvik', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(106, 'CA', 'America/Creston', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(107, 'CA', 'America/Dawson_Creek', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(108, 'CA', 'America/Fort_Nelson', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(109, 'CA', 'America/Vancouver', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(110, 'CA', 'America/Whitehorse', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(111, 'CA', 'America/Dawson', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(112, 'CC', 'Indian/Cocos', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(113, 'CD', 'Africa/Kinshasa', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(114, 'CD', 'Africa/Lubumbashi', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(115, 'CF', 'Africa/Bangui', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(116, 'CG', 'Africa/Brazzaville', '2019-10-22 13:56:00', '2019-10-22 13:56:00'),
(117, 'CH', 'Europe/Zurich', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(118, 'CI', 'Africa/Abidjan', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(119, 'CK', 'Pacific/Rarotonga', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(120, 'CL', 'America/Santiago', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(121, 'CL', 'America/Punta_Arenas', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(122, 'CL', 'Pacific/Easter', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(123, 'CM', 'Africa/Douala', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(124, 'CN', 'Asia/Shanghai', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(125, 'CN', 'Asia/Urumqi', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(126, 'CO', 'America/Bogota', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(127, 'CR', 'America/Costa_Rica', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(128, 'CU', 'America/Havana', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(129, 'CV', 'Atlantic/Cape_Verde', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(130, 'CW', 'America/Curacao', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(131, 'CX', 'Indian/Christmas', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(132, 'CY', 'Asia/Nicosia', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(133, 'CY', 'Asia/Famagusta', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(134, 'CZ', 'Europe/Prague', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(135, 'DE', 'Europe/Berlin', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(136, 'DE', 'Europe/Busingen', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(137, 'DJ', 'Africa/Djibouti', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(138, 'DK', 'Europe/Copenhagen', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(139, 'DM', 'America/Dominica', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(140, 'DO', 'America/Santo_Domingo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(141, 'DZ', 'Africa/Algiers', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(142, 'EC', 'America/Guayaquil', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(143, 'EC', 'Pacific/Galapagos', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(144, 'EE', 'Europe/Tallinn', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(145, 'EG', 'Africa/Cairo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(146, 'EH', 'Africa/El_Aaiun', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(147, 'ER', 'Africa/Asmara', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(148, 'ES', 'Europe/Madrid', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(149, 'ES', 'Africa/Ceuta', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(150, 'ES', 'Atlantic/Canary', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(151, 'ET', 'Africa/Addis_Ababa', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(152, 'FI', 'Europe/Helsinki', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(153, 'FJ', 'Pacific/Fiji', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(154, 'FK', 'Atlantic/Stanley', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(155, 'FM', 'Pacific/Chuuk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(156, 'FM', 'Pacific/Pohnpei', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(157, 'FM', 'Pacific/Kosrae', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(158, 'FO', 'Atlantic/Faroe', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(159, 'FR', 'Europe/Paris', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(160, 'GA', 'Africa/Libreville', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(161, 'GB', 'Europe/London', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(162, 'GD', 'America/Grenada', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(163, 'GE', 'Asia/Tbilisi', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(164, 'GF', 'America/Cayenne', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(165, 'GG', 'Europe/Guernsey', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(166, 'GH', 'Africa/Accra', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(167, 'GI', 'Europe/Gibraltar', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(168, 'GL', 'America/Godthab', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(169, 'GL', 'America/Danmarkshavn', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(170, 'GL', 'America/Scoresbysund', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(171, 'GL', 'America/Thule', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(172, 'GM', 'Africa/Banjul', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(173, 'GN', 'Africa/Conakry', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(174, 'GP', 'America/Guadeloupe', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(175, 'GQ', 'Africa/Malabo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(176, 'GR', 'Europe/Athens', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(177, 'GS', 'Atlantic/South_Georgia', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(178, 'GT', 'America/Guatemala', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(179, 'GU', 'Pacific/Guam', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(180, 'GW', 'Africa/Bissau', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(181, 'GY', 'America/Guyana', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(182, 'HK', 'Asia/Hong_Kong', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(183, 'HN', 'America/Tegucigalpa', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(184, 'HR', 'Europe/Zagreb', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(185, 'HT', 'America/Port-au-Prince', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(186, 'HU', 'Europe/Budapest', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(187, 'ID', 'Asia/Jakarta', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(188, 'ID', 'Asia/Pontianak', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(189, 'ID', 'Asia/Makassar', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(190, 'ID', 'Asia/Jayapura', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(191, 'IE', 'Europe/Dublin', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(192, 'IL', 'Asia/Jerusalem', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(193, 'IM', 'Europe/Isle_of_Man', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(194, 'IN', 'Asia/Kolkata', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(195, 'IO', 'Indian/Chagos', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(196, 'IQ', 'Asia/Baghdad', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(197, 'IR', 'Asia/Tehran', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(198, 'IS', 'Atlantic/Reykjavik', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(199, 'IT', 'Europe/Rome', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(200, 'JE', 'Europe/Jersey', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(201, 'JM', 'America/Jamaica', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(202, 'JO', 'Asia/Amman', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(203, 'JP', 'Asia/Tokyo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(204, 'KE', 'Africa/Nairobi', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(205, 'KG', 'Asia/Bishkek', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(206, 'KH', 'Asia/Phnom_Penh', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(207, 'KI', 'Pacific/Tarawa', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(208, 'KI', 'Pacific/Enderbury', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(209, 'KI', 'Pacific/Kiritimati', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(210, 'KM', 'Indian/Comoro', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(211, 'KN', 'America/St_Kitts', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(212, 'KP', 'Asia/Pyongyang', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(213, 'KR', 'Asia/Seoul', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(214, 'KW', 'Asia/Kuwait', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(215, 'KY', 'America/Cayman', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(216, 'KZ', 'Asia/Almaty', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(217, 'KZ', 'Asia/Qyzylorda', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(218, 'KZ', 'Asia/Aqtobe', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(219, 'KZ', 'Asia/Aqtau', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(220, 'KZ', 'Asia/Atyrau', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(221, 'KZ', 'Asia/Oral', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(222, 'LA', 'Asia/Vientiane', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(223, 'LB', 'Asia/Beirut', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(224, 'LC', 'America/St_Lucia', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(225, 'LI', 'Europe/Vaduz', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(226, 'LK', 'Asia/Colombo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(227, 'LR', 'Africa/Monrovia', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(228, 'LS', 'Africa/Maseru', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(229, 'LT', 'Europe/Vilnius', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(230, 'LU', 'Europe/Luxembourg', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(231, 'LV', 'Europe/Riga', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(232, 'LY', 'Africa/Tripoli', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(233, 'MA', 'Africa/Casablanca', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(234, 'MC', 'Europe/Monaco', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(235, 'MD', 'Europe/Chisinau', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(236, 'ME', 'Europe/Podgorica', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(237, 'MF', 'America/Marigot', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(238, 'MG', 'Indian/Antananarivo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(239, 'MH', 'Pacific/Majuro', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(240, 'MH', 'Pacific/Kwajalein', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(241, 'MK', 'Europe/Skopje', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(242, 'ML', 'Africa/Bamako', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(243, 'MM', 'Asia/Yangon', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(244, 'MN', 'Asia/Ulaanbaatar', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(245, 'MN', 'Asia/Hovd', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(246, 'MN', 'Asia/Choibalsan', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(247, 'MO', 'Asia/Macau', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(248, 'MP', 'Pacific/Saipan', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(249, 'MQ', 'America/Martinique', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(250, 'MR', 'Africa/Nouakchott', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(251, 'MS', 'America/Montserrat', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(252, 'MT', 'Europe/Malta', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(253, 'MU', 'Indian/Mauritius', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(254, 'MV', 'Indian/Maldives', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(255, 'MW', 'Africa/Blantyre', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(256, 'MX', 'America/Mexico_City', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(257, 'MX', 'America/Cancun', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(258, 'MX', 'America/Merida', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(259, 'MX', 'America/Monterrey', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(260, 'MX', 'America/Matamoros', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(261, 'MX', 'America/Mazatlan', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(262, 'MX', 'America/Chihuahua', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(263, 'MX', 'America/Ojinaga', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(264, 'MX', 'America/Hermosillo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(265, 'MX', 'America/Tijuana', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(266, 'MX', 'America/Bahia_Banderas', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(267, 'MY', 'Asia/Kuala_Lumpur', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(268, 'MY', 'Asia/Kuching', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(269, 'MZ', 'Africa/Maputo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(270, 'NA', 'Africa/Windhoek', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(271, 'NC', 'Pacific/Noumea', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(272, 'NE', 'Africa/Niamey', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(273, 'NF', 'Pacific/Norfolk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(274, 'NG', 'Africa/Lagos', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(275, 'NI', 'America/Managua', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(276, 'NL', 'Europe/Amsterdam', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(277, 'NO', 'Europe/Oslo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(278, 'NP', 'Asia/Kathmandu', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(279, 'NR', 'Pacific/Nauru', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(280, 'NU', 'Pacific/Niue', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(281, 'NZ', 'Pacific/Auckland', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(282, 'NZ', 'Pacific/Chatham', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(283, 'OM', 'Asia/Muscat', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(284, 'PA', 'America/Panama', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(285, 'PE', 'America/Lima', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(286, 'PF', 'Pacific/Tahiti', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(287, 'PF', 'Pacific/Marquesas', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(288, 'PF', 'Pacific/Gambier', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(289, 'PG', 'Pacific/Port_Moresby', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(290, 'PG', 'Pacific/Bougainville', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(291, 'PH', 'Asia/Manila', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(292, 'PK', 'Asia/Karachi', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(293, 'PL', 'Europe/Warsaw', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(294, 'PM', 'America/Miquelon', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(295, 'PN', 'Pacific/Pitcairn', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(296, 'PR', 'America/Puerto_Rico', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(297, 'PS', 'Asia/Gaza', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(298, 'PS', 'Asia/Hebron', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(299, 'PT', 'Europe/Lisbon', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(300, 'PT', 'Atlantic/Madeira', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(301, 'PT', 'Atlantic/Azores', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(302, 'PW', 'Pacific/Palau', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(303, 'PY', 'America/Asuncion', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(304, 'QA', 'Asia/Qatar', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(305, 'RE', 'Indian/Reunion', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(306, 'RO', 'Europe/Bucharest', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(307, 'RS', 'Europe/Belgrade', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(308, 'RU', 'Europe/Kaliningrad', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(309, 'RU', 'Europe/Moscow', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(310, 'RU', 'Europe/Simferopol', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(311, 'RU', 'Europe/Volgograd', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(312, 'RU', 'Europe/Kirov', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(313, 'RU', 'Europe/Astrakhan', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(314, 'RU', 'Europe/Saratov', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(315, 'RU', 'Europe/Ulyanovsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(316, 'RU', 'Europe/Samara', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(317, 'RU', 'Asia/Yekaterinburg', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(318, 'RU', 'Asia/Omsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(319, 'RU', 'Asia/Novosibirsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(320, 'RU', 'Asia/Barnaul', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(321, 'RU', 'Asia/Tomsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(322, 'RU', 'Asia/Novokuznetsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(323, 'RU', 'Asia/Krasnoyarsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(324, 'RU', 'Asia/Irkutsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(325, 'RU', 'Asia/Chita', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(326, 'RU', 'Asia/Yakutsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(327, 'RU', 'Asia/Khandyga', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(328, 'RU', 'Asia/Vladivostok', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(329, 'RU', 'Asia/Ust-Nera', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(330, 'RU', 'Asia/Magadan', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(331, 'RU', 'Asia/Sakhalin', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(332, 'RU', 'Asia/Srednekolymsk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(333, 'RU', 'Asia/Kamchatka', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(334, 'RU', 'Asia/Anadyr', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(335, 'RW', 'Africa/Kigali', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(336, 'SA', 'Asia/Riyadh', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(337, 'SB', 'Pacific/Guadalcanal', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(338, 'SC', 'Indian/Mahe', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(339, 'SD', 'Africa/Khartoum', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(340, 'SE', 'Europe/Stockholm', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(341, 'SG', 'Asia/Singapore', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(342, 'SH', 'Atlantic/St_Helena', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(343, 'SI', 'Europe/Ljubljana', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(344, 'SJ', 'Arctic/Longyearbyen', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(345, 'SK', 'Europe/Bratislava', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(346, 'SL', 'Africa/Freetown', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(347, 'SM', 'Europe/San_Marino', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(348, 'SN', 'Africa/Dakar', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(349, 'SO', 'Africa/Mogadishu', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(350, 'SR', 'America/Paramaribo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(351, 'SS', 'Africa/Juba', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(352, 'ST', 'Africa/Sao_Tome', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(353, 'SV', 'America/El_Salvador', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(354, 'SX', 'America/Lower_Princes', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(355, 'SY', 'Asia/Damascus', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(356, 'SZ', 'Africa/Mbabane', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(357, 'TC', 'America/Grand_Turk', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(358, 'TD', 'Africa/Ndjamena', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(359, 'TF', 'Indian/Kerguelen', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(360, 'TG', 'Africa/Lome', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(361, 'TH', 'Asia/Bangkok', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(362, 'TJ', 'Asia/Dushanbe', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(363, 'TK', 'Pacific/Fakaofo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(364, 'TL', 'Asia/Dili', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(365, 'TM', 'Asia/Ashgabat', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(366, 'TN', 'Africa/Tunis', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(367, 'TO', 'Pacific/Tongatapu', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(368, 'TR', 'Europe/Istanbul', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(369, 'TT', 'America/Port_of_Spain', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(370, 'TV', 'Pacific/Funafuti', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(371, 'TW', 'Asia/Taipei', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(372, 'TZ', 'Africa/Dar_es_Salaam', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(373, 'UA', 'Europe/Kiev', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(374, 'UA', 'Europe/Uzhgorod', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(375, 'UA', 'Europe/Zaporozhye', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(376, 'UG', 'Africa/Kampala', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(377, 'UM', 'Pacific/Midway', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(378, 'UM', 'Pacific/Wake', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(379, 'US', 'America/New_York', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(380, 'US', 'America/Detroit', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(381, 'US', 'America/Kentucky/Louisville', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(382, 'US', 'America/Kentucky/Monticello', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(383, 'US', 'America/Indiana/Indianapolis', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(384, 'US', 'America/Indiana/Vincennes', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(385, 'US', 'America/Indiana/Winamac', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(386, 'US', 'America/Indiana/Marengo', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(387, 'US', 'America/Indiana/Petersburg', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(388, 'US', 'America/Indiana/Vevay', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(389, 'US', 'America/Chicago', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(390, 'US', 'America/Indiana/Tell_City', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(391, 'US', 'America/Indiana/Knox', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(392, 'US', 'America/Menominee', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(393, 'US', 'America/North_Dakota/Center', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(394, 'US', 'America/North_Dakota/New_Salem', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(395, 'US', 'America/North_Dakota/Beulah', '2019-10-22 13:56:01', '2019-10-22 13:56:01'),
(396, 'US', 'America/Denver', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(397, 'US', 'America/Boise', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(398, 'US', 'America/Phoenix', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(399, 'US', 'America/Los_Angeles', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(400, 'US', 'America/Anchorage', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(401, 'US', 'America/Juneau', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(402, 'US', 'America/Sitka', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(403, 'US', 'America/Metlakatla', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(404, 'US', 'America/Yakutat', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(405, 'US', 'America/Nome', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(406, 'US', 'America/Adak', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(407, 'US', 'Pacific/Honolulu', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(408, 'UY', 'America/Montevideo', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(409, 'UZ', 'Asia/Samarkand', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(410, 'UZ', 'Asia/Tashkent', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(411, 'VA', 'Europe/Vatican', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(412, 'VC', 'America/St_Vincent', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(413, 'VE', 'America/Caracas', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(414, 'VG', 'America/Tortola', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(415, 'VI', 'America/St_Thomas', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(416, 'VN', 'Asia/Ho_Chi_Minh', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(417, 'VU', 'Pacific/Efate', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(418, 'WF', 'Pacific/Wallis', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(419, 'WS', 'Pacific/Apia', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(420, 'YE', 'Asia/Aden', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(421, 'YT', 'Indian/Mayotte', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(422, 'ZA', 'Africa/Johannesburg', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(423, 'ZM', 'Africa/Lusaka', '2019-10-22 13:56:02', '2019-10-22 13:56:02'),
(424, 'ZW', 'Africa/Harare', '2019-10-22 13:56:02', '2019-10-22 13:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `sm_to_dos`
--

CREATE TABLE `sm_to_dos` (
  `id` int(10) UNSIGNED NOT NULL,
  `todo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `complete_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'P' COMMENT 'C for complete, N for not Complete, P Pending',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_upload_contents`
--

CREATE TABLE `sm_upload_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` int(11) DEFAULT NULL,
  `available_for_role` int(11) DEFAULT NULL,
  `available_for_class` int(11) DEFAULT NULL,
  `available_for_section` int(11) DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_user_logs`
--

CREATE TABLE `sm_user_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_user_logs`
--

INSERT INTO `sm_user_logs` (`id`, `ip_address`, `user_agent`, `created_at`, `updated_at`, `user_id`, `role_id`, `school_id`) VALUES
(1, '117.20.29.152', 'Chrome, OS X', '2019-11-25 23:47:54', '2019-11-25 23:47:54', 509, 5, 1),
(2, '117.20.29.152', 'Chrome, OS X', '2019-11-28 19:05:50', '2019-11-28 19:05:50', 1, 1, 1),
(3, '117.20.29.152', 'Chrome, OS X', '2019-11-28 19:06:37', '2019-11-28 19:06:37', 509, 5, 1),
(4, '117.20.29.152', 'Chrome, OS X', '2019-11-28 19:08:01', '2019-11-28 19:08:01', 509, 5, 1),
(5, '117.20.29.152', 'Safari, OS X', '2019-11-28 21:40:06', '2019-11-28 21:40:06', 1, 1, 1),
(6, '110.36.59.82', 'Chrome, Windows', '2019-12-01 19:59:50', '2019-12-01 19:59:50', 1, 1, 1),
(7, '110.36.182.222', 'Chrome, Windows', '2019-12-02 00:46:10', '2019-12-02 00:46:10', 1, 1, 1),
(8, '117.20.29.152', 'Safari, OS X', '2019-12-02 20:32:49', '2019-12-02 20:32:49', 1, 1, 1),
(9, '117.20.29.152', 'Chrome, Windows', '2019-12-02 22:56:48', '2019-12-02 22:56:48', 1, 1, 1),
(10, '39.46.81.133', 'Chrome, OS X', '2019-12-03 00:55:46', '2019-12-03 00:55:46', 509, 5, 1),
(11, '39.46.81.133', 'Chrome, OS X', '2019-12-03 01:04:07', '2019-12-03 01:04:07', 509, 5, 1),
(12, '103.255.5.82', 'Chrome, Windows', '2019-12-03 16:36:52', '2019-12-03 16:36:52', 1, 1, 1),
(13, '119.153.102.126', 'Firefox, Windows', '2019-12-03 16:55:11', '2019-12-03 16:55:11', 509, 5, 1),
(14, '39.36.48.69', 'Chrome, Windows', '2019-12-04 02:44:35', '2019-12-04 02:44:35', 509, 5, 1),
(15, '39.42.188.169', 'Chrome, AndroidOS', '2019-12-08 17:37:59', '2019-12-08 17:37:59', 509, 5, 1),
(16, '42.201.186.134', 'Chrome, AndroidOS', '2019-12-08 17:59:49', '2019-12-08 17:59:49', 509, 5, 1),
(17, '58.65.220.4', 'Chrome, Windows', '2019-12-09 15:49:38', '2019-12-09 15:49:38', 509, 5, 1),
(18, '42.201.172.105', 'Chrome, Windows', '2019-12-09 16:40:19', '2019-12-09 16:40:19', 509, 5, 1),
(19, '117.20.29.152', 'Safari, OS X', '2019-12-09 21:19:33', '2019-12-09 21:19:33', 1, 1, 1),
(20, '117.20.29.152', 'Safari, OS X', '2019-12-09 23:31:06', '2019-12-09 23:31:06', 511, 3, 1),
(21, '117.20.29.152', 'Safari, OS X', '2019-12-09 23:33:31', '2019-12-09 23:33:31', 510, 2, 1),
(22, '117.20.29.152', 'Safari, OS X', '2019-12-10 19:06:58', '2019-12-10 19:06:58', 1, 1, 1),
(23, '117.20.29.152', 'Safari, OS X', '2019-12-10 21:11:54', '2019-12-10 21:11:54', 1, 1, 1),
(24, '117.20.29.152', 'Safari, OS X', '2019-12-11 20:05:44', '2019-12-11 20:05:44', 1, 1, 1),
(25, '117.20.29.152', 'Safari, OS X', '2019-12-11 20:10:35', '2019-12-11 20:10:35', 1, 1, 1),
(26, '117.20.29.152', 'Safari, OS X', '2019-12-11 22:21:29', '2019-12-11 22:21:29', 512, 2, 1),
(27, '39.46.23.158', 'Safari, OS X', '2019-12-12 16:26:42', '2019-12-12 16:26:42', 1, 1, 1),
(28, '39.46.23.158', 'Safari, OS X', '2019-12-12 17:22:47', '2019-12-12 17:22:47', 512, 2, 1),
(29, '42.201.172.105', 'Chrome, Windows', '2019-12-14 18:11:38', '2019-12-14 18:11:38', 509, 5, 1),
(30, '39.46.68.214', 'Chrome, Windows', '2019-12-19 22:51:10', '2019-12-19 22:51:10', 1, 1, 1),
(31, '39.46.103.230', 'Edge, Windows', '2019-12-23 19:04:31', '2019-12-23 19:04:31', 1, 1, 1),
(32, '39.46.103.230', 'Chrome, Windows', '2019-12-23 19:24:20', '2019-12-23 19:24:20', 1, 1, 1),
(33, '117.20.29.152', 'Chrome, Windows', '2019-12-23 19:41:18', '2019-12-23 19:41:18', 1, 1, 1),
(34, '39.46.103.230', 'Edge, Windows', '2019-12-23 20:02:55', '2019-12-23 20:02:55', 1, 1, 1),
(35, '39.46.103.230', 'Edge, Windows', '2019-12-23 21:54:50', '2019-12-23 21:54:50', 1, 1, 1),
(36, '117.20.29.152', 'Chrome, Windows', '2019-12-24 19:39:46', '2019-12-24 19:39:46', 1, 1, 1),
(37, '39.46.103.230', 'Edge, Windows', '2019-12-24 23:06:14', '2019-12-24 23:06:14', 1, 1, 1),
(38, '39.46.103.230', 'Chrome, Windows', '2019-12-24 23:26:21', '2019-12-24 23:26:21', 1, 1, 1),
(39, '39.46.103.230', 'Chrome, Windows', '2019-12-24 23:52:39', '2019-12-24 23:52:39', 1, 1, 1),
(40, '39.46.103.230', 'Chrome, Windows', '2019-12-24 23:54:42', '2019-12-24 23:54:42', 513, 3, 1),
(41, '39.46.103.230', 'Edge, Windows', '2019-12-26 15:43:09', '2019-12-26 15:43:09', 1, 1, 1),
(42, '39.46.103.230', 'Chrome, Windows', '2019-12-26 16:00:42', '2019-12-26 16:00:42', 1, 1, 1),
(43, '39.46.103.230', 'Chrome, Windows', '2019-12-26 16:34:32', '2019-12-26 16:34:32', 1, 1, 1),
(44, '39.46.103.230', 'Chrome, Windows', '2019-12-26 17:14:44', '2019-12-26 17:14:44', 517, 2, 1),
(45, '39.46.103.230', 'Chrome, Windows', '2019-12-26 17:35:56', '2019-12-26 17:35:56', 1, 1, 1),
(46, '39.46.103.230', 'Chrome, Windows', '2019-12-26 18:16:02', '2019-12-26 18:16:02', 517, 2, 1),
(47, '39.46.103.230', 'Chrome, Windows', '2019-12-26 18:49:25', '2019-12-26 18:49:25', 1, 1, 1),
(48, '39.46.103.230', 'Chrome, Windows', '2019-12-26 19:15:15', '2019-12-26 19:15:15', 518, 3, 1),
(49, '39.46.103.230', 'Chrome, Windows', '2019-12-26 19:18:43', '2019-12-26 19:18:43', 1, 1, 1),
(50, '39.46.103.230', 'Chrome, Windows', '2019-12-26 19:49:37', '2019-12-26 19:49:37', 517, 2, 1),
(51, '39.46.103.230', 'Chrome, Windows', '2019-12-26 19:50:26', '2019-12-26 19:50:26', 1, 1, 1),
(52, '39.46.103.230', 'Chrome, Windows', '2019-12-27 17:48:09', '2019-12-27 17:48:09', 1, 1, 1),
(53, '39.46.103.230', 'Chrome, Windows', '2019-12-27 17:57:42', '2019-12-27 17:57:42', 513, 3, 1),
(54, '39.46.103.230', 'Firefox, Windows', '2019-12-27 17:59:09', '2019-12-27 17:59:09', 1, 1, 1),
(55, '39.46.92.115', 'Chrome, Windows', '2019-12-27 18:18:41', '2019-12-27 18:18:41', 519, 2, 1),
(56, '117.20.29.152', 'Chrome, Windows', '2019-12-27 18:28:08', '2019-12-27 18:28:08', 520, 3, 1),
(57, '117.20.29.152', 'Chrome, Windows', '2019-12-27 18:34:20', '2019-12-27 18:34:20', 519, 2, 1),
(58, '117.20.29.152', 'Chrome, Windows', '2019-12-27 18:35:05', '2019-12-27 18:35:05', 520, 3, 1),
(59, '39.46.43.98', 'Safari, OS X', '2019-12-27 22:30:59', '2019-12-27 22:30:59', 1, 1, 1),
(60, '117.20.29.152', 'Chrome, Windows', '2019-12-27 23:08:48', '2019-12-27 23:08:48', 1, 1, 1),
(61, '117.20.29.152', 'Chrome, Windows', '2019-12-27 23:16:46', '2019-12-27 23:16:46', 1, 1, 1),
(62, '117.20.29.152', 'Chrome, Windows', '2019-12-27 23:17:37', '2019-12-27 23:17:37', 520, 3, 1),
(63, '117.20.29.152', 'Chrome, Windows', '2019-12-27 23:48:51', '2019-12-27 23:48:51', 520, 3, 1),
(64, '117.20.29.152', 'Chrome, Windows', '2019-12-27 23:51:20', '2019-12-27 23:51:20', 520, 3, 1),
(65, '117.20.29.152', 'Firefox, Windows', '2019-12-28 00:02:55', '2019-12-28 00:02:55', 1, 1, 1),
(66, '39.46.66.152', 'Chrome, Windows', '2019-12-30 16:22:54', '2019-12-30 16:22:54', 1, 1, 1),
(67, '39.46.66.152', 'Chrome, Windows', '2019-12-30 18:44:45', '2019-12-30 18:44:45', 517, 2, 1),
(68, '39.46.66.152', 'Chrome, Windows', '2019-12-30 18:47:20', '2019-12-30 18:47:20', 1, 1, 1),
(69, '39.46.66.152', 'Chrome, Windows', '2019-12-30 18:47:42', '2019-12-30 18:47:42', 1, 1, 1),
(70, '39.46.66.152', 'Chrome, Windows', '2019-12-30 19:22:16', '2019-12-30 19:22:16', 521, 4, 1),
(71, '39.46.66.152', 'Chrome, Windows', '2019-12-30 19:27:07', '2019-12-30 19:27:07', 1, 1, 1),
(72, '39.46.66.152', 'Chrome, Windows', '2019-12-30 19:37:28', '2019-12-30 19:37:28', 1, 1, 1),
(73, '39.46.66.152', 'Chrome, Windows', '2019-12-30 19:38:25', '2019-12-30 19:38:25', 517, 2, 1),
(74, '39.46.66.152', 'Chrome, Windows', '2019-12-30 19:39:25', '2019-12-30 19:39:25', 517, 2, 1),
(75, '39.46.66.152', 'Chrome, Windows', '2019-12-30 20:08:22', '2019-12-30 20:08:22', 1, 1, 1),
(76, '39.46.66.152', 'Chrome, Windows', '2019-12-30 23:04:21', '2019-12-30 23:04:21', 518, 3, 1),
(77, '39.46.66.152', 'Chrome, Windows', '2019-12-30 23:13:17', '2019-12-30 23:13:17', 1, 1, 1),
(78, '39.46.66.152', 'Chrome, Windows', '2019-12-31 16:36:04', '2019-12-31 16:36:04', 1, 1, 1),
(79, '39.46.63.217', 'Chrome, Windows', '2020-01-01 16:27:41', '2020-01-01 16:27:41', 1, 1, 1),
(80, '39.46.63.217', 'Chrome, Windows', '2020-01-01 17:27:12', '2020-01-01 17:27:12', 1, 1, 1),
(81, '117.20.29.152', 'Chrome, Windows', '2020-01-01 17:52:54', '2020-01-01 17:52:54', 1, 1, 1),
(82, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:04:45', '2020-01-01 19:04:45', 1, 1, 1),
(83, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:05:18', '2020-01-01 19:05:18', 517, 2, 1),
(84, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:06:09', '2020-01-01 19:06:09', 1, 1, 1),
(85, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:13:39', '2020-01-01 19:13:39', 523, 2, 1),
(86, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:14:11', '2020-01-01 19:14:11', 524, 3, 1),
(87, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:15:28', '2020-01-01 19:15:28', 1, 1, 1),
(88, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:19:55', '2020-01-01 19:19:55', 1, 1, 1),
(89, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:20:05', '2020-01-01 19:20:05', 523, 2, 1),
(90, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:22:05', '2020-01-01 19:22:05', 517, 2, 1),
(91, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:24:28', '2020-01-01 19:24:28', 521, 4, 1),
(92, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:25:13', '2020-01-01 19:25:13', 1, 1, 1),
(93, '39.46.29.209', 'Chrome, Windows', '2020-01-01 19:36:54', '2020-01-01 19:36:54', 1, 1, 1),
(94, '117.20.29.152', 'Chrome, Windows', '2020-01-02 01:00:04', '2020-01-02 01:00:04', 1, 1, 1),
(95, '117.20.29.152', 'Chrome, Windows', '2020-01-02 01:06:06', '2020-01-02 01:06:06', 1, 1, 1),
(96, '117.20.29.152', 'Chrome, Windows', '2020-01-02 01:06:51', '2020-01-02 01:06:51', 521, 4, 1),
(97, '117.20.29.152', 'Chrome, Windows', '2020-01-02 01:09:03', '2020-01-02 01:09:03', 1, 1, 1),
(98, '39.46.21.56', 'Chrome, Windows', '2020-01-02 15:58:43', '2020-01-02 15:58:43', 1, 1, 1),
(99, '39.46.21.56', 'Chrome, Windows', '2020-01-02 16:36:52', '2020-01-02 16:36:52', 1, 1, 1),
(100, '39.46.21.56', 'Chrome, Windows', '2020-01-02 17:04:52', '2020-01-02 17:04:52', 525, 2, 1),
(101, '39.46.21.56', 'Chrome, Windows', '2020-01-02 17:16:18', '2020-01-02 17:16:18', 1, 1, 1),
(102, '39.46.21.56', 'Chrome, Windows', '2020-01-02 17:18:49', '2020-01-02 17:18:49', 526, 3, 1),
(103, '39.46.21.56', 'Chrome, Windows', '2020-01-02 17:32:08', '2020-01-02 17:32:08', 526, 3, 1),
(104, '39.46.21.56', 'Chrome, Windows', '2020-01-02 17:58:48', '2020-01-02 17:58:48', 525, 2, 1),
(105, '39.46.21.56', 'Chrome, Windows', '2020-01-02 19:20:57', '2020-01-02 19:20:57', 525, 2, 1),
(106, '39.46.21.56', 'Chrome, Windows', '2020-01-02 19:23:47', '2020-01-02 19:23:47', 525, 2, 1),
(107, '39.46.21.56', 'Chrome, Windows', '2020-01-02 19:24:32', '2020-01-02 19:24:32', 1, 1, 1),
(108, '39.46.21.56', 'Chrome, Windows', '2020-01-02 21:22:56', '2020-01-02 21:22:56', 527, 4, 1),
(109, '39.46.21.56', 'Chrome, Windows', '2020-01-03 15:29:02', '2020-01-03 15:29:02', 1, 1, 1),
(110, '39.46.15.19', 'Chrome, Windows', '2020-01-03 20:28:08', '2020-01-03 20:28:08', 1, 1, 1),
(111, '117.20.29.152', 'Chrome, Windows', '2020-01-03 21:48:41', '2020-01-03 21:48:41', 1, 1, 1),
(112, '117.20.29.152', 'Chrome, Windows', '2020-01-03 23:38:47', '2020-01-03 23:38:47', 527, 4, 1),
(113, '117.20.29.152', 'Chrome, Windows', '2020-01-03 23:51:26', '2020-01-03 23:51:26', 523, 2, 1),
(114, '117.20.29.152', 'Chrome, Windows', '2020-01-03 23:54:01', '2020-01-03 23:54:01', 1, 1, 1),
(115, '117.20.29.152', 'Chrome, Windows', '2020-01-03 23:55:55', '2020-01-03 23:55:55', 527, 4, 1),
(116, '39.46.15.19', 'Chrome, Windows', '2020-01-06 16:22:55', '2020-01-06 16:22:55', 1, 1, 1),
(117, '39.46.15.19', 'Chrome, Windows', '2020-01-06 16:24:13', '2020-01-06 16:24:13', 527, 4, 1),
(118, '39.46.15.19', 'Chrome, Windows', '2020-01-06 16:29:56', '2020-01-06 16:29:56', 525, 2, 1),
(119, '39.46.15.19', 'Chrome, Windows', '2020-01-06 16:31:33', '2020-01-06 16:31:33', 1, 1, 1),
(120, '39.46.15.19', 'Chrome, Windows', '2020-01-06 16:41:05', '2020-01-06 16:41:05', 527, 4, 1),
(121, '39.46.15.19', 'Chrome, Windows', '2020-01-06 16:42:47', '2020-01-06 16:42:47', 525, 2, 1),
(122, '39.46.15.19', 'Chrome, Windows', '2020-01-06 16:44:42', '2020-01-06 16:44:42', 527, 4, 1),
(123, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:16:38', '2020-01-06 17:16:38', 1, 1, 1),
(124, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:20:58', '2020-01-06 17:20:58', 525, 2, 1),
(125, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:22:04', '2020-01-06 17:22:04', 1, 1, 1),
(126, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:24:33', '2020-01-06 17:24:33', 525, 2, 1),
(127, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:26:07', '2020-01-06 17:26:07', 527, 4, 1),
(128, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:28:04', '2020-01-06 17:28:04', 525, 2, 1),
(129, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:33:54', '2020-01-06 17:33:54', 1, 1, 1),
(130, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:37:59', '2020-01-06 17:37:59', 527, 4, 1),
(131, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:40:07', '2020-01-06 17:40:07', 1, 1, 1),
(132, '39.46.15.19', 'Chrome, Windows', '2020-01-06 17:56:02', '2020-01-06 17:56:02', 1, 1, 1),
(133, '39.46.15.19', 'Chrome, Windows', '2020-01-06 18:43:18', '2020-01-06 18:43:18', 1, 1, 1),
(134, '39.46.25.11', 'Chrome, Windows', '2020-01-06 19:43:15', '2020-01-06 19:43:15', 1, 1, 1),
(135, '39.46.25.11', 'Chrome, Windows', '2020-01-06 19:51:29', '2020-01-06 19:51:29', 1, 1, 1),
(136, '117.20.29.152', 'Chrome, Windows', '2020-01-06 21:19:23', '2020-01-06 21:19:23', 1, 1, 1),
(137, '117.20.29.152', 'Chrome, Windows', '2020-01-06 21:24:31', '2020-01-06 21:24:31', 525, 2, 1),
(138, '39.46.25.11', 'Chrome, Windows', '2020-01-06 21:30:08', '2020-01-06 21:30:08', 525, 2, 1),
(139, '39.46.25.11', 'Chrome, Windows', '2020-01-06 21:31:58', '2020-01-06 21:31:58', 527, 4, 1),
(140, '39.46.25.11', 'Chrome, Windows', '2020-01-06 21:36:05', '2020-01-06 21:36:05', 525, 2, 1),
(141, '39.46.25.11', 'Chrome, Windows', '2020-01-06 21:38:04', '2020-01-06 21:38:04', 527, 4, 1),
(142, '39.46.25.11', 'Chrome, Windows', '2020-01-06 21:49:15', '2020-01-06 21:49:15', 525, 2, 1),
(143, '39.46.25.11', 'Chrome, Windows', '2020-01-06 21:50:50', '2020-01-06 21:50:50', 527, 4, 1),
(144, '39.46.25.11', 'Chrome, Windows', '2020-01-06 22:10:12', '2020-01-06 22:10:12', 527, 4, 1),
(145, '39.46.25.11', 'Chrome, Windows', '2020-01-06 22:54:40', '2020-01-06 22:54:40', 525, 2, 1),
(146, '39.46.25.11', 'Chrome, Windows', '2020-01-06 22:57:56', '2020-01-06 22:57:56', 527, 4, 1),
(147, '39.46.25.11', 'Chrome, Windows', '2020-01-06 23:03:09', '2020-01-06 23:03:09', 525, 2, 1),
(148, '39.46.25.11', 'Chrome, Windows', '2020-01-06 23:05:31', '2020-01-06 23:05:31', 1, 1, 1),
(149, '39.46.25.11', 'Chrome, Windows', '2020-01-07 15:58:07', '2020-01-07 15:58:07', 1, 1, 1),
(150, '117.20.29.152', 'Chrome, Windows', '2020-01-07 17:23:52', '2020-01-07 17:23:52', 1, 1, 1),
(151, '117.20.29.152', 'Chrome, Windows', '2020-01-07 17:32:45', '2020-01-07 17:32:45', 529, 3, 1),
(152, '39.46.25.11', 'Chrome, Windows', '2020-01-07 17:36:58', '2020-01-07 17:36:58', 527, 4, 1),
(153, '117.20.29.152', 'Chrome, Windows', '2020-01-07 18:10:56', '2020-01-07 18:10:56', 1, 1, 1),
(154, '117.20.29.152', 'Chrome, Windows', '2020-01-07 18:48:46', '2020-01-07 18:48:46', 1, 1, 1),
(155, '117.20.29.152', 'Chrome, Windows', '2020-01-07 18:49:40', '2020-01-07 18:49:40', 1, 1, 1),
(156, '117.20.29.152', 'Chrome, Windows', '2020-01-07 18:50:28', '2020-01-07 18:50:28', 529, 3, 1),
(157, '117.20.29.152', 'Chrome, Windows', '2020-01-07 18:53:49', '2020-01-07 18:53:49', 1, 1, 1),
(158, '117.20.29.152', 'Chrome, Windows', '2020-01-07 18:55:58', '2020-01-07 18:55:58', 528, 2, 1),
(159, '117.20.29.152', 'Chrome, Windows', '2020-01-07 19:09:44', '2020-01-07 19:09:44', 1, 1, 1),
(160, '117.20.29.152', 'Chrome, Windows', '2020-01-07 19:14:59', '2020-01-07 19:14:59', 528, 2, 1),
(161, '39.46.25.11', 'Chrome, Windows', '2020-01-07 19:23:45', '2020-01-07 19:23:45', 1, 1, 1),
(162, '39.46.25.11', 'Chrome, Windows', '2020-01-07 19:25:32', '2020-01-07 19:25:32', 525, 2, 1),
(163, '117.20.29.152', 'Chrome, Windows', '2020-01-07 19:28:18', '2020-01-07 19:28:18', 1, 1, 1),
(164, '39.46.25.11', 'Chrome, Windows', '2020-01-07 19:28:52', '2020-01-07 19:28:52', 1, 1, 1),
(165, '117.20.29.152', 'Chrome, Windows', '2020-01-07 19:34:12', '2020-01-07 19:34:12', 531, 3, 1),
(166, '117.20.29.152', 'Chrome, Windows', '2020-01-07 19:34:37', '2020-01-07 19:34:37', 530, 2, 1),
(167, '39.46.25.11', 'Chrome, Windows', '2020-01-07 19:39:51', '2020-01-07 19:39:51', 530, 2, 1),
(168, '39.46.25.11', 'Chrome, Windows', '2020-01-07 19:41:33', '2020-01-07 19:41:33', 1, 1, 1),
(169, '39.46.25.11', 'Chrome, Windows', '2020-01-07 19:47:38', '2020-01-07 19:47:38', 533, 3, 1),
(170, '39.46.25.11', 'Chrome, Windows', '2020-01-07 19:48:26', '2020-01-07 19:48:26', 1, 1, 1),
(171, '39.46.25.11', 'Chrome, Windows', '2020-01-08 00:14:08', '2020-01-08 00:14:08', 1, 1, 1),
(172, '101.53.242.6', 'Chrome, OS X', '2020-01-08 04:17:42', '2020-01-08 04:17:42', 1, 1, 1),
(173, '117.20.29.152', 'Chrome, Windows', '2020-01-08 17:26:39', '2020-01-08 17:26:39', 1, 1, 1),
(174, '117.20.29.152', 'Chrome, Windows', '2020-01-08 17:30:09', '2020-01-08 17:30:09', 525, 2, 1),
(175, '39.46.117.38', 'Chrome, Windows', '2020-01-08 17:58:12', '2020-01-08 17:58:12', 1, 1, 1),
(176, '39.46.117.38', 'Chrome, Windows', '2020-01-08 20:06:56', '2020-01-08 20:06:56', 1, 1, 1),
(177, '39.46.55.103', 'Chrome, Windows', '2020-01-08 20:47:24', '2020-01-08 20:47:24', 525, 2, 1),
(178, '39.46.55.103', 'Chrome, Windows', '2020-01-08 20:50:52', '2020-01-08 20:50:52', 527, 4, 1),
(179, '39.46.55.103', 'Chrome, Windows', '2020-01-08 21:11:26', '2020-01-08 21:11:26', 525, 2, 1),
(180, '39.46.55.103', 'Chrome, Windows', '2020-01-08 21:22:39', '2020-01-08 21:22:39', 1, 1, 1),
(181, '39.46.55.103', 'Chrome, Windows', '2020-01-08 21:27:59', '2020-01-08 21:27:59', 525, 2, 1),
(182, '39.46.55.103', 'Chrome, Windows', '2020-01-08 21:31:17', '2020-01-08 21:31:17', 1, 1, 1),
(183, '39.46.55.103', 'Chrome, Windows', '2020-01-08 21:40:14', '2020-01-08 21:40:14', 525, 2, 1),
(184, '39.46.55.103', 'Chrome, Windows', '2020-01-08 21:58:32', '2020-01-08 21:58:32', 525, 2, 1),
(185, '39.46.55.103', 'Chrome, Windows', '2020-01-08 21:59:47', '2020-01-08 21:59:47', 527, 4, 1),
(186, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:22:25', '2020-01-08 22:22:25', 525, 2, 1),
(187, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:27:17', '2020-01-08 22:27:17', 527, 4, 1),
(188, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:33:16', '2020-01-08 22:33:16', 525, 2, 1),
(189, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:34:09', '2020-01-08 22:34:09', 527, 4, 1),
(190, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:36:09', '2020-01-08 22:36:09', 525, 2, 1),
(191, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:37:43', '2020-01-08 22:37:43', 527, 4, 1),
(192, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:42:21', '2020-01-08 22:42:21', 525, 2, 1),
(193, '39.46.55.103', 'Chrome, Windows', '2020-01-08 22:44:23', '2020-01-08 22:44:23', 527, 4, 1),
(194, '39.46.16.200', 'Chrome, Windows', '2020-01-08 23:22:00', '2020-01-08 23:22:00', 525, 2, 1),
(195, '39.46.16.200', 'Chrome, Windows', '2020-01-08 23:22:51', '2020-01-08 23:22:51', 527, 4, 1),
(196, '101.53.242.6', 'Chrome, OS X', '2020-01-09 04:34:27', '2020-01-09 04:34:27', 1, 1, 1),
(197, '39.46.101.23', 'Chrome, OS X', '2020-01-09 05:01:24', '2020-01-09 05:01:24', 1, 1, 1),
(198, '39.46.77.69', 'Chrome, Windows', '2020-01-09 15:35:57', '2020-01-09 15:35:57', 527, 4, 1),
(199, '39.46.59.234', 'Chrome, Windows', '2020-01-09 18:19:45', '2020-01-09 18:19:45', 1, 1, 1),
(200, '117.20.29.152', 'Chrome, Windows', '2020-01-09 20:04:47', '2020-01-09 20:04:47', 525, 2, 1),
(201, '117.20.29.152', 'Chrome, Windows', '2020-01-09 20:18:40', '2020-01-09 20:18:40', 527, 4, 1),
(202, '117.20.29.152', 'Chrome, Windows', '2020-01-09 20:22:17', '2020-01-09 20:22:17', 525, 2, 1),
(203, '117.20.29.152', 'Chrome, Windows', '2020-01-09 21:57:45', '2020-01-09 21:57:45', 1, 1, 1),
(204, '117.20.29.152', 'Chrome, Windows', '2020-01-09 22:03:55', '2020-01-09 22:03:55', 525, 2, 1),
(205, '117.20.29.152', 'Chrome, Windows', '2020-01-09 23:27:49', '2020-01-09 23:27:49', 1, 1, 1),
(206, '117.20.29.152', 'Chrome, Windows', '2020-01-09 23:35:17', '2020-01-09 23:35:17', 525, 2, 1),
(207, '117.20.29.152', 'Chrome, Windows', '2020-01-10 22:35:16', '2020-01-10 22:35:16', 1, 1, 1),
(208, '39.46.59.234', 'Chrome, Windows', '2020-01-13 21:28:46', '2020-01-13 21:28:46', 1, 1, 1),
(209, '39.46.59.234', 'Chrome, Windows', '2020-01-13 21:35:08', '2020-01-13 21:35:08', 530, 2, 1),
(210, '39.46.59.234', 'Chrome, Windows', '2020-01-13 22:14:09', '2020-01-13 22:14:09', 1, 1, 1),
(211, '39.46.59.234', 'Firefox, Windows', '2020-01-13 22:56:19', '2020-01-13 22:56:19', 527, 4, 1),
(212, '39.46.59.234', 'Firefox, Windows', '2020-01-13 23:04:53', '2020-01-13 23:04:53', 534, 4, 1),
(213, '39.46.59.234', 'Chrome, Windows', '2020-01-13 23:13:55', '2020-01-13 23:13:55', 530, 2, 1),
(214, '39.46.59.234', 'Firefox, Windows', '2020-01-14 00:21:01', '2020-01-14 00:21:01', 527, 4, 1),
(215, '39.46.59.234', 'Chrome, Windows', '2020-01-14 15:42:33', '2020-01-14 15:42:33', 1, 1, 1),
(216, '39.46.59.234', 'Chrome, Windows', '2020-01-14 16:26:42', '2020-01-14 16:26:42', 530, 2, 1),
(217, '117.20.29.152', 'Chrome, Windows', '2020-01-15 16:37:50', '2020-01-15 16:37:50', 1, 1, 1),
(218, '117.20.29.152', 'Chrome, Windows', '2020-01-16 17:00:34', '2020-01-16 17:00:34', 1, 1, 1),
(219, '117.20.29.152', 'Chrome, Windows', '2020-01-16 21:49:07', '2020-01-16 21:49:07', 536, 2, 1),
(220, '117.20.29.152', 'Chrome, Windows', '2020-01-16 22:24:23', '2020-01-16 22:24:23', 538, 4, 1),
(221, '117.20.29.152', 'Chrome, Windows', '2020-01-16 22:26:38', '2020-01-16 22:26:38', 537, 3, 1),
(222, '117.20.29.152', 'Chrome, Windows', '2020-01-17 16:25:21', '2020-01-17 16:25:21', 1, 1, 1),
(223, '119.160.103.72', 'Chrome, OS X', '2020-01-17 17:25:57', '2020-01-17 17:25:57', 1, 1, 1),
(224, '117.20.29.152', 'Chrome, Windows', '2020-01-17 17:40:39', '2020-01-17 17:40:39', 1, 1, 1),
(225, '39.46.92.37', 'Chrome, Windows', '2020-01-17 18:53:19', '2020-01-17 18:53:19', 1, 1, 1),
(226, '39.46.92.37', 'Chrome, OS X', '2020-01-17 19:47:18', '2020-01-17 19:47:18', 1, 1, 1),
(227, '117.20.29.152', 'Chrome, Windows', '2020-01-17 21:07:37', '2020-01-17 21:07:37', 1, 1, 1),
(228, '39.46.92.37', 'Chrome, OS X', '2020-01-20 19:07:27', '2020-01-20 19:07:27', 1, 1, 1),
(229, '39.46.100.84', 'Chrome, Windows', '2020-01-20 23:48:10', '2020-01-20 23:48:10', 1, 1, 1),
(230, '39.46.100.84', 'Chrome, Windows', '2020-01-21 16:28:33', '2020-01-21 16:28:33', 1, 1, 1),
(231, '39.46.37.179', 'Chrome, Windows', '2020-01-21 18:45:03', '2020-01-21 18:45:03', 1, 1, 1),
(232, '39.46.121.30', 'Chrome, Windows', '2020-01-22 16:18:26', '2020-01-22 16:18:26', 1, 1, 1),
(233, '119.160.119.214', 'Chrome, Windows', '2020-01-22 18:28:02', '2020-01-22 18:28:02', 1, 1, 1),
(234, '119.160.119.120', 'Chrome, Windows', '2020-01-23 18:45:32', '2020-01-23 18:45:32', 1, 1, 1),
(235, '39.46.121.30', 'Chrome, Windows', '2020-01-23 19:54:56', '2020-01-23 19:54:56', 1, 1, 1),
(236, '119.160.117.213', 'Chrome, Windows', '2020-01-29 18:10:21', '2020-01-29 18:10:21', 1, 1, 1),
(237, '119.160.118.82', 'Chrome, Windows', '2020-01-30 17:17:48', '2020-01-30 17:17:48', 1, 1, 1),
(238, '119.160.117.24', 'Chrome, Windows', '2020-01-30 23:51:02', '2020-01-30 23:51:02', 1, 1, 1),
(239, '39.46.102.21', 'Chrome, Windows', '2020-02-05 16:44:46', '2020-02-05 16:44:46', 1, 1, 1),
(240, '119.160.119.41', 'Chrome, Windows', '2020-02-07 00:46:24', '2020-02-07 00:46:24', 1, 1, 1),
(241, '119.155.25.161', 'Chrome, Windows', '2020-02-07 01:03:09', '2020-02-07 01:03:09', 1, 1, 1),
(242, '119.160.118.16', 'Chrome, Windows', '2020-02-07 21:44:02', '2020-02-07 21:44:02', 1, 1, 1),
(243, '103.255.5.253', 'Chrome, Windows', '2020-02-14 17:32:48', '2020-02-14 17:32:48', 1, 1, 1),
(244, '117.20.29.152', 'Chrome, Windows', '2020-02-17 16:11:59', '2020-02-17 16:11:59', 1, 1, 1),
(245, '117.20.29.152', 'Chrome, Windows', '2020-02-17 21:34:02', '2020-02-17 21:34:02', 1, 1, 1),
(246, '117.20.29.152', 'Chrome, Windows', '2020-02-17 21:37:03', '2020-02-17 21:37:03', 1, 1, 1),
(247, '117.20.29.152', 'Chrome, Windows', '2020-02-18 18:20:16', '2020-02-18 18:20:16', 1, 1, 1),
(248, '117.20.29.152', 'Chrome, Windows', '2020-02-18 18:35:02', '2020-02-18 18:35:02', 1, 1, 1),
(249, '72.255.51.120', 'Chrome, Windows', '2020-02-20 18:17:13', '2020-02-20 18:17:13', 1, 1, 1),
(250, '39.46.78.44', 'Chrome, Windows', '2020-02-25 17:23:44', '2020-02-25 17:23:44', 1, 1, 1),
(251, '119.160.97.179', 'Chrome, OS X', '2020-03-04 20:03:39', '2020-03-04 20:03:39', 1, 1, 1),
(252, '39.46.41.144', 'Chrome, OS X', '2020-03-05 01:36:37', '2020-03-05 01:36:37', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_vehicles`
--

CREATE TABLE `sm_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_year` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_visitors`
--

CREATE TABLE `sm_visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_person` int(11) DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT '1',
  `updated_by` int(10) UNSIGNED DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_visitors`
--

INSERT INTO `sm_visitors` (`id`, `name`, `phone`, `visitor_id`, `no_of_person`, `purpose`, `date`, `in_time`, `out_time`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Mudassar', '0455345499', '01', 1, 'School Info', '2019-12-10', '12:15 PM', '3:18 PM', '', 1, '2019-12-10 21:18:37', '2019-12-10 21:18:37', 1, 1, 1),
(2, 'Ameen Amir', '033312134567', '001', 1, 'PTM', '2019-12-23', '10:48 AM', '11:43 AM', '', 1, '2019-12-24 19:48:48', '2019-12-24 19:48:48', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_weekends`
--

CREATE TABLE `sm_weekends` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_weekend` int(11) DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_weekends`
--

INSERT INTO `sm_weekends` (`id`, `name`, `order`, `is_weekend`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', 1, 0, 1, NULL, NULL),
(2, 'Sunday', 2, 0, 1, NULL, NULL),
(3, 'Monday', 3, 0, 1, NULL, NULL),
(4, 'Tuesday', 4, 0, 1, NULL, NULL),
(5, 'Wednesday', 5, 0, 1, NULL, NULL),
(6, 'Thursday', 6, 0, 1, NULL, NULL),
(7, 'Friday', 7, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(210) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `random_code` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT '1',
  `school_id` int(10) UNSIGNED DEFAULT '1',
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `usertype`, `access_status`, `active_status`, `random_code`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`, `role_id`) VALUES
(1, 'Nauman Ahmad', 'admin@ivylabtech.com', 'admin@ivylabtech.com', '$2y$10$zjYH96uF6JfcBCky3GvEkeefbcErmA3oGK0LfSF.O2zA5Vi3hEOpu', NULL, 1, 1, NULL, '5ODkXwZJCVwXSHlKgV5enu0ooLj64Mb1B7AVg5ACPxQT5ue22He09ImWUM2R', '2019-11-13 00:22:20', '2020-01-17 23:24:01', 1, 1, 1, 1),
(513, NULL, 'ibrahim.nasir@ivylabtech.com', 'ibrahim.nasir@ivylabtech.com', '$2y$10$Zv9zgA5r4BIOb4yIvT754uAZCKoy.USoOuojb86zBB3u1QCpEMsNa', NULL, 1, 1, NULL, 'lkgDEw1FPQTrooPE8iuoWmrMGLNbKG27rYACiORcfwZM46Vs02njnjIDeGOQ', '2019-12-11 20:15:46', '2019-12-11 20:15:46', 1, 1, 1, 3),
(512, 'Hashim Ibrahim', 'ibrahimnasir124@gmail.com', 'ibrahimnasir124@gmail.com', '$2y$10$ierv5td/90GpZQrJpd6SOunpKIC0yh/RbF7rfMw9DCml9GGLKLkfS', NULL, 1, 1, NULL, NULL, '2019-12-11 20:15:46', '2019-12-11 20:15:46', 1, 1, 1, 2),
(511, 'Raheem Shah', 'ibrahimnasir124@gmail.com', 'ibrahimnasir124@gmail.com', '$2y$10$gT5PQuFbJBK22vxGHoKL5.57ddOIcWPtysrOYS3tLE2g7M5lLH/va', NULL, 1, 1, NULL, 'Ml0bZGNXbP9veUlG6Zd8gCan9GQjDiIGjcMnEEZTwdVxeDsk90dEZOjzKo6q', '2019-12-09 23:14:34', '2019-12-09 23:32:54', 1, 1, 1, 3),
(510, 'Ahsan Khan', 's_1', 'ibrahim.nasir@ivylabtech.com', '$2y$10$6iy4e/wbNpJ2QEeIWd.2M.TrGRmtXhCJsAcpdV.6iyWQtIGPd2O3a', NULL, 1, 1, NULL, NULL, '2019-12-09 23:14:34', '2019-12-09 23:32:54', 1, 1, 1, 2),
(509, 'Demo Demo', 'demo@ivylabtech.com', 'demo@ivylabtech.com', '$2y$10$rM6Yse6R9SnPA0CG8V5dVe2OP7VYQ3q.LP545kjDqrv6uPGn3jh6C', NULL, 1, 1, NULL, 'qSCOHlOdZh5StqJVkI7W31eDejLmEoJf2sergaJervEEOJ38DLA7J6Q43Jqn', '2019-11-25 23:45:56', '2019-11-25 23:45:56', 1, 1, 1, 5),
(8, 'Mateo Bernhard', 'Mateo1@infixedu.com', 'Mateo1@infixedu.com', '$2y$10$CbkeAZqRwTNWmFsdXeFwmuneoIBUzXdU1iRHuFflQUAwaDaogF5ve', NULL, 1, 1, NULL, NULL, '2019-11-13 00:22:46', '2019-11-13 00:22:46', 1, 1, 1, 10),
(541, 'khurram Rajput', 'khurram675@gmail.com', 'khurram675@gmail.com', '$2y$10$zFVl85Mvso.BZCzVwxLrTODP1z3g.Ccd1nN4v2brD38cxspchvpPC', NULL, 1, 1, NULL, NULL, '2020-02-18 18:42:04', '2020-02-18 18:42:04', 1, 1, 1, 5),
(539, 'Ibrahim Anwar', 'ISP-12', 'ISP-12', '$2y$10$ACNRvmcIBEVazL1hCJa2WOYzYYCwFcCadalaz43UjHkOo9WOCRhW2', NULL, 1, 1, NULL, NULL, '2020-01-17 16:35:41', '2020-01-17 16:35:41', 1, 1, 1, 2),
(540, NULL, 'manwar@gmail.com', 'manwar@gmail.com', '$2y$10$Kx/L/AAj65Ru316dBjgkP.yFEUva1sq5b4waZYIIZqHBlvAhpokRi', NULL, 1, 1, NULL, NULL, '2020-01-17 16:35:41', '2020-01-17 16:35:41', 1, 1, 1, 3),
(538, 'Abdullah Amin', 'AbdullahAmin@gmail.com', 'AbdullahAmin@gmail.com', '$2y$10$6d/YAgC7O5ml2kHAjlHNreiODpANT1eIVeJakZbiEYuUm8SehV8tC', NULL, 1, 1, NULL, 'ghehEaY3JvOz4DgubnCAc7o8kjBB73DG19KhVWORN3t837sGXmfY8VUdqvnO', '2020-01-16 21:41:04', '2020-01-16 21:41:04', 1, 1, 1, 4),
(536, 'faran Azmat', 's_11', 'naumanijaz299@gmail.com', '$2y$10$2vMcj754dNia65VlMlAZBOCGLglzhOkLeL7anRatcQ6cB4LTPLseG', NULL, 1, 1, NULL, 'oAmo5pz71mVW8eXcIiz5dwWUITBZXuV6R5uu2rAy3GT0D8CWuLO0oNWEKJyg', '2020-01-16 17:42:28', '2020-01-17 17:57:25', 1, 1, 1, 2),
(537, 'Azmat Ali', 'aliazmat123@gmail.com', 'aliazmat123@gmail.com', '$2y$10$RJScROvNO2rH4quwEJKhuODgxix8.eTkgC94fHBBgDJtnRhP.Zdd.', NULL, 1, 1, NULL, NULL, '2020-01-16 17:42:28', '2020-01-17 17:57:25', 1, 1, 1, 3),
(535, 'Ibrahim Anwar', 'haseebanwar022@gmail.com', 'haseebanwar022@gmail.com', '$2y$10$3Xx40KVJGrHk9WcBZOVCPuBQtpbA1RCTAqNa3YXsA3DjmR/Wq0By.', NULL, 1, 1, NULL, NULL, '2020-01-13 23:03:12', '2020-01-13 23:03:12', 1, 1, 1, 6),
(533, NULL, 'fahadfather@ivylabtech.com', 'fahadfather@ivylabtech.com', '$2y$10$0G.hbD1bBQ0T1LjyR8KfCe1TOTcqufnG8CVeexyIEpWdh/dXeBWau', NULL, 1, 1, NULL, 'IhhLFvDQNuy1pqfsR6qN4sLumUsoH4hFd1cJPyWiYdAzcDC2XUvszAIc0zp6', '2020-01-07 19:46:45', '2020-01-07 19:46:45', 1, 1, 1, 3),
(534, 'Haseeb Anwar', 'haseeb.anwar@ivylabtech.com', 'haseeb.anwar@ivylabtech.com', '$2y$10$XI97o2icmtK4eRzNRr.8w.AhbyI0rd6gAaKQUi/KO7VmMxE/AeC7G', NULL, 1, 1, NULL, 'HqxBR0wztQXVy4dhMsXVes2iJeppLpMCgxnqO5y2ON0D9z2o1cChQt71lVsa', '2020-01-13 23:00:30', '2020-01-13 23:00:30', 1, 1, 1, 4),
(532, 'FAHAD ', 'fahad@ivylabtech.com', 'fahad@ivylabtech.com', '$2y$10$ED3iomGM5mnKVBbHzZsfA.l2K8NhA/02hsX0dVwvsPw.7aetmFRE2', NULL, 1, 1, NULL, NULL, '2020-01-07 19:46:45', '2020-01-07 19:46:45', 1, 1, 1, 2),
(530, 'Haseeb Anwar', 'student@gmail.com', 'student@gmail.com', '$2y$10$7yXgMhxkp0RfmR4GkpCbnegkLbczfq5RlfpglXGTeqm5ZdTJFzFQ2', NULL, 1, 1, NULL, 'iOfzIxTJi1aMn8o998Vy3Lfh41M0JuoccLGyDiVw8MtCmeqf3LgrKH3ve0gc', '2020-01-07 19:33:27', '2020-01-07 19:33:27', 1, 1, 1, 2),
(531, NULL, 'father@gmail.com', 'father@gmail.com', '$2y$10$f3kS4rzLQlHaV05t8nHrNeAj9W8GjGmLbUBz2X7eC9JyYLs/uxtmm', NULL, 1, 1, NULL, 'LVBDqiQGBcZTS6FEQ8ExuXxeTWl95r7j0IyDX1Hw6FZH9Sne3kx6p3uJJIAT', '2020-01-07 19:33:27', '2020-01-07 19:33:27', 1, 1, 1, 3),
(529, 'M Anwar', 'haseebanwar010@gmail.com', 'haseebanwar010@gmail.com', '$2y$10$hNxApoY8VK9x1Td.AzYqa.Jv9SpWRhLXOm1Mv17qjrZhJ7eLi6eUe', NULL, 1, 1, NULL, 'NlqGWGl7pDGDn2HOhelQouBmltdaGOTiZveqDc2pFK6TKsyZJnJkNAKU4s7x', '2020-01-07 17:30:01', '2020-01-07 19:13:35', 1, 1, 1, 3),
(528, 'Haseeb Anwar', 's_8', 'hssy@gmail.com', '$2y$10$WyJ7W7Z0CPPrfxZYvjs6ke9TtbAMCs8f18THNMrKn/7sGTDKo36Zm', NULL, 1, 1, NULL, 'wjzuwkp41NNOTbMSdDiwiVrY431t1s5jFLIms0FVE8QqNWVW2YfvvbRHci5d', '2020-01-07 17:30:01', '2020-01-07 19:13:34', 1, 1, 1, 2),
(526, 'AZMAT', 'azmat@ivylabtech.com', 'azmat@ivylabtech.com', '$2y$10$dQUn8Qs3xZoXar.k2I08seVTwCtnXBxJhyvwHE8.GASNcj2cVYt5.', NULL, 1, 1, NULL, 'sWHl54pZT66OzeqW24byoVgQKdzwNjdQuMSLvtoScbauk0zFdyrMey2nM7a2', '2020-01-02 16:48:26', '2020-01-06 17:23:16', 1, 1, 1, 3),
(527, 'BILAL YASIR', 'bilalyasir@ivylabtech.com', 'bilalyasir@ivylabtech.com', '$2y$10$5mvkwmUq1aNSOlKg65BoauLa74WMGbuO66hTmxQ8IeRQW5dO6wk5K', NULL, 1, 1, NULL, 'Yqq0um2Iu2BkH6FFFURadqX3rU3rnomKMikG0h6GghHuAnNL9eC2jQirIx2C', '2020-01-02 16:58:16', '2020-01-02 16:58:16', 1, 1, 1, 4),
(525, 'FARAN AZMAT', 's_7', 'faranazmat@ivylabtech.com', '$2y$10$B5XUXBKHY2/OLcwoXv0Y7OZFaqCoO8weLe8dUrQY5xtIFVCW3/pzS', NULL, 1, 1, NULL, '3EoOAcxADOdOKRmUUE4wrnhO9rxmrl3UMDoPJLztS1yHzzW02ZcJ3cqJMjlj', '2020-01-02 16:48:26', '2020-01-06 17:23:16', 1, 1, 1, 2),
(524, 'M Anwar', 'guardian@gmail.com', 'guardian@gmail.com', '$2y$10$kRfhEf0uAo0QTu3FXRhnMu6iQ4/S7X7RUESS3X2duWKIzSE0B2UGG', NULL, 1, 1, NULL, 'hTQ7ryL6hmj5RZ4AjBjHUU8xM1m0iakTXGPk3FrxzWexeby12tA9MwkVxok2', '2020-01-01 19:13:04', '2020-01-01 19:13:04', 1, 1, 1, 3),
(523, 'Haseeb Anwar', 'haseebanwar010@gmail.com', 'haseebanwar010@gmail.com', '$2y$10$cb3W6iC6QfH1B7Y2UYirDOGSiXM315k4LZ2N5bgXeWdSWYrYPwJle', NULL, 1, 1, NULL, '9dPUGek5ZvcfvSOenmi4XwPkZBpAsuUhrL5DCYVbxstydL614exJBbqrMw1Y', '2020-01-01 19:13:04', '2020-01-01 19:13:04', 1, 1, 1, 2),
(521, 'NASIR KHAN', 'nasir@ivylabtech.com', 'nasir@ivylabtech.com', '$2y$10$.2J4hNzkpqzMPJ/lc2m9QOYZAjYm.NGhJmvxn5bGbhtDTE1qbVmaG', NULL, 1, 0, NULL, 'f4Ik7weMEvWN1zNm8jNJ3o27vi2P4Db7dTnqSieMnatcGDXxYTiZQWYSaGd3', '2019-12-30 16:49:35', '2020-01-03 15:42:18', 1, 1, 1, 4),
(522, 'Asim Azhar', 'asim@ivylabtech.com', 'asim@ivylabtech.com', '$2y$10$3P03ydmOkQL1GeTbBMXzK.vHcqAN8Eb/I28Qvoj36A.k.eKOKRZVy', NULL, 1, 0, NULL, NULL, '2019-12-30 21:50:10', '2020-01-02 16:01:19', 1, 1, 1, 4),
(519, 'Naeem Ameen', 's_5', 'haseeb.anwar022@gmail.com', '$2y$10$JESPEfKXnrS5/H7.xbNRru7edrOhtBELK4EgX6hKlB.DJAnzV0mB.', NULL, 1, 1, NULL, 'SQLFVrFGd0sVr8XEtJts53aXwKVrB0h85AahrAdRJsmTXZ8Gk3R2iY2zZbFx', '2019-12-27 18:14:44', '2019-12-28 00:18:51', 1, 1, 1, 2),
(520, NULL, 'ohyeah@gmail.com', 'ohyeah@gmail.com', '$2y$10$FqN5pxzfAKTckyfdt/Q.QO2Ye8hzOdJCTN5D3cnJnVqLZI8fM/vkC', NULL, 1, 1, NULL, 'MG9ACWBHStfMwacl1SCixda7Cc0zvzFuXPkOD2ndKlGZippYl1p4NehEsfoL', '2019-12-27 18:14:44', '2019-12-28 00:18:51', 1, 1, 1, 3),
(517, 'ALI KHAN', 's_4', 'ALI@GMAIL.COM', '$2y$10$NL9ny.c0YNtgMJTfEDchfOPAg5jnU.Sz70L3WNJtW0VMyD8sE9omu', NULL, 1, 1, NULL, 'Jee2uoQI0dZqukjbGxZsHonA0YZrVV4CME87UlzYsIfZoquDZ2dcdDWCFSWp', '2019-12-26 17:08:40', '2019-12-26 17:13:07', 1, 1, 1, 2),
(518, 'AMIR', 'AMIR@GMAIL.COM', 'AMIR@GMAIL.COM', '$2y$10$UZBbk9jliw9Iy/Qr7ENQiuKYBFwqqUmjYHOv1v4wX04mpvQuobuVe', NULL, 1, 1, NULL, NULL, '2019-12-26 17:08:40', '2019-12-26 17:13:07', 1, 1, 1, 3),
(515, 'asdasdf', 'bilal.yasir@gmail.com', 'bilal.yasir@gmail.com', '$2y$10$pmpD0WMkvjK5FxBV4c8P/unfQKnp1vcRsMUNg7GAFc1JYSS9mjofW', NULL, 1, 1, NULL, NULL, '2019-12-24 23:28:41', '2019-12-24 23:28:41', 1, 1, 1, 3),
(516, 'Imran Khan', 'admin@ivylabtech.com', 'admin@ivylabtech.com', '$2y$10$qjnullsYK3HTqIoxsQffI.p05Vr1JsKxLWcooTpC2E8RnWBUEax4O', NULL, 1, 0, NULL, NULL, '2019-12-26 16:23:29', '2020-01-02 16:01:50', 1, 1, 1, 4),
(514, 'sadf sgsdfg', 'ISP-3', 'ISP-3', '$2y$10$/nz.UWCifFMZ/X1.6Jkx8.zyKlLt8557ZtHB1HJhra.WNX5v3n/oe', NULL, 1, 1, NULL, NULL, '2019-12-24 23:28:41', '2019-12-24 23:28:41', 1, 1, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `continents_school_id_foreign` (`school_id`);

--
-- Indexes for table `continets`
--
ALTER TABLE `continets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `continets_created_by_foreign` (`created_by`),
  ADD KEY `continets_updated_by_foreign` (`updated_by`),
  ADD KEY `continets_school_id_foreign` (`school_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_school_id_foreign` (`school_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_school_id_foreign` (`school_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_about_pages`
--
ALTER TABLE `sm_about_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_about_pages_created_by_foreign` (`created_by`),
  ADD KEY `sm_about_pages_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_about_pages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_academic_years`
--
ALTER TABLE `sm_academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_academic_years_created_by_foreign` (`created_by`),
  ADD KEY `sm_academic_years_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_academic_years_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_add_expenses`
--
ALTER TABLE `sm_add_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_add_expenses_expense_head_id_foreign` (`expense_head_id`),
  ADD KEY `sm_add_expenses_account_id_foreign` (`account_id`),
  ADD KEY `sm_add_expenses_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `sm_add_expenses_created_by_foreign` (`created_by`),
  ADD KEY `sm_add_expenses_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_add_expenses_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_add_incomes`
--
ALTER TABLE `sm_add_incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_add_incomes_income_head_id_foreign` (`income_head_id`),
  ADD KEY `sm_add_incomes_account_id_foreign` (`account_id`),
  ADD KEY `sm_add_incomes_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `sm_add_incomes_created_by_foreign` (`created_by`),
  ADD KEY `sm_add_incomes_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_add_incomes_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_admission_queries`
--
ALTER TABLE `sm_admission_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_admission_queries_class_foreign` (`class`),
  ADD KEY `sm_admission_queries_created_by_foreign` (`created_by`),
  ADD KEY `sm_admission_queries_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_admission_queries_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_admission_query_followups`
--
ALTER TABLE `sm_admission_query_followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_admission_query_followups_admission_query_id_foreign` (`admission_query_id`),
  ADD KEY `sm_admission_query_followups_created_by_foreign` (`created_by`),
  ADD KEY `sm_admission_query_followups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_admission_query_followups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_assign_class_teachers`
--
ALTER TABLE `sm_assign_class_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_assign_class_teachers_class_id_foreign` (`class_id`),
  ADD KEY `sm_assign_class_teachers_section_id_foreign` (`section_id`),
  ADD KEY `sm_assign_class_teachers_created_by_foreign` (`created_by`),
  ADD KEY `sm_assign_class_teachers_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_assign_class_teachers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_assign_subjects`
--
ALTER TABLE `sm_assign_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_assign_subjects_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sm_assign_subjects_class_id_foreign` (`class_id`),
  ADD KEY `sm_assign_subjects_section_id_foreign` (`section_id`),
  ADD KEY `sm_assign_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_assign_subjects_created_by_foreign` (`created_by`),
  ADD KEY `sm_assign_subjects_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_assign_subjects_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_assign_vehicles`
--
ALTER TABLE `sm_assign_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_assign_vehicles_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `sm_assign_vehicles_route_id_foreign` (`route_id`),
  ADD KEY `sm_assign_vehicles_created_by_foreign` (`created_by`),
  ADD KEY `sm_assign_vehicles_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_assign_vehicles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_background_settings`
--
ALTER TABLE `sm_background_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_backups`
--
ALTER TABLE `sm_backups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_backups_created_by_foreign` (`created_by`),
  ADD KEY `sm_backups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_backups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_bank_accounts`
--
ALTER TABLE `sm_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_bank_accounts_created_by_foreign` (`created_by`),
  ADD KEY `sm_bank_accounts_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_bank_accounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_base_groups`
--
ALTER TABLE `sm_base_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_base_groups_created_by_foreign` (`created_by`),
  ADD KEY `sm_base_groups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_base_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_base_setups`
--
ALTER TABLE `sm_base_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_base_setups_created_by_foreign` (`created_by`),
  ADD KEY `sm_base_setups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_base_setups_base_group_id_foreign` (`base_group_id`),
  ADD KEY `sm_base_setups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_books`
--
ALTER TABLE `sm_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_books_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_books_book_category_id_foreign` (`book_category_id`),
  ADD KEY `sm_books_created_by_foreign` (`created_by`),
  ADD KEY `sm_books_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_books_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_book_categories`
--
ALTER TABLE `sm_book_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_book_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_book_issues`
--
ALTER TABLE `sm_book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_book_issues_book_id_foreign` (`book_id`),
  ADD KEY `sm_book_issues_member_id_foreign` (`member_id`),
  ADD KEY `sm_book_issues_created_by_foreign` (`created_by`),
  ADD KEY `sm_book_issues_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_book_issues_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_chart_of_accounts`
--
ALTER TABLE `sm_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_chart_of_accounts_created_by_foreign` (`created_by`),
  ADD KEY `sm_chart_of_accounts_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_chart_of_accounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_classes`
--
ALTER TABLE `sm_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_classes_created_by_foreign` (`created_by`),
  ADD KEY `sm_classes_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_classes_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_rooms`
--
ALTER TABLE `sm_class_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_rooms_created_by_foreign` (`created_by`),
  ADD KEY `sm_class_rooms_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_class_rooms_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_routines`
--
ALTER TABLE `sm_class_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_routines_class_id_foreign` (`class_id`),
  ADD KEY `sm_class_routines_section_id_foreign` (`section_id`),
  ADD KEY `sm_class_routines_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_class_routines_created_by_foreign` (`created_by`),
  ADD KEY `sm_class_routines_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_class_routines_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_routine_updates`
--
ALTER TABLE `sm_class_routine_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_routine_updates_room_id_foreign` (`room_id`),
  ADD KEY `sm_class_routine_updates_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sm_class_routine_updates_class_period_id_foreign` (`class_period_id`),
  ADD KEY `sm_class_routine_updates_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_class_routine_updates_class_id_foreign` (`class_id`),
  ADD KEY `sm_class_routine_updates_section_id_foreign` (`section_id`),
  ADD KEY `sm_class_routine_updates_created_by_foreign` (`created_by`),
  ADD KEY `sm_class_routine_updates_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_class_routine_updates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_sections`
--
ALTER TABLE `sm_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_sections_class_id_foreign` (`class_id`),
  ADD KEY `sm_class_sections_section_id_foreign` (`section_id`),
  ADD KEY `sm_class_sections_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_teachers`
--
ALTER TABLE `sm_class_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_teachers_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sm_class_teachers_assign_class_teacher_id_foreign` (`assign_class_teacher_id`),
  ADD KEY `sm_class_teachers_created_by_foreign` (`created_by`),
  ADD KEY `sm_class_teachers_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_class_teachers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_times`
--
ALTER TABLE `sm_class_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_times_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_complaints`
--
ALTER TABLE `sm_complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_complaints_created_by_foreign` (`created_by`),
  ADD KEY `sm_complaints_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_complaints_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_contact_messages`
--
ALTER TABLE `sm_contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_contact_messages_created_by_foreign` (`created_by`),
  ADD KEY `sm_contact_messages_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_contact_messages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_contact_pages`
--
ALTER TABLE `sm_contact_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_contact_pages_created_by_foreign` (`created_by`),
  ADD KEY `sm_contact_pages_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_contact_pages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_content_types`
--
ALTER TABLE `sm_content_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_content_types_created_by_foreign` (`created_by`),
  ADD KEY `sm_content_types_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_content_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_countries`
--
ALTER TABLE `sm_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_countries_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_courses`
--
ALTER TABLE `sm_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_courses_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_currencies`
--
ALTER TABLE `sm_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_currencies_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_custom_links`
--
ALTER TABLE `sm_custom_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_dashboard_settings`
--
ALTER TABLE `sm_dashboard_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_dashboard_settings_role_id_foreign` (`role_id`),
  ADD KEY `sm_dashboard_settings_created_by_foreign` (`created_by`),
  ADD KEY `sm_dashboard_settings_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_dashboard_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_date_formats`
--
ALTER TABLE `sm_date_formats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_date_formats_created_by_foreign` (`created_by`),
  ADD KEY `sm_date_formats_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_date_formats_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_designations`
--
ALTER TABLE `sm_designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_designations_created_by_foreign` (`created_by`),
  ADD KEY `sm_designations_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_designations_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_dormitory_lists`
--
ALTER TABLE `sm_dormitory_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_dormitory_lists_created_by_foreign` (`created_by`),
  ADD KEY `sm_dormitory_lists_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_dormitory_lists_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_email_settings`
--
ALTER TABLE `sm_email_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_email_settings_created_by_foreign` (`created_by`),
  ADD KEY `sm_email_settings_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_email_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_email_sms_logs`
--
ALTER TABLE `sm_email_sms_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_email_sms_logs_created_by_foreign` (`created_by`),
  ADD KEY `sm_email_sms_logs_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_email_sms_logs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_events`
--
ALTER TABLE `sm_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_events_created_by_foreign` (`created_by`),
  ADD KEY `sm_events_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_events_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exams`
--
ALTER TABLE `sm_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exams_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `sm_exams_class_id_foreign` (`class_id`),
  ADD KEY `sm_exams_section_id_foreign` (`section_id`),
  ADD KEY `sm_exams_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exams_created_by_foreign` (`created_by`),
  ADD KEY `sm_exams_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exams_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_attendances`
--
ALTER TABLE `sm_exam_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_attendances_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_attendances_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_attendances_class_id_foreign` (`class_id`),
  ADD KEY `sm_exam_attendances_section_id_foreign` (`section_id`),
  ADD KEY `sm_exam_attendances_created_by_foreign` (`created_by`),
  ADD KEY `sm_exam_attendances_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exam_attendances_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_attendance_children`
--
ALTER TABLE `sm_exam_attendance_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_attendance_children_exam_attendance_id_foreign` (`exam_attendance_id`),
  ADD KEY `sm_exam_attendance_children_student_id_foreign` (`student_id`),
  ADD KEY `sm_exam_attendance_children_created_by_foreign` (`created_by`),
  ADD KEY `sm_exam_attendance_children_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exam_attendance_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_marks_registers`
--
ALTER TABLE `sm_exam_marks_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_marks_registers_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_marks_registers_student_id_foreign` (`student_id`),
  ADD KEY `sm_exam_marks_registers_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_marks_registers_created_by_foreign` (`created_by`),
  ADD KEY `sm_exam_marks_registers_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exam_marks_registers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_schedules`
--
ALTER TABLE `sm_exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_schedules_exam_period_id_foreign` (`exam_period_id`),
  ADD KEY `sm_exam_schedules_room_id_foreign` (`room_id`),
  ADD KEY `sm_exam_schedules_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_schedules_exam_term_id_foreign` (`exam_term_id`),
  ADD KEY `sm_exam_schedules_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_schedules_class_id_foreign` (`class_id`),
  ADD KEY `sm_exam_schedules_section_id_foreign` (`section_id`),
  ADD KEY `sm_exam_schedules_created_by_foreign` (`created_by`),
  ADD KEY `sm_exam_schedules_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exam_schedules_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_schedule_subjects`
--
ALTER TABLE `sm_exam_schedule_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_schedule_subjects_exam_schedule_id_foreign` (`exam_schedule_id`),
  ADD KEY `sm_exam_schedule_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_schedule_subjects_created_by_foreign` (`created_by`),
  ADD KEY `sm_exam_schedule_subjects_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exam_schedule_subjects_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_setups`
--
ALTER TABLE `sm_exam_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_setups_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_setups_class_id_foreign` (`class_id`),
  ADD KEY `sm_exam_setups_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_setups_section_id_foreign` (`section_id`),
  ADD KEY `sm_exam_setups_exam_term_id_foreign` (`exam_term_id`),
  ADD KEY `sm_exam_setups_created_by_foreign` (`created_by`),
  ADD KEY `sm_exam_setups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exam_setups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_types`
--
ALTER TABLE `sm_exam_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_types_created_by_foreign` (`created_by`),
  ADD KEY `sm_exam_types_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_exam_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_expense_heads`
--
ALTER TABLE `sm_expense_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_expense_heads_created_by_foreign` (`created_by`),
  ADD KEY `sm_expense_heads_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_expense_heads_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_assigns`
--
ALTER TABLE `sm_fees_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_assigns_fees_master_id_foreign` (`fees_master_id`),
  ADD KEY `sm_fees_assigns_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_assigns_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_assigns_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_assigns_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_assign_discounts`
--
ALTER TABLE `sm_fees_assign_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_assign_discounts_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_assign_discounts_fees_discount_id_foreign` (`fees_discount_id`),
  ADD KEY `sm_fees_assign_discounts_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_assign_discounts_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_assign_discounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_carry_forwards`
--
ALTER TABLE `sm_fees_carry_forwards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_carry_forwards_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_carry_forwards_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_carry_forwards_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_carry_forwards_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_discounts`
--
ALTER TABLE `sm_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_discounts_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_discounts_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_discounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_groups`
--
ALTER TABLE `sm_fees_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_groups_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_groups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_masters`
--
ALTER TABLE `sm_fees_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_masters_fees_group_id_foreign` (`fees_group_id`),
  ADD KEY `sm_fees_masters_fees_type_id_foreign` (`fees_type_id`),
  ADD KEY `sm_fees_masters_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_masters_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_masters_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_payments`
--
ALTER TABLE `sm_fees_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_payments_fees_discount_id_foreign` (`fees_discount_id`),
  ADD KEY `sm_fees_payments_fees_type_id_foreign` (`fees_type_id`),
  ADD KEY `sm_fees_payments_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_payments_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_payments_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_payments_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_types`
--
ALTER TABLE `sm_fees_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_types_created_by_foreign` (`created_by`),
  ADD KEY `sm_fees_types_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_fees_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_frontend_persmissions`
--
ALTER TABLE `sm_frontend_persmissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_general_settings`
--
ALTER TABLE `sm_general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_general_settings_session_id_foreign` (`session_id`),
  ADD KEY `sm_general_settings_language_id_foreign` (`language_id`),
  ADD KEY `sm_general_settings_date_format_id_foreign` (`date_format_id`),
  ADD KEY `sm_general_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_holidays`
--
ALTER TABLE `sm_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_holidays_created_by_foreign` (`created_by`),
  ADD KEY `sm_holidays_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_holidays_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_homeworks`
--
ALTER TABLE `sm_homeworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_homeworks_evaluated_by_foreign` (`evaluated_by`),
  ADD KEY `sm_homeworks_class_id_foreign` (`class_id`),
  ADD KEY `sm_homeworks_section_id_foreign` (`section_id`),
  ADD KEY `sm_homeworks_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_homeworks_created_by_foreign` (`created_by`),
  ADD KEY `sm_homeworks_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_homeworks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_homework_students`
--
ALTER TABLE `sm_homework_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_homework_students_student_id_foreign` (`student_id`),
  ADD KEY `sm_homework_students_homework_id_foreign` (`homework_id`),
  ADD KEY `sm_homework_students_created_by_foreign` (`created_by`),
  ADD KEY `sm_homework_students_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_homework_students_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_home_page_settings`
--
ALTER TABLE `sm_home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_hourly_rates`
--
ALTER TABLE `sm_hourly_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hourly_rates_created_by_foreign` (`created_by`),
  ADD KEY `sm_hourly_rates_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_hourly_rates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_hr_payroll_earn_deducs`
--
ALTER TABLE `sm_hr_payroll_earn_deducs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hr_payroll_earn_deducs_payroll_generate_id_foreign` (`payroll_generate_id`),
  ADD KEY `sm_hr_payroll_earn_deducs_created_by_foreign` (`created_by`),
  ADD KEY `sm_hr_payroll_earn_deducs_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_hr_payroll_earn_deducs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_hr_payroll_generates`
--
ALTER TABLE `sm_hr_payroll_generates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hr_payroll_generates_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_hr_payroll_generates_created_by_foreign` (`created_by`),
  ADD KEY `sm_hr_payroll_generates_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_hr_payroll_generates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_hr_salary_templates`
--
ALTER TABLE `sm_hr_salary_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hr_salary_templates_created_by_foreign` (`created_by`),
  ADD KEY `sm_hr_salary_templates_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_hr_salary_templates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_human_departments`
--
ALTER TABLE `sm_human_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_human_departments_created_by_foreign` (`created_by`),
  ADD KEY `sm_human_departments_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_human_departments_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_income_heads`
--
ALTER TABLE `sm_income_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_income_heads_created_by_foreign` (`created_by`),
  ADD KEY `sm_income_heads_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_income_heads_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_instructions`
--
ALTER TABLE `sm_instructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_instructions_created_by_foreign` (`created_by`),
  ADD KEY `sm_instructions_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_instructions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_inventory_payments`
--
ALTER TABLE `sm_inventory_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_inventory_payments_created_by_foreign` (`created_by`),
  ADD KEY `sm_inventory_payments_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_inventory_payments_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_items`
--
ALTER TABLE `sm_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_items_category_name_foreign` (`category_name`),
  ADD KEY `sm_items_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_categories`
--
ALTER TABLE `sm_item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_issues`
--
ALTER TABLE `sm_item_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_issues_role_id_foreign` (`role_id`),
  ADD KEY `sm_item_issues_item_category_id_foreign` (`item_category_id`),
  ADD KEY `sm_item_issues_item_id_foreign` (`item_id`),
  ADD KEY `sm_item_issues_created_by_foreign` (`created_by`),
  ADD KEY `sm_item_issues_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_item_issues_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_receives`
--
ALTER TABLE `sm_item_receives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_receives_supplier_id_foreign` (`supplier_id`),
  ADD KEY `sm_item_receives_store_id_foreign` (`store_id`),
  ADD KEY `sm_item_receives_created_by_foreign` (`created_by`),
  ADD KEY `sm_item_receives_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_item_receives_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_receive_children`
--
ALTER TABLE `sm_item_receive_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_receive_children_item_id_foreign` (`item_id`),
  ADD KEY `sm_item_receive_children_item_receive_id_foreign` (`item_receive_id`),
  ADD KEY `sm_item_receive_children_created_by_foreign` (`created_by`),
  ADD KEY `sm_item_receive_children_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_item_receive_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_sells`
--
ALTER TABLE `sm_item_sells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_sells_role_id_foreign` (`role_id`),
  ADD KEY `sm_item_sells_created_by_foreign` (`created_by`),
  ADD KEY `sm_item_sells_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_item_sells_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_sell_children`
--
ALTER TABLE `sm_item_sell_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_sell_children_item_sell_id_foreign` (`item_sell_id`),
  ADD KEY `sm_item_sell_children_item_id_foreign` (`item_id`),
  ADD KEY `sm_item_sell_children_created_by_foreign` (`created_by`),
  ADD KEY `sm_item_sell_children_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_item_sell_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_stores`
--
ALTER TABLE `sm_item_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_stores_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_languages`
--
ALTER TABLE `sm_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_languages_lang_id_foreign` (`lang_id`),
  ADD KEY `sm_languages_created_by_foreign` (`created_by`),
  ADD KEY `sm_languages_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_languages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_language_phrases`
--
ALTER TABLE `sm_language_phrases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_leave_defines`
--
ALTER TABLE `sm_leave_defines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_leave_defines_role_id_foreign` (`role_id`),
  ADD KEY `sm_leave_defines_type_id_foreign` (`type_id`),
  ADD KEY `sm_leave_defines_created_by_foreign` (`created_by`),
  ADD KEY `sm_leave_defines_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_leave_defines_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_leave_requests`
--
ALTER TABLE `sm_leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_leave_requests_leave_define_id_foreign` (`leave_define_id`),
  ADD KEY `sm_leave_requests_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_leave_requests_role_id_foreign` (`role_id`),
  ADD KEY `sm_leave_requests_type_id_foreign` (`type_id`),
  ADD KEY `sm_leave_requests_created_by_foreign` (`created_by`),
  ADD KEY `sm_leave_requests_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_leave_requests_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_leave_types`
--
ALTER TABLE `sm_leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_leave_types_created_by_foreign` (`created_by`),
  ADD KEY `sm_leave_types_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_leave_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_library_members`
--
ALTER TABLE `sm_library_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_library_members_member_type_foreign` (`member_type`),
  ADD KEY `sm_library_members_student_staff_id_foreign` (`student_staff_id`),
  ADD KEY `sm_library_members_created_by_foreign` (`created_by`),
  ADD KEY `sm_library_members_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_library_members_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_grades`
--
ALTER TABLE `sm_marks_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_grades_created_by_foreign` (`created_by`),
  ADD KEY `sm_marks_grades_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_marks_grades_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_registers`
--
ALTER TABLE `sm_marks_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_registers_student_id_foreign` (`student_id`),
  ADD KEY `sm_marks_registers_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_marks_registers_class_id_foreign` (`class_id`),
  ADD KEY `sm_marks_registers_section_id_foreign` (`section_id`),
  ADD KEY `sm_marks_registers_created_by_foreign` (`created_by`),
  ADD KEY `sm_marks_registers_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_marks_registers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_register_children`
--
ALTER TABLE `sm_marks_register_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_register_children_marks_register_id_foreign` (`marks_register_id`),
  ADD KEY `sm_marks_register_children_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_marks_register_children_created_by_foreign` (`created_by`),
  ADD KEY `sm_marks_register_children_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_marks_register_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_send_sms`
--
ALTER TABLE `sm_marks_send_sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_send_sms_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_marks_send_sms_student_id_foreign` (`student_id`),
  ADD KEY `sm_marks_send_sms_created_by_foreign` (`created_by`),
  ADD KEY `sm_marks_send_sms_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_marks_send_sms_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_mark_stores`
--
ALTER TABLE `sm_mark_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_mark_stores_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_mark_stores_exam_term_id_foreign` (`exam_term_id`),
  ADD KEY `sm_mark_stores_exam_setup_id_foreign` (`exam_setup_id`),
  ADD KEY `sm_mark_stores_student_id_foreign` (`student_id`),
  ADD KEY `sm_mark_stores_class_id_foreign` (`class_id`),
  ADD KEY `sm_mark_stores_section_id_foreign` (`section_id`),
  ADD KEY `sm_mark_stores_created_by_foreign` (`created_by`),
  ADD KEY `sm_mark_stores_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_mark_stores_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_modules`
--
ALTER TABLE `sm_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_modules_created_by_foreign` (`created_by`),
  ADD KEY `sm_modules_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_modules_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_module_links`
--
ALTER TABLE `sm_module_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_module_links_module_id_foreign` (`module_id`),
  ADD KEY `sm_module_links_created_by_foreign` (`created_by`),
  ADD KEY `sm_module_links_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_module_links_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_module_permissions`
--
ALTER TABLE `sm_module_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_module_permissions_created_by_foreign` (`created_by`),
  ADD KEY `sm_module_permissions_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_module_permissions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_module_permission_assigns`
--
ALTER TABLE `sm_module_permission_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_module_permission_assigns_module_id_foreign` (`module_id`),
  ADD KEY `sm_module_permission_assigns_role_id_foreign` (`role_id`),
  ADD KEY `sm_module_permission_assigns_created_by_foreign` (`created_by`),
  ADD KEY `sm_module_permission_assigns_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_module_permission_assigns_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_news`
--
ALTER TABLE `sm_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_news_category_id_foreign` (`category_id`),
  ADD KEY `sm_news_created_by_foreign` (`created_by`),
  ADD KEY `sm_news_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_news_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_news_categories`
--
ALTER TABLE `sm_news_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_news_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_notice_boards`
--
ALTER TABLE `sm_notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_notice_boards_created_by_foreign` (`created_by`),
  ADD KEY `sm_notice_boards_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_notice_boards_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_notifications`
--
ALTER TABLE `sm_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_notifications_user_id_foreign` (`user_id`),
  ADD KEY `sm_notifications_role_id_foreign` (`role_id`),
  ADD KEY `sm_notifications_created_by_foreign` (`created_by`),
  ADD KEY `sm_notifications_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_notifications_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exams`
--
ALTER TABLE `sm_online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exams_class_id_foreign` (`class_id`),
  ADD KEY `sm_online_exams_section_id_foreign` (`section_id`),
  ADD KEY `sm_online_exams_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_online_exams_created_by_foreign` (`created_by`),
  ADD KEY `sm_online_exams_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_online_exams_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_marks`
--
ALTER TABLE `sm_online_exam_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exam_marks_student_id_foreign` (`student_id`),
  ADD KEY `sm_online_exam_marks_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_online_exam_marks_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_online_exam_marks_created_by_foreign` (`created_by`),
  ADD KEY `sm_online_exam_marks_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_online_exam_marks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_questions`
--
ALTER TABLE `sm_online_exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exam_questions_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `sm_online_exam_questions_created_by_foreign` (`created_by`),
  ADD KEY `sm_online_exam_questions_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_online_exam_questions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_question_assigns`
--
ALTER TABLE `sm_online_exam_question_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exam_question_assigns_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `sm_online_exam_question_assigns_question_bank_id_foreign` (`question_bank_id`),
  ADD KEY `sm_online_exam_question_assigns_created_by_foreign` (`created_by`),
  ADD KEY `sm_online_exam_question_assigns_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_online_exam_question_assigns_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_question_mu_options`
--
ALTER TABLE `sm_online_exam_question_mu_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `on_ex_qu_id` (`online_exam_question_id`),
  ADD KEY `sm_online_exam_question_mu_options_created_by_foreign` (`created_by`),
  ADD KEY `sm_online_exam_question_mu_options_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_online_exam_question_mu_options_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_parents`
--
ALTER TABLE `sm_parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_parents_user_id_foreign` (`user_id`),
  ADD KEY `sm_parents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_payment_gateway_settings`
--
ALTER TABLE `sm_payment_gateway_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_payment_gateway_settings_created_by_foreign` (`created_by`),
  ADD KEY `sm_payment_gateway_settings_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_payment_gateway_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_payment_methhods`
--
ALTER TABLE `sm_payment_methhods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_payment_methhods_gateway_id_foreign` (`gateway_id`),
  ADD KEY `sm_payment_methhods_created_by_foreign` (`created_by`),
  ADD KEY `sm_payment_methhods_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_payment_methhods_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_phone_call_logs`
--
ALTER TABLE `sm_phone_call_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_phone_call_logs_created_by_foreign` (`created_by`),
  ADD KEY `sm_phone_call_logs_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_phone_call_logs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_postal_dispatches`
--
ALTER TABLE `sm_postal_dispatches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_postal_dispatches_created_by_foreign` (`created_by`),
  ADD KEY `sm_postal_dispatches_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_postal_dispatches_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_postal_receives`
--
ALTER TABLE `sm_postal_receives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_postal_receives_created_by_foreign` (`created_by`),
  ADD KEY `sm_postal_receives_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_postal_receives_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_product_purchases`
--
ALTER TABLE `sm_product_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_product_purchases_user_id_foreign` (`user_id`),
  ADD KEY `sm_product_purchases_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_product_purchases_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_banks`
--
ALTER TABLE `sm_question_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_banks_q_group_id_foreign` (`q_group_id`),
  ADD KEY `sm_question_banks_class_id_foreign` (`class_id`),
  ADD KEY `sm_question_banks_section_id_foreign` (`section_id`),
  ADD KEY `sm_question_banks_created_by_foreign` (`created_by`),
  ADD KEY `sm_question_banks_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_question_banks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_bank_mu_options`
--
ALTER TABLE `sm_question_bank_mu_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_bank_mu_options_question_bank_id_foreign` (`question_bank_id`),
  ADD KEY `sm_question_bank_mu_options_created_by_foreign` (`created_by`),
  ADD KEY `sm_question_bank_mu_options_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_question_bank_mu_options_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_groups`
--
ALTER TABLE `sm_question_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_groups_created_by_foreign` (`created_by`),
  ADD KEY `sm_question_groups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_question_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_levels`
--
ALTER TABLE `sm_question_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_levels_created_by_foreign` (`created_by`),
  ADD KEY `sm_question_levels_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_question_levels_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_result_stores`
--
ALTER TABLE `sm_result_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_result_stores_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `sm_result_stores_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_result_stores_exam_setup_id_foreign` (`exam_setup_id`),
  ADD KEY `sm_result_stores_student_id_foreign` (`student_id`),
  ADD KEY `sm_result_stores_class_id_foreign` (`class_id`),
  ADD KEY `sm_result_stores_section_id_foreign` (`section_id`),
  ADD KEY `sm_result_stores_created_by_foreign` (`created_by`),
  ADD KEY `sm_result_stores_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_result_stores_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_role_permissions`
--
ALTER TABLE `sm_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_role_permissions_module_link_id_foreign` (`module_link_id`),
  ADD KEY `sm_role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `sm_role_permissions_created_by_foreign` (`created_by`),
  ADD KEY `sm_role_permissions_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_role_permissions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_room_lists`
--
ALTER TABLE `sm_room_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_room_lists_dormitory_id_foreign` (`dormitory_id`),
  ADD KEY `sm_room_lists_room_type_id_foreign` (`room_type_id`),
  ADD KEY `sm_room_lists_created_by_foreign` (`created_by`),
  ADD KEY `sm_room_lists_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_room_lists_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_room_types`
--
ALTER TABLE `sm_room_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_room_types_created_by_foreign` (`created_by`),
  ADD KEY `sm_room_types_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_room_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_routes`
--
ALTER TABLE `sm_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_routes_created_by_foreign` (`created_by`),
  ADD KEY `sm_routes_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_routes_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_schools`
--
ALTER TABLE `sm_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_seat_plans`
--
ALTER TABLE `sm_seat_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_seat_plans_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_seat_plans_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_seat_plans_class_id_foreign` (`class_id`),
  ADD KEY `sm_seat_plans_section_id_foreign` (`section_id`),
  ADD KEY `sm_seat_plans_created_by_foreign` (`created_by`),
  ADD KEY `sm_seat_plans_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_seat_plans_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_seat_plan_children`
--
ALTER TABLE `sm_seat_plan_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_seat_plan_children_seat_plan_id_foreign` (`seat_plan_id`),
  ADD KEY `sm_seat_plan_children_created_by_foreign` (`created_by`),
  ADD KEY `sm_seat_plan_children_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_seat_plan_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_sections`
--
ALTER TABLE `sm_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_sections_created_by_foreign` (`created_by`),
  ADD KEY `sm_sections_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_sections_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_send_messages`
--
ALTER TABLE `sm_send_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_send_messages_created_by_foreign` (`created_by`),
  ADD KEY `sm_send_messages_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_send_messages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_sessions`
--
ALTER TABLE `sm_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_sessions_created_by_foreign` (`created_by`),
  ADD KEY `sm_sessions_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_sessions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_setup_admins`
--
ALTER TABLE `sm_setup_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_setup_admins_created_by_foreign` (`created_by`),
  ADD KEY `sm_setup_admins_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_setup_admins_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_sms_gateways`
--
ALTER TABLE `sm_sms_gateways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_sms_gateways_created_by_foreign` (`created_by`),
  ADD KEY `sm_sms_gateways_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_sms_gateways_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_staffs`
--
ALTER TABLE `sm_staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_staffs_designation_id_foreign` (`designation_id`),
  ADD KEY `sm_staffs_department_id_foreign` (`department_id`),
  ADD KEY `sm_staffs_user_id_foreign` (`user_id`),
  ADD KEY `sm_staffs_role_id_foreign` (`role_id`),
  ADD KEY `sm_staffs_gender_id_foreign` (`gender_id`),
  ADD KEY `sm_staffs_created_by_foreign` (`created_by`),
  ADD KEY `sm_staffs_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_staffs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_staff_attendences`
--
ALTER TABLE `sm_staff_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_staff_attendences_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_staff_attendences_created_by_foreign` (`created_by`),
  ADD KEY `sm_staff_attendences_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_staff_attendences_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_students`
--
ALTER TABLE `sm_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_students_bloodgroup_id_foreign` (`bloodgroup_id`),
  ADD KEY `sm_students_religion_id_foreign` (`religion_id`),
  ADD KEY `sm_students_route_list_id_foreign` (`route_list_id`),
  ADD KEY `sm_students_dormitory_id_foreign` (`dormitory_id`),
  ADD KEY `sm_students_vechile_id_foreign` (`vechile_id`),
  ADD KEY `sm_students_room_id_foreign` (`room_id`),
  ADD KEY `sm_students_student_category_id_foreign` (`student_category_id`),
  ADD KEY `sm_students_class_id_foreign` (`class_id`),
  ADD KEY `sm_students_section_id_foreign` (`section_id`),
  ADD KEY `sm_students_session_id_foreign` (`session_id`),
  ADD KEY `sm_students_parent_id_foreign` (`parent_id`),
  ADD KEY `sm_students_user_id_foreign` (`user_id`),
  ADD KEY `sm_students_role_id_foreign` (`role_id`),
  ADD KEY `sm_students_gender_id_foreign` (`gender_id`),
  ADD KEY `sm_students_created_by_foreign` (`created_by`),
  ADD KEY `sm_students_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_students_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_attendances`
--
ALTER TABLE `sm_student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_attendances_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_attendances_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_attendances_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_attendances_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_categories`
--
ALTER TABLE `sm_student_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_categories_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_categories_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_certificates`
--
ALTER TABLE `sm_student_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_certificates_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_certificates_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_certificates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_documents`
--
ALTER TABLE `sm_student_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_documents_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_documents_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_documents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_excel_formats`
--
ALTER TABLE `sm_student_excel_formats`
  ADD KEY `sm_student_excel_formats_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_groups`
--
ALTER TABLE `sm_student_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_groups_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_groups_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_homeworks`
--
ALTER TABLE `sm_student_homeworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_homeworks_evaluated_by_foreign` (`evaluated_by`),
  ADD KEY `sm_student_homeworks_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_homeworks_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_student_homeworks_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_homeworks_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_homeworks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_id_cards`
--
ALTER TABLE `sm_student_id_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_id_cards_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_id_cards_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_id_cards_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_promotions`
--
ALTER TABLE `sm_student_promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_promotions_previous_class_id_foreign` (`previous_class_id`),
  ADD KEY `sm_student_promotions_current_class_id_foreign` (`current_class_id`),
  ADD KEY `sm_student_promotions_previous_session_id_foreign` (`previous_session_id`),
  ADD KEY `sm_student_promotions_current_session_id_foreign` (`current_session_id`),
  ADD KEY `sm_student_promotions_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_promotions_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_promotions_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_promotions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_take_online_exams`
--
ALTER TABLE `sm_student_take_online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_take_online_exams_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_take_online_exams_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `sm_student_take_online_exams_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_take_online_exams_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_take_online_exams_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_take_online_exam_questions`
--
ALTER TABLE `sm_student_take_online_exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_on_ex_id` (`take_online_exam_id`),
  ADD KEY `sm_student_take_online_exam_questions_question_bank_id_foreign` (`question_bank_id`),
  ADD KEY `sm_student_take_online_exam_questions_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_take_online_exam_questions_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_take_online_exam_questions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_take_onln_ex_ques_options`
--
ALTER TABLE `sm_student_take_onln_ex_ques_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_on_ex_q_id` (`take_online_exam_question_id`),
  ADD KEY `sm_student_take_onln_ex_ques_options_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_take_onln_ex_ques_options_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_take_onln_ex_ques_options_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_timelines`
--
ALTER TABLE `sm_student_timelines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_timelines_created_by_foreign` (`created_by`),
  ADD KEY `sm_student_timelines_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_student_timelines_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_styles`
--
ALTER TABLE `sm_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_styles_created_by_foreign` (`created_by`),
  ADD KEY `sm_styles_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_styles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_subjects`
--
ALTER TABLE `sm_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_subjects_created_by_foreign` (`created_by`),
  ADD KEY `sm_subjects_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_subjects_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_suppliers`
--
ALTER TABLE `sm_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_suppliers_created_by_foreign` (`created_by`),
  ADD KEY `sm_suppliers_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_suppliers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_system_versions`
--
ALTER TABLE `sm_system_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_teacher_upload_contents`
--
ALTER TABLE `sm_teacher_upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_teacher_upload_contents_class_foreign` (`class`),
  ADD KEY `sm_teacher_upload_contents_section_foreign` (`section`),
  ADD KEY `sm_teacher_upload_contents_created_by_foreign` (`created_by`),
  ADD KEY `sm_teacher_upload_contents_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_teacher_upload_contents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_temporary_meritlist`
--
ALTER TABLE `sm_temporary_meritlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_temporary_meritlists`
--
ALTER TABLE `sm_temporary_meritlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_temporary_meritlists_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_temporary_meritlists_class_id_foreign` (`class_id`),
  ADD KEY `sm_temporary_meritlists_section_id_foreign` (`section_id`),
  ADD KEY `sm_temporary_meritlists_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_testimonials`
--
ALTER TABLE `sm_testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_testimonials_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_time_zones`
--
ALTER TABLE `sm_time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_to_dos`
--
ALTER TABLE `sm_to_dos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_to_dos_created_by_foreign` (`created_by`),
  ADD KEY `sm_to_dos_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_to_dos_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_upload_contents`
--
ALTER TABLE `sm_upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_upload_contents_created_by_foreign` (`created_by`),
  ADD KEY `sm_upload_contents_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_upload_contents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_user_logs`
--
ALTER TABLE `sm_user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_user_logs_user_id_foreign` (`user_id`),
  ADD KEY `sm_user_logs_role_id_foreign` (`role_id`),
  ADD KEY `sm_user_logs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_vehicles`
--
ALTER TABLE `sm_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_vehicles_driver_id_foreign` (`driver_id`),
  ADD KEY `sm_vehicles_created_by_foreign` (`created_by`),
  ADD KEY `sm_vehicles_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_vehicles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_visitors`
--
ALTER TABLE `sm_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_visitors_created_by_foreign` (`created_by`),
  ADD KEY `sm_visitors_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_visitors_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_weekends`
--
ALTER TABLE `sm_weekends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_school_id_foreign` (`school_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `continets`
--
ALTER TABLE `continets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sm_about_pages`
--
ALTER TABLE `sm_about_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_academic_years`
--
ALTER TABLE `sm_academic_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sm_add_expenses`
--
ALTER TABLE `sm_add_expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_add_incomes`
--
ALTER TABLE `sm_add_incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sm_admission_queries`
--
ALTER TABLE `sm_admission_queries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_admission_query_followups`
--
ALTER TABLE `sm_admission_query_followups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_assign_class_teachers`
--
ALTER TABLE `sm_assign_class_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sm_assign_subjects`
--
ALTER TABLE `sm_assign_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `sm_assign_vehicles`
--
ALTER TABLE `sm_assign_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_background_settings`
--
ALTER TABLE `sm_background_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_backups`
--
ALTER TABLE `sm_backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_bank_accounts`
--
ALTER TABLE `sm_bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_base_groups`
--
ALTER TABLE `sm_base_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_base_setups`
--
ALTER TABLE `sm_base_setups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sm_books`
--
ALTER TABLE `sm_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_book_categories`
--
ALTER TABLE `sm_book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sm_book_issues`
--
ALTER TABLE `sm_book_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_chart_of_accounts`
--
ALTER TABLE `sm_chart_of_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_classes`
--
ALTER TABLE `sm_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sm_class_rooms`
--
ALTER TABLE `sm_class_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sm_class_routines`
--
ALTER TABLE `sm_class_routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_routine_updates`
--
ALTER TABLE `sm_class_routine_updates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sm_class_sections`
--
ALTER TABLE `sm_class_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sm_class_teachers`
--
ALTER TABLE `sm_class_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sm_class_times`
--
ALTER TABLE `sm_class_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sm_complaints`
--
ALTER TABLE `sm_complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_contact_messages`
--
ALTER TABLE `sm_contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_contact_pages`
--
ALTER TABLE `sm_contact_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_content_types`
--
ALTER TABLE `sm_content_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_countries`
--
ALTER TABLE `sm_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_courses`
--
ALTER TABLE `sm_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_currencies`
--
ALTER TABLE `sm_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `sm_custom_links`
--
ALTER TABLE `sm_custom_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_dashboard_settings`
--
ALTER TABLE `sm_dashboard_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_date_formats`
--
ALTER TABLE `sm_date_formats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sm_designations`
--
ALTER TABLE `sm_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sm_dormitory_lists`
--
ALTER TABLE `sm_dormitory_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sm_email_settings`
--
ALTER TABLE `sm_email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_email_sms_logs`
--
ALTER TABLE `sm_email_sms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_events`
--
ALTER TABLE `sm_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_exams`
--
ALTER TABLE `sm_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sm_exam_attendances`
--
ALTER TABLE `sm_exam_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_exam_attendance_children`
--
ALTER TABLE `sm_exam_attendance_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_exam_marks_registers`
--
ALTER TABLE `sm_exam_marks_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_schedules`
--
ALTER TABLE `sm_exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sm_exam_schedule_subjects`
--
ALTER TABLE `sm_exam_schedule_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_setups`
--
ALTER TABLE `sm_exam_setups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `sm_exam_types`
--
ALTER TABLE `sm_exam_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_expense_heads`
--
ALTER TABLE `sm_expense_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sm_fees_assigns`
--
ALTER TABLE `sm_fees_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sm_fees_assign_discounts`
--
ALTER TABLE `sm_fees_assign_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_carry_forwards`
--
ALTER TABLE `sm_fees_carry_forwards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `sm_fees_discounts`
--
ALTER TABLE `sm_fees_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_fees_groups`
--
ALTER TABLE `sm_fees_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sm_fees_masters`
--
ALTER TABLE `sm_fees_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sm_fees_payments`
--
ALTER TABLE `sm_fees_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sm_fees_types`
--
ALTER TABLE `sm_fees_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sm_frontend_persmissions`
--
ALTER TABLE `sm_frontend_persmissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sm_general_settings`
--
ALTER TABLE `sm_general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_holidays`
--
ALTER TABLE `sm_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_homeworks`
--
ALTER TABLE `sm_homeworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_homework_students`
--
ALTER TABLE `sm_homework_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_home_page_settings`
--
ALTER TABLE `sm_home_page_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_hourly_rates`
--
ALTER TABLE `sm_hourly_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_hr_payroll_earn_deducs`
--
ALTER TABLE `sm_hr_payroll_earn_deducs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_hr_payroll_generates`
--
ALTER TABLE `sm_hr_payroll_generates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_hr_salary_templates`
--
ALTER TABLE `sm_hr_salary_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_human_departments`
--
ALTER TABLE `sm_human_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sm_income_heads`
--
ALTER TABLE `sm_income_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sm_instructions`
--
ALTER TABLE `sm_instructions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_inventory_payments`
--
ALTER TABLE `sm_inventory_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_items`
--
ALTER TABLE `sm_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_item_categories`
--
ALTER TABLE `sm_item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sm_item_issues`
--
ALTER TABLE `sm_item_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_receives`
--
ALTER TABLE `sm_item_receives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_item_receive_children`
--
ALTER TABLE `sm_item_receive_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_item_sells`
--
ALTER TABLE `sm_item_sells`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_sell_children`
--
ALTER TABLE `sm_item_sell_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_stores`
--
ALTER TABLE `sm_item_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_languages`
--
ALTER TABLE `sm_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_language_phrases`
--
ALTER TABLE `sm_language_phrases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- AUTO_INCREMENT for table `sm_leave_defines`
--
ALTER TABLE `sm_leave_defines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sm_leave_requests`
--
ALTER TABLE `sm_leave_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_leave_types`
--
ALTER TABLE `sm_leave_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sm_library_members`
--
ALTER TABLE `sm_library_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_marks_grades`
--
ALTER TABLE `sm_marks_grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sm_marks_registers`
--
ALTER TABLE `sm_marks_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_marks_register_children`
--
ALTER TABLE `sm_marks_register_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_marks_send_sms`
--
ALTER TABLE `sm_marks_send_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_mark_stores`
--
ALTER TABLE `sm_mark_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sm_modules`
--
ALTER TABLE `sm_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sm_module_links`
--
ALTER TABLE `sm_module_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `sm_module_permissions`
--
ALTER TABLE `sm_module_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sm_module_permission_assigns`
--
ALTER TABLE `sm_module_permission_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `sm_news`
--
ALTER TABLE `sm_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_news_categories`
--
ALTER TABLE `sm_news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_notice_boards`
--
ALTER TABLE `sm_notice_boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_notifications`
--
ALTER TABLE `sm_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sm_online_exams`
--
ALTER TABLE `sm_online_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_online_exam_marks`
--
ALTER TABLE `sm_online_exam_marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_online_exam_questions`
--
ALTER TABLE `sm_online_exam_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_online_exam_question_assigns`
--
ALTER TABLE `sm_online_exam_question_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sm_online_exam_question_mu_options`
--
ALTER TABLE `sm_online_exam_question_mu_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_parents`
--
ALTER TABLE `sm_parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sm_payment_gateway_settings`
--
ALTER TABLE `sm_payment_gateway_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_payment_methhods`
--
ALTER TABLE `sm_payment_methhods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sm_phone_call_logs`
--
ALTER TABLE `sm_phone_call_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_postal_dispatches`
--
ALTER TABLE `sm_postal_dispatches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_postal_receives`
--
ALTER TABLE `sm_postal_receives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sm_product_purchases`
--
ALTER TABLE `sm_product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_question_banks`
--
ALTER TABLE `sm_question_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_question_bank_mu_options`
--
ALTER TABLE `sm_question_bank_mu_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sm_question_groups`
--
ALTER TABLE `sm_question_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sm_question_levels`
--
ALTER TABLE `sm_question_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_result_stores`
--
ALTER TABLE `sm_result_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sm_role_permissions`
--
ALTER TABLE `sm_role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2752;

--
-- AUTO_INCREMENT for table `sm_room_lists`
--
ALTER TABLE `sm_room_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `sm_room_types`
--
ALTER TABLE `sm_room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sm_routes`
--
ALTER TABLE `sm_routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_schools`
--
ALTER TABLE `sm_schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sm_seat_plans`
--
ALTER TABLE `sm_seat_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_seat_plan_children`
--
ALTER TABLE `sm_seat_plan_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_sections`
--
ALTER TABLE `sm_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_send_messages`
--
ALTER TABLE `sm_send_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_sessions`
--
ALTER TABLE `sm_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_setup_admins`
--
ALTER TABLE `sm_setup_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sm_sms_gateways`
--
ALTER TABLE `sm_sms_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_staffs`
--
ALTER TABLE `sm_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sm_staff_attendences`
--
ALTER TABLE `sm_staff_attendences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sm_students`
--
ALTER TABLE `sm_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sm_student_attendances`
--
ALTER TABLE `sm_student_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sm_student_categories`
--
ALTER TABLE `sm_student_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sm_student_certificates`
--
ALTER TABLE `sm_student_certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_student_documents`
--
ALTER TABLE `sm_student_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_groups`
--
ALTER TABLE `sm_student_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_student_homeworks`
--
ALTER TABLE `sm_student_homeworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_id_cards`
--
ALTER TABLE `sm_student_id_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_student_promotions`
--
ALTER TABLE `sm_student_promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_student_take_online_exams`
--
ALTER TABLE `sm_student_take_online_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_student_take_online_exam_questions`
--
ALTER TABLE `sm_student_take_online_exam_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sm_student_take_onln_ex_ques_options`
--
ALTER TABLE `sm_student_take_onln_ex_ques_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sm_student_timelines`
--
ALTER TABLE `sm_student_timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_styles`
--
ALTER TABLE `sm_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_subjects`
--
ALTER TABLE `sm_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sm_suppliers`
--
ALTER TABLE `sm_suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_system_versions`
--
ALTER TABLE `sm_system_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_teacher_upload_contents`
--
ALTER TABLE `sm_teacher_upload_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sm_temporary_meritlist`
--
ALTER TABLE `sm_temporary_meritlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_temporary_meritlists`
--
ALTER TABLE `sm_temporary_meritlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_testimonials`
--
ALTER TABLE `sm_testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_time_zones`
--
ALTER TABLE `sm_time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `sm_to_dos`
--
ALTER TABLE `sm_to_dos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_upload_contents`
--
ALTER TABLE `sm_upload_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_user_logs`
--
ALTER TABLE `sm_user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `sm_vehicles`
--
ALTER TABLE `sm_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_visitors`
--
ALTER TABLE `sm_visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_weekends`
--
ALTER TABLE `sm_weekends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
