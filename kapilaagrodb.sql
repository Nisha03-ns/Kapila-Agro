-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 03:39 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kapilaagrodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcustomer`
--

CREATE TABLE `addcustomer` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `MotherName` varchar(100) NOT NULL,
  `FatherName` varchar(100) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `Town` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `Investment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcustomer`
--

INSERT INTO `addcustomer` (`id`, `Name`, `Gender`, `MotherName`, `FatherName`, `Mobile`, `Email`, `Area`, `Town`, `District`, `State`, `Pincode`, `Investment`) VALUES
(13, 'Sakshi Raut', 'Female', 'Namita Raut', 'Santosh Raut', '7715008465', 'sakshi.raut@capgemini.com', 'Panvel', 'Panvel', 'Panvel', 'Maharastra', '410820', '500000'),
(14, 'Ashish Tiwari', 'Male', 'Seema Tiwari', 'Awinash Tripathi', '9140525315', 'chandrakant.tiwari@capgemini.com', 'Kanpur', 'Kanpur', 'Kanpur', 'U.P', '302033', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `add_approval_data`
--

CREATE TABLE `add_approval_data` (
  `id` int(100) NOT NULL,
  `serialNo` varchar(50) NOT NULL,
  `referenceNo` varchar(100) NOT NULL,
  `applicationNo` varchar(100) NOT NULL,
  `applicantName` varchar(100) NOT NULL,
  `applicantAddress` varchar(100) NOT NULL,
  `siteName` varchar(100) NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `accountType` varchar(50) NOT NULL,
  `branchAddress` varchar(100) NOT NULL,
  `accountNumber` varchar(100) NOT NULL,
  `IFSC` varchar(100) NOT NULL,
  `nameOfAccount` varchar(100) NOT NULL,
  `rent` varchar(100) NOT NULL,
  `advance` float NOT NULL,
  `agreementLetterNumber` varchar(100) NOT NULL,
  `Mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_approval_data`
--

INSERT INTO `add_approval_data` (`id`, `serialNo`, `referenceNo`, `applicationNo`, `applicantName`, `applicantAddress`, `siteName`, `bankName`, `accountType`, `branchAddress`, `accountNumber`, `IFSC`, `nameOfAccount`, `rent`, `advance`, `agreementLetterNumber`, `Mobile`) VALUES
(39, 'SER123', 'REF123', 'APP123', 'Sakshi Raut', 'Panvel, Mumbai', '1456-65, Panvel', 'State Bank of India', 'Current', 'Panvel', '1234567898711', 'SBIN001', 'Sakshi Raut', '15000', 10000, '98766', '7715008465');

-- --------------------------------------------------------

--
-- Table structure for table `approval_letter`
--

CREATE TABLE `approval_letter` (
  `id` int(11) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `CustomerPhone` varchar(100) DEFAULT NULL,
  `CustomerUsername` varchar(100) DEFAULT NULL,
  `CustomerDocument` varchar(100) DEFAULT NULL,
  `CustomerProposal` varchar(100) DEFAULT NULL,
  `InvoiceDate` varchar(100) DEFAULT NULL,
  `SerialNo` varchar(100) DEFAULT NULL,
  `ReferenceNo` varchar(100) DEFAULT NULL,
  `ApplicationNo` varchar(50) DEFAULT NULL,
  `SiteName` varchar(100) DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `BranchAddress` varchar(200) DEFAULT NULL,
  `AccountNo` varchar(100) DEFAULT NULL,
  `IfscCode` varchar(100) DEFAULT NULL,
  `NameofAccount` varchar(100) DEFAULT NULL,
  `Rent` varchar(100) DEFAULT NULL,
  `Advance` varchar(100) DEFAULT NULL,
  `AgreementLetterNo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoicedetail`
--

CREATE TABLE `invoicedetail` (
  `id` int(11) NOT NULL,
  `Company_Name` varchar(100) NOT NULL,
  `AccountType` varchar(100) NOT NULL,
  `AccountNumber` varchar(100) NOT NULL,
  `Bank` varchar(150) NOT NULL,
  `IFSC` varchar(150) NOT NULL,
  `Branch` varchar(150) NOT NULL,
  `BillTo` varchar(150) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Pincode` varchar(50) NOT NULL,
  `Invoice` varchar(50) NOT NULL,
  `InvoiceDate` date NOT NULL,
  `Status` varchar(150) NOT NULL,
  `InvestmentCharge` float NOT NULL,
  `SubTotal` float NOT NULL,
  `GST` float NOT NULL,
  `Total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicedetail`
--

INSERT INTO `invoicedetail` (`id`, `Company_Name`, `AccountType`, `AccountNumber`, `Bank`, `IFSC`, `Branch`, `BillTo`, `Mobile`, `Address`, `Pincode`, `Invoice`, `InvoiceDate`, `Status`, `InvestmentCharge`, `SubTotal`, `GST`, `Total`) VALUES
(21, 'Kapil Agro Private LTD', 'Saving', '1328429472984', 'State Bank of India', 'SBIN001', 'Pratap Nagar', 'Sakshi Raut', '7715008465', 'Panvel, Mumbai', '440114', '9289214', '2020-10-27', 'UNPAID', 50000, 50000, 50000.8, 5000.78);

-- --------------------------------------------------------

--
-- Table structure for table `kapilalogin`
--

CREATE TABLE `kapilalogin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kapilalogin`
--

INSERT INTO `kapilalogin` (`id`, `name`, `user_name`, `password`) VALUES
(1, 'Kapila', 'kapilaagro', 'kapilaagro8044');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcustomer`
--
ALTER TABLE `addcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_approval_data`
--
ALTER TABLE `add_approval_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approval_letter`
--
ALTER TABLE `approval_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoicedetail`
--
ALTER TABLE `invoicedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kapilalogin`
--
ALTER TABLE `kapilalogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcustomer`
--
ALTER TABLE `addcustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `add_approval_data`
--
ALTER TABLE `add_approval_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `invoicedetail`
--
ALTER TABLE `invoicedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `kapilalogin`
--
ALTER TABLE `kapilalogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
