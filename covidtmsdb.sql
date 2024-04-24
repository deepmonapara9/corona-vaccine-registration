-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 03:05 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `covidtmsdb`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbladmin`
--
CREATE TABLE
tbladmin (
  `ID` int (11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int (10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `tbladmin`
--
INSERT INTO
tbladmin (
  `ID`,
  `AdminName`,
  `AdminuserName`,
  `MobileNumber`,
  `Email`,
  `Password`,
  `AdminRegdate`
)
VALUES (
    1,
    'Admin',
    'admin',
    1234567890,
    'admin@gmail.com',
    'admin',
    '2021-04-19 18:30:00'
  );
-- --------------------------------------------------------
--
-- Table structure for table `tblpatients`
--
CREATE TABLE
tblpatients (
  `id` int (11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint (12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Center` varchar(50) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `tblpatients`
--
INSERT INTO
tblpatients (
  `id`,
  `FullName`,
  `MobileNumber`,
  `DateOfBirth`,
  `GovtIssuedId`,
  `GovtIssuedIdNo`,
  `FullAddress`,
  `State`,
  `RegistrationDate`,
  `Center`
)
VALUES
    (
      1,
      'Aman Sachla',
      9737639765,
      '2004-08-06',
      'Driving License',
      '342545445345',
      'Raiya Road',
      'Rajkot',
      '2024-02-27 17:31:22',
      'AIIMS'
    ),
    (
      2,
      'Vivek Ranpara',
      9979892919,
      '1990-05-09',
      'Pancard',
      'HHHGHGH8888jh',
      'Gundavadi',
      'Rajkot',
      '2024-01-12 18:04:57',
      'AIIMS'
    ),
    (
      3,
      'Ayush Radhanpara',
      8347414353,
      '2003-11-08',
      'Pancard',
      'DDDKJKJ454545H',
      'Gundavadi',
      'Rajkot',
      '2024-01-08 05:49:44',
      'AIIMS'
    ),
    (
      4,
      'Dev Rajyguru',
      9499718782,
      '2003-08-16',
      'PANCARD',
      'HJGGHG76767HGGH',
      'Raiya Road',
      'Rajkot',
      '2024-02-10 09:25:50',
      'AIIMS'
    );
