-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2021 at 07:14 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `queemqdi_invest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`, `email`, `image`) VALUES
(1, 'Admin', '4e7afebcfbae000b22c7c85e5560f89a2a0280b4', 'admin@admin.com', 'f12aae9c53d66ed98af13b83fef43597.png');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `app_email` varchar(500) NOT NULL,
  `app_contact` varchar(500) NOT NULL,
  `app_website` varchar(500) NOT NULL,
  `app_description` text NOT NULL,
  `app_privacy_policy` text NOT NULL,
  `app_aboutus` text NOT NULL,
  `email_subject` varchar(500) NOT NULL,
  `email_subject_confirm` varchar(500) NOT NULL,
  `email_text1` text NOT NULL,
  `email_text2` text NOT NULL,
  `email_text3` text NOT NULL,
  `email_text4` text NOT NULL,
  `app_logo` varchar(500) NOT NULL,
  `smtp_host` varchar(500) NOT NULL,
  `smtp_port` varchar(500) NOT NULL,
  `smtp_username` varchar(500) NOT NULL,
  `smtp_password` varchar(500) NOT NULL,
  `smtp_from` varchar(500) NOT NULL,
  `smtp_secure` varchar(250) NOT NULL,
  `app_name` varchar(500) NOT NULL,
  `app_address` text NOT NULL,
  `app_linkgoogle` varchar(500) NOT NULL,
  `app_currency` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `app_currency_text` varchar(10) NOT NULL,
  `stripe_secret_key` varchar(500) NOT NULL,
  `stripe_published_key` varchar(500) NOT NULL,
  `stripe_status` varchar(5) NOT NULL,
  `stripe_active` varchar(20) NOT NULL,
  `paypal_key` varchar(500) NOT NULL,
  `paypal_mode` varchar(20) NOT NULL,
  `paypal_active` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `app_email`, `app_contact`, `app_website`, `app_description`, `app_privacy_policy`, `app_aboutus`, `email_subject`, `email_subject_confirm`, `email_text1`, `email_text2`, `email_text3`, `email_text4`, `app_logo`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `smtp_from`, `smtp_secure`, `app_name`, `app_address`, `app_linkgoogle`, `app_currency`, `app_currency_text`, `stripe_secret_key`, `stripe_published_key`, `stripe_status`, `stripe_active`, `paypal_key`, `paypal_mode`, `paypal_active`) VALUES
