-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 10:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ads_banner`
--

CREATE TABLE `tbl_ads_banner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `book_id` int(11) NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_author`
--

CREATE TABLE `tbl_author` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bio` text CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_author`
--

INSERT INTO `tbl_author` (`id`, `role_id`, `user_id`, `email`, `password`, `name`, `bio`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(12, 2, 0, 'author@author.com', '02bd92faa38aaa6cc0ea75e59937a1ef', 'Robert Bank', 'Jay Vasavada is Gujarati language writer, orator and columnist from India. Born in Bhavnagar and brought up in Gondal, Gujarat, he writes columns in various publications since 1996. He has published several books compiling his columns.', 'Far Rockaway, YK', 'image_1630066840.jpg', 1, '2020-07-19 08:57:50', '2022-07-21 10:15:11'),
(13, 1, 0, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'Test', '<p>Test</p>', '123', '1597377868.png', 1, '2020-08-10 12:12:25', '2021-12-06 09:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_detail`
--

CREATE TABLE `tbl_bank_detail` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `bank_holder_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `is_paid` int(11) NOT NULL,
  `sample_url` text CHARACTER SET utf8 NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `readcnt` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `is_feature` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookmark`
--

CREATE TABLE `tbl_bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `magazine_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book_chapter`
--

CREATE TABLE `tbl_book_chapter` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `magazine_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_continue_read`
--

CREATE TABLE `tbl_continue_read` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `symbol` varchar(5) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`id`, `name`, `code`, `symbol`, `status`) VALUES
(1, 'Dollars', 'USD', '$', 1),
(2, 'Euro', 'EUR', '€', 0),
(3, 'Pounds', 'IMP', '£', 0),
(4, 'Rupees', 'INR', '₹', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `magazine_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_earn_point`
--

CREATE TABLE `tbl_earn_point` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `point_type` int(11) NOT NULL DEFAULT 1 COMMENT '1- Spin wheel , 2 - Daily Login point , 3- get free coin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_earn_point`
--