-- --------------------------------------------------------
--
-- Table structure for table `tblphlebotomist`
--
CREATE TABLE
tblphlebotomist (
  `id` int (11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint (12) DEFAULT NULL,
  
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `tblphlebotomist`
--
INSERT INTO
tblphlebotomist (
  `id`,
  `EmpID`,
  `FullName`,
  `MobileNumber`,
  `RegDate`
)
VALUES (
    1,
    '12587493',
    'Amit Patel',
    9876543212,
    '2024-01-02 04:51:44'
  ),
  (
    2,
    '105202365',
    'Rahul Jogi',
    8529631470,
    '2024-01-02 04:52:06'
  ),
  (
    3,
    '10802364',
    'Sanjay Ahir',
    1234567890,
    '2024-01-02 09:34:11'
  );
-- --------------------------------------------------------
--
-- Table structure for table `tblreporttracking`
--
CREATE TABLE
tblreporttracking (
  `id` int (11) NOT NULL,
  `OrderNumber` bigint (40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int (5) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `tblreporttracking`
--
INSERT INTO
tblreporttracking (
  `id`,
  `OrderNumber`,
  `Remark`,
  `Status`,
  `PostingTime`,
  `RemarkBy`
)
VALUES 
    (
      1,
      450040675,
      'The Phlebotomist is on the way for collection.',
      'On the Way for Collection',
      '2024-2-27 04:36:22',
      2
    ),
    (
      2,
      450040675,
      'Sample collection.',
      'Sample Collected',
      '2024-01-12 19:15:25',
      2
    ),
    (
      3,
      450040675,
      'Sample sent to the lab.',
      'Sent to Lab',
      '2024-01-08 19:15:48',
      2
    ),
    (
      4,
      450040675,
      'Report uploaded.',
      'Delivered',
      '2023-02-10 19:20:20',
      2
    );
-- --------------------------------------------------------
--
-- Table structure for table `tbltestrecord`
--
CREATE TABLE tbltestrecord (
`id` int(11) NOT NULL,
`OrderNumber` bigint(14) DEFAULT NULL,
`PatientMobileNumber` bigint(14) DEFAULT NULL,
`Vaccine` varchar(100) DEFAULT NULL,
`TestTimeSlot` varchar(120) DEFAULT NULL,
`ReportStatus` varchar(100) DEFAULT NULL,
`FinalReport` varchar(150) DEFAULT NULL,
`ReportUploadTime` varchar(200) DEFAULT NULL,
`RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
`AssignedtoEmpId` varchar(150) DEFAULT NULL,
`AssigntoName` varchar(180) DEFAULT NULL,
`AssignedTime` varchar(100) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO tbltestrecord (
    `id`,
    `OrderNumber`,
    `PatientMobileNumber`,
    `Vaccine`,
    `TestTimeSlot`,
    `ReportStatus`,
    `FinalReport`,
    `ReportUploadTime`,
    `RegistrationDate`,
    `AssignedtoEmpId`,
    `AssigntoName`,
    `AssignedTime`
  )
VALUES (
    1,
    450040675,
    1234567890,
    'Antigen',
    '2021-05-01T04:05',
    'Delivered',
    '2c86e2aa7eb4cb4db70379e28fab9b521620331308.pdf',
    '07-05-2021 01:31:48 AM',
    '2024-02-27 17:31:23',
    '12587493',
    'Amit Patel',
    '06-05-2021 10:05:22 AM'
  ),
  (
    2,
    617325549,
    6547893210,
    'RT-PCR',
    '2021-05-01T05:10',
    'Delivered',
    '2c86e2aa7eb4cb4db70379e28fab9b521620363440.pdf',
    '07-05-2021 10:27:20 AM',
    '2024-01-12 18:04:58',
    '105202365',
    'Rahul Jogi',
    '07-05-2021 10:13:41 AM'
  ),
  (
    3,
    740138296,
    1234567890,
    'RT-PCR',
    '2021-05-05T14:40',
    'Assigned',
    NULL,
    NULL,
    '2024-01-08 19:10:30',
    '105202365',
    'Rahul Jogi',
    '07-05-2021 03:52:05 PM'
  ),
  (
    4,
    716060226,
    4598520125,
    'CB-NAAT',
    '2021-05-15T14:22',
    NULL,
    NULL,
    NULL,
    '2024-02-10 05:49:46',
    NULL,
    NULL,
    NULL
  );
--
-- Indexes for dumped tables
--
-- --------------------------------------------------------
--
-- Table structure for table `tblcenter`
--
CREATE TABLE
tblcenter (
  center_id INT PRIMARY KEY AUTO_INCREMENT,
  center_name VARCHAR(100) NOT NULL
);
--
-- Dumping data for table `tblcenter`
--
-- Inserting sample data into the vaccination_centers table
INSERT INTO tblcenter (center_name)
VALUES ('AIIMS'),
  ('Wockhart'),
  ('Sterling');
-- --------------------------------------------------------
--
-- Table structure for table `tblstate`
--
CREATE TABLE
tblstate (
  s_no INT AUTO_INCREMENT PRIMARY KEY,
  state_name VARCHAR(50) NOT NULL,
  total_cases INT NOT NULL
);
--
-- Dumping data for table `tblstate`
--
INSERT INTO
tblstate (state_name, total_cases)
VALUES ('Gujarat', 1292137),
  ('Maharashtra', 8176225),
  ('Rajasthan', 1326946),
  ('Assam', 746226),
  ('Kerala', 6917585),
  ('Punjab', 793769),
  ('Andaman and Nicobar', 10766),
  ('Andhra Pradesh', 2341084),
  ('Arunachal Pradesh', 67049),
  ('Bihar', 855478),
  ('Chandigarh', 100724);
-- --------------------------------------------------------
--
-- Table structure for table `tblvaccine`
--
CREATE TABLE
tblvaccine (
  id INT PRIMARY KEY,
  vaccine_name VARCHAR(255) NOT NULL
);
--
-- Dumping data for table `tblstate`
--
INSERT INTO
tblvaccine (id, vaccine_name)
VALUES (1, 'Covaxin'),
  (2, 'Sputinik -V'),
  (3, 'Janssen'),
  (4, 'ZyCoV-D'),
  (5, 'BBV154 (iNCOVACC)'),
  (6, 'COVISHIELD');
-- --------------------------------------------------------
--
-- Table structure for table `tblvisitors`
--

CREATE TABLE tblvisitors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--
-- Dumping data for table `tblstate`
--

INSERT INTO tblvisitors (timestamp)
VALUES (NOW());
-- --------------------------------------------------------
--
-- Table structure for table `tblregistration`
--

CREATE TABLE tblregistration (
  id INT AUTO_INCREMENT PRIMARY KEY,
  unique_id VARCHAR(32) NOT NULL,
  registration_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--
-- Dumping data for table `tblregistration`
--

INSERT INTO tblregistration (unique_id)
VALUES (REPLACE(UUID(), '-', ''));


--
-- Indexes for table `tbladmin`
--
ALTER TABLE tbladmin
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE tblpatients
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblphlebotomist`
--
ALTER TABLE tblphlebotomist
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE tblreporttracking
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE tbltestrecord
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE tbladmin
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE tblpatients
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblphlebotomist`
--
ALTER TABLE tblphlebotomist
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE tblreporttracking
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE tbltestrecord
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;




COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;