(1, 'demo@ourdevelops.com', '081234567890', 'https://ourdevelops.com/ornids', '', '<div xss=\"removed\"><span xss=\"removed\"><font face=\"Verdana\"><p xss=\"removed\"><strong xss=\"removed\"><span xss=\"removed\"></span></strong></p><h4 xss=\"removed\"><font xss=\"removed\"><b>PRIVACY POLICY</b></font></h4><h4 xss=\"removed\"><strong xss=\"removed\"><span xss=\"removed\">Information obtained from you or from your mobile device directly</span></strong><br></h4><ul class=\"list-disc\" xss=\"removed\"><li xss=\"removed\">When you register and create an account with us using the Application you have to provide to us certain Personal Information, including your name, physical address, e-mail address and your phone number. If you are using the Application as a service provider, you have to provide us with additional Personal Information as part of the service provider onboarding process. This would include details of your vehicle (licenses, approvals, and other authorizations for you to operate the vehicle and to provide the transportation services), your insurance policy, and your bank account.</li><li xss=\"removed\"><div xss=\"removed\"><span xss=\"removed\">When you use the Application, you have to provide us with relevant information as may reasonably be required by us in order for the Application to work, for example:</span></div><ul xss=\"removed\"><li xss=\"removed\">If you are using the Application as a user, you will need to provide us with information as to the type of service you seek, and details as to the pick-up and/or delivery.</li><li xss=\"removed\">If you are using the Application as a service provider, in order for the Application to work, you will need to provide us with the information on the services you are able to accept orders for at the time, and details as to your current, and after an order for a service placed by a user is accepted by you as the service provider, you may need to provide us with other data that we need to manage the Application and ecosystem, and to monitor overall usage of the Application.</li><li xss=\"removed\">If you utilize and/or when a payment or transfer is made through the electronic money and/or electronic wallet facility provided by us, if you are the payer or sender, you will provide us the information relating to the utilization, payment or transfer, including but not limited to the transfer and/or payment receiver details, the amount of payment paid, the type of payment card or account used, the name of the issuer of that payment card or account, the name of the holder for that payment card or account, the identification number of that payment card or account, the verification code of that payment card or account and the expiration date of that payment card or account, as applicable.</li><li xss=\"removed\">If you intend to apply as registered or verified account holder of the electronic money facility provided by us, you will provide to us the required information including but not limited to your full name, your identity card numbers, type of identity card you use for registration, address, gender, place and date of birth, occupation, tax details, nationality and/or biometric data.</li><li xss=\"removed\">If you intend to add your payment card or account as a source of fund for payment in the Application, you will provide us information relating to the type of payment card or account registered, the issuer of that payment card or account, the name of the holder for that payment card or account, the identification number of that payment card or account and the verification code of that payment card or account and the expiration date of that payment card or account, as applicable.</li></ul></li></ul><p xss=\"removed\"></p><ul xss=\"removed\"></ul><p xss=\"removed\"></p><p xss=\"removed\"><strong xss=\"removed\">Information collected every time you use the Application or visit our website</strong></p><ul class=\"list-disc\" xss=\"removed\"><li xss=\"removed\"><font xss=\"removed\">Every time you use the Application or visit our website, we may collect certain technical data in connection with your use such as internet protocol address, web page information previously or subsequently viewed, duration of each visit / session, internet device identity or media access control address , and </font><em>mobile advertising ID</em><font xss=\"removed\"> and other device information including information about the manufacturer, model and operating system of the device you use to access our Application or website.</font></li><li xss=\"removed\"><font xss=\"removed\">When you use the Application or visit our website, certain information can also be collected automatically by using </font><em>cookies</em><font xss=\"removed\"> . </font><em>Cookies</em><font xss=\"removed\"><font xss=\"removed\"> are small data files stored on your computer or mobile device. </font><font xss=\"removed\">We use </font></font><em>cookies</em><font xss=\"removed\"><font xss=\"removed\"> to track user activity in order to improve the user interface and experience. </font><font xss=\"removed\">Most mobile devices and internet browsers support the use of </font></font><em>cookies</em><font xss=\"removed\"><font xss=\"removed\"> ; </font><font xss=\"removed\">however, you can adjust the settings on your mobile device or internet browser to refuse certain types of </font></font><em>cookies</em><font xss=\"removed\"> or </font><em>cookies</em><font xss=\"removed\"><font xss=\"removed\">specifics. </font><font xss=\"removed\">Your mobile device and / or browser also allows you to delete any cookies that have been previously stored. </font><font xss=\"removed\">However, it may affect the functions available on our Application or website.</font></font></li><li xss=\"removed\"><font xss=\"removed\"><font xss=\"removed\">Every time you use the Application via a mobile device, we will track and collect your geographic location information in real time. </font><font xss=\"removed\">In some cases, you will be asked or required to activate the </font></font><em>Global Positioning System</em><font xss=\"removed\"><font xss=\"removed\"> (GPS) on your mobile device to enable us to provide you with a better experience using the Application (for example, to provide information about how close the service provider is to you). </font><font xss=\"removed\">You can temporarily disable geographic location tracking information on your mobile device. </font><font xss=\"removed\">However, this may affect the functions available on the Application.</font></font></li><li xss=\"removed\"><font xss=\"removed\">If you use and / or when payments or transfers are made through electronic money facilities and / or electronic wallets provided by us, we may collect certain information related to the source of funds you use to top up (including bank account details), account details withdrawal recipient, transaction history (including beneficiary details), bill details, invoices, and phone numbers.</font></li><li xss=\"removed\"><font xss=\"removed\">If you use a virtual account provided by us to receive payments using electronic money and / or electronic wallets from payers, whether you are a service provider or a merchant, we may collect certain information related to your use including but not limited to services and / or goods transactions, the amount you collect from each transaction, details of your withdrawal or payment settlement account and history of withdrawals or settlement of payments.</font></li><li xss=\"removed\"><font xss=\"removed\">If you use and / or when a payment is made via a payment card or account that you add to the Application, we may collect certain information related to transaction records, including details of recipients, details of bills, details of receipts, and details of phone numbers.</font></li></ul></font></span></div><div xss=\"removed\"><div xss=\"removed\"><span xss=\"removed\"><b><font face=\"Verdana\">Ordriver App Using a Background Location</font></b></span></div><div xss=\"removed\"><span xss=\"removed\"><b><font face=\"Verdana\"><br></font></b></span></div><font face=\"Verdana\"><div xss=\"removed\"><span xss=\"removed\">This is an online transportation provider service partner application, the user of this application is someone who works as a driver partner, they receive service orders from customers through this application. Our admin and customers need to know the location of the driver who aims to monitor ongoing orders.</span></div><div xss=\"removed\"><span xss=\"removed\"><br></span></div><div xss=\"removed\"><span xss=\"removed\"><span xss=removed>Ordriver collects driver location data to send to the server then forward it to the customer so that the customer can find out the current location of the driver.</span><br></span></div></font></div>', '<div xss=removed><strong xss=\"removed\" xss=removed>Lorem Ipsum</strong><span xss=\"removed\" xss=removed> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></div>', 'Reset Password', 'Registration accepted', '<div style=\"text-align: justify;\"><span style=\"font-size: 0.875rem; font-weight: initial;\">We have received your request to reset the password. Please confirm via the button below:</span></div>', '<div style=\"text-align: justify;\"><span style=\"font-size: 0.875rem; font-weight: initial;\">Ignore this email if you never asked to reset your password. For questions, please contact </span></div>', '<div style=\"text-align: justify;\"><span style=\"font-size: 0.875rem; font-weight: initial;\">Thank you for registering a driver, we have accepted, please click the button below to reset your password:</span></div>', '<span style=\"text-align: justify;\">Ignore this email if you never asked to reset your password. For questions, please contact </span>', 'lol.jpg', 'mail.ourdevelops.com', '465', 'demo@ourdevelops.com', 'demo12345', 'demo@ourdevelops.com', 'ssl', 'Sabiride', '<p><span style=\"font-size: 14px; text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</span><br></p>', 'https://play.google.com', '₦', 'USD', 'sk_test_WRuTFWBsvTvRaCnJt2V87QjQ00vTewyiWS', 'pk_test_kUsRHrV9bdD9LzHq5CYvOqn7001mufIjai', '1', '1', 'Ab95j_J-CIrQ-Fbg6dAv2ee9d1dD3OQLmAqTp_ZJZybEp1OCmqRBaoLBEaAA0cTL_dIjxvGVFWMPGljb', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `number` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `balance` bigint(250) DEFAULT 0,
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`number`, `id_user`, `balance`, `update_at`) VALUES
(11, 'P1616606326', 20000, '2021-03-24 13:18:46'),
(12, 'D1616792114', 0, '2021-03-27 02:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `bank_list`
--

CREATE TABLE `bank_list` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `bank_logo` varchar(250) NOT NULL,
  `bank_account` varchar(250) NOT NULL,
  `bank_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_item`
--

CREATE TABLE `category_item` (
  `category_item_id` int(11) NOT NULL,
  `category_name_item` varchar(250) NOT NULL,
  `category_item_images` varchar(250) NOT NULL,
  `merchant_id` varchar(250) NOT NULL,
  `created_cat_item` timestamp NOT NULL DEFAULT current_timestamp(),
  `all_category` varchar(50) NOT NULL,
  `category_status` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_item`
--

INSERT INTO `category_item` (`category_item_id`, `category_name_item`, `category_item_images`, `merchant_id`, `created_cat_item`, `all_category`, `category_status`) VALUES
(1, 'All', '', '0', '2020-04-21 08:49:42', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `config_driver`
--

CREATE TABLE `config_driver` (
  `driver_id` varchar(200) NOT NULL,
  `latitude` varchar(30) NOT NULL DEFAULT '0',
  `longitude` varchar(30) NOT NULL DEFAULT '0',
  `bearing` varchar(250) NOT NULL DEFAULT '0',
  `uang_belanja` int(11) NOT NULL DEFAULT 1,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` char(1) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_driver`
--

INSERT INTO `config_driver` (`driver_id`, `latitude`, `longitude`, `bearing`, `uang_belanja`, `update_at`, `status`) VALUES
('D1616792114', '0', '0', '0', 1, '2021-03-26 20:55:14', '5');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(200) NOT NULL,
  `customer_fullname` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `countrycode` varchar(20) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `dob` varchar(50) NOT NULL,
  `customer_rating` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `token` varchar(250) NOT NULL,
  `customer_image` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_fullname`, `email`, `phone_number`, `countrycode`, `phone`, `password`, `created_on`, `dob`, `customer_rating`, `status`, `token`, `customer_image`) VALUES
('P1616606326', 'buking ', 'kiliskelvin@gmail.com', '2348163840207', '+234', '8163840207', 'a0b4e1061adcae76abbb75a08c9db3f79a838acc', '2021-03-24 17:18:46', '1988-03-24', 0, 1, 'cWN0nfltQcSyhttGDfNCJ7:APA91bHD4Fam7pPMlSPL8FSW2axNYdiFqjVGs4gRqi49hJIidCfJ8OCr1PO9fB8VqD-gdJw18fVcjQOy8hThIYKqCzEQTLoM8aJJktemGyM3U71N--xEt2Gx3WudlsbAHXkXaPxC8yEH', '1616606326-13171.jpg'),
('P1616606327', 'testing', 'test@gmail.com', '8002106547', '+234', '8163840325', 'a0b4e1061adcae76abbb75a08c9db3f79a838acc', '2021-03-24 17:18:46', '1988-03-24', 0, 1, 'cWN0nfltQcSyhttGDfNCJ7:APA91bHD4Fam7pPMlSPL8FSW2axNYdiFqjVGs4gRqi49hJIidCfJ8OCr1PO9fB8VqD-gdJw18fVcjQOy8hThIYKqCzEQTLoM8aJJktemGyM3U71N--xEt2Gx3WudlsbAHXkXaPxC8yEH', '1616606326-13171.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_send_transaction`
--

CREATE TABLE `detail_send_transaction` (
  `send_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `goods_item` varchar(250) NOT NULL,
  `sender_name` varchar(250) NOT NULL,
  `receiver_name` varchar(250) NOT NULL,
  `sender_phone` varchar(250) NOT NULL,
  `receiver_phone` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` varchar(200) NOT NULL,
  `driver_name` varchar(20) NOT NULL,
  `user_nationid` varchar(16) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `driver_birthplace` varchar(20) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `countrycode` varchar(20) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `job` int(11) NOT NULL,
  `gender` varchar(250) DEFAULT '2',
  `driver_address` text NOT NULL,
  `vehicle` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reg_id` varchar(250) DEFAULT NULL,
  `status` char(1) DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `driver_name`, `user_nationid`, `dob`, `driver_birthplace`, `phone_number`, `countrycode`, `phone`, `email`, `password`, `photo`, `rating`, `job`, `gender`, `driver_address`, `vehicle`, `created_at`, `update_at`, `reg_id`, `status`) VALUES
('D1616792114', 'driver', 'driver123', '2021-03-03', NULL, '62123456789', '+62', '123456789', 'driver@gmail.com', 'fbd4e40ed87444b046454c9dc4c69fe79d64de6c', 'd8d8a1af0adcb94901b2dbc56b7d108a.jpg', 0, 8, 'Male', 'indore', 494, '2021-03-27 02:25:14', '2021-03-27 02:25:14', '12345', '0');

-- --------------------------------------------------------

--
-- Table structure for table `driver_job`
--

CREATE TABLE `driver_job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_job` varchar(250) NOT NULL,
  `icon` varchar(20) NOT NULL DEFAULT '1',
  `status_job` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_job`
--

INSERT INTO `driver_job` (`id`, `driver_job`, `icon`, `status_job`) VALUES
(8, 'Car', '2', '1'),
(7, 'Bike', '1', '1'),
(9, 'Truck', '3', '1'),
(10, 'Hatchback', '5', '1'),
(11, 'SUV Car', '6', '1'),
(12, 'Van Car', '7', '1'),
(13, 'Delivery Box', '4', '1'),
(14, 'Bicycle', '8', '1'),
(15, 'Tuktuk', '9', '1');

-- --------------------------------------------------------

--
-- Table structure for table `driver_rating`
--

CREATE TABLE `driver_rating` (
  `number` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `driver_id` varchar(200) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `note` varchar(200) DEFAULT 'Good job',
  `rating` int(11) NOT NULL,
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `set_id` int(11) NOT NULL,
  `product_id` varchar(250) NOT NULL,
  `set_name` varchar(500) NOT NULL,
  `set_version` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`set_id`, `product_id`, `set_name`, `set_version`) VALUES
(4, '1', 'default', '211');

-- --------------------------------------------------------

--
-- Table structure for table `ext_setting`
--

CREATE TABLE `ext_setting` (
  `ext_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `value` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ext_setting`
--

INSERT INTO `ext_setting` (`ext_id`, `name`, `value`, `created`) VALUES
(2, 'item_id', '310594', '2020-12-24 04:27:02'),
(3, 'decimal', '0', '2021-01-04 05:39:17'),
(4, 'maps_ride_car', '0', '2021-01-30 08:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `file_driver`
--

CREATE TABLE `file_driver` (
  `file_id` int(11) NOT NULL,
  `driver_id` varchar(250) NOT NULL,
  `idcard_images` varchar(250) NOT NULL,
  `driver_license_images` varchar(250) NOT NULL,
  `driver_license_id` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_driver`
--

INSERT INTO `file_driver` (`file_id`, `driver_id`, `idcard_images`, `driver_license_images`, `driver_license_id`, `created`) VALUES
(5, 'D1616792114', 'e6acadeba500d29e559d3281393e267a.jpg', '09d4bbe8470dd02cedd986804a96760f.jpg', '123456789abc', '2021-03-26 20:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int(11) NOT NULL,
  `idkey` int(11) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `token` varchar(500) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investment_list_user`
--

CREATE TABLE `investment_list_user` (
  `ilu_id` int(11) NOT NULL,
  `ilu_user_id` varchar(50) NOT NULL,
  `ilu_user_type` varchar(100) NOT NULL COMMENT 'customer,driver,merchant',
  `ilu_plan_id` int(11) NOT NULL,
  `ilu_plan_name` text NOT NULL,
  `ilu_plan_amount` varchar(556) NOT NULL,
  `ilu_plan_currency` varchar(10) NOT NULL,
  `ilu_plan_profit` varchar(100) NOT NULL,
  `ilu_detail` text NOT NULL,
  `ilu_plan_get_profit_days` int(11) NOT NULL,
  `ilu_plan_min_withdraw_days` int(11) NOT NULL,
  `ilu_status` int(11) NOT NULL,
  `ilu_created_date` varchar(100) NOT NULL,
  `ilu_update_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investment_list_user`
--

INSERT INTO `investment_list_user` (`ilu_id`, `ilu_user_id`, `ilu_user_type`, `ilu_plan_id`, `ilu_plan_name`, `ilu_plan_amount`, `ilu_plan_currency`, `ilu_plan_profit`, `ilu_detail`, `ilu_plan_get_profit_days`, `ilu_plan_min_withdraw_days`, `ilu_status`, `ilu_created_date`, `ilu_update_date`) VALUES
(1, 'P1616606326', 'customer', 1, 'Safe', '1000', '$', '10', 'for test', 180, 730, 1, '2021-03-27', '2021-03-27'),
(2, 'D1616792114', 'driver', 1, 'Safe', '1000', '$', '10', 'for test', 180, 730, 1, '2021-03-27', '2021-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `investment_plan_type`
--

CREATE TABLE `investment_plan_type` (
  `ipt_id` int(11) NOT NULL,
  `ipt_name` varchar(556) NOT NULL,
  `ipt_amount` varchar(556) NOT NULL,
  `ipt_currency` varchar(100) NOT NULL,
  `ipt_detail` longtext NOT NULL,
  `ipt_profit` int(11) NOT NULL,
  `ipt_get_profit_days` int(11) NOT NULL,
  `ipt_min_withdraw_days` int(11) NOT NULL,
  `ipt_status` int(11) NOT NULL,
  `ipt_created_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investment_plan_type`
--

INSERT INTO `investment_plan_type` (`ipt_id`, `ipt_name`, `ipt_amount`, `ipt_currency`, `ipt_detail`, `ipt_profit`, `ipt_get_profit_days`, `ipt_min_withdraw_days`, `ipt_status`, `ipt_created_date`) VALUES
(1, 'Safe', '1000', '$', 'for test', 10, 180, 730, 1, '2021-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `investment_trans_list`
--

CREATE TABLE `investment_trans_list` (
  `itl_id` int(11) NOT NULL,
  `itl_user_id` varchar(50) NOT NULL,
  `itl_plan_id` int(11) NOT NULL,
  `itl_amount` varchar(556) NOT NULL,
  `itl_transition_type` varchar(100) NOT NULL COMMENT 'deposite , withdrawl',
  `itl_transition_number` text DEFAULT NULL,
  `itl_created_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `merchant_id` varchar(100) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_price` bigint(250) NOT NULL,
  `promo_price` bigint(100) NOT NULL,
  `item_category` varchar(200) NOT NULL,
  `item_desc` text NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `created_item` timestamp NOT NULL DEFAULT current_timestamp(),
  `item_status` varchar(10) NOT NULL,
  `promo_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_transaction`
--

CREATE TABLE `item_transaction` (
  `transaction_item_id` int(11) NOT NULL,
  `item_id` varchar(200) NOT NULL,
  `merchant_id` varchar(100) NOT NULL,
  `transaction_id` varchar(200) NOT NULL,
  `item_amount` varchar(200) NOT NULL,
  `item_note` text NOT NULL,
  `total_cost` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu_admin`
--

CREATE TABLE `menu_admin` (
  `menu_id` int(11) NOT NULL,
  `menu_icon` varchar(250) NOT NULL,
  `menu_title` varchar(250) NOT NULL,
  `menu_url` varchar(250) NOT NULL,
  `menu_sub` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_admin`
--

INSERT INTO `menu_admin` (`menu_id`, `menu_icon`, `menu_title`, `menu_url`, `menu_sub`) VALUES
(1, 'icon-home', 'Dashboard', '', 0),
(2, 'icon-list', 'Transaction History', 'historytransaction', 0),
(3, 'icon-bar-chart-2', 'Statistic', '#', 1),
(4, 'icon-map', 'Maps Tracking', '#', 1),
(5, 'icon-plus-circle', 'New Registration', '#', 1),
(6, 'icon-user', 'User', '#', 1),
(7, 'icon-percent', 'Promotion', '#', 1),
(8, 'icon-dollar-sign', 'Wallet', '#', 1),
(9, 'icon-layers', 'Service', '#', 1),
(10, 'icon-settings', 'Settings', '#', 1),
(11, 'icon-bell', 'Notifications', '#', 1),
(12, 'icon-book-open', 'News', '#', 1),
(13, 'icon-percent', 'Investment Module', '#', 1),
(14, 'icon-bar-chart-2', 'Referal Package Module', '#', 1),
(15, 'icon-settings', 'Extensions', 'extensions', 0);

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `merchant_id` int(11) NOT NULL,
  `service_id` varchar(100) NOT NULL,
  `merchant_name` varchar(250) NOT NULL,
  `merchant_address` varchar(250) NOT NULL,
  `merchant_latitude` varchar(250) NOT NULL,
  `merchant_longitude` varchar(250) NOT NULL,
  `open_hour` varchar(250) NOT NULL,
  `close_hour` varchar(250) NOT NULL,
  `merchant_category` varchar(100) NOT NULL,
  `merchant_image` varchar(250) NOT NULL,
  `merchant_telephone_number` varchar(250) NOT NULL,
  `merchant_desc` text NOT NULL,
  `merchant_phone_number` varchar(250) NOT NULL,
  `merchant_country_code` varchar(20) NOT NULL,
  `merchant_status` varchar(250) NOT NULL,
  `merchant_open_status` varchar(20) NOT NULL,
  `merchant_token` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`merchant_id`, `service_id`, `merchant_name`, `merchant_address`, `merchant_latitude`, `merchant_longitude`, `open_hour`, `close_hour`, `merchant_category`, `merchant_image`, `merchant_telephone_number`, `merchant_desc`, `merchant_phone_number`, `merchant_country_code`, `merchant_status`, `merchant_open_status`, `merchant_token`) VALUES
(1, '21', 'Merchant', 'indore', '25456.446.15', '466.54666.54', '10:30', '18:30', '1', 'none', '8002106547', 'test', '8002106547', '+91', '1', '1', 'sdfdhhnwefwwv');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_category`
--

CREATE TABLE `merchant_category` (
  `category_merchant_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `category_images` varchar(250) NOT NULL,
  `service_id` varchar(200) NOT NULL,
  `category_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_category`
--

INSERT INTO `merchant_category` (`category_merchant_id`, `category_name`, `category_images`, `service_id`, `category_status`) VALUES
(1, 'All', '', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_detail_transaction`
--

CREATE TABLE `merchant_detail_transaction` (
  `merchant_transaction_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `merchant_id` varchar(250) NOT NULL,
  `total_price` varchar(250) NOT NULL,
  `final_price` varchar(250) NOT NULL,
  `validation_code` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `category_id` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `news_images` varchar(250) NOT NULL,
  `news_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `news_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE `news_category` (
  `news_category_id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `partner_id` varchar(200) NOT NULL,
  `partner_name` varchar(250) NOT NULL,
  `partner_type_identity` varchar(250) NOT NULL,
  `partner_identity_number` varchar(250) NOT NULL,
  `partner_address` varchar(250) NOT NULL,
  `partner_email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `partner_telephone` varchar(250) NOT NULL,
  `partner_phone` varchar(250) NOT NULL,
  `partner_country_code` varchar(250) NOT NULL,
  `merchant_id` varchar(250) NOT NULL,
  `partner` varchar(250) NOT NULL,
  `partner_status` varchar(10) NOT NULL,
  `partner_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payusettings`
--

CREATE TABLE `payusettings` (
  `id` int(11) NOT NULL,
  `payu_key` varchar(250) NOT NULL,
  `payu_id` varchar(250) NOT NULL,
  `payu_salt` varchar(250) NOT NULL,
  `payu_debug` varchar(250) NOT NULL,
  `active` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payusettings`
--

INSERT INTO `payusettings` (`id`, `payu_key`, `payu_id`, `payu_salt`, `payu_debug`, `active`) VALUES
(1, '4JreBobn', '7094565', 'gIY79pFnX9', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `promo_id` int(11) NOT NULL,
  `promo_title` varchar(250) NOT NULL,
  `promo_code` varchar(250) NOT NULL,
  `promo_amount` varchar(500) NOT NULL,
  `promo_type` varchar(250) NOT NULL,
  `expired` varchar(250) NOT NULL,
  `service` varchar(250) NOT NULL,
  `promo_image` varchar(500) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `exp_date` date NOT NULL,
  `promotion_service` int(11) NOT NULL,
  `promotion_link` varchar(500) DEFAULT NULL,
  `promotion_type` varchar(250) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `is_show` varchar(3) NOT NULL,
  `action` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referal_package`
--

CREATE TABLE `referal_package` (
  `pp_id` int(11) NOT NULL,
  `pp_name` varchar(556) NOT NULL,
  `pp_currency` varchar(100) NOT NULL,
  `pp_amount` varchar(556) NOT NULL,
  `pp_status` int(11) NOT NULL,
  `pp_created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referal_package`
--

INSERT INTO `referal_package` (`pp_id`, `pp_name`, `pp_currency`, `pp_amount`, `pp_status`, `pp_created_date`) VALUES
(1, 'CEO Package', '$', '100', 1, '2021-04-02 12:21:01'),
(2, 'Manager Package', '$', '80', 1, '2021-04-02 12:20:53'),
(3, 'Employee Package', '$', '50', 1, '2021-04-02 12:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `referal_package_customer`
--

CREATE TABLE `referal_package_customer` (
  `rpc_id` int(11) NOT NULL,
  `rpc_user_id` varchar(110) NOT NULL,
  `rpc_user_type` varchar(100) NOT NULL COMMENT 'customer,driver,merchant	',
  `rpc_package_name` varchar(556) NOT NULL,
  `rpc_package_id` int(11) NOT NULL,
  `rpc_package_currency` varchar(556) NOT NULL,
  `rpc_package_amount` varchar(556) NOT NULL,
  `rpc_status` int(11) NOT NULL,
  `rpc_ceated_date` varchar(556) NOT NULL,
  `rpc_referal_code` varchar(556) NOT NULL,
  `rpc_referal_person_join_count` varchar(556) DEFAULT NULL,
  `rpc_used_referal_user_id` varchar(556) DEFAULT NULL,
  `rpc_used_referal_user_type` varchar(100) DEFAULT NULL,
  `rpc_used_referal_user_name` varchar(556) DEFAULT NULL,
  `rpc_used_referal_code` varchar(556) DEFAULT NULL,
  `rpc_level` varchar(556) DEFAULT NULL,
  `rpc_payment_status` varchar(556) NOT NULL,
  `rpc_payment_transition_id` text NOT NULL,
  `rpc_payment_date` text NOT NULL,
  `rpc_payment_amount` varchar(556) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referal_package_customer`
--

INSERT INTO `referal_package_customer` (`rpc_id`, `rpc_user_id`, `rpc_user_type`, `rpc_package_name`, `rpc_package_id`, `rpc_package_currency`, `rpc_package_amount`, `rpc_status`, `rpc_ceated_date`, `rpc_referal_code`, `rpc_referal_person_join_count`, `rpc_used_referal_user_id`, `rpc_used_referal_user_type`, `rpc_used_referal_user_name`, `rpc_used_referal_code`, `rpc_level`, `rpc_payment_status`, `rpc_payment_transition_id`, `rpc_payment_date`, `rpc_payment_amount`) VALUES
(1, 'P1616606326', 'customer', 'CEO Package', 1, '$', '100', 1, '2021-04-01', 'AWEMOFTS', '1', '', '', '', '', '0', '', '', '', ''),
(2, 'P1616606326', 'merchant', 'Manager Package', 1, '$', '80', 1, '2021-04-01', 'AWEMOFKK', '0', '', '', '', '', '0', '', '', '', ''),
(3, 'D1616792114', 'driver', 'CEO Package', 1, '$', '80', 1, '2021-04-01', 'AWEMOFCC', '0', '', '', '', '', '0', '', '', '', ''),
(10, 'P1616606327', 'customer', 'CEO Package', 1, '$', '100', 1, '2021-04-03', '0AULPHHT', '1', 'P1616606326', 'customer', 'testing', '', '0', '1', 'dasda', '2021-04-02', '100'),
(9, 'P1616606327', 'customer', 'CEO Package', 1, '$', '100', 1, '2021-04-03', 'P69M85Y3', '1', 'P1616606326', 'customer', 'testing', 'AWEMOFTS', '0', '1', 'dasda', '2021-04-02', '100'),
(8, 'P1616606327', 'customer', 'CEO Package', 1, '$', '100', 1, '2021-04-03', '3DRLLXAV', '1', 'P1616606326', 'customer', 'testing', 'AWEMOFTS', '0', '1', 'dasda', '2021-04-02', '100'),
(11, 'P1616606327', 'customer', 'CEO Package', 1, '$', '100', 1, '2021-04-03', 'XLT5DHJX', '1', 'P1616606326', 'customer', 'testing', '', '0', '1', 'dasda', '2021-04-02', '100'),
(12, 'P1616606326', 'customer', 'CEO Package', 1, '$', '100', 1, '2021-04-03', 'OC0YR4MV', '1', 'P1616606326', 'customer', 'buking ', '', '0', '1', 'dasdazxczx', '2021-04-02', '100');

-- --------------------------------------------------------

--
-- Table structure for table `referal_package_user_join`
--

CREATE TABLE `referal_package_user_join` (
  `rpuj_id` int(11) NOT NULL,
  `rpuj_user_id` varchar(50) NOT NULL,
  `rpuj_user_type` varchar(556) NOT NULL,
  `rpuj_user_name` varchar(100) NOT NULL,
  `rpuj_referal_package_name` varchar(556) NOT NULL,
  `rpuj_referal_package_curency` varchar(556) NOT NULL,
  `rpuj_referal_package_amount` varchar(556) NOT NULL,
  `rpuj_referal_package_id` int(11) NOT NULL,
  `rpuj_referal_code` varchar(556) NOT NULL,
  `rpuj_referal_code_user_name` varchar(556) NOT NULL,
  `rpuj_referal_code_user_id` varchar(556) NOT NULL,
  `rpuj_join_date` varchar(100) NOT NULL,
  `rpuj_package_level` varchar(100) NOT NULL,
  `rpuj_invitation_amount` varchar(556) NOT NULL,
  `rpuj_invitation_percentage` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referal_package_user_join`
--

INSERT INTO `referal_package_user_join` (`rpuj_id`, `rpuj_user_id`, `rpuj_user_type`, `rpuj_user_name`, `rpuj_referal_package_name`, `rpuj_referal_package_curency`, `rpuj_referal_package_amount`, `rpuj_referal_package_id`, `rpuj_referal_code`, `rpuj_referal_code_user_name`, `rpuj_referal_code_user_id`, `rpuj_join_date`, `rpuj_package_level`, `rpuj_invitation_amount`, `rpuj_invitation_percentage`) VALUES
(1, 'P1616606327', 'customer', 'testing', 'CEO Package', '$', '100', 1, 'AWEMOFTS', 'buking', 'P1616606326', '2021-04-02', '1', '40', '50'),
(2, 'P1616606327', 'customer', 'testing', 'CEO Package', '$', '100', 1, 'AWEMOFTS', 'buking', 'P1616606326', '2021-04-02', '1', '40', '50'),
(3, 'P1616606327', 'customer', 'testing', 'CEO Package', '$', '100', 1, 'AWEMOFTS', 'testing', 'P1616606326', '2021-04-03', '0', '50', '50%'),
(4, 'P1616606327', 'customer', 'testing', 'CEO Package', '$', '100', 1, 'AWEMOFTS', 'testing', 'P1616606326', '2021-04-03', '0', '50', '50%'),
(5, 'P1616606327', 'customer', 'testing', 'CEO Package', '$', '100', 1, 'AWEMOFTS', 'testing', 'P1616606326', '2021-04-03', '0', '50', '50%'),
(6, 'P1616606327', 'customer', 'testing', 'CEO Package', '$', '100', 1, 'AWEMOFTS', 'testing', 'P1616606326', '2021-04-03', '0', '50', '50%'),
(7, 'P1616606326', 'customer', 'buking ', 'CEO Package', '$', '100', 1, 'AWEMOFTS', 'buking ', 'P1616606326', '2021-04-03', '0', '50', '50%');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service` varchar(20) NOT NULL,
  `cost` bigint(150) NOT NULL,
  `minimum_cost` bigint(150) NOT NULL,
  `minimum_distance` varchar(100) NOT NULL,
  `maks_distance` varchar(250) NOT NULL,
  `minimum_wallet` varchar(100) NOT NULL,
  `commision` varchar(200) DEFAULT '0',
  `cost_desc` varchar(50) NOT NULL,
  `driver_job` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `home` varchar(1) NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service`, `cost`, `minimum_cost`, `minimum_distance`, `maks_distance`, `minimum_wallet`, `commision`, `cost_desc`, `driver_job`, `description`, `icon`, `home`, `active`) VALUES
(21, 'Food', 500000, 1500000, '15', '70', '5000000', '10', 'KM', 13, 'In Town Merchant', '4a75feea7e9e6ecb69669cd1c1c61e16.png', '4', '1'),
(27, 'Hatchback Car', 70, 200, '5', '70', '1000', '10', 'KM', 10, 'Max 4 Person', 'fa23127777a76b5ff7d505ef613a0762.png', '1', '1'),
(20, 'Car Rent', 600000, 5000000, '10', '0', '5000000', '10', 'Hr', 8, 'City use', 'b94d61b4f10aa50376960f09ad0d8167.png', '3', '1'),
(18, 'Truck', 600, 1500, '50', '500', '5000', '10', 'KM', 9, 'Max 25,999 lbs or 1,500 ft³', '273429c0660e0e44a218bd0747248ac6.png', '2', '1'),
(17, 'Send Goods', 500000, 1000000, '5', '70', '5000000', '10', 'KM', 13, 'Max 20 KG or 0.5 M2', '9b3b0a492348ceb0d002f33d19661fa1.png', '2', '1'),
(16, 'Saloon Car', 120, 170, '5', '50', '000', '10', 'KM', 8, 'Max 3 person', '3455045b87aea1ec76bbcce1947b3066.png', '1', '1'),
(15, 'Ride', 700000, 900000, '6', '70', '5000000', '10', 'KM', 7, 'Max 1 Person', 'cafad9edd5aa96ea0732b174fd23f80e.png', '1', '1'),
(22, 'Shop', 120, 200, '5', '70', '1000', '10', 'KM', 13, 'In Town Shop Merchant', '06d943f123882b2d7682e30a25f54e39.png', '4', '1'),
(23, 'Grocery', 30, 100, '4', '12', '1000', '10', 'KM', 14, 'In Town Grocery Merchant', '0babfde5514897112049b393eb89f46f.png', '4', '1'),
(24, 'Medicine', 70, 200, '5', '500', '1000', '10', 'KM', 13, 'In Town Drugstore', 'b2501da020a00ebd0cc8e074bd16fc5c.png', '4', '1'),
(25, 'SUV Car', 150, 900, '5', '150', '3000', '10', 'Hr', 11, 'Max 5 Person', 'ed2c25007536177045d7ae31b83afab2.png', '3', '1'),
(26, 'Van Shipment', 30, 300, '4', '70', '1000', '10', 'KM', 12, 'Send Big Item', '2da31839bc3ecc6dc9719f0f2225a339.png', '2', '1'),
(28, 'SUV Rent Car', 400, 4500, '5', '1000', '3000', '10', 'Hr', 11, 'In Town Use', '9a763977427b18d16cc493dbc1d6be8a.png', '3', '1'),
(29, 'Tuktuk', 500, 1000, '100', '50', '5000', '15', 'KM', 15, 'take the tuktuk wherever you want', '45ddcde228beef10ff52747beec43768.png', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `id` int(11) NOT NULL,
  `ext_id` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `maps` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`id`, `ext_id`, `title`, `maps`, `created`) VALUES
(1, '1', 'Passenger Transportation', '1', '2021-03-26 21:05:23'),
(2, '2', 'Shipment', '1', '2021-03-24 17:22:44'),
(3, '3', 'Rental', '1', '2021-03-24 17:22:44'),
(4, '4', 'Purchasing Service', '1', '2021-03-24 17:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `submenu_admin`
--

CREATE TABLE `submenu_admin` (
  `sub_id` int(11) NOT NULL,
  `menu_id` varchar(250) NOT NULL,
  `sub_title` varchar(250) NOT NULL,
  `sub_url` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu_admin`
--

INSERT INTO `submenu_admin` (`sub_id`, `menu_id`, `sub_title`, `sub_url`) VALUES
(1, '3', 'General', 'statistic/general'),
(2, '3', 'Transactions', '	\r\nstatistic/trasactionstatistic\r\n'),
(3, '3', 'Finance', 'statistic/earningsstatistic'),
(4, '3', 'Valuation', 'statistic/valuationstatistic'),
(5, '4', 'Driver', 'tracking/trackingdriver'),
(6, '4', 'Merchant', 'tracking/trackingmerchant'),
(7, '5', 'Driver', 'newregistration/newregdriver'),
(8, '5', 'Merchant', 'newregistration/newregmerchant'),
(9, '6', 'Customer', 'user/customerdata'),
(10, '6', 'Driver', 'user/driverdata'),
(11, '6', 'Merchant', 'user/merchantdata'),
(12, '7', 'Slider', 'promotion/sliderdata'),
(13, '7', 'Promo Code', 'promotion/promocodedata'),
(14, '8', 'Wallet', 'wallet/walletdata'),
(15, '8', 'Top Up', 'wallet/topupdata'),
(16, '8', 'Withdraw', 'wallet/withdrawdata'),
(17, '9', 'Vehicle Type', 'service/vehicletypedata'),
(18, '9', 'Service', 'service/servicedata'),
(19, '9', 'Category Merchant', 'service/merchantcategorydata'),
(20, '10', 'Application', 'settings/appsettings'),
(21, '10', 'Email', 'settings/emailsettings'),
(22, '10', 'SMTP', 'settings/smtpsettings'),
(23, '10', 'Stripe', 'settings/stripesettings'),
(24, '10', 'Paypal', 'settings/paypalsettings'),
(25, '10', 'Bank Transfer', 'settings/banktransfersettings'),
(26, '11', 'Send Email', 'notification/sendemail'),
(27, '11', 'Send Notification', 'notification/sendnotification'),
(28, '12', 'Category', 'news/newscategory'),
(29, '12', 'News', 'news/newsdata'),
(30, '10', 'Maps Settings', 'service/mapstype'),
(31, '13', 'Investment Plan', 'Investment'),
(32, '13', 'Investment Merchant', 'Investment/Investment_merchant_list'),
(33, '13', 'Investment Driver', 'Investment/Investment_driver_list'),
(34, '13', 'Investment Customer', 'Investment/Investment_customer_list'),
(35, '14', 'All Referal Package', 'Referal_package'),
(36, '14', 'Customer Package List', 'Referal_package/Referal_package_Customer_list'),
(37, '14', 'Driver Package List', 'Referal_package/Referal_package_driver_list'),
(38, '14', 'Merchant Package List', 'Referal_package/Referal_package_merchant_list');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `driver_id` varchar(200) DEFAULT NULL,
  `service_order` tinyint(4) NOT NULL,
  `start_latitude` varchar(20) NOT NULL,
  `start_longitude` varchar(20) NOT NULL,
  `end_latitude` varchar(20) NOT NULL,
  `end_longitude` varchar(20) NOT NULL,
  `distance` double NOT NULL,
  `price` int(11) NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_time` timestamp NULL DEFAULT NULL,
  `estimate_time` varchar(500) NOT NULL,
  `pickup_address` varchar(500) NOT NULL,
  `destination_address` varchar(500) NOT NULL,
  `promo_discount` int(11) NOT NULL DEFAULT 0,
  `final_cost` int(11) DEFAULT 0,
  `wallet_payment` tinyint(1) NOT NULL DEFAULT 0,
  `rate` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `number` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `driver_id` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `note` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_status`
--

CREATE TABLE `transaction_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_status`
--

INSERT INTO `transaction_status` (`id`, `transaction_status`) VALUES
(3, 'process'),
(4, 'complete'),
(5, 'cancel'),
(2, 'driver found'),
(1, 'find driver');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `variant` varchar(40) NOT NULL,
  `vehicle_registration_number` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `brand`, `type`, `variant`, `vehicle_registration_number`, `color`) VALUES
(494, 'hero', 'test', '', 'qwerttgfd223', 'green');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voucher` varchar(20) NOT NULL,
  `voucher_type` char(1) NOT NULL,
  `voucher_service` int(11) NOT NULL,
  `expired` date NOT NULL,
  `voucher_discount` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `count_to_use` int(11) NOT NULL,
  `is_valid` varchar(3) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `voucher`, `voucher_type`, `voucher_service`, `expired`, `voucher_discount`, `description`, `count_to_use`, `is_valid`) VALUES
(1, 'DISKON', '1', 15, '2020-01-31', 2, 'Discount', 0, 'yes'),
(2, 'DISKON', '1', 16, '2020-01-31', 5, 'Discount', 0, 'yes'),
(3, 'DISKON', '1', 17, '2020-01-31', 5, 'Discount', 0, 'yes'),
(4, 'DISKON', '1', 18, '2020-01-31', 5, 'Discount', 0, 'yes'),
(13, 'DISKON', '1', 27, '2020-01-31', 0, 'Discount', 0, 'yes'),
(6, 'DISKON', '1', 20, '2020-01-31', 5, 'Discount', 0, 'yes'),
(7, 'DISKON', '1', 21, '2020-01-31', 20, 'Discount', 0, 'yes'),
(8, 'DISKON', '1', 22, '2020-01-31', 0, 'Discount', 0, 'yes'),
(9, 'DISKON', '1', 23, '2020-01-31', 0, 'Discount', 0, 'yes'),
(10, 'DISKON', '1', 24, '2020-01-31', 0, 'Discount', 0, 'yes'),
(11, 'DISKON', '1', 25, '2020-01-31', 5, 'Discount', 0, 'yes'),
(12, 'DISKON', '1', 26, '2020-01-31', 0, 'Discount', 0, 'yes'),
(14, 'DISKON', '1', 28, '2020-01-31', 5, 'Discount', 0, 'yes'),
(15, 'DISKON', '1', 29, '2020-01-31', 0, 'Discount', 0, 'yes'),
(16, 'DISKON', '1', 30, '2020-01-31', 5, 'Discount', 0, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `wallet_amount` int(11) NOT NULL,
  `bank` varchar(250) NOT NULL,
  `holder_name` varchar(500) NOT NULL,
  `wallet_account` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `type` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `id_user`, `wallet_amount`, `bank`, `holder_name`, `wallet_account`, `date`, `type`, `status`) VALUES
(1084, 'P1616606326', 20000, 'admin', 'buking ', 'admin', '2021-03-24 13:21:26', 'topup', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`number`),
  ADD UNIQUE KEY `number` (`number`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `bank_list`
--
ALTER TABLE `bank_list`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `category_item`
--
ALTER TABLE `category_item`
  ADD PRIMARY KEY (`category_item_id`);

--
-- Indexes for table `config_driver`
--
ALTER TABLE `config_driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `latitude` (`latitude`),
  ADD KEY `longitude` (`longitude`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `detail_send_transaction`
--
ALTER TABLE `detail_send_transaction`
  ADD PRIMARY KEY (`send_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `user_nationid` (`user_nationid`);

--
-- Indexes for table `driver_job`
--
ALTER TABLE `driver_job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `driver_rating`
--
ALTER TABLE `driver_rating`
  ADD PRIMARY KEY (`number`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `ext_setting`
--
ALTER TABLE `ext_setting`
  ADD PRIMARY KEY (`ext_id`);

--
-- Indexes for table `file_driver`
--
ALTER TABLE `file_driver`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_list_user`
--
ALTER TABLE `investment_list_user`
  ADD PRIMARY KEY (`ilu_id`);

--
-- Indexes for table `investment_plan_type`
--
ALTER TABLE `investment_plan_type`
  ADD PRIMARY KEY (`ipt_id`);

--
-- Indexes for table `investment_trans_list`
--
ALTER TABLE `investment_trans_list`
  ADD PRIMARY KEY (`itl_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_transaction`
--
ALTER TABLE `item_transaction`
  ADD PRIMARY KEY (`transaction_item_id`);

--
-- Indexes for table `menu_admin`
--
ALTER TABLE `menu_admin`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`merchant_id`);

--
-- Indexes for table `merchant_category`
--
ALTER TABLE `merchant_category`
  ADD PRIMARY KEY (`category_merchant_id`);

--
-- Indexes for table `merchant_detail_transaction`
--
ALTER TABLE `merchant_detail_transaction`
  ADD PRIMARY KEY (`merchant_transaction_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`news_category_id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`partner_id`),
  ADD UNIQUE KEY `partner_email` (`partner_email`),
  ADD UNIQUE KEY `partner_telephone` (`partner_telephone`);

--
-- Indexes for table `payusettings`
--
ALTER TABLE `payusettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `referal_package`
--
ALTER TABLE `referal_package`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `referal_package_customer`
--
ALTER TABLE `referal_package_customer`
  ADD PRIMARY KEY (`rpc_id`);

--
-- Indexes for table `referal_package_user_join`
--
ALTER TABLE `referal_package_user_join`
  ADD PRIMARY KEY (`rpuj_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `id` (`service_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu_admin`
--
ALTER TABLE `submenu_admin`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`customer_id`,`order_time`),
  ADD UNIQUE KEY `number` (`id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`number`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `transaction_status`
--
ALTER TABLE `transaction_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD UNIQUE KEY `id` (`vehicle_id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bank_list`
--
ALTER TABLE `bank_list`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_item`
--
ALTER TABLE `category_item`
  MODIFY `category_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_send_transaction`
--
ALTER TABLE `detail_send_transaction`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `driver_job`
--
ALTER TABLE `driver_job`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `driver_rating`
--
ALTER TABLE `driver_rating`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ext_setting`
--
ALTER TABLE `ext_setting`
  MODIFY `ext_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file_driver`
--
ALTER TABLE `file_driver`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_list_user`
--
ALTER TABLE `investment_list_user`
  MODIFY `ilu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `investment_plan_type`
--
ALTER TABLE `investment_plan_type`
  MODIFY `ipt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `investment_trans_list`
--
ALTER TABLE `investment_trans_list`
  MODIFY `itl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_transaction`
--
ALTER TABLE `item_transaction`
  MODIFY `transaction_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_admin`
--
ALTER TABLE `menu_admin`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `merchant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merchant_category`
--
ALTER TABLE `merchant_category`
  MODIFY `category_merchant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merchant_detail_transaction`
--
ALTER TABLE `merchant_detail_transaction`
  MODIFY `merchant_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_category`
--
ALTER TABLE `news_category`
  MODIFY `news_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payusettings`
--
ALTER TABLE `payusettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `referal_package`
--
ALTER TABLE `referal_package`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `referal_package_customer`
--
ALTER TABLE `referal_package_customer`
  MODIFY `rpc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `referal_package_user_join`
--
ALTER TABLE `referal_package_user_join`
  MODIFY `rpuj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `submenu_admin`
--
ALTER TABLE `submenu_admin`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `transaction_status`
--
ALTER TABLE `transaction_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1085;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
