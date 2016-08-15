SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `is_billing` tinyint(1) NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `address_line1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_is_manual` tinyint(1) NOT NULL DEFAULT '1',
  `google_place_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `addresses` (`id`, `street`, `city`, `state`, `post_code`, `country_id`, `lat`, `lng`, `is_public`, `is_primary`, `is_billing`, `is_shipping`, `address_line1`, `address_line2`, `location_is_manual`, `google_place_id`) VALUES
(1, '4 Green Junction', 'Falls Church', 'Virginia', '22047', 840, '38.8318', '-77.2888', 0, 0, 0, 0, '', '', 1, ''),
(2, '0134 Hintze Alley', 'Washington', 'District of Columbia', '20231', 840, '38.8933', '-77.0146', 0, 0, 0, 0, '', '', 1, ''),
(3, '232 Anhalt Drive', 'New Haven', 'Connecticut', '06510', 840, '41.3087', '-72.9271', 0, 0, 0, 0, '', '', 1, ''),
(4, '0 Oak Circle', 'Minneapolis', 'Minnesota', '55446', 840, '45.04', '-93.4865', 0, 0, 0, 0, '', '', 1, ''),
(5, '7306 Independence Hill', 'Dulles', 'Virginia', '20189', 840, '39.009', '-77.4422', 0, 0, 0, 0, '', '', 1, ''),
(6, '9788 Shopko Park', 'Philadelphia', 'Pennsylvania', '19093', 840, '40.0018', '-75.1179', 0, 0, 0, 0, '', '', 1, ''),
(7, '79689 David Circle', 'Appleton', 'Wisconsin', '54915', 840, '44.2425', '-88.3564', 0, 0, 0, 0, '', '', 1, ''),
(8, '878 Hovde Trail', 'Pensacola', 'Florida', '32590', 840, '30.6143', '-87.2758', 0, 0, 0, 0, '', '', 1, ''),
(9, '3252 Alpine Circle', 'Reno', 'Nevada', '89519', 840, '39.4814', '-119.8591', 0, 0, 0, 0, '', '', 1, ''),
(10, '5835 Del Sol Hill', 'Greensboro', 'North Carolina', '27409', 840, '36.0777', '-79.9086', 0, 0, 0, 0, '', '', 1, ''),
(11, '41 Oak Circle', 'Phoenix', 'Arizona', '85010', 840, '33.2765', '-112.1872', 0, 0, 0, 0, '', '', 1, ''),
(12, '9 Gina Point', 'Salt Lake City', 'Utah', '84130', 840, '40.6681', '-111.9083', 0, 0, 0, 0, '', '', 1, ''),
(13, '5 Corry Crossing', 'Wilmington', 'Delaware', '19805', 840, '39.7434', '-75.5827', 0, 0, 0, 0, '', '', 1, ''),
(14, '96 Bunting Parkway', 'Madison', 'Wisconsin', '53710', 840, '43.0696', '-89.4239', 0, 0, 0, 0, '', '', 1, ''),
(15, '6868 Scofield Pass', 'Waco', 'Texas', '76711', 840, '31.5175', '-97.1547', 0, 0, 0, 0, '', '', 1, ''),
(16, '2 Cherokee Trail', 'Grand Rapids', 'Michigan', '49560', 840, '43.0314', '-85.5503', 0, 0, 0, 0, '', '', 1, ''),
(17, '298 Steensland Plaza', 'Johnstown', 'Pennsylvania', '15906', 840, '40.3522', '-78.9383', 0, 0, 0, 0, '', '', 1, ''),
(18, '760 Mayer Alley', 'Fresno', 'California', '93740', 840, '36.7464', '-119.6397', 0, 0, 0, 0, '', '', 1, ''),
(19, '79537 Messerschmidt Way', 'Buffalo', 'New York', '14220', 840, '42.8441', '-78.8182', 0, 0, 0, 0, '', '', 1, ''),
(20, '88034 Petterle Center', 'Akron', 'Ohio', '44305', 840, '41.076', '-81.4644', 0, 0, 0, 0, '', '', 1, ''),
(21, '66 Pond Hill', 'Kansas City', 'Missouri', '64109', 840, '39.0663', '-94.5674', 0, 0, 0, 0, '', '', 1, ''),
(22, '07399 Washington Road', 'Anchorage', 'Alaska', '99512', 840, '61.204', '-149.8084', 0, 0, 0, 0, '', '', 1, ''),
(23, '18411 Randy Circle', 'Miami', 'Florida', '33283', 840, '25.5584', '-80.4582', 0, 0, 0, 0, '', '', 1, ''),
(24, '39231 Kim Plaza', 'Woburn', 'Massachusetts', '01813', 840, '42.4464', '-71.4594', 0, 0, 0, 0, '', '', 1, ''),
(25, '57 Morrow Point', 'Portland', 'Oregon', '97216', 840, '45.5137', '-122.5569', 0, 0, 0, 0, '', '', 1, ''),
(26, '33 Gulseth Place', 'Simi Valley', 'California', '93094', 840, '34.0324', '-119.1343', 0, 0, 0, 0, '', '', 1, ''),
(27, '931 Ruskin Hill', 'Topeka', 'Kansas', '66629', 840, '39.0429', '-95.7697', 0, 0, 0, 0, '', '', 1, ''),
(28, '14727 Ludington Circle', 'Sioux Falls', 'South Dakota', '57193', 840, '43.6746', '-96.7913', 0, 0, 0, 0, '', '', 1, ''),
(29, '049 School Lane', 'Daytona Beach', 'Florida', '32128', 840, '29.0838', '-81.0336', 0, 0, 0, 0, '', '', 1, ''),
(30, '7 Vermont Center', 'Akron', 'Ohio', '44329', 840, '41.0655', '-81.5203', 0, 0, 0, 0, '', '', 1, ''),
(31, '3355 Homewood Alley', 'Houston', 'Texas', '77025', 840, '29.6889', '-95.4341', 0, 0, 0, 0, '', '', 1, ''),
(32, '31192 Prentice Terrace', 'Evansville', 'Indiana', '47732', 840, '37.9971', '-87.575', 0, 0, 0, 0, '', '', 1, ''),
(33, '33 Kedzie Point', 'Davenport', 'Iowa', '52809', 840, '41.613', '-90.6063', 0, 0, 0, 0, '', '', 1, ''),
(34, '8 Bluejay Crossing', 'Norwalk', 'Connecticut', '06854', 840, '41.0957', '-73.4285', 0, 0, 0, 0, '', '', 1, ''),
(35, '61 Coolidge Drive', 'Riverside', 'California', '92519', 840, '33.7529', '-116.0556', 0, 0, 0, 0, '', '', 1, ''),
(36, '44853 Sundown Lane', 'Aurora', 'Colorado', '80044', 840, '39.7388', '-104.4083', 0, 0, 0, 0, '', '', 1, ''),
(37, '1 Kensington Terrace', 'Plano', 'Texas', '75074', 840, '33.0277', '-96.6777', 0, 0, 0, 0, '', '', 1, ''),
(38, '98539 Londonderry Hill', 'Wichita', 'Kansas', '67220', 840, '37.7667', '-97.2805', 0, 0, 0, 0, '', '', 1, ''),
(39, '6979 Shopko Trail', 'Atlanta', 'Georgia', '30301', 840, '33.8444', '-84.474', 0, 0, 0, 0, '', '', 1, ''),
(40, '3 Warner Alley', 'Pensacola', 'Florida', '32526', 840, '30.4756', '-87.3179', 0, 0, 0, 0, '', '', 1, ''),
(41, '1186 Ohio Crossing', 'Mobile', 'Alabama', '36616', 840, '30.671', '-88.1267', 0, 0, 0, 0, '', '', 1, ''),
(42, '2 Hayes Hill', 'Saint Louis', 'Missouri', '63126', 840, '38.5495', '-90.3811', 0, 0, 0, 0, '', '', 1, ''),
(43, '0598 Debra Pass', 'Chattanooga', 'Tennessee', '37405', 840, '35.0768', '-85.3082', 0, 0, 0, 0, '', '', 1, ''),
(44, '571 Jana Crossing', 'Alexandria', 'Virginia', '22313', 840, '38.8158', '-77.09', 0, 0, 0, 0, '', '', 1, ''),
(45, '503 Calypso Parkway', 'Springfield', 'Illinois', '62794', 840, '39.7495', '-89.606', 0, 0, 0, 0, '', '', 1, ''),
(46, '3 Superior Circle', 'Greensboro', 'North Carolina', '27455', 840, '36.1824', '-79.806', 0, 0, 0, 0, '', '', 1, ''),
(47, '32765 Continental Lane', 'Reno', 'Nevada', '89505', 840, '39.5224', '-119.8353', 0, 0, 0, 0, '', '', 1, ''),
(48, '02 Dovetail Alley', 'Atlanta', 'Georgia', '31165', 840, '33.7629', '-84.4226', 0, 0, 0, 0, '', '', 1, ''),
(49, '07 Rowland Court', 'Savannah', 'Georgia', '31410', 840, '32.0175', '-80.997', 0, 0, 0, 0, '', '', 1, ''),
(50, '829 Badeau Drive', 'Detroit', 'Michigan', '48295', 840, '42.2399', '-83.1508', 0, 0, 0, 0, '', '', 1, '');

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `capital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_sub_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_3166_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `iso_3166_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `region_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sub_region_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eea` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `countries` (`id`, `capital`, `citizenship`, `country_code`, `currency`, `currency_code`, `currency_sub_unit`, `full_name`, `iso_3166_2`, `iso_3166_3`, `name`, `region_code`, `sub_region_code`, `eea`, `updated_at`, `deleted_at`, `created_at`) VALUES
(4, 'Kabul', 'Afghan', '004', 'afghani', 'AFN', 'pul', 'Islamic Republic of Afghanistan', 'AF', 'AFG', 'Afghanistan', '142', '034', 0, NULL, NULL, NULL),
(8, 'Tirana', 'Albanian', '008', 'lek', 'ALL', '(qindar (pl. qindarka))', 'Republic of Albania', 'AL', 'ALB', 'Albania', '150', '039', 0, NULL, NULL, NULL),
(10, 'Antartica', 'of Antartica', '010', '', '', '', 'Antarctica', 'AQ', 'ATA', 'Antarctica', '', '', 0, NULL, NULL, NULL),
(12, 'Algiers', 'Algerian', '012', 'Algerian dinar', 'DZD', 'centime', 'People’s Democratic Republic of Algeria', 'DZ', 'DZA', 'Algeria', '002', '015', 0, NULL, NULL, NULL),
(16, 'Pago Pago', 'American Samoan', '016', 'US dollar', 'USD', 'cent', 'Territory of American', 'AS', 'ASM', 'American Samoa', '009', '061', 0, NULL, NULL, NULL),
(20, 'Andorra la Vella', 'Andorran', '020', 'euro', 'EUR', 'cent', 'Principality of Andorra', 'AD', 'AND', 'Andorra', '150', '039', 0, NULL, NULL, NULL),
(24, 'Luanda', 'Angolan', '024', 'kwanza', 'AOA', 'cêntimo', 'Republic of Angola', 'AO', 'AGO', 'Angola', '002', '017', 0, NULL, NULL, NULL),
(28, 'St John’s', 'of Antigua and Barbuda', '028', 'East Caribbean dollar', 'XCD', 'cent', 'Antigua and Barbuda', 'AG', 'ATG', 'Antigua and Barbuda', '019', '029', 0, NULL, NULL, NULL),
(31, 'Baku', 'Azerbaijani', '031', 'Azerbaijani manat', 'AZN', 'kepik (inv.)', 'Republic of Azerbaijan', 'AZ', 'AZE', 'Azerbaijan', '142', '145', 0, NULL, NULL, NULL),
(32, 'Buenos Aires', 'Argentinian', '032', 'Argentine peso', 'ARS', 'centavo', 'Argentine Republic', 'AR', 'ARG', 'Argentina', '019', '005', 0, NULL, NULL, NULL),
(36, 'Canberra', 'Australian', '036', 'Australian dollar', 'AUD', 'cent', 'Commonwealth of Australia', 'AU', 'AUS', 'Australia', '009', '053', 0, NULL, NULL, NULL),
(40, 'Vienna', 'Austrian', '040', 'euro', 'EUR', 'cent', 'Republic of Austria', 'AT', 'AUT', 'Austria', '150', '155', 1, NULL, NULL, NULL),
(44, 'Nassau', 'Bahamian', '044', 'Bahamian dollar', 'BSD', 'cent', 'Commonwealth of the Bahamas', 'BS', 'BHS', 'Bahamas', '019', '029', 0, NULL, NULL, NULL),
(48, 'Manama', 'Bahraini', '048', 'Bahraini dinar', 'BHD', 'fils (inv.)', 'Kingdom of Bahrain', 'BH', 'BHR', 'Bahrain', '142', '145', 0, NULL, NULL, NULL),
(50, 'Dhaka', 'Bangladeshi', '050', 'taka (inv.)', 'BDT', 'poisha (inv.)', 'People’s Republic of Bangladesh', 'BD', 'BGD', 'Bangladesh', '142', '034', 0, NULL, NULL, NULL),
(51, 'Yerevan', 'Armenian', '051', 'dram (inv.)', 'AMD', 'luma', 'Republic of Armenia', 'AM', 'ARM', 'Armenia', '142', '145', 0, NULL, NULL, NULL),
(52, 'Bridgetown', 'Barbadian', '052', 'Barbados dollar', 'BBD', 'cent', 'Barbados', 'BB', 'BRB', 'Barbados', '019', '029', 0, NULL, NULL, NULL),
(56, 'Brussels', 'Belgian', '056', 'euro', 'EUR', 'cent', 'Kingdom of Belgium', 'BE', 'BEL', 'Belgium', '150', '155', 1, NULL, NULL, NULL),
(60, 'Hamilton', 'Bermudian', '060', 'Bermuda dollar', 'BMD', 'cent', 'Bermuda', 'BM', 'BMU', 'Bermuda', '019', '021', 0, NULL, NULL, NULL),
(64, 'Thimphu', 'Bhutanese', '064', 'ngultrum (inv.)', 'BTN', 'chhetrum (inv.)', 'Kingdom of Bhutan', 'BT', 'BTN', 'Bhutan', '142', '034', 0, NULL, NULL, NULL),
(68, 'Sucre (BO1)', 'Bolivian', '068', 'boliviano', 'BOB', 'centavo', 'Plurinational State of Bolivia', 'BO', 'BOL', 'Bolivia, Plurinational State of', '019', '005', 0, NULL, NULL, NULL),
(70, 'Sarajevo', 'of Bosnia and Herzegovina', '070', 'convertible mark', 'BAM', 'fening', 'Bosnia and Herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', '150', '039', 0, NULL, NULL, NULL),
(72, 'Gaborone', 'Botswanan', '072', 'pula (inv.)', 'BWP', 'thebe (inv.)', 'Republic of Botswana', 'BW', 'BWA', 'Botswana', '002', '018', 0, NULL, NULL, NULL),
(74, 'Bouvet island', 'of Bouvet island', '074', '', '', '', 'Bouvet Island', 'BV', 'BVT', 'Bouvet Island', '', '', 0, NULL, NULL, NULL),
(76, 'Brasilia', 'Brazilian', '076', 'real (pl. reais)', 'BRL', 'centavo', 'Federative Republic of Brazil', 'BR', 'BRA', 'Brazil', '019', '005', 0, NULL, NULL, NULL),
(84, 'Belmopan', 'Belizean', '084', 'Belize dollar', 'BZD', 'cent', 'Belize', 'BZ', 'BLZ', 'Belize', '019', '013', 0, NULL, NULL, NULL),
(86, 'Diego Garcia', 'Changosian', '086', 'US dollar', 'USD', 'cent', 'British Indian Ocean Territory', 'IO', 'IOT', 'British Indian Ocean Territory', '', '', 0, NULL, NULL, NULL),
(90, 'Honiara', 'Solomon Islander', '090', 'Solomon Islands dollar', 'SBD', 'cent', 'Solomon Islands', 'SB', 'SLB', 'Solomon Islands', '009', '054', 0, NULL, NULL, NULL),
(92, 'Road Town', 'British Virgin Islander;', '092', 'US dollar', 'USD', 'cent', 'British Virgin Islands', 'VG', 'VGB', 'Virgin Islands, British', '019', '029', 0, NULL, NULL, NULL),
(96, 'Bandar Seri Begawan', 'Bruneian', '096', 'Brunei dollar', 'BND', 'sen (inv.)', 'Brunei Darussalam', 'BN', 'BRN', 'Brunei Darussalam', '142', '035', 0, NULL, NULL, NULL),
(100, 'Sofia', 'Bulgarian', '100', 'lev (pl. leva)', 'BGN', 'stotinka', 'Republic of Bulgaria', 'BG', 'BGR', 'Bulgaria', '150', '151', 1, NULL, NULL, NULL),
(104, 'Yangon', 'Burmese', '104', 'kyat', 'MMK', 'pya', 'Union of Myanmar/', 'MM', 'MMR', 'Myanmar', '142', '035', 0, NULL, NULL, NULL),
(108, 'Bujumbura', 'Burundian', '108', 'Burundi franc', 'BIF', 'centime', 'Republic of Burundi', 'BI', 'BDI', 'Burundi', '002', '014', 0, NULL, NULL, NULL),
(112, 'Minsk', 'Belarusian', '112', 'Belarusian rouble', 'BYR', 'kopek', 'Republic of Belarus', 'BY', 'BLR', 'Belarus', '150', '151', 0, NULL, NULL, NULL),
(116, 'Phnom Penh', 'Cambodian', '116', 'riel', 'KHR', 'sen (inv.)', 'Kingdom of Cambodia', 'KH', 'KHM', 'Cambodia', '142', '035', 0, NULL, NULL, NULL),
(120, 'Yaoundé', 'Cameroonian', '120', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Cameroon', 'CM', 'CMR', 'Cameroon', '002', '017', 0, NULL, NULL, NULL),
(124, 'Ottawa', 'Canadian', '124', 'Canadian dollar', 'CAD', 'cent', 'Canada', 'CA', 'CAN', 'Canada', '019', '021', 0, NULL, NULL, NULL),
(132, 'Praia', 'Cape Verdean', '132', 'Cape Verde escudo', 'CVE', 'centavo', 'Republic of Cape Verde', 'CV', 'CPV', 'Cape Verde', '002', '011', 0, NULL, NULL, NULL),
(136, 'George Town', 'Caymanian', '136', 'Cayman Islands dollar', 'KYD', 'cent', 'Cayman Islands', 'KY', 'CYM', 'Cayman Islands', '019', '029', 0, NULL, NULL, NULL),
(140, 'Bangui', 'Central African', '140', 'CFA franc (BEAC)', 'XAF', 'centime', 'Central African Republic', 'CF', 'CAF', 'Central African Republic', '002', '017', 0, NULL, NULL, NULL),
(144, 'Colombo', 'Sri Lankan', '144', 'Sri Lankan rupee', 'LKR', 'cent', 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', 'Sri Lanka', '142', '034', 0, NULL, NULL, NULL),
(148, 'N’Djamena', 'Chadian', '148', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Chad', 'TD', 'TCD', 'Chad', '002', '017', 0, NULL, NULL, NULL),
(152, 'Santiago', 'Chilean', '152', 'Chilean peso', 'CLP', 'centavo', 'Republic of Chile', 'CL', 'CHL', 'Chile', '019', '005', 0, NULL, NULL, NULL),
(156, 'Beijing', 'Chinese', '156', 'renminbi-yuan (inv.)', 'CNY', 'jiao (10)', 'People’s Republic of China', 'CN', 'CHN', 'China', '142', '030', 0, NULL, NULL, NULL),
(158, 'Taipei', 'Taiwanese', '158', 'new Taiwan dollar', 'TWD', 'fen (inv.)', 'Republic of China, Taiwan (TW1)', 'TW', 'TWN', 'Taiwan, Province of China', '142', '030', 0, NULL, NULL, NULL),
(162, 'Flying Fish Cove', 'Christmas Islander', '162', 'Australian dollar', 'AUD', 'cent', 'Christmas Island Territory', 'CX', 'CXR', 'Christmas Island', '', '', 0, NULL, NULL, NULL),
(166, 'Bantam', 'Cocos Islander', '166', 'Australian dollar', 'AUD', 'cent', 'Territory of Cocos (Keeling) Islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', '', '', 0, NULL, NULL, NULL),
(170, 'Santa Fe de Bogotá', 'Colombian', '170', 'Colombian peso', 'COP', 'centavo', 'Republic of Colombia', 'CO', 'COL', 'Colombia', '019', '005', 0, NULL, NULL, NULL),
(174, 'Moroni', 'Comorian', '174', 'Comorian franc', 'KMF', '', 'Union of the Comoros', 'KM', 'COM', 'Comoros', '002', '014', 0, NULL, NULL, NULL),
(175, 'Mamoudzou', 'Mahorais', '175', 'euro', 'EUR', 'cent', 'Departmental Collectivity of Mayotte', 'YT', 'MYT', 'Mayotte', '002', '014', 0, NULL, NULL, NULL),
(178, 'Brazzaville', 'Congolese', '178', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of the Congo', 'CG', 'COG', 'Congo', '002', '017', 0, NULL, NULL, NULL),
(180, 'Kinshasa', 'Congolese', '180', 'Congolese franc', 'CDF', 'centime', 'Democratic Republic of the Congo', 'CD', 'COD', 'Congo, the Democratic Republic of the', '002', '017', 0, NULL, NULL, NULL),
(184, 'Avarua', 'Cook Islander', '184', 'New Zealand dollar', 'NZD', 'cent', 'Cook Islands', 'CK', 'COK', 'Cook Islands', '009', '061', 0, NULL, NULL, NULL),
(188, 'San José', 'Costa Rican', '188', 'Costa Rican colón (pl. colones)', 'CRC', 'céntimo', 'Republic of Costa Rica', 'CR', 'CRI', 'Costa Rica', '019', '013', 0, NULL, NULL, NULL),
(191, 'Zagreb', 'Croatian', '191', 'kuna (inv.)', 'HRK', 'lipa (inv.)', 'Republic of Croatia', 'HR', 'HRV', 'Croatia', '150', '039', 1, NULL, NULL, NULL),
(192, 'Havana', 'Cuban', '192', 'Cuban peso', 'CUP', 'centavo', 'Republic of Cuba', 'CU', 'CUB', 'Cuba', '019', '029', 0, NULL, NULL, NULL),
(196, 'Nicosia', 'Cypriot', '196', 'euro', 'EUR', 'cent', 'Republic of Cyprus', 'CY', 'CYP', 'Cyprus', '142', '145', 1, NULL, NULL, NULL),
(203, 'Prague', 'Czech', '203', 'Czech koruna (pl. koruny)', 'CZK', 'halér', 'Czech Republic', 'CZ', 'CZE', 'Czech Republic', '150', '151', 1, NULL, NULL, NULL),
(204, 'Porto Novo (BJ1)', 'Beninese', '204', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Benin', 'BJ', 'BEN', 'Benin', '002', '011', 0, NULL, NULL, NULL),
(208, 'Copenhagen', 'Danish', '208', 'Danish krone', 'DKK', 'øre (inv.)', 'Kingdom of Denmark', 'DK', 'DNK', 'Denmark', '150', '154', 1, NULL, NULL, NULL),
(212, 'Roseau', 'Dominican', '212', 'East Caribbean dollar', 'XCD', 'cent', 'Commonwealth of Dominica', 'DM', 'DMA', 'Dominica', '019', '029', 0, NULL, NULL, NULL),
(214, 'Santo Domingo', 'Dominican', '214', 'Dominican peso', 'DOP', 'centavo', 'Dominican Republic', 'DO', 'DOM', 'Dominican Republic', '019', '029', 0, NULL, NULL, NULL),
(218, 'Quito', 'Ecuadorian', '218', 'US dollar', 'USD', 'cent', 'Republic of Ecuador', 'EC', 'ECU', 'Ecuador', '019', '005', 0, NULL, NULL, NULL),
(222, 'San Salvador', 'Salvadoran', '222', 'Salvadorian colón (pl. colones)', 'SVC', 'centavo', 'Republic of El Salvador', 'SV', 'SLV', 'El Salvador', '019', '013', 0, NULL, NULL, NULL),
(226, 'Malabo', 'Equatorial Guinean', '226', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Equatorial Guinea', 'GQ', 'GNQ', 'Equatorial Guinea', '002', '017', 0, NULL, NULL, NULL),
(231, 'Addis Ababa', 'Ethiopian', '231', 'birr (inv.)', 'ETB', 'cent', 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', 'Ethiopia', '002', '014', 0, NULL, NULL, NULL),
(232, 'Asmara', 'Eritrean', '232', 'nakfa', 'ERN', 'cent', 'State of Eritrea', 'ER', 'ERI', 'Eritrea', '002', '014', 0, NULL, NULL, NULL),
(233, 'Tallinn', 'Estonian', '233', 'euro', 'EUR', 'cent', 'Republic of Estonia', 'EE', 'EST', 'Estonia', '150', '154', 1, NULL, NULL, NULL),
(234, 'Tórshavn', 'Faeroese', '234', 'Danish krone', 'DKK', 'øre (inv.)', 'Faeroe Islands', 'FO', 'FRO', 'Faroe Islands', '150', '154', 0, NULL, NULL, NULL),
(238, 'Stanley', 'Falkland Islander', '238', 'Falkland Islands pound', 'FKP', 'new penny', 'Falkland Islands', 'FK', 'FLK', 'Falkland Islands (Malvinas)', '019', '005', 0, NULL, NULL, NULL),
(239, 'King Edward Point (Grytviken)', 'of South Georgia and the South Sandwich Islands', '239', '', '', '', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', '', '', 0, NULL, NULL, NULL),
(242, 'Suva', 'Fijian', '242', 'Fiji dollar', 'FJD', 'cent', 'Republic of Fiji', 'FJ', 'FJI', 'Fiji', '009', '054', 0, NULL, NULL, NULL),
(246, 'Helsinki', 'Finnish', '246', 'euro', 'EUR', 'cent', 'Republic of Finland', 'FI', 'FIN', 'Finland', '150', '154', 1, NULL, NULL, NULL),
(248, 'Mariehamn', 'Åland Islander', '248', 'euro', 'EUR', 'cent', 'Åland Islands', 'AX', 'ALA', 'Åland Islands', '150', '154', 0, NULL, NULL, NULL),
(250, 'Paris', 'French', '250', 'euro', 'EUR', 'cent', 'French Republic', 'FR', 'FRA', 'France', '150', '155', 1, NULL, NULL, NULL),
(254, 'Cayenne', 'Guianese', '254', 'euro', 'EUR', 'cent', 'French Guiana', 'GF', 'GUF', 'French Guiana', '019', '005', 0, NULL, NULL, NULL),
(258, 'Papeete', 'Polynesian', '258', 'CFP franc', 'XPF', 'centime', 'French Polynesia', 'PF', 'PYF', 'French Polynesia', '009', '061', 0, NULL, NULL, NULL),
(260, 'Port-aux-Francais', 'of French Southern and Antarctic Lands', '260', 'euro', 'EUR', 'cent', 'French Southern and Antarctic Lands', 'TF', 'ATF', 'French Southern Territories', '', '', 0, NULL, NULL, NULL),
(262, 'Djibouti', 'Djiboutian', '262', 'Djibouti franc', 'DJF', '', 'Republic of Djibouti', 'DJ', 'DJI', 'Djibouti', '002', '014', 0, NULL, NULL, NULL),
(266, 'Libreville', 'Gabonese', '266', 'CFA franc (BEAC)', 'XAF', 'centime', 'Gabonese Republic', 'GA', 'GAB', 'Gabon', '002', '017', 0, NULL, NULL, NULL),
(268, 'Tbilisi', 'Georgian', '268', 'lari', 'GEL', 'tetri (inv.)', 'Georgia', 'GE', 'GEO', 'Georgia', '142', '145', 0, NULL, NULL, NULL),
(270, 'Banjul', 'Gambian', '270', 'dalasi (inv.)', 'GMD', 'butut', 'Republic of the Gambia', 'GM', 'GMB', 'Gambia', '002', '011', 0, NULL, NULL, NULL),
(275, NULL, 'Palestinian', '275', NULL, NULL, NULL, NULL, 'PS', 'PSE', 'Palestinian Territory, Occupied', '142', '145', 0, NULL, NULL, NULL),
(276, 'Berlin', 'German', '276', 'euro', 'EUR', 'cent', 'Federal Republic of Germany', 'DE', 'DEU', 'Germany', '150', '155', 1, NULL, NULL, NULL),
(288, 'Accra', 'Ghanaian', '288', 'Ghana cedi', 'GHS', 'pesewa', 'Republic of Ghana', 'GH', 'GHA', 'Ghana', '002', '011', 0, NULL, NULL, NULL),
(292, 'Gibraltar', 'Gibraltarian', '292', 'Gibraltar pound', 'GIP', 'penny', 'Gibraltar', 'GI', 'GIB', 'Gibraltar', '150', '039', 0, NULL, NULL, NULL),
(296, 'Tarawa', 'Kiribatian', '296', 'Australian dollar', 'AUD', 'cent', 'Republic of Kiribati', 'KI', 'KIR', 'Kiribati', '009', '057', 0, NULL, NULL, NULL),
(300, 'Athens', 'Greek', '300', 'euro', 'EUR', 'cent', 'Hellenic Republic', 'GR', 'GRC', 'Greece', '150', '039', 1, NULL, NULL, NULL),
(304, 'Nuuk', 'Greenlander', '304', 'Danish krone', 'DKK', 'øre (inv.)', 'Greenland', 'GL', 'GRL', 'Greenland', '019', '021', 0, NULL, NULL, NULL),
(308, 'St George’s', 'Grenadian', '308', 'East Caribbean dollar', 'XCD', 'cent', 'Grenada', 'GD', 'GRD', 'Grenada', '019', '029', 0, NULL, NULL, NULL),
(312, 'Basse Terre', 'Guadeloupean', '312', 'euro', 'EUR ', 'cent', 'Guadeloupe', 'GP', 'GLP', 'Guadeloupe', '019', '029', 0, NULL, NULL, NULL),
(316, 'Agaña (Hagåtña)', 'Guamanian', '316', 'US dollar', 'USD', 'cent', 'Territory of Guam', 'GU', 'GUM', 'Guam', '009', '057', 0, NULL, NULL, NULL),
(320, 'Guatemala City', 'Guatemalan', '320', 'quetzal (pl. quetzales)', 'GTQ', 'centavo', 'Republic of Guatemala', 'GT', 'GTM', 'Guatemala', '019', '013', 0, NULL, NULL, NULL),
(324, 'Conakry', 'Guinean', '324', 'Guinean franc', 'GNF', '', 'Republic of Guinea', 'GN', 'GIN', 'Guinea', '002', '011', 0, NULL, NULL, NULL),
(328, 'Georgetown', 'Guyanese', '328', 'Guyana dollar', 'GYD', 'cent', 'Cooperative Republic of Guyana', 'GY', 'GUY', 'Guyana', '019', '005', 0, NULL, NULL, NULL),
(332, 'Port-au-Prince', 'Haitian', '332', 'gourde', 'HTG', 'centime', 'Republic of Haiti', 'HT', 'HTI', 'Haiti', '019', '029', 0, NULL, NULL, NULL),
(334, 'Territory of Heard Island and McDonald Islands', 'of Territory of Heard Island and McDonald Islands', '334', '', '', '', 'Territory of Heard Island and McDonald Islands', 'HM', 'HMD', 'Heard Island and McDonald Islands', '', '', 0, NULL, NULL, NULL),
(336, 'Vatican City', 'of the Holy See/of the Vatican', '336', 'euro', 'EUR', 'cent', 'the Holy See/ Vatican City State', 'VA', 'VAT', 'Holy See (Vatican City State)', '150', '039', 0, NULL, NULL, NULL),
(340, 'Tegucigalpa', 'Honduran', '340', 'lempira', 'HNL', 'centavo', 'Republic of Honduras', 'HN', 'HND', 'Honduras', '019', '013', 0, NULL, NULL, NULL),
(344, '(HK3)', 'Hong Kong Chinese', '344', 'Hong Kong dollar', 'HKD', 'cent', 'Hong Kong Special Administrative Region of the People’s Republic of China (HK2)', 'HK', 'HKG', 'Hong Kong', '142', '030', 0, NULL, NULL, NULL),
(348, 'Budapest', 'Hungarian', '348', 'forint (inv.)', 'HUF', '(fillér (inv.))', 'Republic of Hungary', 'HU', 'HUN', 'Hungary', '150', '151', 1, NULL, NULL, NULL),
(352, 'Reykjavik', 'Icelander', '352', 'króna (pl. krónur)', 'ISK', '', 'Republic of Iceland', 'IS', 'ISL', 'Iceland', '150', '154', 1, NULL, NULL, NULL),
(356, 'New Delhi', 'Indian', '356', 'Indian rupee', 'INR', 'paisa', 'Republic of India', 'IN', 'IND', 'India', '142', '034', 0, NULL, NULL, NULL),
(360, 'Jakarta', 'Indonesian', '360', 'Indonesian rupiah (inv.)', 'IDR', 'sen (inv.)', 'Republic of Indonesia', 'ID', 'IDN', 'Indonesia', '142', '035', 0, NULL, NULL, NULL),
(364, 'Tehran', 'Iranian', '364', 'Iranian rial', 'IRR', '(dinar) (IR1)', 'Islamic Republic of Iran', 'IR', 'IRN', 'Iran, Islamic Republic of', '142', '034', 0, NULL, NULL, NULL),
(368, 'Baghdad', 'Iraqi', '368', 'Iraqi dinar', 'IQD', 'fils (inv.)', 'Republic of Iraq', 'IQ', 'IRQ', 'Iraq', '142', '145', 0, NULL, NULL, NULL),
(372, 'Dublin', 'Irish', '372', 'euro', 'EUR', 'cent', 'Ireland (IE1)', 'IE', 'IRL', 'Ireland', '150', '154', 1, NULL, NULL, NULL),
(376, '(IL1)', 'Israeli', '376', 'shekel', 'ILS', 'agora', 'State of Israel', 'IL', 'ISR', 'Israel', '142', '145', 0, NULL, NULL, NULL),
(380, 'Rome', 'Italian', '380', 'euro', 'EUR', 'cent', 'Italian Republic', 'IT', 'ITA', 'Italy', '150', '039', 1, NULL, NULL, NULL),
(384, 'Yamoussoukro (CI1)', 'Ivorian', '384', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Côte d’Ivoire', 'CI', 'CIV', 'Côte d\'Ivoire', '002', '011', 0, NULL, NULL, NULL),
(388, 'Kingston', 'Jamaican', '388', 'Jamaica dollar', 'JMD', 'cent', 'Jamaica', 'JM', 'JAM', 'Jamaica', '019', '029', 0, NULL, NULL, NULL),
(392, 'Tokyo', 'Japanese', '392', 'yen (inv.)', 'JPY', '(sen (inv.)) (JP1)', 'Japan', 'JP', 'JPN', 'Japan', '142', '030', 0, NULL, NULL, NULL),
(398, 'Astana', 'Kazakh', '398', 'tenge (inv.)', 'KZT', 'tiyn', 'Republic of Kazakhstan', 'KZ', 'KAZ', 'Kazakhstan', '142', '143', 0, NULL, NULL, NULL),
(400, 'Amman', 'Jordanian', '400', 'Jordanian dinar', 'JOD', '100 qirsh', 'Hashemite Kingdom of Jordan', 'JO', 'JOR', 'Jordan', '142', '145', 0, NULL, NULL, NULL),
(404, 'Nairobi', 'Kenyan', '404', 'Kenyan shilling', 'KES', 'cent', 'Republic of Kenya', 'KE', 'KEN', 'Kenya', '002', '014', 0, NULL, NULL, NULL),
(408, 'Pyongyang', 'North Korean', '408', 'North Korean won (inv.)', 'KPW', 'chun (inv.)', 'Democratic People’s Republic of Korea', 'KP', 'PRK', 'Korea, Democratic People\'s Republic of', '142', '030', 0, NULL, NULL, NULL),
(410, 'Seoul', 'South Korean', '410', 'South Korean won (inv.)', 'KRW', '(chun (inv.))', 'Republic of Korea', 'KR', 'KOR', 'Korea, Republic of', '142', '030', 0, NULL, NULL, NULL),
(414, 'Kuwait City', 'Kuwaiti', '414', 'Kuwaiti dinar', 'KWD', 'fils (inv.)', 'State of Kuwait', 'KW', 'KWT', 'Kuwait', '142', '145', 0, NULL, NULL, NULL),
(417, 'Bishkek', 'Kyrgyz', '417', 'som', 'KGS', 'tyiyn', 'Kyrgyz Republic', 'KG', 'KGZ', 'Kyrgyzstan', '142', '143', 0, NULL, NULL, NULL),
(418, 'Vientiane', 'Lao', '418', 'kip (inv.)', 'LAK', '(at (inv.))', 'Lao People’s Democratic Republic', 'LA', 'LAO', 'Lao People\'s Democratic Republic', '142', '035', 0, NULL, NULL, NULL),
(422, 'Beirut', 'Lebanese', '422', 'Lebanese pound', 'LBP', '(piastre)', 'Lebanese Republic', 'LB', 'LBN', 'Lebanon', '142', '145', 0, NULL, NULL, NULL),
(426, 'Maseru', 'Basotho', '426', 'loti (pl. maloti)', 'LSL', 'sente', 'Kingdom of Lesotho', 'LS', 'LSO', 'Lesotho', '002', '018', 0, NULL, NULL, NULL),
(428, 'Riga', 'Latvian', '428', 'euro', 'EUR', 'cent', 'Republic of Latvia', 'LV', 'LVA', 'Latvia', '150', '154', 1, NULL, NULL, NULL),
(430, 'Monrovia', 'Liberian', '430', 'Liberian dollar', 'LRD', 'cent', 'Republic of Liberia', 'LR', 'LBR', 'Liberia', '002', '011', 0, NULL, NULL, NULL),
(434, 'Tripoli', 'Libyan', '434', 'Libyan dinar', 'LYD', 'dirham', 'Socialist People’s Libyan Arab Jamahiriya', 'LY', 'LBY', 'Libya', '002', '015', 0, NULL, NULL, NULL),
(438, 'Vaduz', 'Liechtensteiner', '438', 'Swiss franc', 'CHF', 'centime', 'Principality of Liechtenstein', 'LI', 'LIE', 'Liechtenstein', '150', '155', 1, NULL, NULL, NULL),
(440, 'Vilnius', 'Lithuanian', '440', 'euro', 'EUR', 'cent', 'Republic of Lithuania', 'LT', 'LTU', 'Lithuania', '150', '154', 1, NULL, NULL, NULL),
(442, 'Luxembourg', 'Luxembourger', '442', 'euro', 'EUR', 'cent', 'Grand Duchy of Luxembourg', 'LU', 'LUX', 'Luxembourg', '150', '155', 1, NULL, NULL, NULL),
(446, 'Macao (MO3)', 'Macanese', '446', 'pataca', 'MOP', 'avo', 'Macao Special Administrative Region of the People’s Republic of China (MO2)', 'MO', 'MAC', 'Macao', '142', '030', 0, NULL, NULL, NULL),
(450, 'Antananarivo', 'Malagasy', '450', 'ariary', 'MGA', 'iraimbilanja (inv.)', 'Republic of Madagascar', 'MG', 'MDG', 'Madagascar', '002', '014', 0, NULL, NULL, NULL),
(454, 'Lilongwe', 'Malawian', '454', 'Malawian kwacha (inv.)', 'MWK', 'tambala (inv.)', 'Republic of Malawi', 'MW', 'MWI', 'Malawi', '002', '014', 0, NULL, NULL, NULL),
(458, 'Kuala Lumpur (MY1)', 'Malaysian', '458', 'ringgit (inv.)', 'MYR', 'sen (inv.)', 'Malaysia', 'MY', 'MYS', 'Malaysia', '142', '035', 0, NULL, NULL, NULL),
(462, 'Malé', 'Maldivian', '462', 'rufiyaa', 'MVR', 'laari (inv.)', 'Republic of Maldives', 'MV', 'MDV', 'Maldives', '142', '034', 0, NULL, NULL, NULL),
(466, 'Bamako', 'Malian', '466', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Mali', 'ML', 'MLI', 'Mali', '002', '011', 0, NULL, NULL, NULL),
(470, 'Valletta', 'Maltese', '470', 'euro', 'EUR', 'cent', 'Republic of Malta', 'MT', 'MLT', 'Malta', '150', '039', 1, NULL, NULL, NULL),
(474, 'Fort-de-France', 'Martinican', '474', 'euro', 'EUR', 'cent', 'Martinique', 'MQ', 'MTQ', 'Martinique', '019', '029', 0, NULL, NULL, NULL),
(478, 'Nouakchott', 'Mauritanian', '478', 'ouguiya', 'MRO', 'khoum', 'Islamic Republic of Mauritania', 'MR', 'MRT', 'Mauritania', '002', '011', 0, NULL, NULL, NULL),
(480, 'Port Louis', 'Mauritian', '480', 'Mauritian rupee', 'MUR', 'cent', 'Republic of Mauritius', 'MU', 'MUS', 'Mauritius', '002', '014', 0, NULL, NULL, NULL),
(484, 'Mexico City', 'Mexican', '484', 'Mexican peso', 'MXN', 'centavo', 'United Mexican States', 'MX', 'MEX', 'Mexico', '019', '013', 0, NULL, NULL, NULL),
(492, 'Monaco', 'Monegasque', '492', 'euro', 'EUR', 'cent', 'Principality of Monaco', 'MC', 'MCO', 'Monaco', '150', '155', 0, NULL, NULL, NULL),
(496, 'Ulan Bator', 'Mongolian', '496', 'tugrik', 'MNT', 'möngö (inv.)', 'Mongolia', 'MN', 'MNG', 'Mongolia', '142', '030', 0, NULL, NULL, NULL),
(498, 'Chisinau', 'Moldovan', '498', 'Moldovan leu (pl. lei)', 'MDL', 'ban', 'Republic of Moldova', 'MD', 'MDA', 'Moldova, Republic of', '150', '151', 0, NULL, NULL, NULL),
(499, 'Podgorica', 'Montenegrin', '499', 'euro', 'EUR', 'cent', 'Montenegro', 'ME', 'MNE', 'Montenegro', '150', '039', 0, NULL, NULL, NULL),
(500, 'Plymouth (MS2)', 'Montserratian', '500', 'East Caribbean dollar', 'XCD', 'cent', 'Montserrat', 'MS', 'MSR', 'Montserrat', '019', '029', 0, NULL, NULL, NULL),
(504, 'Rabat', 'Moroccan', '504', 'Moroccan dirham', 'MAD', 'centime', 'Kingdom of Morocco', 'MA', 'MAR', 'Morocco', '002', '015', 0, NULL, NULL, NULL),
(508, 'Maputo', 'Mozambican', '508', 'metical', 'MZN', 'centavo', 'Republic of Mozambique', 'MZ', 'MOZ', 'Mozambique', '002', '014', 0, NULL, NULL, NULL),
(512, 'Muscat', 'Omani', '512', 'Omani rial', 'OMR', 'baiza', 'Sultanate of Oman', 'OM', 'OMN', 'Oman', '142', '145', 0, NULL, NULL, NULL),
(516, 'Windhoek', 'Namibian', '516', 'Namibian dollar', 'NAD', 'cent', 'Republic of Namibia', 'NA', 'NAM', 'Namibia', '002', '018', 0, NULL, NULL, NULL),
(520, 'Yaren', 'Nauruan', '520', 'Australian dollar', 'AUD', 'cent', 'Republic of Nauru', 'NR', 'NRU', 'Nauru', '009', '057', 0, NULL, NULL, NULL),
(524, 'Kathmandu', 'Nepalese', '524', 'Nepalese rupee', 'NPR', 'paisa (inv.)', 'Nepal', 'NP', 'NPL', 'Nepal', '142', '034', 0, NULL, NULL, NULL),
(528, 'Amsterdam (NL2)', 'Dutch', '528', 'euro', 'EUR', 'cent', 'Kingdom of the Netherlands', 'NL', 'NLD', 'Netherlands', '150', '155', 1, NULL, NULL, NULL),
(531, 'Willemstad', 'Curaçaoan', '531', 'Netherlands Antillean guilder (CW1)', 'ANG', 'cent', 'Curaçao', 'CW', 'CUW', 'Curaçao', '019', '029', 0, NULL, NULL, NULL),
(533, 'Oranjestad', 'Aruban', '533', 'Aruban guilder', 'AWG', 'cent', 'Aruba', 'AW', 'ABW', 'Aruba', '019', '029', 0, NULL, NULL, NULL),
(534, 'Philipsburg', 'Sint Maartener', '534', 'Netherlands Antillean guilder (SX1)', 'ANG', 'cent', 'Sint Maarten', 'SX', 'SXM', 'Sint Maarten (Dutch part)', '019', '029', 0, NULL, NULL, NULL),
(535, NULL, 'of Bonaire, Sint Eustatius and Saba', '535', 'US dollar', 'USD', 'cent', NULL, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', '019', '029', 0, NULL, NULL, NULL),
(540, 'Nouméa', 'New Caledonian', '540', 'CFP franc', 'XPF', 'centime', 'New Caledonia', 'NC', 'NCL', 'New Caledonia', '009', '054', 0, NULL, NULL, NULL),
(548, 'Port Vila', 'Vanuatuan', '548', 'vatu (inv.)', 'VUV', '', 'Republic of Vanuatu', 'VU', 'VUT', 'Vanuatu', '009', '054', 0, NULL, NULL, NULL),
(554, 'Wellington', 'New Zealander', '554', 'New Zealand dollar', 'NZD', 'cent', 'New Zealand', 'NZ', 'NZL', 'New Zealand', '009', '053', 0, NULL, NULL, NULL),
(558, 'Managua', 'Nicaraguan', '558', 'córdoba oro', 'NIO', 'centavo', 'Republic of Nicaragua', 'NI', 'NIC', 'Nicaragua', '019', '013', 0, NULL, NULL, NULL),
(562, 'Niamey', 'Nigerien', '562', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Niger', 'NE', 'NER', 'Niger', '002', '011', 0, NULL, NULL, NULL),
(566, 'Abuja', 'Nigerian', '566', 'naira (inv.)', 'NGN', 'kobo (inv.)', 'Federal Republic of Nigeria', 'NG', 'NGA', 'Nigeria', '002', '011', 0, NULL, NULL, NULL),
(570, 'Alofi', 'Niuean', '570', 'New Zealand dollar', 'NZD', 'cent', 'Niue', 'NU', 'NIU', 'Niue', '009', '061', 0, NULL, NULL, NULL),
(574, 'Kingston', 'Norfolk Islander', '574', 'Australian dollar', 'AUD', 'cent', 'Territory of Norfolk Island', 'NF', 'NFK', 'Norfolk Island', '009', '053', 0, NULL, NULL, NULL),
(578, 'Oslo', 'Norwegian', '578', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'Kingdom of Norway', 'NO', 'NOR', 'Norway', '150', '154', 1, NULL, NULL, NULL),
(580, 'Saipan', 'Northern Mariana Islander', '580', 'US dollar', 'USD', 'cent', 'Commonwealth of the Northern Mariana Islands', 'MP', 'MNP', 'Northern Mariana Islands', '009', '057', 0, NULL, NULL, NULL),
(581, 'United States Minor Outlying Islands', 'of United States Minor Outlying Islands', '581', 'US dollar', 'USD', 'cent', 'United States Minor Outlying Islands', 'UM', 'UMI', 'United States Minor Outlying Islands', '', '', 0, NULL, NULL, NULL),
(583, 'Palikir', 'Micronesian', '583', 'US dollar', 'USD', 'cent', 'Federated States of Micronesia', 'FM', 'FSM', 'Micronesia, Federated States of', '009', '057', 0, NULL, NULL, NULL),
(584, 'Majuro', 'Marshallese', '584', 'US dollar', 'USD', 'cent', 'Republic of the Marshall Islands', 'MH', 'MHL', 'Marshall Islands', '009', '057', 0, NULL, NULL, NULL),
(585, 'Melekeok', 'Palauan', '585', 'US dollar', 'USD', 'cent', 'Republic of Palau', 'PW', 'PLW', 'Palau', '009', '057', 0, NULL, NULL, NULL),
(586, 'Islamabad', 'Pakistani', '586', 'Pakistani rupee', 'PKR', 'paisa', 'Islamic Republic of Pakistan', 'PK', 'PAK', 'Pakistan', '142', '034', 0, NULL, NULL, NULL),
(591, 'Panama City', 'Panamanian', '591', 'balboa', 'PAB', 'centésimo', 'Republic of Panama', 'PA', 'PAN', 'Panama', '019', '013', 0, NULL, NULL, NULL),
(598, 'Port Moresby', 'Papua New Guinean', '598', 'kina (inv.)', 'PGK', 'toea (inv.)', 'Independent State of Papua New Guinea', 'PG', 'PNG', 'Papua New Guinea', '009', '054', 0, NULL, NULL, NULL),
(600, 'Asunción', 'Paraguayan', '600', 'guaraní', 'PYG', 'céntimo', 'Republic of Paraguay', 'PY', 'PRY', 'Paraguay', '019', '005', 0, NULL, NULL, NULL),
(604, 'Lima', 'Peruvian', '604', 'new sol', 'PEN', 'céntimo', 'Republic of Peru', 'PE', 'PER', 'Peru', '019', '005', 0, NULL, NULL, NULL),
(608, 'Manila', 'Filipino', '608', 'Philippine peso', 'PHP', 'centavo', 'Republic of the Philippines', 'PH', 'PHL', 'Philippines', '142', '035', 0, NULL, NULL, NULL),
(612, 'Adamstown', 'Pitcairner', '612', 'New Zealand dollar', 'NZD', 'cent', 'Pitcairn Islands', 'PN', 'PCN', 'Pitcairn', '009', '061', 0, NULL, NULL, NULL),
(616, 'Warsaw', 'Polish', '616', 'zloty', 'PLN', 'grosz (pl. groszy)', 'Republic of Poland', 'PL', 'POL', 'Poland', '150', '151', 1, NULL, NULL, NULL),
(620, 'Lisbon', 'Portuguese', '620', 'euro', 'EUR', 'cent', 'Portuguese Republic', 'PT', 'PRT', 'Portugal', '150', '039', 1, NULL, NULL, NULL),
(624, 'Bissau', 'Guinea-Bissau national', '624', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Guinea-Bissau', 'GW', 'GNB', 'Guinea-Bissau', '002', '011', 0, NULL, NULL, NULL),
(626, 'Dili', 'East Timorese', '626', 'US dollar', 'USD', 'cent', 'Democratic Republic of East Timor', 'TL', 'TLS', 'Timor-Leste', '142', '035', 0, NULL, NULL, NULL),
(630, 'San Juan', 'Puerto Rican', '630', 'US dollar', 'USD', 'cent', 'Commonwealth of Puerto Rico', 'PR', 'PRI', 'Puerto Rico', '019', '029', 0, NULL, NULL, NULL),
(634, 'Doha', 'Qatari', '634', 'Qatari riyal', 'QAR', 'dirham', 'State of Qatar', 'QA', 'QAT', 'Qatar', '142', '145', 0, NULL, NULL, NULL),
(638, 'Saint-Denis', 'Reunionese', '638', 'euro', 'EUR', 'cent', 'Réunion', 'RE', 'REU', 'Réunion', '002', '014', 0, NULL, NULL, NULL),
(642, 'Bucharest', 'Romanian', '642', 'Romanian leu (pl. lei)', 'RON', 'ban (pl. bani)', 'Romania', 'RO', 'ROU', 'Romania', '150', '151', 1, NULL, NULL, NULL),
(643, 'Moscow', 'Russian', '643', 'Russian rouble', 'RUB', 'kopek', 'Russian Federation', 'RU', 'RUS', 'Russian Federation', '150', '151', 0, NULL, NULL, NULL),
(646, 'Kigali', 'Rwandan; Rwandese', '646', 'Rwandese franc', 'RWF', 'centime', 'Republic of Rwanda', 'RW', 'RWA', 'Rwanda', '002', '014', 0, NULL, NULL, NULL),
(652, 'Gustavia', 'of Saint Barthélemy', '652', 'euro', 'EUR', 'cent', 'Collectivity of Saint Barthélemy', 'BL', 'BLM', 'Saint Barthélemy', '019', '029', 0, NULL, NULL, NULL),
(654, 'Jamestown', 'Saint Helenian', '654', 'Saint Helena pound', 'SHP', 'penny', 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', '002', '011', 0, NULL, NULL, NULL),
(659, 'Basseterre', 'Kittsian; Nevisian', '659', 'East Caribbean dollar', 'XCD', 'cent', 'Federation of Saint Kitts and Nevis', 'KN', 'KNA', 'Saint Kitts and Nevis', '019', '029', 0, NULL, NULL, NULL),
(660, 'The Valley', 'Anguillan', '660', 'East Caribbean dollar', 'XCD', 'cent', 'Anguilla', 'AI', 'AIA', 'Anguilla', '019', '029', 0, NULL, NULL, NULL),
(662, 'Castries', 'Saint Lucian', '662', 'East Caribbean dollar', 'XCD', 'cent', 'Saint Lucia', 'LC', 'LCA', 'Saint Lucia', '019', '029', 0, NULL, NULL, NULL),
(663, 'Marigot', 'of Saint Martin', '663', 'euro', 'EUR', 'cent', 'Collectivity of Saint Martin', 'MF', 'MAF', 'Saint Martin (French part)', '019', '029', 0, NULL, NULL, NULL),
(666, 'Saint-Pierre', 'St-Pierrais; Miquelonnais', '666', 'euro', 'EUR', 'cent', 'Territorial Collectivity of Saint Pierre and Miquelon', 'PM', 'SPM', 'Saint Pierre and Miquelon', '019', '021', 0, NULL, NULL, NULL),
(670, 'Kingstown', 'Vincentian', '670', 'East Caribbean dollar', 'XCD', 'cent', 'Saint Vincent and the Grenadines', 'VC', 'VCT', 'Saint Vincent and the Grenadines', '019', '029', 0, NULL, NULL, NULL),
(674, 'San Marino', 'San Marinese', '674', 'euro', 'EUR ', 'cent', 'Republic of San Marino', 'SM', 'SMR', 'San Marino', '150', '039', 0, NULL, NULL, NULL),
(678, 'São Tomé', 'São Toméan', '678', 'dobra', 'STD', 'centavo', 'Democratic Republic of São Tomé and Príncipe', 'ST', 'STP', 'Sao Tome and Principe', '002', '017', 0, NULL, NULL, NULL),
(682, 'Riyadh', 'Saudi Arabian', '682', 'riyal', 'SAR', 'halala', 'Kingdom of Saudi Arabia', 'SA', 'SAU', 'Saudi Arabia', '142', '145', 0, NULL, NULL, NULL),
(686, 'Dakar', 'Senegalese', '686', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Senegal', 'SN', 'SEN', 'Senegal', '002', '011', 0, NULL, NULL, NULL),
(688, 'Belgrade', 'Serb', '688', 'Serbian dinar', 'RSD', 'para (inv.)', 'Republic of Serbia', 'RS', 'SRB', 'Serbia', '150', '039', 0, NULL, NULL, NULL),
(690, 'Victoria', 'Seychellois', '690', 'Seychelles rupee', 'SCR', 'cent', 'Republic of Seychelles', 'SC', 'SYC', 'Seychelles', '002', '014', 0, NULL, NULL, NULL),
(694, 'Freetown', 'Sierra Leonean', '694', 'leone', 'SLL', 'cent', 'Republic of Sierra Leone', 'SL', 'SLE', 'Sierra Leone', '002', '011', 0, NULL, NULL, NULL),
(702, 'Singapore', 'Singaporean', '702', 'Singapore dollar', 'SGD', 'cent', 'Republic of Singapore', 'SG', 'SGP', 'Singapore', '142', '035', 0, NULL, NULL, NULL),
(703, 'Bratislava', 'Slovak', '703', 'euro', 'EUR', 'cent', 'Slovak Republic', 'SK', 'SVK', 'Slovakia', '150', '151', 1, NULL, NULL, NULL),
(704, 'Hanoi', 'Vietnamese', '704', 'dong', 'VND', '(10 hào', 'Socialist Republic of Vietnam', 'VN', 'VNM', 'Viet Nam', '142', '035', 0, NULL, NULL, NULL),
(705, 'Ljubljana', 'Slovene', '705', 'euro', 'EUR', 'cent', 'Republic of Slovenia', 'SI', 'SVN', 'Slovenia', '150', '039', 1, NULL, NULL, NULL),
(706, 'Mogadishu', 'Somali', '706', 'Somali shilling', 'SOS', 'cent', 'Somali Republic', 'SO', 'SOM', 'Somalia', '002', '014', 0, NULL, NULL, NULL),
(710, 'Pretoria (ZA1)', 'South African', '710', 'rand', 'ZAR', 'cent', 'Republic of South Africa', 'ZA', 'ZAF', 'South Africa', '002', '018', 0, NULL, NULL, NULL),
(716, 'Harare', 'Zimbabwean', '716', 'Zimbabwe dollar (ZW1)', 'ZWL', 'cent', 'Republic of Zimbabwe', 'ZW', 'ZWE', 'Zimbabwe', '002', '014', 0, NULL, NULL, NULL),
(724, 'Madrid', 'Spaniard', '724', 'euro', 'EUR', 'cent', 'Kingdom of Spain', 'ES', 'ESP', 'Spain', '150', '039', 1, NULL, NULL, NULL),
(728, 'Juba', 'South Sudanese', '728', 'South Sudanese pound', 'SSP', 'piaster', 'Republic of South Sudan', 'SS', 'SSD', 'South Sudan', '002', '015', 0, NULL, NULL, NULL),
(729, 'Khartoum', 'Sudanese', '729', 'Sudanese pound', 'SDG', 'piastre', 'Republic of the Sudan', 'SD', 'SDN', 'Sudan', '002', '015', 0, NULL, NULL, NULL),
(732, 'Al aaiun', 'Sahrawi', '732', 'Moroccan dirham', 'MAD', 'centime', 'Western Sahara', 'EH', 'ESH', 'Western Sahara', '002', '015', 0, NULL, NULL, NULL),
(740, 'Paramaribo', 'Surinamese', '740', 'Surinamese dollar', 'SRD', 'cent', 'Republic of Suriname', 'SR', 'SUR', 'Suriname', '019', '005', 0, NULL, NULL, NULL),
(744, 'Longyearbyen', 'of Svalbard', '744', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'Svalbard and Jan Mayen', 'SJ', 'SJM', 'Svalbard and Jan Mayen', '150', '154', 0, NULL, NULL, NULL),
(748, 'Mbabane', 'Swazi', '748', 'lilangeni', 'SZL', 'cent', 'Kingdom of Swaziland', 'SZ', 'SWZ', 'Swaziland', '002', '018', 0, NULL, NULL, NULL),
(752, 'Stockholm', 'Swedish', '752', 'krona (pl. kronor)', 'SEK', 'öre (inv.)', 'Kingdom of Sweden', 'SE', 'SWE', 'Sweden', '150', '154', 1, NULL, NULL, NULL),
(756, 'Berne', 'Swiss', '756', 'Swiss franc', 'CHF', 'centime', 'Swiss Confederation', 'CH', 'CHE', 'Switzerland', '150', '155', 1, NULL, NULL, NULL),
(760, 'Damascus', 'Syrian', '760', 'Syrian pound', 'SYP', 'piastre', 'Syrian Arab Republic', 'SY', 'SYR', 'Syrian Arab Republic', '142', '145', 0, NULL, NULL, NULL),
(762, 'Dushanbe', 'Tajik', '762', 'somoni', 'TJS', 'diram', 'Republic of Tajikistan', 'TJ', 'TJK', 'Tajikistan', '142', '143', 0, NULL, NULL, NULL),
(764, 'Bangkok', 'Thai', '764', 'baht (inv.)', 'THB', 'satang (inv.)', 'Kingdom of Thailand', 'TH', 'THA', 'Thailand', '142', '035', 0, NULL, NULL, NULL),
(768, 'Lomé', 'Togolese', '768', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Togolese Republic', 'TG', 'TGO', 'Togo', '002', '011', 0, NULL, NULL, NULL),
(772, '(TK2)', 'Tokelauan', '772', 'New Zealand dollar', 'NZD', 'cent', 'Tokelau', 'TK', 'TKL', 'Tokelau', '009', '061', 0, NULL, NULL, NULL),
(776, 'Nuku’alofa', 'Tongan', '776', 'pa’anga (inv.)', 'TOP', 'seniti (inv.)', 'Kingdom of Tonga', 'TO', 'TON', 'Tonga', '009', '061', 0, NULL, NULL, NULL),
(780, 'Port of Spain', 'Trinidadian; Tobagonian', '780', 'Trinidad and Tobago dollar', 'TTD', 'cent', 'Republic of Trinidad and Tobago', 'TT', 'TTO', 'Trinidad and Tobago', '019', '029', 0, NULL, NULL, NULL),
(784, 'Abu Dhabi', 'Emirian', '784', 'UAE dirham', 'AED', 'fils (inv.)', 'United Arab Emirates', 'AE', 'ARE', 'United Arab Emirates', '142', '145', 0, NULL, NULL, NULL),
(788, 'Tunis', 'Tunisian', '788', 'Tunisian dinar', 'TND', 'millime', 'Republic of Tunisia', 'TN', 'TUN', 'Tunisia', '002', '015', 0, NULL, NULL, NULL),
(792, 'Ankara', 'Turk', '792', 'Turkish lira (inv.)', 'TRY', 'kurus (inv.)', 'Republic of Turkey', 'TR', 'TUR', 'Turkey', '142', '145', 0, NULL, NULL, NULL),
(795, 'Ashgabat', 'Turkmen', '795', 'Turkmen manat (inv.)', 'TMT', 'tenge (inv.)', 'Turkmenistan', 'TM', 'TKM', 'Turkmenistan', '142', '143', 0, NULL, NULL, NULL),
(796, 'Cockburn Town', 'Turks and Caicos Islander', '796', 'US dollar', 'USD', 'cent', 'Turks and Caicos Islands', 'TC', 'TCA', 'Turks and Caicos Islands', '019', '029', 0, NULL, NULL, NULL),
(798, 'Funafuti', 'Tuvaluan', '798', 'Australian dollar', 'AUD', 'cent', 'Tuvalu', 'TV', 'TUV', 'Tuvalu', '009', '061', 0, NULL, NULL, NULL),
(800, 'Kampala', 'Ugandan', '800', 'Uganda shilling', 'UGX', 'cent', 'Republic of Uganda', 'UG', 'UGA', 'Uganda', '002', '014', 0, NULL, NULL, NULL),
(804, 'Kiev', 'Ukrainian', '804', 'hryvnia', 'UAH', 'kopiyka', 'Ukraine', 'UA', 'UKR', 'Ukraine', '150', '151', 0, NULL, NULL, NULL),
(807, 'Skopje', 'of the former Yugoslav Republic of Macedonia', '807', 'denar (pl. denars)', 'MKD', 'deni (inv.)', 'the former Yugoslav Republic of Macedonia', 'MK', 'MKD', 'Macedonia, the former Yugoslav Republic of', '150', '039', 0, NULL, NULL, NULL),
(818, 'Cairo', 'Egyptian', '818', 'Egyptian pound', 'EGP', 'piastre', 'Arab Republic of Egypt', 'EG', 'EGY', 'Egypt', '002', '015', 0, NULL, NULL, NULL),
(826, 'London', 'British', '826', 'pound sterling', 'GBP', 'penny (pl. pence)', 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 'United Kingdom', '150', '154', 1, NULL, NULL, NULL),
(831, 'St Peter Port', 'of Guernsey', '831', 'Guernsey pound (GG2)', 'GGP (GG2)', 'penny (pl. pence)', 'Bailiwick of Guernsey', 'GG', 'GGY', 'Guernsey', '150', '154', 0, NULL, NULL, NULL),
(832, 'St Helier', 'of Jersey', '832', 'Jersey pound (JE2)', 'JEP (JE2)', 'penny (pl. pence)', 'Bailiwick of Jersey', 'JE', 'JEY', 'Jersey', '150', '154', 0, NULL, NULL, NULL),
(833, 'Douglas', 'Manxman; Manxwoman', '833', 'Manx pound (IM2)', 'IMP (IM2)', 'penny (pl. pence)', 'Isle of Man', 'IM', 'IMN', 'Isle of Man', '150', '154', 0, NULL, NULL, NULL),
(834, 'Dodoma (TZ1)', 'Tanzanian', '834', 'Tanzanian shilling', 'TZS', 'cent', 'United Republic of Tanzania', 'TZ', 'TZA', 'Tanzania, United Republic of', '002', '014', 0, NULL, NULL, NULL),
(840, 'Washington DC', 'American', '840', 'US dollar', 'USD', 'cent', 'United States of America', 'US', 'USA', 'United States', '019', '021', 0, NULL, NULL, NULL),
(850, 'Charlotte Amalie', 'US Virgin Islander', '850', 'US dollar', 'USD', 'cent', 'United States Virgin Islands', 'VI', 'VIR', 'Virgin Islands, U.S.', '019', '029', 0, NULL, NULL, NULL),
(854, 'Ouagadougou', 'Burkinabe', '854', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Burkina Faso', 'BF', 'BFA', 'Burkina Faso', '002', '011', 0, NULL, NULL, NULL),
(858, 'Montevideo', 'Uruguayan', '858', 'Uruguayan peso', 'UYU', 'centésimo', 'Eastern Republic of Uruguay', 'UY', 'URY', 'Uruguay', '019', '005', 0, NULL, NULL, NULL),
(860, 'Tashkent', 'Uzbek', '860', 'sum (inv.)', 'UZS', 'tiyin (inv.)', 'Republic of Uzbekistan', 'UZ', 'UZB', 'Uzbekistan', '142', '143', 0, NULL, NULL, NULL),
(862, 'Caracas', 'Venezuelan', '862', 'bolívar fuerte (pl. bolívares fuertes)', 'VEF', 'céntimo', 'Bolivarian Republic of Venezuela', 'VE', 'VEN', 'Venezuela, Bolivarian Republic of', '019', '005', 0, NULL, NULL, NULL),
(876, 'Mata-Utu', 'Wallisian; Futunan; Wallis and Futuna Islander', '876', 'CFP franc', 'XPF', 'centime', 'Wallis and Futuna', 'WF', 'WLF', 'Wallis and Futuna', '009', '061', 0, NULL, NULL, NULL),
(882, 'Apia', 'Samoan', '882', 'tala (inv.)', 'WST', 'sene (inv.)', 'Independent State of Samoa', 'WS', 'WSM', 'Samoa', '009', '061', 0, NULL, NULL, NULL),
(887, 'San’a', 'Yemenite', '887', 'Yemeni rial', 'YER', 'fils (inv.)', 'Republic of Yemen', 'YE', 'YEM', 'Yemen', '142', '145', 0, NULL, NULL, NULL),
(894, 'Lusaka', 'Zambian', '894', 'Zambian kwacha (inv.)', 'ZMW', 'ngwee (inv.)', 'Republic of Zambia', 'ZM', 'ZMB', 'Zambia', '002', '014', 0, NULL, NULL, NULL);

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `decimal_place` int(11) NOT NULL,
  `value` double(15,8) NOT NULL,
  `decimal_point` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `thousand_point` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `currencies` (`id`, `title`, `symbol_left`, `symbol_right`, `code`, `decimal_place`, `value`, `decimal_point`, `thousand_point`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'U.S. Dollar', '$', '', 'USD', 2, 1.00000000, '.', ',', 1, '2013-11-29 19:51:38', '2013-11-29 19:51:38', NULL),
(2, 'Euro', '€', '', 'EUR', 2, 0.74970001, '.', ',', 1, '2013-11-29 19:51:38', '2013-11-29 19:51:38', NULL),
(3, 'Pound Sterling', '£', '', 'GBP', 2, 0.62220001, '.', ',', 1, '2013-11-29 19:51:38', '2013-11-29 19:51:38', NULL),
(4, 'Australian Dollar', '$', '', 'AUD', 2, 0.94790000, '.', ',', 1, '2013-11-29 19:51:38', '2013-11-29 19:51:38', NULL),
(5, 'Canadian Dollar', '$', '', 'CAD', 2, 0.98500001, '.', ',', 1, '2013-11-29 19:51:38', '2013-11-29 19:51:38', NULL);

DROP TABLE IF EXISTS `expositions`;
CREATE TABLE `expositions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `venue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_id` int(11) NOT NULL,
  `booking_start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `booking_end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_live` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `expositions` (`id`, `title`, `image`, `description`, `start_date`, `end_date`, `venue_name`, `address_id`, `booking_start_date`, `booking_end_date`, `is_live`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', '', NULL, '2016-08-12 18:28:56', '2016-01-03 00:00:00', '04 Lake View Drive', 5, '2016-03-26 00:00:00', '2015-10-24 00:00:00', 1, 0, NULL, NULL, NULL),
(2, 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', '', NULL, '2016-08-12 18:28:56', '2016-04-02 00:00:00', '89 Ronald Regan Street', 34, '2016-06-22 00:00:00', '2016-07-12 00:00:00', 1, 0, NULL, NULL, NULL),
(3, 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', '', NULL, '2016-08-12 18:28:56', '2016-03-05 00:00:00', '29705 Schmedeman Circle', 20, '2016-01-12 00:00:00', '2016-01-03 00:00:00', 1, 0, NULL, NULL, NULL),
(4, 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', '', NULL, '2016-08-12 18:28:56', '2015-09-15 00:00:00', '3 Karstens Court', 34, '2016-02-25 00:00:00', '2016-07-20 00:00:00', 1, 0, NULL, NULL, NULL),
(5, 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', '', NULL, '2016-08-12 18:28:56', '2015-10-03 00:00:00', '95508 Towne Lane', 39, '2015-09-01 00:00:00', '2015-12-17 00:00:00', 1, 0, NULL, NULL, NULL),
(6, 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', '', NULL, '2016-08-12 18:28:56', '2016-07-01 00:00:00', '1838 Lakewood Gardens Junction', 19, '2015-08-12 00:00:00', '2015-12-31 00:00:00', 1, 0, NULL, NULL, NULL),
(7, 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus', '', NULL, '2016-08-12 18:28:56', '2016-06-25 00:00:00', '2 Buena Vista Court', 14, '2015-10-23 00:00:00', '2016-04-02 00:00:00', 1, 0, NULL, NULL, NULL),
(8, 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis', '', NULL, '2016-08-12 18:28:56', '2016-07-01 00:00:00', '4 Canary Avenue', 26, '2015-08-29 00:00:00', '2016-02-09 00:00:00', 1, 0, NULL, NULL, NULL),
(9, 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '', NULL, '2016-08-12 18:28:56', '2016-06-10 00:00:00', '5572 Mcbride Trail', 31, '2015-09-19 00:00:00', '2015-09-27 00:00:00', 1, 0, NULL, NULL, NULL),
(10, 'sapien varius ut blandit non interdum in ante vestibulum ante', '', NULL, '2016-08-12 18:28:56', '2016-01-06 00:00:00', '19285 Kinsman Terrace', 30, '2015-09-05 00:00:00', '2015-11-08 00:00:00', 1, 0, NULL, NULL, NULL),
(11, 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', '', NULL, '2016-08-12 18:28:56', '2016-01-01 00:00:00', '904 Annamark Lane', 43, '2016-03-29 00:00:00', '2016-04-21 00:00:00', 1, 0, NULL, NULL, NULL),
(12, 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', '', NULL, '2016-08-12 18:28:56', '2015-08-11 00:00:00', '27 Derek Alley', 13, '2015-10-01 00:00:00', '2016-04-29 00:00:00', 1, 0, NULL, NULL, NULL),
(13, 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque', '', NULL, '2016-08-12 18:28:56', '2016-07-06 00:00:00', '4 Columbus Circle', 23, '2015-08-25 00:00:00', '2016-03-22 00:00:00', 1, 0, NULL, NULL, NULL),
(14, 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', '', NULL, '2016-08-12 18:28:56', '2016-01-10 00:00:00', '3 Spohn Alley', 5, '2015-09-30 00:00:00', '2015-12-06 00:00:00', 1, 0, NULL, NULL, NULL),
(15, 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', '', NULL, '2016-08-12 18:28:56', '2015-11-16 00:00:00', '00 Hagan Street', 43, '2016-05-30 00:00:00', '2015-10-19 00:00:00', 1, 0, NULL, NULL, NULL),
(16, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', '', NULL, '2016-08-12 18:28:56', '2016-05-04 00:00:00', '2 Fordem Park', 13, '2016-05-23 00:00:00', '2015-11-30 00:00:00', 1, 0, NULL, NULL, NULL),
(17, 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', '', NULL, '2016-08-12 18:28:56', '2016-05-24 00:00:00', '28 Swallow Center', 46, '2016-07-27 00:00:00', '2015-11-25 00:00:00', 1, 0, NULL, NULL, NULL),
(18, 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', '', NULL, '2016-08-12 18:28:56', '2016-01-26 00:00:00', '68 Service Trail', 15, '2016-02-01 00:00:00', '2015-12-17 00:00:00', 1, 0, NULL, NULL, NULL),
(19, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '', NULL, '2016-08-12 18:28:56', '2015-09-21 00:00:00', '40141 Jay Road', 13, '2015-10-25 00:00:00', '2015-11-01 00:00:00', 1, 0, NULL, NULL, NULL),
(20, 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', '', NULL, '2016-08-12 18:28:56', '2015-11-15 00:00:00', '856 Cardinal Center', 42, '2015-12-14 00:00:00', '2016-07-22 00:00:00', 1, 0, NULL, NULL, NULL),
(21, 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', '', NULL, '2016-02-15 00:00:00', '2016-04-01 00:00:00', '5663 Logan Place', 28, '2016-03-23 00:00:00', '2016-06-07 00:00:00', 0, 0, NULL, NULL, NULL),
(22, 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac', '', NULL, '2015-09-04 00:00:00', '2016-07-20 00:00:00', '282 Fordem Pass', 12, '2015-11-27 00:00:00', '2016-08-02 00:00:00', 0, 0, NULL, NULL, NULL),
(23, 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', '', NULL, '2016-06-23 00:00:00', '2016-05-14 00:00:00', '7105 Fulton Avenue', 15, '2016-05-10 00:00:00', '2016-03-02 00:00:00', 0, 0, NULL, NULL, NULL),
(24, 'dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', '', NULL, '2016-08-01 00:00:00', '2015-08-12 00:00:00', '13 Hanson Hill', 16, '2016-04-04 00:00:00', '2015-09-22 00:00:00', 0, 0, NULL, NULL, NULL),
(25, 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', '', NULL, '2016-06-04 00:00:00', '2016-01-06 00:00:00', '6 Raven Plaza', 1, '2016-03-07 00:00:00', '2016-07-03 00:00:00', 0, 0, NULL, NULL, NULL),
(26, 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', '', NULL, '2016-05-18 00:00:00', '2016-07-07 00:00:00', '0 Blue Bill Park Place', 41, '2016-06-11 00:00:00', '2016-03-30 00:00:00', 0, 0, NULL, NULL, NULL),
(27, 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros', '', NULL, '2015-11-02 00:00:00', '2015-12-24 00:00:00', '47800 Birchwood Trail', 23, '2016-03-17 00:00:00', '2015-12-16 00:00:00', 0, 0, NULL, NULL, NULL),
(28, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget', '', NULL, '2015-12-26 00:00:00', '2016-07-16 00:00:00', '163 Northwestern Circle', 42, '2016-05-21 00:00:00', '2015-09-23 00:00:00', 0, 0, NULL, NULL, NULL),
(29, 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', '', NULL, '2016-04-22 00:00:00', '2015-12-26 00:00:00', '90504 Aberg Circle', 25, '2016-03-07 00:00:00', '2016-04-21 00:00:00', 0, 0, NULL, NULL, NULL),
(30, 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', '', NULL, '2016-05-08 00:00:00', '2016-01-12 00:00:00', '3 Ronald Regan Road', 10, '2015-08-11 00:00:00', '2016-08-10 00:00:00', 0, 0, NULL, NULL, NULL),
(31, 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '', NULL, '2015-12-03 00:00:00', '2015-12-03 00:00:00', '31022 Hoffman Point', 36, '2015-11-01 00:00:00', '2016-04-15 00:00:00', 0, 0, NULL, NULL, NULL),
(32, 'tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', '', NULL, '2015-12-05 00:00:00', '2015-11-23 00:00:00', '999 Beilfuss Street', 23, '2016-06-28 00:00:00', '2016-04-12 00:00:00', 0, 0, NULL, NULL, NULL),
(33, 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices', '', NULL, '2016-05-20 00:00:00', '2015-12-29 00:00:00', '5 Barby Court', 49, '2016-01-12 00:00:00', '2016-07-05 00:00:00', 0, 0, NULL, NULL, NULL),
(34, 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero', '', NULL, '2015-10-01 00:00:00', '2015-12-04 00:00:00', '315 Bay Point', 35, '2016-05-29 00:00:00', '2016-07-19 00:00:00', 0, 0, NULL, NULL, NULL),
(35, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', '', NULL, '2016-07-15 00:00:00', '2016-07-31 00:00:00', '92158 Westridge Alley', 32, '2016-08-09 00:00:00', '2016-03-22 00:00:00', 0, 0, NULL, NULL, NULL),
(36, 'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', '', NULL, '2016-06-24 00:00:00', '2015-09-18 00:00:00', '4072 Elgar Lane', 11, '2016-04-17 00:00:00', '2016-04-25 00:00:00', 0, 0, NULL, NULL, NULL),
(37, 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', '', NULL, '2015-11-22 00:00:00', '2016-03-15 00:00:00', '5 Dayton Place', 44, '2015-11-30 00:00:00', '2016-07-05 00:00:00', 0, 0, NULL, NULL, NULL),
(38, 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', '', NULL, '2015-12-20 00:00:00', '2016-04-16 00:00:00', '974 Judy Junction', 27, '2015-09-06 00:00:00', '2015-12-05 00:00:00', 0, 0, NULL, NULL, NULL),
(39, 'sagittis dui vel nisl duis ac nibh fusce lacus purus', '', NULL, '2015-12-18 00:00:00', '2015-08-14 00:00:00', '612 Pond Trail', 12, '2015-08-12 00:00:00', '2016-01-15 00:00:00', 0, 0, NULL, NULL, NULL),
(40, 'lacus at velit vivamus vel nulla eget eros elementum pellentesque', '', NULL, '2015-11-18 00:00:00', '2016-06-23 00:00:00', '899 Forest Alley', 27, '2015-11-05 00:00:00', '2016-06-08 00:00:00', 0, 0, NULL, NULL, NULL),
(41, 'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', '', NULL, '2016-08-02 00:00:00', '2016-02-01 00:00:00', '0473 Sherman Pass', 41, '2016-02-27 00:00:00', '2015-11-02 00:00:00', 0, 0, NULL, NULL, NULL),
(42, 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', '', NULL, '2016-05-31 00:00:00', '2016-06-24 00:00:00', '51 Evergreen Terrace', 33, '2015-10-03 00:00:00', '2016-06-30 00:00:00', 0, 0, NULL, NULL, NULL),
(43, 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', '', NULL, '2016-05-23 00:00:00', '2016-04-27 00:00:00', '221 Cardinal Alley', 50, '2015-11-17 00:00:00', '2016-04-06 00:00:00', 0, 0, NULL, NULL, NULL),
(44, 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', '', NULL, '2016-07-15 00:00:00', '2016-07-26 00:00:00', '580 New Castle Court', 25, '2016-07-25 00:00:00', '2016-08-09 00:00:00', 0, 0, NULL, NULL, NULL),
(45, 'accumsan felis ut at dolor quis odio consequat varius integer ac leo', '', NULL, '2016-05-20 00:00:00', '2015-08-26 00:00:00', '7 Quincy Terrace', 34, '2016-05-28 00:00:00', '2016-08-09 00:00:00', 0, 0, NULL, NULL, NULL),
(46, 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', '', NULL, '2015-09-26 00:00:00', '2016-07-18 00:00:00', '3570 Lerdahl Court', 4, '2015-12-29 00:00:00', '2016-05-28 00:00:00', 0, 0, NULL, NULL, NULL),
(47, 'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '', NULL, '2016-07-26 00:00:00', '2015-12-03 00:00:00', '0507 Hanover Way', 50, '2015-12-16 00:00:00', '2016-02-17 00:00:00', 0, 0, NULL, NULL, NULL),
(48, 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam', '', NULL, '2016-05-24 00:00:00', '2015-09-16 00:00:00', '985 Northport Hill', 34, '2016-02-17 00:00:00', '2015-11-01 00:00:00', 0, 0, NULL, NULL, NULL),
(49, 'non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet', '', NULL, '2015-08-16 00:00:00', '2016-06-05 00:00:00', '43 Corscot Plaza', 46, '2016-01-28 00:00:00', '2015-12-09 00:00:00', 0, 0, NULL, NULL, NULL),
(50, 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit', '', NULL, '2015-12-25 00:00:00', '2015-12-21 00:00:00', '2711 Melody Park', 3, '2016-03-12 00:00:00', '2016-06-22 00:00:00', 0, 0, NULL, NULL, NULL);

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_31_162633_scaffoldinterfaces', 1),
('2016_08_08_053315_expositions', 2),
('2016_08_08_053718_timezones', 3),
('2016_08_08_053924_currencies', 4),
('2016_08_08_054050_date_formats', 5),
('2016_08_08_054937_addresses', 5),
('2016_08_08_055525_accounts', 5),
('2016_08_08_055920_accounts', 6),
('2016_08_08_061011_organizers', 6),
('2016_08_08_061218_organizations', 6),
('2016_08_08_061514_stands', 6),
('2016_08_08_061940_orders', 7),
('2016_08_09_075321_create_expositions_table', 8),
('2016_08_09_083922_create_stands_table', 9),
('2016_08_09_085046_create_organizations_table', 10),
('2016_08_09_092459_create_orders_table', 11),
('2016_08_09_093001_create_orders_table', 12),
('2016_08_09_095521_create_organization_stands_table', 13),
('2016_08_09_095846_create_organizationstands_table', 14),
('2016_08_09_113107_create_organization_stands_table', 15);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exposition_id` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `is_payment_completed` tinyint(1) NOT NULL DEFAULT '0',
  `payment_transaction_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `stand_id` int(11) NOT NULL,
  `is_cancelled` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `organizations` (`id`, `name`, `email`, `phone`, `logo`, `admin_name`, `admin_email`, `created_at`, `updated_at`, `deleted_at`, `is_deleted`) VALUES
(1, 'Plajo', 'hburton0@multiply.com', '420-(262)713-1431', '/images/apple.png', 'Harry Burton', 'hburton0@goo.ne.jp', NULL, NULL, NULL, 0),
(2, 'Rhybox', 'chart1@miibeian.gov.cn', '1-(800)120-3488', '/images/apple.png', 'Clarence Hart', 'chart1@java.com', NULL, NULL, NULL, 0),
(3, 'Flipstorm', 'wmontgomery2@yahoo.co.jp', '977-(989)680-1539', '/images/apple.png', 'Wayne Montgomery', 'wmontgomery2@bloglines.com', NULL, NULL, NULL, 0),
(4, 'Rhyzio', 'khughes3@webmd.com', '7-(900)363-0869', '/images/apple.png', 'Kathy Hughes', 'khughes3@is.gd', NULL, NULL, NULL, 0),
(5, 'Jabberstorm', 'hford4@a8.net', '371-(291)422-0533', '/images/apple.png', 'Howard Ford', 'hford4@nbcnews.com', NULL, NULL, NULL, 0),
(6, 'Ooba', 'khudson5@delicious.com', '52-(946)371-5034', '/images/apple.png', 'Karen Hudson', 'khudson5@ebay.com', NULL, NULL, NULL, 0),
(7, 'Talane', 'swheeler6@ehow.com', '261-(642)982-1866', '/images/apple.png', 'Sara Wheeler', 'swheeler6@princeton.edu', NULL, NULL, NULL, 0),
(8, 'Wikizz', 'ptorres7@bravesites.com', '57-(958)762-3431', '/images/apple.png', 'Phyllis Torres', 'ptorres7@nytimes.com', NULL, NULL, NULL, 0),
(9, 'Photolist', 'egilbert8@plala.or.jp', '62-(147)308-1605', '/images/apple.png', 'Evelyn Gilbert', 'egilbert8@ebay.co.uk', NULL, NULL, NULL, 0),
(10, 'Yotz', 'cjones9@apache.org', '1-(806)306-0889', '/images/apple.png', 'Christopher Jones', 'cjones9@people.com.cn', NULL, NULL, NULL, 0),
(11, 'Minyx', 'eandersona@businessinsider.com', '7-(798)371-0662', '/images/apple.png', 'Eric Anderson', 'eandersona@washington.edu', NULL, NULL, NULL, 0),
(12, 'Cogilith', 'jwoodb@furl.net', '63-(942)512-9765', '/images/apple.png', 'Jeffrey Wood', 'jwoodb@nih.gov', NULL, NULL, NULL, 0),
(13, 'Demivee', 'nphillipsc@foxnews.com', '33-(472)838-3888', '/images/apple.png', 'Nicole Phillips', 'nphillipsc@google.com.br', NULL, NULL, NULL, 0),
(14, 'Livepath', 'llittled@oaic.gov.au', '51-(694)606-3728', '/images/apple.png', 'Larry Little', 'llittled@blog.com', NULL, NULL, NULL, 0),
(15, 'Jazzy', 'jstonee@salon.com', '46-(827)208-4063', '/images/apple.png', 'Judith Stone', 'jstonee@rakuten.co.jp', NULL, NULL, NULL, 0),
(16, 'Topicblab', 'dromerof@ezinearticles.com', '62-(829)842-0524', '/images/apple.png', 'Douglas Romero', 'dromerof@joomla.org', NULL, NULL, NULL, 0),
(17, 'Oyope', 'bpowellg@blogtalkradio.com', '86-(197)526-3096', '/images/apple.png', 'Barbara Powell', 'bpowellg@examiner.com', NULL, NULL, NULL, 0),
(18, 'Fatz', 'bandrewsh@disqus.com', '31-(365)397-0964', '/images/apple.png', 'Bonnie Andrews', 'bandrewsh@flickr.com', NULL, NULL, NULL, 0),
(19, 'Snaptags', 'cgilberti@google.cn', '7-(549)858-1567', '/images/apple.png', 'Carol Gilbert', 'cgilberti@dell.com', NULL, NULL, NULL, 0),
(20, 'Flashpoint', 'bbishopj@dailymotion.com', '242-(609)909-3262', '/images/apple.png', 'Benjamin Bishop', 'bbishopj@wsj.com', NULL, NULL, NULL, 0),
(21, 'Innojam', 'jgreenek@imgur.com', '30-(805)480-7938', '/images/hp.jpg', 'Johnny Greene', 'jgreenek@chronoengine.com', NULL, NULL, NULL, 0),
(22, 'Fivespan', 'jstephensl@eepurl.com', '49-(352)816-6205', '/images/hp.jpg', 'Justin Stephens', 'jstephensl@ed.gov', NULL, NULL, NULL, 0),
(23, 'Innotype', 'scookm@usnews.com', '66-(847)483-7694', '/images/hp.jpg', 'Sean Cook', 'scookm@slashdot.org', NULL, NULL, NULL, 0),
(24, 'Devcast', 'fmillsn@earthlink.net', '33-(968)504-1324', '/images/hp.jpg', 'Frank Mills', 'fmillsn@pagesperso-orange.fr', NULL, NULL, NULL, 0),
(25, 'Quatz', 'nsanderso@google.com.hk', '355-(142)318-7531', '/images/hp.jpg', 'Nicholas Sanders', 'nsanderso@ycombinator.com', NULL, NULL, NULL, 0),
(26, 'Devpoint', 'rgrahamp@webs.com', '45-(529)378-9085', '/images/hp.jpg', 'Robin Graham', 'rgrahamp@netvibes.com', NULL, NULL, NULL, 0),
(27, 'Thoughtbridge', 'trogersq@w3.org', '55-(692)950-7261', '/images/hp.jpg', 'Tina Rogers', 'trogersq@smugmug.com', NULL, NULL, NULL, 0),
(28, 'Livepath', 'dnelsonr@ustream.tv', '234-(529)666-7305', '/images/hp.jpg', 'Doris Nelson', 'dnelsonr@ifeng.com', NULL, NULL, NULL, 0),
(29, 'Voonix', 'karmstrongs@sina.com.cn', '380-(974)356-5089', '/images/hp.jpg', 'Kathleen Armstrong', 'karmstrongs@com.com', NULL, NULL, NULL, 0),
(30, 'Jetwire', 'mgonzalezt@blogspot.com', '63-(779)603-0047', '/images/hp.jpg', 'Marilyn Gonzalez', 'mgonzalezt@reuters.com', NULL, NULL, NULL, 0),
(31, 'Abata', 'ghillu@cbc.ca', '86-(312)447-3458', '/images/hp.jpg', 'George Hill', 'ghillu@webmd.com', NULL, NULL, NULL, 0),
(32, 'Kazu', 'jwheelerv@yolasite.com', '86-(125)689-1256', '/images/hp.jpg', 'Jason Wheeler', 'jwheelerv@netvibes.com', NULL, NULL, NULL, 0),
(33, 'Flashset', 'mwebbw@sourceforge.net', '598-(943)656-7386', '/images/hp.jpg', 'Martha Webb', 'mwebbw@photobucket.com', NULL, NULL, NULL, 0),
(34, 'Eadel', 'bcolex@tinyurl.com', '258-(949)109-0663', '/images/hp.jpg', 'Brandon Cole', 'bcolex@wix.com', NULL, NULL, NULL, 0),
(35, 'Muxo', 'sduncany@ucoz.com', '62-(822)124-9154', '/images/hp.jpg', 'Sharon Duncan', 'sduncany@chronoengine.com', NULL, NULL, NULL, 0),
(36, 'Tagpad', 'evasquezz@businessinsider.com', '60-(332)586-6114', '/images/hp.jpg', 'Emily Vasquez', 'evasquezz@studiopress.com', NULL, NULL, NULL, 0),
(37, 'Tagpad', 'gcox10@nationalgeographic.com', '55-(436)453-9505', '/images/hp.jpg', 'George Cox', 'gcox10@mashable.com', NULL, NULL, NULL, 0),
(38, 'Jetpulse', 'ewilson11@dailymotion.com', '353-(576)286-7446', '/images/hp.jpg', 'Ernest Wilson', 'ewilson11@amazon.com', NULL, NULL, NULL, 0),
(39, 'Avamm', 'gjames12@devhub.com', '86-(274)853-3492', '/images/hp.jpg', 'Gerald James', 'gjames12@disqus.com', NULL, NULL, NULL, 0),
(40, 'Mydeo', 'aperkins13@wufoo.com', '81-(363)919-5942', '/images/hp.jpg', 'Anne Perkins', 'aperkins13@reddit.com', NULL, NULL, NULL, 0),
(41, 'Quinu', 'atucker14@marketwatch.com', '351-(342)907-7555', '/images/adidas.jpg', 'Annie Tucker', 'atucker14@webs.com', NULL, NULL, NULL, 0),
(42, 'Skyvu', 'dcastillo15@aboutads.info', '86-(427)573-2297', '/images/adidas.jpg', 'Doris Castillo', 'dcastillo15@umich.edu', NULL, NULL, NULL, 0),
(43, 'Kwilith', 'bthomas16@microsoft.com', '86-(743)586-7919', '/images/adidas.jpg', 'Bonnie Thomas', 'bthomas16@globo.com', NULL, NULL, NULL, 0),
(44, 'Mydeo', 'ssimmons17@marketwatch.com', '48-(716)123-9421', '/images/adidas.jpg', 'Samuel Simmons', 'ssimmons17@a8.net', NULL, NULL, NULL, 0),
(45, 'Yozio', 'dmontgomery18@yelp.com', '62-(974)899-5989', '/images/adidas.jpg', 'Diane Montgomery', 'dmontgomery18@vistaprint.com', NULL, NULL, NULL, 0),
(46, 'Thoughtstorm', 'fweaver19@google.com.hk', '58-(538)784-1727', '/images/adidas.jpg', 'Frances Weaver', 'fweaver19@chicagotribune.com', NULL, NULL, NULL, 0),
(47, 'Skipfire', 'rfowler1a@microsoft.com', '357-(166)961-1099', '/images/adidas.jpg', 'Richard Fowler', 'rfowler1a@sfgate.com', NULL, NULL, NULL, 0),
(48, 'Jayo', 'ncoleman1b@hostgator.com', '86-(702)208-9600', '/images/adidas.jpg', 'Nancy Coleman', 'ncoleman1b@forbes.com', NULL, NULL, NULL, 0),
(49, 'Pixonyx', 'mnguyen1c@amazon.co.jp', '963-(902)469-2920', '/images/adidas.jpg', 'Melissa Nguyen', 'mnguyen1c@bbb.org', NULL, NULL, NULL, 0),
(50, 'Thoughtstorm', 'fpeters1d@liveinternet.ru', '46-(414)138-7140', '/images/adidas.jpg', 'Frances Peters', 'fpeters1d@phoca.cz', NULL, NULL, NULL, 0);

DROP TABLE IF EXISTS `organization_marketing_items`;
CREATE TABLE `organization_marketing_items` (
  `id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `stand_id` int(11) NOT NULL,
  `titles` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_downloadable` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` float NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_live` tinyint(1) NOT NULL DEFAULT '0',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `organization_marketing_items` (`id`, `organization_id`, `stand_id`, `titles`, `description`, `is_downloadable`, `path`, `name`, `type`, `size`, `is_deleted`, `is_live`, `update_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 2, 'Programming in Scala', 'The only pdf file available in the town.', 1, '/materials/pdf/programming-scala.pdf', 'Programming Scala.pdf', '', 0, 0, 1, '2016-08-13 01:57:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS `organization_stands`;
