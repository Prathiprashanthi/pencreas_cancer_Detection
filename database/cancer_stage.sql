-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2023 at 10:48 AM
-- Server version: 10.4.10-MariaDB
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
-- Database: `cancer_stage`
--
CREATE DATABASE IF NOT EXISTS `cancer_stage` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cancer_stage`;

-- --------------------------------------------------------

--
-- Table structure for table `ada_algo`
--

DROP TABLE IF EXISTS `ada_algo`;
CREATE TABLE IF NOT EXISTS `ada_algo` (
  `XG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`XG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `all_users`
--

DROP TABLE IF EXISTS `all_users`;
CREATE TABLE IF NOT EXISTS `all_users` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Profile` varchar(100) NOT NULL,
  `User_Email` varchar(50) NOT NULL,
  `User_Status` varchar(10) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anm_algo`
--

DROP TABLE IF EXISTS `anm_algo`;
CREATE TABLE IF NOT EXISTS `anm_algo` (
  `ANM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`ANM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ann_algo`
--

DROP TABLE IF EXISTS `ann_algo`;
CREATE TABLE IF NOT EXISTS `ann_algo` (
  `ANN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`ANN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

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
(25, 'Can add last_login', 7, 'add_last_login'),
(26, 'Can change last_login', 7, 'change_last_login'),
(27, 'Can delete last_login', 7, 'delete_last_login'),
(28, 'Can view last_login', 7, 'view_last_login'),
(29, 'Can add predict_details', 8, 'add_predict_details'),
(30, 'Can change predict_details', 8, 'change_predict_details'),
(31, 'Can delete predict_details', 8, 'delete_predict_details'),
(32, 'Can view predict_details', 8, 'view_predict_details'),
(33, 'Can add user_details', 9, 'add_user_details'),
(34, 'Can change user_details', 9, 'change_user_details'),
(35, 'Can delete user_details', 9, 'delete_user_details'),
(36, 'Can view user_details', 9, 'view_user_details'),
(37, 'Can add ad a_algo', 10, 'add_ada_algo'),
(38, 'Can change ad a_algo', 10, 'change_ada_algo'),
(39, 'Can delete ad a_algo', 10, 'delete_ada_algo'),
(40, 'Can view ad a_algo', 10, 'view_ada_algo'),
(41, 'Can add all_users_model', 11, 'add_all_users_model'),
(42, 'Can change all_users_model', 11, 'change_all_users_model'),
(43, 'Can delete all_users_model', 11, 'delete_all_users_model'),
(44, 'Can view all_users_model', 11, 'view_all_users_model'),
(45, 'Can add an m_algo', 12, 'add_anm_algo'),
(46, 'Can change an m_algo', 12, 'change_anm_algo'),
(47, 'Can delete an m_algo', 12, 'delete_anm_algo'),
(48, 'Can view an m_algo', 12, 'view_anm_algo'),
(49, 'Can add an n_algo', 13, 'add_ann_algo'),
(50, 'Can change an n_algo', 13, 'change_ann_algo'),
(51, 'Can delete an n_algo', 13, 'delete_ann_algo'),
(52, 'Can view an n_algo', 13, 'view_ann_algo'),
(53, 'Can add dataset', 14, 'add_dataset'),
(54, 'Can change dataset', 14, 'change_dataset'),
(55, 'Can delete dataset', 14, 'delete_dataset'),
(56, 'Can view dataset', 14, 'view_dataset'),
(57, 'Can add d t_algo', 15, 'add_dt_algo'),
(58, 'Can change d t_algo', 15, 'change_dt_algo'),
(59, 'Can delete d t_algo', 15, 'delete_dt_algo'),
(60, 'Can view d t_algo', 15, 'view_dt_algo'),
(61, 'Can add kn n_algo', 16, 'add_knn_algo'),
(62, 'Can change kn n_algo', 16, 'change_knn_algo'),
(63, 'Can delete kn n_algo', 16, 'delete_knn_algo'),
(64, 'Can view kn n_algo', 16, 'view_knn_algo'),
(65, 'Can add logistic', 17, 'add_logistic'),
(66, 'Can change logistic', 17, 'change_logistic'),
(67, 'Can delete logistic', 17, 'delete_logistic'),
(68, 'Can view logistic', 17, 'view_logistic'),
(69, 'Can add random forest', 18, 'add_randomforest'),
(70, 'Can change random forest', 18, 'change_randomforest'),
(71, 'Can delete random forest', 18, 'delete_randomforest'),
(72, 'Can view random forest', 18, 'view_randomforest'),
(73, 'Can add sx m_algo', 19, 'add_sxm_algo'),
(74, 'Can change sx m_algo', 19, 'change_sxm_algo'),
(75, 'Can delete sx m_algo', 19, 'delete_sxm_algo'),
(76, 'Can view sx m_algo', 19, 'view_sxm_algo'),
(77, 'Can add upload_dataset_model', 20, 'add_upload_dataset_model'),
(78, 'Can change upload_dataset_model', 20, 'change_upload_dataset_model'),
(79, 'Can delete upload_dataset_model', 20, 'delete_upload_dataset_model'),
(80, 'Can view upload_dataset_model', 20, 'view_upload_dataset_model'),
(81, 'Can add x g_algo', 21, 'add_xg_algo'),
(82, 'Can change x g_algo', 21, 'change_xg_algo'),
(83, 'Can delete x g_algo', 21, 'delete_xg_algo'),
(84, 'Can view x g_algo', 21, 'view_xg_algo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
CREATE TABLE IF NOT EXISTS `dataset` (
  `DS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Age` int(11) NOT NULL,
  `Glucose` int(11) NOT NULL,
  `BloodPressure` int(11) NOT NULL,
  `SkinThickness` int(11) NOT NULL,
  `Insulin` int(11) NOT NULL,
  `BMI` int(11) NOT NULL,
  `DiabetesPedigreeFunction` int(11) NOT NULL,
  `Pregnancies` int(11) NOT NULL,
  PRIMARY KEY (`DS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'last_login'),
(8, 'userapp', 'predict_details'),
(9, 'userapp', 'user_details'),
(10, 'adminapp', 'ada_algo'),
(11, 'adminapp', 'all_users_model'),
(12, 'adminapp', 'anm_algo'),
(13, 'adminapp', 'ann_algo'),
(14, 'adminapp', 'dataset'),
(15, 'adminapp', 'dt_algo'),
(16, 'adminapp', 'knn_algo'),
(17, 'adminapp', 'logistic'),
(18, 'adminapp', 'randomforest'),
(19, 'adminapp', 'sxm_algo'),
(20, 'adminapp', 'upload_dataset_model'),
(21, 'adminapp', 'xg_algo');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-28 09:02:57.697110'),
(2, 'auth', '0001_initial', '2023-08-28 09:02:58.348474'),
(3, 'admin', '0001_initial', '2023-08-28 09:02:58.523950'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-28 09:02:58.536913'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-28 09:02:58.552874'),
(6, 'adminapp', '0001_initial', '2023-08-28 09:02:58.765304'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-08-28 09:02:58.925873'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-08-28 09:02:59.019623'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-08-28 09:02:59.096416'),
(10, 'auth', '0004_alter_user_username_opts', '2023-08-28 09:02:59.124342'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-08-28 09:02:59.193158'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-08-28 09:02:59.202136'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-08-28 09:02:59.219090'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-08-28 09:02:59.269954'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-08-28 09:02:59.349739'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-08-28 09:02:59.398609'),
(17, 'auth', '0011_update_proxy_permissions', '2023-08-28 09:02:59.438526'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-08-28 09:02:59.490363'),
(19, 'sessions', '0001_initial', '2023-08-28 09:02:59.584113'),
(20, 'userapp', '0001_initial', '2023-08-28 09:02:59.656918');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('zgmwvk01a8frk933w559s0j4ifv07eis', 'eyJVc2VyX2lkIjoxfQ:1qaZfM:6VmQUj3rCght-UDnHMCDdMtTZULZJWLHG8OvI0aLSJw', '2023-09-11 10:40:16.224639');

-- --------------------------------------------------------

--
-- Table structure for table `dt_algo`
--

DROP TABLE IF EXISTS `dt_algo`;
CREATE TABLE IF NOT EXISTS `dt_algo` (
  `DT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`DT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `knn_algo`
--

DROP TABLE IF EXISTS `knn_algo`;
CREATE TABLE IF NOT EXISTS `knn_algo` (
  `XG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`XG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `last_login`
--

DROP TABLE IF EXISTS `last_login`;
CREATE TABLE IF NOT EXISTS `last_login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Login_Time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logistic`
--

DROP TABLE IF EXISTS `logistic`;
CREATE TABLE IF NOT EXISTS `logistic` (
  `Logistic_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`Logistic_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `predict_detail`
--

DROP TABLE IF EXISTS `predict_detail`;
CREATE TABLE IF NOT EXISTS `predict_detail` (
  `predict_id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_1` varchar(60) DEFAULT NULL,
  `Field_2` varchar(60) DEFAULT NULL,
  `Field_3` varchar(60) DEFAULT NULL,
  `Field_4` varchar(60) DEFAULT NULL,
  `Field_5` varchar(60) DEFAULT NULL,
  `Field_6` varchar(60) DEFAULT NULL,
  `Field_7` varchar(60) DEFAULT NULL,
  `Field_8` varchar(60) DEFAULT NULL,
  `Field_9` varchar(60) DEFAULT NULL,
  `Field_10` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`predict_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `randomforest`
--

DROP TABLE IF EXISTS `randomforest`;
CREATE TABLE IF NOT EXISTS `randomforest` (
  `Random_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`Random_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sxm_algo`
--

DROP TABLE IF EXISTS `sxm_algo`;
CREATE TABLE IF NOT EXISTS `sxm_algo` (
  `SXM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`SXM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upload_dataset`
--

DROP TABLE IF EXISTS `upload_dataset`;
CREATE TABLE IF NOT EXISTS `upload_dataset` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `Dataset` varchar(100) DEFAULT NULL,
  `File_size` varchar(100) NOT NULL,
  `Date_Time` datetime(6) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE IF NOT EXISTS `user_detail` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Phone_Number` varchar(10) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Date_Time` datetime(6) DEFAULT NULL,
  `User_Status` varchar(50) DEFAULT NULL,
  `Otp_Num` int(11) DEFAULT NULL,
  `Otp_Status` varchar(60) DEFAULT NULL,
  `Last_Login_Time` time(6) DEFAULT NULL,
  `Last_Login_Date` date DEFAULT NULL,
  `No_Of_Times_Login` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`User_id`, `Full_name`, `Image`, `Email`, `Address`, `Age`, `Phone_Number`, `Password`, `Date_Time`, `User_Status`, `Otp_Num`, `Otp_Status`, `Last_Login_Time`, `Last_Login_Date`, `No_Of_Times_Login`) VALUES
(1, 'prashanthi', 'images/rose.jpg', 'pprashanthi169@gmail.com', '8-3-232/b/50/c/6 , venkatagiri, yousufguda , hyderabad', 24, '9949803766', 'Amma@123', '2023-08-28 10:40:16.211154', 'accepted', 4970, 'verified', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xg_algo`
--

DROP TABLE IF EXISTS `xg_algo`;
CREATE TABLE IF NOT EXISTS `xg_algo` (
  `XG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`XG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