INSERT INTO `tbl_earn_point` (`id`, `key`, `value`, `type`, `point_type`, `created_at`) VALUES
(7, 'Day-1', '100', 7, 2, '2021-09-23 16:02:00'),
(8, 'Day-2', '200', 8, 2, '2021-08-08 08:16:15'),
(9, 'Day-3', '300', 9, 2, '2021-08-08 08:16:15'),
(10, 'Day-4', '400', 10, 2, '2021-08-08 08:16:15'),
(11, 'Day-5', '500', 11, 2, '2021-08-08 08:17:31'),
(12, 'Day-6', '600', 12, 2, '2021-08-08 08:17:31'),
(13, 'Day-7', '700', 13, 2, '2021-09-23 16:02:00'),
(14, 'free-Coin', '123', 14, 3, '2021-08-08 08:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_setting`
--

CREATE TABLE `tbl_general_setting` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_general_setting`
--

INSERT INTO `tbl_general_setting` (`id`, `key`, `value`) VALUES
(10, 'host_email', 'support@divinetechs.com'),
(11, 'app_name', 'Ebook'),
(12, 'app_desripation', 'E Book app is an android application.E Book App has user-friendly interface with easy to manage. The Quotes Pro are stored in Server Side for easy editing and better performance. You can create apps Different types of Category and Author.The application is specially optimized to be extremely easy to configure and detailed documentation is provided.'),
(13, 'app_logo', 'app_image_1621222020.png'),
(14, 'app_version', '1.0'),
(15, 'Author', 'DivineTechs'),
(16, 'contact', '+91 7984859403'),
(17, 'email', 'support@divinetechs.com'),
(18, 'website', 'www.divinetechs.com'),
(19, 'privacy_policy', '<div><h1>Privacy Policy for DivineTechs</h1></div><div><br></div><div><p>At www.divinetechs.com, accessible from https://www.divinetechs.com/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by www.divinetechs.com and how we use it.</p></div><div><br></div><div><p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p></div><div><br></div><div><p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in www.divinetechs.com. This policy is not applicable to any information collected offline or via channels other than this website.</p></div><div><br></div><div><h2>Consent</h2></div><div><br></div><div><p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p></div><div><br></div><div><h2>Information we collect</h2></div><div><br></div><div><p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p></div><div><p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p></div><div><p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p></div><div><br></div><div><h2>How we use your information</h2></div><div><br></div><div><p>We use the information we collect in various ways, including to:</p></div><div><br></div><div><ul></ul></div><div><li>Provide, operate, and maintain our website</li></div><div><li>Improve, personalize, and expand our website</li></div><div><li>Understand and analyze how you use our website</li></div><div><li>Develop new products, services, features, and functionality</li></div><div><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li></div><div><li>Send you emails</li></div><div><li>Find and prevent fraud</li></div><div></div><div><br></div><div><h2>Log Files</h2></div><div><br></div><div><p>www.divinetechs.com follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\' movement on the website, and gathering demographic information.</p></div><div><br></div><div><br></div><div><br></div><div><br></div><div><h2>Advertising Partners Privacy Policies</h2></div><div><br></div><div><p>You may consult this list to find the Privacy Policy for each of the advertising partners of www.divinetechs.com.</p></div><div><br></div><div><p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on www.divinetechs.com, which are sent directly to users\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p></div><div><br></div><div><p>Note that www.divinetechs.com has no access to or control over these cookies that are used by third-party advertisers.</p></div><div><br></div><div><h2>Third Party Privacy Policies</h2></div><div><br></div><div><p>www.divinetechs.com\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. </p></div><div><br></div><div><p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\' respective websites.</p></div><div><br></div><div><h2>CCPA Privacy Rights (Do Not Sell My Personal Information)</h2></div><div><br></div><div><p>Under the CCPA, among other rights, California consumers have the right to:</p></div><div><p>Request that a business that collects a consumer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p></div><div><p>Request that a business delete any personal data about the consumer that a business has collected.</p></div><div><p>Request that a business that sells a consumer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s personal data, not sell the consumer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s personal data.</p></div><div><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p></div><div><br></div><div><h2>GDPR Data Protection Rights</h2></div><div><br></div><div><p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p></div><div><p>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p></div><div><p>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p></div><div><p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p></div><div><p>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p></div><div><p>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p></div><div><p>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p></div><div><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p></div><div><br></div><div><h2>Children\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s Information</h2></div><div><br></div><div><p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p></div><div><br></div><div><p>www.divinetechs.com does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p></div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          '),
(20, 'publisher_id', '1'),
(21, 'banner_ad', 'no'),
(22, 'banner_adid', '1'),
(23, 'interstital_ad', 'yes'),
(24, 'interstital_adid', '1'),
(25, 'interstital_adclick', '1'),
(26, 'onesignal_apid', '1'),
(27, 'onesignal_rest_key', '1'),
(28, 'custom_ads', 'no'),
(29, 'custom_image', '1'),
(30, 'paypal_name', 'DivineTechs'),
(31, 'paypal_client_id', '1'),
(32, 'UPI_Name', 'chirag patel'),
(33, 'UPI', '1'),
(34, 'author_commission', '20'),
(35, 'native_ad', 'no'),
(36, 'native_adid', '1'),
(37, 'fb_native_status', 'off'),
(38, 'reward_adid', '1'),
(39, 'fb_interstiatial_id', '1'),
(40, 'fb_rewardvideo_id', '1'),
(41, 'fb_native_full_id', '1'),
(42, 'fb_native_id', '1'),
(43, 'fb_banner_id', '1'),
(44, 'fb_banner_status', 'off'),
(45, 'fb_interstiatial_status', 'off'),
(46, 'fb_native_full_status', 'off'),
(47, 'fb_rewardvideo_status', 'off'),
(48, 'reward_ad', 'no'),
(49, 'package_name', '1'),
(50, 'purchase_code', '1'),
(51, 'terms_and_condition', '<span style=\\\"\\\\&quot;font-weight:\\\" bold;\\\\\\\"=\\\"\\\" rgb(107,=\\\"\\\\&quot;\\\\&quot;\\\" 107,=\\\"\\\\&quot;\\\\&quot;\\\" 107);=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" 12px;=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" 600;=\\\"\\\\&quot;\\\\&quot;\\\" text-transform:=\\\"\\\\&quot;\\\\&quot;\\\" uppercase;\\\\\\\\\\\\\\\"=\\\"\\\\&quot;\\\\&quot;\\\">TERMS AND CONDITION</span>                                                                <div>E Book app is an android application.E Book App has user-friendly interface with easy to manage. The Quotes Pro are stored in Server Side for easy editing and better performance. You can create apps Different types of Category and Author.The application is specially optimized to be extremely easy to configure and detailed documentation is provided.<span style=\\\"\\\\&quot;\\\\\\\\&quot;color:\\\\&quot;\\\" rgb(107,=\\\"\\\\&quot;\\\\&quot;\\\" 107,=\\\"\\\\&quot;\\\\&quot;\\\" 107);=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" 12px;=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" 600;=\\\"\\\\&quot;\\\\&quot;\\\" text-transform:=\\\"\\\\&quot;\\\\&quot;\\\" uppercase;\\\\\\\\\\\\\\\"=\\\"\\\\&quot;\\\\&quot;\\\"><br></span></div>                                                                                                                                ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_magazine`
--

CREATE TABLE `tbl_magazine` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `is_paid` int(11) NOT NULL,
  `sample_url` text CHARACTER SET utf8 NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `readcnt` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `is_feature` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `included_segments` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `headings` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `big_picture` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `package_image` varchar(255) NOT NULL,
  `product_package` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `package_name`, `price`, `package_image`, `product_package`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Basic Plan', '99', 'package_image_1658461600.png', 'android.test.purchased', 0, '2020-06-13 11:37:13', '2022-07-22 03:46:40'),
(5, 'Silver Plan', '299', 'package_image_1658461638.png', 'android.test.purchased', 0, '2020-12-14 11:17:21', '2022-07-22 03:47:18'),
(6, 'Golden Plan', '499', 'package_image_1658461656.png', 'android.test.purchased', 0, '2020-12-14 11:17:56', '2022-07-22 03:47:36'),
(7, 'Platinium Plan', '999', 'package_image_1658461677.png', 'android.test.purchased', 0, '2020-12-14 11:18:45', '2022-07-22 03:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_transaction`
--

CREATE TABLE `tbl_package_transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `payment_id` text CHARACTER SET utf8 NOT NULL,
  `state` text CHARACTER SET utf8 NOT NULL,
  `amount` varchar(255) NOT NULL,
  `coin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `page_name`, `title`, `description`, `status`, `created_at`) VALUES
(1, 'about-us', 'About Us', 'hhoihuh', 1, '2022-08-02 18:24:44'),
(2, 'privacy-policy', 'Privacy Policy', '<div><h1>Privacy Policy for DivineTechs</h1></div><div><br></div><div><p>At www.divinetechs.com, accessible from https://www.divinetechs.com/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by www.divinetechs.com and how we use it.</p></div><div><br></div><div><p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p></div><div><br></div><div><p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in www.divinetechs.com. This policy is not applicable to any information collected offline or via channels other than this website.</p></div><div><br></div><div><h2>Consent</h2></div><div><br></div><div><p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p></div><div><br></div><div><h2>Information we collect</h2></div><div><br></div><div><p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p></div><div><p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p></div><div><p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p></div><div><br></div><div><h2>How we use your information</h2></div><div><br></div><div><p>We use the information we collect in various ways, including to:</p></div><div><br></div><div><ul></ul></div><div><li>Provide, operate, and maintain our website</li></div><div><li>Improve, personalize, and expand our website</li></div><div><li>Understand and analyze how you use our website</li></div><div><li>Develop new products, services, features, and functionality</li></div><div><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li></div><div><li>Send you emails</li></div><div><li>Find and prevent fraud</li></div><div></div><div><br></div><div><h2>Log Files</h2></div><div><br></div><div><p>www.divinetechs.com follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\\\' movement on the website, and gathering demographic information.</p></div><div><br></div><div><br></div><div><br></div><div><br></div><div><h2>Advertising Partners Privacy Policies</h2></div><div><br></div><div><p>You may consult this list to find the Privacy Policy for each of the advertising partners of www.divinetechs.com.</p></div><div><br></div><div><p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on www.divinetechs.com, which are sent directly to users\\\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p></div><div><br></div><div><p>Note that www.divinetechs.com has no access to or control over these cookies that are used by third-party advertisers.</p></div><div><br></div><div><h2>Third Party Privacy Policies</h2></div><div><br></div><div><p>www.divinetechs.com \\\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p></div><div><br></div><div><p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\\\' respective websites.</p></div><div><br></div><div><h2>CCPA Privacy Rights (Do Not Sell My Personal Information)</h2></div><div><br></div><div><p>Under the CCPA, among other rights, California consumers have the right to:</p></div><div><p>Request that a business that collects a consumer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p></div><div><p>Request that a business delete any personal data about the consumer that a business has collected.</p></div><div><p>Request that a business that sells a consumer\\\'s personal data, not sell the consumer\\\'s personal data.</p></div><div><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p></div><div><br></div><div><h2>GDPR Data Protection Rights</h2></div><div><br></div><div><p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p></div><div><p>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p></div><div><p>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p></div><div><p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p></div><div><p>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p></div><div><p>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p></div><div><p>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p></div><div><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p></div><div><br></div><div><h2>Children\\\'s Information</h2></div><div><br></div><div><p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p></div><div><br></div><div><p>www.divinetechs.com does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p></div>', 1, '2022-05-25 10:47:26'),
(3, 'terms-and-conditions', 'terms-and-conditions', '<span bold;\\\\\\\\\\\\\\\"=\\\"\\\\&quot;\\\\&quot;\\\" rgb(107,=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" 107,=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" 107);=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" 12px;=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" 600;=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" text-transform:=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\" uppercase;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\\">TERMS AND CONDITION</span><div>E Book app is an android application.E Book App has user-friendly interface with easy to manage. The Quotes Pro are stored in Server Side for easy editing and better performance. You can create apps Different types of Category and Author.The application is specially optimized to be extremely easy to configure and detailed documentation is provided.</div>', 1, '2022-05-25 10:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_option`
--

CREATE TABLE `tbl_payment_option` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `visibility` varchar(255) NOT NULL,
  `is_live` varchar(255) NOT NULL,
  `live_key_1` varchar(255) NOT NULL,
  `live_key_2` varchar(255) NOT NULL,
  `live_key_3` varchar(255) NOT NULL,
  `test_key_1` varchar(255) NOT NULL,
  `test_key_2` varchar(255) NOT NULL,
  `test_key_3` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment_option`
--

INSERT INTO `tbl_payment_option` (`id`, `name`, `visibility`, `is_live`, `live_key_1`, `live_key_2`, `live_key_3`, `test_key_1`, `test_key_2`, `test_key_3`, `created_at`, `updated_at`) VALUES
(1, 'InApp Purchage', '1', '0', '0', '0', '0', '0', '0', '0', '2022-07-29 06:26:54', '2022-07-30 05:06:32'),
(2, 'Paypal', '1', '0', '0', '0', '0', '0', '0', '0', '2022-07-29 06:26:54', '2022-08-22 11:56:53'),
(3, 'Razorpay', '1', '0', '0', '0', '0', '0', '0', '0', '2022-07-29 06:27:09', '2022-07-30 05:06:00'),
(4, 'FlutterWave', '1', '0', '0', '0', '0', '0', '0', '0', '2022-07-29 06:27:09', '2022-08-22 11:56:59'),
(5, 'PayUMoney', '1', '0', '0', '0', '0', '0', '0', '0', '2022-07-29 06:27:17', '2022-08-22 11:57:06'),
(6, 'PayTm', '1', '0', '0', '0', '0', '0', '0', '0', '2022-07-29 06:27:17', '2022-08-22 11:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payout`
--

CREATE TABLE `tbl_payout` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT 1 COMMENT '1- Bank Transfer',
  `settlement_month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating_magazine`
--

CREATE TABLE `tbl_rating_magazine` (
  `id` int(11) NOT NULL,
  `magazine_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_smtp_setting`
--

CREATE TABLE `tbl_smtp_setting` (
  `id` int(11) NOT NULL,
  `protocol` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_smtp_setting`
--

INSERT INTO `tbl_smtp_setting` (`id`, `protocol`, `host`, `port`, `user`, `pass`, `from_name`, `from_email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'ssl://smtp.gmail.com', '465', 'admin@admin.com', '1234567890', 'DivineTechs', 'admin@gmail.com', 1, '2022-08-22 11:53:31', '2022-08-22 11:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `magazine_id` int(11) NOT NULL,
  `voucher_id` varchar(255) NOT NULL,
  `voucher_amount` varchar(255) NOT NULL,
  `book_chapter_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL,
  `author_commission_amount` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transcation_amount` varchar(255) NOT NULL,
  `wallet_amount` varchar(255) NOT NULL,
  `settle` int(11) NOT NULL COMMENT '0- Settle, 1- Unsettled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `fullname` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `mobile` text CHARACTER SET utf8 NOT NULL,
  `coin_balance` int(11) NOT NULL DEFAULT 0,
  `voucher_balance` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 2 COMMENT '1- normal , 2- facebook, 3- otp login, 4- gmail',
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'enable',
  `is_updated` int(11) NOT NULL COMMENT '0-no, 1-yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_notification_tracking`
--

CREATE TABLE `tbl_user_notification_tracking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher`
--

CREATE TABLE `tbl_voucher` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `points` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ads_banner`
--
ALTER TABLE `tbl_ads_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_author`
--
ALTER TABLE `tbl_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank_detail`
--
ALTER TABLE `tbl_bank_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bookmark`
--
ALTER TABLE `tbl_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_book_chapter`
--
ALTER TABLE `tbl_book_chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_continue_read`
--
ALTER TABLE `tbl_continue_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_earn_point`
--
ALTER TABLE `tbl_earn_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_general_setting`
--
ALTER TABLE `tbl_general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_magazine`
--
ALTER TABLE `tbl_magazine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_transaction`
--
ALTER TABLE `tbl_package_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_option`
--
ALTER TABLE `tbl_payment_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payout`
--
ALTER TABLE `tbl_payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating_magazine`
--
ALTER TABLE `tbl_rating_magazine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_smtp_setting`
--
ALTER TABLE `tbl_smtp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_notification_tracking`
--
ALTER TABLE `tbl_user_notification_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ads_banner`
--
ALTER TABLE `tbl_ads_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_author`
--
ALTER TABLE `tbl_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_bank_detail`
--
ALTER TABLE `tbl_bank_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bookmark`
--
ALTER TABLE `tbl_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_book_chapter`
--
ALTER TABLE `tbl_book_chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_continue_read`
--
ALTER TABLE `tbl_continue_read`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_earn_point`
--
ALTER TABLE `tbl_earn_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_general_setting`
--
ALTER TABLE `tbl_general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_magazine`
--
ALTER TABLE `tbl_magazine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_package_transaction`
--
ALTER TABLE `tbl_package_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_payment_option`
--
ALTER TABLE `tbl_payment_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_payout`
--
ALTER TABLE `tbl_payout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rating_magazine`
--
ALTER TABLE `tbl_rating_magazine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_smtp_setting`
--
ALTER TABLE `tbl_smtp_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_notification_tracking`
--
ALTER TABLE `tbl_user_notification_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
