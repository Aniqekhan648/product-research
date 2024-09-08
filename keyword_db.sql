-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 06:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keyword_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add keyword', 7, 'add_keyword'),
(26, 'Can change keyword', 7, 'change_keyword'),
(27, 'Can delete keyword', 7, 'delete_keyword'),
(28, 'Can view keyword', 7, 'view_keyword'),
(29, 'Can add ebay product', 8, 'add_ebayproduct'),
(30, 'Can change ebay product', 8, 'change_ebayproduct'),
(31, 'Can delete ebay product', 8, 'delete_ebayproduct'),
(32, 'Can view ebay product', 8, 'view_ebayproduct'),
(33, 'Can add jungle scout product', 9, 'add_junglescoutproduct'),
(34, 'Can change jungle scout product', 9, 'change_junglescoutproduct'),
(35, 'Can delete jungle scout product', 9, 'delete_junglescoutproduct'),
(36, 'Can view jungle scout product', 9, 'view_junglescoutproduct');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'search', 'ebayproduct'),
(9, 'search', 'junglescoutproduct'),
(7, 'search', 'keyword'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-04 07:00:39.442112'),
(2, 'auth', '0001_initial', '2024-09-04 07:00:40.880224'),
(3, 'admin', '0001_initial', '2024-09-04 07:00:41.151959'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-04 07:00:41.164753'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-04 07:00:41.185747'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-04 07:00:41.302000'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-04 07:00:41.484801'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-04 07:00:41.515019'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-04 07:00:41.529432'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-04 07:00:41.623671'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-04 07:00:41.631719'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-04 07:00:41.647712'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-04 07:00:41.675672'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-04 07:00:41.703691'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-04 07:00:41.736671'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-04 07:00:41.753711'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-04 07:00:41.787673'),
(18, 'search', '0001_initial', '2024-09-04 07:00:41.854670'),
(19, 'sessions', '0001_initial', '2024-09-04 07:00:41.921679'),
(20, 'search', '0002_remove_keyword_created_at_remove_keyword_description', '2024-09-04 14:27:47.945855');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ebay_product`
--

CREATE TABLE `ebay_product` (
  `id` varchar(20) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `avg_sold_price` varchar(20) DEFAULT NULL,
  `avg_shipping_cost` varchar(50) DEFAULT NULL,
  `total_sold_count` int(11) DEFAULT NULL,
  `total_sales_value` varchar(20) DEFAULT NULL,
  `date_last_sold` date DEFAULT NULL,
  `condition` varchar(50) DEFAULT NULL,
  `review` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `seller` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ebay_product`
--

INSERT INTO `ebay_product` (`id`, `product_name`, `avg_sold_price`, `avg_shipping_cost`, `total_sold_count`, `total_sales_value`, `date_last_sold`, `condition`, `review`, `type`, `seller`, `brand`) VALUES
('125713791277', 'Shockproof Protective Leather Case For iPhone 15 14 Plus 13 12 11 Pro Max Cover', '$8.94Fixed price', '$0.00100% Free shipping', 253, '$2,262.97', '2024-09-05', 'New', '98.6% positive', 'Back Case', 'QZW_VISION', 'Unbranded'),
('125901581091', 'For iPhone 15 Pro Max 14 13 12 11 XR XS Phone Case Heavy Duty Shockproof Cover', '$10.12Fixed price', '$10.3099% Free shipping', 1166, '$11,795.08', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'QZW_VISION', 'Unbranded'),
('125991898914', '4x For iPhone 15 14 13 12 11 Pro Max Tempered Glass Camera Lens Cover Protector', '$5.83Fixed price', '$0.00100% Free shipping', 475, '$2,767.76', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'QZW_VISION', 'Unbranded'),
('126064801922', '2x iPhone 15 14 13 12 11 Pro Max Privacy AntiSpy Tempered Glass Screen Protector', '$5.71Fixed price', '$28.25100% Free shipping', 421, '$2,402.70', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'QZW_VISION', 'QZW'),
('126085112626', 'For Apple iPhone 15 14 13 12 11 Pro Max Clear Case Slim Plating Mag Safe Cover', '$8.47Fixed price', '$0.00100% Free shipping', 416, '$3,524.21', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'QZW_VISION', 'QZW'),
('126191418410', '3X Tempered Glass Screen Protector For iPhone 15 14 13 12 11 Pro Max X XR 8 7 6', '$5.46Fixed price', '$0.00100% Free shipping', 659, '$3,598.39', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'QZW_VISION', 'Qzw'),
('126243867990', 'For iPhone 15 14 Plus 13 12 11 Pro Max Frosted Case Mag Safe Shockproof Cover', '$9.58Fixed price', '$13.11100% Free shipping', 1211, '$11,606.52', '2024-09-05', 'New', '98.6% positive', 'TPU Cover', 'QZW_VISION', 'QZW'),
('126246843379', 'For iPhone 15 14 Plus 13 12 11 Pro Max Frosted Case Mag Safe Shockproof Cover', '$9.60Fixed price', '$10.36100% Free shipping', 476, '$4,570.30', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'QZW_VISION', 'QZW'),
('126379188811', 'For iPhone 15 14 13 12 11 Pro Max Tempered Glass Privacy Screen Camera Protector', '$7.18Fixed price', '$0.00100% Free shipping', 457, '$3,279.90', '2024-09-05', 'New', '97.3% positive', 'Camera Lens Protector', 'jkooteck', 'JKOOTECK'),
('126379252587', '4x For iPhone 15 14 13 12 11 Pro Max Tempered Glass Camera Lens Cover Protector', '$5.91Fixed price', '$0.00100% Free shipping', 248, '$1,465.28', '2024-09-05', 'New', '97.3% positive', 'Camera Lens Protector', 'jkooteck', 'JKOOTECK'),
('126379305968', 'For iPhone 15 14 13 12 11 Pro Max Tempered Glass Screen Camera Lens Protector', '$8.81Fixed price', '$0.00100% Free shipping', 548, '$4,829.24', '2024-09-05', 'New', '97.3% positive', 'Fitted Case/Skin', 'jkooteck', 'JKOOTECK'),
('126469564282', 'Wholesale LOT Tempered Glass Screen Protector For iPhone 15 14 13 12 11 Pro Max', '$7.44Fixed price', '$5.50100% Free shipping', 756, '$5,622.44', '2024-09-05', 'New', '97.3% positive', 'Screen Protector', 'jkooteck', 'JKOOTECK'),
('126506994408', 'Wholesale Tempered Glass Camera Lens Protector For iPhone 15 14 13 12 11 Pro Max', '$6.62Fixed price', '$0.00100% Free shipping', 293, '$1,939.07', '2024-09-05', 'New', '97.3% positive', 'Camera Lens Protector', 'jkooteck', 'Unbranded'),
('134176088591', '3-PACK For iPhone 15 14 13 12 11 Pro Max X XS XR Tempered GLASS Screen Protector', '$2.49Fixed price', '$2.45100% Free shipping', 1696, '$4,216.57', '2024-09-05', 'New', '98.2% positive', 'Full Coverage Tempered Glass Screen Protector', 'Bexcost', 'Bexcost'),
('134767018925', '2 PACK USB C 3.1 Type C Female to USB 3.0 Type A Male Port Converter Adapter NEW', '$1.95Fixed price', '$0.00100% Free shipping', 800, '$1,560.00', '2024-09-05', 'New', '98.2% positive', 'Usb C To Usb A', 'Bexcost', 'Unbranded'),
('145326469426', 'Privacy Anti Spy Magnetic 360 Protective Case For iPhone 15 Pro MAX 14 13 12 11', '$11.01Fixed price', '$39.99100% Free shipping', 331, '$3,645.83', '2024-09-05', 'New', '99% positive', 'Fitted Case/Skin', 'EverydayGadgetz', 'Unbranded'),
('145434962060', 'For iPhone 15 Pro Max 14 13 12 11 XR XS Phone Case Heavy Duty Shockproof Cover', '$7.50Fixed price', '$0.00100% Free shipping', 448, '$3,359.35', '2024-09-05', 'New', '99.4% positive', 'Fitted Case/Skin', 'panda-touch', 'Unbranded'),
('153949378544', 'For iPhone 15 14 Plus 13 12 11 Pro Max Shockproof Heavy Duty Rugged Case Cover', '$9.94Fixed price', '$10.93100% Free shipping', 298, '$2,961.51', '2024-09-05', 'New', '99.2% positive', 'Hard Cover', 'Seven Capital', 'Unbranded'),
('154113417031', 'For Apple iPhone X XR XS Max 10 Shockproof Protective Rugged Hard Cover Case', '$8.94Fixed price', '$0.00100% Free shipping', 334, '$2,986.29', '2024-09-05', 'New', '99.2% positive', 'Dual-Layer', 'Seven Capital', 'Unbranded'),
('154285052950', 'For iPhone 15 14 13 12 11 Pro Max X XR 6 7 8 Plus SE Shockproof Clear Cover Case', '$8.65Fixed price', '$16.61100% Free shipping', 345, '$2,983.03', '2024-09-05', 'New', '99.2% positive', 'Transparent', 'Seven Capital', 'Unbranded'),
('154293818571', 'For iPhone 6 7 8 Plus SE 2020 Shockproof Rugged Case Cover + Screen Protector', '$8.78Fixed price', '$10.61100% Free shipping', 561, '$4,926.99', '2024-09-05', 'New', '99.3% positive', 'Hard Cover', 'Geekion', 'Unbranded'),
('154301112327', 'For iPhone 6 7 8 Plus SE 2 3 Protective Shockproof Cover Case + Screen Protector', '$8.65Fixed price', '$0.00100% Free shipping', 289, '$2,500.10', '2024-09-05', 'New', '99.2% positive', 'Rugged Case', 'Seven Capital', 'Unbranded'),
('154575127778', 'For iPhone 15 14 13 12 11 Pro Max XR X Max 8 7 Plus SE 2 3 Shockproof Case Cover', '$9.37Fixed price', '$10.53100% Free shipping', 901, '$8,441.33', '2024-09-05', 'New', '99.3% positive', 'Rugged Case', 'Geekion', 'Unbranded'),
('154640762563', 'Shockproof Case For iPhone 15 14 13 12 11 Pro Max 15 Plus XR XS MAX Phone  Cover', '$8.88Fixed price', '$0.00100% Free shipping', 262, '$2,326.07', '2024-09-05', 'New', '99.2% positive', 'Bumper', 'monster-electronics-626', 'Storm Buy'),
('154960638602', 'For Apple iPhone 15 14 Plus 13 12 11 Pro XR XS Max Case Leather Shockproof Cover', '$9.44Fixed price', '$10.92100% Free shipping', 704, '$6,645.92', '2024-09-05', 'New', '99.3% positive', 'cover', 'Geekion', 'Unbranded'),
('155171795079', 'For iPhone 15 14 13 12 11 Plus Pro Max Shockproof Rugged Heavy Duty Case + Clip', '$11.41Fixed price', '$0.00100% Free shipping', 552, '$6,299.20', '2024-09-05', 'New', '99.3% positive', 'Rugged Case', 'Geekion', 'Unbranded'),
('155352065271', 'Shockproof Case For iPhone 6 7 8 Plus SE 2 3 Rugged Clip Cover Screen Protector', '$9.92Fixed price', '$10.93100% Free shipping', 478, '$4,740.71', '2024-09-05', 'New', '99.2% positive', 'Rugged Case', 'Seven Capital', 'Unbranded'),
('155514544087', 'Shockproof Heavy Duty Case For iPhone 15 14 Plus 13 12 11 Pro Max Rugged Cover', '$9.36Fixed price', '$15.27100% Free shipping', 684, '$6,402.14', '2024-09-05', 'New', '99.2% positive', 'Rugged Case', 'Seven Capital', 'Unbranded'),
('155715034946', 'OEM Apple Wired Earphones Headphone Earbuds Earpods 3.5mm AUX Jack iPhone', '$8.00Fixed price', '$5.2099% Free shipping', 538, '$4,302.37', '2024-09-05', 'New', '99.3% positive', 'Earbud (In Ear)', 'Amazing Wireless', 'Apple'),
('155957520215', '3X Tempered Glass Screen Protector For iPhone 15 14 13 12 11 Pro Max X XS XR 8 7', '$2.98Fixed price', '$10.90100% Free shipping', 2825, '$8,414.01', '2024-09-05', 'New', '98.3% positive', 'Full Coverage Tempered Glass Screen Protector', 'The Tech Bro', 'MAGICGLASS'),
('165764042427', 'CLEAR Shockproof Case For Apple iPhone 15 14 13 12 11 Pro Max Xr MagSafe Cover', '$8.64Fixed price', '$7.99100% Free shipping', 530, '$4,577.56', '2024-09-05', 'New', '99.2% positive', 'Fitted Case/Skin', 'monster-electronics-626', 'Storm Buy'),
('166721850658', 'Metal Case For iPhone 15 14 13 12 X Pro Max Gorilla Heavy Duty Cover Shockproof', '$13.19Fixed price', '$0.00100% Free shipping', 511, '$6,741.84', '2024-09-05', 'New', '97.8% positive', 'Fitted Case/Skin', 'enpq5704', 'Unbranded'),
('176110691641', '2 Pack Fast Charger 8-Pin/USB-C For iPhone 14 13 12 11 Pro Max Plus XS XR 8 7 6', '$10.64Fixed price', '$0.00100% Free shipping', 529, '$5,628.97', '2024-09-05', 'New', '99.3% positive', 'Charging & Data Sync Cable', 'Yourtronics', 'Y-Tech'),
('176208374727', '2x iPhone 15 14 13 12 11 Pro Max Privacy AntiSpy Tempered Glass Screen Protector', '$5.84Fixed price', '$10.82100% Free shipping', 995, '$5,810.18', '2024-09-05', 'New', '98.1% positive', 'Screen Protector', 'XG-Tech Wholesaler', 'Unbranded'),
('176215204681', 'Shockproof Mag Safe TPU Case For iPhone 15 14 Pro Max 13 12 11 Camera Lens Cover', '$8.01Fixed price', '$13.72100% Free shipping', 1417, '$11,355.57', '2024-09-05', 'New', '98.1% positive', 'cover', 'XG-Tech Wholesaler', 'Unbranded'),
('176216869987', 'For Apple iPhone 15 14 13 12 11 Pro Max Clear Case Shockproof Mag Safe Cover', '$7.80Fixed price', '$0.00100% Free shipping', 383, '$2,988.27', '2024-09-05', 'New', '98.1% positive', 'Fitted Case/Skin', 'XG-Tech Wholesaler', 'Unbranded'),
('176397179877', 'Item ID 176397179877', '$17.54Fixed price', '$4.3295% Free shipping', 308, '$5,401.78', '2024-09-05', 'New', '98.2% positive', 'Fitted Case/Skin', 'myseb5', 'Unbranded'),
('176443303762', 'Camera Stand Mag Safe Case for iPhone 15 14 Plus 13 Pro Max + Lens Protector', '$10.19Fixed price', '$10.93100% Free shipping', 525, '$5,350.50', '2024-09-05', 'New', '98.1% positive', 'Fitted Case/Skin', 'XG-Tech Wholesaler', 'Unbranded'),
('184510382267', 'Silicone Case Camera Lens Cover For iPhone 15 14 13 12 11 Pro XS Max XR X 8 7 SE', '$2.67Fixed price', '$0.00100% Free shipping', 251, '$670.41', '2024-09-05', 'New', '98.7% positive', 'Fitted Case/Skin', 'AnnaBay_1shop', 'Annabay2018'),
('185456436319', '3 Pack for iPhone 15 14 13 12 11 Pro Max Privacy Tempered Glass Screen Protector', '$7.63Fixed price', '$10.24100% Free shipping', 1056, '$8,058.18', '2024-09-05', 'New', '97.2% positive', 'Privacy Tempered Glass Screen Protector', 'easywholesales', 'Unbranded'),
('185467278325', 'For iPhone 15 14 13 12 11 Pro Max Privacy Tempered Glass Screen Camera Protector', '$7.59Fixed price', '$8.99100% Free shipping', 444, '$3,369.68', '2024-09-05', 'New', '97.2% positive', 'Screen Protector', 'easywholesales', 'Unbranded'),
('185482907105', 'For iPhone 15 14 13 12 11 Pro Max Shockproof Case &Screen Protector & Camera Len', '$7.93Fixed price', '$0.00100% Free shipping', 321, '$2,544.95', '2024-09-05', 'New', '97.2% positive', 'Back Case & Screen Protector & Camera Lens Protect', 'easywholesales', 'Unbranded'),
('185573710425', '3-PACK For iPhone 15 14 13 12 11 Pro Max XR Max Tempered Glass Screen Protector', '$5.31Fixed price', '$4.49100% Free shipping', 733, '$3,891.68', '2024-09-05', 'New', '97.2% positive', 'Tempered Glass Screen Protector', 'easywholesales', 'Unbranded'),
('185614547122', 'For iPhone 15 Pro Max 14 13 12 11 Shockproof Case Defender Cover With Belt Clip', '$9.40Fixed price', '$0.00100% Free shipping', 324, '$3,044.03', '2024-09-05', 'New', '99% positive', 'Hybrid Case', 'sunstorein', 'sunstore-in'),
('185774840997', 'For Apple iPhone 15 14 13 12 11 Pro Max Case Mag Safe Magnetic Camera Lens Cover', '$8.36Fixed price', '$0.00100% Free shipping', 468, '$3,912.32', '2024-09-05', 'New', '98.7% positive', 'cover', 'AnnaBay_1shop', 'annabay2018'),
('185865330158', 'Shockproof Case for iPhone 15 14 13 12 11 Pro Max XS XR 8 7 SE Camera Lens Cover', '$5.35Fixed price', '$0.00100% Free shipping', 497, '$2,659.45', '2024-09-05', 'New', '98.7% positive', 'Fitted Case/Skin', 'AnnaBay_1shop', 'annabay2018'),
('186190854837', 'For iphone 13/13 Pro 13 Pro Max Apple Leather Phone Case With MagSafe', '$19.48Fixed price', '$0.00100% Free shipping', 321, '$6,251.99', '2024-09-05', 'New', '98.5% positive', 'Back Case', 'summerlove883', 'Apple'),
('186332655228', '3x For iPhone 15 14 13 12 11 Pro Max Tempered Glass Camera Lens Cover Protector', '$3.67Fixed price', '$10.11100% Free shipping', 289, '$1,060.57', '2024-09-05', 'New', '97.9% positive', 'Camera Lens Protector', 'UQQ', 'Unbranded'),
('186373306764', 'Wholesale Privacy Tempered Glass Screen Protector for iPhone 15 14 13 12 Pro Max', '$9.67Fixed price', '$7.8799% Free shipping', 1344, '$12,995.34', '2024-09-05', 'New', '97.2% positive', 'Privacy Tempered Glass Screen Protector', 'easywholesales', 'Unbranded'),
('186373353699', 'Wholesale LOT Tempered Glass Screen Protector for iPhone 15 Pro Max 14 13 12 11', '$6.97Fixed price', '$5.75100% Free shipping', 2259, '$15,751.57', '2024-09-05', 'New', '97.2% positive', 'Privacy Tempered Glass Screen Protector', 'easywholesales', 'Unbranded'),
('203135753347', 'For iPhone 15 14 13 12 11 Pro Max XS XR X 8 7 SE Silicone Case Camera Lens Cover', '$3.52Fixed price', '$0.00100% Free shipping', 1332, '$4,688.14', '2024-09-05', 'New', '98.8% positive', 'cover', 'ChainSpark', 'JJINGER'),
('203142080212', '3X Tempered Glass Screen Protector For iPhone 15 14 13 12 11 Pro Max X XS XR 8 7', '$2.61Fixed price', '$0.00100% Free shipping', 1263, '$3,291.86', '2024-09-05', 'New', '98.8% positive', 'Full Coverage Tempered Glass Screen Protector', 'ChainSpark', 'JJINGER'),
('203958778457', 'Leather Case For iPhone 16 15 14 13 12 Pro Max XS XR 87+ Flip Wallet Phone Cover', '$9.48Fixed price', '$15.4399% Free shipping', 238, '$2,255.47', '2024-09-05', 'New', '98.3% positive', 'Wallet Case', 'pasi-847', 'Unbranded'),
('204458182767', 'Shockproof Mag Safe TPU Case Camera Lens Cover For iPhone 15 14 Pro Max 13 12 11', '$6.39Fixed price', '$0.00100% Free shipping', 320, '$2,045.62', '2024-09-05', 'New', '98.3% positive', 'Fitted Case/Skin', 'pasi-847', 'Unbranded'),
('204901202360', 'For iPhone 15 Pro Max 14 13 12 11 XR XS Phone Case Heavy Duty Shockproof Cover', '$6.78Fixed price', '$10.2499% Free shipping', 260, '$1,763.97', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'Mrls Shop', 'Unbranded'),
('223833899238', 'For iPhone 16 Pro Max 15 14 13 12 11 Plus Case Phone Cover Shockproof + Screen', '$8.60Fixed price', '$10.33100% Free shipping', 540, '$4,645.12', '2024-09-05', 'New', '98.5% positive', 'Fitted Case/Skin', 'STARSHOP18', 'STARSHOP'),
('224422958969', 'For iPhone 11/11 Pro Max Case Phone Cover Shockproof Kickstand + Tempered Glass', '$9.04Fixed price', '$0.00100% Free shipping', 240, '$2,170.30', '2024-09-05', 'New', '98.5% positive', 'Bumper', 'STARSHOP18', 'STARSHOP'),
('224682146317', 'For iPhone 15 Pro Max 14 13 12 11 Plus Mini SE Case Phone Cover +Tempered Glass', '$8.59Fixed price', '$7.99100% Free shipping', 573, '$4,921.25', '2024-09-05', 'New', '98.5% positive', 'Fitted Case/Skin', 'STARSHOP18', 'STARSHOP'),
('224785456700', 'Apple iPhone 11 - 64GB - Fully Unlocked - ALL CARRIERS - VERY GOOD condition', '$200.49Fixed price', '$19.9999% Free shipping', 985, '$197,483.43', '2024-09-05', 'Very Good - Refurbished', '97.7% positive', NULL, 'MobileXport', 'Apple'),
('226280474615', 'Tempered Glass Camera Lens Cover Protector For iPhone 15 14 13 12 11 Pro Max', '$2.79Fixed price', '$0.00100% Free shipping', 379, '$1,058.28', '2024-09-05', 'New', '98.7% positive', 'Fitted Case/Skin', 'Platinum Parts', 'Unbranded'),
('235074221854', 'For iPhone 15 14 13 12 11 Pro Max XS XR X SE 8 7 Silicone Case Camera Lens Cover', '$2.95Fixed price', '$0.00100% Free shipping', 490, '$1,445.50', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'Theperfectu', 'theperfectyou'),
('235112133804', 'Wholesale 20W USB-C to iPhone Cable Fast Charger For iPhone14 13 12/Pro Max Cord', '$9.68Fixed price', '$0.00100% Free shipping', 463, '$4,480.26', '2024-09-05', 'New', '99.1% positive', 'Charging & Data Sync Cable', 'ZY PHONE', 'Unbranded'),
('256064117328', 'For iPhone 13 14 15 /15 Pro Max Metal Ring  Camera Lens Protector Tempered Glass', '$4.90Fixed price', '$0.00100% Free shipping', 322, '$1,576.38', '2024-09-05', 'New', '96.7% positive', 'Camera Lens Protector', 'bgwireless', 'Unbranded'),
('264845545475', 'For iPhone 16 15 Pro Max 14 13 12 11 XR X Phone Case Heavy Duty Shockproof Cover', '$8.16Fixed price', '$21.96100% Free shipping', 292, '$2,382.80', '2024-09-05', 'New', '98.9% positive', 'cover', 'kimons2012', 'Kimons'),
('285176034601', 'For iPhone 15 14 13 12 11 Pro Max XR Shockproof Liquid Silicone Phone Case Cover', '$6.72Fixed price', '$0.00100% Free shipping', 280, '$1,880.91', '2024-09-05', 'New', '96.9% positive', 'Fitted Case/Skin', 'MvpMart', 'Unbranded'),
('305480502692', 'Replacement Back Glass Big Hole For iPhone 8 11 12 13 14 15 XR XS Rear Cover Lot', '$12.99Fixed price', '$0.00100% Free shipping', 489, '$6,352.79', '2024-09-05', 'New', '98.4% positive', 'Back Glass Replacement', 'wattz_the_deal', 'Unbranded'),
('313913793435', 'For iPhone 15 14 13 12 11 Pro X XR Max Shockproof Case Cover + Screen Protector', '$9.90Fixed price', '$4.00100% Free shipping', 222, '$2,198.00', '2024-09-05', 'New', '98.3% positive', 'cover', 'maplegroupusa', 'Unbranded'),
('314670687812', 'For iPhone 14 13 12 11 Pro Max Mini Soft Silicone Clear Cover Shockproof Case', '$2.78Fixed price', '$0.00100% Free shipping', 697, '$1,936.03', '2024-09-05', 'New', '98.5% positive', 'Phone Case', 'lyf\'s store', 'Unbranded'),
('315064307443', '3 Pack Fast Charger Cable Heavy Duty For iPhone 13 12 11 X XR 8 7 Charging Cord', '$6.92Fixed price', '$0.00100% Free shipping', 708, '$4,900.05', '2024-09-05', 'New', '98.5% positive', 'USB Cable', 'lyf\'s store', 'Unbranded'),
('315278081791', 'Braided Fast Charger Cable Heavy Duty USB lot Cord For iPhone 14 13 12 11 X XR 8', '$10.02Fixed price', '$0.00100% Free shipping', 660, '$6,614.53', '2024-09-05', 'New', '98.5% positive', 'USB Cable', 'lyf\'s store', 'Unbranded'),
('325852789181', 'Apple iPhone 12 64GB- Fully Unlocked All Mobile Carriers VERY GOOD', '$253.55Fixed price', '$19.9999% Free shipping', 646, '$163,795.15', '2024-09-05', 'Very Good - Refurbished', '97.7% positive', NULL, 'MobileXport', 'Apple'),
('326209249246', 'Original USB-C Fast Charger For iPhone 15 14 13 12 11 Pro Max XS 8 Type C Cable', '$9.07Fixed price', '$16.6699% Free shipping', 352, '$3,192.88', '2024-09-05', 'New', '97.6% positive', 'Charging & Data Sync Cable', 'TRMTECH', 'TRMTECH'),
('335188187167', 'Item ID 335188187167', '$16.87Fixed price', '$6.9999% Free shipping', 204, '$3,440.46', '2024-09-05', 'New', '97.9% positive', 'Fitted Case/Skin', '0zsj908', '0zsj908'),
('352193904700', 'Wholesale For iPhone OLED Display LCD Touch Digitizer Screen Frame Replacement', '$35.67Fixed price', '$21.9798% Free shipping', 1592, '$56,790.80', '2024-09-05', 'New', '96.1% positive', 'Display: LCD Screen, Display: Lens Screen, Display', 'gadgetfix', 'Apple'),
('354393355064', 'Apple iPhone 13 A2482 128GB Network Unlocked Very Good Condition', '$375.90Fixed price', '$0.00100% Free shipping', 1130, '$424,765.96', '2024-09-05', 'Very Good - Refurbished', '97.7% positive', NULL, 'DirectAuth', 'Apple'),
('354593770842', 'Apple iPhone 13 Pro Max A2484 128GB Network Unlocked Very Good', '$574.70Fixed price', '$0.00100% Free shipping', 811, '$466,084.68', '2024-09-05', 'Very Good - Refurbished', '97.7% positive', NULL, 'DirectAuth', 'Apple'),
('355468482784', 'For iPhone 14 Pro Max 14 13 Pro 12 Mag Safe Magnetic Lens Shockproof Case Cover', '$8.44Fixed price', '$16.3899% Free shipping', 291, '$2,455.98', '2024-09-05', 'New', '98.2% positive', 'Fitted Case/Skin', 'jackien_59', 'Unbranded'),
('355672155171', '3PACK USB Data Fast Charger Cable Cord For Apple iPhone 5 6 7 8 X 11 12 13 MAX', '$5.60Fixed price', '$0.00100% Free shipping', 728, '$4,079.72', '2024-09-05', 'New', '98% positive', 'USB Cable', 'Sheve101', 'Unbranded'),
('355749091598', 'For iPhone 15 Pro Max 14 13 12 11 XR XS Phone Case Heavy Duty Shockproof Cover', '$6.58Fixed price', '$0.00100% Free shipping', 523, '$3,440.20', '2024-09-05', 'New', '99.6% positive', 'Fitted Case/Skin', 'Amy\'s Small Shop', 'PROMAX'),
('384207489158', '3X Tempered Glass Screen Protector For iPhone 15 14 13 12 11 Pro Max X XS XR 8 7', '$2.25Fixed price', '$0.00100% Free shipping', 650, '$1,460.40', '2024-09-05', 'New', '98.3% positive', 'Screen Protector', 'YEET', 'ya!ya!yeet!'),
('385541944538', 'Wallet Card Case Cover Leather Magnetic For iPhone 16 15 14 13 12 11 PRO MAX XR', '$9.41Fixed price', '$17.34100% Free shipping', 219, '$2,059.84', '2024-09-05', 'New', '98.7% positive', 'Wallet Case', 'maciashe-1', 'Unbranded/Generic'),
('386835679760', 'For iPhone 15 14 13 12 11 Pro Max XR Shockproof Liquid Silicone Case Phone Cover', '$6.16Fixed price', '$0.00100% Free shipping', 241, '$1,483.95', '2024-09-05', 'New', '97.5% positive', 'Fitted Case/Skin', 'morea-7828', 'Unbranded'),
('387052411682', '3X For iPhone 15 14 13 12 11 Pro Max XS Privacy Tempered Glass Screen Protector', '$5.85Fixed price', '$0.00100% Free shipping', 1098, '$6,421.79', '2024-09-05', 'New', '98.3% positive', 'Privacy Tempered Glass Screen Protector', 'YEET', 'Unbranded'),
('387113635250', 'For iPhone 15 14 13 12 11 Pro Max Shockproof Mag Safe TPU Case Camera Lens Cover', '$4.99Fixed price', '$10.79100% Free shipping', 874, '$4,361.26', '2024-09-05', 'New', '98.3% positive', 'cover', 'YEET', 'Unbranded'),
('394428099677', 'For iPhone 15 14 13 12 Plus 11 Pro Max Shockproof Heavy Duty Case + Belt Clip', '$9.26Fixed price', '$11.66100% Free shipping', 531, '$4,919.34', '2024-09-05', 'New', '98.6% positive', 'Rugged Case', 'XG-TECH WIRELESS', 'Unbranded'),
('394492060062', 'For iPhone 15 14 13 12 11 Pro Max Tempered Glass Screen Camera Protector', '$8.85Fixed price', '$0.00100% Free shipping', 289, '$2,557.91', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'XG-TECH WIRELESS', 'Unbranded'),
('395066849547', 'For iPhone 15 14 Plus 13 12 11 Pro Max Frosted Case Mag Safe Shockproof Cover', '$9.80Fixed price', '$0.00100% Free shipping', 230, '$2,253.87', '2024-09-05', 'New', '98.6% positive', 'Fitted Case/Skin', 'XG-TECH WIRELESS', 'Unbranded'),
('Nan', 'Item ID 126570540540', '$7.90Fixed price', '$0.00100% Free shipping', 336, '$2,654.03', '2024-08-24', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jungle_scout_product`
--

CREATE TABLE `jungle_scout_product` (
  `ASIN` varchar(20) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `est_monthly_revenue` varchar(50) DEFAULT NULL,
  `est_monthly_sales` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `fees` varchar(20) DEFAULT NULL,
  `net` varchar(20) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `LQS` int(11) DEFAULT NULL,
  `sellers` int(11) DEFAULT NULL,
  `date_first_available` date DEFAULT NULL,
  `buy_box_owner` varchar(100) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `product_tier` varchar(50) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jungle_scout_product`
--

INSERT INTO `jungle_scout_product` (`ASIN`, `product_name`, `brand`, `category`, `est_monthly_revenue`, `est_monthly_sales`, `price`, `fees`, `net`, `rank`, `reviews`, `LQS`, `sellers`, `date_first_available`, `buy_box_owner`, `rating`, `dimensions`, `product_tier`, `weight`) VALUES
('083060524X', '104 Easy Projects for the Electronics Gadgeteer ', 'Robert Michael Brown (Author)', 'Books', 'N.A.', 'N.A.', '12.99', '2.94', '10.05', 8729274, 2, 1, 1, '2005-05-21', 'ThriftBooks-Atlanta', '3.9', '5.60\" x 8.50\" x 0.60\"', 'Small standard', '0.6 lbs'),
('B0000AE67W', '020 KINET Electronics Anti-Static Brush  B/W', 'Kinetronics', 'Camera & Photo', 'N.A.', 'N.A.', '11.95', '1.95', '10.0', 8, 30, 4, 1, '2003-11-24', 'Norman Camera & Video', '4.4', '4.17\" x 4.17\" x 0.47\"', 'Small standard', '0.09 lbs'),
('B0009SUEZ4', '04\' and Up Chrysler Sentry Immobilizer Interface for Remote Start', 'Directed Electronics', 'Automotive', '< $0.00', '< 5', '5.61', '4.35', '1.26', 1832604, 2, 3, 1, '2004-07-07', 'SoundsGreatUSA ONLINE', '4.5', '3.70\" x 2.60\" x 1.20\"', 'Large standard', '0.2 lbs'),
('B000FIN4UK', '1/8 HEAT SHRINK ASSORT 10/PK', 'NTE Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '6.67', '1.99', '4.68', 953714, 5, 3, 1, '2009-08-31', 'Gott Electronics', '3.7', '9.00\" x 3.00\" x 0.30\"', 'Small standard', '0.022 lbs'),
('B000ZEDWHE', '00 20 18 ESD Electronics Pliers Sets\"ESD\" 8Piece', 'KNIPEX', 'Tools & Home Improvement', '< $0.00', '< 5', '193.08', '34.94', '158.14', 2698815, 8, 5, 7, '2012-08-07', 'Amazon Global Store UK', '4.6', '1.81\" x 6.65\" x 8.19\"', 'Large standard', '1.014 lbs'),
('B0013L56OK', '10 DB Attenuator Pad - 1 Each', 'Holland Electronics', 'Industrial & Scientific', '$314.84', '68', '4.63', '3.65', '0.98', 53955, 161, 4, 11, '2008-02-06', 'SatelliteSale', '4.5', '0.35\" x 1.22\" x 2.20\"', 'Small standard', '0.02 lbs'),
('B001PCXKZY', '1000w Photo Control  Twist Lock', 'Tyco Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '25.0', '9.29', '15.71', 799841, 2, 5, 1, '2007-08-01', 'TriStar Books', '4.4', '2.10\" x 3.00\" x 1.00\"', 'Large standard', '1 lbs'),
('B002PXEHT0', '(2) AVITAL Warning Stickers. Car Alarm Security System Decals', 'Directed Electronics Inc', 'Automotive', '< $0.00', '< 5', '5.98', '4.0', '1.98', 1235651, 9, 3, 2, '2012-10-19', 'SoundsGreatUSA ONLINE', '3.9', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B002PXFZA0', '(1) BLUE Super Bright LED w Plug Replacement for most Directed Electronics Systems', 'Directed Electronics', 'Automotive', '< $0.00', '< 5', '7.89', '1.94', '5.95', 1373868, 121, 4, 2, '2008-11-17', 'SoundsGreatUSA ONLINE', '4.3', '0.67\" x 2.56\" x 3.78\"', 'Small standard', '0.04 lbs'),
('B00404LHE0', '10FT USB printer cable cord A-B for Brother Lexmark 10 Feet [Electronics]', 'Amamax', 'USB Cables', 'N.A.', 'N.A.', '5.99', '3.85', '2.14', 0, 11, 3, 1, '2010-08-18', 'N.A.', '4', '5.40\" x 4.60\" x 0.20\"', 'Small standard', '0.15 lbs'),
('B00404LHGS', '10-FT USB 2.0 Cable/Cord for HP DeskJet 3650 printer 10 Feet [Electronics]', 'Tiesto', 'Computers & Accessories', '< $0.00', '< 5', '3.99', '1.31', '2.68', 37560, 3, 4, 1, '2010-08-19', 'Scattered time1', '3.1', '4.60\" x 5.10\" x 0.40\"', 'Small standard', '0.15 lbs'),
('B00404LHIQ', '10-FT 10FT USB 2.0 cable for HP PSC 2210 2410 Printer 10 Feet [Electronics]', 'Artist Unknown', 'USB Cables', 'N.A.', 'N.A.', '4.98', '4.03', '0.95', 0, 4, 5, 1, '2010-08-19', 'N.A.', '4.1', '5.40\" x 5.50\" x 0.60\"', 'Small standard', '0.05 lbs'),
('B004Q7ITOM', '(Bag of 50 Swabs) 6\" Square Mitt Foam Swab for Electronics  Printers  and Cleaning by Swab-its: 71-4542', 'SWAB-ITS', 'Beauty & Personal Care', '< $0.00', '< 5', '22.0', '4.29', '17.71', 613200, 9, 5, 1, '2011-03-02', 'Swab-its', '4.3', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '1 lbs'),
('B0058RWPCG', '\"Home\" Button Sticker for iphone/ipad/itouch  Froggy  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '1.6', '1.29', '0.31', 349910, 86, 3, 2, '2011-06-30', 'Cool Stuff Place', '4.2', '3.50\" x 4.00\" x 0.20\"', 'Small standard', '0.02 lbs'),
('B0058RWQ34', '\"Home\" Button Sticker for iphone/ipad/itouch  Black & White  6 Stickers', 'Vigorgift', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '3.99', '1.59', '2.4', 683286, 3, 4, 1, '2011-06-30', 'Yesing Pluz', '3.3', '4.50\" x 4.00\" x 0.13\"', 'Small standard', '0.2 lbs'),
('B0058RWQLG', '\"Home\" Button Sticker for iphone/ipad/itouch  Poisonous  6 Stickers', 'Generic', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.59', '2.4', 982061, 41, 5, 1, '2011-06-30', 'Yesing Pluz', '3.9', '3.50\" x 3.90\" x 0.20\"', 'Small standard', '0.02 lbs'),
('B005F9CNUQ', '\"Home\" Button Sticker for iphone/ipad/itouch  Happy Kitty  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.59', '2.4', 300734, 207, 4, 1, '2011-07-30', 'Yesing Pluz', '3.9', '4.20\" x 3.50\" x 0.20\"', 'Small standard', '0.03 lbs'),
('B005QSVE8I', '100+ ASVAB Exam (Electronics Information) Questions & Answers', 'Minute Help Guides', 'Kindle Store', 'N.A.', 'N.A.', '2.99', '3.73', '-0.74', 0, 9, 2, 1, '2013-03-27', 'Minute Help Guides', '3.9', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B005XSH6VU', '\"Home\" Button Sticker for iphone/ipad/itouch  Lady Bug  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.59', '2.4', 130637, 5, 4, 1, '2011-10-20', 'Yesing Pluz', '5', '4.33\" x 3.54\" x 0.10\"', 'Small standard', '0.05 lbs'),
('B0063PSBES', '\"Home\" Button Sticker for iphone/ipad/itouch  Friendly  6 Stickers', 'Vigorgift', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '3.99', '1.59', '2.4', 635286, 1, 3, 1, '2011-11-04', 'Yesing Pluz', '5', '0.50\" x 0.50\" x 0.10\"', 'Small standard', '1 lbs'),
('B0064FDLEC', '\"Home\" Button Sticker for iphone/ipad/itouch  Arts  6 Stickers', 'Vigorgift', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '3.99', '1.59', '2.4', 685582, 3, 5, 1, '2011-11-04', 'Yesing Pluz', '2.2', '1.00\" x 1.00\" x 0.00\"', 'Small standard', '1 lbs'),
('B006G7Z6PK', '\"Home\" Button Sticker for iphone/ipad/itouch  Big Foot  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.59', '2.4', 292524, NULL, 4, 1, '2011-11-27', 'Yesing Pluz', 'N.A.', '1.00\" x 1.00\" x 0.00\"', 'Small standard', '0.001 lbs'),
('B006G7Z6VY', '\"Home\" Button Sticker for iphone/ipad/itouch  Leopard  6-in-1 pack', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.31', '2.68', 447657, 499, 5, 1, '2011-11-27', 'Yesing Pluz', '4.1', '3.90\" x 3.30\" x 0.20\"', 'Small standard', '0.02 lbs'),
('B006G7Z70Y', '\"Home\" Button Sticker for iphone/ipad/itouch  Lollipop  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.59', '2.4', 663777, 44, 5, 2, '2011-11-27', 'Yesing Pluz', '3.9', '4.33\" x 3.54\" x 0.10\"', 'Small standard', '0.05 lbs'),
('B0076ZSTD2', '12 Oz Foam Insulated Thermoserv Travel Coffee Mug (Red)', 'GAMA Electronics', 'Kitchen & Dining', '< $0.00', '< 5', '16.95', '7.68', '9.27', 487529, 65, 4, 1, '2012-02-08', 'GAMA Electronics', '4', '3.50\" x 4.50\" x 5.60\"', 'Large standard', '0.2 lbs'),
('B0076ZSTF0', '12 Oz Foam Insulated Thermoserv Travel Coffee Mug (Blue)', 'GAMA Electronics', 'Kitchen & Dining', '$203.40', '12', '16.95', '7.68', '9.27', 216010, 93, 4, 1, '2012-02-08', 'GAMA Electronics', '4.4', '4.10\" x 3.40\" x 5.20\"', 'Large standard', '0.3 lbs'),
('B007928CA2', '\"Home\" Button Sticker for iphone/ipad/itouch  Happy Cathy  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.31', '2.68', 403493, 761, 3, 1, '2012-02-13', 'Cool Stuff Place', '4.1', '1.00\" x 1.00\" x 0.00\"', 'Small standard', '1 lbs'),
('B007KEMCAU', '110V Handheld Infrared LED Spotlight - 700\'L X 150\'W Spotlight - 25\' Cord - 850 or 940NM - 3 Watts', 'Larson Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '562.42', '85.35', '477.07', 2627634, 0, 6, 2, '2012-02-03', 'UnbeatableSale Local', 'N.A.', '13.00\" x 10.00\" x 7.00\"', 'Large standard', '5 lbs'),
('B007VZ6TDE', '\"Home\" Button Sticker for iphone/ipad/itouch  Cutie  6 Stickers', 'Vigorgift', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '3.99', '1.59', '2.4', 1300031, 70, 4, 1, '2012-04-19', 'Yesing Pluz', '4.2', '1.00\" x 1.00\" x 0.00\"', 'Small standard', '0.99 lbs'),
('B0082CG2Z0', '10ft wifi cable RG58 RG-58 N to sma RP', 'Alpha Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.64', '2.39', '9.25', 1452323, 0, 4, 1, '2012-05-11', 'Unwired Holdings', 'N.A.', '7.00\" x 7.00\" x 2.00\"', 'Large standard', '2 lbs'),
('B0084PSRZI', '\"Think Different\" Steve Jobs 2 BIG Art Print Apple iphone & imac creator', 'isellart', 'Home & Kitchen', '< $0.00', '< 5', '120.0', '18.99', '101.01', 7810746, NULL, 5, 1, '2012-05-19', 'honorable_grasshopper', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B0084PSS3O', '\"Think Different\" Steve Jobs 2 HUGE Art Print Apple iphone & imac creator', 'Honorable Grasshopper', 'Home & Kitchen', '< $0.00', '< 5', '190.0', '29.49', '160.51', 7598241, NULL, 5, 1, '2012-05-19', 'honorable_grasshopper', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B0086ZG4A6', '\"Home\" Button Sticker for iphone/ipad/itouch  Happy Face  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.31', '2.68', 298870, 761, 4, 1, '2012-05-27', 'Yesing Pluz', '4.1', '3.80\" x 4.00\" x 0.20\"', 'Small standard', '0.022 lbs'),
('B0088P38IA', '1 Port Mini Serial Server  Rs-232  Us Ps (VESP211-232)', 'B&B Electronics Mfg. Co', 'Electronics', '$18,067.42', '161', '112.22', '15.74', '96.48', 2705, 3, 3, 1, '2012-06-04', 'Amazon.com', '4.3', '2.95\" x 8.03\" x 10.63\"', 'Large standard', '1.109 lbs'),
('B00BJ76KHK', '1 PC Potentiometer Pot Pots 24mm B250K 250K Ohmios Ohms', 'Alpha Electronics', 'Musical Instruments', '< $0.00', '< 5', '8.95', '2.33', '6.62', 325102, 0, 3, 1, '2013-02-21', 'Alpha Distributors Inc', '0', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.19 lbs'),
('B00BJ76S2W', '1 PC Potentiometer Pot Pots 24mm B100K 100K Ohmios Ohms', 'Alpha Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '8.95', '2.33', '6.62', 859144, 1, 3, 1, '2013-02-21', 'Alpha Distributors Inc', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B00CJVSVKE', '\"Hello Deere\" Lovely Kitty Cat 3D Cartoon Soft Shell Case for iPhone 5', 'Hello Deere', 'Cell Phones & Accessories', '< $0.00', '< 5', '7.99', '1.63', '6.36', 3521111, NULL, 5, 1, '2013-06-14', 'C&J deals4you', 'N.A.', '4.84\" x 2.28\" x 0.29\"', 'Small standard', '0.125 lbs'),
('B00CKQV1V4', '10 Grams Rosin Core Solder in Dispensing Tube - 60/40 - Thickness .031\" by RSR Electronics Inc.', 'RSR ELECTRONICS INC', 'Industrial & Scientific', '< $0.00', '< 5', '2.5', '1.37', '1.13', 406553, 2, 6, 1, '2013-04-28', 'Electronix Express', '4.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B00CKQXG0S', '100 Gram 60/40 Solder Roll .031 Inch for Electrical Soldering - by RSR ELECTRONICS INC', 'RSR ELECTRONICS INC', 'Industrial & Scientific', '$219.78', '22', '9.99', '5.4', '4.59', 219354, 47, 4, 1, '2013-04-29', 'Electronix Express', '4.6', '1.26\" x 1.42\" x 1.50\"', 'Large standard', '0.0992 lbs'),
('B00CKR2DEC', '10 Grams Rosin Core Lead-Free Solder .031\" Thick - Sn 96.5%  Ag .3%  Cu .7% by RSR Electronics Inc.', 'RSR ELECTRONICS INC', 'Industrial & Scientific', '< $0.00', '< 5', '4.99', '1.74', '3.25', 892074, 22, 6, 1, '2013-04-29', 'Electronix Express', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B00DDDECJQ', '\"Kings Electronics Co.  Inc. 1704-1 QD connector  shv(high voltage) front mounting bulkhead receptacle  solder cup\"', 'Kings Tire', 'Industrial & Scientific', '< $0.00', '< 5', '33.51', '6.02', '27.49', 863432, 0, 3, 2, '2017-06-03', 'Fanatical Trading', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B00DECV7BM', '\"Qualtek Electronics Corp. Q2-F3X-QK1-01-6IN-106 Tubing Kit 1/16  1/8  1/4  1/2  3/4  and 1 In. sizes; Shrink(3:1)\"', 'Avx', 'Industrial & Scientific', '< $0.00', '< 5', '63.57', '6.08', '57.49', 311178, 0, 4, 1, '2017-04-14', 'Fanatical Trading', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.001 lbs'),
('B00DECZC04', '\"Orion (Knight Electronics  Inc.) OA254AN-11-1TBXC Fan; AC; HighPerform; DieCastAlum; 115V; 850CFM; 2700RPM; 69dB; 75W; Term; Ball; 254mmDia\"', 'X-ON', 'Industrial & Scientific', '< $0.00', '< 5', '110.98', '14.31', '96.67', 234840, 0, 4, 4, '2017-10-12', 'Online Components - com', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.044 lbs'),
('B00DQUOWZK', '(200 Pieces) #8 x 1/2\" Wafer Head Self Drilling Tapping Screw Tek Point Black', 'The Electronics Powerhouse', 'Industrial & Scientific', '< $0.00', '< 5', '9.9', '5.09', '4.81', 589931, 15, 4, 2, '2013-07-02', 'Mega Big Box', '4.1', '3.10\" x 2.90\" x 1.90\"', 'Large standard', '0.01 lbs'),
('B00DWIGUYC', '\"NTE Electronics  Inc. NTE280 TRANSISTOR NPN SILICON 140V IC=12A TO-3CASE AUDIO POWER OUTPUT COMPLEMENT TO NT\"', 'NTE Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '6.49', '1.77', '4.72', 925072, 2, 2, 1, '2020-04-22', 'Standard Supply Electronics', '5', '1.14\" x 3.78\" x 6.26\"', 'Large standard', '0.029 lbs'),
('B00DWIHEK6', '\"NTE Electronics  Inc. NTE388 T-NPN SI HI PWR AF\"', 'NTE Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '23.92', '4.58', '19.34', 1373666, 0, 4, 3, '2013-07-12', 'Monody Trading', 'N.A.', '1.38\" x 2.99\" x 5.91\"', 'Large standard', '0.044 lbs'),
('B00DWIISCO', '\"NTE Electronics  Inc. NTE5804 RECTIFIER SILICON 400PRV 3A DO-27\"', 'NTE Electronics, Inc', 'Automotive', '< $0.00', '< 5', '2.04', '3.58', '-1.54', 1344401, 0, 2, 1, '2014-04-01', 'Data Alchemy', 'N.A.', '3.50\" x 6.50\" x 0.40\"', 'Small standard', '0.022 lbs'),
('B00GJR7J70', '1003-665A - UT Electronics OEM Replacement Furnace Control Board', 'OEM Replm for UT Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '241.99', '30.03', '211.96', 957801, 1, 3, 1, '2013-11-08', 'North America HVAC', '5', '6.00\" x 6.00\" x 6.00\"', 'Large standard', '0.688 lbs'),
('B00GRKCTT2', '\"NTE Electronics  Inc. NTE572 RECTIFIER 1000V 6A TR=500NS FAST RECOVERY\"', 'NTE Electronics', 'Automotive', '< $0.00', '< 5', '3.93', '1.58', '2.35', 1618678, 0, 3, 1, '2015-02-16', 'DISCOUNTLAND', 'N.A.', '0.20\" x 3.50\" x 6.50\"', 'Small standard', '0.25 lbs'),
('B00HDPNAGQ', '1 X 4-Cup Cone Shape Permanent Coffee Filter fits Mr. Coffee 4 Cup Coffeemakers', 'True Modern Electronics', 'Home & Kitchen', '< $0.00', '< 5', '7.9', '2.18', '5.72', 3499706, 32, 5, 2, '2016-04-05', 'JADA Lifestyles', '3.8', '4.60\" x 4.00\" x 2.10\"', 'Large standard', '0.05 lbs'),
('B00I3P8QHS', '\"Always Wear Your Invisible Crown\" Princess Hard Snap on Phone Case (iPhone 5/5s)', 'Jayz Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.53', '1.29', '2.24', 1282557, NULL, 4, 1, '2014-01-28', 'JASON WOOD', 'N.A.', '6.50\" x 3.10\" x 0.40\"', 'Small standard', '0.022 lbs'),
('B00IO3U96A', '10-12 Cup Permanent Basket-Style Coffee Filter & a set of 6 Water Filters designed to fit Mr. Coffee Coffeemakers', 'True Modern Electronics', 'Health & Household', '< $0.00', '< 5', '9.95', '5.04', '4.91', 855408, 4, 4, 2, '2014-04-27', 'JADA Lifestyles', '2.1', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.44 lbs'),
('B00ISI5POC', '10-12 Cup Permanent Basket-Style Coffee Filter & a set of 12 Water Filters designed to fit Mr. Coffee Coffeemakers', 'True Modern Electronics', 'Health & Household', '< $0.00', '< 5', '12.95', '7.08', '5.87', 504314, 56, 4, 2, '2014-03-05', 'JADA Lifestyles', '4.5', '5.40\" x 4.70\" x 3.00\"', 'Large standard', '0.25 lbs'),
('B00IU2Y4SE', '#4 Cone Shape Permanent Coffee Filter & a set of 12 Charcoal Water Filters for Cuisinart DCC-RWF1 Coffeemakers', 'True Modern Electronics', 'Health & Household', '< $0.00', '< 5', '12.95', '2.93', '10.02', 772401, 31, 6, 2, '2014-09-06', 'JADA Lifestyles', '4', '4.10\" x 4.60\" x 6.50\"', 'Large standard', '0.25 lbs'),
('B00IU3GF4Y', '#4 Cone Shape Permanent Coffee Filter & a set of 6 Charcoal Water Filters for Cuisinart DCC-RWF1 Coffeemakers', 'True Modern Electronics', 'Home & Kitchen', '< $0.00', '< 5', '10.95', '2.63', '8.32', 1616637, 1717, 6, 2, '2014-09-09', 'JADA Lifestyles', '3.6', '5.30\" x 3.80\" x 3.00\"', 'Large standard', '0.05 lbs'),
('B00JX0OPBS', '\"He Asked.. I Said Yes!\" Soon to Be Bride Black  White and Red Hard Snap on Phone Case (iPhone 5c)', 'Jayz Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '1.5', '1.29', '0.21', 2245984, 1, 4, 1, '2014-04-24', 'James Wang XS', '4', '5.60\" x 2.98\" x 0.33\"', 'Small standard', '0.001 lbs'),
('B00KWOCRP0', '1.7 x 4.75 mm Right-Angle Connector  Non-Fused  36-inch Cable Length  20 AWG  RoHS Compliant', 'Lind Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '19.0', '2.51', '16.49', 2273441, 0, 4, 1, '2014-06-11', 'Lind Electronics', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.5 lbs'),
('B00KWOCW1E', '1.7 x 5.5 mm Connector  Non-Fused  36-inch Cable Length  20 AWG  RoHS Compliant', 'Lind Electronics', 'Automotive', '< $0.00', '< 5', '19.0', '2.51', '16.49', 5171612, 0, 3, 1, '2014-06-11', 'Lind Electronics', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.5 lbs'),
('B00LH4VMEG', '\"Orange Is the New Black\" Fan Art Hard Snap on Phone Case (iPhone 5c)', 'Jayz Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.31', '2.68', 1137831, 4, 3, 1, '2014-07-02', 'GAMEON LOOKME', '3.3', '3.10\" x 5.60\" x 0.40\"', 'Small standard', '0.2 lbs'),
('B00LIUVM7G', '\"Dr Out Door\" IP68 Fully Water-Proof Hard-Shell Case with Screen Protector for iPhone 5/5s (White FS-5GS-3)', 'DrOutDoor', 'Cell Phones & Accessories', '< $0.00', '< 5', '25.17', '3.0', '22.17', 2154430, 11, 5, 1, '2016-04-10', 'YAWEN zhang', '1', '7.10\" x 4.30\" x 0.70\"', 'Small standard', '0.022 lbs'),
('B00LZQXC3A', '12 Kinds of Small Stainless Steel Screws Electronics Assortment Kit', 'MECO', 'Industrial & Scientific', '< $0.00', '< 5', '12.77', '2.52', '10.25', 1368739, 1, 5, 1, '2014-07-21', 'Meco', '3', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B00MU2JPW0', '1 - 1984 - 1995 Mazda Multi-Kit Single DIN Sub-Dash Installation Kit  Offers quick conversion from 2-shaft to DIN  Specially designed for ISO mount radios with ISO trim ring  99-7501', 'Metra Electronics', 'Cell Phones & Accessories', '< $0.00', '< 5', '18.85', '8.02', '10.83', 898466, 2, 4, 2, '2014-08-18', 'Discountslashers', '4', '0.00\" x 0.00\" x 0.00\"', 'Large standard', '1.57 lbs'),
('B00MU2PHI6', '1 - Décor Wall Plate Insert with 90° Dual HDMI(R) Connector  HDMI(R) décor insert designed to securely attach to HDMI(R) cables  Includes dual 90° HDMI(R) connector  20-4502-WH', 'Datacomm Electronics', 'Electronics', 'N.A.', 'N.A.', '43.04', '4.43', '38.61', 0, 0, 5, 1, '2015-10-04', 'IPC-STORE✅', 'N.A.', '4.15\" x 1.45\" x 1.25\"', 'Large standard', '1 lbs'),
('B00OOMT9MK', '\"Tree of Life\" Unique Eco-Friendly 100% Hand-made Real Natural Wood/Bamboo Hard Shell Case for iPhone 6 Plus (5.5 Inch Screen)(WD-I6P-5)', 'CFStore', 'Cell Phones & Accessories', '< $0.00', '< 5', '12.0', '2.79', '9.21', 907108, 1, 3, 6, '2014-03-01', 'Flora Birrell', '2', '7.60\" x 4.10\" x 0.90\"', 'Large standard', '0.02 lbs'),
('B00OSKAVPM', '(F31) Replacement PRS SE Electronics Backplate Cavity Cover  3ply black', 'mLaval Guitar Parts', 'Musical Instruments', '$239.70', '30', '7.99', '4.48', '3.51', 20060, 4, 4, 1, '2011-04-13', 'mLaval', '5', 'N.A.', 'Small standard', 'N.A.'),
('B00P1QS1UY', '0-90V Dc Motor Speed Control (9937D)', 'KB ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '302.4', '45.88', '256.52', 2307753, 0, 5, 3, '2014-10-30', 'Motor & Control Solutions', 'N.A.', '13.00\" x 11.00\" x 8.00\"', 'Large standard', '4 lbs'),
('B00R1VGJOW', '(2-Pack) Exell PLC-7 w/Tabs CR14250SE 3V 1/2 AA Laser Lithium Battery Button Top Used in Numerical Control Systems Personal Computers & Other Electronics Replaces Sanyo CR2NP', 'Exell Battery', 'Health & Household', '< $0.00', '< 5', '32.95', '3.63', '29.32', 880714, 1, 6, 1, '2014-12-15', 'batteriesinaflash', '5', '0.57\" x 0.57\" x 0.98\"', 'Small standard', '0.03 lbs'),
('B00R6WM76A', '110V LED Spotlight - 800 Lumen - 600\'L X 120\'W Spot Beam - Pistol Grip Style', 'Larson Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '487.64', '74.14', '413.5', 2847314, 0, 5, 2, '2011-09-30', 'UnbeatableSale, Inc', 'N.A.', '9.30\" x 9.20\" x 5.60\"', 'Large standard', '3.1 lbs'),
('B00R6WN4KI', '10\' LED Wiring Harness - Deutsch Connector and Tinned Leads', 'Larson Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '26.0', '4.89', '21.11', 3109093, 0, 4, 1, '2013-03-28', 'Quick Shippers', '0', '9.80\" x 4.10\" x 1.00\"', 'Large standard', '0.3 lbs'),
('B00R6WPHS0', '100W Halogen Handheld Spotlight - 110VAC - Spot/Flood Combo - 900\' Beam - Lightweight(-5)', 'Larson Electronics', 'Automotive', '< $0.00', '< 5', '424.01', '64.59', '359.42', 5176490, 0, 5, 2, '2012-02-03', 'UnbeatableSale, Inc', 'N.A.', '13.30\" x 10.30\" x 7.80\"', 'Large standard', '7.55 lbs'),
('B00R6X3B2I', '11 KVA Step Down Transformer - 240VAC 1PH to 208VAC 1PH - Buck-Boost Transformer', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '830.72', '100.68', '730.04', 352928, 11, 4, 1, '2014-11-14', 'Larson Electronics LLC', '5', '31.00\" x 21.00\" x 21.00\"', 'Extra-large', '46 lbs'),
('B00S9XFHUI', '10ft 18 AWG Nema Hospital Grade 5-15P to IEC C13', 'Quail Electronics', 'Electronics', '< $0.00', '< 5', '16.49', '7.68', '8.81', 143205, 4, 3, 1, '2015-01-15', 'Quail Electronics, Inc.', '4.8', '3.00\" x 7.00\" x 8.50\"', 'Large standard', '0.919 lbs'),
('B00T63177W', '\"Wildcat Nation\" Chevron Sports Hard Black Glossy Cover Cell Phone Case for iPhone 5c', 'VibrantCreations', 'Cell Phones & Accessories', '< $0.00', '< 5', '1.5', '1.29', '0.21', 2426203, NULL, 4, 1, '2015-02-04', 'James Wang XS', 'N.A.', '11.50\" x 1.10\" x 5.80\"', 'Large standard', '0.062 lbs'),
('B00UKEVYAQ', '\"Life Is Short\" Romantic Paris Eiffel Tower Rubber Snap on Phone Case (iPhone 6 Plus)', 'Jayz Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '1.5', '1.29', '0.21', 1055121, 1, 4, 3, '2015-03-11', 'James Wang XS', '5', '4.80\" x 8.40\" x 0.50\"', 'Small standard', '0.05 lbs'),
('B00VDF6VKE', '#4 Cone Shape Permanent Coffee Filter & a set of 12 Charcoal Water Filters for Krups Coffeemakers', 'True Modern Electronics', 'Health & Household', '< $0.00', '< 5', '12.95', '8.3', '4.65', 844061, 2, 4, 2, '2017-07-18', 'JADA Lifestyles', '5', '5.00\" x 6.00\" x 6.00\"', 'Large standard', '0.25 lbs'),
('B00VLB0S18', '10 Watt Handheld LED Pistol Grip Light on 30\' Cord Reel - 120/277V - High Intensity LED Spot Light(-5-15 Straight)', 'Larson Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '966.19', '145.92', '820.27', 2277443, 0, 5, 2, '2015-04-03', 'UnbeatableSale Local', 'N.A.', '17.00\" x 17.00\" x 10.00\"', 'Large bulky', '16 lbs'),
('B00WF81X92', '0.3ML Silver Conductive Wire Glue Paste for Electronics Repair by omyBigDeal', 'omyBigDeal', 'Tools & Home Improvement', '< $0.00', '< 5', '10.15', '5.57', '4.58', 832161, 21, 6, 2, '2014-07-06', 'Mathenia', '3.1', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B00WVFDNGA', '\"Home\" Button Sticker for iphone/ipad/itouch  Mastermind  6 Stickers', 'Unknown', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '3.99', '1.59', '2.4', 681852, 2, 4, 1, '2011-11-04', 'Yesing Pluz', '5', '4.00\" x 3.50\" x 0.20\"', 'Small standard', '0.001 lbs'),
('B00X9KFICS', '\"Fashion Case\" Sweet Dessert Color Cartoon Soft Shell Case for iPhone 6 Plus (5.5 Inch Screen) (YP-TPUFD-I6P-J01)', 'Fashion Case', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '1.59', '2.4', 1677845, NULL, 6, 1, '2015-03-20', 'GAMEON LOOKME', 'N.A.', '6.50\" x 3.60\" x 0.70\"', 'Small standard', '0.1 lbs'),
('B00X9KFT7C', '\"Fashion Case\" Sweet Dessert Color Cartoon Soft Shell Case for iPhone 6 Plus (5.5 Inch Screen) (YP-TPUFD-I6P-J02)', 'N.A.', 'Books', 'N.A.', 'N.A.', '3.99', '1.59', '2.4', 12095572, NULL, 4, 1, '2015-08-26', 'GAMEON LOOKME', 'N.A.', '6.50\" x 3.60\" x 0.70\"', 'Small standard', '1.6 lbs'),
('B00XDRSBBW', '\"Fashion Case\" Sweet Dessert Color Cartoon Soft Shell Case for iPhone 5/5S (YP-TPUFD-5GS-J02)', 'Fashion Case', 'Books', 'N.A.', 'N.A.', '7.88', '4.46', '3.42', 13135913, 0, 4, 1, '2015-08-26', 'Deals from Dalia', '0', '7.30\" x 3.60\" x 0.60\"', 'Small standard', '0.088 lbs'),
('B00YM2I0XQ', '10PCS 0.2ML Silver Conductive Wire Glue Paste Electrically Paste Paint PCB Repair for Electronics Repair Applicatio', 'Neutral', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '25.8', '4.86', '20.94', 1204421, 1, 6, 1, '2015-06-01', 'wellie-store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B0108P8ERC', '\"Home\" Button Sticker for iphone/ipad/itouch  Arts  6 Stickers', 'Vigorgift', 'Cell Phones & Accessories', '< $0.00', '< 5', '3.99', '4.47', '-0.48', 275234, 3, 4, 1, '2011-11-04', 'Yesing Pluz', '2.2', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '1 lbs'),
('B012UHH3HI', '10ft 18 AWG Coiled Nema Hospital Grade 5-15P to Roj', 'Quail Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '13.65', '6.1', '7.55', 253457, 8, 3, 1, '2015-07-28', 'Quail Electronics, Inc.', '4.4', 'N.A.', 'Small standard', 'N.A.'),
('B0130L5JJW', '#2 Aloha Text Pinapple Hawaii Aloha Black Bathroom Silhouette Macbook Symbol Iphone Apple Ipad Decal Skin Sticker Laptop (Red)', 'ExpressDecor', 'Computers & Accessories', '< $0.00', '< 5', '3.74', '3.84', '-0.1', NULL, 4, 4, 1, '2015-07-30', 'ExpressDecors', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B013K7UK3Q', '#1 Reflective Running Belt -Premium Runners Belt - Flip Band Workout Belt - ZIPPER option Fitness Belt Superior 2 iPhone Armband - Reflective Belt Piping & Logo Running Waist Pack 4 keys CC  Iphone 6', 'NBDN', 'Sports & Outdoors', '< $0.00', '< 5', '10.0', '2.49', '7.51', 645700, 1212, 7, 1, '2015-08-07', 'Beegreenplanters', '4.1', '7.80\" x 3.80\" x 1.70\"', 'Large standard', '0.4 lbs'),
('B013YHTEDE', '1000W HP X312 Proprietary Redundant Power Supply Internal 110 V AC 220 V AC J9580A#ABA J9580A Consumer electronics', 'HP', 'Computer Uninterruptible Power Supply Units', 'N.A.', 'N.A.', '449.95', '44.15', '405.8', 0, 0, 3, 1, '2015-08-15', 'GENUINE-HARDWARE', 'N.A.', '10.00\" x 10.00\" x 4.00\"', 'Large standard', '3.7 lbs'),
('B014RGD0RM', '110007-12101897', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '8.0', '1.95', '6.05', 4661101, 1, 2, 1, '2015-09-01', 'Caspers MFG', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014RK6JYE', '110027-89046633', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '11.0', '2.31', '8.69', 5152590, 0, 2, 1, '2015-09-01', 'Caspers MFG', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014RKRW3Q', '110030-12117025', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '11.0', '2.31', '8.69', 3664510, 11, 2, 1, '2015-09-01', 'Caspers MFG', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014RPMJWA', '110034-88987997', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '10.0', '2.19', '7.81', 2744436, 2, 2, 1, '2015-09-01', 'Caspers MFG', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014RQA7XC', '110035-88862225', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '11.0', '2.31', '8.69', 7406620, 0, 2, 1, '2015-09-01', 'Caspers MFG', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014RS2Y8Q', '110061-88987991', 'Casper\'s Electronics', 'Electronics', '< $0.00', '< 5', '10.0', '2.19', '7.81', 1153290, 0, 2, 1, '2015-09-01', 'Caspers MFG', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014RSCAH6', '110063-88862215', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '10.0', '2.19', '7.81', 5187646, 0, 2, 1, '2015-09-01', 'Caspers MFG', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014T40XNQ', '103004 Battery Junction Box Red and Black Stud', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '31.99', '4.83', '27.16', 1066298, 5353, 4, 1, '2013-06-25', 'JEGS', '4.7', '6.30\" x 3.60\" x 1.50\"', 'Large standard', '1 lbs'),
('B014TCV3AA', '108123 HD Fuel Pump/Fan Relay Kit 40 AMP', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '23.95', '6.92', '17.03', 1414126, 2, 3, 1, '2015-09-02', 'Caspers MFG', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014TN1QBU', '108137 Multec II male Injector Con. Kit', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '13.95', '2.66', '11.29', 4685398, 0, 3, 1, '2015-09-02', 'Caspers MFG', '0', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014TQHBP2', '108031 GM Coolant Fan Splice Engine Side', 'Caspers Electronics Inc', 'Automotive', '< $0.00', '< 5', '14.0', '5.73', '8.27', 815681, 1, 3, 1, '2015-09-02', 'Caspers MFG', '5', 'N.A.', 'Small standard', 'N.A.'),
('B014V3D7XS', '109151 Injector Adapter EV6 to D e n s o', 'Casper\'s Electronics', 'Automotive', '< $0.00', '< 5', '4.5', '1.53', '2.97', 5834720, 0, 3, 1, '2015-09-03', 'Caspers MFG', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B014VCP4A8', '108140 Injector Connector Kit EV6', 'Caspers Electronics Inc', 'Automotive', '< $0.00', '< 5', '11.95', '5.48', '6.47', 546513, 1, 3, 1, '2015-09-03', 'Caspers MFG', '5', 'N.A.', 'Small standard', 'N.A.'),
('B015ANI0IU', '(SY #8) 24pcs Everlight Electronics IR Photo Diode  940nm  Fast Response Time', 'Everlight', 'Industrial & Scientific', '< $0.00', '< 5', '5.5', '1.81', '3.69', 1206972, 1, 4, 1, '2012-02-18', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B017CFY25O', '1000 Watt High Intensity LED Light - 110 000 Lumens - 120-277V AC - High Mast/Stadium Lighting', 'Larson Electronics', 'Tools & Home Improvement', 'N.A.', 'N.A.', '4497.79', '730.03', '3767.76', 0, 0, 5, 1, '2015-10-30', 'Larson Electronics LLC', 'N.A.', '40.00\" x 20.00\" x 10.00\"', 'Extra-large', '70 lbs'),
('B017TCU6M8', '(10) WEEB Ground Lay-in-Lugs 6.7 w/ 1/4\" Hardware for PV Solar - Burndy - Wiley Electronics', 'Wiley Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '69.99', '15.26', '54.73', 1553237, 22, 4, 1, '2015-11-10', 'STELLAVOLTA', '4.4', '1.18\" x 3.86\" x 4.80\"', 'Large standard', '2.15 lbs'),
('B01992CWU0', '12 Piece Computer and Electronics Toolkit with Flat  0 / #1 Phillips  and T15 Screwdrivers  Nut Drivers  IC Extractor  IC inserter  and Tweezers (Model CTK2) - by Electronix Express', 'EX ELECTRONIX EXPRESS', 'Computer & Mobile Device Repair Kits', 'N.A.', 'N.A.', '23.39', '2.86', '20.53', 0, 0, 7, 1, '2015-12-11', 'Electronix Express', 'N.A.', '8.50\" x 6.00\" x 1.50\"', 'Large standard', '1 lbs'),
('B019NY84GK', '100 Small Round Rubber Feet - .250 H X .671 D - Made in USA - Food Safe Cutting Boards Electronics Crafts #', 'Linear Motion Labs', 'Industrial & Scientific', '< $0.00', '< 5', '38.99', '5.67', '33.32', 892004, 1, 6, 1, '2015-01-09', 'RUBBERFEET US', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B019QPD9LG', '12 Duracell DL2032 Duralock Lithium Batteries Cell Button Electronics (2x6)', 'DURACELL', 'Health & Household', '$27,251.03', '1,907', '14.29', '6.28', '8.01', 13703, 832, 5, 15, '2015-12-22', 'MP Wholesale', '4.7', '0.43\" x 3.86\" x 4.53\"', 'Small standard', '0.13 lbs'),
('B01A0RFUR0', '10pcs/lot Mini Type Orange Red Diode Lasers 635nm 3mw Laser Dot Module 6x10mm w/Cable', 'Lilly Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '26.8', '5.01', '21.79', 1484273, 0, 5, 1, '2015-12-31', 'Lilly Maria', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B01CJAPX3C', '10 Million Candlepower LED Spotlight - 36 Watt - Pistol Grip - 1600 Foot Beam - 2000 Lumens', 'Larson Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '323.74', '55.32', '268.42', 811147, 9, 6, 1, '2017-01-09', 'UnbeatableSale, Inc', '3.9', '0.00\" x 0.00\" x 0.00\"', 'Large standard', '2 lbs'),
('B01CJAR38U', '108W Portable Emergency LED Light Tower - 10 000 Lumens - USB Port & 12V Socket - 5.25\' Tall Tower', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '1884.88', '286.78', '1598.1', 1000354, 1, 6, 1, '2016-03-04', 'Larson Electronics LLC', '1', 'N.A.', 'Small standard', 'N.A.'),
('B01F3W8VC8', '\"Wilson Electronics Pole Mount Panel Antenna 700-2700 MHz  50 Ohm (314453)\"', 'weBoost', 'Electronics', '$91,344.40', '1,717', '53.2', '14.49', '38.71', 2161, 14, 4, 1, '2016-05-03', 'Amazon.com', '4.2', '2.72\" x 7.72\" x 9.65\"', 'Large standard', '1.5454 lbs'),
('B01GEINLZC', '(2) Pair of Metra 72-5512 Speaker Wire Adapters for Select 1989-Up Ford Vehicles - 4 Total Adapters', 'Metra Electronics', 'Automotive', '< $0.00', '< 5', '17.34', '7.74', '9.6', 683145, 195, 3, 7, '2017-05-20', 'Uneeksupplies⭐Authorized⭐', '4.5', '1.10\" x 5.91\" x 8.58\"', 'Large standard', '0.0992 lbs'),
('B01GEIOWP0', '(2) Pair of Metra 72-4500 Speaker Wire Adapters for GMC Vehicles - 4 Total Adapters', 'Metra Electronics', 'Automotive', '< $0.00', '< 5', '17.59', '5.46', '12.13', 665981, 62, 4, 5, '2016-05-31', 'Googol Shop', '4.3', '0.75\" x 5.91\" x 8.78\"', 'Small standard', '0.075 lbs'),
('B01GEIOYD0', '(2) Pair of Metra 72-4565 Speaker Wire Adapters for Select GMC and Chrysler Vehicles - 4 Total Adapters', 'Metra Electronics', 'Automotive', '< $0.00', '< 5', '16.99', '6.18', '10.81', 1172317, 9, 3, 2, '2016-05-31', 'Mega Big Box', '3.7', '8.00\" x 4.50\" x 0.75\"', 'Small standard', '0.25 lbs'),
('B01GEIPAEM', '(2) Pair of Metra 72-9301 Speaker Wire Adapters for Select Toyota/Mitsubishi Vehicles - 4 Total Adapters', 'Metra Electronics', 'Automotive', '< $0.00', '< 5', '17.99', '6.3', '11.69', 477243, 18, 4, 2, '2016-05-31', 'Mega Big Box', '4.2', '8.00\" x 4.50\" x 0.50\"', 'Small standard', '0.25 lbs'),
('B01HWNLADS', '1080P HDMI AV Adapter HD TV Cable for Samsung Galaxy Tab A 8.0 SM-T350 / SM-T355  Model:  Electronic Store', 'Electronics More', 'Electronics', '$455.62', '38', '11.99', '2.79', '9.2', 11283, 21, 6, 1, '2016-07-03', 'Yxflzer', '3.7', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.01 lbs'),
('B01KP4AEJM', '1/0 gauge Tinned Oxygen Free Copper Wire (06 ft  Black)', 'Advance MCS Electronics', 'Car Amplifier Power & Ground Cable', 'N.A.', 'N.A.', '19.5', '6.07', '13.43', 0, 1, 4, 1, '2021-04-13', 'Advance MCS Electronics', '3', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B01KP7LC8Q', '1/0 gauge heavy duty tinned copper marine battery cable BLACK (03 ft  3/8\" & 5/16\" lugs)', 'Advance MCS Electronics', 'Automotive', '< $0.00', '< 5', '12.26', '5.26', '7.0', 843951, 0, 5, 1, '2018-04-05', 'Advance MCS Electronics', '3.8', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B01LYD979A', '(3 Pack) 9\" x 3.5\" Student Driver Please BE Patient Vehicle Car Window Bumper Safety Warning Alert Sticker Decals - Back Self Adhesive Vinyl', 'Rockmount Electronics', 'Automotive', '< $0.00', '< 5', '6.99', '4.12', '2.87', 2005655, 27, 7, 2, '2016-10-01', 'Rockmount Electronics', '3.8', '0.50\" x 4.00\" x 9.00\"', 'Small standard', '0.04 lbs'),
('B01N1N5MPS', '110°50mw 532nm Green Laser Line Module 25x75mm w/3-5V', 'sunshine-electronics', 'Industrial & Scientific', '< $0.00', '< 5', '46.8', '6.61', '40.19', 664093, 2, 5, 1, '2016-12-01', 'sunshine-electronics', '4.4', 'N.A.', 'Small standard', 'N.A.'),
('B01N4JP0PG', '100 Small Clear Round Rubber Feet - .250 H X .671 D - Made in USA - Food Safe Cutting Boards Electronics Crafts #', 'Linear Motion Labs', 'Tools & Home Improvement', '< $0.00', '< 5', '39.99', '10.05', '29.94', 1044864, 6, 6, 1, '2016-12-31', 'RUBBERFEET US', '3.8', 'N.A.', 'Small standard', 'N.A.'),
('B01N645JLT', '100mW High Power 650nm Red Diode Laser Line Module 120°w/AC', 'sunshine-electronics', 'Industrial & Scientific', '< $0.00', '< 5', '26.5', '4.17', '22.33', 343027, 1, 5, 1, '2016-11-16', 'sunshine-electronics', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B06W53W9Y2', '10 Pcs Set Professional Precision ESD Anti-Static Stainless Steel Tweezers Maintenance Tools Sets With Black Nylon Spudger for Electronics  Jewelry-Making in Supper Rolling Package Bag [ Value Pack ]', 'ACENIX', 'Tools & Home Improvement', '$539.55', '45', '11.99', '6.47', '5.52', 141470, 35, 6, 2, '2017-02-11', 'TOOL MASTER USA', '4.5', '6.30\" x 2.36\" x 1.57\"', 'Large standard', 'N.A.'),
('B06W5WRK17', '( For iPhone 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A20470 Princess Horse', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '4.92', '5.07', 829269, 5, 5, 1, '2017-02-22', 'Pinky Beauty Australia', '4.6', '0.83\" x 3.39\" x 6.50\"', 'Large standard', '0.181 lbs'),
('B06WVNL8JB', '( For iPhone 5 5S / iPhone SE ) Flip Wallet Case Cover and Screen Protector Bundle A20470 Princess Horse', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '6.92', '8.07', 530449, 1, 5, 1, '2017-02-22', 'Pinky Beauty Australia', '5', '0.79\" x 2.76\" x 5.24\"', 'Large standard', '0.1213 lbs'),
('B06XVYGL8V', '( For iPhone 6 Plus / iPhone 6S Plus ) Flip Wallet Case Cover and Screen Protector Bundle A4215 Dragonfly', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '4.87', '5.12', 540200, 8, 5, 1, '2017-03-27', 'Pinky Beauty Australia', '4', '0.51\" x 3.50\" x 6.50\"', 'Small standard', '0.2006 lbs'),
('B06XW3NG1S', '( For iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A4215 Dragonfly', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '5.89', '4.37', '1.52', 698925, 7, 5, 1, '2017-03-27', 'Pinky Beauty Australia', '4', '0.79\" x 2.91\" x 5.51\"', 'Large standard', '0.154 lbs'),
('B06Y12KQGG', '12 FT HDMI Cable 2.0 4K 60hz HDMI 2.0 High Speed with Ethernet - Male to Male', 'Webber Electronics', 'HDMI Cables\n\n\n\n\n\n\n\nBest Sellers Rank', 'N.A.', 'N.A.', '9.99', '4.95', '5.04', 1588, 2, 6, 1, '2017-04-03', 'WebberElectronics', '5', 'N.A.', 'Small standard', '0.63 lbs'),
('B06Y4PC3Y7', '10A Gauge Power Wire Cord Extension Cable with Plug Connector Plug 3 Meters 20AWG for Car Electronics DVR GPS Speaker Fuse Holder Device Modify by HitCar', 'HitCar', 'Automotive', '< $0.00', '< 5', '4.5', '4.57', '-0.07', 2680205, 1, 6, 1, '2018-08-05', 'CZTrader02', '3', '1.18\" x 1.18\" x 1.18\"', 'Large standard', 'N.A.'),
('B06Y5Y76XX', '1/4W Resistor Starter Kit (16 Values  400 Pieces) Resistor Assortment Kit for Hobbyists  Experiments  Science Projects', 'Joe Knows Electronics', 'Industrial & Scientific', '$105.48', '12', '8.79', '5.17', '3.62', 132913, 57, 4, 2, '2017-04-10', 'Jemzee', '4.4', '4.06\" x 3.03\" x 3.03\"', 'Large standard', '1.59 lbs'),
('B071FJNM27', '( For iPhone 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A20232 Dragonfly Beautiful', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '4.78', '5.21', 602689, 11, 5, 1, '2017-02-22', 'Pinky Beauty Australia', '3.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B0727S762Y', '(No Electronics) Key Fob Keyless Entry Smart Remote Shell Case & Pad fits Honda Accord  Civic  CR-V  CR-Z  HR-V  Pilot  Set of 2', 'USARemote', 'Automotive', '< $0.00', '< 5', '24.95', '7.04', '17.91', 537825, 11, 5, 2, '2019-01-31', 'USAREMOTE', '4.6', '0.40\" x 2.80\" x 3.00\"', 'Small standard', '0.0507 lbs'),
('B072HJ8VWF', '10 PCS 2 4 6 Gauge Heat Shrink Tube 1/2 X 1.5 INCH White ENNIS ELECTRONICS TUBING Ring Terminal', 'ENNIS ELECTRONICS', 'Electronics', '< $0.00', '< 5', '7.99', '4.48', '3.51', 709841, 0, 3, 1, '2017-04-26', 'ENNIS ELECTRONICS', 'N.A.', '0.32\" x 2.01\" x 3.58\"', 'Small standard', '0.0507 lbs'),
('B072K7G6TW', '(HY #16) 3-Position 10 Amp  Rotary Switch  10Amp @ 125VAC  6 Amp @ 250v', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '19.49', '3.33', '16.16', 1099695, 2, 4, 1, '2017-06-09', 'The Capacitor Store', '2.2', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B0731LQ5FL', '12 GAUGE WIRE TAN BY ENNIS ELECTRONICS 100 FT SPOOL PRIMARY AUTOMOTIVE AWG COPPER CLAD', 'ENNIS ELECTRONICS', 'Electronics', '< $0.00', '< 5', '24.95', '7.54', '17.41', 815818, 0, 6, 1, '2017-02-17', 'ENNIS ELECTRONICS', 'N.A.', '5.00\" x 5.00\" x 3.00\"', 'Large standard', '1 lbs'),
('B0733L9HBF', '10 GAUGE WIRE PINK BY ENNIS ELECTRONICS 100 FT SPOOL PRIMARY AUTOMOTIVE AWG COPPER CLAD', 'ENNIS ELECTRONICS', 'Audio & Video Power Cables', 'N.A.', 'N.A.', '20.95', '8.44', '12.51', 0, 1, 5, 1, '2017-02-17', 'ENNIS ELECTRONICS', '5', '5.00\" x 5.00\" x 4.00\"', 'Large standard', '2 lbs'),
('B0733LMGFS', '10 GAUGE WIRE BROWN BY ENNIS ELECTRONICS 100 FT SPOOL PRIMARY AUTOMOTIVE AWG COPPER CLAD', 'ENNIS ELECTRONICS', 'Electronics', '< $0.00', '< 5', '29.95', '9.16', '20.79', 661840, 2, 5, 1, '2017-02-17', 'ENNIS ELECTRONICS', '5', '2.90\" x 4.30\" x 4.50\"', 'Large standard', '2 lbs'),
('B0733LS5H7', '10 GAUGE WIRE TAN BY ENNIS ELECTRONICS 100 FT SPOOL PRIMARY AUTOMOTIVE AWG COPPER CLAD', 'ENNIS ELECTRONICS', 'Electronics', '< $0.00', '< 5', '20.95', '8.54', '12.41', 1009799, 1, 6, 1, '2017-02-17', 'ENNIS ELECTRONICS', '4', '2.95\" x 4.76\" x 4.80\"', 'Large standard', '2.0613 lbs'),
('B073468XR9', '(2 Pack) 6\" X 6\" Black Trash Decal Sticker for Trash cans - Back Self Adhesive Vinyl', 'Rockmount Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '6.99', '2.04', '4.95', 1422318, 3, 6, 1, '2017-04-27', 'Rockmount Electronics', '3', '0.39\" x 7.99\" x 7.99\"', 'Small standard', '0.04 lbs'),
('B0739Q3RQF', '( For iPhone 7 ) Phone Case Cover - HOT5307 Flash Super Hero', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '13.98', '6.15', '7.83', 254887, 24, 3, 1, '2019-01-08', 'AIR LEE', '4.2', '0.43\" x 2.99\" x 6.65\"', 'Small standard', '0.0705 lbs'),
('B0739QQBXR', '( For iPhone 5 5S / iPhone SE ) Phone Case Cover - HOT0293 Starry Night Van Gogh', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '5.99', '3.76', '2.23', 779758, 5, 4, 1, '2017-06-26', 'Pinky Beauty Australia', '2.8', '0.32\" x 3.50\" x 6.14\"', 'Small standard', '0.057 lbs'),
('B0739QZYDB', '( For iPhone 6 Plus / iPhone 6S Plus ) Phone Case Cover - HOT0293 Starry Night Van Gogh', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '5.99', '4.6', '1.39', 745384, 5, 4, 1, '2017-06-26', 'Pinky Beauty Australia', '5', '1.53\" x 3.19\" x 6.89\"', 'Large standard', '0.086 lbs'),
('B0739RFLX6', '( For iPhone 6 6S ) Phone Case Cover - HOT0293 Starry Night Van Gogh', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '4.08', '5.91', 695738, 2, 4, 1, '2017-06-25', 'Pinky Beauty Australia', '4.5', '0.35\" x 2.87\" x 6.93\"', 'Small standard', '0.062 lbs'),
('B0739RJ7F8', '( For iPhone 6 6S ) Phone Case Cover - HOT0184 Nightmare Before Christmas', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '4.08', '5.91', 568376, 24, 4, 1, '2017-06-26', 'Pinky Beauty Australia', '3.9', '0.35\" x 2.83\" x 6.81\"', 'Small standard', '0.062 lbs'),
('B0739RXM3P', '( For iPhone 5 5S / iPhone SE ) Phone Case Cover - HOT0191 British Red Phone Booth', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '5.62', '4.37', 210696, 1, 3, 1, '2017-06-26', 'Pinky Beauty Australia', '5', '2.60\" x 3.39\" x 4.88\"', 'Large standard', '0.3968 lbs'),
('B0739RYSX9', '( For iPhone 7 Plus ) Phone Case Back Cover HOT0184 Nightmare Before Christmas', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '4.08', '5.91', 714490, 55, 4, 1, '2017-06-26', 'Pinky Beauty Australia', '4', '0.39\" x 3.39\" x 7.32\"', 'Small standard', '0.09 lbs'),
('B0739RYXSL', '( For iPhone 6 Plus / iPhone 6S Plus ) Phone Case Cover - HOT0195 The Kiss Klimt', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '5.99', '4.18', '1.81', 804997, 1, 4, 1, '2017-06-26', 'Pinky Beauty Australia', '3', '0.43\" x 3.31\" x 7.20\"', 'Small standard', '0.086 lbs'),
('B074KNQ6XM', '(3 Pack) Universal Waterproof Outdoor Survival Pouch for Electronics & Documents', 'ASR Outdoor', 'Sports & Outdoors', '< $0.00', '< 5', '11.99', '2.79', '9.2', 1150644, 1, 5, 1, '2023-11-09', 'Deals Only Web Store', '3', '9.00\" x 1.00\" x 6.00\"', 'Large standard', '0.5 lbs'),
('B074TVLMBG', '(4 Pack) Rust Free Aluminium Sign Large 12\" X 12\" Octagon - PROTECTED BY SECURITY ALARM SYSTEM & MONITORING 24/7 - Security Alert Aluminum Metal Warning Sign', 'Rockmount Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '49.99', '6.99', '43.0', 0, 1, 6, 1, '2017-09-19', 'Rockmount Electronics', '5', '0.04\" x 10.75\" x 10.75\"', 'Small standard', '0.351 lbs'),
('B074TX5P53', '(4 Pack) Rust Free Aluminium Sign Large 14\" X 10\" - Protected By Armed Property Owner - Gun Handgun Security Alert Aluminum Metal Warning Sign', 'Rockmount Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '32.5', '12.72', '19.78', 359423, 17, 5, 1, '2018-06-06', 'JsGardenhome', '4.55', '14.00\" x 10.00\" x 0.04\"', 'Small standard', '0.43 lbs'),
('B074V2FZY3', '(5 Pack) Reflective Rust Free Aluminum Sign Large 12\" X 12\" Octagon - 24 HOURS VIDEO SURVEILLANCE / TRESPASSER WILL BE PROSECUTED - Security Alert No Trespassing Aluminum Metal Warning Sign', 'Rockmount Electronics', 'Patio, Lawn & Garden', '< $0.00', '< 5', '67.0', '11.34', '55.66', 0, 0, 7, 1, '2017-11-06', 'Rockmount Electronics', 'N.A.', '0.60\" x 12.40\" x 12.40\"', 'Large standard', '0.399 lbs'),
('B0756SCYZ9', '( For iPhone 5 5S / iPhone SE ) Flip Wallet Case Cover and Screen Protector Bundle A20101 Beach Sea Sky', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '6.3', '8.69', 375755, 6, 5, 1, '2017-08-29', 'Pinky Beauty Australia', '2.5', '6.00\" x 4.00\" x 0.70\"', 'Small standard', '0 lbs'),
('B075Q4Q59G', '( For iPhone 6 Plus / iPhone 6S Plus ) Flip Wallet Case Cover and Screen Protector Bundle A4112 Peacock', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '6.39', '8.6', 542445, 4, 5, 1, '2017-09-18', 'Pinky Beauty Australia', '3.2', '0.75\" x 3.43\" x 6.57\"', 'Small standard', '0.1786 lbs'),
('B075SWYNKZ', '( For iPhone 8 / iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A0066 Starry Night Van Gogh', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.95', '5.87', '9.08', 592925, 7, 5, 1, '2017-09-21', 'Pinky Beauty Australia', '4.7', '0.79\" x 2.91\" x 5.83\"', 'Large standard', '0.132 lbs'),
('B075SX2KQP', '( For iPhone 8 / iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A0007 The Kiss Klimt', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '12.99', '5.18', '7.81', 669550, 4, 5, 1, '2017-09-21', 'Pinky Beauty Australia', '4.6', '0.75\" x 2.91\" x 5.95\"', 'Small standard', '0.139 lbs'),
('B075SXBDST', '( For iPhone 8 / iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A20232 Dragonfly Beautiful', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '6.92', '8.07', 315902, 31, 5, 1, '2017-09-21', 'Pinky Beauty Australia', '3.9', '0.79\" x 2.99\" x 5.67\"', 'Large standard', '0.1323 lbs'),
('B075SXFKH8', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A0066 Starry Night Van Gogh', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '7.99', '4.01', '3.98', 623306, 1212, 6, 1, '2017-09-21', 'Pinky Beauty Australia', '4.2', '0.70\" x 3.60\" x 6.50\"', 'Small standard', '0.201 lbs'),
('B075SXG883', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A20470 Princess Horse', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '6.09', '8.9', 393413, 10, 5, 1, '2017-09-21', 'Pinky Beauty Australia', '4.1', '0.79\" x 3.62\" x 6.69\"', 'Large standard', '0.1764 lbs'),
('B075SXP8FR', '( For iPhone 8 / iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A4141 Sugar Skull', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '12.89', '5.17', '7.72', 738477, 3, 5, 1, '2017-09-21', 'Pinky Beauty Australia', '5', '0.63\" x 2.99\" x 5.75\"', 'Small standard', '0.132 lbs'),
('B075SXPTX9', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A20325 Sugar Skull Skeleton', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '12.79', '5.91', '6.88', 725857, 6, 6, 1, '2017-09-21', 'Pinky Beauty Australia', '5', '0.83\" x 3.42\" x 6.54\"', 'Large standard', '0.181 lbs'),
('B075SXVRMY', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A1944 Cat', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '5.34', '9.65', 563464, 22, 5, 1, '2017-01-23', 'Pinky Beauty Australia', '3.6', '0.71\" x 3.39\" x 6.46\"', 'Small standard', '0.181 lbs'),
('B075SXWMV8', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A0021 Starfish Beach Sea Blue Sky', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '4.92', '5.07', 718270, 1313, 6, 1, '2017-09-21', 'Pinky Beauty Australia', '3.9', '0.87\" x 3.94\" x 6.69\"', 'Large standard', '0.176 lbs'),
('B075SXYNFM', '( For iPhone 8 / iPhone 7 ) Wallet Case Cover and Screen Protector Bundle A4131 Giraffe', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '5.87', '9.12', 340860, 11, 6, 1, '2017-09-21', 'Pinky Beauty Australia', '4.1', '5.67\" x 2.99\" x 0.79\"', 'Large standard', '0.14 lbs'),
('B075SY1YLL', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A1369 Nightmare', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '6.39', '8.6', 431590, 22, 6, 1, '2017-09-21', 'Pinky Beauty Australia', '4.4', '0.71\" x 3.43\" x 6.54\"', 'Small standard', '0.1808 lbs');
INSERT INTO `jungle_scout_product` (`ASIN`, `product_name`, `brand`, `category`, `est_monthly_revenue`, `est_monthly_sales`, `price`, `fees`, `net`, `rank`, `reviews`, `LQS`, `sellers`, `date_first_available`, `buy_box_owner`, `rating`, `dimensions`, `product_tier`, `weight`) VALUES
('B075SY7345', '( For iPhone 8 / iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A4215 Dragonfly', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '5.34', '9.65', 247102, 8, 6, 1, '2017-09-21', 'Pinky Beauty Australia', '5', '0.63\" x 2.91\" x 5.83\"', 'Small standard', '0.1323 lbs'),
('B075SY8FFF', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A4131 Giraffe', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '5.89', '4.59', '1.3', 717748, 9, 5, 1, '2017-09-21', 'Pinky Beauty Australia', '4.2', '0.79\" x 3.62\" x 6.69\"', 'Large standard', '0.176 lbs'),
('B075SYD32P', '( For iPhone 8 / iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A1369 Nightmare Before Christmas', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '4.79', '4.5', '0.29', 604909, 20, 6, 1, '2017-09-21', 'Pinky Beauty Australia', '3.6', '0.91\" x 3.07\" x 5.87\"', 'Large standard', '0.132 lbs'),
('B075SYD6DP', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A0096 British Red Phone Booth', 'Hearthxy', 'Cell Phones & Accessories', '< $0.00', '< 5', '7.99', '4.01', '3.98', 625601, 14, 6, 1, '2017-07-03', 'Pinky Beauty Australia', '4.1', '0.70\" x 3.40\" x 6.50\"', 'Small standard', '0.201 lbs'),
('B075WG8J7G', '( For iPhone 8 / iPhone 7 ) Flip Wallet Case Cover and Screen Protector Bundle A20470 Princess Horse', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '14.99', '5.87', '9.12', 431534, 14, 5, 1, '2017-09-21', 'Pinky Beauty Australia', '4.4', '0.79\" x 2.91\" x 5.59\"', 'Large standard', '0.1323 lbs'),
('B075WTN9JB', '( For iPhone 8 Plus / 7 Plus ) Flip Wallet Case Cover and Screen Protector Bundle A8363 Horse', 'Pinky Beauty Australia', 'Cell Phones & Accessories', '< $0.00', '< 5', '5.89', '4.59', '1.3', 695030, 11, 5, 1, '2017-07-31', 'Pinky Beauty Australia', '3.9', '0.91\" x 3.82\" x 6.61\"', 'Large standard', '0.176 lbs'),
('B0761XDSWS', '$$$ Dollar Sign Sexy Naked Bikini Model Girl Cash Franklins High Life Plastic Phone Snap On Back Case Cover Shell Compatible with iPhone 6 & iPhone 6s', 'Case Pool', 'Cell Phones & Accessories', '< $0.00', '< 5', '8.99', '4.63', '4.36', 1055063, 2, 6, 1, '2017-01-22', 'Case Pool', '2.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.04 lbs'),
('B076522G8M', '(2 Pack) Outdoor/Indoor 8.27\" high x 5.51\" wide Home Business Security DVR Camera Video Surveillance System Window Door Wall Warning Signs Alert Sticker DecalsBack Self Adhesive Vinyl', 'Rockmount Electronics', 'Home Security Systems', 'N.A.', 'N.A.', '7.99', '4.48', '3.51', 3574, 15, 5, 1, '2014-08-07', 'Rockmount Electronics', '3.7', '0.10\" x 6.00\" x 8.00\"', 'Small standard', '0.0309 lbs'),
('B0765BWKV7', '1000 Small Clear Round Rubber Feet - .250 H X .671 D - Made in USA - Food Safe Cutting Boards Electronics Crafts #', 'Linear Motion Labs', 'Tools & Home Improvement', '< $0.00', '< 5', '309.99', '47.49', '262.5', 2038490, 0, 6, 1, '2016-12-31', 'RUBBERFEET US', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B076FCPT3C', '09160243101 HAN D Series 24 Position Size 6B Female Insert - 1 item(s)', 'HARTING ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '35.29', '8.37', '26.92', 2287139, 0, 3, 1, '2014-10-24', 'SMARTNSAVE', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.16 lbs'),
('B076GL1TRG', '(2 Pack) Outdoor/Indoor 8.27\" high x 5.51\" wide Home Business NO ENTRY UNLESS AUTHORIZED Window Door Wall Security Warning Signs Stop Alert Sticker Decals - Back Self Adhesive Vinyl', 'Rockmount Electronics', 'Electronics', '< $0.00', '< 5', '6.99', '3.84', '3.15', 853780, 1, 6, 2, '2015-11-03', 'Rockmount Electronics', '5', '0.12\" x 5.75\" x 8.62\"', 'Small standard', '0.033 lbs'),
('B076VNH5DY', '\"Wilson Electronics 4G Omni Plus Building Antenna 700-2700 MHz  75 Ohm (304423)\"', 'weBoost', 'Electronics', '$1,298,283.24', '21,116', '64.29', '18.08', '46.21', 0, 1672, 5, 1, '2016-09-06', 'Amazon.com', '4.4', '3.82\" x 3.86\" x 10.51\"', 'Large standard', '1.543 lbs'),
('B076YM6CXD', '(NG #28) 2pcs VDE 3uF 200vac Axial Film Capacitor  10% Tolerance  MKP', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '7.25', '1.86', '5.39', 1634151, 0, 4, 1, '2017-10-28', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B0775FVM17', '(HY #51) 2pcs DPST Rocker Switch  ON/Off  20A 125VAC Compatible with Carling', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '10.75', '2.28', '8.47', 1091267, 0, 5, 1, '2017-11-03', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B077G89VK2', '1/0 Gauge Heavy Duty tinned Copper Marine Battery Cable RED (02 ft  3/8\" & 5/16\" lugs)', 'Advance MCS Electronics', 'Sports & Outdoors', '< $0.00', '< 5', '7.53', '1.83', '5.7', 625559, 7, 5, 1, '2017-11-07', 'Advance MCS Electronics Inc', '4.6', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B077ZDX7G4', '(HY #14) 2pcs RED Lighted Rocker Switch  ON/Off  15A 250VAC  20A 125V  DPST; Compatible with Carling', 'Advanced Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '13.75', '2.64', '11.11', 1092583, 1, 5, 1, '2017-12-07', 'The Capacitor Store', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B078211JS6', '12 Gauge Wire by ENNIS ELECTRONICS 100 FT RED Spool Primary AWG Copper CLAD', 'ENNIS ELECTRONICS', 'Audio & Video Power Cables', 'N.A.', 'N.A.', '13.99', '7.1', '6.89', 0, 0, 3, 1, '2017-02-17', 'ENNIS ELECTRONICS', 'N.A.', '5.00\" x 5.00\" x 3.00\"', 'Large standard', '1.1 lbs'),
('B078VGSGHM', '(HY #2) 4pc Black Rocker Switch DPDT 10A 250Vac 15A 125Vac  ON-Off-ON', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '10.25', '2.22', '8.03', 869937, 3, 5, 1, '2018-01-07', 'The Capacitor Store', '2', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B078VHQXLG', '(HY #4) 2pcs Green Lighted Rocker Switch  ON/Off/ON  16A 250VAC  20A 125V  DPDT', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '13.75', '2.64', '11.11', 1177374, 1, 4, 1, '2018-01-07', 'The Capacitor Store', '3', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B078VM63CJ', '(HY #7) 2pcs Micro Switch Lever Action SPDT Switch Microwave Door  Freezer  AC/DC 250v', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '15.75', '2.88', '12.87', 2245732, 0, 4, 1, '2018-01-07', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B079JDTC36', '(HY #21) One Piece MOMENTARY Rocker Switch for Polarity Reversing DC Motor Control  (ON) Off (ON)', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '2.76', '11.99', 481793, 0, 5, 1, '2018-02-01', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.001 lbs'),
('B07BFQFYKX', '100 Pcs 50mm x 100mm Silver Tone Flat Open Top Anti Static Bag For Electronics By Fuxell', 'Fuxell', 'Industrial & Scientific', '< $0.00', '< 5', '6.87', '1.81', '5.06', 1972440, 0, 5, 1, '2020-02-26', 'Ucland', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07C19LDB7', '10PCS TCRT5000 Infrared Reflective Sensor Module / Photoelectric Switch IR Barrier Line Track', 'sunshine-electronics', 'Automotive', '< $0.00', '< 5', '12.35', '1.98', '10.37', 6000643, 0, 6, 1, '2018-04-07', 'sunshine-electronics', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07C1QKS7F', '10pcs 90º Laser Line Lens / Laser Module Lens / Plastic Laser Lens 8mm Diameter', 'sunshine-electronics', 'Industrial & Scientific', '< $0.00', '< 5', '15.83', '2.89', '12.94', 1513583, 0, 4, 1, '2018-04-09', 'sunshine-electronics', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07C6HX471', '100 pcs 2.75\" Small Head Foam Tip Cleaning Swab Lint Free Foam Tipped Swab Sticks for Camera Optical Lens and Electronics Detailing and Hard-to-Reach Area CK-FS742(100)', 'cleansky', 'Industrial & Scientific', '$586.08', '66', '8.88', '3.99', '4.89', 0, 75, 7, 1, '2018-04-14', 'cleansky', '4.6', '0.55\" x 3.70\" x 4.45\"', 'Small standard', '0.071 lbs'),
('B07C7P47XY', '( For iPhone X ) Durable Protective Soft Back Case Phone Cover - HOT30023 Deadpool', 'True Love Jewellery and Accessory', 'Cell Phones & Accessories', '< $0.00', '< 5', '13.99', '6.15', '7.84', 283036, 30, 4, 1, '2018-04-17', 'Balendou', '4', '0.35\" x 3.66\" x 6.89\"', 'Small standard', '0.0728 lbs'),
('B07C7P78RR', '( For iPhone 8 Plus / iPhone 7 Plus ) Durable Protective Soft Back Case Phone Cover - HOT30009 Deadpool', 'True Love Jewellery and Accessory', 'Cell Phones & Accessories', '< $0.00', '< 5', '13.99', '6.99', '7.0', 245098, 25, 6, 1, '2018-04-17', 'Balendou', '4.1', '0.87\" x 3.82\" x 6.85\"', 'Large standard', '0.0882 lbs'),
('B07CGVCYD5', '#1 Best Waterproof iPhone 5s Case  Underwater Protective Phone Cover Aluminum Cases. Shockproof  Dustproof & Scratch Resistant Protection. FREE Bonus Charging Cable  Protect & Defend By Armour Shell.', 'Armour Shell', 'Cell Phones & Accessories', '< $0.00', '< 5', '25.17', '3.0', '22.17', NULL, 13, 5, 1, '2014-10-26', 'YAWEN zhang', '3.7', '6.80\" x 4.10\" x 1.20\"', 'Large standard', '0.25 lbs'),
('B07CH2HX8M', '100pcs 2.677\" Cleanroom Polyester Tip Cleaning Swabs for Camera Sensor  Optic Lens  Headphone Jack  Precision Instrument  Electronics CK-PS743 (100)', 'cleansky', 'Industrial & Scientific', '$94,221.88', '9,644', '9.77', '4.06', '5.71', 0, 23, 7, 1, '2018-04-18', 'cleansky', '4.3', '3.54\" x 3.03\" x 0.55\"', 'Small standard', '1.27 lbs'),
('B07CLCJ8JK', '100pcs 4.92\" Cleanroom Double-Layer Polyester Tip Cleaning Swabs with Large Head Cleaning for Inkjet/Thermal Printers  Optical Lens  Camera Sensors  Gun  Firearms  Electronics (707-Polyester Swab)', 'cleansky', 'Industrial & Scientific', '$385.71', '23', '16.77', '6.48', '10.29', 206537, 16, 7, 1, '2018-04-22', 'cleansky', '4.5', '1.81\" x 6.69\" x 6.97\"', 'Large standard', '0.399 lbs'),
('B07D1J5LSD', '0.1uf  0.01uf  0.001uf  100pf  1uF  Yellow Box MKT Polyester Film Capacitor Assortment', 'Interstellar Electronics', 'Industrial & Scientific', '$179.00', '10', '17.9', '6.82', '11.08', 220188, 80, 6, 1, '2018-05-11', 'Interstellar Electronics', '4.5', '0.83\" x 2.60\" x 5.32\"', 'Large standard', '0.168 lbs'),
('B07D278ZB7', '1/4\" NPT Thread High Pressure 10000 PSI Hydraulic Quick Connect Coupler with Dust Caps Hydraulic Jacks', 'AKJia Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '18.99', '7.74', '11.25', 389965, 6, 6, 1, '2018-05-13', 'AKJia Electronics', '4.2', '2.21\" x 3.15\" x 4.41\"', 'Large standard', '0.492 lbs'),
('B07DHXY5X3', '(AIE)-USBCDPLAY1 - Integrated Car/Vehicle CD Player via USB Data Port Factory Radio Connection – (for Vehicle Compatibility - Review Fit Chart in Images)', 'Automotive Integrated Electronics', 'Electronics', '< $0.00', '< 5', '135.0', '17.66', '117.34', 280787, 201, 7, 2, '2018-06-01', 'Amazon Warehouse', '3.5', '2.99\" x 7.91\" x 10.04\"', 'Large standard', '2.2 lbs'),
('B07DJ2FBJY', '(AIE)-USBCDPLAY2 - Integrated Car/Vehicle CD Player via USB Data Port Factory Radio Connection – (For Vehicle Compatibility - Review Fit Chart in Images)', 'Automotive Integrated Electronics', 'Electronics', '$4,802.40', '30', '160.08', '19.32', '140.76', 73527, 390, 7, 2, '2018-06-01', 'Amazon.com', '3.7', '2.87\" x 7.99\" x 10.00\"', 'Large standard', '1.72 lbs'),
('B07F6519CX', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone 6 Plus)', 'Infinity Phone Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '1.79', '8.2', 895902, 7, 3, 1, '2019-06-25', 'Infinity Phone Cases', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07F6546RK', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone 8 Plus)', 'Infinity Phone Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '1.79', '8.2', 557363, 7, 3, 1, '2019-06-25', 'Infinity Phone Cases', '5', '0.39\" x 3.94\" x 7.00\"', 'Small standard', '0.15 lbs'),
('B07F65HYSB', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone 6s)', 'Infinity Phone Cases', 'Sports & Outdoors', '< $0.00', '< 5', '9.99', '4.87', '5.12', 589451, 1, 4, 1, '2019-06-25', 'Infinity Phone Cases', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07F65R3Z6', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone 4/4s)', 'Infinity Phone Cases', 'Electronics', '< $0.00', '< 5', '9.99', '1.79', '8.2', 589451, 1, 4, 1, '2019-06-25', 'Infinity Phone Cases', '1', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.19 lbs'),
('B07F65SD9P', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone 6s Plus)', 'Infinity Phone Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '1.79', '8.2', 741277, 1, 4, 1, '2019-06-25', 'Infinity Phone Cases', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07FHYFLBY', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone 7 Plus)', 'Infinity Phone Cases', 'Cell Phones & Accessories', '< $0.00', '< 5', '9.99', '1.79', '8.2', 642918, 7, 3, 1, '2019-06-25', 'Infinity Phone Cases', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07FZJ7SY3', '100pcs 6.4\'\' Firearm Cleaning Swabs Kit  Long Handle Cleanroom Foam Tip Cleaning Swabs for Gun，Camera  Optical Lens  Electronics and Detailing CK-FS740', 'cleansky', 'Industrial & Scientific', '$353.10', '30', '11.77', '5.91', '5.86', 0, 224, 7, 1, '2018-07-29', 'cleansky', '4.3', '0.59\" x 5.98\" x 8.23\"', 'Small standard', '0.24 lbs'),
('B07G5LHXGX', '100pcs 3.54\" Dual Tilted Tip Cleanroom Polyester Cleaning Swab for PCB/BGA/Optic Lens/Electronics/Semiconductor Instrument Detailing  Small Hole and Hard-to-Reach Area CK-PS236B (100)', 'cleansky', 'Industrial & Scientific', '$102.16', '8', '12.77', '5.58', '7.19', 0, 34, 7, 1, '2018-08-03', 'cleansky', '4.5', '0.28\" x 5.75\" x 5.79\"', 'Small standard', '0.1168 lbs'),
('B07G5PDHBR', '(RR #75) Potter & Brumfield 30A 24v SPST Relay  T9AP1D52-24  Battery Chargers  Golf Carts', 'Advanced Electronics', 'Automotive', '< $0.00', '< 5', '9.99', '2.19', '7.8', 1487809, 66, 4, 2, '2019-05-20', 'Traktronix', '3.3', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07G683TJT', '(HY #64) Cherry CS SPDT Rocker Switch  On/Off/On  20A @125vac 16A @ 250v', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.75', '2.4', '9.35', 856827, 0, 5, 1, '2018-08-04', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07G69QZZY', '(TP #39) Johnson Motor (Used in Hobby) 6V-24V Type-3 DC  12VDC', 'Advanced Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '12.25', '2.46', '9.79', 1527564, 1, 4, 1, '2018-08-04', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07GB861H6', '11 Pcs Anti-Static ESD Safe Long Stainless Steel Tweezers for Electronics Soldering  Watch  Jewelry  Hobby Crafts  Eyelash Extensions  Ingrown Hair - with Case by G.S Online Store', 'GS Online', 'Beauty & Personal Care', '< $0.00', '< 5', '34.99', '6.24', '28.75', 1216356, 0, 6, 1, '2016-12-31', 'G.S ONLINE STORE', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07GBG766N', '100pcs 2.95\" Pointed Tipped Cleanroom Microfiber Swabs for Hard Disk， Optic Lens/PCB/BGA/Electronics/Semiconductor Instrument CK-MS750 (100)', 'cleansky', 'Industrial & Scientific', '$107.70', '10', '10.77', '5.34', '5.43', 0, 29, 7, 1, '2018-08-09', 'cleansky', '4.4', '0.51\" x 3.35\" x 4.17\"', 'Small standard', '0.075 lbs'),
('B07H2PGT2Y', '(HY#8) One MOMENTARY Black Rocker Switch for Polarity Reversing DC Motor (ON) Off (ON)', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '13.75', '2.64', '11.11', 870616, 2, 5, 1, '2018-09-03', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07H2RQG7J', '(RR #78) Potter & Brumfield T9AS1D22-110 30A Relay 110VDC Coil  SPST  277VAC Contacts', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '17.5', '3.09', '14.41', 1237091, 0, 4, 1, '2018-09-03', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07H5TH84C', '(HY #23) SPDT Lighted Rocker Switch 10 Amps 12 Volts DC  Black  ON Off ON', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.75', '2.4', '9.35', 1459954, 0, 4, 1, '2018-09-07', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07H92CK55', '(100 Pack) Tiny Electronics Rubber Washers - for use with Various Circuit Boards and Raspberry Pi', 'Primal23 Industrial', 'Industrial & Scientific', '$10,881.00', '390', '27.9', '5.17', '22.73', 9948, 0, 5, 1, '2018-01-05', 'Primal23 Industrial', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07HGJGFJ1', '(RR #26) Magnecraft W388X-2 General Purpose Relay 12vdc  SPDT  Open Frame', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.75', '2.4', '9.35', 1854132, 0, 5, 1, '2018-09-18', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07HGL2ZS3', '(RR #79A) 2pcs Omron Relay 24vdc SPST G8P-1A4P-24VDC NO 30A  250VAC  1 Form A T9AS1D12-24vdc Potter and Brumfield Tyco', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '18.0', '6.48', '11.52', 261052, 6, 5, 1, '2018-09-18', 'The Capacitor Store', '3.4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.5 lbs'),
('B07HKRBBXJ', '(RR #31) TE Connectivity Relay SPST T9AP1D52-48-01 30A  48V Battery Charger  Forklift  Potter and Brumfiled Normally Open', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '10.99', '2.31', '8.68', 319790, 12, 6, 1, '2018-09-21', 'Traktronix', '4.7', '7.00\" x 3.00\" x 1.00\"', 'Large standard', '4 lbs'),
('B07HNKWLZH', '(RR #40) 1pc Song Chuan Micro Relay SPST 301-1A-C-R1-U03 35A 14vdc 12vdc', 'Advanced Electronics', 'Automotive', '< $0.00', '< 5', '12.75', '2.52', '10.23', 2808620, 1, 5, 1, '2018-09-25', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07HNL528H', '(RS #21) 1pc TE Connectivity Thermal Circuit Breaker  10A 250vac  W57-XF6A4A10-10 PB1960-ND', 'Advanced Electronics', 'Tools & Home Improvement', '$243.75', '15', '16.25', '2.94', '13.31', 560065, 2, 5, 1, '2018-09-25', 'The Capacitor Store', '4.7', '4.00\" x 1.00\" x 7.00\"', 'Large standard', '0.22 lbs'),
('B07HNNTVQ5', '(RR #38) 1pc Tyco Power Relay  SPST-NO  22VDC  30A  T9AP1D52-22-01  240VAC @ 30 Amps', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '33.34', '4.99', '28.35', 876611, 0, 6, 1, '2023-02-22', 'SupplyMount', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07HQWNKCX', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone Xs)', 'Infinity Phone Cases', 'Electronics', '< $0.00', '< 5', '9.99', '1.79', '8.2', 589451, 7, 3, 1, '2019-06-25', 'Infinity Phone Cases', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07HQXMTND', '#LABron Lakers Lebron Illustration Basketball Phone Case Cover - Select Model (iPhone Xs MAX)', 'Infinity Phone Cases', 'Electronics', '< $0.00', '< 5', '9.99', '1.79', '8.2', 589451, 1, 4, 1, '2019-06-25', 'Infinity Phone Cases', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07JQWPB1B', '(5X) TG07-0356NSRL-5 | Halo Electtonics | Single Transformer Isolation  6 pin SMD Package T3/E3/DS3/STS-1 | Turns Ratio 1:2', 'Halo Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.55', '2.5', '10.05', 1306322, 0, 5, 1, '2018-10-26', 'N.A.', 'N.A.', '1.00\" x 4.00\" x 6.00\"', 'Large standard', '0.701 lbs'),
('B07K6F14F3', '0-5V/0-10V to 0-100!% Voltage to PWM module', 'Electronics BoardJINGLUYAO', 'Musical Instruments', '< $0.00', '< 5', '13.49', '3.01', '10.48', 266434, 0, 4, 1, '2018-11-03', 'E-Shine Technology', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07KJRY7TT', '(2 Pack) 8.27\" x 5.51\" Beware of Dog Window Door Wall Security Warning Alert Decal Sticker - Back Self Adhesive Vinyl', 'Rockmount Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '6.99', '2.04', '4.95', 789543, 1919, 6, 1, '2014-08-07', 'Rockmount Electronics', '4.1', '0.31\" x 5.71\" x 8.62\"', 'Small standard', '0.02 lbs'),
('B07KJW3N63', '(2 Pack) 8.27\" high x 5.51\" Wide Home Business Smile You\'re ON Camera Yellow Window Door Wall Security Warning Alert Sticker DecalsBack Self Adhesive Vinyl', 'Rockmount Electronics', 'Home & Kitchen', '< $0.00', '< 5', '6.99', '4.33', '2.66', 2387008, 1, 6, 2, '2014-08-07', 'Rockmount Electronics', '5', '0.43\" x 5.71\" x 8.82\"', 'Small standard', '0.02 lbs'),
('B07LF6PSJ7', '\"PopSockets Cell Phone Stands - Smartphones & Tablets - \"\"Brave New Look Thin Blue Line - Police Off PopSockets MagSafe PopGrip for iPhone', 'Brave New Look', 'Cell Phones & Accessories', '< $0.00', '< 5', '28.99', '7.86', '21.13', NULL, NULL, 7, 1, '2023-08-21', 'Amazon', 'N.A.', '3.68\" x 2.38\" x 1.70\"', 'Large standard', '0.8 lbs'),
('B07LFNWHTC', '1 Set Electronics of 1.5Amp Harley Davidson 6V 12V Maintainer Tender Battery Charger', 'GENERIC', 'Automotive', '< $0.00', '< 5', '27.99', '7.41', '20.58', 318872, 2, 3, 1, '2019-01-15', 'A-1 Professional Supply', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07LFTVPFY', '(SY #3) 1pc Unitrode Schottky Diode Rectifier 35A 35v Stud Mounted with Wire', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.25', '2.34', '8.91', 701010, 0, 4, 1, '2018-12-17', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', '0.188 lbs'),
('B07LGW3SNR', '(SG #17) New Powerful Spiral Xenon Strobe Tube  50WPS Per Flash', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '16.75', '6.06', '10.69', 264619, 5, 4, 1, '2018-12-19', 'The Capacitor Store', '4.4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07M8YWJF2', '(2 Pack) 4\" X 4\" White - Free WIFI Sign - UV Resistant  Waterproof  Peel & Stick Adhesive Vinyl Label Decal Sticker Quote Mural Art Script - For Business Store  Shop  Cafe  Office  Restaurant  Vehicle', 'Rockmount Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '7.99', '4.48', '3.51', 0, 14, 6, 1, '2017-04-26', 'Rockmount Electronics', '4.2', '0.04\" x 4.92\" x 9.33\"', 'Small standard', '0.0441 lbs'),
('B07MCVXZS3', '(2 Pack) 6\" X 6\" Black Trash Sign - Back Adhesive Vinyl Label Decal Sticker for Trash cans', 'Rockmount Electronics', 'Office Products', '< $0.00', '< 5', '6.99', '4.33', '2.66', 0, 6, 6, 2, '2017-04-27', 'Rockmount Electronics', '2.9', '6.00\" x 6.00\" x 0.04\"', 'Small standard', '0.02 lbs'),
('B07MG34BKD', '(6 Pack) 3.54\" X 2.24\" Home Security DVR Camera Video Surveillance System Warning Caution Sign Vinyl Label Sticker Decal - Back Adhesive Vinyl', 'Rockmount Electronics', 'Office Products', '< $0.00', '< 5', '6.99', '4.33', '2.66', 842699, 2, 6, 2, '2015-08-03', 'Rockmount Electronics', '4.6', '0.10\" x 4.00\" x 8.20\"', 'Small standard', '0.02 lbs'),
('B07MGX53NK', '(Pack of 10pcs) Aluminum electrolytic Capacitor 1000uf 10v 105C for Repairing LCD TVs and Consumer Electronics', 'PoiLee', 'Industrial & Scientific', '$235.20', '40', '5.88', '3.99', '1.89', 71458, 110, 6, 1, '2018-12-25', 'rugelec', '4.8', '0.16\" x 3.00\" x 4.50\"', 'Small standard', '0.04 lbs'),
('B07MHFWL37', '(NB #3) 12pcs Su\'scon 0.1uF 50v 105c Radial Electrolytic Capacitor  BP NP bi-Polar 50NA0.10M', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '9.75', '2.16', '7.59', 541796, 1, 4, 1, '2019-01-01', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07MLJXJB8', '(HY #70) Carling MOMENTARY Rocker Switch SPDT 20A 12VDC (ON) Off (ON)  Main Boom; 3 Prongs', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '16.75', '3.0', '13.75', 809666, 1, 5, 1, '2019-01-04', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07MMKZBJ8', '110 in 1 Precision Screwdriver Set  Screwdriver Multi-function Magnetic Repair Tool Kit Compatible with iPhone/Ipad/Android//Electronics/Computer/Laptop/PC/Glasses/Watch/Tablet/Drone (Blue)', 'pinumi', 'Tools & Home Improvement', '< $0.00', '< 5', '23.99', '4.59', '19.4', 0, 0, 7, 1, '2019-01-13', 'Pin Youmi Technology', 'N.A.', '2.09\" x 4.29\" x 7.05\"', 'Large standard', '1.087 lbs'),
('B07MWH4ZDZ', '(HY #71) Carling Maintained Rocker Switch DPDT 10A 250Vac 15A 125Vac  ON/Off/ON', 'Advanced Electronics', 'Industrial & Scientific', '$187.20', '10', '18.72', '6.39', '12.33', 176557, 20, 5, 1, '2019-01-17', 'The Capacitor Store', '4.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07MWY7YY2', '(RR #25) 1pc Omron General Purpose Relay  SPST G8P-1A4TP-18VDC 30A 250VAC', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '16.49', '6.03', '10.46', 378492, 4, 3, 1, '2019-01-17', 'The Capacitor Store', '3', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07MZDR9SV', '(RS #22) One Piece Daito Fanuc Green Fuse for CNC Machines  A60L-0001-0046#.5 .5 Amp  MP05', 'Advanced Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '11.75', '2.4', '9.35', 1678323, 0, 4, 1, '2019-01-21', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07N161F6L', '(NB #18) New 2pcs WIMA MKS-4  2.2uF 250V 5% Metallized Polyester Box Film Capacitor', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.49', '2.49', '10.0', 971809, 1, 4, 1, '2019-01-22', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07N16YMJW', '(LGB-D) Dormeyer Universal Wall Transformer  Output 24VAC  45Watt  1.45A  125VAC Input  New', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '33.49', '5.01', '28.48', 1017695, 0, 6, 1, '2019-01-22', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Large standard', '1.5 lbs'),
('B07N33KKQX', '1/0 Gauge Copper 1/2 Ring 10 PK W/HEATSHRINK RED/Black Lug Battery Terminal Connector AWG CUR1012', 'ENNIS ELECTRONICS', 'Sports & Outdoors', '< $0.00', '< 5', '25.95', '9.43', '16.52', 2207287, 0, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '1 lbs'),
('B07N34Q49C', '(2 Pack) 7\"x3.5\" White - Smile You\'re On Camera - UV Resistant  Waterproof  Peel & Stick Decor Decal Sticker Quote Adhesive Vinyl Mural Art Script Lettering - For storefronts  cars  trucks  boats  etc', 'Rockmount Electronics', 'Tools & Home Improvement', '$212.10', '42', '5.05', '3.89', '1.16', 222685, 92, 6, 4, '2019-01-24', 'The A1 Brand Store', '3.9', '0.28\" x 7.64\" x 8.54\"', 'Small standard', '0.02 lbs'),
('B07N7R1CQJ', '10-12 Gauge 100 Pack Nylon Fully Insulated Quick Disconnect Female .250 Terminal', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '16.98', '6.9', '10.08', 1446198, 0, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '1 lbs'),
('B07NCG5XXL', '(RS #11) New 2pcs Potter Brumfield TE Connectivity 20A 32v Circuit Breaker W28-XQ1A-20', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.5', '2.49', '10.01', 441961, 5, 4, 1, '2019-02-02', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07NCHMBGN', '(RS #11) New 10pcs Potter Brumfield TE Connectivity 20A 32v Circuit Breaker W28-XQ1A-20', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '23.75', '3.84', '19.91', 1022545, 0, 5, 1, '2019-02-02', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07NDLR5HH', '10-12 Gauge 100 PK Uninsulated/Non Insulated Ring # 10 Terminal Connector URY10', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '18.49', '7.66', '10.83', 611510, 9, 5, 2, '2019-01-22', 'ENNIS ELECTRONICS', '4.7', '1.00\" x 3.00\" x 4.50\"', 'Large standard', '0.2998 lbs'),
('B07NDM1XPT', '10-12 Gauge 100 PK Uninsulated/Non Insulated Ring 1/4 Terminal Connector URY14', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '20.49', '5.96', '14.53', 370124, 5, 5, 2, '2019-01-22', 'ENNIS ELECTRONICS', '4.6', '0.71\" x 3.35\" x 5.39\"', 'Small standard', '0.4299 lbs'),
('B07NDM22WG', '10-12 Gauge 200 PK Uninsulated/Non Insulated Ring # 10 Terminal Connector URY10', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '35.95', '8.42', '27.53', 1095853, 0, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '1 lbs'),
('B07NJ3GR5K', '1/0 Gauge Copper Butt Connector 2 PK Crimp Terminal AWG Battery CUR1/0', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '$149.50', '10', '14.95', '5.84', '9.11', 102712, 33, 4, 2, '2019-01-22', 'ENNIS ELECTRONICS', '4.4', '0.50\" x 1.10\" x 1.50\"', 'Small standard', '0.0992 lbs'),
('B07NLKT168', '10-12 Gauge Vinyl Spade # 6 Yellow 500 PK Crimp Terminal Connector AWG GA CAR', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '55.95', '13.93', '42.02', 1701212, 0, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '1 lbs'),
('B07NMGQFL1', '110V DC Motor Controller Adjustable Speed Controller High Precision  Wide Speed Controlling Range  Low Power Consumption for Printing  Electronics  Instrument Meter  Clothing Machinery', 'Jectse', 'Industrial & Scientific', '< $0.00', '< 5', '24.05', '8.13', '15.92', 439846, 1, 6, 2, '2019-03-21', 'Jectse us', '5', '0.60\" x 2.80\" x 7.30\"', 'Small standard', '0.75 lbs'),
('B07NP21TXX', '10-12 Gauge Vinyl Ring # 6 Yellow 100 PK Crimp Terminal AWG GA Connector Wire', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '18.54', '7.02', '11.52', 1535204, 0, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '1 lbs'),
('B07NPDVTB8', '(HY #26) 2pcs Carling MOMENTARY Paddle Switch SPDT 4A 250Vac  8A 125Vac (ON) Off (ON)', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '2.76', '11.99', 153895, 4, 4, 1, '2019-02-12', 'The Capacitor Store', '3.7', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07NVTBH5M', '100pcs 2.75\" Cleanroom Lint Free Polyester Swabs with Flexible Handle Cleaning for Electronics  and The Details of Parts and Assemblies in Small Hole and Groove Space CK-PS757', 'cleansky', 'Industrial & Scientific', '< $0.00', '< 5', '9.74', '4.45', '5.29', 191621, 16, 6, 1, '2019-02-18', 'cleansky', '4.4', '0.51\" x 3.46\" x 4.41\"', 'Small standard', '0.0529 lbs'),
('B07NVWQLBT', '(YB-A) New 1pc CDE Motor Run Capacitor 125uF 240VAC 10%  125MFD SFT24C125K476J-F', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '24.75', '9.48', '15.27', 297075, 2, 5, 1, '2019-02-18', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Large standard', '1.75 lbs'),
('B07NVY6528', '(TP #10) LEDEX Saia Burgess Tubular Solenoid STA Series 195853-001 Cage 81840', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '18.75', '3.24', '15.51', 448293, 1, 5, 1, '2019-02-18', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.5 lbs'),
('B07NVYK97G', '(F #42) 8pcs NTC Inrush Current Limiting Limiter Thermistor 6A 3D-13  3 Ohms  MF72-3D13', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '9.25', '2.1', '7.15', 493191, 0, 4, 1, '2019-02-18', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07P19D9T3', '#4 Cone Shape Permanent Coffee Filter', 'True Modern Electronics', 'Health & Household', '< $0.00', '< 5', '9.98', '2.49', '7.49', 481071, 129, 4, 2, '2019-02-22', 'JADA Lifestyles', '4.3', '4.53\" x 4.65\" x 6.69\"', 'Large standard', '0.11 lbs'),
('B07P5PQM9Z', '- Powder Room - UV Resistant  Waterproof  Durable - Peel & Stick Wall Door Decor Decal Sticker Quote Vinyl Mural Art Script Vinyl Lettering - 15\" x 2.5\"  White', 'Rockmount Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '8.99', '2.34', '6.65', 1434743, 1212, 6, 1, '2018-06-28', 'Rockmount Electronics', '3.2', '0.08\" x 3.00\" x 15.00\"', 'Small standard', '0.04 lbs'),
('B07P6MHKG7', '10 PCS Toggle Switch SPST ON-Off Metal Toggle 2 AMP 250V 4 AMP 125V 2 PIN EC-1503', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '19.95', '6.27', '13.68', 1401043, 0, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '1.60\" x 2.00\" x 3.20\"', 'Large standard', '0.249 lbs'),
('B07P6NL62K', '(HY #75) Carling Illuminated Switch 20A 12vdc Contura II DPST ON/Off DPST (24V Lamp)', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '24.75', '3.96', '20.79', 719902, 2, 5, 1, '2019-02-26', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.188 lbs'),
('B07P9CBZ4K', '(LB #72) 4pcs SU 220uF 25v Radial Electrolytic Capacitor BP NP Bi-Polar U', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '9.5', '2.13', '7.37', 846098, 0, 4, 1, '2019-03-02', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07P9X3LNW', '- Thank You - UV Resistant  Waterproof  Durable - Peel & Stick Wall Door Decor Decal Sticker Appreciation Quote Mural Art Script Vinyl Lettering - 15\" x 4\"  White', 'Rockmount Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '8.99', '2.34', '6.65', 1382456, 6, 6, 1, '2018-06-28', 'Rockmount Electronics', '2.7', '1.50\" x 7.63\" x 15.52\"', 'Large standard', '0.04 lbs'),
('B07PCW1L32', '1 PCS Rocker Switch DPST ON Off Toggle 15 AMP 250V 20 AMP 125V 4 PIN EC-2604', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '8.95', '5.84', '3.11', 939121, 0, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '1 lbs'),
('B07PG2ZC8V', '10pcs 9V Connecteur Coupleur Branchement Raccordement Sur Fils Pile Clip Bouton Buckle New Arrival Electronics Stocks', 'Paialu', 'Industrial & Scientific', '< $0.00', '< 5', '10.25', '2.22', '8.03', 1339914, 0, 6, 1, '2022-06-30', 'HS Store Shop', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07PKTHY45', '100ft 22 AWG Solid Copper Wire - UL1007 Rated Hook-Up Primary Power Wiring for Breadboards  DIY Electronics  and Prototypes with Black PVC Insulation - Plastic Spool', 'ProTechTrader', 'Tools & Home Improvement', '$739.35', '53', '9.99', '6.56', '3.43', 218549, 115, 6, 2, '2018-08-15', 'ProTechTrader', '4.6', '2.13\" x 2.72\" x 2.80\"', 'Large standard', '0.37 lbs'),
('B07PRY5MZZ', '10 Pack 500 AMP ANL Fuse FUSES Gold Plated Inline Wafer Holder', 'ENNIS ELECTRONICS', 'Sports & Outdoors', '< $0.00', '< 5', '13.95', '6.98', '6.97', 2542497, 1, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0.3125 lbs'),
('B07PV4X2XT', '100 Pack 25 AMP AGC FUSES Nickel Plated Glass Fast Blow 1 1/4-1/4 Inline AGC25', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '20.95', '6.35', '14.6', 2020943, 0, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0.1875 lbs'),
('B07PV5D3VV', '11PCS Mini Precision Screwdriver Set  Small Screwdriver Set for Electronics  Toys  Computer  Watch Repair', 'KALIM', 'Tools & Home Improvement', '$29,288.10', '4,190', '6.99', '4.6', '2.39', 1234, 3050, 6, 5, '2019-03-19', 'Kalim Life Shop', '4.5', '0.67\" x 6.77\" x 6.81\"', 'Small standard', '0.384 lbs'),
('B07PVCR1YW', '10 Pack ATR 5 AMP Fuse FUSES Blade Circuit Cooper BUSSMANN Micro ATR5', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '12.95', '5.09', '7.86', 1155473, 22, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '0.67\" x 2.64\" x 4.57\"', 'Small standard', '0.042 lbs'),
('B07PX4499F', '(HY #80) Matsushita Snap Action Micro Switch  SPST-NC 15 Amp. 250VAC 125VDC AH725079', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.49', '2.37', '9.12', 784254, 0, 5, 1, '2019-03-26', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07PXH169B', '10 Pack ATR 7.5 AMP Fuse FUSES Blade Circuit Cooper BUSSMANN Micro ATR7.5', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '12.95', '5.99', '6.96', 1805447, 0, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '0.35\" x 2.91\" x 3.90\"', 'Small standard', '0.013 lbs'),
('B07PXH9NC8', '10 Pack ATR 25 AMP Fuse FUSES Blade Circuit Cooper BUSSMANN Micro ATR25', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '12.95', '5.99', '6.96', 1487975, 3, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '0.16\" x 2.83\" x 4.02\"', 'Small standard', '0.013 lbs'),
('B07PXH9W9D', '10 Pack ATR 30 AMP Fuse FUSES Blade Circuit Cooper BUSSMANN Micro ATR30', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '9.95', '5.39', '4.56', 618682, 10, 3, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4.8', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0.0617 lbs'),
('B07PYJ238R', '10 Pack ATR 10 AMP Fuse FUSES Blade Circuit Cooper BUSSMANN Micro ATR10', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '9.95', '4.77', '5.18', 718526, 2, 4, 2, '2019-01-22', 'ENNIS ELECTRONICS', '5', '0.70\" x 3.00\" x 4.50\"', 'Small standard', '0.0397 lbs'),
('B07Q32WGNV', '(3) 18 Gauge ATC Fuse Holders in-LINE AWG Wire Copper 12V Blade Waterproof EE', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '10.95', '5.55', '5.4', 0, 1, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '3', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q3954X2', '(2) AGU Fuse Holder with (2) 20 AMP Nickel Plated FUSES 4 6 8 10 Gauge in LINE Glass AWG Wire Nickel', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '12.95', '6.22', '6.73', 0, 3, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '3.9', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q398CJZ', '(1) AGU Fuse Holder W/ (5) 30 AMP Gold Plated Fuse 4 6 8 10 Gauge in LINE Glass AWG Wire Gold', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '11.95', '6.46', '5.49', 0, 1, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q3YKWQ4', '(3) 18 Gauge ATC Fuse Holder W/Fuse in-LINE AWG Wire Copper 12 Volt Blade', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '11.95', '6.46', '5.49', 0, 1, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q4R52YK', '(2 Pack) 13.78\" X 3.15\" - Caution Watch Your Step - Notice Caution Warning Sign Yellow & Black Adhesive Vinyl Label Decal Sticker', 'Rockmount Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '6.99', '1.83', '5.16', 236153, 6, 6, 1, '2017-04-26', 'Rockmount Electronics', '3.3', '0.01\" x 3.00\" x 12.00\"', 'Small standard', '0.04 lbs'),
('B07Q58KH5Q', '(1) AGU Fuse Holder W/ (5) 35 AMP Nickel Plated Fuse 4 6 8 10 Gauge in LINE Glass AWG Wire Nickel', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '11.95', '5.63', '6.32', 0, 2, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '3', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q59GV2H', '(2) AGU Fuse Holder with (2) 10 AMP Nickel Plated FUSES 4 6 8 10 Gauge in LINE Glass AWG Wire Nickel', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '12.95', '6.61', '6.34', 0, 1, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q62G5SY', '1 MDF Speaker Ring Spacer 10 INCH Wood 3/4 Thick Fiberglass Box ENCLOSE RING-10R', 'ENNIS ELECTRONICS', 'Electronics', '< $0.00', '< 5', '16.95', '6.03', '10.92', 549857, 2, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q71P8FX', '(RR #44) Sanyou Relay SMH-112DM 12VDC SPST  16Amps 16A 277VAC', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.25', '2.7', '11.55', 289525, 32, 4, 1, '2019-04-02', 'The Capacitor Store', '4.3', '0.43\" x 4.80\" x 6.89\"', 'Small standard', '0.046 lbs'),
('B07Q72P7N4', '(RR #54) Ford Fuel Pump Relay R303-12V Replaces Omron Relay F8VF-BA', 'Advanced Electronics', 'Automotive', '< $0.00', '< 5', '12.75', '5.58', '7.17', 1732340, 5, 4, 1, '2019-04-01', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07Q7M57PL', '(1) AGU Fuse Holder W/ (5) 40 AMP Gold Plated Fuse 4 6 8 10 Gauge in LINE Glass AWG Wire Gold', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '11.95', '5.63', '6.32', 0, 3, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07Q84BM8H', '(2) AGU Fuse Holder W/ (5) 30 AMP Gold Plated Fuse 4 6 8 10 Gauge in LINE Glass AWG Wire Gold', 'ENNIS ELECTRONICS', 'Car Amplifier Fuse Holders', 'N.A.', 'N.A.', '14.95', '6.91', '8.04', 0, 9, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4.8', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07QC87QF7', '1 MDF Speaker Ring Spacer 6.5 INCH Wood I INCH Thick Fiberglass Box Ring-6.5GR', 'ENNIS ELECTRONICS', 'Car Subwoofer Boxes & Enclosures', 'N.A.', 'N.A.', '11.95', '5.63', '6.32', 0, 1, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07QC933TY', '(2) 6 INCH Steel Speaker SUB SUBWOOFER Grill MESH Cover W/Clips Screws GR-6', 'ENNIS ELECTRONICS', 'Speaker Grills', 'N.A.', 'N.A.', '12.95', '6.18', '6.77', 0, 0, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '1.54\" x 6.14\" x 7.32\"', 'Large standard', '0.4255 lbs'),
('B07QGF1697', '(2) 10 INCH Steel Speaker SUB SUBWOOFER Grill MESH Cover W/Clips Screws GLKT-10', 'ENNIS ELECTRONICS', 'Speaker Grills', 'N.A.', 'N.A.', '22.95', '8.35', '14.6', 0, 4, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4.4', '1.30\" x 10.08\" x 11.61\"', 'Large standard', '0.8069 lbs'),
('B07QGGR1P8', '(2) 5 INCH Steel Speaker SUB SUBWOOFER Grill MESH Cover W/Clips Screws GR-5', 'ENNIS ELECTRONICS', 'Speaker Grills', 'N.A.', 'N.A.', '12.95', '5.93', '7.02', 0, 5, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4.4', '1.93\" x 5.16\" x 5.94\"', 'Large standard', '0.3527 lbs'),
('B07QHGLD16', '(1) 18 INCH Steel Speaker SUB SUBWOOFER Grill MESH Cover W/Clips Screws GR-18', 'ENNIS ELECTRONICS', 'Speaker Grills', 'N.A.', 'N.A.', '21.95', '6.43', '15.52', 0, 1, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '3', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07QP2DLNW', '$100 Bill Peeping Benjamin - TPU Flexible Plastic Protective Case/Cover/Skin/Bumper for iPhone (iPhone 6+/6s+)', 'TopWrack', 'Cell Phones & Accessories', '< $0.00', '< 5', '8.99', '4.63', '4.36', 286273, 8, 5, 1, '2019-04-11', 'Wright Way Shopping', '4.3', '0.20\" x 4.90\" x 8.20\"', 'Small standard', '0.0397 lbs'),
('B07QVGDWRV', '1000uF 35V Radial Lead Aluminum Electrolytic Capacitors For Repairing LCD TVs and Consumer Electronics - 5 pc.', 'DIGITAL HACK SHACK', 'Industrial & Scientific', '$137.77', '23', '5.99', '4.0', '1.99', 151649, 111111, 7, 1, '2019-04-20', 'Lledo Enterprises', '4.2', '0.59\" x 4.37\" x 5.51\"', 'Small standard', '0.06 lbs'),
('B07QW2YCHC', '1 PCS 20 FT RCA Wire Blue Gray 2 Channel CAR AMP Home Audio Stereo BLS-20', 'ENNIS ELECTRONICS', 'RCA Cables', 'N.A.', 'N.A.', '16.95', '6.03', '10.92', 0, 1, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '1', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07QW45Z5L', '10pcs  Small Potting Box Open Plastic Enclosure 45mm x 30mm x 15mm  Electronics Project Protection Dish  to use with Potting Epoxy Compound  P0S12001800S2', 'Propart', 'Industrial & Scientific', '< $0.00', '< 5', '8.95', '2.06', '6.89', 1112731, 0, 5, 1, '2019-04-18', 'kevinflagstaff', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07QZ58B6N', '10pcs  Small Potting Box Open Plastic Enclosure 29mm x 29mm x 10mm Square  Electronics Project Protection Dish  to use with Potting Epoxy Compound  1\" Inch  PSS1125375S1', 'Propart', 'Industrial & Scientific', '< $0.00', '< 5', '8.95', '2.06', '6.89', 1092133, 1, 4, 1, '2019-04-18', 'kevinflagstaff', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07R3CFGNP', '10 PK Empty Wire SPOOLS Heavy Duty Plastic Craft Rope Ribbon LINE LACE 18 GA EE', 'ENNIS ELECTRONICS', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '24.95', '8.36', '16.59', 303141, 5, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4.7', '2.64\" x 7.36\" x 9.49\"', 'Large standard', '0.7231 lbs'),
('B07R632396', '100 Pack 3/16 Cable Clamps Nylon Black UV Resistant Hose Wire Electrical BCC316', 'ENNIS ELECTRONICS', 'Electronics', '< $0.00', '< 5', '11.95', '5.01', '6.94', 736725, 0, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', 'N.A.', '0.59\" x 4.02\" x 5.43\"', 'Small standard', '0.071 lbs'),
('B07R6XJ6MK', '(1) Noise Filter 5 AMPS 12V HUM Filter Noise Engine Suppressor Wire IBNF5', 'ENNIS ELECTRONICS', 'Electronics', '$73,851.00', '6,180', '11.95', '5.63', '6.32', 380, 2, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '3.3', '1.20\" x 2.50\" x 3.30\"', 'Large standard', '0.176 lbs'),
('B07R819995', '(1) Noise Filter 50 AMPS 12V HUM Filter Noise Engine Suppressor Wire IBNF50', 'ENNIS ELECTRONICS', 'Electronics', '$475,722.00', '9,630', '49.4', '4.94', '44.46', 195, 124, 5, 1, '2019-01-22', 'IPC-STORE✅', '3.8', '1.95\" x 4.60\" x 6.95\"', 'Large standard', '0.37 lbs'),
('B07RB35BS9', '(RR #74) One Piece Compatible with Tyco V23084-C2002-A403 30A 12vdc Relay Replacement', 'Advanced Electronics', 'Automotive', '< $0.00', '< 5', '12.49', '2.49', '10.0', 2278322, 1, 4, 2, '2018-06-24', 'The Capacitor Store', '5', '0.69\" x 0.66\" x 0.52\"', 'Small standard', '0.125 lbs'),
('B07RB7K1W8', '(2) PCS Square Jack Terminal Cup Screw Speaker SUBWOOFER Box Spring Loaded TCSS', 'ENNIS ELECTRONICS', 'Audio & Video Connectors & Adapters', 'N.A.', 'N.A.', '9.95', '4.7', '5.25', 0, 16, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '3.8', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07RBBJXFX', '(1) Noise Filter 40 AMPS 12V HUM Filter Noise Engine Suppressor Wire IBNF40', 'ENNIS ELECTRONICS', 'Car Amplifier Noise Filters', 'N.A.', 'N.A.', '16.95', '7.43', '9.52', 0, 29, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4', '1.46\" x 4.61\" x 7.48\"', 'Large standard', '0.366 lbs'),
('B07RBBK6KK', '(1) Noise Filter 10 AMPS 12V HUM Filter Noise Engine Suppressor Wire IBNF10', 'ENNIS ELECTRONICS', 'Car Amplifier Noise Filters', 'N.A.', 'N.A.', '11.95', '6.68', '5.27', 0, 10, 4, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4.1', '1.42\" x 4.49\" x 7.36\"', 'Large standard', '0.1455 lbs'),
('B07RCZZT6D', '1 PCS 0 to 4 Gauge Distribution Block AUDIOPIPE Gold 24K Power Wire PB-1044', 'ENNIS ELECTRONICS', 'Distribution Connecting Blocks', 'N.A.', 'N.A.', '19.0', '6.19', '12.81', 0, 1, 5, 1, '2019-01-22', 'LifeAfterBass', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07RGXL9F6', '(20) 14 Gauge Quick Disconnect 2 PIN 10\'\' Lead AWG Wire Harness AQK-12-14BG', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '78.95', '10.99', '67.96', 1102760, 1, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07RM6N325', '(2) 8 Gauge Quick Disconnect 2 PIN 10\'\' Leads Polarized Wire Harness AQK-12-8BG', 'ENNIS ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '11.95', '5.63', '6.32', 147725, 1, 3, 1, '2019-01-22', 'ENNIS ELECTRONICS', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07S9WK5JY', '100 Small Soft Round Rubber Feet W/Screws - .250 H X .671 D - Non Slip - Removable Insert - Made in USA - Non Marking. Food Safe  ROHS & Prop 65 Free - Cutting Boards  Electronics  Crafts', 'Rubberfeet US', 'Tools & Home Improvement', '< $0.00', '< 5', '25.99', '8.79', '17.2', 460397, 40, 6, 1, '2017-01-02', 'RUBBERFEET US', '4.5', '1.40\" x 4.00\" x 6.30\"', 'Large standard', '0.45 lbs'),
('B07SMBP6B3', '(RR #81) 10pcs Tyco/Bussman Relay 7VDC Relay. SPST SRW-S 107DM', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.49', '2.37', '9.12', 1375976, 0, 4, 1, '2019-06-03', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07SPH7DF1', '(2 Pack) 9\" X 3\" - Sorry No Public Restroom - Notice Sign Adhesive Vinyl Label Sticker Decal - for Business Store  Shop  Cafe  Office  Restaurant - Back Adhesive Vinyl', 'Rockmount Electronics', 'Office Products', '< $0.00', '< 5', '6.99', '2.04', '4.95', 452906, 6, 6, 1, '2017-04-26', 'Rockmount Electronics', '4.3', '0.10\" x 6.00\" x 9.50\"', 'Small standard', '0.015 lbs'),
('B07SPTMZLQ', '(HY #83) 1pc Carling White Rocker Switch 20A 125vac  DPST ON/Off  RGSCC 701/711 T85', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '10.75', '2.28', '8.47', 456515, 11, 5, 1, '2019-06-04', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07SRMP4ZQ', '(HY #88) Carling Rocker Switch DPDT 10A @ 250Vac  15A @ 125VAC  3/4 HP 250VAC  ON/ON TIGL50-1L-BL-FN', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '2.76', '11.99', 1261523, 0, 5, 1, '2019-06-08', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07STPKXM3', '(BLK #2) CBI Magnetic Circuit Breaker  15 Amps BD Curve  80VDC 240V 415V 277V 480v HY-MAG', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.49', '2.73', '11.76', 1547437, 0, 5, 1, '2019-06-08', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs');
INSERT INTO `jungle_scout_product` (`ASIN`, `product_name`, `brand`, `category`, `est_monthly_revenue`, `est_monthly_sales`, `price`, `fees`, `net`, `rank`, `reviews`, `LQS`, `sellers`, `date_first_available`, `buy_box_owner`, `rating`, `dimensions`, `product_tier`, `weight`) VALUES
('B07T7MM35K', '1 New Keyless Entry 5 Buttons Remote Start Car Fobik Key Fob Fobik Shell / CASE M3N5WY783X IYZC01C for Jeep Commander and Grand Cherokee - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '9.95', '4.47', '5.48', 1146251, 1313, 6, 2, '2019-06-15', 'KeylessCanada', '3.6', '0.59\" x 2.95\" x 5.79\"', 'Small standard', '0.037 lbs'),
('B07T83551H', '1 New Keyless Entry 5 Buttons Remote Start Car Key Fob M3N5WY783X  IYZ-C01C For Chrysler 300 Challenger Charger Durango Grand Cherokee - CASE/SHELL ONLY (No Electronics)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '9.95', '4.47', '5.48', 515755, 9, 5, 2, '2019-06-15', 'KeylessCanada', '4', '0.20\" x 2.00\" x 5.50\"', 'Small standard', '0.0397 lbs'),
('B07T8CQLPZ', '(F #17) 8pcs GE Varistor V18ZA40 MOV 18v  MPN: 18Z40 20mm Disk', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.75', '2.52', '10.23', 432272, 1, 4, 1, '2019-06-21', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07T8K2N4V', '10 Gauge THHN Wire Stranded White 10 FT THWN 600V Building Machine Cable AWG', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '16.95', '7.43', '9.52', 1072376, 9, 5, 1, '2019-01-22', 'ENNIS ELECTRONICS', '4.5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0.37 lbs'),
('B07T92KBW5', '1 New Keyless Entry 4 Buttons Remote Start Car Key Fob M3N5WY783X  IYZ-C01C For 300 Challenger Charger Durango Jeep Grand Cherokee - SHELL/CASE ONLY (no electronics))', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '9.95', '4.47', '5.48', 939896, 8, 5, 2, '2019-06-15', 'KeylessCanada', '4.3', '0.40\" x 2.40\" x 5.50\"', 'Small standard', '0.0507 lbs'),
('B07T94H765', '1 New Keyless Entry 6 Buttons Remote Start Car Key Fob M3N5WY783X  IYZ-C01C For Town Country Dodge Grand Caravan Volkswagen Routan - CASE/SHELL ONLY (No Electronics)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '9.95', '5.31', '4.64', 500489, 18, 5, 1, '2019-06-15', 'KeylessCanada', '4.1', '0.80\" x 3.10\" x 5.90\"', 'Large standard', '0.0397 lbs'),
('B07TB1QH4C', '1 New Keyless Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Grand Cherokee & Commander - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '9.95', '5.31', '4.64', 1920814, 3, 6, 2, '2019-06-15', 'KeylessCanada', '4', '0.80\" x 3.10\" x 5.90\"', 'Large standard', '0.04 lbs'),
('B07TB31K9B', '1 New Keyless Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Grand Cherokee & Commander - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '9.95', '4.47', '5.48', 1781359, 11, 6, 2, '2019-06-15', 'KeylessCanada', '5', '0.51\" x 3.03\" x 5.79\"', 'Small standard', '0.055 lbs'),
('B07TB49R7S', '1 New Keyless Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Jeep Grand Cherokee & Commander - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '9.95', '4.47', '5.48', 4819900, 1, 6, 2, '2019-06-15', 'KeylessCanada', '5', '0.40\" x 2.00\" x 5.50\"', 'Small standard', '0.04 lbs'),
('B07TBKTHSM', '100PCS Resealable Smell Proof Bags with Clear Front Window  Zip Lock Stand Up Aluminum Foil Bags Mylar Food Storage Bags Pouch for Dry Food  Snack  Jewelry  Electronics(4.8x8+3.2 inch)', 'SixWe', 'Health & Household', '$1,421.16', '78', '18.22', '8.71', '9.51', 178967, 0, 7, 1, '2019-06-21', 'SixWe', '4.26', '2.17\" x 5.51\" x 9.92\"', 'Large standard', '1.151 lbs'),
('B07TDND5YV', '(RR #64) 1pc Potter & Brumfield T91S5D22-24 SPDT 24VDC 20A/10A PCB Mount Relay', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.49', '2.37', '9.12', 513975, 33, 5, 2, '2019-06-20', 'The Capacitor Store', '4.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07TDRPBPC', '10 Gauge THHN Wire Stranded Black 10 FT THWN 600V Building Machine Cable AWG', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '15.0', '7.39', '7.61', 1336575, 2, 5, 2, '2019-01-22', 'All the above Todays and tomorrows products', '5', '0.94\" x 5.47\" x 5.79\"', 'Large standard', '0.509 lbs'),
('B07TN7RJM4', '1 New Blue Keyless Entry 4 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for 300 Challenger Charger Durango Jeep Grand Cherokee - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '6.22', '6.73', 3163388, 7, 6, 2, '2019-06-15', 'KeylessCanada', '4', '1.00\" x 3.00\" x 4.00\"', 'Large standard', '0.099 lbs'),
('B07TN8Q94H', '1 New Blue Keyless Entry 7 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Town Country Dodge Grand Caravan Volkswagen Routan - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 2827409, 17, 6, 2, '2019-06-16', 'KeylessCanada', '4.1', '0.63\" x 1.50\" x 3.50\"', 'Small standard', '0.044 lbs'),
('B07TN959Z8', '(F #54) JH Dual 100K Audio Potentiometer 100K Ohm Taper', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.75', '5.67', '7.08', 584035, 4, 4, 1, '2019-06-29', 'The Capacitor Store', '3.6', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07TN95KN8', '1 New Blue Keyless Entry 6 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Town Country Dodge Grand Caravan Volkswagen Routan - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '6.22', '6.73', 2560596, 5, 6, 2, '2019-06-15', 'KeylessCanada', '3.7', '1.00\" x 3.00\" x 4.00\"', 'Large standard', '0.099 lbs'),
('B07TNTT1D6', '12 Gauge THHN Wire Stranded Pick 4 Colors 100 FT Each THWN 600V Cable AWG', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '199.0', '16.91', '182.09', 1820848, 11, 5, 1, '2019-01-22', 'ABC-100', '5', '3.00\" x 4.00\" x 1.00\"', 'Large standard', '0 lbs'),
('B07TPD5L2W', '(NB #20) 10pcs Seacor Metallized Polyester Film Box Safety Capacitor 0.47uF 250VAC 10% X2', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.0', '2.43', '9.57', 954695, 0, 4, 1, '2019-06-29', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07TVZ6MR9', '1 New Compatible Replacement Blue 4 Button Keyless Entry Remote Car Key Fob M3N5WY783X  IYZ-C01C For 300 Challenger Charger Durango Jeep Grand Cherokee - SHELL/CASE ONLY (no electronics))', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 1273544, 16, 5, 2, '2019-06-15', 'KeylessCanada', '4.1', '0.47\" x 2.76\" x 4.13\"', 'Small standard', '0.0441 lbs'),
('B07TWYT7TY', '(F #23) 8pcs Draloric Vishay Carbon Resistor 560 Ohm 2 Watt  5%  AB', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '11.49', '2.37', '9.12', 1100179, 0, 4, 1, '2019-07-05', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07TWYVLFK', '(NG #3) 10pcs CERA-MITE Safety Capacitors 3000pF 302M  Y5U 0.003 uF X1', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '15.49', '2.85', '12.64', 769961, 11, 5, 1, '2019-07-05', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07TX2W9Q4', '1 New Red Keyless Entry 7 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Town Country Volkswagen Routan Dodge Grand Caravan - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '6.22', '6.73', 2340435, 19, 6, 2, '2019-06-16', 'KeylessCanada', '4.4', '1.00\" x 3.00\" x 5.00\"', 'Large standard', '0.04 lbs'),
('B07TYRZY2R', '10-Pack DIY Solar Cells with Wire Leads - 2V 130mA 54x54mm - Great for STEM  Hobby  Classroom Science  and Electronics DIY Projects', 'xUmp', 'Industrial & Scientific', '< $0.00', '< 5', '19.95', '3.98', '15.97', 519706, 1, 6, 1, '2019-07-03', 'xUmp Science USA', '4', '1.90\" x 3.30\" x 4.40\"', 'Large standard', '0.249 lbs'),
('B07TZ9S7P1', '1 New Blue Keyless Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE IYZC01C M3N5WY783X for Grand Cherokee & Commander - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 3399418, 2, 6, 2, '2019-06-15', 'KeylessCanada', '4.5', '0.51\" x 2.95\" x 5.91\"', 'Small standard', '0.057 lbs'),
('B07TZW1PDZ', '(RR #82) Potter & Brumfield Relay T91S1D22-24 30 Amps 24vdc SPST PCB Mount', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '2.76', '11.99', 418930, 2, 5, 1, '2019-07-05', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07V1PTK5S', '1 New Red Keyless Entry 4 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Jeep Grand Cherokee 300 Challenger Charger Durango - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 1483579, 31, 6, 2, '2019-06-15', 'KeylessCanada', '4.1', '0.30\" x 2.00\" x 5.00\"', 'Small standard', '0.04 lbs'),
('B07V1PY1WS', '1 New Red Keyless Entry Remote Start Car 5 Button Key Fob Fobik Shell / CASE M3N5WY783X IYZC01C for Jeep Grand Cherokee and Commander - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '6.22', '6.73', 4407003, 2, 6, 2, '2019-06-15', 'KeylessCanada', '5', '1.00\" x 3.00\" x 5.00\"', 'Large standard', '0.011 lbs'),
('B07V1PYN2N', '1 New Red 5 Buttons Keyless Entry Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X IYZC01C for Challenger Charger Durango Chrysler 300 and Grand Cherokee - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '2.54', '10.41', 718194, 47, 6, 1, '2019-06-15', 'KeylessCanada', '4.2', '2.75\" x 3.00\" x 5.50\"', 'Large standard', '0.051 lbs'),
('B07V25YF58', '1 New Red Keyless Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE IYZC01C M3N5WY783X for Commander and Grand Cherokee - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 3677397, 22, 6, 2, '2019-06-15', 'KeylessCanada', '5', '0.50\" x 3.00\" x 5.00\"', 'Small standard', '0.04 lbs'),
('B07V58QTHK', '1 New Red Keyless Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE IYZC01C M3N5WY783X for Jeep Grand Cherokee and Commander - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '6.44', '6.51', 1456104, 18, 6, 2, '2019-06-15', 'KeylessCanada', '4.5', '2.75\" x 3.00\" x 5.50\"', 'Large standard', '0.051 lbs'),
('B07V592JVM', '1 New Red Keyless Entry 6 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Town Country Volkswagen Routan Dodge Grand Caravan - (No Electronics or Chip Inside)', 'Keyless Canada', 'Automotive', '< $0.00', '< 5', '12.95', '6.44', '6.51', 3250801, 1, 6, 2, '2019-06-15', 'KeylessCanada', '1', '2.75\" x 3.00\" x 5.50\"', 'Large standard', '0.051 lbs'),
('B07V5C1R2V', '1 New REd Keyless Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE M3N5WY783X  IYZC01C for Dodge Grand Caravan Volkswagen Routan & Town Country - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 4587180, 0, 6, 2, '2019-06-15', 'KeylessCanada', 'N.A.', '0.40\" x 1.20\" x 2.00\"', 'Small standard', '0.04 lbs'),
('B07VZ769FZ', '(TP #23) 2pcs Mabuchi FF-030PA 08250 Mini Motor 2-8vdc CD DVD ROM Player Low Current Motor', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '10.49', '2.25', '8.24', 505869, 1, 4, 1, '2019-08-03', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.042 lbs'),
('B07VZ8455W', '(TP #24) Mabuchi # FK-130SH 7200 RPM @ 12Vdc @ 0.30A Can Motor for Remotoring Brass & Other HO Engines', 'Advanced Electronics', 'Toys & Games', '< $0.00', '< 5', '13.49', '2.61', '10.88', 729295, 3, 5, 1, '2019-08-03', 'The Capacitor Store', '3.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07W8TC9TD', '(NG #2) 8pcs ERO MKT Metallized Polyester Box Film Capacitor 0.47uF 275VAC  Safety X2', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '19.49', '3.33', '16.16', 1282047, 0, 6, 1, '2019-08-06', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07WFB635D', '10PCS Smart Electronics FZ0455 4pin KY-016 Three Colors 3 Color RGB LED Sensor Module DIY Starter Kit KY016', 'Reland Sun', 'Electronics', '< $0.00', '< 5', '3.68', '1.43', '2.25', 851606, 1, 5, 1, '2019-08-13', 'Reland', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B07WGBTLF9', '(HY #86B) 1pc Carling Rocker Switch SPST 10A @ 250VAC  15A @ 125VAC  3/4 HP 250VAC  ON/Off', 'Advanced Electronics', 'Industrial & Scientific', '$217.50', '10', '21.75', '6.75', '15.0', 117464, 12, 4, 1, '2019-08-12', 'The Capacitor Store', '4.6', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B07WJ7MD2Y', '(HY #95) MOMENTARY Carling Lighted Rocker Switch  Green Jewel  SPDT (On) Off (On) 12v Lamp', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '18.75', '3.24', '15.51', 812166, 0, 5, 1, '2019-08-16', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', '0.188 lbs'),
('B07WLK6KLF', '(NG #50) 12pcs ERO MKT Metallized Polyester Box Film Capacitor 0.47uF 275VAC  Safety X2', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '21.49', '3.57', '17.92', 1142745, 0, 6, 1, '2019-08-06', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07WVY4K14', '100 Pieces Resealable Mylar Holographic Bags with Clear Window  Aluminum Foil Smell Proof Bags for Food Storage Self Sealing Storage electronics Hair accessories (Pink  4.7x7.8 inch)', 'LaZimnInc', 'Kitchen & Dining', '$919.08', '92', '8.99', '6.27', '2.72', 67841, 0, 7, 1, '2020-11-17', 'LaZimnInc', '4.5', '1.54\" x 4.84\" x 10.98\"', 'Large standard', '0.75 lbs'),
('B07X6PCQTK', '(HY #99) Carling MOMENTARY LH Tilt Rocker Switch SPDT 20A 12VDC (ON) Off (ON)  V8D1', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '26.49', '4.17', '22.32', 495246, 5, 5, 1, '2019-08-31', 'The Capacitor Store', '4.8', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07XDLYZLK', '(SY #34) 30pcs General Instruments Silicon Bridge Rectifier Diodes KBP005M 50v 2A', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '23.49', '3.81', '19.68', 517285, 0, 4, 1, '2019-09-02', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07XJMLY4S', '(3 Pack) Legacy Screen Protector by CENTAURUS  Bubble Free Case-Friendly Ultra-thin Anti-Scratch Clear HD 9H Hardness Tempered Glass Protective Film Compatible with Coolpad Legacy 2019 3705A 6.36 inch', 'CE CENTAURUS ELECTRONICS', 'Cell Phones & Accessories', '$99.90', '10', '29.99', '4.96', '25.03', 178397, 79, 6, 3, '2018-07-12', 'Cell Phones Parts', '4.1', '0.50\" x 4.10\" x 7.10\"', 'Small standard', '0.2998 lbs'),
('B07Y2FJ5K3', '(NB #36) 5pcs 2.2uF 2.2MF  250v 10% Box Film Capacitor B32234-2.2/10/250/5550', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '20.49', '3.45', '17.04', 712326, 1, 4, 1, '2019-09-18', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07Y6S7X1W', '(CB #22) 10pcs Rubycon MBZ 3300uF 6.3v 105C Radial Electrolytic Capacitor 10X24mm', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '13.49', '2.61', '10.88', 579943, 1, 6, 1, '2019-09-21', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B07YFZWWHK', '$$$ Dollar Sign Sexy Naked Bikini Model Girl Cash Franklins High Life Plastic Phone Snap On Back Case Cover Shell Compatible with iPhone 11', 'Case Pool', 'Cell Phones & Accessories', '< $0.00', '< 5', '8.99', '4.63', '4.36', 246449, 2, 4, 1, '2017-01-22', 'Case Pool', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.0375 lbs'),
('B07YN3BSLS', '(RR #85) Relay (Direct Replacement for Omron G8P-1A4P-12VDC)  SPST 30A', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.25', '2.46', '9.79', 553464, 2, 4, 1, '2019-10-02', 'The Capacitor Store', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B07YNV3DSG', '10 Gauge THHN Wire Stranded 4 Colors 100 FT Each RED Black Green White THWN 600V Copper Cable AWG', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '270.0', '33.59', '236.41', 908268, 1, 5, 1, '2019-01-22', 'All the above Todays and tomorrows products', '5', '6.34\" x 10.75\" x 10.91\"', 'Large standard', '15.54 lbs'),
('B07YR8G7BZ', '(NB # 48) 2pcs Sprague 2200uF 50v 80D Radial Electrolytic Capacitor', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '15.49', '2.85', '12.64', 688616, 2, 5, 1, '2019-10-05', 'The Capacitor Store', '4.6', 'N.A.', 'Small standard', '0.25 lbs'),
('B07ZXMXQ82', '(RR #86) TE Connectivity 30A 24v SPST Relay  T9AP1D52-24  Battery Chargers  Golf Carts', 'Advanced Electronics', 'Automotive', '< $0.00', '< 5', '16.75', '3.5', '13.25', 3093101, 0, 4, 1, '2018-08-03', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', '0.001 lbs'),
('B07ZXT6XB3', '(CO #3) 2pcs Nippon Chemi-Con KME 220uF 200v 105C Radial Electrolytic Capacitor', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '17.49', '3.09', '14.4', 722389, 3, 4, 1, '2019-11-03', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B08128VLWT', '(NB #24) Roederstein 1.5uF 250VAC MKT Metallized Polyester Film Box Capacitors ERO', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '17.49', '3.09', '14.4', 518161, 1, 5, 1, '2019-11-05', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B081295WZF', '(TL #12) 2pcs M.D.L. 220uF 50v Bipolar Non-Polarized Axial Electrolytic Capacitor BP NP', 'Advanced Electronics', 'Industrial & Scientific', '$358.80', '30', '11.96', '5.49', '6.47', 91718, 1, 4, 1, '2019-11-05', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B08129KK2Z', '(LY #60) 2pcs Marcon 2200uF 35V 105c Axial Electrolytic Capacitor 18X41mm', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '19.49', '3.33', '16.16', 534080, 0, 4, 1, '2019-11-05', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B081L2ZXBF', '10Ft New 19V 65W AC/DC Adapter for LG Electronics 19\'\' 20\'\' 22\'\' 23\'\' 24\'\' 27\'\' LED LCD Monitor Widescreen LED LCD HDTV Replacement Switching 19VDC Power Supply Cord Cable Battery Charger', 'YUSTDA', 'Tools & Home Improvement', '< $0.00', '< 5', '7.99', '1.63', '6.36', 1158070, 0, 6, 1, '2019-11-16', 'EPtech', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B0821SF6FY', '(HO #11) Carling Lighted Rocker Switch Amber Yellow Jewel DPST ON/Off Lamp LTIGK51-6M-BL-AM-NBL; 5 Prongs', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '23.49', '3.81', '19.68', 480008, 0, 6, 1, '2019-11-26', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.188 lbs'),
('B0832JP4TB', '(RR #90) Song Chuan 896H-1AH-S-R1-12VDC Coil  Sealed Relay  SPST (NO) 50A 50Amps  14VDC', 'Advanced Electronics', 'Automotive', '< $0.00', '< 5', '16.23', '2.94', '13.29', 439408, 44, 4, 1, '2019-12-24', 'The Capacitor Store', '4.4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B0832PHM12', '(RR#88) Potter Brumfield General Purpose Relay DPDT  12VDC 20Amps 277VAC Pilot Duty S87R11D2B1D1', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.75', '2.52', '10.23', 392991, 0, 5, 1, '2019-12-24', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B084757B7N', '(I Pair) 3\" x 5.7\" White  Die Cut  No Background - USA American Flag United States Patriotic Stars & Stripes Vinyl Auto Decal Bumper Sticker for Vehicle Car Truck Motorcycle Window Bumper Laptop etc.', 'Rockmount Electronics', 'Automotive', '< $0.00', '< 5', '7.99', '4.48', '3.51', 490430, 2, 6, 1, '2020-01-26', 'Rockmount Electronics', '4.63333333', '12.00\" x 6.00\" x 0.10\"', 'Small standard', '0.0198 lbs'),
('B084B16ZQX', '(SG #49) Fluke P/N 875534 LCD Display for 29 Series II and 79 Series II Meters', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '5.82', '8.93', 333194, 3, 3, 1, '2020-01-29', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B084JH3RQS', '(R-71) 30A Relay  24V Battery Charges  T9AP1D52-24-01 Golf Carts  Potter Brumfield  TE', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '13.75', '2.64', '11.11', 976890, 2, 4, 1, '2020-02-06', 'The Capacitor Store', '4.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B084ZHZ1VR', '100PCS 4mm Black Nylon Round Spacer  OD 7mm  ID 3.2mm  Not Threaded  for M3 Screws  Plastic.', 'Electronics-Salon', 'Industrial & Scientific', '< $0.00', '< 5', '9.99', '4.48', '5.51', 266943, 35, 4, 1, '2016-10-07', 'Electronics-Salon.', '4.2', '0.75\" x 2.25\" x 3.75\"', 'Small standard', '0.011 lbs'),
('B0851LFVGD', '10Pcs Precision Pick & Hook Set with Scraper and Magnetic Telescoping Tool Kit Mechanic Hook Picks Tools Set for Remove Automotive Electronics Maintenance Hoses Gasket Hand Pick Up Tools', 'Qovydx', 'Automotive', '< $0.00', '< 5', '21.97', '10.16', '11.81', 976043, 64, 7, 1, '2020-02-21', 'Qovydx', '4.5', '1.89\" x 10.59\" x 13.43\"', 'Large standard', '1.7 lbs'),
('B086V9T5TL', '1 Pair AirPods Pro Ear Hooks Covers Accessories Compatible with Apple AirPods Pro (Transparent)', 'Crystal Electronics', 'Electronics', '< $0.00', '< 5', '2.99', '3.58', '-0.59', 0, 41, 6, 1, '2020-04-08', 'California JOS', '3.69999999', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.0063 lbs'),
('B087BSFL9R', '(TP #15) 6VDC Motor 13000 RPM 6V w/ 9mm Pinon Gear  18AWG 6\" inch Wires TR390', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '2.76', '11.99', 354178, 1, 5, 1, '2020-04-19', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B087FY21M3', '1\" x 2 1/2\" Oval Rubber Feet Self Adhesive - Black Rubber Feet Self Stick Bumper Pads Black Rubber Bumpers Self Adhesive Rubber Spacer Adhesive Rubber Feet for Electronics  Music Equipment (8)', 'Magic Hub', 'Tools & Home Improvement', '< $0.00', '< 5', '21.34', '4.19', '17.15', 0, 0, 5, 1, '2020-04-22', 'Magic Hub', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B0881NVWQV', '10PCS Precision ESD Tweezers Tool Kit Anti-Static Tweezers Set  Anti-Magnetic Stainless Steel Tweezers with Storage Bag for Craft  Electronics  Jewelry and Laboratory Work (Blue)', 'DIYPHONE', 'Tools & Home Improvement', '< $0.00', '< 5', '9.99', '2.49', '7.5', 0, 29, 7, 1, '2020-05-04', 'PhoneFix Team', '4.6', '0.91\" x 2.83\" x 6.77\"', 'Large standard', '0.461 lbs'),
('B088PND7Y2', '0E13-00H0 - Microswitch  Snap Action  Hinge Lever  SPDT  Quick Connect  15 A  (Pack of 10)', 'ZF ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '73.32', '9.79', '63.53', 1467635, 0, 4, 1, '2020-09-10', 'KHC Shop', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B088TBR62H', '0E13-00M0 - Microswitch  Snap Action  Spring Plunger  SPDT  Screw  15 A (Pack of 10) (0E13-00M0)', 'ZF ELECTRONICS', 'Industrial & Scientific', '< $0.00', '< 5', '122.61', '15.7', '106.91', 523898, 0, 4, 1, '2020-05-26', 'KHC Shop', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B08967KJL1', '(DKKPIA) AC DC Adapter Cord for MCE Electronics Model: AD48-1201000DU Class 2 Transformer', 'DKKPIA', 'Electronics Accessories & Supplies', 'N.A.', 'N.A.', '10.69', '1.85', '8.84', 0, 1, 4, 3, '2020-05-26', 'Zxcjzuang', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B089RDYK68', '100pcs 2.7\"x 4\" White Clear Self Seal Zipper Lock Poly Bag Resealable Plastic Bags Jewelry Bags Thicker Pouches for Dry Goods  Candy  Coffee  Electronics Components Phone Case Cloth…', 'Nobranded', 'Kitchen & Dining', '$365.40', '60', '7.99', '5.03', '2.96', 168925, 0, 4, 1, '2020-07-20', 'Rigied', '4.55555555', '3.94\" x 3.15\" x 0.79\"', 'Large standard', '0.4409 lbs'),
('B08B9Q98NB', '12 Pin Auto Stereo Wiring Harness Plug for Dual DC426BT Marine stereo', 'Stream Electronics', 'Automotive', '< $0.00', '< 5', '16.85', '3.52', '13.33', 3722901, 1, 4, 1, '2016-11-20', 'StreamUSA', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B08BG4S83Y', '12 Pin Auto Stereo Wiring Harness Plug for Dual DB1245 Player', 'Stream Electronics', 'Car Audio & Video Wiring Harnesses', 'N.A.', 'N.A.', '16.85', '3.52', '13.33', 0, 0, 4, 1, '2016-11-20', 'StreamUSA', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B08BG4S864', '12 Pin Auto Stereo Wiring Harness Plug for Dual Axxera AC318BT', 'Stream Electronics', 'Car Audio & Video Wiring Harnesses', 'N.A.', 'N.A.', '16.85', '3.52', '13.33', 0, 0, 4, 1, '2016-11-20', 'StreamUSA', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B08BG5R14Y', '12 Pin Auto Stereo Wiring Harness Plug for Dual DC505iBT', 'Stream Electronics', 'Electronics', '$10,615.50', '630', '16.85', '3.52', '13.33', 5663, 1, 4, 1, '2016-11-20', 'StreamUSA', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B08BG5RY6Y', '12 Pin Auto Stereo Wiring Harness Plug for Dual Axxera AC328BT', 'Stream Electronics', 'Car Audio & Video Wiring Harnesses', 'N.A.', 'N.A.', '16.85', '3.52', '13.33', 0, 1, 4, 1, '2016-11-20', 'StreamUSA', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.1875 lbs'),
('B08BR1YN8Q', '(Pack of 2) Refrigerator Door Spring for LG Electronics MHY62044106 Heavy Duty Steel Compatible With LFX28978ST LFX28968SB LFX28968ST LFX31945ST LMX31985ST LFX25978SB LFC25765ST LFX25978SB', 'ECLINK', 'Tools & Home Improvement', '< $0.00', '< 5', '7.29', '4.37', '2.92', 430196, 79, 6, 1, '2020-06-24', 'Yaotieci SHOP', '4.1', '1.00\" x 0.10\" x 0.10\"', 'Small standard', '0.0002 lbs'),
('B08CD9Y6WW', '\"N/A\" Lux Edition Thin Fit 360 Designed Shockproof Full Body Protection Drop Protection 6.1 for Apple iPhone 11 Case (2019) Screen Protector Included (Black)', '\"N/A\"', 'Cell Phones & Accessories', '< $0.00', '< 5', '1.0', '1.29', '-0.29', NULL, NULL, 8, 1, '2020-07-05', 'Lux Edition', 'N.A.', 'N.A.', 'Small standard', '0.22 lbs'),
('B08F2Y4JGS', '(YD #38) MOMENTARY Black Rocker Switch (Replaces Carling) DPDT  20A 12VDC  (ON) Off (ON); 6 Prongs', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '13.5', '2.61', '10.89', 475593, 0, 6, 1, '2020-07-31', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B08F3FV15R', '100pcs resealable Smell Proof bags mylar packaging holographic ziplock bag for lip gloss lash food electronics jewelry |clear front|thick&durable|sealable (Silver  3.94\'\'x5.91\'\')', 'YORY', 'Kitchen & Dining', '< $0.00', '< 5', '12.99', '6.0', '6.99', 602385, 1, 7, 1, '2020-08-01', 'YORY STORE', '5', 'N.A.', 'Small standard', 'N.A.'),
('B08F3FYKBD', '100pcs resealable Smell Proof bags mylar packaging holographic ziplock bag for lip gloss lash food electronics jewelry |clear front|thick&durable|sealable (Silver  4.72\'\'x7.87\'\')', 'YORY', 'Kitchen & Dining', '< $0.00', '< 5', '13.99', '6.15', '7.84', 567266, 2, 7, 1, '2020-08-01', 'YORY STORE', '5', 'N.A.', 'Small standard', 'N.A.'),
('B08F3GWKJP', '100pcs resealable Smell Proof bags mylar packaging holographic ziplock bag for lip gloss lash food electronics jewelry |clear front|thick&durable|sealable (Silver  3.54\'\'x4.72\'\')', 'YORY', 'Kitchen & Dining', '< $0.00', '< 5', '9.99', '4.78', '5.21', 678136, 2, 7, 1, '2020-08-01', 'YORY STORE', '3.6', 'N.A.', 'Small standard', 'N.A.'),
('B08F3GYLC9', '100pcs resealable Smell Proof bags mylar packaging holographic ziplock bag for lip gloss lash food electronics jewelry |clear front|thick&durable|sealable (Gold  3.15\'\'x3.94\'\')', 'YORY', 'Kitchen & Dining', '$1,102.62', '138', '7.99', '4.48', '3.51', 41781, 27, 7, 1, '2020-08-01', 'YORY STORE', '4.4', 'N.A.', 'Small standard', 'N.A.'),
('B08F3H3J59', '100pcs resealable Smell Proof bags mylar packaging holographic ziplock bag for lip gloss lash food electronics jewelry |clear front|thick&durable|sealable (Gold  3.94\'\'x5.91\'\')', 'YORY', 'Kitchen & Dining', '< $0.00', '< 5', '12.99', '6.0', '6.99', 319509, 6, 7, 1, '2020-08-01', 'YORY STORE', '4.5', 'N.A.', 'Small standard', 'N.A.'),
('B08FGGYJDN', '10Pcs Open Top Anti Static Bags 15.75x19.69in Extra Large ESD Shielding Bag with Static-Free Stickers for Computer Electronics', 'Terokota', 'Computers & Accessories', '$9,835.20', '240', '40.98', '10.14', '30.84', 0, 33, 7, 1, '2019-10-08', 'Yong Gu', '4.6', '0.70\" x 9.80\" x 15.60\"', 'Large standard', '0.701 lbs'),
('B08FQ9G5R6', '(2 Pack) 9\" X 3\" - Please Flush After Use - Notice Sign Black & White Vinyl Label Sticker Decal - for Business Store  Shop  Cafe  Office  Restaurant - Back Self Adhesive Vinyl', 'Rockmount Electronics', 'Office Products', '$193.50', '30', '6.45', '4.25', '2.2', 106192, 14, 6, 2, '2017-04-26', 'RW e shop', '4.2', '0.10\" x 6.25\" x 9.25\"', 'Small standard', '0.011 lbs'),
('B08FTG3PVX', '100pcs smell proof mylar bags ziplock resealable holographic packaging bag for sample lip gloss eyelash tea cookies food jewelry electronics storage|flat|front clear window (Pink  2.75\'\'Wx3.94\'\'L)', 'YUEAON', 'Kitchen & Dining', '$269.70', '30', '8.99', '4.81', '4.18', 148727, 0, 7, 1, '2020-08-13', 'YUEAON MALL', '4.6', '0.67\" x 5.55\" x 9.29\"', 'Small standard', '0.2888 lbs'),
('B08FX8FCPJ', '100 Pieces Resealable Smell Proof Bags Foil Pouch Bag Flat Ziplock Food Storage Bags with Clear Window Packaging Pouch Bag for Candies Cookies Eyelash Jewelry Electronics (Green  3 x 4 Inch)', 'Homyplaza', 'Kitchen & Dining', '$599.40', '60', '9.99', '4.78', '5.21', 108510, 91, 6, 1, '2020-08-14', 'HomyPlaza', '4.7', 'N.A.', 'Small standard', 'N.A.'),
('B08GHW3P39', '11Pcs Micro Screwdriver Set Precision Tool Watch Jewelry Glasses Repairs Kit Small Screwdriver Set for Electronics  Toys Computer Watch Repair', 'Simyoung', 'Tools & Home Improvement', '< $0.00', '< 5', '12.99', '6.62', '6.37', 959192, 6, 7, 1, '2020-08-22', 'Simyoung', '4', '2.00\" x 1.00\" x 1.00\"', 'Large standard', '0.0125 lbs'),
('B08H3ZY9SY', '12 Gauge THHN Wire Stranded 4 Colors 25 FT Each RED Black Green White THWN 600V Copper Cable AWG', 'ENNIS ELECTRONICS', 'Tools & Home Improvement', '< $0.00', '< 5', '45.0', '6.39', '38.61', 371685, 24, 5, 3, '2020-08-31', 'ABC-100', '4.6', '1.53\" x 8.39\" x 10.31\"', 'Large standard', '2.286 lbs'),
('B08HDFRGC4', '11 in 1 Anti Static Brushes Set with Microfiber Cleaning Cloth  Small Portable Plastic Handle Nylon Cleaning Brush Kit for Computer PC Keyboard Laptop Screen Electronics Camera Lens Phone Car', 'ACKLLR', 'Camera & Photo', '$2,097.90', '210', '9.99', '5.57', '4.42', 187, 69, 7, 1, '2020-09-03', 'CKANDAY', '4.3', '1.18\" x 6.42\" x 8.39\"', 'Large standard', '0.201 lbs'),
('B08HH46M96', '1 Pound Solder Wire Rosin Core 0.3mm Lead Free Fine Solder Wire 0.01in Alloy Extra Thin Gauge Electrical Soldering Wire with Flux Electronics Repairing Soldering 455g Low Melting Temperature', 'ANSIME', 'Industrial & Scientific', '$1,077.60', '30', '27.71', '10.93', '16.78', 107624, 0, 6, 1, '2020-09-30', 'ANSIME INNOVATION CO.,LTD', '4.8', '2.56\" x 2.56\" x 2.56\"', 'Large standard', '1 lbs'),
('B08HH4M2DC', '1 Piece Plastic Black Round Handle Anti Static Brushes Computer Keyboard Laptop Electronics Camera Small Cleaning Brush Duster Clean Brush Small Portable Handle Anti Static Brushes', 'mollensiuer', 'Health & Household', '$209.70', '30', '6.99', '4.33', '2.66', 181649, 9, 7, 1, '2020-09-04', 'mollensiuer', '3.4', '0.55\" x 0.79\" x 4.57\"', 'Small standard', '0.04 lbs'),
('B08HJ9YRJH', '110W Electronics Soldering Iron Kit - LCD Digital Soldering Iron Adjustable Temperature  Wire & Cutter  Stand  Soldering Iron Tip Set  Desoldering Pump  Solder  Tweezers  Soldering Flux Paste', 'LDK', 'Industrial & Scientific', '$85,896.44', '2,207', '24.46', '11.38', '13.08', 1746, 8368, 7, 1, '2020-11-11', 'LDK', '4.4', '10.40\" x 5.40\" x 1.70\"', 'Large standard', '197 lbs'),
('B08HL6WZ6Z', '11Pcs Precision Screwdriver Sets  Small Screwdrivers Eyeglass Repair Kit  Suitable for Eyeglass  Electronics  Toys  Computer  Watch Repair Upgrade Edition  DIY Projects Repair Screwdriver Set', 'HEROOFAM', 'Tools & Home Improvement', '$2,097.90', '210', '9.99', '5.4', '4.59', 33819, 235, 7, 1, '2020-08-10', 'Heroofam Direct', '4.4', '1.14\" x 3.07\" x 5.16\"', 'Large standard', '0 lbs'),
('B08HQ81ZPC', '1 Pack Reusable Charger Cord Bag Portable Oxford Cable Roll Cabin Electronics Organizer Charging Storage Bag Travel Case Zipper Closure for Traveling Home Office for Charger  Phone  USB Solid Black', 'BeeGreen', 'Office Products', '$1,019.10', '90', '13.99', '4.78', '9.21', 0, 0, 7, 1, '2020-09-17', 'beegreenbags', '4.86666666', 'N.A.', 'Small standard', 'N.A.'),
('B08J1QQ721', '(YD #32) MOMENTARY & MAINTAINED Rocker Switch DPDT 20A at 12VDC 10A at 24VDC (ON) Off ON (Replaces Carling); 6 Prongs', 'Advanced Electronics', 'Industrial & Scientific', '$137.50', '10', '13.75', '2.64', '11.11', 308302, 0, 6, 1, '2020-09-14', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08KWH34RZ', '(2-Pack) PLC LS14500-RR 3.6V 2600mAh Li Battery Replaces Rexroth 226423  SUP-E01-PCP-R  PPC-R01.2  PPC-R02.2 Used in Numerical Control Systems  Personal Computers and Other Electronics Applications', 'Exell Battery', 'Health & Household', '< $0.00', '< 5', '38.95', '4.11', '34.84', 1169841, 0, 6, 1, '2020-10-08', 'batteriesinaflash', 'N.A.', '0.58\" x 0.58\" x 2.02\"', 'Small standard', '0.08 lbs'),
('B08M9HHGTR', '(RR #30) Tyco Power Relay TE Connectivity  12v V23076-A1001-C133  Sealed Automotive', 'Advanced Electronics', 'Automotive', '< $0.00', '< 5', '15.75', '2.88', '12.87', 2057135, 0, 5, 1, '2020-10-29', 'The Capacitor Store', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.125 lbs'),
('B08MVDWPRG', '(YB #5) 5pcs Carling Black Rocker Switch Cover/Actuator with Tactile dots on Each end Blank No Lens Euro/Contura Style', 'Advanced Electronics', 'Industrial & Scientific', '$94.00', '8', '11.75', '5.46', '6.29', 190216, 4, 5, 1, '2020-11-05', 'The Capacitor Store', '4.1', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08MVF4GNS', '(YD #20) MOMENTARY Rocker Switch DPDT  20A 12VDC  Illuminated Blue Lens Up/Down Arrows', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.25', '2.7', '11.55', 536778, 10, 5, 1, '2020-11-05', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08MYZS18M', '1/4\" X 1/2\" Push in Rubber Feet- Vintage Electronics  Antiques  Cabinets  Clocks  8 Feet #TNM12', 'Plugs', 'Tools & Home Improvement', '< $0.00', '< 5', '25.17', '4.77', '20.4', 2061953, 0, 5, 1, '2020-11-06', 'inilopower', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B08N4N9QSW', '11 Pieces Screen Opening Pry Tool Kit for Electronics Repair  Professional Spudger Plastic Card Thin Guitar Picks for iPhone iPad MacBook Laptop', 'FIXFANS', 'Computer & Mobile Device Repair Kits', 'N.A.', 'N.A.', '5.99', '4.18', '1.81', 0, 1, 6, 1, '2018-08-20', 'FIXFANS Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.0661 lbs'),
('B08NFD8BNV', '\"BUY 1 GET 1\" (3 PACK iPhone 12/12 Pro & Pro Max Glass Screen Protector HD 9H Clear Apple (2020) (iPhone 12 & 12 Pro)', 'Generic', 'Cell Phones & Accessories', '< $0.00', '< 5', '11.95', '1.95', '10.0', 1343082, 2, 6, 1, '2020-11-15', 'Shop TSA', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08NPFHG9F', '100pcs 10 Values 500ohm-1m Ohm Variable Resistor Potentiometer  Horizontal Film Potentiometer Breadboard for Building Electronics Projects', 'Yosoo Health Gear', 'Industrial & Scientific', '< $0.00', '< 5', '10.54', '2.57', '7.97', 936144, 2, 7, 1, '2020-11-17', 'Naideys', '4.3', '0.94\" x 2.83\" x 5.35\"', 'Large standard', '0.139 lbs'),
('B08P5FLH9C', '10pcs 14-Pin SOIC-14 SOP-14 SSOP-14 to DIP-14 Breakout Board', 'Dreyer Electronics', 'Industrial & Scientific', '$119.85', '15', '7.99', '4.33', '3.66', 335099, 4, 6, 1, '2021-04-02', 'Dreyer Electronics', '5', '0.39\" x 1.61\" x 2.76\"', 'Small standard', '0.22 lbs'),
('B08P97TMPJ', '10pcs 24-Pin SOIC-24 SOP-24 SSOP-24 to DIP-24 Breakout Board', 'Dreyer Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '9.49', '4.42', '5.07', 486664, 3, 5, 1, '2020-11-29', 'Dreyer Electronics', '3.9', '0.47\" x 3.27\" x 4.72\"', 'Small standard', '0.071 lbs'),
('B08PDJ6SYR', '(V#10) 5pcs 3/8-16 Tri-Groove Tamperproof Security Nuts Zinc Anti-Theft Zamak5', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '15.75', '2.88', '12.87', 405447, 1, 5, 1, '2020-12-01', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08PDP9JZM', '(VV #44) 5pcs 5/16 Tri-Groove Tamper Proof Security Nuts Zamak5 Zinc Anti-Theft Fasteners', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '2.76', '11.99', 337190, 6, 4, 1, '2020-12-01', 'The Capacitor Store', '4.4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B08PDVJ8NB', '(HY #48) FRYMASTER ON/Off Rocker Switch SPST MPN: 807358010 7/8\" X 1-1/2\" 15A @125vac RED Direct Replacement for FRYMASTER  Garland  Dean and Others', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.75', '2.76', '11.99', 1512229, 0, 6, 1, '2020-12-01', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', '0.125 lbs'),
('B08PL677X8', '(VV #16) 5pcs 1/2-13 Tri-Groove Tamper Proof Security Nuts Zamak 5 Zinc Anti-Theft', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '14.73', '2.76', '11.97', 415335, 2, 4, 1, '2020-12-01', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B08QCC35H2', '11PCS ParZary Eyeglass Cleaning Tissues & Cloths  Premium Soft Glasses Cleaner 1PCS Oversize (12\"x12\") + 10PCS (6\"x7\") Screen Lens Cleaner  Great for Electronics  Ipad  Laptop  Individual Wrapped', 'ParZary', 'Health & Household', '$351,319.50', '88,050', '3.99', '3.69', '0.3', 28, 600, 7, 1, '2021-02-05', 'ParZary', '4.3', '0.63\" x 7.72\" x 8.54\"', 'Small standard', '0.15 lbs'),
('B08QGM5PV1', '(3-Pack) Noble Electronics iPhone 12/12 Pro 2022 Superior Privacy Screen Protector  Anti-Fingerprint  Anti-Spy  Easy Installation  Tempered Glass  Clarity  Case Friendly  Strong Full Coverage  Scratch Resistant', 'NOBLE ELECTRONICS', 'Cell Phones & Accessories', '< $0.00', '< 5', '12.89', '5.98', '6.91', 483404, 3, 6, 1, '2020-12-16', 'Noble Electronics LLC', '3.4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08QXJNJWB', '(HO #23) MOMENTARY Rocker Switch; 7 Pins; DPDT  20A 12vdc  Illuminated Green Lens Up/Down Arrows', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '21.49', '3.57', '17.92', 751166, 2, 5, 1, '2020-12-18', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B08QYNSB2N', '(HO #24) **MOMENTARY** 7 Pins Lighted Green Rocker Switch (ON) Off (ON) UP Down Arrows DPDT 20A 12vdc', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '12.75', '5.67', '7.08', 473024, 3, 6, 1, '2020-12-17', 'The Capacitor Store', '3.8', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B08QZ1DY4Z', '(HO #25) MOMENTARY Rocker Switch DPDT 20A 12vdc Lighted RED Lens Up/Down Arrows 7 Pins', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '21.49', '3.57', '17.92', 559321, 2, 5, 1, '2020-12-17', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08QZ78WXY', '10 Pcs ANL Fuse 225 Amp for Automotive Marine Vehicles Car Audio Video System Electronics Protection Fuse (225A)', 'MOONLIGHT-TECH', 'Tools & Home Improvement', '< $0.00', '< 5', '16.99', '3.03', '13.96', 2752293, 0, 6, 1, '2020-12-05', 'MOONLIGHT-TECH', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08R13S5YJ', '100uF 25V Radial Lead Aluminum Electrolytic Capacitors for Repairing LCD TVs and Consumer Electronics - 5 pc.', 'DIGITAL HACK SHACK', 'Industrial & Scientific', '< $0.00', '< 5', '5.99', '4.0', '1.99', 383224, 1212, 7, 1, '2019-07-24', 'Lledo Enterprises', '5', '0.10\" x 3.00\" x 5.75\"', 'Small standard', '0.02 lbs'),
('B08R8SBVYG', '100pcs 5mm RGB Tri-Color (Red Green Blue Multicolor) Diffused LED diode Lights Common Cathode 4pin Bright Lighting Bulb Lamps Electronics Components Indicator Light Diffused Diodes', 'QYANGSHAN', 'Industrial & Scientific', '< $0.00', '< 5', '7.2', '4.98', '2.22', 94272, 2, 6, 1, '2020-12-25', 'icexpress', '5', '0.83\" x 3.15\" x 4.57\"', 'Large standard', '0.0882 lbs'),
('B08SK381Q1', '10Pcs Universal PCB Prototyping Board  Double Sides Solderable Breadboard PCB Board Tin Plated Perf Board  Electronics DIY Soldering Universal Circuit Board 4 x 6cm', '143', 'Industrial & Scientific', '< $0.00', '< 5', '7.24', '1.86', '5.38', 533982, 1, 7, 1, '2021-01-09', 'Yoidesu', '5', '0.83\" x 2.40\" x 2.80\"', 'Large standard', '0.13 lbs'),
('B08T1F1XNC', '(2 Pcs) 5\"x3.6\" White - Funny Car Stickers  Pull Fuel Tank Pointer to Full  High Gas Consumption  Fuel Gage Empty - UV Resistant  Waterproof  Peel & Stick Vinyl Car Decal Bumper Sticker - For cars  trucks  boats  Motorcycle etc.', 'Rockmount Electronics', 'Automotive', '< $0.00', '< 5', '7.99', '4.48', '3.51', 661958, 31, 5, 1, '2019-01-24', 'Rockmount Electronics', '4.1', '7.70\" x 5.00\" x 0.10\"', 'Small standard', '0.0198 lbs'),
('B08T1VJBT8', '(2 Pcs) 4.1\" x 6\" White - Running Basketball Player - UV Resistant  Waterproof  Peel & Stick Vinyl Car Decal Bumper Sticker - for Cars  Trucks  Boats  Motorcycle  Laptop  Cup  Wall etc.', 'Rockmount Electronics', 'Automotive', '< $0.00', '< 5', '6.99', '4.33', '2.66', 1803622, 4, 5, 1, '2019-01-24', 'Rockmount Electronics', '3.8', '8.60\" x 6.00\" x 0.10\"', 'Small standard', '0.0198 lbs'),
('B08T867XM2', '(2 Pcs) 5.7\" x 6\" White - Skating Sport Hockey Player - UV Resistant  Waterproof  Peel & Stick Vinyl Car Decal Bumper Sticker - for Cars  Trucks  Boats  Motorcycle  Laptop  Cup  Wall etc.', 'Rockmount Electronics', 'Automotive', '< $0.00', '< 5', '6.99', '1.83', '5.16', 2613779, 3, 6, 1, '2019-01-24', 'Rockmount Electronics', '3.4', '1.34\" x 6.77\" x 11.89\"', 'Large standard', '0.489 lbs'),
('B08TJ65XJ8', '12 Kinds 600/1000 Pcs of Small Stainless Steel Screws Electronics Nuts Assortment for Home Tool Kit - (1000Pcs Round) SCRW-209217', 'uv-screw', 'Industrial & Scientific', '< $0.00', '< 5', '11.99', '2.79', '9.2', 1389494, 0, 6, 1, '2021-01-20', 'Foxwook', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B08VJ3S2JG', '100 Pcs Reusable Fastening Cable Ties with Hook and Loop  Black Microfiber Cloth 6-Inch Cord Ties for Tablet Laptop PC TV Home Office Electronics Wire  3 Sizes', 'BALABALA', 'Electronics', '< $0.00', '< 5', '5.99', '5.67', '0.32', 209964, 19, 6, 1, '2021-02-01', 'BALABALA Direct', '4.2', '0.79\" x 5.94\" x 8.90\"', 'Large standard', '0.1543 lbs'),
('B08XBB1HGK', '(4 Pack) 5.3\"x1.35\" - in Car Camera Recording - Vehicle Car Truck Video Dash Cam On Board Bumper Window Safety Security Caution Warning Adhesive Vinyl Decal Label Sticker', 'Rockmount Electronics', 'Electronics', '$63.00', '10', '6.3', '4.22', '2.08', 155076, 90, 6, 3, '2019-01-24', 'Rockmount Electronics', '4.4', '0.01\" x 4.00\" x 11.00\"', 'Small standard', '0.04 lbs'),
('B08ZJNBMKJ', '1 New Camouflage Entry 5 Buttons Remote Start Car Key Fob Fobik Shell / CASE Remote IYZC01C for Commander & Grand Cherokee - (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 3182634, 2, 6, 2, '2019-06-15', 'KeylessCanada', '2.8', '0.71\" x 1.77\" x 3.46\"', 'Small standard', '0.04 lbs'),
('B091TBZW29', '10PCS Precision Tweezers Set  HengTianMei ESD Anti-Static Stainless Steel Tweezers Kit Curved Tweezers for Craft  Jewelry  Electronics  Laboratory Work', 'HengTianMei', 'Tools & Home Improvement', '$2,429.13', '187', '12.99', '6.27', '6.72', 47114, 485, 6, 1, '2021-04-06', 'kaweisi', '4.6', '0.63\" x 9.17\" x 10.28\"', 'Small standard', '0.489 lbs'),
('B091YKTC2F', '1000W Electric Operated Air Blower with Blow Pipe & Dust Collect Bag  Upthehill Multi-Use Electric Air Duster Air Blower for Computer Computer Air Blower for Keyboard and Electronics Cleaning', 'TFCFL', 'Office Products', '< $0.00', '< 5', '27.0', '5.04', '21.96', 891631, 0, 7, 1, '2021-04-09', 'Upthehill', 'N.A.', '14.96\" x 6.69\" x 7.87\"', 'Large standard', '2.88 lbs'),
('B09239GZZJ', '(2 Pcs) 5\"x3.6\" black - Funny Car Stickers  Pull Fuel Tank Pointer to Full  High Gas Consumption  Fuel Gage Empty - UV Resistant  Waterproof  Peel & Stick Vinyl Car Decal Bumper Sticker - For cars  trucks  boats  Motorcycle etc.', 'Rockmount Electronics', 'Automotive', '< $0.00', '< 5', '6.09', '1.9', '4.19', 637085, 53, 6, 1, '2019-01-24', 'Rockmount Electronics', '4.2', '0.39\" x 5.36\" x 8.31\"', 'Small standard', '0.04 lbs'),
('B0932XG86Z', '1/4-Inch Square Drive Deep Socket  Chrome Vanadium 6-Point Metric Socket with 50mm Length  for Home Automotive & Electronics Repair (14mm)', 'SagaSave', 'Tools & Home Improvement', '< $0.00', '< 5', '8.39', '4.54', '3.85', 0, 0, 6, 1, '2021-04-21', 'Senriseus', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B0934T1YJD', '\"N/A\" Bike Phone Mount Compatible with Most Phones 360 Rotation Silicone Bicycle Phone Holder  Universal Motorcycle Handlebar Mount Compatible with iPhone and Samsung 4.0”- 6.5” in Phones  Black', '\"N/A\"', 'Cell Phones & Accessories', '< $0.00', '< 5', '7.99', '4.54', '3.45', 571949, 44, 6, 1, '2021-04-21', 'AB Fazlullah', '3.8', '2.20\" x 2.75\" x 5.20\"', 'Large standard', '0.099 lbs'),
('B094129DVL', '100pcs Smell Proof Mylar Bags Resealable Holographic Packaging Ziplock Bag with Clear Window Storage Bags for Candy  Sample Lip Gloss Eyelash  Jewelry Electronics Storage (Orange  2.4 x 3.9Inch)', 'Jmassyang', 'Kitchen & Dining', '< $0.00', '< 5', '7.88', '4.55', '3.33', 588902, 1, 7, 1, '2021-05-03', 'Jmassyang', '1', '6.50\" x 3.50\" x 0.60\"', 'Small standard', '0.2205 lbs'),
('B095JBRR8L', '1.5GHz DC 12V 0.15A Track Noise Source Board High Flatness Electronics for Noise Source', 'Emoshayoga', 'Electronics', '< $0.00', '< 5', '16.79', '3.0', '13.79', 521884, 0, 6, 1, '2023-12-23', 'Shenyamm-US', 'N.A.', '3.15\" x 2.36\" x 0.79\"', 'Large standard', '0.03 lbs'),
('B095P4F9MJ', '100 Pieces Smell Proof Mylar Bags  3.5×4.7 inch Resealable Mylar Food Storage Bags with Clear Window for Party Favours Food Self Sealing Storage Supplies Jewelry Electronics', 'LODROC', 'Kitchen & Dining', '$746.17', '83', '13.49', '5.72', '7.77', 64812, 0, 7, 1, '2021-05-24', 'LODROC LIFE', '4.7', '7.87\" x 5.51\" x 1.18\"', 'Large standard', '0.4 lbs'),
('B0961TZB1R', '(AIE) - Bluetooth® Music  Multi-Media & Phone Interface Kit for Select (2009-2012) Mazda (with can-Bus)', 'Automotive Integrated Electronics (AIE)', 'Car Audio & Video Input Adapters', 'N.A.', 'N.A.', '32.6', '9.45', '23.15', 0, 0, 6, 1, '2021-05-27', 'Amazon.com', 'N.A.', '2.01\" x 5.71\" x 7.68\"', 'Large standard', '0.8356 lbs'),
('B0961TZB1V', '(AIE) - Bluetooth® Music  Multi-Media & Phone Interface Kit for Select (1995-2011) Nissan/Infiniti', 'Automotive Integrated Electronics (AIE)', 'Automotive', '< $0.00', '< 5', '34.63', '10.14', '24.49', 4583539, 0, 6, 1, '2021-05-27', 'Amazon.com', 'N.A.', '9.00\" x 6.00\" x 2.00\"', 'Large standard', '1.2 lbs'),
('B0962CJH8B', '(AIE) - Bluetooth® Music  Multi-Media & Phone Interface Kit for select (1998-2011) VW/AUDI (8 pin & 12 pin plugs)', 'Automotive Integrated Electronics (AIE)', 'Automotive', '< $0.00', '< 5', '151.99', '23.38', '128.61', 4953476, 0, 7, 1, '2021-05-27', 'Amazon', 'N.A.', '2.32\" x 3.78\" x 5.55\"', 'Large standard', '0.703 lbs'),
('B0969VMQ8H', '(4 Pack) 4\" x 4\" Round Bright Highly Visible No Smoking No Cigarette Warning Sign Adhesive Vinyl Decal Label Sticker', 'Rockmount Electronics', 'Industrial & Scientific', '$209.70', '30', '6.99', '2.04', '4.95', 62054, 1, 6, 2, '2021-06-01', 'Rockmount Electronics', '5', '0.28\" x 4.02\" x 8.39\"', 'Small standard', '0.02 lbs'),
('B099RX9CY9', '10PCS 10PCS Small Nylon Anti Static Brushes Cleaning Soft Brushes Set Electronics Computer Keyboard Laptop Cleaning Brush Kit', 'FTVOGUE', 'Camera & Photo Cleaning Kits', 'N.A.', 'N.A.', '7.4', '5.01', '2.39', 0, 2, 7, 2, '2021-07-19', 'Kerindas-US', '5', '5.51\" x 2.76\" x 0.79\"', 'Large standard', '0.134 lbs'),
('B09B2ZCDYT', '(VV #16) 25 Pieces 1/2-13 Tri-Groove/Trident Tamper Proof Security Nuts Zamak 5 Zinc Anti-Theft', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '48.75', '6.84', '41.91', 469195, 2, 4, 1, '2021-07-22', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09B3231KQ', '(VV #12) 2pcs 3/8-16 Tri-Groove/Trident Tamperproof Security Nuts SS Anti-Theft  316 Stainless', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '19.71', '3.36', '16.35', 286062, 22, 5, 1, '2021-07-22', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09BG8KQHF', '(VV #44) 25pcs 5/16-18 Tri-Groove Tamper Proof Security Nuts Zamak5 Zinc Anti-Theft Fasteners', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '39.75', '5.76', '33.99', 215910, 11, 4, 1, '2021-07-29', 'The Capacitor Store', '4', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs');
INSERT INTO `jungle_scout_product` (`ASIN`, `product_name`, `brand`, `category`, `est_monthly_revenue`, `est_monthly_sales`, `price`, `fees`, `net`, `rank`, `reviews`, `LQS`, `sellers`, `date_first_available`, `buy_box_owner`, `rating`, `dimensions`, `product_tier`, `weight`) VALUES
('B09BHP7S7M', '(VV #18) 2pcs 1/4-20 Stainless Steel Tri-Groove Tamperproof Security Nuts SS Anti-Theft  316 Stainless Steel', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '18.75', '6.3', '12.45', 427865, 1, 4, 1, '2021-07-29', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09CDDSDBV', '1.02\" Medium Hard Rubber Bumper Feet with Stainless Washer and Screws  Soft  Non Slip  Non Marking  Fine Grips for Appliances  Furniture  Electronics （12 Pack）', 'nanaxagly', 'Tools & Home Improvement', '< $0.00', '< 5', '9.98', '5.62', '4.36', 395849, 36, 7, 1, '2021-08-11', 'hunanxiangnashangmao', '4.4', '0.91\" x 3.39\" x 5.39\"', 'Large standard', '0.287 lbs'),
('B09DK36RXY', '1 Set Electric Foot Electronics Tools Foot Scraper Foot Skin Smoother Rechargeable Foot File Trimmer E Tool Debarking Tool Pedicure Supply Heel Electrical Tools White Abs', 'Healifty', 'Beauty & Personal Care', '< $0.00', '< 5', '23.89', '4.57', '19.32', 1570067, 0, 6, 1, '2021-08-25', 'chaelamody', 'N.A.', '9.05\" x 7.09\" x 2.76\"', 'Large standard', '0.785 lbs'),
('B09GW7F76H', '1-Phase Buck/Boost Step-Up Prewired Transformer - 240V Primary - 208V Secondary - 26 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '909.47', '110.13', '799.34', 522113, 0, 6, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '30 lbs'),
('B09GW8114N', '1-Phase Buck/Boost Step-Up Transformer - 208V Primary - 230V Secondary - 41.67 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '537.04', '65.43', '471.61', 310047, 0, 6, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '31.00\" x 21.00\" x 21.00\"', 'Extra-large', '35 lbs'),
('B09GW86689', '1 Phase Buck and Boost Step-Up Transformer - 208V Primary - 240V Secondary at 46.8 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '735.06', '89.2', '645.86', 238057, 2, 5, 1, '2021-09-22', 'Larson Electronics LLC', '3.8', '31.00\" x 21.00\" x 21.00\"', 'Extra-large', '50 lbs'),
('B09GW8W2PJ', '1 Phase Buck and Boost Step-Up Transformer - 208V Primary - 240V Secondary at 93.7 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '1171.94', '141.62', '1030.32', 567871, 0, 5, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '31.00\" x 21.00\" x 21.00\"', 'Extra-large 150+ lb', '155 lbs'),
('B09GW9B8BK', '1-Phase Buck/Boost Step-Up Transformer - 208V Primary - 230V Secondary - 18.6 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '$6,943.47', '23', '301.89', '37.22', '264.67', 92007, 2, 5, 1, '2021-09-22', 'Larson Electronics LLC', '5', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '25 lbs'),
('B09GW9DF56', '1-Phase Buck and Boost Transformer - 208V Primary - 230V Secondary - 62.5 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '730.01', '88.59', '641.42', 324917, 0, 5, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '31 lbs'),
('B09GW9J559', '1-Phase Buck/Boost Step-Up Transformer - 208V Primary - 229V Secondary -31.2 Amps -50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '392.16', '48.05', '344.11', 437634, 0, 6, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '23 lbs'),
('B09GW9Q7S1', '1 Phase Buck and Boost Step-Down Transformer - 240V Primary - 208V Secondary at 26.6 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '408.47', '50.01', '358.46', 225275, 0, 5, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '22 lbs'),
('B09GW9TP7M', '1 Phase Buck and Boost Transformer - 208V Primary - 240V Secondary - 62.5 Amps on Secondary - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '$13,042.95', '15', '869.53', '105.33', '764.2', 279091, 0, 6, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '31.00\" x 21.00\" x 21.00\"', 'Extra-large', '36 lbs'),
('B09GWBBK6J', '1 Phase Buck and Boost Step-Up Transformer - 208V Primary - 236V Secondary at 31.2 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '570.09', '69.4', '500.69', 501729, 0, 5, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '31.00\" x 21.00\" x 21.00\"', 'Extra-large', '25 lbs'),
('B09GWBGNJZ', '1 Phase Buck and Boost Step-Down Transformer - 242V Primary - 220V Secondary at 34.4 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '392.16', '48.05', '344.11', 1122986, 0, 6, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '23 lbs'),
('B09GWCC5BH', '1-Phase Buck/Boost Step-Down Transformer - 240V Primary - 208V Secondary -35.4 Amps -50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '570.1', '69.4', '500.7', 473021, 1, 5, 1, '2021-09-22', 'Larson Electronics LLC', '5', '31.00\" x 21.00\" x 21.00\"', 'Extra-large', '35 lbs'),
('B09GXRPKFM', '1-Phase Buck/Boost Step-Up Transformer - 208V Primary - 240V Secondary - 23.4 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '$4,084.70', '10', '408.47', '50.01', '358.46', 152948, 0, 6, 1, '2021-09-23', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '24 lbs'),
('B09J5GVKTP', '1 New Camouflage Keyless Entry 3 Buttons Remote Start Car Key Fob Fobik Shell / CASE IYZC01C Compatible with Town Country Challenger Charger Durango Grand Caravan (No Electronics or Chip Inside)', 'KeylessCanada', 'Automotive', '< $0.00', '< 5', '12.95', '5.6', '7.35', 2502941, 44, 6, 2, '2019-06-17', 'KeylessCanada', '3.6', '3.54\" x 1.97\" x 0.39\"', 'Small standard', '0.11 lbs'),
('B09J95FJSJ', '0.4mm Solder Wire Extra Thin Gauge 0.015 inch Diameter Rosin Flux Core Lead-Free 1.76oz 50g Sn99 Ag0.3 Cu0.7 Electronics Soldering Fine Electrical Solder Flow Small Solder Tiny Electric Soldering', 'E ENERSYSTEC', 'Industrial & Scientific', '$1,079.10', '90', '11.99', '6.69', '5.3', 62782, 58, 6, 1, '2021-10-12', 'Enersystec Electric Co.,Ltd', '4.5', '1.38\" x 3.98\" x 5.75\"', 'Large standard', '0.071 lbs'),
('B09JG7VP4W', '10-Head Ultrasonic Mist Maker  Air Humidifier Fountain Pond Atomizer Greenhouse Flowers Humidification Printed Electronics humidification', 'Ethedeal', 'Patio, Lawn & Garden', '< $0.00', '< 5', '100.0', '15.99', '84.01', 1314073, 1, 7, 1, '2021-10-14', 'DETAIKENA', '5', '11.81\" x 3.15\" x 4.72\"', 'Large standard', '6.614 lbs'),
('B09KKP5SCT', '(YD #26) TE Connectivity/Potter & Brumfield T92S7A22-24 Power Relay  DPST-NO  24VAC', 'Advanced Electronics', 'Industrial & Scientific', '$187.50', '10', '18.75', '3.24', '15.51', 110714, 1010, 6, 1, '2021-10-27', 'The Capacitor Store', '4.8', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09KP3DQF2', '(2-Pack) JacobsParts USB-C Type C Female Input to 5.5x2.5mm 20V DC Power Charge PD Trigger Adapter Cable for Laptop and Electronics', 'JacobsParts', 'USB Cables', 'N.A.', 'N.A.', '9.99', '1.79', '8.2', 0, 2222, 6, 1, '2021-10-29', 'JacobsParts', '4.5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09KT3TJY3', '(10 Pieces) Anti Dust Plugs for iPhone 14  13  12  11  Pro  X  Xs Max  XR  8  8 Plus  7  7 Plus  6 Plus  6s Plus  6  6 Plus  SE  iPhone Lightning Port Cover for iPhone iPad Mini/Air iPods Black', 'CASEDAO', 'Cell Phones & Accessories', '$321.88', '52', '6.19', '3.78', '2.41', NULL, 105, 7, 1, '2021-03-24', 'CASEDAO Direct', '4.4', '0.28\" x 3.35\" x 6.26\"', 'Small standard', '0.04 lbs'),
('B09L7FFFKK', '01 02 015 USB Logic Analyzer  Logic Analyzer Logic Analyzer Device Set for Automotive Electronics for Computers for Communications', '01 02 015', 'Industrial & Scientific', '< $0.00', '< 5', '7.53', '2.12', '5.41', 1136814, 0, 6, 1, '2022-01-03', 'liukouuly', 'N.A.', '6.30\" x 3.94\" x 0.79\"', 'Large standard', '0.111 lbs'),
('B09LLTHZ9F', '100pcs/lot SMD LED Diodes 5730 5630 Diode 5730 SMD LED Diodo Blue DC 3V 60mA 0.2W Electronics Components Light Emitting Diodes', 'Generic', 'Industrial & Scientific', '< $0.00', '< 5', '5.5', '1.81', '3.69', 1185314, 0, 6, 1, '2021-11-11', 'TOPXCDZ', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09MVZJLD9', '100 pcs 5mm RGB Multicolor LED Diode Lights Common Cathode( Round Tricolor) 4 pin Bright Lighting Bulb Lamps Electronics Components Indicator Light Emitting Diodes', 'Generic', 'Industrial & Scientific', '< $0.00', '< 5', '7.15', '2.26', '4.89', 0, 0, 7, 1, '2021-12-02', 'Vrabocry', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B09NN2LHFV', '11 Colors Waterproof Wire Labels  11 Sheet 330Pcs Writable Cord Labels  Self Adhesive Cable Tags for Wire Management  Cable Name Tags for Electronics Laser Printer Computer Cord', 'Yitexin', 'Office Labeling Tapes', 'N.A.', 'N.A.', '5.99', '4.36', '1.63', 0, 8, 7, 1, '2021-12-15', 'Yitexin', '4.3', '0.28\" x 8.31\" x 11.69\"', 'Small standard', '0.287 lbs'),
('B09NQFWZQV', '10Pcs Nylon Plastic Pry Open Repair Spudger Pointed Flat Head Pry Bar Electronics Disassemble Opening Tool BEST‑126', 'Hilitand', 'Tools & Home Improvement', '< $0.00', '< 5', '9.61', '2.43', '7.18', 609116, 1, 7, 2, '2021-12-17', 'Xieliser', '5', '0.63\" x 1.34\" x 6.46\"', 'Small standard', '0.09 lbs'),
('B09P47KYBY', '10PCS Smart Electronics 4pin KY-024 Linear Magnetic Hall Switches Speed Counting Sensor Module for Arduino DIY Starter Kit', 'Midzooparts', 'Industrial & Scientific', '< $0.00', '< 5', '11.06', '2.32', '8.74', 939901, 0, 5, 1, '2021-12-23', 'Midzooparts', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B09P49JLKS', '10pcs Smart Electronics LAN8720 Module Network Module Ethernet transceiver RMII Interface Development Board for arduino DIY', 'Midzooparts', 'Single Board Computers', 'N.A.', 'N.A.', '37.03', '5.43', '31.6', 0, 0, 6, 1, '2021-12-23', 'Midzooparts', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09PC7TSRV', '(F #88) 10pcs Compatible with Matsushita Panasonic Metal Oxide Varistor (MOV) 270v ZNR C14K271U 14mm Diameter', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '13.87', '2.65', '11.22', 709455, 0, 6, 1, '2021-12-28', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', '0.125 lbs'),
('B09PSN9DYT', '(YD #37) Carling MOMENTARY Rocker Switch SPST 10A 250VAC 15A  125VAC  3/4 HP Off-(ON); 2 Prongs', 'Advanced Electronics', 'Industrial & Scientific', '$154.90', '10', '15.49', '2.85', '12.64', 94112, 0, 6, 1, '2022-01-05', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', '0.25 lbs'),
('B09QYD518G', '10 Port 200W Charging Station for Multiple Devices  Quick Charge 3.0 Fast USB Charging Station  Multiple USB Charging Station for iPhone  iPad  Samsung  Tablets  and Other Electronics', 'Skazeke', 'Cell Phones & Accessories', '< $0.00', '< 5', '69.99', '13.83', '56.16', 254641, 2, 6, 1, '2022-01-22', 'Skazeke', '3.5', '5.28\" x 8.03\" x 11.65\"', 'Large standard', '3.8757 lbs'),
('B09S2GCLNN', '(VV #15) 5pcs 8mm 1.25 Metric Tri-Groove Tamperproof Security Nuts Zamak5 Zinc Anti-Theft', 'Advanced Electronics', 'Industrial & Scientific', '$425.70', '30', '14.19', '2.69', '11.5', 92494, 11, 4, 1, '2022-02-08', 'The Capacitor Store', '5', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.25 lbs'),
('B09SKW79DN', '(AIE) Automated Power Liftgate Retrofit Kit for Honda CR-V (2017-2022)', 'Automotive Integrated Electronics (AIE)', 'Automotive', '< $0.00', '< 5', '899.0', '124.94', '774.06', 1910094, 0, 6, 1, '2022-02-15', 'Amazon', 'N.A.', '8.25\" x 9.30\" x 32.00\"', 'Large bulky', '12.251 lbs'),
('B09TF7CLVM', '12 Packs Adhesive Transfer Tape Sheets  Heat Resistant Double Sided Tape Sheets 12 x 12 Inch  High Bond Clear Double Sided Sticky Tape for Crafts DIY Electronics Printing Circuit Board', 'Leinuosen', 'Arts, Crafts & Sewing', '< $0.00', '< 5', '6.99', '4.59', '2.4', 300245, 4, 7, 1, '2022-02-25', 'LEI NUOSEN', '2.4', '11.81\" x 11.81\" x 0.55\"', 'Small standard', '0.6614 lbs'),
('B09TQS41MW', '(Pack of 10) Capacitor 470uf 35V  Aluminum Electrolytic Capacitors 105 C ±20% for Repairing Consumer Electronics', 'XTBPQMX', 'Industrial & Scientific', '$149.75', '25', '5.99', '4.0', '1.99', 126642, 22, 6, 1, '2022-03-02', 'rugelec', '4.5', '0.51\" x 2.79\" x 3.39\"', 'Small standard', '0.033 lbs'),
('B09TQSHBVB', '(Pack of 10) Capacitor 470uf 25V 105 C Electrolytic Capacitors Low ESR for Repairing Consumer Electronics', 'XTBPQMX', 'Industrial & Scientific', '$59.90', '10', '5.99', '4.0', '1.99', 196062, 19, 6, 1, '2022-03-02', 'rugelec', '4.4', '0.01\" x 3.00\" x 4.00\"', 'Small standard', '0.04 lbs'),
('B09TQVD2FM', '(Pack of 20) Aluminum Electrolytic Capacitor 220uf 16V 105 C Low ESR for Repairing LCD TVs and Consumer Electronics', 'XTBPQMX', 'Industrial & Scientific', '< $0.00', '< 5', '5.99', '4.0', '1.99', 427182, 2, 5, 1, '2022-03-02', 'rugelec', '5', '0.01\" x 3.00\" x 4.00\"', 'Small standard', '0.0397 lbs'),
('B09TQWGRNW', '(Pack of 10) Electrolytic Capacitor 1000uf 35V Low ESR 105 C for Repairing LCD TVs and Consumer Electronics', 'XTBPQMX', 'Industrial & Scientific', '$118.44', '18', '6.58', '4.07', '2.51', 151817, 14, 4, 1, '2022-03-02', 'rugelec', '4.6', '4.53\" x 2.80\" x 0.35\"', 'Small standard', '0.63 lbs'),
('B09V4L42GB', '(AIE)-USBCDPLAY-1 “Add-on” Car CD Player - Connects to Factory Audio System via USB Data Port Radio Connection – [Note] Review Vehicle Compatibility Fit Guide & Other Fit Options (in Images)', 'Automotive Integrated Electronics (AIE)', 'Electronics', '< $0.00', '< 5', '124.99', '16.51', '108.48', 257506, 37, 6, 1, '2022-03-08', 'NMG Pro', '3.8', '2.83\" x 8.15\" x 9.96\"', 'Large standard', '1.698 lbs'),
('B09V4P13S7', '(AIE)-USBCDPLAY-2 “Add-on” Car CD Player - Connects to Factory Audio System via USB Data Port Radio Connection – [Note] Review Vehicle Compatibility Fit Guide & Other Fit Options (in Images)', 'Automotive Integrated Electronics (AIE)', 'Electronics', '< $0.00', '< 5', '149.99', '18.76', '131.23', 256417, 7070, 6, 1, '2022-03-08', 'NMG Pro', '3.5', '2.91\" x 8.07\" x 10.08\"', 'Large standard', '1.759 lbs'),
('B09V9DCSCN', '(HO #30) Carling Rocker Switch SPST  20A 12VDC  Illuminated Green  2 Independent LEDs; 6 Prongs', 'Advanced Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '18.27', '3.18', '15.09', 513628, 0, 5, 1, '2022-03-10', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', '0.25 lbs'),
('B09WVJDN8X', '100 pcs 3mm Infrared Ray IR 850nm Emitter LED Diode Lights (Clear Transparent Round Lens DC 1.4V-1.6V 20mA) Lighting Bulb Lamps Electronics Components Indicator Light Emitting Diodes', 'Vrabocry', 'Industrial & Scientific', '< $0.00', '< 5', '7.0', '1.96', '5.04', 505603, 2, 7, 1, '2022-03-30', 'Vrabocry', '3', 'N.A.', 'Small standard', 'N.A.'),
('B09WY6LVLQ', '100 pcs 5730 (5630) Green SMD LED Diode Lights (Surface Mount Chip 5.7mm x 3.0mm DC 3V 60mA 0.2W) Super Bright Lighting Bulb Lamps Electronics Components Light Emitting Diodes', 'Vrabocry', 'Industrial & Scientific', '< $0.00', '< 5', '7.25', '1.81', '5.44', 174174, 0, 7, 1, '2022-03-31', 'Vrabocry', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B09XMHZSHM', '100 PCS Smell Proof Mylar Bags 4 x 6 Inch Resealable Ziplock Bags with Clear Window Packaging Foil Pouch for Food Storage Gloss Eyelash Jewelry Electronics Herbs Storage - Black', 'WishDirect', 'Kitchen & Dining', '$171.80', '20', '8.59', '4.57', '4.02', 0, 8, 7, 1, '2022-03-01', 'W Direct', '4.6', 'N.A.', 'Small standard', 'N.A.'),
('B09XTM7R9Z', '0805 SMD LED diode Surface Mount LEDs  LED Light Emitting Diodes Bulb Gold Wire Copper Bracket LED Lamp Emitting Electronics Components Light  Lighting Bulb Lamp Assorted Kit 100pcs (Red)', 'KQO', 'Industrial & Scientific', '< $0.00', '< 5', '9.99', '5.4', '4.59', 222346, 11, 7, 1, '2022-04-13', 'LZGPRO', '4.1', '0.87\" x 3.58\" x 3.66\"', 'Large standard', '0.04 lbs'),
('B09XX2KBN9', '100 pcs 5mm White Straw Hat LED Diode Lights Clear Transparent Lens 3V 20mA Bright Lighting Bulb Lamps Electronics Components Indicator Light Emitting Diodes', 'Vrabocry', 'Industrial & Scientific', '< $0.00', '< 5', '5.99', '1.89', '4.1', 0, 0, 7, 1, '2022-04-14', 'Vrabocry', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B09Y1LJH11', '(5 Colors x 40 pcs = 200 pcs) 0603 SMD LED Diode Lights Assorted Kit (Mini Chip 1.6mm x 0.8mm for PCB DC 20mA) Super Bright Lighting Bulb Lamps Electronics Components Light Emitting Diodes Chips', 'Coliao', 'Industrial & Scientific', '$455.40', '60', '7.59', '4.42', '3.17', 81548, 0, 7, 1, '2022-04-15', 'Aobao US', '4.30909090', '0.28\" x 2.48\" x 3.31\"', 'Small standard', '0.04 lbs'),
('B09Y5T2FH8', '100 pcs 3mm Red LED Diode Lights (Clear Round Transparent DC 2V 20mA) Bright Lighting Bulb Lamps Electronics Components Indicator Light Emitting Diodes', 'Cleiscry', 'Industrial & Scientific', '< $0.00', '< 5', '4.79', '4.0', '0.79', 0, 7, 7, 1, '2022-04-18', 'Cleiscry', '4.8', '3.15\" x 2.36\" x 0.39\"', 'Small standard', '0.025 lbs'),
('B09YT4ZRM7', '12 Clear Rubber Feet for Cutting Board (0.25\" H x 0.69\" W) Hard Plastic Cutting Board Feet Non Slip Rubber Bumpers w/Stainless Screws  Anti-Skid Rubber Feet for Furniture & Electronics - Made in USA', 'Gluposti', 'Tools & Home Improvement', '$209.25', '15', '13.95', '6.14', '7.81', 263115, 40, 6, 1, '2022-04-25', 'Gluposti', '4.7', '0.50\" x 3.00\" x 4.25\"', 'Small standard', '0.071 lbs'),
('B09Z1XMY74', '10PCS Professional Watchmaker Screwdriver Set + 1PCS Spring Bar Tool  Watch Screwdriver for Watch Repair  Eyeglasses Repair  Jewelry Work  Electronics Repair  Silver', 'TEXNEWS', 'Clothing, Shoes & Jewelry', '< $0.00', '< 5', '43.99', '13.46', '30.53', 1454131, 13, 7, 1, '2022-04-28', 'Skydon_USA', '4.2', '1.10\" x 10.20\" x 13.86\"', 'Large standard', '0.5512 lbs'),
('B09ZPD1J4W', '(2 Pack) 6\" x 5.4\" Palm Tree Frosted Matte Vinyl Decals Glass Safety Stickers - Keep Children Safe  Alert Birds  Dogs  Kids - Glass Window Door Indicator', 'Rockmount Electronics', 'Baby', '$89.70', '15', '5.98', '4.18', '1.8', 50206, 10, 6, 3, '2022-05-06', 'ZAS Enterprise', '3.6', '0.39\" x 7.56\" x 12.09\"', 'Small standard', '0.04 lbs'),
('B0B2PL3PNK', '100 pcs 3528 (1210) Blue SMD LED Diode Lights Chips ( 3.5mm x 2.8mm DC 3V 20mA) Super Bright Lighting Bulb Lamps Electronics Components Light Emitting Diodes', 'Vrabocry', 'Industrial & Scientific', '< $0.00', '< 5', '5.5', '1.81', '3.69', 347127, 0, 7, 1, '2022-05-30', 'Vrabocry', '4.43333333', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0 lbs'),
('B0B2R177PJ', '100 pcs 2x3x4 Blue Diffused LED Diode Lights 234 (Colored Blue Lens Frosted Square DC 3V 20mA) Lighting Bulb Lamps Electronics Components Indicator Light Emitting Diodes', 'Vrabocry', 'Industrial & Scientific', '$539.00', '98', '5.5', '1.81', '3.69', 0, 0, 7, 1, '2022-05-31', 'Vrabocry', '3.625', 'N.A.', 'Small standard', 'N.A.'),
('B0B3X8YM6G', '10 Rolls Heat Resistant Tapes for Sublimation  10mm X 33m 108ft Heat Press Tape for High Temperature Heat Transfer for Sublimation on Coffee Mugs  Adhesive Vinyl No Residue  Electronics  Soldering', 'Cruzix', 'Arts, Crafts & Sewing', '$2,494.44', '156', '12.49', '6.34', '6.15', 40984, 0, 7, 1, '2021-03-03', 'Cruzix LLC', '3.6', '3.94\" x 3.94\" x 0.59\"', 'Small standard', '0.5512 lbs'),
('B0B48L4XLZ', '100 PACK Resealable Aluminum Foil Bags with Front Window Packing Pouch for Lip Gloss Eyelash Cookies Sample Food Jewelry Electronics |flat|Smell Proof bag| (6 Colors Mix  6x4 inches)', 'LUCKYTOWN', 'Health & Household', '$1,030.50', '45', '22.9', '8.97', '13.93', 0, 0, 5, 2, '2022-06-16', 'N.A.', 'N.A.', '8.00\" x 6.00\" x 1.00\"', 'Large standard', '0.8 lbs'),
('B0B58D9ZCF', '114-4953 CDI Switch Box Electronics Fits for Mercury Outboard 65 HP 75HP 90HP 95 HP 3 Cylinder Engines Models Sport Jet 1993-1997 Power Pack Replace 18495A10  18495A12  18495A18  18495A19  18495A26', 'Partman', 'Automotive', '< $0.00', '< 5', '79.99', '17.54', '62.45', 2009781, 2, 6, 1, '2022-06-28', 'Partman', '5', '2.24\" x 5.28\" x 6.54\"', 'Large standard', '0.899 lbs'),
('B0B5DZT2HW', '100pcs 10 Values Capacitor CBB Polypropylene Capacitor Assortment Kit 10nF to 470nF Metalized Film Capacitor with Storage Box for Electronics DIY', 'Walfront', 'Industrial & Scientific', '< $0.00', '< 5', '10.55', '2.26', '8.29', 738229, 0, 6, 1, '2022-08-10', 'Gytibedv-US', 'N.A.', '0.87\" x 2.68\" x 5.12\"', 'Large standard', '0.181 lbs'),
('B0B6ZF67Z5', '( 6.1 inch ) Designed for iPhone 14 Crystal Clear Slim Protective Shock Absorption Technology Bumper Soft Thermoplastic Polyurethanes Cover Case for iPhone 14 - 2022', 'Quanzhou Chenchenchen E-Commerce Co.,Ltd', 'Cell Phones & Accessories', '$77.80', '20', '3.89', '3.59', '0.3', 130051, 33, 6, 1, '2022-07-19', 'Sucheng Biotechnology', '4.3', '0.55\" x 4.53\" x 7.68\"', 'Small standard', '0.044 lbs'),
('B0B8XLRSBW', '(2) White LED Motion Sensor Detector RV Trailer 12V Accent Courtesy Step Lights', 'Command Electronics', 'Automotive', '< $0.00', '< 5', '28.99', '5.34', '23.65', 2046693, 2, 5, 1, '2021-05-07', 'Closer To Wholesale', '5', 'N.A.', 'Small standard', '0.65 lbs'),
('B0B8XLZSSN', '(2) Blue LED Motion Sensor Detector RV Trailer 12V Accent Courtesy Step Lights', 'Command Electronics', 'Automotive', '< $0.00', '< 5', '28.99', '5.34', '23.65', 2548744, 0, 5, 1, '2021-05-07', 'Closer To Wholesale', 'N.A.', 'N.A.', 'Small standard', '0.65 lbs'),
('B0BC6DP9L5', '11PCS Mini Precision Screwdriver Set  XAQISHIRE Small Screwdriver Set for Repair Computer  Electronics  Toys  Watch', 'XAQISHIRE', 'Tools & Home Improvement', '$2,345.28', '336', '6.98', '6.26', '0.72', 28227, 731, 7, 1, '2021-06-09', 'XAQISHIRE', '4.5', '0.67\" x 7.36\" x 7.56\"', 'Large standard', '1.08 lbs'),
('B0BG9V14B2', '1-Phase Buck/Boost Step-Up Prewired Transformer - 208V Primary - 230V Secondary - 20 Amps - 50/60Hz - 30A L6-30P & 20A 6-20C Cord Caps', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '576.74', '70.2', '506.54', 1438216, 0, 5, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '21 lbs'),
('B0BG9Y4G8H', '1-Phase Buck/Boost Prewired Step-Down Transformer - 240V Primary - 208V Secondary - 30 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '776.41', '94.16', '682.25', 492053, 0, 5, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '31.00\" x 21.00\" x 21.00\"', 'Extra-large', '43 lbs'),
('B0BKDSJTHL', '(AIE)-SMTCDWCP-1 – “Add-on” Car CD Player with Wireless Apple CarPlay Converter - use in Vehicles with Factory or Aftermarket CarPlay Enabled Radio with USB Input Port. Single USB Cable Installation!', 'Automotive Integrated Electronics (AIE)', 'Electronics', '< $0.00', '< 5', '249.99', '26.76', '223.23', 400914, 3, 6, 1, '2022-10-24', 'NMG Pro', '3.8', '3.11\" x 8.23\" x 9.92\"', 'Large standard', '1.96 lbs'),
('B0BKG87JRM', '(3 Pack) Outdoor/Indoor NFPA 704 - Ratings (3 0 0  SA) Adhesive Vinyl Sticker Label - 14\" Tall Diamond (Point to Point) Black  Blue  Red  Yellow on White Glossy Vinyl', 'Rockmount Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '24.99', '4.74', '20.25', 490746, 0, 6, 1, '2014-08-07', 'Rockmount Electronics', 'N.A.', '10.00\" x 10.00\" x 0.04\"', 'Small standard', '0.033 lbs'),
('B0BKQB6DP4', '(3 Pack) Outdoor/Indoor NFPA 704 - Ratings (1 3 0) Adhesive Vinyl Sticker Label - 14\" tall diamond (point to point) Black  Blue  Red  Yellow on White Glossy Vinyl', 'Rockmount Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '23.99', '4.59', '19.4', 435126, 0, 6, 1, '2014-08-07', 'Rockmount Electronics', 'N.A.', '10.00\" x 10.00\" x 0.04\"', 'Small standard', '0.033 lbs'),
('B0BLK9QT64', '(100 Pack + Free Pump) BZQZDAI 3.9\"×2.9\" Inflatable Air Column Bags Air Cushion Pouch Protectors for Packing Glass  Ceramic Electronics Lightweight Transparent Ensure Safe Transportation', 'BZQZDAI', 'Industrial & Scientific', '$13,557.14', '286', '55.99', '9.39', '46.6', 0, 0, 7, 1, '2022-11-05', 'BZQZDAI', '4.23333333', 'N.A.', 'Small standard', 'N.A.'),
('B0BML27F5G', '(HR27) One Piece Power Relay Compatible with Tyco Electronics K Series  12VDC 45A Automotive THT V23076-A3001-C132  6pin', 'Generic', 'Automotive', '< $0.00', '< 5', '15.75', '2.88', '12.87', 2895864, 0, 5, 1, '2022-11-15', 'The Capacitor Store', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B0BR61X6R3', '1 PC Woobrooch Car Interior Dust Sweeping Soft Brush  Woobrooch Zabernim Car Detailing Brush Scratch Free Curved Design Brushes with Cover for Cleaning Engine Compartment  Dashboard  Electronics', 'Zienlay', 'Automotive', '$329.55', '45', '5.99', '4.84', '1.15', 0, 0, 7, 1, '2022-01-01', 'Zienlay US', '4.5', '0.98\" x 2.40\" x 7.44\"', 'Large standard', '0.09 lbs'),
('B0BR8PZ5MK', '(AIE)-PREM-USBCD - “Add-on” Car CD Player - “Premium” Design USB Kit - Connects to Factory Audio System via Radio USB Data Port. [Note] – Review Vehicle Fit Guide & Other Fit Options (in Images)', 'Automotive Integrated Electronics (AIE)', 'Electronics', '< $0.00', '< 5', '159.99', '19.66', '140.33', 295315, 20, 6, 1, '2022-12-28', 'NMG Pro', '3.4', '2.87\" x 8.50\" x 11.73\"', 'Large standard', '2.18 lbs'),
('B0BR8QCXJZ', '(AIE)-PREM-USBCD-CP – “Add-on” PREMIUM Car CD Player with Wireless Apple CarPlay Converter for Vehicles w/Factory or Aftermarket CarPlay Enabled Radio & USB Input Port. Single USB Cable Installation!', 'Automotive Integrated Electronics (AIE)', 'Electronics', '< $0.00', '< 5', '249.99', '27.04', '222.95', 536086, 0, 6, 1, '2022-12-28', 'NMG Pro', 'N.A.', '2.91\" x 8.03\" x 8.58\"', 'Large standard', '2.291 lbs'),
('B0BRSR9XN2', '( 6.1 inch ) Designed for iPhone 12 Pro Crystal Clear Slim Protective Shock Absorption Technology Bumper Soft Thermoplastic Polyurethanes Cover Case for iPhone 12 Pro', 'Quanzhou Chenchenchen E-Commerce Co.,Ltd', 'Cell Phones & Accessories', '$1,676.50', '441', '3.97', '3.58', '0.39', NULL, NULL, 6, 1, '2019-09-27', 'Quanzhou Chenchenchen E-Commerce Co.,Ltd', '4.5', '0.39\" x 3.94\" x 6.69\"', 'Small standard', '0.044 lbs'),
('B0BS2H8TDZ', '100PCS 5 Gram Premium Silica Gel Packets  Desiccant Packs for Storage  Moisture Absorbers  Humidity Dry Bags  Rechargeable Transparent Silicone Dessicants Dehumidifier for Electronics  Shoes  Jewelry', 'SmaringWing', 'Industrial & Scientific', '$57,961.15', '6,215', '9.34', '7.38', '1.96', 0, 646, 7, 1, '2022-11-21', 'SmaringDirect', '4.8', '2.44\" x 4.25\" x 9.84\"', 'Large standard', '1.091 lbs'),
('B0BTY1SBLZ', '100PCS 2 Pin 3 Pin 4 Pin PCB Mount Screw Terminal Block Connector  KWOKWEI Blue Socket Strips 5mm Pitch for Arduino and Home Electronics Projects (80 x 2 Pin  15 x 3 Pin  5 x 4 Pin)', 'KWOKWEI', 'Industrial & Scientific', '$559.60', '40', '13.99', '6.57', '7.42', 70704, 9, 7, 1, '2023-02-06', 'KWOKWEI HOME', '3.5', '0.87\" x 3.86\" x 6.89\"', 'Large standard', '0.441 lbs'),
('B0BTYYGNS1', '1-500MHz BYS459-1500 H ertz Tester DIY Digital Frequency Counter Test Module - Frequency Counter RF Frequency Counter RF Frequency Tester Ideal for DIY Electronics Projects.', 'Vomeko', 'Industrial & Scientific', '< $0.00', '< 5', '18.57', '3.22', '15.35', 809639, 0, 7, 1, '2023-02-06', 'Vomeko', 'N.A.', '0.00\" x 0.00\" x 0.00\"', 'Small standard', '0.088 lbs'),
('B0BW3CCHVD', '100 pcs(5 colors x 20 pcs) 5mm LED Diode Lights Assortment Kit Pack (Diffused Round Lens DC 3V 20mA) Lighting Bulb Lamp Assorted Variety Color Electronics Components Light Emitting Diodes Parts', 'Vrabocry', 'Industrial & Scientific', '< $0.00', '< 5', '5.99', '4.8', '1.19', 539413, 1, 7, 1, '2023-02-17', 'Vrabocry', '5', '0.87\" x 2.13\" x 2.64\"', 'Large standard', '0.04 lbs'),
('B0BW3YBC8Y', '100PCS Smell Proof Mylar Bags Holographic Packaging Pouch Bag with Clear Window 6.3x9.4inch Resealable Ziplock Foil Pouch Bags for Food Storage  Candy  Jewelry  Electronics Storage (Black)', 'SafeDelux', 'Health & Household', '$174.75', '25', '6.99', '6.64', '0.35', 183515, 45, 7, 1, '2023-02-17', 'AOZTEK', '4.4', '1.85\" x 7.13\" x 13.70\"', 'Large standard', '1.321 lbs'),
('B0BX2YGFY8', '11.8x8.2 inches Light Dimming Stickers Adhesive Film Light Blocking Cover Filter for Electronics  Alarm Clock  Monitor  LED Light  LCD Panels  4 Pieces', 'Luenir', 'Electronics', '$947.54', '73', '12.98', '5.79', '7.19', 62715, 19, 6, 1, '2022-11-16', 'Luenir', '4.6', '0.55\" x 9.49\" x 13.03\"', 'Small standard', '0.311 lbs'),
('B0BYBDP6T5', '1-Off Proto ABS Plastic Electronics Project Box Enclosure with Circuit Board PCB Kit Double Sided Solder Breadboard Prototyping 2.54mm 0.1in Arduino DIY SMT SMD THT ROHS IP54 (125 x 80 x 25mm)', 'Generic', 'Industrial & Scientific', '< $0.00', '< 5', '12.49', '2.49', '10.0', 0, 0, 7, 1, '2023-03-13', '1-off PROTO', 'N.A.', '3.35\" x 1.18\" x 5.12\"', 'Large standard', '0.236 lbs'),
('B0BYHNWQYW', '10 X 42 Monocular Telescope Spotting Scope for Bird Watching  Mountaineering  Sports Night Vision Goggles Travel Essentials Survival Gear and Equipment Hunting Accessories Electronics for Men', 'Lovskoo', 'Sports & Outdoors', '< $0.00', '< 5', '8.99', '1.71', '7.28', 1138255, 0, 7, 1, '2023-03-15', 'tianyuef', 'N.A.', '1.97\" x 1.97\" x 6.10\"', 'Large standard', '0.705 lbs'),
('B0BYHQ3R1D', '1 Rolls 2 Inch 50mm X 33m 108ft 3D Polyimide Heat Tape Heat Resistant Heat Transfer Thermal Sublimation Heat Vinyl Press Tape No Residue High Temperature Tape Electronics Soldering Circuit Board', 'Hoerev', 'Industrial & Scientific', '$2,497.37', '163', '11.99', '2.91', '9.08', 0, 22, 7, 1, '2023-03-15', 'HOEREV®', '4.84285714', '3.54\" x 3.15\" x 0.79\"', 'Large standard', '0.22 lbs'),
('B0BYYRR5KC', '0.4mm Thin Solder Wire Diameter Lead-Free 200g Electronics Solder Wire Rosin Core Fine Gauge Alloy Sn99 Ag0.3 Cu0.7 Electrical Solder 7.05oz Fast Melting No Clean Easy Flow Small Solder', 'E ENERSYSTEC', 'Industrial & Scientific', '< $0.00', '< 5', '24.99', '8.64', '16.35', 338972, 55, 6, 1, '2023-03-20', 'Enersystec Electric Co.,Ltd', '5', '2.09\" x 4.02\" x 4.61\"', 'Large standard', '0.441 lbs'),
('B0BZ6RD8T3', '1 Pair Heavy Duty Spring Loaded Chrome Door Popper 45 lbs Shaved Doors Push Spring Solenoid Opener', '12vMax Electronics', 'Tools & Home Improvement', '< $0.00', '< 5', '13.99', '3.09', '10.9', 580740, 0, 6, 1, '2023-03-21', '12vmax Electronics', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B0C1HTZ9DS', '100 Pack Mylar Bags - Holographic 4 x 6 Inch Smell Proof Reusable Bags for Small Business  Food Storage  Cosmetics  & Electronics - Resealable Pouch Bags for Packaging', 'Generic', 'Health & Household', '< $0.00', '< 5', '10.99', '7.19', '3.8', 562477, 1, 8, 1, '2023-04-04', 'Sure Ivy', '2', '4.33\" x 6.30\" x 2.36\"', 'Large standard', '0.97 lbs'),
('B0C1VF2LWP', '10-in-1 Laptop Keyboard Cleaner Cleaning Kit  Electronics Screen Cleaner Repair Tool with 3 in 1 Earbud Cleaner Pen  Camera Lens Pen  Suit for MacBook iPad  iPhone  Cell Phone  PC Monitor with Patent', 'Tassmpitor', 'Camera & Photo Cleaning Kits', 'N.A.', 'N.A.', '12.99', '5.85', '7.14', 0, 0, 7, 2, '2023-01-09', 'NevateeDirect', '4.6', '1.61\" x 2.52\" x 4.80\"', 'Large standard', '0.331 lbs'),
('B0C5B1WR6P', '\"Yggdrasil\" Viking tree of Life Design PopSockets MagSafe PopGrip for iPhone', 'Viking Tree of Life', 'Cell Phones & Accessories', '$1,739.40', '60', '28.99', '7.86', '21.13', NULL, 16, 6, 1, '2023-09-08', 'Amazon.com', '4.9', '3.68\" x 2.38\" x 1.70\"', 'Large standard', '0.8 lbs'),
('B0C6Y3KMTZ', '(3Pcs) Ohms Law Sticker Funny Ohms Law Wheel Diagram Electrical Electronics Engineer School Chart 3\" Die-Cut Waterproof Vinyl Sticker for Laptop Water Bottle Phone Case Decor Decal Stuff Gift 3 Inches', 'Mordesticker', 'Computers & Accessories', '$167.00', '20', '8.67', '4.53', '4.14', 0, 28, 8, 3, '2023-06-02', 'MORDESTICKER', '4.225', '0.39\" x 3.31\" x 5.51\"', 'Small standard', '0.071 lbs'),
('B0CBS6739F', '\"So?\" Funny Korean Hangul Word PopSockets MagSafe PopGrip for iPhone', 'Simple Korean Hangul Humor (So)', 'Cell Phones & Accessories', '< $0.00', '< 5', '28.99', '7.86', '21.13', NULL, NULL, 6, 1, '2024-01-07', 'Amazon', 'N.A.', '3.68\" x 2.38\" x 1.70\"', 'Large standard', '0.8 lbs'),
('B0CBVZSTTM', '100PC 4 SIZE Smell Proof Bags Resealable Mylar Holographic Bags with Clear Window - Odor-Proof Packaging Pouches for Food Candy Storage  Eyelashes  Jewelry  Electronics Small Business(Pulple&Pink)', 'NRWRTY', 'Health & Household', '< $0.00', '< 5', '11.49', '7.34', '4.15', 493420, 0, 7, 1, '2023-08-08', 'NRWRTY', '4.4625', '2.01\" x 6.46\" x 8.82\"', 'Large standard', '0.571 lbs'),
('B0CC9L14WY', '10mm Led Diode Light  40 Piece Warm White 3V Clear Diffused Led Emitting Diodes  10mm Round Electronics Components Indicator Led Bulb (Warm White 40Pieces)', 'Generic', 'Industrial & Scientific', '$69.80', '10', '6.98', '4.95', '2.03', 145456, 5, 7, 1, '2023-07-19', 'huadi', '5', '1.06\" x 2.68\" x 3.46\"', 'Large standard', '0.13 lbs'),
('B0CDF11GF9', '10 Pack Replacement Soldering Iron Tip - 3.7mm Diameter 58mm Length Soldering Pencil  Fine Point 60 Degree Conical Tips for DIY Electronics Prototype Board Circuits for 25w 30w 40w 60w Irons', 'ProTechTrader', 'Industrial & Scientific', '< $0.00', '< 5', '7.79', '2.16', '5.63', 424575, 0, 6, 1, '2023-08-01', 'ProTechTrader', 'N.A.', 'N.A.', 'Small standard', '0.104 lbs'),
('B0CFHDVXJB', '11Pc Precision Pick & Hook Set with Scraper and Magnetic Telescoping Tool Kit for Remove Automotive Electronics Maintenance Hoses Gasket Hand Pick Up Tools', 'Keze', 'Automotive', '$52,762.05', '2,295', '22.99', '9.52', '13.47', 0, 676, 6, 1, '2022-10-17', 'ASGLJSAN', '4.7', '12.99\" x 5.24\" x 3.35\"', 'Large standard', '1.98 lbs'),
('B0CG2SBNZN', '(3X Value Bundle) Clean My Screen - Biodegradable Screen Cleaner 10ct Electronics Wipes - for Phone  Laptop  iPad  Tablet  Electronic Wipes  LED  LCD  Car  TV  & Computer Cleaner', 'Clean My Screen', 'Audio & Video Lens Cleaners', 'N.A.', 'N.A.', '22.99', '6.98', '16.01', 0, 47, 7, 1, '2023-08-18', 'Clean My Screen', '4.3', '2.13\" x 5.83\" x 7.91\"', 'Large standard', '0.309 lbs'),
('B0CHMJFJ3S', '10Pcs 5mm Red & Green LED Lights  Round Bi-Color LED Diodes Common Cathode  White Lens  3 Pin RGB Electronics Components Lighting Bulb Lamps  20MA 1.8-3.4V  Luminous Angle/Flux 30°/10lm', 'Othmro', 'Industrial & Scientific', '< $0.00', '< 5', '4.99', '3.88', '1.11', 237290, 8, 6, 2, '2019-10-09', 'Othmro US', '3.8', '0.59\" x 3.58\" x 5.00\"', 'Small standard', '0.015 lbs'),
('B0CHP6V41G', '100W Soldering Iron Kit  SEQURE Mini Digital Solder Iron  Adjustable Temperature  50℃-450℃ Fast Heating  XT60 Power Cable  Portable Electric Soldering Tool for Electronics with SI-B2 Soldering Tip', 'SEQURE', 'Industrial & Scientific', '< $0.00', '< 5', '59.99', '13.89', '46.1', 433664, 0, 7, 1, '2023-09-09', 'SEQURE', 'N.A.', '7.00\" x 2.75\" x 1.50\"', 'Large standard', '0.4 lbs'),
('B0CJ6TMV48', '100 Pack Magic Sponge Eraser  Premium Reusable Melamine Sponge  Powerful Cleaning for Kitchen  Bathroom  Walls  Shoes  Electronics  Household Cleaning Kitchen Dish Sponges. Durable & Not Easily Rip.', 'VACAIATU', 'Health & Household', '$2,140.30', '85', '25.18', '12.89', '12.29', 91358, 209, 7, 1, '2022-05-21', 'Lisdar-ZY', '4.4', '4.53\" x 12.24\" x 16.45\"', 'Large standard', '0.26 lbs'),
('B0CLGVK6VT', '10Pcs ESD Tweezers Set Precision Tweezers Set ，Non-magnetic and Anti-Static Stainless with Storage Bag，Added 1Pcs scraper knife for Craft Electronics jewelry Laboratory Work And Used for Beauty Etc', 'IFPPSAE', 'Tools & Home Improvement', '$805.70', '65', '12.58', '6.78', '5.8', 0, 0, 8, 1, '2023-12-09', 'IFPPSAE', '5', '1.10\" x 4.37\" x 7.32\"', 'Large standard', '0.454 lbs'),
('B0CLH2DTQ2', '11 PCS Precision Tweezers Set  ESD Tweezers Set  Premium Craft Tweezers Kit  Anti-Static Stainless Steel Tweezers with Tweezer Storage Bag for Lab  Electronics  Jewelry  Laboratory Work  DIY', 'Ovveroche', 'Tools & Home Improvement', '$2,984.52', '374', '7.98', '5.32', '2.66', 33416, 19, 7, 1, '2023-10-20', 'greentre', '4.7', '0.98\" x 3.42\" x 7.36\"', 'Large standard', '0.397 lbs'),
('B0CM6F1GN7', '(3 Pcs) Ohms Law Sticker Funny Ohms Law Pie Chart Electrical Electronics Engineer Vintage Decal 2\" Waterproof Vinyl Sticker for Water Bottle Laptop Cars Sticker Decal Decor Stuff Gifts School 2 Inches', 'BANAHALLS', 'Computers & Accessories', '$226.60', '40', '6.44', '4.48', '1.96', 0, 14, 8, 1, '2023-10-20', 'BANAHALLS', '4.2', '0.28\" x 3.31\" x 4.53\"', 'Small standard', '0.04 lbs'),
('B0CMK3RK54', '(AIE)-PREM-CD-CP – “Premium” Car USB CD Player with Wireless Apple CarPlay Converter. for use in Vehicles w/Factory CarPlay Enabled Radio & USB Input Port. Single USB Cable Installation!', 'Automotive Integrated Electronics (AIE)', 'Electronics', '< $0.00', '< 5', '378.63', '37.05', '341.58', 537840, 0, 7, 1, '2023-10-30', 'Amazon', 'N.A.', '8.00\" x 8.50\" x 2.75\"', 'Large standard', '1.94 lbs'),
('B0CMK46ZSH', '(AIE)-PREM-CD-DLX – Car USB CD Player – “Premium” Design Deluxe USB Kit w/CD Remote Control - Works with “Any” Vehicle (Kit Includes 2 Connection Types)', 'Automotive Integrated Electronics (AIE)', 'Electronics', '< $0.00', '< 5', '224.99', '25.04', '199.95', 986257, 0, 7, 1, '2023-10-30', 'Amazon', 'N.A.', '3.03\" x 7.91\" x 8.58\"', 'Large standard', '2.326 lbs'),
('B0CMVD2829', '10 Gauge 2 Pin Quick Disconnect Polarized Wire Harness  12 Inch Heavy Duty SAE Connector Bullet Lead Cable (1)', 'Roaming Electronics', 'Automotive', '< $0.00', '< 5', '13.49', '1.94', '11.55', 0, 0, 6, 1, '2023-11-07', 'Click And Payless', 'N.A.', '5.00\" x 5.00\" x 5.00\"', 'Large standard', '0.125 lbs'),
('B0CN9BMVWW', '1 Piece Data Cable Storage Box Plastic Cable Management Box Detachable 7 Compartments Electronics Organizer Box Charger Cord Organizer Box Electronics Cable Organizer Storage with Lid  White', 'lasenersm', 'Electronics', '< $0.00', '< 5', '19.99', '7.58', '12.41', 1014153, 0, 7, 1, '2023-11-14', 'lasenersm', 'N.A.', '3.15\" x 4.57\" x 11.85\"', 'Large standard', '0.73 lbs'),
('B0CQZHG91X', '(Pack of 10) LS14500 for SAFT LS14500 3.6v Lithium AA Batteries  for SAFT LS 14500 LS14500 Battery Used in Automotive Electronics Equipment  white and green', 'MAXICHUN', 'Health & Household', '< $0.00', '< 5', '95.69', '8.65', '87.04', 1103063, 0, 6, 1, '2023-12-27', 'maxichun', 'N.A.', '0.57\" x 0.57\" x 1.99\"', 'Small standard', '0.441 lbs'),
('B0CRQHN4GF', '11-in-1 Keyboard Cleaning Kit  Laptop Cleaning Kit Keyboard Brush Cleaner Electronics Cleaner for Cell Phone/Earbuds/Camera Lens/Computer with Multifunctional Cleaning Tool (Orange)', 'Spogie', 'Camera & Photo Cleaning Kits', 'N.A.', 'N.A.', '10.99', '4.54', '6.45', 0, 0, 7, 1, '2023-03-08', 'Spogie Direct', '4.6', '1.85\" x 2.20\" x 4.96\"', 'Large standard', '0.22 lbs'),
('B0CRR7YTS1', '100PCS Reusable Cable Ties  4.72inch+6inch+7.87inch Cable Management Ties  Cable Straps Wire Ties Adjustable Cord Organizer for Home  Electronics  Office  Data Centers  Black', 'Motroce', 'Electronics', '< $0.00', '< 5', '5.59', '5.21', '0.38', 331630, 1, 7, 1, '2024-01-08', 'finesty', '5', '5.91\" x 8.67\" x 0.79\"', 'Large standard', '0.15 lbs'),
('B0CS3Z9RN9', '100 Pcs 2 Gram Silica Gel Packs，Food Grade Desiccant Packets with Color Indication  Desiccant Packs for Storage  Moisture Absorbers for Food  Jewelry  Shoes  Electronics Storage (100Pcs-2g)', 'auhanth', 'Industrial & Scientific', '$8,327.06', '944', '8.99', '4.63', '4.36', 0, 0, 7, 1, '2023-11-29', 'Auhanth', '4.7', '0.71\" x 6.61\" x 9.72\"', 'Small standard', '0.461 lbs'),
('B0CSFKPL81', '100 Pack Smell Proof Bags- Resealable Mylar Holographic Packaging Pouch Bag with Clear Window for Food Storage Eyelash Jewelry Electronics Storage (Black  3.5 x 4.7 Inch)', 'NKLEI', 'Health & Household', '$24,845.13', '2,487', '11.99', '5.62', '6.37', 12087, 0, 6, 1, '2021-05-18', 'Lei Fei', '4.7', '1.18\" x 3.42\" x 6.93\"', 'Large standard', '0.392 lbs'),
('B0CSNHF4N7', '10Ft TV Power Cord Compatible for Samsung LG TCL Sony  LED LCD Insignia Sharp Toshiba JVC Hisense Electronics UN65KS8000FXZA UN40J5200AFXZA 43UH6100 2 Prong AC Wall Plug 2-Slot Charging Cable', 'Goffeu', 'USB Cables', 'N.A.', 'N.A.', '12.99', '6.45', '6.54', 0, 0, 7, 1, '2024-01-18', 'Goffeu', 'N.A.', '1.50\" x 3.58\" x 9.09\"', 'Large standard', '0.24 lbs'),
('B0CSZ2XQ4K', '1-Pack Chamois Cloth 6\"x 6\" Glasses Cleaning Cloths for Glasses Eyeglasses Camera Lens Cell Phones Computers Tablets LCD Screens Antiques Instruments Electronics ects Multipurpose Square 15x15cm', 'Okydoky', 'Automotive', '$517.59', '41', '9.99', '3.88', '6.11', 0, 0, 7, 1, '2024-01-31', 'Mounting UP', '4.86666666', '0.35\" x 5.67\" x 5.75\"', 'Small standard', '0.02 lbs'),
('B0CVTHNL56', '100 sqft Electric Floor Heat Mat Kit  Electric Tile Floor Heating System with OJ Electronics UDG-4999 GFCI Programmable Thermostat and Floor Sensor  120V', 'HeatTech', 'Tools & Home Improvement', '< $0.00', '< 5', '525.0', '79.74', '445.26', 0, 1818, 6, 2, '2019-06-20', 'Heating Technologies', '4', '24.00\" x 10.00\" x 10.00\"', 'Large bulky', '5 lbs'),
('B0CWXPCQD1', '10-in-1 Laptop Screen Keyboard Cleaner Kit - Electronics Cleaning kit Tool for MacBook iPad iPhone Pro Cell Phone  Brush Tool for Tablet  Computer  PC Monitor TV Camera Lens with White', 'Alessia Cara', 'Camera & Photo Cleaning Kits', 'N.A.', 'N.A.', '11.99', '5.85', '6.14', 0, 0, 7, 1, '2024-03-02', 'Jinsi Nan', 'N.A.', '3.00\" x 3.00\" x 5.00\"', 'Large standard', '0.375 lbs'),
('B0CXS5JDFJ', '1000 PCS 6\" Gun Cleaning Supplies  Lint-Free Gun Cleaning Swabs  Long Cotton Swabs with Bamboo  Highly Absorbent Cotton Tipped Applicators for Makeup  Gun Cleaning  Mechanical Electronics or Pet Care', 'XIAOXINGYUN', 'Beauty & Personal Care', '$2,290.20', '180', '12.49', '8.91', '3.58', 0, 18, 6, 1, '2024-05-06', 'MUZIYU', '4.9', '2.24\" x 8.74\" x 11.69\"', 'Large standard', '1.19 lbs'),
('B0CYL6WY5J', '10X Desk Magnifying Glass with Light and Stand  KUVRS 3 Color Stepless Dimming Lighted Magnifier  Magnetic Heat Resistant Silicone Repair Mat  Helping Hands Magnifying Lamp for Soldering Electronics', 'KUVRS', 'Tools & Home Improvement', '$11,626.29', '171', '67.99', '19.63', '48.36', 0, 40, 7, 1, '2023-10-31', 'KUVRS-US', '4.7', '2.83\" x 12.28\" x 17.56\"', 'Large standard', '7.65 lbs'),
('B0CYRFV6H9', '1 1/2\" x 1/2\" Oval Rubber Feet 1/8\" Thick 3M Adhesive Stick on Pads Electronics (Pack Size: 8 Feet)', 'Western Supply Warehouse', 'Industrial & Scientific', '< $0.00', '< 5', '11.59', '5.44', '6.15', 0, 0, 6, 1, '2024-01-08', 'Western Supply Warehouse', 'N.A.', 'N.A.', 'Small standard', 'N.A.'),
('B0CZ3XN6PZ', '12 PCS Rubber Feet for Cutting Board  Small Rubber Feet Non Slip Soft Rubber Feet Pads with Screws Black Rubber Feet Bumpers Rubber Feet for Furniture  Electronics and Appliances (12)', 'Teaaha', 'Tools & Home Improvement', '$1,501.66', '194', '7.69', '5.17', '2.52', 0, 19, 7, 1, '2023-09-21', 'ZZXingMe', '4.4', '0.79\" x 3.86\" x 5.63\"', 'Large standard', '0.13 lbs'),
('B0CZLBPPJQ', '10 in 1 Electronic Cleaner kit  Laptop Keyboard Cleaner Cleaning  Electronics Screen Cleaner Repair Tool  Earbud Cleaner Pen Electronic Cleaner for Airpods pro/Laptop/Phone/Computer/Screen (White)', 'QEOSSKGI', 'Camera & Photo Cleaning Kits', 'N.A.', 'N.A.', '7.99', '4.54', '3.45', 0, 0, 7, 1, '2024-04-01', 'Yunds2022', 'N.A.', '1.06\" x 2.87\" x 5.75\"', 'Large standard', '0.181 lbs'),
('B0D1C5T9CJ', '100Pcs 1N4733A Zener Diodes - 1W 5.1V DO-204AL Efficiency Diode for Power Rectification  1N4733 1 Watt 5.1 Volt DO-41 Package for Electronics', 'JESSINIE', 'Industrial & Scientific', '$689.25', '75', '8.99', '4.36', '4.63', 0, 0, 7, 1, '2024-02-19', 'Jessinie', '4.72000000', '7.08\" x 4.72\" x 0.70\"', 'Small standard', '0.068 lbs'),
('B0D259R1PD', '10 Rolls of 0-9 Number Tube  Cable Identification Wire Marking Tube Non Slip PVC Number Tube for Electronics Computers (2.5m²)', 'Eujgoov', 'Industrial & Scientific', '< $0.00', '< 5', '11.85', '2.41', '9.44', 0, 0, 6, 1, '2024-04-19', 'Perfurt', 'N.A.', '7.87\" x 5.91\" x 2.76\"', 'Large standard', '0.728 lbs'),
('B0D2P1PXZK', '11 Pcs Resin Mold Tools Set Stirring Needle Spoon Tool Tweezers Precision Kit Anti-Static Electronics Tweezers Set for Resin Art Crafts Jewelry Making DIY Silicone Epoxy Casting Resin Molds(White)', 'MSDADA', 'Arts, Crafts & Sewing', '$2,154.60', '270', '7.98', '4.57', '3.41', 12331, 0, 7, 1, '2021-03-05', 'Master-Ed', '4.7', '0.75\" x 2.95\" x 5.51\"', 'Small standard', '0.201 lbs'),
('B0D2P727KS', '1-Phase Buck/Boost Step-Up Prewired Transformer - 208V Primary - 230V Secondary - 20 Amps - 50/60Hz', 'Larson Electronics', 'Industrial & Scientific', '< $0.00', '< 5', '519.67', '85.88', '433.79', 203851, 0, 6, 1, '2021-09-22', 'Larson Electronics LLC', 'N.A.', '21.00\" x 21.00\" x 11.00\"', 'Large bulky', '19 lbs'),
('B0D3Q8PXQ6', '100PCS Heat Shrink Fork Connectors #10 12-10AWG Tinned Copper U-Type Spade Wire Connectors Kit for Watercraft  Electronics  Automotive (12-10AWG 100PCS)', 'ATMLCOER', 'Industrial & Scientific', '$380.25', '45', '8.45', '4.38', '4.07', 0, 1, 6, 1, '2024-05-09', 'YLZWHC', '5', '4.70\" x 7.08\" x 0.59\"', 'Small standard', '0.209 lbs'),
('B0D44GCDBT', '1080Pcs Resistor Kit - 1/4W 1% Precision Metal Film Resistors Assortment for DIY Electronics  0-10 Ohm Range', 'JESSINIE', 'Industrial & Scientific', '$149.85', '15', '9.99', '4.66', '5.33', 0, 0, 6, 1, '2024-02-19', 'Jessinie', '4.53333333', '7.08\" x 4.72\" x 0.70\"', 'Small standard', '4.9 lbs'),
('B0D461V5BG', '100pcs Heat Shrink Fork Connectors 22-16 Gauge Insulated Electrical Crimp Wire Terminals ＃10 Tinned Copper Heat Shrink Fork Terminals for Watercraft  Electronics  Automotive', 'JHCBKFF', 'Industrial & Scientific', '$124.35', '15', '8.29', '4.27', '4.02', 0, 0, 7, 1, '2024-05-14', 'JHCBS', 'N.A.', '3.15\" x 3.94\" x 0.39\"', 'Small standard', '0.1 lbs'),
('B0D62ZRB9R', '1 Pound Premium Orange Indicating Silica Gel Beads  2-4 mm Size  Reusable Silica Gel Desiccant Beads for Transformer  Camera  Jewelry  Electronics  Documents  Clothes  Books  Shoes', 'HDongany', 'Industrial & Scientific', '$515.49', '51', '9.49', '5.73', '3.76', 0, 7, 6, 1, '2023-04-20', 'EMC2World-shop', '3.65', '1.93\" x 5.83\" x 7.95\"', 'Large standard', '0.99 lbs');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `keyword`) VALUES
(1, 'iphone'),
(2, 'iphone cover'),
(3, 'iphone case'),
(4, 'iphone charger'),
(5, 'iphone screen protector'),
(6, 'test'),
(8, 'cover'),
(9, 'bag'),
(10, 'led light'),
(11, 'laptop'),
(12, 'andriod'),
(13, 'wire'),
(14, 'desk'),
(15, 'keyboard'),
(16, 'SAMSUNG'),
(22, 'Electronics'),
(23, 'Solar Panel'),
(24, 'bottle'),
(25, 'diary'),
(28, 'Protection '),
(29, 'this is test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `ebay_product`
--
ALTER TABLE `ebay_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jungle_scout_product`
--
ALTER TABLE `jungle_scout_product`
  ADD PRIMARY KEY (`ASIN`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
