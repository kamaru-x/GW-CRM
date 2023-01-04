-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 10:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `generalwebsite`
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
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add about', 9, 'add_about'),
(34, 'Can change about', 9, 'change_about'),
(35, 'Can delete about', 9, 'delete_about'),
(36, 'Can view about', 9, 'view_about'),
(37, 'Can add blog', 10, 'add_blog'),
(38, 'Can change blog', 10, 'change_blog'),
(39, 'Can delete blog', 10, 'delete_blog'),
(40, 'Can view blog', 10, 'view_blog'),
(41, 'Can add album', 11, 'add_album'),
(42, 'Can change album', 11, 'change_album'),
(43, 'Can delete album', 11, 'delete_album'),
(44, 'Can view album', 11, 'view_album'),
(45, 'Can add album_ image', 12, 'add_album_image'),
(46, 'Can change album_ image', 12, 'change_album_image'),
(47, 'Can delete album_ image', 12, 'delete_album_image'),
(48, 'Can view album_ image', 12, 'view_album_image'),
(49, 'Can add contact', 13, 'add_contact'),
(50, 'Can change contact', 13, 'change_contact'),
(51, 'Can delete contact', 13, 'delete_contact'),
(52, 'Can view contact', 13, 'view_contact'),
(53, 'Can add product', 14, 'add_product'),
(54, 'Can change product', 14, 'change_product'),
(55, 'Can delete product', 14, 'delete_product'),
(56, 'Can view product', 14, 'view_product'),
(57, 'Can add service', 15, 'add_service'),
(58, 'Can change service', 15, 'change_service'),
(59, 'Can delete service', 15, 'delete_service'),
(60, 'Can view service', 15, 'view_service'),
(61, 'Can add enquiry', 16, 'add_enquiry'),
(62, 'Can change enquiry', 16, 'change_enquiry'),
(63, 'Can delete enquiry', 16, 'delete_enquiry'),
(64, 'Can view enquiry', 16, 'view_enquiry'),
(65, 'Can add manage_ menu', 17, 'add_manage_menu'),
(66, 'Can change manage_ menu', 17, 'change_manage_menu'),
(67, 'Can delete manage_ menu', 17, 'delete_manage_menu'),
(68, 'Can view manage_ menu', 17, 'view_manage_menu'),
(69, 'Can add quick_ links', 18, 'add_quick_links'),
(70, 'Can change quick_ links', 18, 'change_quick_links'),
(71, 'Can delete quick_ links', 18, 'delete_quick_links'),
(72, 'Can view quick_ links', 18, 'view_quick_links'),
(73, 'Can add group_ of_ companies', 19, 'add_group_of_companies'),
(74, 'Can change group_ of_ companies', 19, 'change_group_of_companies'),
(75, 'Can delete group_ of_ companies', 19, 'delete_group_of_companies'),
(76, 'Can view group_ of_ companies', 19, 'view_group_of_companies'),
(77, 'Can add testimonial', 20, 'add_testimonial'),
(78, 'Can change testimonial', 20, 'change_testimonial'),
(79, 'Can delete testimonial', 20, 'delete_testimonial'),
(80, 'Can view testimonial', 20, 'view_testimonial'),
(81, 'Can add banners', 21, 'add_banners'),
(82, 'Can change banners', 21, 'change_banners'),
(83, 'Can delete banners', 21, 'delete_banners'),
(84, 'Can view banners', 21, 'view_banners'),
(85, 'Can add theme', 22, 'add_theme'),
(86, 'Can change theme', 22, 'change_theme'),
(87, 'Can delete theme', 22, 'delete_theme'),
(88, 'Can view theme', 22, 'view_theme'),
(89, 'Can add product', 23, 'add_product'),
(90, 'Can change product', 23, 'change_product'),
(91, 'Can delete product', 23, 'delete_product'),
(92, 'Can view product', 23, 'view_product'),
(93, 'Can add about', 24, 'add_about'),
(94, 'Can change about', 24, 'change_about'),
(95, 'Can delete about', 24, 'delete_about'),
(96, 'Can view about', 24, 'view_about'),
(97, 'Can add album', 25, 'add_album'),
(98, 'Can change album', 25, 'change_album'),
(99, 'Can delete album', 25, 'delete_album'),
(100, 'Can view album', 25, 'view_album'),
(101, 'Can add banners', 26, 'add_banners'),
(102, 'Can change banners', 26, 'change_banners'),
(103, 'Can delete banners', 26, 'delete_banners'),
(104, 'Can view banners', 26, 'view_banners'),
(105, 'Can add blog', 27, 'add_blog'),
(106, 'Can change blog', 27, 'change_blog'),
(107, 'Can delete blog', 27, 'delete_blog'),
(108, 'Can view blog', 27, 'view_blog'),
(109, 'Can add contact', 28, 'add_contact'),
(110, 'Can change contact', 28, 'change_contact'),
(111, 'Can delete contact', 28, 'delete_contact'),
(112, 'Can view contact', 28, 'view_contact'),
(113, 'Can add enquiry', 29, 'add_enquiry'),
(114, 'Can change enquiry', 29, 'change_enquiry'),
(115, 'Can delete enquiry', 29, 'delete_enquiry'),
(116, 'Can view enquiry', 29, 'view_enquiry'),
(117, 'Can add feedback', 30, 'add_feedback'),
(118, 'Can change feedback', 30, 'change_feedback'),
(119, 'Can delete feedback', 30, 'delete_feedback'),
(120, 'Can view feedback', 30, 'view_feedback'),
(121, 'Can add group_ of_ companies', 31, 'add_group_of_companies'),
(122, 'Can change group_ of_ companies', 31, 'change_group_of_companies'),
(123, 'Can delete group_ of_ companies', 31, 'delete_group_of_companies'),
(124, 'Can view group_ of_ companies', 31, 'view_group_of_companies'),
(125, 'Can add manage_ menu', 32, 'add_manage_menu'),
(126, 'Can change manage_ menu', 32, 'change_manage_menu'),
(127, 'Can delete manage_ menu', 32, 'delete_manage_menu'),
(128, 'Can view manage_ menu', 32, 'view_manage_menu'),
(129, 'Can add quick_ links', 33, 'add_quick_links'),
(130, 'Can change quick_ links', 33, 'change_quick_links'),
(131, 'Can delete quick_ links', 33, 'delete_quick_links'),
(132, 'Can view quick_ links', 33, 'view_quick_links'),
(133, 'Can add service', 34, 'add_service'),
(134, 'Can change service', 34, 'change_service'),
(135, 'Can delete service', 34, 'delete_service'),
(136, 'Can view service', 34, 'view_service'),
(137, 'Can add testimonial', 35, 'add_testimonial'),
(138, 'Can change testimonial', 35, 'change_testimonial'),
(139, 'Can delete testimonial', 35, 'delete_testimonial'),
(140, 'Can view testimonial', 35, 'view_testimonial'),
(141, 'Can add theme', 36, 'add_theme'),
(142, 'Can change theme', 36, 'change_theme'),
(143, 'Can delete theme', 36, 'delete_theme'),
(144, 'Can view theme', 36, 'view_theme'),
(145, 'Can add album_ image', 37, 'add_album_image'),
(146, 'Can change album_ image', 37, 'change_album_image'),
(147, 'Can delete album_ image', 37, 'delete_album_image'),
(148, 'Can view album_ image', 37, 'view_album_image'),
(149, 'Can add appbnr', 38, 'add_appbnr'),
(150, 'Can change appbnr', 38, 'change_appbnr'),
(151, 'Can delete appbnr', 38, 'delete_appbnr'),
(152, 'Can view appbnr', 38, 'view_appbnr'),
(153, 'Can add currency', 39, 'add_currency'),
(154, 'Can change currency', 39, 'change_currency'),
(155, 'Can delete currency', 39, 'delete_currency'),
(156, 'Can view currency', 39, 'view_currency');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$Ot9CsoA9DCcmoHZ6QJqUSf$PIoaPuF0u4YGJYpa+1ef8NEuOPV5gZ9JxNwdxWiuVnA=', '2022-12-30 08:35:07.433732', 1, 'admin', '', '', '', 1, 1, '2022-11-02 08:00:40.813000');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-02 08:01:08.052000', '1', 'admin', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-11-02 08:03:08.867000', '1', 'album1', 1, '[{\"added\": {}}]', 11, 1),
(3, '2022-11-02 08:03:18.822000', '1', 'album1', 1, '[{\"added\": {}}]', 12, 1),
(4, '2022-11-02 08:03:28.105000', '2', 'album1', 1, '[{\"added\": {}}]', 12, 1),
(5, '2022-11-14 07:34:45.615000', '1', 'darktrace', 3, '', 9, 1),
(6, '2022-11-14 07:34:51.632000', '17', 'album1', 3, '', 12, 1),
(7, '2022-11-14 07:34:51.646000', '16', 'album1', 3, '', 12, 1),
(8, '2022-11-14 07:35:03.540000', '3', 'caption2', 3, '', 21, 1),
(9, '2022-11-14 07:35:03.552000', '2', 'caption1', 3, '', 21, 1),
(10, '2022-11-14 07:35:10.605000', '13', 'final test', 3, '', 10, 1),
(11, '2022-11-14 07:35:10.613000', '12', 'testsize4', 3, '', 10, 1),
(12, '2022-11-14 07:35:10.620000', '11', 'blogsize3', 3, '', 10, 1),
(13, '2022-11-14 07:35:10.626000', '10', 'testsize3', 3, '', 10, 1),
(14, '2022-11-14 07:35:10.631000', '9', 'testsize2', 3, '', 10, 1),
(15, '2022-11-14 07:35:10.636000', '8', 'testsize', 3, '', 10, 1),
(16, '2022-11-14 07:35:10.642000', '7', 'blog6', 3, '', 10, 1),
(17, '2022-11-14 07:35:10.646000', '6', 'blog5', 3, '', 10, 1),
(18, '2022-11-14 07:35:10.652000', '5', 'blog4', 3, '', 10, 1),
(19, '2022-11-14 07:35:10.656000', '4', 'blog3', 3, '', 10, 1),
(20, '2022-11-14 07:35:10.661000', '3', 'blog2', 3, '', 10, 1),
(21, '2022-11-14 07:35:10.666000', '2', 'blog1', 3, '', 10, 1),
(22, '2022-11-14 07:35:10.671000', '1', 'test blog', 3, '', 10, 1),
(23, '2022-11-14 07:35:16.583000', '1', 'Darktrace', 3, '', 13, 1),
(24, '2022-11-14 07:35:25.801000', '7', 'Group_Of_Companies object (7)', 3, '', 19, 1),
(25, '2022-11-14 07:35:25.812000', '6', 'Group_Of_Companies object (6)', 3, '', 19, 1),
(26, '2022-11-14 07:35:25.817000', '5', 'Group_Of_Companies object (5)', 3, '', 19, 1),
(27, '2022-11-14 07:35:25.821000', '4', 'Group_Of_Companies object (4)', 3, '', 19, 1),
(28, '2022-11-14 07:35:25.826000', '3', 'Group_Of_Companies object (3)', 3, '', 19, 1),
(29, '2022-11-14 07:35:25.832000', '2', 'Group_Of_Companies object (2)', 3, '', 19, 1),
(30, '2022-11-14 07:35:25.837000', '1', 'Group_Of_Companies object (1)', 3, '', 19, 1),
(31, '2022-11-14 07:35:32.301000', '1', 'Manage_Menu object (1)', 3, '', 17, 1),
(32, '2022-11-14 07:35:40.494000', '9', 'product9', 3, '', 14, 1),
(33, '2022-11-14 07:35:40.509000', '8', 'product8', 3, '', 14, 1),
(34, '2022-11-14 07:35:40.516000', '7', 'product7', 3, '', 14, 1),
(35, '2022-11-14 07:35:40.523000', '6', 'product6', 3, '', 14, 1),
(36, '2022-11-14 07:35:40.530000', '5', 'product5', 3, '', 14, 1),
(37, '2022-11-14 07:35:40.538000', '4', 'product4', 3, '', 14, 1),
(38, '2022-11-14 07:35:40.543000', '3', 'product3', 3, '', 14, 1),
(39, '2022-11-14 07:35:40.548000', '2', 'product2', 3, '', 14, 1),
(40, '2022-11-14 07:35:40.554000', '1', 'product1', 3, '', 14, 1),
(41, '2022-11-14 07:35:51.086000', '3', 'album1', 3, '', 11, 1),
(42, '2022-11-14 07:36:01.725000', '1', 'Quick_Links object (1)', 3, '', 18, 1),
(43, '2022-11-14 07:36:07.886000', '6', 'service 6', 3, '', 15, 1),
(44, '2022-11-14 07:36:07.893000', '5', 'service 5', 3, '', 15, 1),
(45, '2022-11-14 07:36:07.898000', '4', 'service 4', 3, '', 15, 1),
(46, '2022-11-14 07:36:07.903000', '3', 'service3', 3, '', 15, 1),
(47, '2022-11-14 07:36:07.908000', '2', 'service2', 3, '', 15, 1),
(48, '2022-11-14 07:36:07.914000', '1', 'service 1', 3, '', 15, 1),
(49, '2022-11-14 07:36:14.402000', '4', 'user4', 3, '', 20, 1),
(50, '2022-11-14 07:36:14.410000', '3', 'user3', 3, '', 20, 1),
(51, '2022-11-14 07:36:14.416000', '2', 'user2', 3, '', 20, 1),
(52, '2022-11-14 07:36:14.422000', '1', 'user1', 3, '', 20, 1),
(53, '2022-11-14 07:36:20.379000', '1', 'admin', 3, '', 7, 1),
(54, '2022-11-15 03:17:06.342000', '1', 'user1', 1, '[{\"added\": {}}]', 16, 1),
(55, '2022-11-18 08:53:58.562000', '1', 'Theme object (1)', 2, '[]', 22, 1),
(56, '2022-11-19 09:22:09.621000', '14', 'Group_Of_Companies object (14)', 3, '', 19, 1),
(57, '2022-11-19 09:22:09.633000', '13', 'Group_Of_Companies object (13)', 3, '', 19, 1),
(58, '2022-11-19 09:22:09.638000', '12', 'Group_Of_Companies object (12)', 3, '', 19, 1),
(59, '2022-11-19 09:22:09.642000', '11', 'Group_Of_Companies object (11)', 3, '', 19, 1),
(60, '2022-11-19 09:22:09.646000', '10', 'Group_Of_Companies object (10)', 3, '', 19, 1),
(61, '2022-11-19 09:22:09.652000', '9', 'Group_Of_Companies object (9)', 3, '', 19, 1),
(62, '2022-11-19 09:22:09.657000', '8', 'Group_Of_Companies object (8)', 3, '', 19, 1),
(63, '2022-11-19 10:22:47.170000', '1', 'user1', 1, '[{\"added\": {}}]', 8, 1),
(64, '2022-11-19 10:23:17.913000', '2', 'user2', 1, '[{\"added\": {}}]', 8, 1),
(65, '2022-11-21 03:36:20.434000', '1', 'blog1', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(66, '2022-11-21 03:36:35.011000', '2', 'blog2', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(67, '2022-11-21 03:36:41.486000', '3', 'blog3', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(68, '2022-11-21 03:44:20.340000', '2', 'blog2', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(69, '2022-11-21 03:44:24.862000', '1', 'blog1', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(70, '2022-11-21 05:45:47.129000', '7', 'caption3', 2, '[]', 21, 1),
(71, '2022-11-21 06:19:05.263000', '1', 'product1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 14, 1),
(72, '2022-11-21 06:19:17.363000', '2', 'product2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 14, 1),
(73, '2022-11-21 06:19:25.292000', '1', 'product1', 2, '[]', 14, 1),
(74, '2022-11-21 06:19:37.158000', '3', 'product3', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 14, 1),
(75, '2022-11-21 06:20:50.252000', '3', 'service3', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 15, 1),
(76, '2022-11-21 06:21:00.674000', '2', 'service2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 15, 1),
(77, '2022-11-21 06:21:10.281000', '1', 'service1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 15, 1),
(78, '2022-11-21 06:23:16.667000', '23', 'album1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 12, 1),
(79, '2022-11-21 06:23:26.587000', '22', 'album1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 12, 1),
(80, '2022-11-21 06:23:37.505000', '21', 'album1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 12, 1),
(81, '2022-11-21 06:23:54.922000', '3', 'blog3', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 10, 1),
(82, '2022-11-21 06:24:04.418000', '2', 'blog2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 10, 1),
(83, '2022-11-21 06:24:14.331000', '1', 'blog1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 10, 1),
(84, '2022-11-21 06:24:30.396000', '1', 'user1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 16, 1),
(85, '2022-11-21 06:24:43.887000', '2', 'user2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 8, 1),
(86, '2022-11-21 06:24:57.693000', '1', 'user1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\"]}}]', 8, 1),
(87, '2022-11-21 06:25:34.346000', '6', 'user2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Ip\", \"Testimonial\"]}}]', 20, 1),
(88, '2022-11-21 08:36:18.353000', '2', 'darktrace', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\", \"Facebook\", \"SMTitle\", \"SMDescription\", \"SMKeywords\"]}}]', 13, 1),
(89, '2022-11-21 08:37:09.899000', '2', 'darktrace', 2, '[{\"changed\": {\"fields\": [\"SMTitle\", \"SMDescription\", \"SMKeywords\"]}}]', 13, 1),
(90, '2022-11-21 08:37:14.248000', '2', 'darktrace', 2, '[]', 13, 1),
(91, '2022-11-21 08:37:29.236000', '2', 'darktrace', 2, '[]', 13, 1),
(92, '2022-11-21 08:39:54.789000', '2', 'Manage_Menu object (2)', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedBy\", \"EditedIp\"]}}]', 17, 1),
(93, '2022-11-21 08:40:23.601000', '2', 'Quick_Links object (2)', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedBy\", \"EditedIp\"]}}]', 18, 1),
(94, '2022-11-21 08:40:52.117000', '1', 'Theme object (1)', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 22, 1),
(95, '2022-11-21 08:53:03.653000', '1', 'album1', 2, '[{\"changed\": {\"fields\": [\"Status\", \"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 11, 1),
(96, '2022-11-21 09:49:16.356000', '4', 'xsociety team', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 10, 1),
(97, '2022-11-21 09:52:27.467000', '3', 'product3', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 14, 1),
(98, '2022-11-21 09:52:32.385000', '3', 'product3', 2, '[]', 14, 1),
(99, '2022-11-21 10:31:23.783000', '18', 'album1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 12, 1),
(100, '2022-11-21 10:31:36.777000', '23', 'album1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 12, 1),
(101, '2022-11-21 10:31:46.912000', '22', 'album1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 12, 1),
(102, '2022-11-21 10:32:02.833000', '21', 'album1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 12, 1),
(103, '2022-11-21 10:32:23.770000', '20', 'album1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 12, 1),
(104, '2022-11-21 10:32:40.990000', '19', 'album1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 12, 1),
(105, '2022-11-21 10:32:46.612000', '19', 'album1', 2, '[]', 12, 1),
(106, '2022-11-21 10:32:49.937000', '19', 'album1', 2, '[]', 12, 1),
(107, '2022-11-21 10:32:55.111000', '18', 'album1', 2, '[]', 12, 1),
(108, '2022-11-21 10:39:02.575000', '1', 'There are many variations of passages', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 9, 1),
(109, '2022-11-21 10:44:02.993000', '29', 'album2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Edited Date\", \"EditedIp\"]}}]', 12, 1),
(110, '2022-11-21 10:44:17.127000', '28', 'album2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Edited Date\", \"EditedIp\"]}}]', 12, 1),
(111, '2022-11-21 10:44:33.255000', '27', 'album2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Edited Date\", \"EditedIp\"]}}]', 12, 1),
(112, '2022-11-21 10:44:47.349000', '26', 'album2', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Edited Date\", \"EditedIp\"]}}]', 12, 1),
(113, '2022-11-21 10:45:00.478000', '24', 'album2', 2, '[{\"changed\": {\"fields\": [\"Edited Date\", \"EditedIp\"]}}]', 12, 1),
(114, '2022-11-21 10:48:16.574000', '2', 'product2', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 14, 1),
(115, '2022-11-21 10:48:29.974000', '1', 'product1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 14, 1),
(116, '2022-11-21 10:49:41.020000', '1', 'service1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 15, 1),
(117, '2022-11-21 10:49:56.089000', '2', 'service2', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 15, 1),
(118, '2022-11-21 10:50:00.688000', '1', 'service1', 2, '[]', 15, 1),
(119, '2022-11-21 10:50:03.727000', '2', 'service2', 2, '[]', 15, 1),
(120, '2022-11-21 10:50:15.260000', '3', 'service3', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 15, 1),
(121, '2022-11-21 10:52:02.013000', '6', 'user2', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 20, 1),
(122, '2022-11-21 10:52:20.495000', '5', 'user1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 20, 1),
(123, '2022-11-21 10:52:24.303000', '6', 'user2', 2, '[]', 20, 1),
(124, '2022-11-21 10:52:28.714000', '5', 'user1', 2, '[]', 20, 1),
(125, '2022-11-21 10:52:32.077000', '6', 'user2', 2, '[]', 20, 1),
(126, '2022-11-21 10:52:35.871000', '5', 'user1', 2, '[]', 20, 1),
(127, '2022-11-21 10:52:40.529000', '1', 'Theme object (1)', 2, '[]', 22, 1),
(128, '2022-11-22 07:35:21.785000', '4', 'final service', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Edited Date\", \"EditedIp\"]}}]', 15, 1),
(129, '2022-11-23 04:38:19.510000', '1', 'Theme object (1)', 2, '[]', 22, 1),
(130, '2022-11-23 04:38:28.575000', '1', 'Theme object (1)', 2, '[]', 22, 1),
(131, '2022-11-25 11:05:42.125000', '8', 'service1', 2, '[{\"changed\": {\"fields\": [\"Edited Date\", \"EditedIp\", \"Offer Price\"]}}]', 15, 1),
(132, '2022-11-25 11:17:09.964000', '11', 'product11', 3, '', 14, 1),
(133, '2022-11-25 11:17:09.971000', '10', 'product10', 3, '', 14, 1),
(134, '2022-12-13 06:54:08.878000', '6', 'We transform your business', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\", \"Sub Caption\"]}}]', 21, 1),
(135, '2022-12-13 06:55:21.873000', '7', 'caption3', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 21, 1),
(136, '2022-12-13 06:55:38.851000', '5', 'banner2', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 21, 1),
(137, '2022-12-13 06:55:54.753000', '4', 'caption1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"Ip\", \"EditedIp\"]}}]', 21, 1),
(138, '2022-12-13 06:56:21.515000', '6', 'We transform your business', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 21, 1),
(139, '2022-12-13 06:56:27.838000', '5', 'banner2', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 21, 1),
(140, '2022-12-13 06:56:33.172000', '4', 'caption1', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 21, 1),
(141, '2022-12-13 07:07:37.634000', '29', 'album2', 3, '', 12, 1),
(142, '2022-12-13 07:07:37.647000', '28', 'album2', 3, '', 12, 1),
(143, '2022-12-13 07:07:37.655000', '27', 'album2', 3, '', 12, 1),
(144, '2022-12-13 07:07:37.661000', '26', 'album2', 3, '', 12, 1),
(145, '2022-12-13 07:07:37.669000', '23', 'album1', 3, '', 12, 1),
(146, '2022-12-13 07:07:37.679000', '22', 'album1', 3, '', 12, 1),
(147, '2022-12-13 07:07:37.687000', '21', 'album1', 3, '', 12, 1),
(148, '2022-12-13 07:07:37.695000', '20', 'album1', 3, '', 12, 1),
(149, '2022-12-13 07:08:15.568000', '3', 'blog3', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 10, 1),
(150, '2022-12-13 07:08:29.231000', '2', 'blog2', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 10, 1),
(151, '2022-12-13 07:08:43.114000', '1', 'blog1', 2, '[{\"changed\": {\"fields\": [\"AddedBy\", \"EditedIp\"]}}]', 10, 1),
(152, '2022-12-13 07:08:58.477000', '3', 'blog3', 3, '', 10, 1),
(153, '2022-12-13 07:08:58.492000', '2', 'blog2', 3, '', 10, 1),
(154, '2022-12-13 07:08:58.500000', '1', 'blog1', 3, '', 10, 1),
(155, '2022-12-13 07:09:23.867000', '6', 'User6', 3, '', 8, 1),
(156, '2022-12-13 07:09:23.880000', '5', 'User6', 3, '', 8, 1),
(157, '2022-12-13 07:09:23.887000', '4', 'User4', 3, '', 8, 1),
(158, '2022-12-13 07:09:23.896000', '3', 'User5', 3, '', 8, 1),
(159, '2022-12-13 07:09:54.083000', '12', 'test discount', 3, '', 14, 1),
(160, '2022-12-13 07:09:54.090000', '9', 'one more test', 3, '', 14, 1),
(161, '2022-12-13 07:09:54.097000', '8', 'finel test', 3, '', 14, 1),
(162, '2022-12-13 07:09:54.103000', '7', 'check error', 3, '', 14, 1),
(163, '2022-12-13 07:09:54.109000', '6', 'error check', 3, '', 14, 1),
(164, '2022-12-13 07:09:54.114000', '5', 'product5', 3, '', 14, 1),
(165, '2022-12-13 07:09:54.121000', '4', 'final product', 3, '', 14, 1),
(166, '2022-12-13 07:11:12.037000', '8', 'service1', 3, '', 15, 1),
(167, '2022-12-13 07:11:12.045000', '7', 'test percentage', 3, '', 15, 1),
(168, '2022-12-13 07:11:12.051000', '6', 'service6', 3, '', 15, 1),
(169, '2022-12-13 07:11:12.057000', '5', 'service5', 3, '', 15, 1),
(170, '2022-12-13 07:11:12.064000', '4', 'final service', 3, '', 15, 1),
(171, '2022-12-13 07:11:35.048000', '5', 'user1', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 20, 1),
(172, '2022-12-15 05:43:37.829000', '1', 'app banner 1 edit', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 38, 1),
(173, '2022-12-15 05:44:16.900000', '1', 'app banner 1 edit', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 38, 1),
(174, '2022-12-15 05:44:40.811000', '1', 'app banner 1 edit', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 38, 1),
(175, '2022-12-15 05:44:53.872000', '1', 'app banner 1 edit', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 38, 1),
(176, '2022-12-30 09:19:11.702562', '104', 'India', 2, '[{\"changed\": {\"fields\": [\"Currency Code\"]}}]', 39, 1),
(177, '2022-12-30 09:19:49.201020', '241', 'United States of America', 2, '[{\"changed\": {\"fields\": [\"Currency Code\"]}}]', 39, 1);

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
(24, 'api', 'about'),
(25, 'api', 'album'),
(37, 'api', 'album_image'),
(26, 'api', 'banners'),
(27, 'api', 'blog'),
(28, 'api', 'contact'),
(29, 'api', 'enquiry'),
(30, 'api', 'feedback'),
(31, 'api', 'group_of_companies'),
(32, 'api', 'manage_menu'),
(23, 'api', 'product'),
(33, 'api', 'quick_links'),
(34, 'api', 'service'),
(35, 'api', 'testimonial'),
(36, 'api', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'home', 'about'),
(11, 'home', 'album'),
(12, 'home', 'album_image'),
(38, 'home', 'appbnr'),
(21, 'home', 'banners'),
(10, 'home', 'blog'),
(13, 'home', 'contact'),
(39, 'home', 'currency'),
(16, 'home', 'enquiry'),
(8, 'home', 'feedback'),
(19, 'home', 'group_of_companies'),
(17, 'home', 'manage_menu'),
(14, 'home', 'product'),
(18, 'home', 'quick_links'),
(15, 'home', 'service'),
(20, 'home', 'testimonial'),
(22, 'home', 'theme'),
(7, 'home', 'user'),
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
(1, 'contenttypes', '0001_initial', '2022-12-30 06:04:12.014577'),
(2, 'auth', '0001_initial', '2022-12-30 06:04:12.579888'),
(3, 'admin', '0001_initial', '2022-12-30 06:04:12.721050'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-30 06:04:12.736671'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-30 06:04:12.752293'),
(6, 'api', '0001_initial', '2022-12-30 06:04:12.783945'),
(7, 'api', '0002_about_album_banners_blog_contact_enquiry_feedback_and_more', '2022-12-30 06:04:13.396004'),
(8, 'api', '0003_about_mission_title_about_vision_title_and_more', '2022-12-30 06:04:13.584369'),
(9, 'api', '0004_delete_about_remove_album_image_album_name_and_more', '2022-12-30 06:04:13.741139'),
(10, 'contenttypes', '0002_remove_content_type_name', '2022-12-30 06:04:13.788258'),
(11, 'auth', '0002_alter_permission_name_max_length', '2022-12-30 06:04:13.819505'),
(12, 'auth', '0003_alter_user_email_max_length', '2022-12-30 06:04:13.835146'),
(13, 'auth', '0004_alter_user_username_opts', '2022-12-30 06:04:13.835146'),
(14, 'auth', '0005_alter_user_last_login_null', '2022-12-30 06:04:13.882579'),
(15, 'auth', '0006_require_contenttypes_0002', '2022-12-30 06:04:13.882579'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2022-12-30 06:04:13.882579'),
(17, 'auth', '0008_alter_user_username_max_length', '2022-12-30 06:04:13.898208'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2022-12-30 06:04:13.913828'),
(19, 'auth', '0010_alter_group_name_max_length', '2022-12-30 06:04:13.929450'),
(20, 'auth', '0011_update_proxy_permissions', '2022-12-30 06:04:13.945072'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2022-12-30 06:04:13.970741'),
(22, 'home', '0001_initial', '2022-12-30 06:04:13.992482'),
(23, 'home', '0002_feedback', '2022-12-30 06:04:14.023708'),
(24, 'home', '0003_about_alter_feedback_options', '2022-12-30 06:04:14.054952'),
(25, 'home', '0004_blog', '2022-12-30 06:04:14.102237'),
(26, 'home', '0005_album_alter_blog_image', '2022-12-30 06:04:14.117849'),
(27, 'home', '0006_album_image', '2022-12-30 06:04:14.171255'),
(28, 'home', '0007_contact', '2022-12-30 06:04:14.180795'),
(29, 'home', '0008_product', '2022-12-30 06:04:14.196423'),
(30, 'home', '0009_alter_product_show_enquiry_alter_product_show_price_and_more', '2022-12-30 06:04:14.290617'),
(31, 'home', '0010_alter_product_actual_price_alter_product_offer_price_and_more', '2022-12-30 06:04:14.371735'),
(32, 'home', '0011_alter_product_show_enquiry_alter_product_show_price_and_more', '2022-12-30 06:04:14.462919'),
(33, 'home', '0012_service', '2022-12-30 06:04:14.478998'),
(34, 'home', '0013_alter_service_actual_price_alter_service_offer_price', '2022-12-30 06:04:14.478998'),
(35, 'home', '0014_alter_service_actual_price_alter_service_offer_price', '2022-12-30 06:04:14.557111'),
(36, 'home', '0015_alter_service_show_enquiry', '2022-12-30 06:04:14.588948'),
(37, 'home', '0016_alter_product_actual_price_alter_product_offer_price_and_more', '2022-12-30 06:04:14.683137'),
(38, 'home', '0017_alter_product_actual_price_alter_product_offer_price_and_more', '2022-12-30 06:04:14.855484'),
(39, 'home', '0018_alter_service_actual_price_alter_service_image_and_more', '2022-12-30 06:04:15.122220'),
(40, 'home', '0019_contact_twitter', '2022-12-30 06:04:15.153437'),
(41, 'home', '0020_enquiry_alter_feedback_date', '2022-12-30 06:04:15.173206'),
(42, 'home', '0021_delete_enquiry_alter_feedback_date', '2022-12-30 06:04:15.185240'),
(43, 'home', '0022_product_refer_number', '2022-12-30 06:04:15.200883'),
(44, 'home', '0023_service_refer_number', '2022-12-30 06:04:15.216531'),
(45, 'home', '0024_enquiry', '2022-12-30 06:04:15.232161'),
(46, 'home', '0025_enquiry_email_enquiry_mobile_number_and_more', '2022-12-30 06:04:15.310684'),
(47, 'home', '0026_manage_menu', '2022-12-30 06:04:15.326343'),
(48, 'home', '0027_quick_links', '2022-12-30 06:04:15.357583'),
(49, 'home', '0028_group_of_companies', '2022-12-30 06:04:15.373685'),
(50, 'home', '0029_testimonial', '2022-12-30 06:04:15.389195'),
(51, 'home', '0030_banners', '2022-12-30 06:04:15.404858'),
(52, 'home', '0031_alter_about_description', '2022-12-30 06:04:15.420477'),
(53, 'home', '0032_quick_links_optional_products_and_more', '2022-12-30 06:04:15.451732'),
(54, 'home', '0033_alter_contact_adress_alter_contact_company_name_and_more', '2022-12-30 06:04:15.937534'),
(55, 'home', '0034_album_images_alter_contact_adress_and_more', '2022-12-30 06:04:16.016137'),
(56, 'home', '0035_remove_album_images', '2022-12-30 06:04:16.031728'),
(57, 'home', '0036_album_images', '2022-12-30 06:04:16.047382'),
(58, 'home', '0037_about_mission_about_vision_alter_about_description', '2022-12-30 06:04:16.126009'),
(59, 'home', '0038_remove_enquiry_time_alter_enquiry_date_and_more', '2022-12-30 06:04:16.141628'),
(60, 'home', '0039_alter_enquiry_product_name', '2022-12-30 06:04:16.330089'),
(61, 'home', '0040_product_url_service_url_alter_about_url_and_more', '2022-12-30 06:04:16.612676'),
(62, 'home', '0041_product_show_feature_service_show_feature', '2022-12-30 06:04:16.753840'),
(63, 'home', '0042_alter_album_options_alter_album_image_options_and_more', '2022-12-30 06:04:16.776972'),
(64, 'home', '0043_alter_product_options_alter_service_options', '2022-12-30 06:04:16.785480'),
(65, 'home', '0044_feedback_website', '2022-12-30 06:04:16.816776'),
(66, 'home', '0045_enquiry_address_enquiry_district_enquiry_whatsapp', '2022-12-30 06:04:16.879334'),
(67, 'home', '0046_alter_enquiry_district', '2022-12-30 06:04:16.926257'),
(68, 'home', '0047_blog_date', '2022-12-30 06:04:17.020454'),
(69, 'home', '0048_alter_about_smdescription_alter_about_smkeywords_and_more', '2022-12-30 06:04:17.522012'),
(70, 'home', '0049_theme', '2022-12-30 06:04:17.537642'),
(71, 'home', '0050_rename_primary_theme_primary_and_more', '2022-12-30 06:04:17.553261'),
(72, 'home', '0051_blog_status', '2022-12-30 06:04:17.647479'),
(73, 'home', '0052_album_status_album_image_status_banners_status_and_more', '2022-12-30 06:04:18.024479'),
(74, 'home', '0053_delete_user_about_addedby_about_date_about_ip_and_more', '2022-12-30 06:04:23.203692'),
(75, 'home', '0054_alter_about_status_alter_album_status_and_more', '2022-12-30 06:04:23.486008'),
(76, 'home', '0055_remove_enquiry_addedby_remove_feedback_addedby', '2022-12-30 06:04:23.627137'),
(77, 'home', '0056_about_editedby_about_editedip_about_edited_date_and_more', '2022-12-30 06:04:28.241463'),
(78, 'home', '0057_product_discount_service_discount', '2022-12-30 06:04:28.366865'),
(79, 'home', '0058_rename_discount_product_discount_and_more', '2022-12-30 06:04:28.460997'),
(80, 'home', '0059_alter_product_discount_alter_service_discount', '2022-12-30 06:04:28.460997'),
(81, 'home', '0060_alter_product_discount_alter_service_discount', '2022-12-30 06:04:28.570839'),
(82, 'home', '0061_about_mission_title_about_vision_title', '2022-12-30 06:04:28.743597'),
(83, 'home', '0062_alter_about_mission', '2022-12-30 06:04:28.790420'),
(84, 'home', '0063_alter_enquiry_whatsapp', '2022-12-30 06:04:28.837720'),
(85, 'home', '0064_appbnr', '2022-12-30 06:04:28.853379'),
(86, 'home', '0065_blog_apidate_blog_apitime', '2022-12-30 06:04:29.041790'),
(87, 'home', '0066_alter_blog_description', '2022-12-30 06:04:29.088693'),
(88, 'sessions', '0001_initial', '2022-12-30 06:04:29.120333'),
(89, 'home', '0067_theme_currency', '2022-12-30 06:43:26.207923'),
(90, 'home', '0068_currency', '2022-12-30 06:48:23.410222'),
(91, 'home', '0069_alter_theme_currency', '2022-12-30 08:38:12.682055'),
(92, 'home', '0070_alter_theme_currency', '2022-12-30 08:52:26.771013');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3a9gmm215qjcvq6fcdmi8kj14q0zu630', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1owGFw:gfho6OJK5wuzbcw6VeYCTjhaz5vdZk7RhGgSugJ9Gm4', '2022-12-03 05:19:08.349000'),
('3er80li57o42jbztw81i436x9uf4jmsm', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oq8gD:T44HehIA2Srh15D9zHqOpJPjcsE86whV4gKwXDX8X64', '2022-11-16 08:00:57.362000'),
('5a3seenogzdbq55law8e4ql4by1sv9qq', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ouTp8:XF8ASDZq5xXK0KULrZPkAGwrP8XlaojuDxv2HgCtkfM', '2022-11-28 07:24:06.065000'),
('5clrh52htoi8iopggjo3rp3magigi8eh', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oyl7a:QJxWJ5QCwTMAJ-TWXHhopnn-9fXQV7VgVwb34yBGIYA', '2022-12-10 02:40:50.499000'),
('5jamobz2aa5g797c9kvpsxp5f6ayoaos', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ourFa:seg-vG91tOLZ59DCNSKUT9uRvUYuufqRuDG0emmVFtU', '2022-11-29 08:24:58.050000'),
('688zuf9eeals3v2tjy71etfgk793ie0n', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1pBAr5:vr2lh0UAetgJ9xLT_yd5T2381TPu4aEwoLJez2g6TFE', '2023-01-13 08:35:07.436519'),
('7ljywta5brcs9b51py97t53w7a6hpsvz', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oxJF9:3E59ZtRj7sedHBkAsnpqCuZAgHvUrxOfCxTjXUr8aqc', '2022-12-06 02:42:39.132000'),
('8pidkccck9xjvbwearbt33yddjjuqslz', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1p5gxk:E7BksPrqU_OPDIy_CVPjMo0BGZOyfFQuR182Jh0-aoQ', '2022-12-29 05:39:20.648000'),
('8pk7jznjyn1d8tpttaoowa5fjg5m96vm', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oyWSq:dflJkR2RocGKsp0ZRZAKyufgUOiaoVEVO_Z9XBW8buU', '2022-12-09 11:01:48.426000'),
('ch7z6gwyyfpzswn3jwja7wutogpv7vez', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ouQnH:ZOfGa1X1ZAOcqJuPzBRjTsExv757dMVVNH21S9FOJLs', '2022-11-28 04:09:59.149000'),
('d4nmiqdyvvsvtow02sazd61r6sq3y1q2', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1p7EjP:Y74j_QXIwpVCPiKsSxfgWPaeDqLjO6D5JJga5u9h7mk', '2023-01-02 11:54:55.009000'),
('dn94fxm3s6c0nfq8949g7cdqyrq8ymcb', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1owICP:xjy9AgfqfrhLXtlmyVc0sziJRmootfOAThkH2Y9jRrI', '2022-12-03 07:23:37.988000'),
('gpv5679dyxcfmvcrh7j5nvuxvgdk9gld', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oyW3m:k-RHlM8qHBshd5ar_MlE2mrz7w4jPVwTpR4o_5L-znY', '2022-12-09 10:35:54.187000'),
('h51cedm2b5cmzy6wmbm5csqvrhfjyudw', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oxM9k:aezFEnB-yFTAflbyonMLdIrEvZjzUBIe9NdEHjG8PZI', '2022-12-06 05:49:16.193000'),
('i7gkkz2r21zjcfzcv0v9lsw9ph22io62', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ovrws:2IzUwUq65BLKywPVy8yrmJ0JgYjaQ8JMu9EuP9ObqUc', '2022-12-02 03:21:50.787000'),
('jk751vr5oc89fbjuzblyhoty1kpjm8ap', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ovrs2:LkncEzQ5gU32-_OynPUhplK9G5oytmq1tTIIDY5XyT4', '2022-12-02 03:16:50.815000'),
('jw5gieo982o6r10gthztuhi6y0vqrc0o', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1p5l3N:SC8WHfOg0T1erGRHvRL_e-Glv6qsQ57eNnXZ1YtWc2g', '2022-12-29 10:01:25.829000'),
('lvejkn3107s1v6es9z734siihqbrn5nd', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oxNAy:eodmigseuvG8jBYkisynFw618R0YwFX-sMpqnadGABw', '2022-12-06 06:54:36.332000'),
('m03z5kuhtzfa5s3s50vcz5xoh3b0x40b', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1p4z45:1PJJCm68vpA-WWTKiQ_2bG0U4v218wG-o7JjoOQIc78', '2022-12-27 06:46:57.980000'),
('mii644za1f678x9zzp5lwy1sngy89wh9', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1owDeI:fmlBqUYUOK6zZ8EjLxoAvxJuxUIIUdFbakv6YaxOWlI', '2022-12-03 02:32:06.324000'),
('o2bdvzfzuyo1u9bv1jee3871uoe3fbvt', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ozXaW:3RGcE8zJv_WBETx4_78TzMJSd_7k1Mw3efwHzSAEO7Y', '2022-12-12 06:25:56.472000'),
('o6ck4doc9unxtvaezf7y18z0xpvr098t', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ox30U:xjS7TxcYnpyLe7m3prRcP7zoKZpwy9vSAGHE5bDovyQ', '2022-12-05 09:22:26.442000'),
('oi4hs7w4x7q0q5cogt3mrv44b0zzs00s', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ouu8C:IsgrivvnHfVxmskCntSkXC6kIt7tQlMOeprYFDCnqqQ', '2022-11-29 11:29:32.128000'),
('oqkodvgeryo9hkn2j73d6w0t1gg7uiaz', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1owH3J:_87RqRzw-ydXGM4Psi4-62pkMbNqNOIyEfIFxT7xwXY', '2022-12-03 06:10:09.921000'),
('q4readca59nefr2ghshan0dwpp5rbyec', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ox4tB:KqODo0BEXb1L1Ap3LGP5I8GcWGlzyaqhMTE5DD04NsM', '2022-12-05 11:23:01.847000'),
('q7t6kyf3vcdgv0m2z6vw246prx25zwj7', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ovdQl:9zrRYDkA5aG3LoQ7RptTgeq3jrMhIO6NhGrxOtTJaTY', '2022-12-01 11:51:43.062000'),
('qmezxfsr3xxhblf55pc08q9um6gfb8u4', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ovx09:OlekhPcF5rjr-PAIZ1U5H4TU7eWOGMoJ9wwUwb7dz8E', '2022-12-02 08:45:33.845000'),
('qousgly5lu95f3bkglnq3ki329rqh1ux', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ovu5Y:YCpIy3vOwYOFq3_i1HzA-bjGx-AylmZOsdrpfJnwVGk', '2022-12-02 05:38:56.523000'),
('saxwdjj7c8xr237fzoq48umde5s5hld4', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oxg5U:R_EkIrqQYKB1cEEaYOnmOHRaBwIupiqz_va3T4g1cWk', '2022-12-07 03:06:12.712000'),
('t262m9k8vq6wowd4j7rivvwc98wzgxmg', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oumPq:hxoPHGAGlN0IReI0wxRl7S3-E3UKy0UxALRvoaG1QCc', '2022-11-29 03:15:14.835000'),
('tcya51emhbmk5vcytk9n56wwrdvl4jjh', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ov9j7:5R35y7z1tvlX66HKIT8kXZtt0o0mZ3Qaitcf247a394', '2022-11-30 04:08:41.044000'),
('trzw8aq4dsuuew9hgl4n7igl0d0rxs68', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oyXMo:6poSZYt5CUqd3kfC5CiOQUKM0WLoIS1cQFCPxfjQB0Y', '2022-12-09 11:59:38.628000'),
('uyz7hn2l0qsnkk7kilowlxzfh88plk08', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oytHd:_RN4qJ6WWIxm46RYrrbWNWdDOAU0Zh0wDkX6C_yPSKI', '2022-12-10 11:23:45.947000'),
('vcetmrg2bijeahyowtflk6ynd072xalb', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oxgOa:6fQZki1Ix0OviChWiu68JdWogfEXPvJVQqU3Uqn3Qjg', '2022-12-07 03:25:56.286000'),
('vdd43pm163nrz269k8lsi8orzjyiayv3', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1p5K8B:VWjYcaKGNj2GUycCr9Qa7fLG_06WB3fxEWBkbsKifDs', '2022-12-28 05:16:35.275000'),
('whk7goosl669oc4wgx5m0vdtpy5bbnir', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oyo7o:GrzomCroTcFsbJW07kwiukppRewo7XABRiAZM8w3YJc', '2022-12-10 05:53:16.098000'),
('wkvovr0fw1j2otk8dud3rqfcwrljo3ko', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oszUb:tqn7ioLe3u9ptooQ6kPKNacuChQG4xZ0xZUV35JfUf8', '2022-11-24 04:48:45.406000'),
('ww6iiowephl046e8dnfd5mma2z7rn6oo', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ovdPf:QCO8-oLbY0T0MtvxH5VCedKyMXpfML718qE5-5fMYG4', '2022-12-01 11:50:35.664000'),
('xek389881cara7wvtsbta8jdjb5wy09j', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1owxae:6PMjE0ekZuTKiA176AWOuZWIEiRMluRIMawgdm-_4y0', '2022-12-05 03:35:24.757000'),
('zecygufrrstiqh6dt7yhdregmo2s2ikp', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1ot5K9:JmWrr2yihrHES4xkyT79klowHmnKTnvacL4jIKP9TRI', '2022-11-24 11:02:21.007000'),
('zg6w7rdpd7oorwkzrdik4555lgg3tna7', '.eJxVjEsOwjAMBe-SNYqcumlqluw5Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3dsGdfreO5WHjDvTO423yMo3rPHR-V_xBF3-d1J6Xw_076HnpvzUVhFAMIlslFZCQpqYBVKxSaCm0SKWORMmwDogk0ijXBTqOIMjJvT_CWDcY:1oy7Ej:3cCOQt5xS6vldZRq5q6Vj3opJOmMEiC_5DBYAjFmzJo', '2022-12-08 08:05:33.368000');

-- --------------------------------------------------------

--
-- Table structure for table `home_about`
--

CREATE TABLE `home_about` (
  `id` bigint(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Url` mediumtext DEFAULT NULL,
  `SMTitle` varchar(2000) DEFAULT NULL,
  `SMDescription` longtext DEFAULT NULL,
  `SMKeywords` varchar(2000) DEFAULT NULL,
  `Mission` longtext DEFAULT NULL,
  `Vision` longtext DEFAULT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL,
  `Mission_Title` varchar(50) DEFAULT NULL,
  `Vision_Title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_about`
--

INSERT INTO `home_about` (`id`, `Title`, `Description`, `Image`, `Url`, `SMTitle`, `SMDescription`, `SMKeywords`, `Mission`, `Vision`, `AddedBy`, `Date`, `Ip`, `Status`, `EditedBy`, `EditedIp`, `Edited_Date`, `Mission_Title`, `Vision_Title`) VALUES
(1, 'There are many variations of passage', '<p>Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry&#39;s Standard Dummy Text Ever Since The 1500s.</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English.</p>', 'about_us/about.png', 'There_are_many_variations_of_passage', NULL, '', NULL, '', '', 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, 0, '127.0.0.1', '2022-11-21 07:06:01.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_album`
--

CREATE TABLE `home_album` (
  `id` bigint(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Thumbnail` varchar(100) DEFAULT NULL,
  `Url` mediumtext DEFAULT NULL,
  `SMTitle` varchar(2000) DEFAULT NULL,
  `SMDescription` longtext DEFAULT NULL,
  `SMKeywords` varchar(2000) DEFAULT NULL,
  `Images` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_album`
--

INSERT INTO `home_album` (`id`, `Title`, `Thumbnail`, `Url`, `SMTitle`, `SMDescription`, `SMKeywords`, `Images`, `Status`, `AddedBy`, `Date`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(1, 'album1', 'album/1.jpg', 'album1', NULL, '', NULL, 6, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-11-21 16:05:29.099000'),
(2, 'album2', 'album/2.jpg', 'album2', '', '', '', 6, 1, 1, '2022-11-21 16:09:52.510000', '127.0.0.1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_album_image`
--

CREATE TABLE `home_album_image` (
  `id` bigint(20) NOT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Album_Name_id` bigint(20) NOT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_album_image`
--

INSERT INTO `home_album_image` (`id`, `Image`, `Album_Name_id`, `Status`, `AddedBy`, `Date`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(18, 'album-image/3.jpg', 1, 0, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 07:06:01.000000'),
(19, 'album-image/4.jpg', 1, 0, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 07:06:01.000000'),
(24, 'album-image/1_O9PbVtK.jpg', 2, 1, 1, '2022-11-21 16:10:46.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 10:44:53.000000'),
(25, 'album-image/2_7SrJMlT.jpg', 2, 0, 1, '2022-11-21 16:10:46.060000', '127.0.0.1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_appbnr`
--

CREATE TABLE `home_appbnr` (
  `id` bigint(20) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Ip` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Caption` varchar(100) NOT NULL,
  `Sub_Caption` varchar(100) NOT NULL,
  `Button_Label` varchar(30) NOT NULL,
  `Link` varchar(1000) NOT NULL,
  `Banner_Image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_appbnr`
--

INSERT INTO `home_appbnr` (`id`, `Date`, `Status`, `AddedBy`, `Ip`, `Edited_Date`, `EditedBy`, `EditedIp`, `Caption`, `Sub_Caption`, `Button_Label`, `Link`, `Banner_Image`) VALUES
(1, '2022-12-15 11:10:09.000000', 1, 1, '127.0.0.1', '2022-12-15 11:12:14.000000', 1, '127.0.0.1', 'app banner 1 edit', 'appbanner1', 'app label1', 'app link1', 'BannerImage/watch-dogs-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` bigint(20) NOT NULL,
  `Caption` varchar(100) NOT NULL,
  `Sub_Caption` varchar(100) NOT NULL,
  `Button_Label` varchar(30) NOT NULL,
  `Link` varchar(1000) NOT NULL,
  `Banner_Image` varchar(100) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `Caption`, `Sub_Caption`, `Button_Label`, `Link`, `Banner_Image`, `Status`, `AddedBy`, `Date`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(4, 'caption1', 'subcaption1', 'label', 'link', 'BannerImage/slider1.jpg', 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 07:06:01.000000'),
(5, 'banner2', 'banner2', 'label2', 'link2', 'BannerImage/slider2.jpg', 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 07:06:01.000000'),
(6, 'We transform your business', 'If you are going to use a passage of Lorem Isum, you need to be sure there isn\'t anything. Read More', 'read more', 'http://darktrace.pythonanywhere.com/about/', 'BannerImage/slider2_rMEZQ1A.jpg', 0, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 07:06:01.000000'),
(7, 'caption3', 'subcaption3', 'label3', 'link3', 'BannerImage/watch-dogs.jpg', 1, 1, '2022-11-21 05:45:20.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 07:06:01.000000'),
(8, 'new banner', 'caption new', 'new', 'something', 'BannerImage/03.jpg', 1, 1, '2022-12-13 12:27:49.175000', '127.0.0.1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_blog`
--

CREATE TABLE `home_blog` (
  `id` bigint(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Url` mediumtext NOT NULL,
  `SMTitle` varchar(2000) DEFAULT NULL,
  `SMDescription` longtext DEFAULT NULL,
  `SMKeywords` varchar(2000) DEFAULT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL,
  `ApiDate` date DEFAULT NULL,
  `ApiTime` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_blog`
--

INSERT INTO `home_blog` (`id`, `Title`, `Description`, `Image`, `Url`, `SMTitle`, `SMDescription`, `SMKeywords`, `Date`, `Status`, `AddedBy`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`, `ApiDate`, `ApiTime`) VALUES
(4, 'xsociety team', 'something', 'blog/5.jpg', 'xsociety-team', '', '', '', '2022-11-21 06:26:52.000000', 1, 1, '127.0.0.1', 1, '127.0.0.1', '2022-11-21 16:07:42.736000', '2022-12-19', '12:50:17.721000'),
(5, 'final blog', '<p><strong>aezsxrdvgybh <u>dsfghhfdsaDDGFHFDSAS ASDFGHJK<em>&nbsp;SQAWDEFRGDTHGUH</em></u></strong></p>\r\n', 'blog/1_JREVfna.jpg', 'final-blog', '', '', '', '2022-11-21 16:26:28.988000', 1, 1, '127.0.0.1', 1, '127.0.0.1', '2022-12-20 10:03:15.516000', '2022-12-19', '12:50:17.721000'),
(6, 'testing resize', 'Let\'s setup the structure our our database using django models in this video', 'blog/aiden-pearce-watch-dogs-ubisoft-video-games-wallpaper-preview.jpg', 'testing-resize', '', '', '', '2022-11-26 08:12:53.711000', 0, 1, '127.0.0.1', 1, '127.0.0.1', '2022-11-26 08:20:51.189000', '2022-12-19', '12:50:17.721000');

-- --------------------------------------------------------

--
-- Table structure for table `home_contact`
--

CREATE TABLE `home_contact` (
  `id` bigint(20) NOT NULL,
  `Company_Name` varchar(50) DEFAULT NULL,
  `Adress` longtext DEFAULT NULL,
  `Telephone` varchar(15) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Whatsapp` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Website` varchar(250) DEFAULT NULL,
  `Longitude` varchar(30) DEFAULT NULL,
  `Latitude` varchar(30) DEFAULT NULL,
  `Facebook` varchar(50) DEFAULT NULL,
  `Instagram` varchar(50) DEFAULT NULL,
  `Linkedin` varchar(50) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Url` mediumtext DEFAULT NULL,
  `SMTitle` varchar(2000) DEFAULT NULL,
  `SMDescription` longtext DEFAULT NULL,
  `SMKeywords` varchar(2000) DEFAULT NULL,
  `Twitter` varchar(50) DEFAULT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_contact`
--

INSERT INTO `home_contact` (`id`, `Company_Name`, `Adress`, `Telephone`, `Mobile`, `Whatsapp`, `Email`, `Website`, `Longitude`, `Latitude`, `Facebook`, `Instagram`, `Linkedin`, `Image`, `Url`, `SMTitle`, `SMDescription`, `SMKeywords`, `Twitter`, `AddedBy`, `Date`, `Ip`, `Status`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(2, 'darktrace', 'address ...', '654321', '9876543212', '987654321', 'darktrace@mail.com', 'darktrace.com', '654321', '123456', 'darktrace', 'instagram', '', 'Company/logo-dark_zQ20w8H.png', 'darktrace', 'abc', 'something', 'meta', '', 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, 1, '127.0.0.1', '2022-11-22 11:19:57.732000');

-- --------------------------------------------------------

--
-- Table structure for table `home_currency`
--

CREATE TABLE `home_currency` (
  `id` bigint(20) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Currency` varchar(50) NOT NULL,
  `Currency_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_currency`
--

INSERT INTO `home_currency` (`id`, `Country`, `Currency`, `Currency_Code`) VALUES
(1, 'Afghanistan', 'Afghan afghani', 'AFN'),
(2, 'Akrotiri and Dhekelia (UK)', 'European euro', 'EUR'),
(3, 'Aland Islands (Finland)', 'European euro', 'EUR'),
(4, 'Albania', 'Albanian lek', 'ALL'),
(5, 'Algeria', 'Algerian dinar', 'DZD'),
(6, 'American Samoa (USA)', 'United States dollar', 'USD'),
(7, 'Andorra', 'European euro', 'EUR'),
(8, 'Angola', 'Angolan kwanza', 'AOA'),
(9, 'Anguilla (UK)', 'East Caribbean dollar', 'XCD'),
(10, 'Antigua and Barbuda', 'East Caribbean dollar', 'XCD'),
(11, 'Argentina', 'Argentine peso', 'ARS'),
(12, 'Armenia', 'Armenian dram', 'AMD'),
(13, 'Aruba (Netherlands)', 'Aruban florin', 'AWG'),
(14, 'Ascension Island (UK)', 'Saint Helena pound', 'SHP'),
(15, 'Australia', 'Australian dollar', 'AUD'),
(16, 'Austria', 'European euro', 'EUR'),
(17, 'Azerbaijan', 'Azerbaijan manat', 'AZN'),
(18, 'Bahamas', 'Bahamian dollar', 'BSD'),
(19, 'Bahrain', 'Bahraini dinar', 'BHD'),
(20, 'Bangladesh', 'Bangladeshi taka', 'BDT'),
(21, 'Barbados', 'Barbadian dollar', 'BBD'),
(22, 'Belarus', 'Belarusian ruble', 'BYN'),
(23, 'Belgium', 'European euro', 'EUR'),
(24, 'Belize', 'Belize dollar', 'BZD'),
(25, 'Benin', 'West African CFA franc', 'XOF'),
(26, 'Bermuda (UK)', 'Bermudian dollar', 'BMD'),
(27, 'Bhutan', 'Bhutanese ngultrum', 'BTN'),
(28, 'Bolivia', 'Bolivian boliviano', 'BOB'),
(29, 'Bonaire (Netherlands)', 'United States dollar', 'USD'),
(30, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina convertible mark', 'BAM'),
(31, 'Botswana', 'Botswana pula', 'BWP'),
(32, 'Brazil', 'Brazilian real', 'BRL'),
(33, 'British Indian Ocean Territory (UK)', 'United States dollar', 'USD'),
(34, 'British Virgin Islands (UK)', 'United States dollar', 'USD'),
(35, 'Brunei', 'Brunei dollar', 'BND'),
(36, 'Bulgaria', 'Bulgarian lev', 'BGN'),
(37, 'Burkina Faso', 'West African CFA franc', 'XOF'),
(38, 'Burundi', 'Burundi franc', 'BIF'),
(39, 'Cabo Verde', 'Cape Verdean escudo', 'CVE'),
(40, 'Cambodia', 'Cambodian riel', 'KHR'),
(41, 'Cameroon', 'Central African CFA franc', 'XAF'),
(42, 'Canada', 'Canadian dollar', 'CAD'),
(43, 'Caribbean Netherlands (Netherlands)', 'United States dollar', 'USD'),
(44, 'Cayman Islands (UK)', 'Cayman Islands dollar', 'KYD'),
(45, 'Central African Republic', 'Central African CFA franc', 'XAF'),
(46, 'Chad', 'Central African CFA franc', 'XAF'),
(47, 'Chatham Islands (New Zealand)', 'New Zealand dollar', 'NZD'),
(48, 'Chile', 'Chilean peso', 'CLP'),
(49, 'China', 'Chinese Yuan Renminbi', 'CNY'),
(50, 'Christmas Island (Australia)', 'Australian dollar', 'AUD'),
(51, 'Cocos (Keeling) Islands (Australia)', 'Australian dollar', 'AUD'),
(52, 'Colombia', 'Colombian peso', 'COP'),
(53, 'Comoros', 'Comorian franc', 'KMF'),
(54, 'Congo, Democratic Republic of the', 'Congolese franc', 'CDF'),
(55, 'Congo, Republic of the', 'Central African CFA franc', 'XAF'),
(56, 'Cook Islands (New Zealand)', 'Cook Islands dollar', '---'),
(57, 'Costa Rica', 'Costa Rican colon', 'CRC'),
(58, 'Cote d\'Ivoire', 'West African CFA franc', 'XOF'),
(59, 'Croatia', 'Croatian kuna', 'HRK'),
(60, 'Cuba', 'Cuban peso', 'CUP'),
(61, 'Curacao (Netherlands)', 'Netherlands Antillean guilder', 'ANG'),
(62, 'Cyprus', 'European euro', 'EUR'),
(63, 'Czechia', 'Czech koruna', 'CZK'),
(64, 'Denmark', 'Danish krone', 'DKK'),
(65, 'Djibouti', 'Djiboutian franc', 'DJF'),
(66, 'Dominica', 'East Caribbean dollar', 'XCD'),
(67, 'Dominican Republic', 'Dominican peso', 'DOP'),
(68, 'Ecuador', 'United States dollar', 'USD'),
(69, 'Egypt', 'Egyptian pound', 'EGP'),
(70, 'El Salvador', 'United States dollar', 'USD'),
(71, 'Equatorial Guinea', 'Central African CFA franc', 'XAF'),
(72, 'Eritrea', 'Eritrean nakfa', 'ERN'),
(73, 'Estonia', 'European euro', 'EUR'),
(74, 'Eswatini (formerly Swaziland)', 'Swazi lilangeni', 'SZL'),
(75, 'Ethiopia', 'Ethiopian birr', 'ETB'),
(76, 'Falkland Islands (UK)', 'Falkland Islands pound', 'FKP'),
(77, 'Faroe Islands (Denmark)', 'Faroese krona', '---'),
(78, 'Fiji', 'Fijian dollar', 'FJD'),
(79, 'Finland', 'European euro', 'EUR'),
(80, 'France', 'European euro', 'EUR'),
(81, 'French Guiana (France)', 'European euro', 'EUR'),
(82, 'French Polynesia (France)', 'CFP franc', 'XPF'),
(83, 'Gabon', 'Central African CFA franc', 'XAF'),
(84, 'Gambia', 'Gambian dalasi', 'GMD'),
(85, 'Georgia', 'Georgian lari', 'GEL'),
(86, 'Germany', 'European euro', 'EUR'),
(87, 'Ghana', 'Ghanaian cedi', 'GHS'),
(88, 'Gibraltar (UK)', 'Gibraltar pound', 'GIP'),
(89, 'Greece', 'European euro', 'EUR'),
(90, 'Greenland (Denmark)', 'Danish krone', 'DKK'),
(91, 'Grenada', 'East Caribbean dollar', 'XCD'),
(92, 'Guadeloupe (France)', 'European euro', 'EUR'),
(93, 'Guam (USA)', 'United States dollar', 'USD'),
(94, 'Guatemala', 'Guatemalan quetzal', 'GTQ'),
(95, 'Guernsey (UK)', 'Guernsey Pound', 'GGP'),
(96, 'Guinea', 'Guinean franc', 'GNF'),
(97, 'Guinea-Bissau', 'West African CFA franc', 'XOF'),
(98, 'Guyana', 'Guyanese dollar', 'GYD'),
(99, 'Haiti', 'Haitian gourde', 'HTG'),
(100, 'Honduras', 'Honduran lempira', 'HNL'),
(101, 'Hong Kong (China)', 'Hong Kong dollar', 'HKD'),
(102, 'Hungary', 'Hungarian forint', 'HUF'),
(103, 'Iceland', 'Icelandic krona', 'ISK'),
(104, 'India', 'Indian rupee', '₹'),
(105, 'Indonesia', 'Indonesian rupiah', 'IDR'),
(106, 'International Monetary Fund (IMF)', 'SDR (Special Drawing Right)', 'XDR'),
(107, 'Iran', 'Iranian rial', 'IRR'),
(108, 'Iraq', 'Iraqi dinar', 'IQD'),
(109, 'Ireland', 'European euro', 'EUR'),
(110, 'Isle of Man (UK)', 'Manx pound', 'IMP'),
(111, 'Israel', 'Israeli new shekel', 'ILS'),
(112, 'Italy', 'European euro', 'EUR'),
(113, 'Jamaica', 'Jamaican dollar', 'JMD'),
(114, 'Japan', 'Japanese yen', 'JPY'),
(115, 'Jersey (UK)', 'Jersey pound', 'JEP'),
(116, 'Jordan', 'Jordanian dinar', 'JOD'),
(117, 'Kazakhstan', 'Kazakhstani tenge', 'KZT'),
(118, 'Kenya', 'Kenyan shilling', 'KES'),
(119, 'Kiribati', 'Australian dollar', 'AUD'),
(120, 'Kosovo', 'European euro', 'EUR'),
(121, 'Kuwait', 'Kuwaiti dinar', 'KWD'),
(122, 'Kyrgyzstan', 'Kyrgyzstani som', 'KGS'),
(123, 'Laos', 'Lao kip', 'LAK'),
(124, 'Latvia', 'European euro', 'EUR'),
(125, 'Lebanon', 'Lebanese pound', 'LBP'),
(126, 'Lesotho', 'Lesotho loti', 'LSL'),
(127, 'Liberia', 'Liberian dollar', 'LRD'),
(128, 'Libya', 'Libyan dinar', 'LYD'),
(129, 'Liechtenstein', 'Swiss franc', 'CHF'),
(130, 'Lithuania', 'European euro', 'EUR'),
(131, 'Luxembourg', 'European euro', 'EUR'),
(132, 'Macau (China)', 'Macanese pataca', 'MOP'),
(133, 'Madagascar', 'Malagasy ariary', 'MGA'),
(134, 'Malawi', 'Malawian kwacha', 'MWK'),
(135, 'Malaysia', 'Malaysian ringgit', 'MYR'),
(136, 'Maldives', 'Maldivian rufiyaa', 'MVR'),
(137, 'Mali', 'West African CFA franc', 'XOF'),
(138, 'Malta', 'European euro', 'EUR'),
(139, 'Marshall Islands', 'United States dollar', 'USD'),
(140, 'Martinique (France)', 'European euro', 'EUR'),
(141, 'Mauritania', 'Mauritanian ouguiya', 'MRU'),
(142, 'Mauritius', 'Mauritian rupee', 'MUR'),
(143, 'Mayotte (France)', 'European euro', 'EUR'),
(144, 'Mexico', 'Mexican peso', 'MXN'),
(145, 'Micronesia', 'United States dollar', 'USD'),
(146, 'Moldova', 'Moldovan leu', 'MDL'),
(147, 'Monaco', 'European euro', 'EUR'),
(148, 'Mongolia', 'Mongolian tugrik', 'MNT'),
(149, 'Montenegro', 'European euro', 'EUR'),
(150, 'Montserrat (UK)', 'East Caribbean dollar', 'XCD'),
(151, 'Morocco', 'Moroccan dirham', 'MAD'),
(152, 'Mozambique', 'Mozambican metical', 'MZN'),
(153, 'Myanmar (formerly Burma)', 'Myanmar kyat', 'MMK'),
(154, 'Namibia', 'Namibian dollar', 'NAD'),
(155, 'Nauru', 'Australian dollar', 'AUD'),
(156, 'Nepal', 'Nepalese rupee', 'NPR'),
(157, 'Netherlands', 'European euro', 'EUR'),
(158, 'New Caledonia (France)', 'CFP franc', 'XPF'),
(159, 'New Zealand', 'New Zealand dollar', 'NZD'),
(160, 'Nicaragua', 'Nicaraguan cordoba', 'NIO'),
(161, 'Niger', 'West African CFA franc', 'XOF'),
(162, 'Nigeria', 'Nigerian naira', 'NGN'),
(163, 'Niue (New Zealand)', 'New Zealand dollar', 'NZD'),
(164, 'Norfolk Island (Australia)', 'Australian dollar', 'AUD'),
(165, 'Northern Mariana Islands (USA)', 'United States dollar', 'USD'),
(166, 'North Korea', 'North Korean won', 'KPW'),
(167, 'North Macedonia (formerly Macedonia)', 'Macedonian denar', 'MKD'),
(168, 'Norway', 'Norwegian krone', 'NOK'),
(169, 'Oman', 'Omani rial', 'OMR'),
(170, 'Pakistan', 'Pakistani rupee', 'PKR'),
(171, 'Palau', 'United States dollar', 'USD'),
(172, 'Palestine', 'Israeli new shekel', 'ILS'),
(173, 'Panama', 'United States dollar', 'USD'),
(174, 'Papua New Guinea', 'Papua New Guinean kina', 'PGK'),
(175, 'Paraguay', 'Paraguayan guarani', 'PYG'),
(176, 'Peru', 'Peruvian sol', 'PEN'),
(177, 'Philippines', 'Philippine peso', 'PHP'),
(178, 'Pitcairn Islands (UK)', 'New Zealand dollar', 'NZD'),
(179, 'Poland', 'Polish zloty', 'PLN'),
(180, 'Portugal', 'European euro', 'EUR'),
(181, 'Puerto Rico (USA)', 'United States dollar', 'USD'),
(182, 'Qatar', 'Qatari riyal', 'QAR'),
(183, 'Reunion (France)', 'European euro', 'EUR'),
(184, 'Romania', 'Romanian leu', 'RON'),
(185, 'Russia', 'Russian ruble', 'RUB'),
(186, 'Rwanda', 'Rwandan franc', 'RWF'),
(187, 'Saba (Netherlands)', 'United States dollar', 'USD'),
(188, 'Saint Barthelemy (France)', 'European euro', 'EUR'),
(189, 'Saint Helena (UK)', 'Saint Helena pound', 'SHP'),
(190, 'Saint Kitts and Nevis', 'East Caribbean dollar', 'XCD'),
(191, 'Saint Lucia', 'East Caribbean dollar', 'XCD'),
(192, 'Saint Martin (France)', 'European euro', 'EUR'),
(193, 'Saint Pierre and Miquelon (France)', 'European euro', 'EUR'),
(194, 'Saint Vincent and the Grenadines', 'East Caribbean dollar', 'XCD'),
(195, 'Samoa', 'Samoan tala', 'WST'),
(196, 'San Marino', 'European euro', 'EUR'),
(197, 'Sao Tome and Principe', 'Sao Tome and Principe dobra', 'STN'),
(198, 'Saudi Arabia', 'Saudi Arabian riyal', 'SAR'),
(199, 'Senegal', 'West African CFA franc', 'XOF'),
(200, 'Serbia', 'Serbian dinar', 'RSD'),
(201, 'Seychelles', 'Seychellois rupee', 'SCR'),
(202, 'Sierra Leone', 'Sierra Leonean leone', 'SLL'),
(203, 'Singapore', 'Singapore dollar', 'SGD'),
(204, 'Sint Eustatius (Netherlands)', 'United States dollar', 'USD'),
(205, 'Sint Maarten (Netherlands)', 'Netherlands Antillean guilder', 'ANG'),
(206, 'Slovakia', 'European euro', 'EUR'),
(207, 'Slovenia', 'European euro', 'EUR'),
(208, 'Solomon Islands', 'Solomon Islands dollar', 'SBD'),
(209, 'Somalia', 'Somali shilling', 'SOS'),
(210, 'South Africa', 'South African rand', 'ZAR'),
(211, 'South Georgia Island (UK)', 'Pound sterling', 'GBP'),
(212, 'South Korea', 'South Korean won', 'KRW'),
(213, 'South Sudan', 'South Sudanese pound', 'SSP'),
(214, 'Spain', 'European euro', 'EUR'),
(215, 'Sri Lanka', 'Sri Lankan rupee', 'LKR'),
(216, 'Sudan', 'Sudanese pound', 'SDG'),
(217, 'Suriname', 'Surinamese dollar', 'SRD'),
(218, 'Svalbard and Jan Mayen (Norway)', 'Norwegian krone', 'NOK'),
(219, 'Sweden', 'Swedish krona', 'SEK'),
(220, 'Switzerland', 'Swiss franc', 'CHF'),
(221, 'Syria', 'Syrian pound', 'SYP'),
(222, 'Taiwan', 'New Taiwan dollar', 'TWD'),
(223, 'Tajikistan', 'Tajikistani somoni', 'TJS'),
(224, 'Tanzania', 'Tanzanian shilling', 'TZS'),
(225, 'Thailand', 'Thai baht', 'THB'),
(226, 'Timor-Leste', 'United States dollar', 'USD'),
(227, 'Togo', 'West African CFA franc', 'XOF'),
(228, 'Tokelau (New Zealand)', 'New Zealand dollar', 'NZD'),
(229, 'Tonga', 'Tongan pa’anga', 'TOP'),
(230, 'Trinidad and Tobago', 'Trinidad and Tobago dollar', 'TTD'),
(231, 'Tristan da Cunha (UK)', 'Pound sterling', 'GBP'),
(232, 'Tunisia', 'Tunisian dinar', 'TND'),
(233, 'Turkey', 'Turkish lira', 'TRY'),
(234, 'Turkmenistan', 'Turkmen manat', 'TMT'),
(235, 'Turks and Caicos Islands (UK)', 'United States dollar', 'USD'),
(236, 'Tuvalu', 'Australian dollar', 'AUD'),
(237, 'Uganda', 'Ugandan shilling', 'UGX'),
(238, 'Ukraine', 'Ukrainian hryvnia', 'UAH'),
(239, 'United Arab Emirates', 'UAE dirham', 'AED'),
(240, 'United Kingdom', 'Pound sterling', 'GBP'),
(241, 'United States of America', 'United States dollar', '$'),
(242, 'Uruguay', 'Uruguayan peso', 'UYU'),
(243, 'US Virgin Islands (USA)', 'United States dollar', 'USD'),
(244, 'Uzbekistan', 'Uzbekistani som', 'UZS'),
(245, 'Vanuatu', 'Vanuatu vatu', 'VUV'),
(246, 'Vatican City (Holy See)', 'European euro', 'EUR'),
(247, 'Venezuela', 'Venezuelan bolivar', 'VES'),
(248, 'Vietnam', 'Vietnamese dong', 'VND'),
(249, 'Wake Island (USA)', 'United States dollar', 'USD'),
(250, 'Wallis and Futuna (France)', 'CFP franc', 'XPF'),
(251, 'Yemen', 'Yemeni rial', 'YER'),
(252, 'Zambia', 'Zambian kwacha', 'ZMW'),
(253, 'Zimbabwe', 'United States dollar', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `home_enquiry`
--

CREATE TABLE `home_enquiry` (
  `id` bigint(20) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `Mobile_Number` varchar(15) DEFAULT NULL,
  `Product_Name` varchar(50) DEFAULT NULL,
  `Refer_number` varchar(6) DEFAULT NULL,
  `Address` longtext NOT NULL,
  `District` varchar(25) DEFAULT NULL,
  `Whatsapp` varchar(15) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `Ip` char(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_enquiry`
--

INSERT INTO `home_enquiry` (`id`, `Date`, `Name`, `Email`, `Mobile_Number`, `Product_Name`, `Refer_number`, `Address`, `District`, `Whatsapp`, `Status`, `Ip`) VALUES
(1, '2022-11-15 00:00:00.000000', 'user1', 'user1@mail.com', '987654321', 'product1', 'PR001', 'address', 'calicut', '987654321', 1, '127.0.0.1'),
(2, NULL, 'user1', 'user1@gmail.com', '9876543210', 'product1', 'PR001', 'kannur,kerala', 'kannur', '9876543210', 1, NULL),
(3, NULL, 'testing database', 'user1@gmail.com', '9876543210', 'product1', 'PR001', 'kannur,kerala', 'kannur', '9876543210', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_feedback`
--

CREATE TABLE `home_feedback` (
  `id` bigint(20) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Message` longtext NOT NULL,
  `Website` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `Ip` char(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_feedback`
--

INSERT INTO `home_feedback` (`id`, `Date`, `Name`, `Email`, `Contact`, `Message`, `Website`, `Status`, `Ip`) VALUES
(1, '2022-11-19 00:00:00.000000', 'user1', 'user1@gmail.com', '987654321', 'message', 'www.user1.com', 0, '127.0.0.1'),
(2, '2022-11-19 00:00:00.000000', 'user2', 'user2@gmail.com', '9871234560', 'message', 'www.user2.com', 1, '127.0.0.1'),
(3, '2022-11-19 00:00:00.000000', 'testing database', 'user2@gmail.com', '9871234560', 'database checking', 'www.user2.com', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `home_group_of_companies`
--

CREATE TABLE `home_group_of_companies` (
  `id` bigint(20) NOT NULL,
  `Logo` varchar(100) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_group_of_companies`
--

INSERT INTO `home_group_of_companies` (`id`, `Logo`, `Status`, `AddedBy`, `Date`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(1, 'CompanyLogo/1_OCkb9IZ.png', 0, 1, '2022-11-21 16:21:25.225000', '127.0.0.1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_manage_menu`
--

CREATE TABLE `home_manage_menu` (
  `id` bigint(20) NOT NULL,
  `About_Page` tinyint(1) DEFAULT NULL,
  `Blog_Page` tinyint(1) DEFAULT NULL,
  `Image_Gallery` tinyint(1) DEFAULT NULL,
  `Contact_Page` tinyint(1) DEFAULT NULL,
  `Products_Page` tinyint(1) DEFAULT NULL,
  `Service_Page` tinyint(1) DEFAULT NULL,
  `Feedback_Page` tinyint(1) DEFAULT NULL,
  `Enquiry_Page` tinyint(1) DEFAULT NULL,
  `Group_Company` tinyint(1) DEFAULT NULL,
  `Testimonials` tinyint(1) DEFAULT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_manage_menu`
--

INSERT INTO `home_manage_menu` (`id`, `About_Page`, `Blog_Page`, `Image_Gallery`, `Contact_Page`, `Products_Page`, `Service_Page`, `Feedback_Page`, `Enquiry_Page`, `Group_Company`, `Testimonials`, `AddedBy`, `Date`, `Ip`, `Status`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(2, 1, 1, NULL, 1, 1, 1, NULL, 1, NULL, NULL, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, 1, '127.0.0.1', '2022-12-30 11:56:14.623639');

-- --------------------------------------------------------

--
-- Table structure for table `home_product`
--

CREATE TABLE `home_product` (
  `id` bigint(20) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Show_Price` tinyint(1) DEFAULT NULL,
  `Actual_Price` varchar(15) DEFAULT NULL,
  `Offer_Price` varchar(15) DEFAULT NULL,
  `Show_Whatsapp` tinyint(1) DEFAULT NULL,
  `Whatsapp_Number` varchar(15) DEFAULT NULL,
  `Show_Enquiry` tinyint(1) DEFAULT NULL,
  `SMTitle` varchar(2000) DEFAULT NULL,
  `SMDescription` longtext DEFAULT NULL,
  `SMKeywords` varchar(2000) DEFAULT NULL,
  `Refer_number` varchar(6) NOT NULL,
  `Url` mediumtext DEFAULT NULL,
  `Show_Feature` tinyint(1) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL,
  `Discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_product`
--

INSERT INTO `home_product` (`id`, `Title`, `Description`, `Image`, `Show_Price`, `Actual_Price`, `Offer_Price`, `Show_Whatsapp`, `Whatsapp_Number`, `Show_Enquiry`, `SMTitle`, `SMDescription`, `SMKeywords`, `Refer_number`, `Url`, `Show_Feature`, `Status`, `AddedBy`, `Date`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`, `Discount`) VALUES
(1, 'product1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'Product/3_USSJx1e.jpg', 1, '60', '55', NULL, '987654321', 1, 'None', '', 'None', 'PR-001', 'product1', 1, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-11-25 17:36:37.321000', 8),
(2, 'product2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'Product/2.jpg', 1, '50', '', NULL, '987654321', 1, 'None', '', 'None', 'PR-002', 'product2', 1, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-11-25 17:30:32.249000', 0),
(3, 'product3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'Product/5.jpg', 1, '50', '40', NULL, '987654321', NULL, '', '', '', 'PR-003', 'product3', NULL, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-12-15 15:42:19.580000', 20);

-- --------------------------------------------------------

--
-- Table structure for table `home_quick_links`
--

CREATE TABLE `home_quick_links` (
  `id` bigint(20) NOT NULL,
  `About_Page` tinyint(1) DEFAULT NULL,
  `Blog_Page` tinyint(1) DEFAULT NULL,
  `Image_Gallery` tinyint(1) DEFAULT NULL,
  `Contact_Page` tinyint(1) DEFAULT NULL,
  `Products_Page` tinyint(1) DEFAULT NULL,
  `Service_Page` tinyint(1) DEFAULT NULL,
  `Testimonials` tinyint(1) DEFAULT NULL,
  `Optional_Products` tinyint(1) DEFAULT NULL,
  `Optional_Service` tinyint(1) DEFAULT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_quick_links`
--

INSERT INTO `home_quick_links` (`id`, `About_Page`, `Blog_Page`, `Image_Gallery`, `Contact_Page`, `Products_Page`, `Service_Page`, `Testimonials`, `Optional_Products`, `Optional_Service`, `AddedBy`, `Date`, `Ip`, `Status`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(2, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, 1, '127.0.0.1', '2022-11-21 07:06:01.000000');

-- --------------------------------------------------------

--
-- Table structure for table `home_service`
--

CREATE TABLE `home_service` (
  `id` bigint(20) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Show_Price` tinyint(1) DEFAULT NULL,
  `Actual_Price` varchar(15) DEFAULT NULL,
  `Offer_Price` varchar(15) DEFAULT NULL,
  `Show_Whatsapp` tinyint(1) DEFAULT NULL,
  `Whatsapp_Number` varchar(15) DEFAULT NULL,
  `Show_Enquiry` tinyint(1) DEFAULT NULL,
  `SMTitle` varchar(2000) DEFAULT NULL,
  `SMDescription` longtext DEFAULT NULL,
  `SMKeywords` varchar(2000) DEFAULT NULL,
  `Refer_number` varchar(6) NOT NULL,
  `Url` mediumtext DEFAULT NULL,
  `Show_Feature` tinyint(1) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL,
  `Discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_service`
--

INSERT INTO `home_service` (`id`, `Title`, `Description`, `Image`, `Show_Price`, `Actual_Price`, `Offer_Price`, `Show_Whatsapp`, `Whatsapp_Number`, `Show_Enquiry`, `SMTitle`, `SMDescription`, `SMKeywords`, `Refer_number`, `Url`, `Show_Feature`, `Status`, `AddedBy`, `Date`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`, `Discount`) VALUES
(1, 'service1', '<p style=\"text-align:center\"><em>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less <u>normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishin</u>g packages and web page editors now use Lorem Ipsum as their default <strong>model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy.</strong></em></p>\r\n', 'Product/6_offKsld.jpg', NULL, '300', '200', NULL, '987654321', 1, '', '', '', 'SE-001', 'service1', 1, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-12-30 14:39:52.892335', 33),
(2, 'service2', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy.</p>\r\n', 'Product/2_uN42bFQ.jpg', 1, '400', '350', NULL, '987654321', 1, 'None', '', 'None', 'SE-002', 'service2', 1, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-12-30 14:40:06.897770', 12),
(3, 'service3', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy.</p>\r\n', 'Product/3_j6OiXUI.jpg', 1, '500', '400', NULL, '987654321', 1, 'None', '', 'None', 'SE-003', 'service3', 1, 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-12-30 14:40:20.074995', 20);

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonial`
--

CREATE TABLE `home_testimonial` (
  `id` bigint(20) NOT NULL,
  `Tes_Name` varchar(50) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Company_Name` varchar(50) NOT NULL,
  `Testimonial` longtext NOT NULL,
  `Tes_Image` varchar(100) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_testimonial`
--

INSERT INTO `home_testimonial` (`id`, `Tes_Name`, `Designation`, `Company_Name`, `Testimonial`, `Tes_Image`, `Status`, `AddedBy`, `Date`, `Ip`, `EditedBy`, `EditedIp`, `Edited_Date`) VALUES
(5, 'user1', 'web developer', 'darktrace', 'It is a long established fact that a reader will be distracted by the readable content of a page', 'TestimonialImage/3.jpg', 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 0, '127.0.0.1', '2022-11-21 07:06:02.000000'),
(6, 'user2', 'project manager', 'darktrace', 'It is a long established fact that a reader will be distracted by the readable content of a page', 'TestimonialImage/2.jpg', 1, 1, '2022-11-21 05:15:54.000000', '127.0.0.1', 1, '127.0.0.1', '2022-11-21 16:23:13.210000');

-- --------------------------------------------------------

--
-- Table structure for table `home_theme`
--

CREATE TABLE `home_theme` (
  `id` bigint(20) NOT NULL,
  `Primary` varchar(10) DEFAULT NULL,
  `Secondary` varchar(10) DEFAULT NULL,
  `AddedBy` int(11) NOT NULL,
  `Date` datetime(6) DEFAULT NULL,
  `Ip` char(39) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `EditedBy` int(11) NOT NULL,
  `EditedIp` char(39) DEFAULT NULL,
  `Edited_Date` datetime(6) DEFAULT NULL,
  `Currency` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_theme`
--

INSERT INTO `home_theme` (`id`, `Primary`, `Secondary`, `AddedBy`, `Date`, `Ip`, `Status`, `EditedBy`, `EditedIp`, `Edited_Date`, `Currency`) VALUES
(4, '#c21414', '#1118ee', 0, NULL, NULL, 1, 1, '127.0.0.1', '2022-12-30 14:50:50.510229', '₹');

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
-- Indexes for table `home_about`
--
ALTER TABLE `home_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_about_Url_9f5d2e52_uniq` (`Url`) USING HASH;

--
-- Indexes for table `home_album`
--
ALTER TABLE `home_album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_album_Url_12b82574_uniq` (`Url`) USING HASH;

--
-- Indexes for table `home_album_image`
--
ALTER TABLE `home_album_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_album_image_Album_Name_id_216524cc_fk_home_album_id` (`Album_Name_id`);

--
-- Indexes for table `home_appbnr`
--
ALTER TABLE `home_appbnr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_blog`
--
ALTER TABLE `home_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_blog_Url_a2f454f1_uniq` (`Url`) USING HASH;

--
-- Indexes for table `home_contact`
--
ALTER TABLE `home_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_contact_Url_b99916c0_uniq` (`Url`) USING HASH;

--
-- Indexes for table `home_currency`
--
ALTER TABLE `home_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_enquiry`
--
ALTER TABLE `home_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_feedback`
--
ALTER TABLE `home_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_group_of_companies`
--
ALTER TABLE `home_group_of_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_manage_menu`
--
ALTER TABLE `home_manage_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_product`
--
ALTER TABLE `home_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Url` (`Url`) USING HASH;

--
-- Indexes for table `home_quick_links`
--
ALTER TABLE `home_quick_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_service`
--
ALTER TABLE `home_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Url` (`Url`) USING HASH;

--
-- Indexes for table `home_testimonial`
--
ALTER TABLE `home_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_theme`
--
ALTER TABLE `home_theme`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `home_about`
--
ALTER TABLE `home_about`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_album`
--
ALTER TABLE `home_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_album_image`
--
ALTER TABLE `home_album_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `home_appbnr`
--
ALTER TABLE `home_appbnr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home_blog`
--
ALTER TABLE `home_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_contact`
--
ALTER TABLE `home_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_currency`
--
ALTER TABLE `home_currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `home_enquiry`
--
ALTER TABLE `home_enquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_feedback`
--
ALTER TABLE `home_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_group_of_companies`
--
ALTER TABLE `home_group_of_companies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_manage_menu`
--
ALTER TABLE `home_manage_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_product`
--
ALTER TABLE `home_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_quick_links`
--
ALTER TABLE `home_quick_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_service`
--
ALTER TABLE `home_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_testimonial`
--
ALTER TABLE `home_testimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_theme`
--
ALTER TABLE `home_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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

--
-- Constraints for table `home_album_image`
--
ALTER TABLE `home_album_image`
  ADD CONSTRAINT `home_album_image_Album_Name_id_216524cc_fk_home_album_id` FOREIGN KEY (`Album_Name_id`) REFERENCES `home_album` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
