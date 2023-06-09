-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 01:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ldmon`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_types`
--

CREATE TABLE `add_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dept` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dept` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `floor_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`id`, `floor_name`, `location`) VALUES
(2, 'second', NULL),
(3, 'third', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iid_basic`
--

CREATE TABLE `iid_basic` (
  `id` int(11) NOT NULL,
  `iid` varchar(255) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `slno` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `total_nos` int(11) DEFAULT NULL,
  `instructor` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iid_manual`
--

CREATE TABLE `iid_manual` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `link_to_manual` varchar(255) DEFAULT NULL,
  `template_for_certification` varchar(255) DEFAULT NULL,
  `related_risk_warning` varchar(255) DEFAULT NULL,
  `sops_for_equipment` varchar(255) DEFAULT NULL,
  `equipment_troubleshooting_guides` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iid_prices`
--

CREATE TABLE `iid_prices` (
  `id` int(11) NOT NULL,
  `iid` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iid_pricing`
--

CREATE TABLE `iid_pricing` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `price_u1` decimal(10,2) DEFAULT NULL,
  `price_u2` decimal(10,2) DEFAULT NULL,
  `price_u3` decimal(10,2) DEFAULT NULL,
  `price_u4` decimal(10,2) DEFAULT NULL,
  `price_u5` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iid_spec`
--

CREATE TABLE `iid_spec` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `week_availability` int(11) DEFAULT NULL,
  `cycle_time` int(11) DEFAULT NULL,
  `gap_between_cycle` int(11) DEFAULT NULL,
  `cycles_per_day` int(11) DEFAULT NULL,
  `things_used_as_input_refuel` varchar(255) DEFAULT NULL,
  `unit_refuel_one_maintenance` decimal(10,2) DEFAULT NULL,
  `unit_used_per_cycle` varchar(255) DEFAULT NULL,
  `cycles_in_one_maintenance_period` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iid_vic`
--

CREATE TABLE `iid_vic` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `power_requirement` varchar(255) DEFAULT NULL,
  `peripheral_requirement` int(11) DEFAULT NULL,
  `gas_requirement` varchar(255) DEFAULT NULL,
  `any_base_req` varchar(255) DEFAULT NULL,
  `water_and_drainage_required` varchar(255) DEFAULT NULL,
  `furniture_or_closet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `representative` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_database`
--

CREATE TABLE `log_database` (
  `id` int(11) NOT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `operation` varchar(10) DEFAULT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `affected_rows` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_fac_cng_dept`
--

CREATE TABLE `log_fac_cng_dept` (
  `id` int(11) NOT NULL,
  `depid` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `vfrom` int(11) DEFAULT NULL,
  `vto` int(11) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_fac_cng_iid`
--

CREATE TABLE `log_fac_cng_iid` (
  `id` int(11) NOT NULL,
  `iid` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `vfrom` varchar(255) DEFAULT NULL,
  `vto` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_maintenance`
--

CREATE TABLE `log_maintenance` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `donby` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_prc_cng`
--

CREATE TABLE `log_prc_cng` (
  `id` int(11) NOT NULL,
  `iid` int(11) DEFAULT NULL,
  `utype` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `vfrom` decimal(10,2) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_refuel_fuel`
--

CREATE TABLE `log_refuel_fuel` (
  `id` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_refuel_iid`
--

CREATE TABLE `log_refuel_iid` (
  `id` int(11) NOT NULL,
  `iid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_refuel_uid`
--

CREATE TABLE `log_refuel_uid` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_room_cng`
--

CREATE TABLE `log_room_cng` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `vfrom` int(11) DEFAULT NULL,
  `vto` int(11) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_service`
--

CREATE TABLE `log_service` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_transaction`
--

CREATE TABLE `log_transaction` (
  `id` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `t_type` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_usage`
--

CREATE TABLE `log_usage` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `donby` int(11) DEFAULT NULL,
  `guide` int(11) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `usageid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_us_ver`
--

CREATE TABLE `log_us_ver` (
  `id` int(11) NOT NULL,
  `uname` text DEFAULT NULL,
  `utype` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL,
  `uinstid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dept` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peripherals`
--

CREATE TABLE `peripherals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `usedfor` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refuels`
--

CREATE TABLE `refuels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `incharge` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `for_instrument` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dept` int(11) DEFAULT NULL,
  `faculty` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `related` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `dept` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uid`
--

CREATE TABLE `uid` (
  `id` int(11) NOT NULL,
  `instrument` int(11) DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uid_dyna`
--

CREATE TABLE `uid_dyna` (
  `id` int(11) NOT NULL,
  `instrument_u` int(11) DEFAULT NULL,
  `last_maintenance_date` date DEFAULT NULL,
  `already_used_cycles` int(11) DEFAULT NULL,
  `remaining_cycles` int(11) DEFAULT NULL,
  `working_days_now` int(11) DEFAULT NULL,
  `next_maintenance_date` date DEFAULT NULL,
  `out_of_service` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uid_ot`
--

CREATE TABLE `uid_ot` (
  `id` int(11) NOT NULL,
  `instrument_u` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `warranty_status` varchar(255) DEFAULT NULL,
  `past_reports_of_malfunction` varchar(255) DEFAULT NULL,
  `any_other_emergency_guide` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_verification`
--

CREATE TABLE `user_verification` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `instituteid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_types`
--
ALTER TABLE `add_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept` (`dept`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hod` (`hod`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept` (`dept`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `iid_basic`
--
ALTER TABLE `iid_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department` (`department`),
  ADD KEY `category` (`category`),
  ADD KEY `company` (`company`),
  ADD KEY `instructor` (`instructor`);

--
-- Indexes for table `iid_manual`
--
ALTER TABLE `iid_manual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`);

--
-- Indexes for table `iid_prices`
--
ALTER TABLE `iid_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iid` (`iid`);

--
-- Indexes for table `iid_pricing`
--
ALTER TABLE `iid_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`);

--
-- Indexes for table `iid_spec`
--
ALTER TABLE `iid_spec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`);

--
-- Indexes for table `iid_vic`
--
ALTER TABLE `iid_vic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`),
  ADD KEY `peripheral_requirement` (`peripheral_requirement`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_database`
--
ALTER TABLE `log_database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_fac_cng_dept`
--
ALTER TABLE `log_fac_cng_dept`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depid` (`depid`),
  ADD KEY `vfrom` (`vfrom`),
  ADD KEY `vto` (`vto`);

--
-- Indexes for table `log_fac_cng_iid`
--
ALTER TABLE `log_fac_cng_iid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iid` (`iid`);

--
-- Indexes for table `log_maintenance`
--
ALTER TABLE `log_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`);

--
-- Indexes for table `log_prc_cng`
--
ALTER TABLE `log_prc_cng`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iid` (`iid`),
  ADD KEY `utype` (`utype`);

--
-- Indexes for table `log_refuel_fuel`
--
ALTER TABLE `log_refuel_fuel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `log_refuel_iid`
--
ALTER TABLE `log_refuel_iid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iid` (`iid`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `log_refuel_uid`
--
ALTER TABLE `log_refuel_uid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `log_room_cng`
--
ALTER TABLE `log_room_cng`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`),
  ADD KEY `vfrom` (`vfrom`),
  ADD KEY `vto` (`vto`);

--
-- Indexes for table `log_service`
--
ALTER TABLE `log_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`);

--
-- Indexes for table `log_transaction`
--
ALTER TABLE `log_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `log_usage`
--
ALTER TABLE `log_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`),
  ADD KEY `donby` (`donby`),
  ADD KEY `guide` (`guide`);

--
-- Indexes for table `log_us_ver`
--
ALTER TABLE `log_us_ver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uinstid` (`uinstid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept` (`dept`);

--
-- Indexes for table `peripherals`
--
ALTER TABLE `peripherals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refuels`
--
ALTER TABLE `refuels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `for_instrument` (`for_instrument`),
  ADD KEY `dept` (`dept`),
  ADD KEY `faculty` (`faculty`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floor` (`floor`),
  ADD KEY `dept` (`dept`);

--
-- Indexes for table `uid`
--
ALTER TABLE `uid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument` (`instrument`);

--
-- Indexes for table `uid_dyna`
--
ALTER TABLE `uid_dyna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument_u` (`instrument_u`);

--
-- Indexes for table `uid_ot`
--
ALTER TABLE `uid_ot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument_u` (`instrument_u`);

--
-- Indexes for table `user_verification`
--
ALTER TABLE `user_verification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_types`
--
ALTER TABLE `add_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iid_basic`
--
ALTER TABLE `iid_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iid_manual`
--
ALTER TABLE `iid_manual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iid_prices`
--
ALTER TABLE `iid_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iid_pricing`
--
ALTER TABLE `iid_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iid_spec`
--
ALTER TABLE `iid_spec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iid_vic`
--
ALTER TABLE `iid_vic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_database`
--
ALTER TABLE `log_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_fac_cng_dept`
--
ALTER TABLE `log_fac_cng_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_fac_cng_iid`
--
ALTER TABLE `log_fac_cng_iid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_maintenance`
--
ALTER TABLE `log_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_prc_cng`
--
ALTER TABLE `log_prc_cng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_refuel_fuel`
--
ALTER TABLE `log_refuel_fuel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_refuel_iid`
--
ALTER TABLE `log_refuel_iid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_refuel_uid`
--
ALTER TABLE `log_refuel_uid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_room_cng`
--
ALTER TABLE `log_room_cng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_service`
--
ALTER TABLE `log_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_transaction`
--
ALTER TABLE `log_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_usage`
--
ALTER TABLE `log_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_us_ver`
--
ALTER TABLE `log_us_ver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peripherals`
--
ALTER TABLE `peripherals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refuels`
--
ALTER TABLE `refuels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uid`
--
ALTER TABLE `uid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uid_dyna`
--
ALTER TABLE `uid_dyna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uid_ot`
--
ALTER TABLE `uid_ot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_verification`
--
ALTER TABLE `user_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `department` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`hod`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `department` (`id`);

--
-- Constraints for table `funds`
--
ALTER TABLE `funds`
  ADD CONSTRAINT `funds_ibfk_1` FOREIGN KEY (`account`) REFERENCES `members` (`id`);

--
-- Constraints for table `iid_basic`
--
ALTER TABLE `iid_basic`
  ADD CONSTRAINT `iid_basic_ibfk_1` FOREIGN KEY (`department`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `iid_basic_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `iid_basic_ibfk_3` FOREIGN KEY (`company`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `iid_basic_ibfk_4` FOREIGN KEY (`instructor`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `iid_manual`
--
ALTER TABLE `iid_manual`
  ADD CONSTRAINT `iid_manual_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `iid_basic` (`id`);

--
-- Constraints for table `iid_prices`
--
ALTER TABLE `iid_prices`
  ADD CONSTRAINT `iid_prices_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `iid_pricing`
--
ALTER TABLE `iid_pricing`
  ADD CONSTRAINT `iid_pricing_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `iid_basic` (`id`);

--
-- Constraints for table `iid_spec`
--
ALTER TABLE `iid_spec`
  ADD CONSTRAINT `iid_spec_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `iid_basic` (`id`);

--
-- Constraints for table `iid_vic`
--
ALTER TABLE `iid_vic`
  ADD CONSTRAINT `iid_vic_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `iid_basic` (`id`),
  ADD CONSTRAINT `iid_vic_ibfk_2` FOREIGN KEY (`peripheral_requirement`) REFERENCES `peripherals` (`id`);

--
-- Constraints for table `log_fac_cng_dept`
--
ALTER TABLE `log_fac_cng_dept`
  ADD CONSTRAINT `log_fac_cng_dept_ibfk_1` FOREIGN KEY (`depid`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `log_fac_cng_dept_ibfk_2` FOREIGN KEY (`vfrom`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `log_fac_cng_dept_ibfk_3` FOREIGN KEY (`vto`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `log_fac_cng_iid`
--
ALTER TABLE `log_fac_cng_iid`
  ADD CONSTRAINT `log_fac_cng_iid_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `log_maintenance`
--
ALTER TABLE `log_maintenance`
  ADD CONSTRAINT `log_maintenance_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `log_prc_cng`
--
ALTER TABLE `log_prc_cng`
  ADD CONSTRAINT `log_prc_cng_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `log_prc_cng_ibfk_2` FOREIGN KEY (`utype`) REFERENCES `iid_pricing` (`id`);

--
-- Constraints for table `log_refuel_fuel`
--
ALTER TABLE `log_refuel_fuel`
  ADD CONSTRAINT `log_refuel_fuel_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `refuels` (`id`);

--
-- Constraints for table `log_refuel_iid`
--
ALTER TABLE `log_refuel_iid`
  ADD CONSTRAINT `log_refuel_iid_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `log_refuel_iid_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `refuels` (`id`);

--
-- Constraints for table `log_refuel_uid`
--
ALTER TABLE `log_refuel_uid`
  ADD CONSTRAINT `log_refuel_uid_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `log_refuel_uid_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `refuels` (`id`);

--
-- Constraints for table `log_room_cng`
--
ALTER TABLE `log_room_cng`
  ADD CONSTRAINT `log_room_cng_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `log_room_cng_ibfk_2` FOREIGN KEY (`vfrom`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `log_room_cng_ibfk_3` FOREIGN KEY (`vto`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `log_service`
--
ALTER TABLE `log_service`
  ADD CONSTRAINT `log_service_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `log_transaction`
--
ALTER TABLE `log_transaction`
  ADD CONSTRAINT `log_transaction_ibfk_1` FOREIGN KEY (`account`) REFERENCES `members` (`id`);

--
-- Constraints for table `log_usage`
--
ALTER TABLE `log_usage`
  ADD CONSTRAINT `log_usage_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `log_usage_ibfk_2` FOREIGN KEY (`donby`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `log_usage_ibfk_3` FOREIGN KEY (`guide`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`uinstid`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `department` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`for_instrument`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`dept`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`floor`) REFERENCES `floor` (`id`),
  ADD CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`dept`) REFERENCES `department` (`id`);

--
-- Constraints for table `uid`
--
ALTER TABLE `uid`
  ADD CONSTRAINT `uid_ibfk_1` FOREIGN KEY (`instrument`) REFERENCES `iid_basic` (`id`);

--
-- Constraints for table `uid_dyna`
--
ALTER TABLE `uid_dyna`
  ADD CONSTRAINT `uid_dyna_ibfk_1` FOREIGN KEY (`instrument_u`) REFERENCES `uid` (`id`);

--
-- Constraints for table `uid_ot`
--
ALTER TABLE `uid_ot`
  ADD CONSTRAINT `uid_ot_ibfk_1` FOREIGN KEY (`instrument_u`) REFERENCES `uid` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
