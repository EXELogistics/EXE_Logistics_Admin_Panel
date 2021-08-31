-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 08:22 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nin9teen_warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_and_time` timestamp NULL DEFAULT NULL,
  `attendence_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendences`
--

INSERT INTO `attendences` (`id`, `user_id`, `shift`, `shift_time`, `date_and_time`, `attendence_type`, `created_at`, `updated_at`) VALUES
(1, 2, 'Morning', '09:00 AM', '2021-06-20 04:00:00', 'In', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(2, 2, 'Morning', '09:00 AM', '2021-06-20 00:00:00', 'Out', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(3, 2, 'Morning', '09:00 AM', '2021-06-20 04:00:00', 'In', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(4, 2, 'Morning', '09:00 AM', '2021-06-21 00:00:00', 'Out', '2021-08-04 02:24:22', '2021-08-04 02:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `created_at`, `updated_at`) VALUES
(1, 'Furniture', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(2, 'Paper', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(3, 'Electronics', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(4, 'Hardware', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(5, 'Heavy Machinery', '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(6, 'Construction', '2021-08-04 02:24:22', '2021-08-04 02:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `in_out_loads`
--

CREATE TABLE `in_out_loads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bill_to_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `load_project_date` timestamp NULL DEFAULT NULL,
  `load_project_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truck_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_project_control_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_start_time` timestamp NULL DEFAULT NULL,
  `project_end_time` timestamp NULL DEFAULT NULL,
  `in_out_load` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `door_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_project_trip_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bol_shipment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `begin_case_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ending_case_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `begin_pallet_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ending_pallet_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_skus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pieces` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pallets_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pallets_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `begin_ship_packs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ending_ship_packs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_no_show_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repalletize_pallets` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repalletize_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bad_pallets` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bad_pallet_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reload_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rebate_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_income_less_rebate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_total_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000001_create_ware_houses_table', 1),
(2, '2014_10_12_000002_create_users_table', 1),
(3, '2014_10_12_000003_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000004_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2021_02_24_171338_create_departments_table', 1),
(12, '2021_03_08_132230_create_job_titles_table', 1),
(13, '2021_03_23_062625_create_in_out_loads_table', 1),
(14, '2021_03_23_062850_create_pays_table', 1),
(15, '2021_06_22_120814_create_attendences_table', 1);

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `load_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pay_system` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `associate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ssn_associate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourly_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_percentage_associate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_associate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_project_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id`, `load_id`, `pay_system`, `associate_id`, `ssn_associate`, `hourly_pay`, `hours`, `pay_percentage_associate`, `payout_associate`, `load_project_date`, `created_at`, `updated_at`) VALUES
(1, NULL, 'hourly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-11 03:33:05', '2021-08-11 03:33:05'),
(2, 5, 'percentage', 13, '01117', NULL, NULL, '34', NULL, '2021-08-15 19:00:00', '2021-08-11 04:31:07', '2021-08-11 04:31:07'),
(3, 6, 'percentage', 7, '01111', NULL, NULL, '34', '349273.66805763706', '2021-08-10 19:00:00', '2021-08-11 04:46:39', '2021-08-11 04:46:39'),
(4, 8, 'percentage', 13, '01117', NULL, NULL, '34', NULL, '2021-08-10 19:00:00', '2021-08-11 07:51:03', '2021-08-11 07:51:03'),
(6, 12, 'percentage', 13, '01117', NULL, NULL, '34', '349273.66805763706', '2021-08-23 19:00:00', '2021-08-24 03:43:34', '2021-08-24 03:43:34'),
(7, 12, 'percentage', 11, '01114', NULL, NULL, '24', '246546.11862892032', '2021-08-23 19:00:00', '2021-08-24 03:43:34', '2021-08-24 03:43:34'),
(8, 12, 'percentage', 9, '01112', NULL, NULL, '20', '205455.09885743356', '2021-08-23 19:00:00', '2021-08-24 03:43:34', '2021-08-24 03:43:34'),
(9, 12, 'percentage', 11, '01113', NULL, NULL, '10', '102727.54942871678', '2021-08-23 19:00:00', '2021-08-24 03:43:34', '2021-08-24 03:43:34'),
(10, 12, 'percentage', 11, '89458', NULL, NULL, '5', '51363.77471435839', '2021-08-23 19:00:00', '2021-08-24 03:43:34', '2021-08-24 03:43:34'),
(11, 12, 'percentage', 12, '56789', NULL, NULL, '7', '71909.28460010176', '2021-08-23 19:00:00', '2021-08-24 03:43:34', '2021-08-24 03:43:34'),
(12, 14, 'percentage', 13, '01117', NULL, NULL, '34', '349273.66805763706', '2021-08-26 19:00:00', '2021-08-25 03:49:58', '2021-08-25 03:49:58'),
(13, 14, 'percentage', 7, '01111', NULL, NULL, '24', '246546.11862892032', '2021-08-26 19:00:00', '2021-08-25 03:49:58', '2021-08-25 03:49:58'),
(14, 14, 'percentage', 8, '01112', NULL, NULL, '20', '205455.09885743356', '2021-08-26 19:00:00', '2021-08-25 03:49:58', '2021-08-25 03:49:58'),
(15, 14, 'percentage', 9, '01113', NULL, NULL, '10', '102727.54942871678', '2021-08-26 19:00:00', '2021-08-25 03:49:58', '2021-08-25 03:49:58'),
(16, 14, 'percentage', 11, '01115', NULL, NULL, '5', '51363.77471435839', '2021-08-26 19:00:00', '2021-08-25 03:49:58', '2021-08-25 03:49:58'),
(17, 14, 'percentage', 12, '01116', NULL, NULL, '7', '71909.28460010176', '2021-08-26 19:00:00', '2021-08-25 03:49:58', '2021-08-25 03:49:58'),
(18, 1, 'percentage', 15, '01119', NULL, NULL, '34', '349273.66805763706', '2007-04-06 19:00:00', '2021-08-25 05:54:44', '2021-08-25 05:54:44'),
(19, 1, 'percentage', 7, '01111', NULL, NULL, '24', '246546.11862892032', '2007-04-06 19:00:00', '2021-08-25 05:54:44', '2021-08-25 05:54:44'),
(20, 1, 'percentage', 15, '01119', NULL, NULL, '20', '205455.09885743356', '2007-04-06 19:00:00', '2021-08-25 05:54:44', '2021-08-25 05:54:44'),
(21, 1, 'percentage', 18, '01122', NULL, NULL, '10', '102727.54942871678', '2007-04-06 19:00:00', '2021-08-25 05:54:44', '2021-08-25 05:54:44'),
(22, 1, 'percentage', 15, '01119', NULL, NULL, '5', '51363.77471435839', '2007-04-06 19:00:00', '2021-08-25 05:54:44', '2021-08-25 05:54:44'),
(23, 1, 'percentage', 8, '01112', NULL, NULL, '7', '71909.28460010176', '2007-04-06 19:00:00', '2021-08-25 05:54:44', '2021-08-25 05:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ssn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fix_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourly_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overtime_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekend_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiring_date` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `customer_id`, `warehouse_id`, `ssn`, `first_name`, `last_name`, `email`, `email_verified_at`, `verification_code`, `phone`, `profile_image`, `fix_pay`, `hourly_pay`, `overtime_pay`, `weekend_pay`, `city`, `state`, `zipcode`, `address`, `latitude`, `longitude`, `job_title`, `hiring_date`, `password`, `token`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Admin', NULL, 'admin@admin.com', '2021-08-04 02:24:20', NULL, '+92 322 6008981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Nu.6336CYBEhOMMFly6/QupXUPQzPYAxr2.t8BQOmu50cMxbWlMFG', NULL, '0', NULL, '2021-08-04 02:24:20', '2021-08-04 02:24:20'),
(2, 1, NULL, '00111', 'Kamran', 'Abrar', 'kamranabrar90@gmail.com', '2021-08-04 02:24:20', NULL, '+92 323 6691890', NULL, '600', '18', NULL, NULL, 'Pflugerville', 'Texas', '78660', '123 MAIN STREET AUSTIN, TX', '30.266666', '-97.733330', 'Facility Manager', '2020-12-31 19:00:00', '$2y$10$2MCYGHsTV/U3r6p1pbwg3.1xpPsZKc9XziZzOLUB..2y4iTx6eaBO', NULL, '1', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(3, 2, NULL, '00112', 'Abdul', 'Samad', 'samad@gmail.com', '2021-08-04 02:24:21', NULL, '+92 331 6447379', NULL, '600', '18', NULL, NULL, 'Pflugerville', 'Texas', '78660', '444 APPLE STREET AUSTIN, TX', '30.266666', '-97.733330', 'Facility Manager', '2020-12-31 19:00:00', '$2y$10$ds2kEyB8JYz9y5ev.Z7rPOoYTgx1HHZ9y3CUhmU2s1sOvfAczPdkK', NULL, '1', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(4, 3, NULL, '00113', 'Asad', 'Ali', 'asad@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '600', '18', NULL, NULL, 'Pflugerville', 'Texas', '78660', '234 FRONT STREET AUSTIN, TX', '30.266666', '-97.733330', 'Supervisor', '2020-12-31 19:00:00', '$2y$10$LW0NV2Si.cxvDsPJTMrUbOYUds1FM.usPBNsCD.SRIKyy4oxYxplm', NULL, '1', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(5, 4, NULL, '00114', 'Hammad', 'Ali', 'asad@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '600', '18', NULL, NULL, 'Pflugerville', 'Texas', '78660', '123 MAIN STREET AUSTIN, TX', '30.266666', '-97.733330', 'Clerical', '2020-12-31 19:00:00', '$2y$10$fRztBZmgPD4aPIpTLGZZRe9KZlZvQ/bFFTwlXCmhN93m5ov6HmyBm', NULL, '1', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(7, 1, 1, '01111', 'Umar', 'Ali', 'umar@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '123 MAIN STREET AUSTIN, TX', '30.266666', '-97.733330', 'General Labor', '2020-12-31 19:00:00', '$2y$10$mipRHF2dEbmjiFy/PkeDA.8xtqJ2xC2/Nh3kJjzdjU7h7YI2kxlS2', NULL, '2', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(8, 1, 1, '01112', 'Ajmal', 'Hassan', 'ajmal@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '444 APPLE STREET AUSTIN, TX', '30.266666', '-97.733330', 'Loader/Unloader', '2020-12-31 19:00:00', '$2y$10$A19NyDrUK9Lpk.vPjF2J7OtmeJmzINDhmnoFI32mFfk5Tfk3akJX2', NULL, '2', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(9, 1, 1, '01113', 'Waqar', 'Ahmad', 'waqar@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '234 FRONT STREET AUSTIN, TX', '30.266666', '-97.733330', 'General Labor', '2020-12-31 19:00:00', '$2y$10$fyjgEW23N2y1q6SAoIJbPuN4OPIGacAG0iaYryg4K/cUHWhnO0nS2', NULL, '2', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(10, 2, 1, '01114', 'Naeem', 'Bhukhari', 'naeem@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '123 MAIN STREET AUSTIN, TX', '30.266666', '-97.733330', 'Clerical', '2020-12-31 19:00:00', '$2y$10$LxhvdqQhVs.18aH4QcprSOcTt/qetB0.X98xdRdeXZo2wTGePTwUi', NULL, '2', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(11, 2, 1, '01115', 'Wasif', 'Ali', 'wasif@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '444 APPLE STREET AUSTIN, TX', '30.266666', '-97.733330', 'Driver', '2020-12-31 19:00:00', '$2y$10$.KhWxr0iLMvSVYwHOBoTCuhzz5QbabnVqlNNqBzvwRmVm/uV/e8YW', NULL, '2', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(12, 2, 1, '01116', 'Hassan', 'Mustafa', 'hassan@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '234 FRONT STREET AUSTIN, TX', '30.266666', '-97.733330', 'Yard Driver', '2020-12-31 19:00:00', '$2y$10$nDLfFRXqfwZO61QJYHt.p.aAQEDLnsd3qB7Jwf702HUPqfNPo6Bc6', NULL, '2', NULL, '2021-08-04 02:24:21', '2021-08-04 02:24:21'),
(13, 3, 1, '01117', 'Michael', 'Jordan', 'jordan@gmail.com', '2021-08-04 02:24:21', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '123 MAIN STREET AUSTIN, TX', '30.266666', '-97.733330', 'Clerical', '2020-12-31 19:00:00', '$2y$10$/Woo4lZRxAQH.4M0Ekohw.5bkK4si0RRzIldNjA2PO9XDXISNL/pe', NULL, '2', NULL, '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(14, 3, 1, '01118', 'Michael', 'Jordan', 'jordan@gmail.com', '2021-08-04 02:24:22', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '444 APPLE STREET AUSTIN, TX', '30.266666', '-97.733330', 'General Labor', '2020-12-31 19:00:00', '$2y$10$KerNOm5JLYIcm1WQGeCOnO6FPK4QCs1yDTmMA7tJ7H4zPRREiiBhS', NULL, '2', NULL, '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(15, 3, 1, '01119', 'Michael', 'Jordan', 'jordan@gmail.com', '2021-08-04 02:24:22', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '234 FRONT STREET AUSTIN, TX', '30.266666', '-97.733330', 'Loader/Unloader', '2020-12-31 19:00:00', '$2y$10$iTwnTs6XenttdBAO12OVQ.HHWMHrzsAIZ.vzOf1HGDb9sY6eFzipC', NULL, '2', NULL, '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(16, 4, 1, '01120', 'Michael', 'Jordan', 'jordan@gmail.com', '2021-08-04 02:24:22', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '123 MAIN STREET AUSTIN, TX', '30.266666', '-97.733330', 'Yard Driver', '2020-12-31 19:00:00', '$2y$10$RUliMS.m5/KFWkA0vWA5NeTrv/4BJSx4WF6E7KSgMp.WiOhWbwbQO', NULL, '2', NULL, '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(17, 4, 1, '01121', 'Michael', 'Jordan', 'jordan@gmail.com', '2021-08-04 02:24:22', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '444 APPLE STREET AUSTIN, TX', '30.266666', '-97.733330', 'General Labor', '2020-12-31 19:00:00', '$2y$10$TuIZRkU0SQsJIXAaxVu23OfJXfaaEwuKTTA3drNfiBDEQjG.A0pH6', NULL, '2', NULL, '2021-08-04 02:24:22', '2021-08-04 02:24:22'),
(18, 4, 1, '01122', 'Michael', 'Jordan', 'jordan@gmail.com', '2021-08-04 02:24:22', NULL, '+92 320 5242576', NULL, '400', '15', NULL, NULL, 'Pflugerville', 'Texas', '78660', '234 FRONT STREET AUSTIN, TX', '30.266666', '-97.733330', 'Clerical', '2020-12-31 19:00:00', '$2y$10$yw11nWovp07NCsm1gCKtkuhnN/v.DJPBUnYYyksm2grbxKzzi29hy', NULL, '2', NULL, '2021-08-04 02:24:22', '2021-08-04 02:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `ware_houses`
--

CREATE TABLE `ware_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `morning_opening_time` timestamp NULL DEFAULT NULL,
  `morning_closing_time` timestamp NULL DEFAULT NULL,
  `evening_opening_time` timestamp NULL DEFAULT NULL,
  `evening_closing_time` timestamp NULL DEFAULT NULL,
  `night_opening_time` timestamp NULL DEFAULT NULL,
  `night_closing_time` timestamp NULL DEFAULT NULL,
  `weekend_opening_time` timestamp NULL DEFAULT NULL,
  `weekend_closing_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ware_houses`
--

INSERT INTO `ware_houses` (`id`, `customer_name`, `street_address`, `city`, `state`, `zipcode`, `latitude`, `longitude`, `morning_opening_time`, `morning_closing_time`, `evening_opening_time`, `evening_closing_time`, `night_opening_time`, `night_closing_time`, `weekend_opening_time`, `weekend_closing_time`, `created_at`, `updated_at`) VALUES
(1, 'FOUR HAND FURNITURE', '123 MAIN STREET AUSTIN, TX', 'Pflugerville', 'Texas', '78660', '30.266666', '-97.733330', '2021-03-03 01:00:00', '2021-03-03 09:00:00', '2021-03-03 09:00:00', '2021-03-03 17:00:00', '2021-03-03 17:00:00', '2021-03-03 01:00:00', '2021-03-03 03:00:00', '2021-03-03 11:00:00', '2021-08-04 02:24:20', '2021-08-04 02:24:20'),
(2, 'FOUR HAND HOME', '234 FRONT STREET AUSTIN, TX', 'Pflugerville', 'Texas', '78660', '30.266666', '-97.733330', '2021-03-03 01:00:00', '2021-03-03 09:00:00', '2021-03-03 09:00:00', '2021-03-03 17:00:00', '2021-03-03 17:00:00', '2021-03-03 01:00:00', '2021-03-03 03:00:00', '2021-03-03 11:00:00', '2021-08-04 02:24:20', '2021-08-04 02:24:20'),
(3, 'Forcepoint', '444 APPLE STREET AUSTIN, TX', 'Pflugerville', 'Texas', '78660', '30.266666', '-97.733330', '2021-03-03 01:00:00', '2021-03-03 09:00:00', '2021-03-03 09:00:00', '2021-03-03 17:00:00', '2021-03-03 17:00:00', '2021-03-03 01:00:00', '2021-03-03 03:00:00', '2021-03-03 11:00:00', '2021-08-04 02:24:20', '2021-08-04 02:24:20'),
(4, 'Live Oak Brewing Company', '234 FRONT STREET AUSTIN, TX', 'Pflugerville', 'Texas', '78660', '30.266666', '-97.733330', '2021-03-03 01:00:00', '2021-03-03 09:00:00', '2021-03-03 09:00:00', '2021-03-03 17:00:00', '2021-03-03 17:00:00', '2021-03-03 01:00:00', '2021-03-03 03:00:00', '2021-03-03 11:00:00', '2021-08-04 02:24:20', '2021-08-04 02:24:20'),
(5, 'Forestar Group', '444 APPLE STREET AUSTIN, TX', 'Pflugerville', 'Texas', '78660', '30.266666', '-97.733330', '2021-03-03 01:00:00', '2021-03-03 09:00:00', '2021-03-03 09:00:00', '2021-03-03 17:00:00', '2021-03-03 17:00:00', '2021-03-03 01:00:00', '2021-03-03 03:00:00', '2021-03-03 11:00:00', '2021-08-04 02:24:20', '2021-08-04 02:24:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendences_user_id_foreign` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_out_loads`
--
ALTER TABLE `in_out_loads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_out_loads_customer_id_foreign` (`customer_id`),
  ADD KEY `in_out_loads_bill_to_id_foreign` (`bill_to_id`),
  ADD KEY `in_out_loads_department_id_foreign` (`department_id`),
  ADD KEY `in_out_loads_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pays_load_id_foreign` (`load_id`),
  ADD KEY `pays_associate_id_foreign` (`associate_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_customer_id_foreign` (`customer_id`),
  ADD KEY `users_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `ware_houses`
--
ALTER TABLE `ware_houses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `in_out_loads`
--
ALTER TABLE `in_out_loads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ware_houses`
--
ALTER TABLE `ware_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendences`
--
ALTER TABLE `attendences`
  ADD CONSTRAINT `attendences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `in_out_loads`
--
ALTER TABLE `in_out_loads`
  ADD CONSTRAINT `in_out_loads_bill_to_id_foreign` FOREIGN KEY (`bill_to_id`) REFERENCES `ware_houses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `in_out_loads_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `ware_houses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `in_out_loads_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `in_out_loads_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_associate_id_foreign` FOREIGN KEY (`associate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pays_load_id_foreign` FOREIGN KEY (`load_id`) REFERENCES `in_out_loads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `ware_houses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `ware_houses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