CREATE TABLE `organization_stands` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `exposition_id` int(11) NOT NULL,
  `stand_id` int(11) NOT NULL,
  `stand_features` text COLLATE utf8_unicode_ci NOT NULL,
  `visitors_count` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `organization_stands` (`id`, `image`, `organization_id`, `exposition_id`, `stand_id`, `stand_features`, `visitors_count`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '/images/apple.png', 1, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt iure numquam voluptas, repellat laboriosam esse fuga officiis eum quo corrupti, rem, quibusdam deserunt tempore. Quos culpa alias modi quisquam possimus?', 0, 0, NULL, NULL, NULL),
(2, '/images/hp.jpg', 2, 2, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt iure numquam voluptas, repellat laboriosam esse fuga officiis eum quo corrupti, rem, quibusdam deserunt tempore. Quos culpa alias modi quisquam possimus?', 0, 0, NULL, NULL, NULL),
(3, '/images/adidas.jpg', 3, 2, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt iure numquam voluptas, repellat laboriosam esse fuga officiis eum quo corrupti, rem, quibusdam deserunt tempore. Quos culpa alias modi quisquam possimus?', 0, 0, NULL, NULL, NULL),
(4, '/images/hp.jpg', 4, 2, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt iure numquam voluptas, repellat laboriosam esse fuga officiis eum quo corrupti, rem, quibusdam deserunt tempore. Quos culpa alias modi quisquam possimus?', 0, 0, NULL, NULL, NULL);

DROP TABLE IF EXISTS `organization_users`;
CREATE TABLE `organization_users` (
  `id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `social_accounts`;
CREATE TABLE `social_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `social_accounts` (`user_id`, `provider_user_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, '10208754846481928', 'facebook', '2016-06-09 05:14:30', '2016-06-09 05:14:30');

DROP TABLE IF EXISTS `stands`;
CREATE TABLE `stands` (
  `id` int(11) NOT NULL,
  `exposition_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `length` double(8,2) NOT NULL,
  `breadth` double(8,2) NOT NULL,
  `feature_details` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_reserved` tinyint(1) NOT NULL DEFAULT '0',
  `is_booked` tinyint(1) NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stands` (`id`, `exposition_id`, `title`, `length`, `breadth`, `feature_details`, `description`, `is_reserved`, `is_booked`, `price`, `created_at`, `updated_at`, `deleted_at`, `picture`) VALUES
(1, 39, 'velit vivamus vel nulla eget eros', 32.00, 77.00, 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 795.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(2, 2, 'nullam orci pede venenatis non', 36.00, 27.00, 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 1, 5860.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(3, 2, 'enim leo rhoncus', 11.00, 70.00, 'justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 1, 4190.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(4, 31, 'in faucibus orci luctus et', 98.00, 88.00, 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1893.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(5, 2, 'rutrum nulla nunc purus phasellus in felis', 74.00, 30.00, 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 1, 2412.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(6, 2, 'sapien placerat ante nulla justo aliquam quis turpis', 75.00, 55.00, 'sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 1, 2362.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(7, 34, 'quam sollicitudin vitae consectetuer eget rutrum', 21.00, 33.00, 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1673.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(8, 28, 'molestie lorem quisque ut erat curabitur gravida nisi at nibh', 25.00, 58.00, 'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6673.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(9, 38, 'tortor quis turpis', 51.00, 49.00, 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1841.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(10, 47, 'sit amet nunc viverra dapibus', 9.00, 55.00, 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6938.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(11, 17, 'non pretium quis lectus suspendisse potenti in', 74.00, 53.00, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6297.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(12, 22, 'sit amet eros suspendisse accumsan tortor quis turpis sed', 49.00, 30.00, 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 4502.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(13, 43, 'porta volutpat quam pede lobortis ligula sit amet eleifend pede', 83.00, 52.00, 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 5412.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(14, 44, 'sagittis sapien cum sociis natoque penatibus et magnis dis', 5.00, 44.00, 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1573.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(15, 24, 'convallis nulla neque libero convallis eget eleifend', 19.00, 75.00, 'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6168.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(16, 2, 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id', 96.00, 2.00, 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 0, 3769.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(17, 26, 'ac nulla sed vel', 44.00, 30.00, 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 9248.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(18, 45, 'a nibh in quis justo', 91.00, 15.00, 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1336.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(19, 26, 'mauris vulputate elementum nullam', 31.00, 24.00, 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 3849.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(20, 47, 'suspendisse potenti nullam porttitor lacus at turpis donec', 85.00, 91.00, 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 3499.00, NULL, NULL, NULL, '/stands/stand1.jpg'),
(21, 44, 'vel dapibus at', 13.00, 11.00, 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 8957.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(22, 2, 'phasellus sit amet', 89.00, 3.00, 'sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 0, 9079.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(23, 22, 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis', 67.00, 54.00, 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6789.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(24, 16, 'dictumst morbi vestibulum velit id pretium iaculis diam', 9.00, 42.00, 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1199.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(25, 38, 'vestibulum ante ipsum primis in faucibus orci luctus', 31.00, 31.00, 'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 2772.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(26, 31, 'et magnis dis parturient montes', 85.00, 2.00, 'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 8209.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(27, 32, 'aliquam convallis nunc proin at turpis a pede posuere nonummy', 85.00, 5.00, 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1064.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(28, 44, 'turpis elementum ligula vehicula consequat morbi', 41.00, 37.00, 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 7610.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(29, 34, 'duis bibendum morbi non quam nec dui', 4.00, 30.00, 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6586.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(30, 34, 'faucibus orci luctus et ultrices', 48.00, 93.00, 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 5283.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(31, 18, 'in faucibus orci luctus et ultrices posuere', 63.00, 38.00, 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 4590.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(32, 3, 'odio condimentum id', 74.00, 85.00, 'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 7414.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(33, 19, 'augue vestibulum ante ipsum primis in', 97.00, 33.00, 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 2690.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(34, 3, 'diam erat fermentum justo nec condimentum neque sapien placerat', 91.00, 86.00, 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 1499.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(35, 39, 'erat quisque erat eros viverra eget congue', 6.00, 98.00, 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 7943.00, NULL, NULL, NULL, '/stands/stand2.jpg');
INSERT INTO `stands` (`id`, `exposition_id`, `title`, `length`, `breadth`, `feature_details`, `description`, `is_reserved`, `is_booked`, `price`, `created_at`, `updated_at`, `deleted_at`, `picture`) VALUES
(36, 36, 'in faucibus orci luctus et ultrices posuere cubilia curae nulla', 57.00, 99.00, 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6178.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(37, 39, 'sit amet diam in magna', 3.00, 56.00, 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 9445.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(38, 47, 'non interdum in ante vestibulum ante ipsum', 80.00, 75.00, 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 9530.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(39, 46, 'sodales sed tincidunt eu felis fusce posuere felis sed lacus', 79.00, 46.00, 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 2909.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(40, 47, 'dui maecenas tristique est', 6.00, 80.00, 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 7142.00, NULL, NULL, NULL, '/stands/stand2.jpg'),
(41, 20, 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum', 22.00, 22.00, 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 8607.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(42, 31, 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', 83.00, 79.00, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 3879.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(43, 2, 'justo aliquam quis turpis eget elit', 99.00, 56.00, 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 4547.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(44, 3, 'iaculis diam erat fermentum', 96.00, 85.00, 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 2885.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(45, 31, 'nascetur ridiculus mus vivamus vestibulum sagittis sapien', 11.00, 10.00, 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 3546.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(46, 49, 'quam a odio in hac habitasse platea dictumst', 83.00, 63.00, 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 7933.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(47, 38, 'iaculis justo in', 53.00, 98.00, 'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 5295.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(48, 48, 'potenti in eleifend quam a odio in hac', 58.00, 4.00, 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 6742.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(49, 3, 'suspendisse ornare consequat lectus in est risus', 86.00, 36.00, 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 5403.00, NULL, NULL, NULL, '/stands/stand3.jpg'),
(50, 39, 'ridiculus mus vivamus vestibulum sagittis sapien cum', 30.00, 96.00, 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 0, 9448.00, NULL, NULL, NULL, '/stands/stand3.jpg');

DROP TABLE IF EXISTS `timezones`;
CREATE TABLE `timezones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `timezones` (`id`, `name`, `location`, `updated_at`, `deleted_at`, `created_at`) VALUES
(1, 'Pacific/Midway', '(GMT-11:00) Midway Island', NULL, NULL, NULL),
(2, 'US/Samoa', '(GMT-11:00) Samoa', NULL, NULL, NULL),
(3, 'US/Hawaii', '(GMT-10:00) Hawaii', NULL, NULL, NULL),
(4, 'US/Alaska', '(GMT-09:00) Alaska', NULL, NULL, NULL),
(5, 'US/Pacific', '(GMT-08:00) Pacific Time (US &amp; Canada)', NULL, NULL, NULL),
(6, 'America/Tijuana', '(GMT-08:00) Tijuana', NULL, NULL, NULL),
(7, 'US/Arizona', '(GMT-07:00) Arizona', NULL, NULL, NULL),
(8, 'US/Mountain', '(GMT-07:00) Mountain Time (US &amp; Canada)', NULL, NULL, NULL),
(9, 'America/Chihuahua', '(GMT-07:00) Chihuahua', NULL, NULL, NULL),
(10, 'America/Mazatlan', '(GMT-07:00) Mazatlan', NULL, NULL, NULL),
(11, 'America/Mexico_City', '(GMT-06:00) Mexico City', NULL, NULL, NULL),
(12, 'America/Monterrey', '(GMT-06:00) Monterrey', NULL, NULL, NULL),
(13, 'Canada/Saskatchewan', '(GMT-06:00) Saskatchewan', NULL, NULL, NULL),
(14, 'US/Central', '(GMT-06:00) Central Time (US &amp; Canada)', NULL, NULL, NULL),
(15, 'US/Eastern', '(GMT-05:00) Eastern Time (US &amp; Canada)', NULL, NULL, NULL),
(16, 'US/East-Indiana', '(GMT-05:00) Indiana (East)', NULL, NULL, NULL),
(17, 'America/Bogota', '(GMT-05:00) Bogota', NULL, NULL, NULL),
(18, 'America/Lima', '(GMT-05:00) Lima', NULL, NULL, NULL),
(19, 'America/Caracas', '(GMT-04:30) Caracas', NULL, NULL, NULL),
(20, 'Canada/Atlantic', '(GMT-04:00) Atlantic Time (Canada)', NULL, NULL, NULL),
(21, 'America/La_Paz', '(GMT-04:00) La Paz', NULL, NULL, NULL),
(22, 'America/Santiago', '(GMT-04:00) Santiago', NULL, NULL, NULL),
(23, 'Canada/Newfoundland', '(GMT-03:30) Newfoundland', NULL, NULL, NULL),
(24, 'America/Buenos_Aires', '(GMT-03:00) Buenos Aires', NULL, NULL, NULL),
(25, 'Greenland', '(GMT-03:00) Greenland', NULL, NULL, NULL),
(26, 'Atlantic/Stanley', '(GMT-02:00) Stanley', NULL, NULL, NULL),
(27, 'Atlantic/Azores', '(GMT-01:00) Azores', NULL, NULL, NULL),
(28, 'Atlantic/Cape_Verde', '(GMT-01:00) Cape Verde Is.', NULL, NULL, NULL),
(29, 'Africa/Casablanca', '(GMT) Casablanca', NULL, NULL, NULL),
(30, 'Europe/Dublin', '(GMT) Dublin', NULL, NULL, NULL),
(31, 'Europe/Lisbon', '(GMT) Lisbon', NULL, NULL, NULL),
(32, 'Europe/London', '(GMT) London', NULL, NULL, NULL),
(33, 'Africa/Monrovia', '(GMT) Monrovia', NULL, NULL, NULL),
(34, 'Europe/Amsterdam', '(GMT+01:00) Amsterdam', NULL, NULL, NULL),
(35, 'Europe/Belgrade', '(GMT+01:00) Belgrade', NULL, NULL, NULL),
(36, 'Europe/Berlin', '(GMT+01:00) Berlin', NULL, NULL, NULL),
(37, 'Europe/Bratislava', '(GMT+01:00) Bratislava', NULL, NULL, NULL),
(38, 'Europe/Brussels', '(GMT+01:00) Brussels', NULL, NULL, NULL),
(39, 'Europe/Budapest', '(GMT+01:00) Budapest', NULL, NULL, NULL),
(40, 'Europe/Copenhagen', '(GMT+01:00) Copenhagen', NULL, NULL, NULL),
(41, 'Europe/Ljubljana', '(GMT+01:00) Ljubljana', NULL, NULL, NULL),
(42, 'Europe/Madrid', '(GMT+01:00) Madrid', NULL, NULL, NULL),
(43, 'Europe/Paris', '(GMT+01:00) Paris', NULL, NULL, NULL),
(44, 'Europe/Prague', '(GMT+01:00) Prague', NULL, NULL, NULL),
(45, 'Europe/Rome', '(GMT+01:00) Rome', NULL, NULL, NULL),
(46, 'Europe/Sarajevo', '(GMT+01:00) Sarajevo', NULL, NULL, NULL),
(47, 'Europe/Skopje', '(GMT+01:00) Skopje', NULL, NULL, NULL),
(48, 'Europe/Stockholm', '(GMT+01:00) Stockholm', NULL, NULL, NULL),
(49, 'Europe/Vienna', '(GMT+01:00) Vienna', NULL, NULL, NULL),
(50, 'Europe/Warsaw', '(GMT+01:00) Warsaw', NULL, NULL, NULL),
(51, 'Europe/Zagreb', '(GMT+01:00) Zagreb', NULL, NULL, NULL),
(52, 'Europe/Athens', '(GMT+02:00) Athens', NULL, NULL, NULL),
(53, 'Europe/Bucharest', '(GMT+02:00) Bucharest', NULL, NULL, NULL),
(54, 'Africa/Cairo', '(GMT+02:00) Cairo', NULL, NULL, NULL),
(55, 'Africa/Harare', '(GMT+02:00) Harare', NULL, NULL, NULL),
(56, 'Europe/Helsinki', '(GMT+02:00) Helsinki', NULL, NULL, NULL),
(57, 'Europe/Istanbul', '(GMT+02:00) Istanbul', NULL, NULL, NULL),
(58, 'Asia/Jerusalem', '(GMT+02:00) Jerusalem', NULL, NULL, NULL),
(59, 'Europe/Kiev', '(GMT+02:00) Kyiv', NULL, NULL, NULL),
(60, 'Europe/Minsk', '(GMT+02:00) Minsk', NULL, NULL, NULL),
(61, 'Europe/Riga', '(GMT+02:00) Riga', NULL, NULL, NULL),
(62, 'Europe/Sofia', '(GMT+02:00) Sofia', NULL, NULL, NULL),
(63, 'Europe/Tallinn', '(GMT+02:00) Tallinn', NULL, NULL, NULL),
(64, 'Europe/Vilnius', '(GMT+02:00) Vilnius', NULL, NULL, NULL),
(65, 'Asia/Baghdad', '(GMT+03:00) Baghdad', NULL, NULL, NULL),
(66, 'Asia/Kuwait', '(GMT+03:00) Kuwait', NULL, NULL, NULL),
(67, 'Africa/Nairobi', '(GMT+03:00) Nairobi', NULL, NULL, NULL),
(68, 'Asia/Riyadh', '(GMT+03:00) Riyadh', NULL, NULL, NULL),
(69, 'Asia/Tehran', '(GMT+03:30) Tehran', NULL, NULL, NULL),
(70, 'Europe/Moscow', '(GMT+04:00) Moscow', NULL, NULL, NULL),
(71, 'Asia/Baku', '(GMT+04:00) Baku', NULL, NULL, NULL),
(72, 'Europe/Volgograd', '(GMT+04:00) Volgograd', NULL, NULL, NULL),
(73, 'Asia/Muscat', '(GMT+04:00) Muscat', NULL, NULL, NULL),
(74, 'Asia/Tbilisi', '(GMT+04:00) Tbilisi', NULL, NULL, NULL),
(75, 'Asia/Yerevan', '(GMT+04:00) Yerevan', NULL, NULL, NULL),
(76, 'Asia/Kabul', '(GMT+04:30) Kabul', NULL, NULL, NULL),
(77, 'Asia/Karachi', '(GMT+05:00) Karachi', NULL, NULL, NULL),
(78, 'Asia/Tashkent', '(GMT+05:00) Tashkent', NULL, NULL, NULL),
(79, 'Asia/Kolkata', '(GMT+05:30) Kolkata', NULL, NULL, NULL),
(80, 'Asia/Kathmandu', '(GMT+05:45) Kathmandu', NULL, NULL, NULL),
(81, 'Asia/Yekaterinburg', '(GMT+06:00) Ekaterinburg', NULL, NULL, NULL),
(82, 'Asia/Almaty', '(GMT+06:00) Almaty', NULL, NULL, NULL),
(83, 'Asia/Dhaka', '(GMT+06:00) Dhaka', NULL, NULL, NULL),
(84, 'Asia/Novosibirsk', '(GMT+07:00) Novosibirsk', NULL, NULL, NULL),
(85, 'Asia/Bangkok', '(GMT+07:00) Bangkok', NULL, NULL, NULL),
(86, 'Asia/Jakarta', '(GMT+07:00) Jakarta', NULL, NULL, NULL),
(87, 'Asia/Krasnoyarsk', '(GMT+08:00) Krasnoyarsk', NULL, NULL, NULL),
(88, 'Asia/Chongqing', '(GMT+08:00) Chongqing', NULL, NULL, NULL),
(89, 'Asia/Hong_Kong', '(GMT+08:00) Hong Kong', NULL, NULL, NULL),
(90, 'Asia/Kuala_Lumpur', '(GMT+08:00) Kuala Lumpur', NULL, NULL, NULL),
(91, 'Australia/Perth', '(GMT+08:00) Perth', NULL, NULL, NULL),
(92, 'Asia/Singapore', '(GMT+08:00) Singapore', NULL, NULL, NULL),
(93, 'Asia/Taipei', '(GMT+08:00) Taipei', NULL, NULL, NULL),
(94, 'Asia/Ulaanbaatar', '(GMT+08:00) Ulaan Bataar', NULL, NULL, NULL),
(95, 'Asia/Urumqi', '(GMT+08:00) Urumqi', NULL, NULL, NULL),
(96, 'Asia/Irkutsk', '(GMT+09:00) Irkutsk', NULL, NULL, NULL),
(97, 'Asia/Seoul', '(GMT+09:00) Seoul', NULL, NULL, NULL),
(98, 'Asia/Tokyo', '(GMT+09:00) Tokyo', NULL, NULL, NULL),
(99, 'Australia/Adelaide', '(GMT+09:30) Adelaide', NULL, NULL, NULL),
(100, 'Australia/Darwin', '(GMT+09:30) Darwin', NULL, NULL, NULL),
(101, 'Asia/Yakutsk', '(GMT+10:00) Yakutsk', NULL, NULL, NULL),
(102, 'Australia/Brisbane', '(GMT+10:00) Brisbane', NULL, NULL, NULL),
(103, 'Australia/Canberra', '(GMT+10:00) Canberra', NULL, NULL, NULL),
(104, 'Pacific/Guam', '(GMT+10:00) Guam', NULL, NULL, NULL),
(105, 'Australia/Hobart', '(GMT+10:00) Hobart', NULL, NULL, NULL),
(106, 'Australia/Melbourne', '(GMT+10:00) Melbourne', NULL, NULL, NULL),
(107, 'Pacific/Port_Moresby', '(GMT+10:00) Port Moresby', NULL, NULL, NULL),
(108, 'Australia/Sydney', '(GMT+10:00) Sydney', NULL, NULL, NULL),
(109, 'Asia/Vladivostok', '(GMT+11:00) Vladivostok', NULL, NULL, NULL),
(110, 'Asia/Magadan', '(GMT+12:00) Magadan', NULL, NULL, NULL),
(111, 'Pacific/Auckland', '(GMT+12:00) Auckland', NULL, NULL, NULL),
(112, 'Pacific/Fiji', '(GMT+12:00) Fiji', NULL, NULL, NULL);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Sujit Baniya', 'itsursujit@gmail.com', '$2y$10$5MRLFYU8jiY52LoWFlAGnusAkgwYLOFZuR1.SmnjDxi4VB9GUAequ', '3g2kKDmEIiyR94BeDiEF0VrzAxhYKpMjeNukUWwJo62QaSFmS8eGrgiv6dY1', '2016-08-09 06:58:55', '2016-08-09 08:40:28', 0);

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `exposition_id` int(11) DEFAULT NULL,
  `stand_id` int(11) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `expositions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_expositions_1_idx` (`address_id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_id1` (`exposition_id`),
  ADD KEY `index3` (`transaction_id`),
  ADD KEY `index4` (`organization_id`);

ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_items_1_idx` (`order_id`),
  ADD KEY `fk_order_items_2_idx` (`stand_id`);

ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `organization_marketing_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_organization_marketing_items_1_idx` (`organization_id`),
  ADD KEY `fk_organization_marketing_items_2_idx` (`stand_id`);

ALTER TABLE `organization_stands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_organization_stands_1_idx` (`organization_id`),
  ADD KEY `fk_organization_stands_2_idx` (`exposition_id`),
  ADD KEY `fk_organization_stands_3_idx` (`stand_id`);

ALTER TABLE `organization_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_organization_users_1_idx` (`organization_id`);

ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `stands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stands_1_idx` (`exposition_id`);

ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `organization_marketing_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `organization_stands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `organization_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `social_accounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `timezones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `expositions`
  ADD CONSTRAINT `fk_expositions_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_1` FOREIGN KEY (`exposition_id`) REFERENCES `expositions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orders_2` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_items_2` FOREIGN KEY (`stand_id`) REFERENCES `stands` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `organization_marketing_items`
  ADD CONSTRAINT `fk_organization_marketing_items_1` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organization_marketing_items_2` FOREIGN KEY (`stand_id`) REFERENCES `stands` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `organization_stands`
  ADD CONSTRAINT `fk_organization_stands_1` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organization_stands_2` FOREIGN KEY (`exposition_id`) REFERENCES `expositions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organization_stands_3` FOREIGN KEY (`stand_id`) REFERENCES `stands` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `stands`
  ADD CONSTRAINT `fk_stands_1` FOREIGN KEY (`exposition_id`) REFERENCES `expositions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
