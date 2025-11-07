-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2025 at 05:10 AM
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
-- Database: `student_placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `aptitude_questions`
--

CREATE TABLE `aptitude_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aptitude_questions`
--

INSERT INTO `aptitude_questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `difficulty`) VALUES
(1, 'If log10(2x) = 3, what is x?', '250', '500', '1000', '2000', 2, 'easy'),
(2, 'If 3^x = 81, what is x?', '2', '3', '4', '5', 3, 'easy'),
(3, 'A train 150 m long passes a pole in 10 seconds. What is its speed in km/h?', '54 km/h', '36 km/h', '48 km/h', '60 km/h', 1, 'easy'),
(4, 'If the ratio of two numbers is 3:4 and their sum is 56, what is the larger number?', '24', '32', '36', '40', 2, 'easy'),
(5, 'If x+y = 10 and x*y = 21, what is x^2 + y^2?', '29', '41', '58', '49', 1, 'easy'),
(6, 'A can do a job in 12 days and B in 18 days. If they work together, how many days to finish?', '6', '7.2', '8', '9', 2, 'easy'),
(7, 'If a 12% simple interest on a principal amounts to ₹360 in 3 years, what is the principal?', '₹1000', '₹1200', '₹900', '₹800', 3, 'easy'),
(8, 'Average of five consecutive odd numbers is 35. What is the smallest?', '29', '31', '33', '35', 2, 'easy'),
(9, 'If a number is increased by 25% and then decreased by 20%, net change is?', '0%', '5% decrease', '5% increase', '10% decrease', 1, 'easy'),
(10, 'If sin^2θ + cos^2θ = 1, then sin^2θ equals?', '1 − cos^2θ', 'cos^2θ', '1', '0', 1, 'easy'),
(11, 'A mixture has milk:water = 5:3. From 64 L mixture, how much water is present?', '16 L', '24 L', '32 L', '48 L', 3, 'easy'),
(12, 'If an article is marked at 25% above cost and sold at a 10% discount on marked price, profit% is?', '12.5%', '10%', '5%', '7.5%', 4, 'easy'),
(13, 'A man covers 60 km partly at 40 km/h and partly at 20 km/h for equal time. His average speed overall is?', '26.67 km/h', '30 km/h', '28 km/h', '32 km/h', 1, 'easy'),
(14, 'If the arithmetic mean of 4, 7, x is 8, what is x?', '11', '13', '9', '12', 2, 'easy'),
(15, 'If the sum of interior angles of a polygon is 1260°, how many sides does it have?', '7', '8', '9', '10', 3, 'easy'),
(16, 'If 20% of a number is 30, what is the number?', '150', '120', '140', '160', 2, 'easy'),
(17, 'If two consecutive integers multiply to 56, the integers are?', '7 and 8', '6 and 7', '8 and 9', '−7 and −8', 1, 'easy'),
(18, 'A shopkeeper gives two successive discounts 10% and 20%. Net discount is?', '28%', '30%', '27%', '26%', 3, 'easy'),
(19, 'If x/(x+1) = 2/3, find x.', '2', '3', '4', '1', 1, 'easy'),
(20, 'If (x − 1)^2 = 49, then sum of possible values of x is?', '−6', '0', '8', '14', 3, 'medium'),
(21, 'A and B invest in ratio 3:5. Profit after one year is ₹1600. What is A\'s share?', '₹600', '₹800', '₹700', '₹900', 1, 'medium'),
(22, 'If compound interest at 10% p.a. makes a principal P become 121P/100 in two years, what is P\'s annual rate? (approx)', '10%', '9%', '11%', '10.5%', 1, 'medium'),
(23, 'If the roots of x^2 − 5x + k = 0 are equal, k equals?', '6.25', '25', '12.5', '6', 4, 'medium'),
(24, 'A boat travels 30 km downstream in 2 hours and returns upstream in 5 hours. Speed of stream is?', '3 km/h', '2 km/h', '1.5 km/h', '2.5 km/h', 2, 'medium'),
(25, 'If probability of event A is 1/3 and B is 1/4 independent, probability both occur is?', '1/12', '7/12', '1/7', '1/6', 1, 'medium'),
(26, 'If log base 2 of x = 5, x equals?', '10', '32', '25', '64', 2, 'medium'),
(27, 'Sum of GP\'s first three terms is 21 and product is 216. Common ratio (positive) is?', '2', '3', '4', '1.5', 2, 'medium'),
(28, 'If 5 men can finish a work in 12 days, how many men needed to finish in 5 days?', '12', '15', '20', '25', 3, 'medium'),
(29, 'If matrix [[2,1],[1,2]] has determinant d, value of d is?', '3', '4', '2', '5', 1, 'medium'),
(30, 'If arithmetic progression has first term 3 and common difference 4, 10th term is?', '39', '40', '43', '35', 1, 'medium'),
(31, 'A box contains 5 red and 7 blue balls. Prob of drawing a red ball is?', '5/12', '7/12', '1/2', '5/7', 1, 'medium'),
(32, 'If a and b are positive and arithmetic mean = geometric mean, relation is?', 'a = b', 'a > b', 'a < b', 'No relation', 1, 'medium'),
(33, 'If two trains 100 m and 150 m cross in 10 s in opposite directions, and one speed is 36 km/h, the other speed is?', '54 km/h', '60 km/h', '72 km/h', '48 km/h', 3, 'medium'),
(34, 'If nC2 = 45, what is n?', '10', '15', '12', '9', 3, 'medium'),
(35, 'If x^3 − 27 = 0, real root is?', '3', '−3', '9', '27', 1, 'medium'),
(36, 'If a circle radius is r and chord subtends 60° at center, chord length is?', 'r', 'r√3', 'r/2', '2r', 2, 'medium'),
(37, 'If compound interest yields difference between CI and SI for 2 years at r% on principal P equal to P*r^2/100, that formula implies which approximation?', 'Exact', 'Approx for small r', 'Wrong', 'Only for r=10', 1, 'medium'),
(38, 'If intersection of sets A and B is empty, and |A|=5,|B|=4, max |A∪B| is?', '9', '1', '20', '0', 1, 'medium'),
(39, 'If 4x + 3y = 24 and x − y = 2, find x.', '3', '4', '5', '6', 3, 'medium'),
(40, 'If mean of dataset is 50 and one value 80 is removed from 10 elements, new mean is?', '46.7', '47.8', '48', '45', 1, 'medium'),
(41, 'If two angles of a triangle are 50° and 60°, third angle is?', '70°', '80°', '90°', '60°', 1, 'medium'),
(42, 'If 20 men can build a wall in 15 days, 30 men will take how many days (same work)?', '10', '12', '9', '8', 1, 'medium'),
(43, 'If x + 1/x = 6, x^2 + 1/x^2 equals?', '34', '35', '36', '32', 3, 'medium'),
(44, 'If the sum of digits of a two-digit number is 9 and the number is 9 times the units digit, the number is?', '18', '27', '36', '45', 2, 'medium'),
(45, 'In time-speed-distance, if average speed for equal distances is harmonic mean. For speeds 30 and 60, average is?', '40', '45', '38', '36', 4, 'medium'),
(46, 'If the polynomial (x−1)(x−2)(x−3) + 1 has integer root, it is?', '1', '2', '3', 'None', 4, 'medium'),
(47, 'If an investment triples in 10 years at compound interest, approximate annual rate is?', '11.6%', '12%', '10%', '9%', 1, 'medium'),
(48, 'If sum of reciprocals of two numbers is 1 and one number is 2, other number is?', '2', '1', '−2', '∞', 2, 'medium'),
(49, 'If a number is divisible by 9, sum of digits is?', 'Multiple of 9', 'Multiple of 3', 'Prime', 'Even', 1, 'medium'),
(50, 'If the average of five numbers is 36 and the average of the first four is 32, the fifth number is?', '48', '50', '52', '54', 3, 'hard'),
(51, 'The difference between the compound and simple interest on ₹12,000 at 10% for 2 years is?', '₹120', '₹130', '₹140', '₹150', 1, 'hard'),
(52, 'If logₓ16 = 4, the value of x is?', '2', '4', '8', '16', 1, 'hard'),
(53, 'A train 300 m long crosses a platform twice its length in 40 s. Speed of the train?', '54 km/h', '72 km/h', '81 km/h', '90 km/h', 2, 'hard'),
(54, 'If A and B together can do a work in 12 days, B and C in 16 days, C and A in 24 days, how long will A alone take?', '24 days', '36 days', '48 days', '60 days', 3, 'hard'),
(55, 'The sum of three consecutive even numbers is 222. The smallest number is?', '70', '72', '74', '76', 2, 'hard'),
(56, 'A cylinder’s radius is increased by 20% and height decreased by 10%. Percentage change in volume?', '6% increase', '8% increase', '10% increase', '12% increase', 3, 'hard'),
(57, 'The ratio of present ages of father and son is 7:3. After 5 years the ratio becomes 2:1. Father’s present age?', '35', '40', '45', '50', 2, 'hard'),
(58, 'If (1 + r/100)³ = 1.331, the rate r is?', '10%', '11%', '12%', '13%', 1, 'hard'),
(59, 'A man rows 24 km downstream in 6 h and returns upstream in 12 h. Find speed of the stream.', '1 km/h', '2 km/h', '3 km/h', '4 km/h', 2, 'hard'),
(60, 'The average of first n natural numbers is?', '(n + 1)/2', 'n/2', '(n − 1)/2', 'n + 2', 1, 'hard'),
(61, 'The smallest number which when divided by 12, 18, 21 leaves remainder 3 each time is?', '363', '375', '381', '387', 1, 'hard'),
(62, 'If √(x + 9) − √x = 3, find x.', '0', '3', '4', '9', 1, 'hard'),
(63, 'A and B together can do a piece of work in 10 days. A is 50% more efficient than B. A alone can do it in?', '15 days', '20 days', '25 days', '30 days', 1, 'hard'),
(64, 'If x + 1/x = 3, find x³ + 1/x³.', '24', '27', '30', '33', 2, 'hard'),
(65, 'A sum of money becomes 4 times in 10 years. At what annual compound rate will it become 8 times?', '13%', '15%', '17%', '18%', 2, 'hard'),
(66, 'The compound interest on ₹5,000 for 2 years at 5% p.a. is?', '₹512.5', '₹525', '₹505', '₹500', 1, 'hard'),
(67, 'If x² + y² = 25 and xy = 12, then x − y = ?', '1', '2', '3', '4', 2, 'hard'),
(68, 'A shopkeeper marks goods 40% above cost and allows 10% discount. His profit % is?', '26%', '27%', '28%', '30%', 1, 'hard'),
(69, 'If log₁₀(x + 9) = 2, find x.', '91', '90', '89', '99', 2, 'hard'),
(70, 'A number between 20 and 30 is divided by 5 leaving 4 remainder and by 7 leaving 6 remainder. The number is?', '24', '26', '27', '29', 3, 'hard'),
(71, 'If (x − 1)(x − 2)(x − 3)(x − 4) = 120, then x = ?', '5', '6', '7', '8', 2, 'hard'),
(72, 'A tank can be filled by a tap in 12 hours and emptied by another in 8 hours. If both open together, time to fill the tank?', '24 hours', '48 hours', '96 hours', 'Never', 3, 'hard'),
(73, 'A person sells an article at 20% profit. Had he sold it for ₹10 less, profit would be 10%. Find CP.', '₹90', '₹100', '₹110', '₹120', 2, 'hard'),
(74, 'The difference between 2/3 of a number and 3/4 of it is 12. Find the number.', '72', '96', '108', '120', 1, 'hard'),
(75, 'If sinA = 3/5, find tanA.', '3/4', '4/3', '5/4', '3/5', 1, 'hard'),
(76, 'The sum of squares of three consecutive odd numbers is 3657. Find the numbers.', '35, 37, 39', '37, 39, 41', '39, 41, 43', '41, 43, 45', 3, 'hard'),
(77, 'A can do work in 20 days, B in 30 days, C in 40 days. All three work for 5 days, then A leaves. Remaining work done in?', '9 days', '10 days', '11 days', '12 days', 2, 'hard'),
(78, 'If (x − 1)/(x + 1) = 1/2, find x.', '2', '3', '4', '1', 2, 'hard'),
(79, 'If a:b = 2:3 and b:c = 4:5, then a:c = ?', '8:15', '4:5', '6:5', '3:5', 1, 'hard'),
(80, 'A can finish work in 10 days, B in 20 days. They start together but B leaves after 4 days. Remaining work by A in?', '3 days', '4 days', '5 days', '6 days', 3, 'hard'),
(81, 'The average of 10 numbers is 40. If each number is multiplied by 2, new average is?', '40', '60', '70', '80', 4, 'hard'),
(82, 'If a number is 20% less than another, the second is how much % more than the first?', '20%', '25%', '30%', '15%', 2, 'hard'),
(83, 'If log₁₀2 = 0.3010, log₁₀3 = 0.4771, find log₁₀54.', '1.7323', '1.7321', '1.732', '1.733', 2, 'hard'),
(84, 'If a, b, c are in A.P. then b − a = c − b. If a = 3 and c = 11, find b.', '6', '7', '8', '9', 2, 'hard'),
(85, 'The least number which when divided by 8, 9, 10, 11 leaves 7 as remainder is?', '887', '967', '967', '987', 4, 'hard'),
(86, 'If nC3 = 84, then n = ?', '8', '9', '10', '11', 3, 'hard'),
(87, 'The cost of 5 pens and 4 pencils is ₹36. Cost of 3 pens and 2 pencils is ₹20. Find cost of 1 pen.', '₹4', '₹5', '₹6', '₹7', 3, 'hard'),
(88, 'If the average of three consecutive multiples of 5 is 45, find the smallest.', '35', '40', '45', '50', 2, 'hard'),
(89, 'A train passes a stationary man in 10 s and a platform of length 200 m in 20 s. Find train length.', '100 m', '150 m', '200 m', '250 m', 2, 'hard'),
(90, 'If x + 1/x = 4, then x² + 1/x² = ?', '14', '15', '16', '17', 1, 'hard'),
(91, 'The average of 11 results is 50. If the highest and lowest are removed, average of remaining 9 is 49. Sum of extremes = ?', '100', '108', '110', '112', 2, 'hard'),
(92, 'If 5x + 4y = 9 and 4x + 5y = 9, find x + y.', '2', '3', '4', '5', 1, 'hard'),
(93, 'If (x + 1)² − (x − 1)² = 24, find x.', '5', '6', '7', '8', 2, 'hard'),
(94, 'If (3/5) of a number is 24, then the number is?', '36', '38', '40', '42', 3, 'hard'),
(95, 'If the sum of two numbers is 12 and their product is 35, find numbers.', '5 and 7', '4 and 8', '6 and 6', '3 and 9', 1, 'hard'),
(96, 'If a:b = 2:5 and b:c = 3:4, then a:c = ?', '3:10', '6:10', '8:15', '9:20', 1, 'hard'),
(97, 'A car travels first half distance at 60 km/h and second half at 90 km/h. Average speed?', '70', '72', '75', '78', 3, 'hard'),
(98, 'If the average of 4, 8, 12, x is 10, then x = ?', '12', '14', '16', '18', 2, 'hard');

-- --------------------------------------------------------

--
-- Table structure for table `exam_status`
--

CREATE TABLE `exam_status` (
  `id` int(11) NOT NULL DEFAULT 1,
  `is_released` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_status`
--

INSERT INTO `exam_status` (`id`, `is_released`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `general_awareness_questions`
--

CREATE TABLE `general_awareness_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_awareness_questions`
--

INSERT INTO `general_awareness_questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `difficulty`) VALUES
(1, 'Who is known as the Father of the Indian Constitution?', 'B. R. Ambedkar', 'M. K. Gandhi', 'Jawaharlal Nehru', 'Sardar Patel', 1, 'easy'),
(2, 'Which is the smallest continent in the world?', 'Australia', 'Europe', 'Antarctica', 'South America', 1, 'easy'),
(3, 'Who was the first woman Prime Minister of India?', 'Pratibha Patil', 'Indira Gandhi', 'Sonia Gandhi', 'Sarojini Naidu', 2, 'easy'),
(4, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Venus', 'Jupiter', 2, 'easy'),
(5, 'Who wrote the national anthem of India?', 'Rabindranath Tagore', 'Bankim Chandra Chatterjee', 'Aurobindo Ghosh', 'Subhash Chandra Bose', 1, 'easy'),
(6, 'Which gas is essential for photosynthesis?', 'Carbon Dioxide', 'Oxygen', 'Hydrogen', 'Nitrogen', 1, 'easy'),
(7, 'The currency of Japan is?', 'Won', 'Yuan', 'Yen', 'Dollar', 3, 'easy'),
(8, 'Who discovered penicillin?', 'Alexander Fleming', 'Marie Curie', 'Isaac Newton', 'Albert Einstein', 1, 'easy'),
(9, 'Which Indian city is known as the Silicon Valley of India?', 'Mumbai', 'Chennai', 'Bengaluru', 'Hyderabad', 3, 'easy'),
(10, 'Who was the first President of the United States?', 'Abraham Lincoln', 'Thomas Jefferson', 'George Washington', 'John Adams', 3, 'easy'),
(11, 'The term \"GDP\" stands for?', 'Gross Domestic Product', 'Global Domestic Production', 'Gross Development Plan', 'General Domestic Product', 1, 'medium'),
(12, 'Which organization publishes the \"World Economic Outlook\" report?', 'IMF', 'World Bank', 'UNDP', 'WTO', 1, 'medium'),
(13, 'Who appoints the Chief Justice of India?', 'President of India', 'Prime Minister', 'Lok Sabha', 'Rajya Sabha', 1, 'medium'),
(14, 'The headquarter of UNESCO is located in?', 'Geneva', 'New York', 'Paris', 'London', 3, 'medium'),
(15, 'Which Indian missile is nicknamed \"Agni\"?', 'Surface-to-Air Missile', 'Ballistic Missile', 'Cruise Missile', 'Anti-Tank Missile', 2, 'medium'),
(16, 'Which country hosted the G20 Summit 2023?', 'India', 'Brazil', 'Japan', 'Indonesia', 1, 'medium'),
(17, 'The Nobel Peace Prize is awarded in which city?', 'Oslo', 'Stockholm', 'Geneva', 'Paris', 1, 'medium'),
(18, 'Which Article of the Indian Constitution deals with Fundamental Rights?', '12-35', '36-51', '51A', '368', 1, 'medium'),
(19, 'Which Indian river is called \"Sorrow of Bihar\"?', 'Kosi', 'Ganga', 'Yamuna', 'Ghaghra', 1, 'medium'),
(20, 'Which Mughal emperor built the Red Fort?', 'Akbar', 'Jahangir', 'Shah Jahan', 'Aurangzeb', 3, 'medium'),
(21, 'Who invented the telephone?', 'Thomas Edison', 'Alexander Graham Bell', 'Nikola Tesla', 'James Watt', 2, 'medium'),
(22, 'In which year was the United Nations established?', '1940', '1945', '1950', '1955', 2, 'medium'),
(23, 'Which country has the world’s largest proven oil reserves?', 'Saudi Arabia', 'Venezuela', 'Russia', 'USA', 2, 'medium'),
(24, 'Who was the first Indian to go to space?', 'Kalpana Chawla', 'Rakesh Sharma', 'Sunita Williams', 'Vikram Sarabhai', 2, 'medium'),
(25, 'Which metal is liquid at room temperature?', 'Mercury', 'Sodium', 'Lead', 'Zinc', 1, 'medium'),
(26, 'Which day is celebrated as World Environment Day?', 'June 5', 'April 22', 'March 21', 'May 5', 1, 'medium'),
(27, 'Who is the author of \"The Discovery of India\"?', 'Jawaharlal Nehru', 'Mahatma Gandhi', 'Rabindranath Tagore', 'Sarojini Naidu', 1, 'medium'),
(28, 'Where is India’s first nuclear power plant located?', 'Kakrapar', 'Tarapur', 'Kalpakkam', 'Narora', 2, 'medium'),
(29, 'The highest civilian award in India is?', 'Padma Shri', 'Padma Bhushan', 'Padma Vibhushan', 'Bharat Ratna', 4, 'medium'),
(30, 'The Green Revolution in India began in?', '1965', '1970', '1975', '1980', 1, 'medium'),
(31, 'Who designed the Indian national flag?', 'Pingali Venkayya', 'Rabindranath Tagore', 'Jawaharlal Nehru', 'Bipin Chandra Pal', 1, 'medium'),
(32, 'Which Indian city is known as the \"City of Lakes\"?', 'Udaipur', 'Bhopal', 'Nainital', 'Srinagar', 1, 'medium'),
(33, 'The \"Pink City\" of India is?', 'Agra', 'Jaipur', 'Jodhpur', 'Lucknow', 2, 'medium'),
(34, 'The \"Father of Green Revolution in India\" is?', 'Verghese Kurien', 'M. S. Swaminathan', 'C. Subramaniam', 'Norman Borlaug', 2, 'medium'),
(35, 'Which Indian state has the longest coastline?', 'Maharashtra', 'Gujarat', 'Tamil Nadu', 'Andhra Pradesh', 2, 'medium'),
(36, 'Which is the largest desert in the world?', 'Sahara', 'Arabian', 'Gobi', 'Thar', 1, 'medium'),
(37, 'Which Indian satellite was first launched successfully in 1980?', 'Aryabhata', 'Bhaskara', 'Rohini', 'INSAT', 3, 'medium'),
(38, 'The first woman IPS officer in India was?', 'Kiran Bedi', 'Vimla Mehra', 'Sanjukta Parashar', 'Ritu Arora', 1, 'medium'),
(39, 'Which Indian state is the largest producer of tea?', 'Assam', 'West Bengal', 'Kerala', 'Sikkim', 1, 'medium'),
(40, 'Who founded the Indian National Congress?', 'A. O. Hume', 'Dadabhai Naoroji', 'Gopal Krishna Gokhale', 'Bal Gangadhar Tilak', 1, 'medium'),
(41, 'The Bretton Woods Conference led to the formation of?', 'IMF and World Bank', 'UN and WHO', 'WTO and ILO', 'OECD and NATO', 1, 'hard'),
(42, 'Which Indian Chief Justice became the first woman CJI?', 'Leila Seth', 'Indu Malhotra', 'Fathima Beevi', 'D. Y. Chandrachud', 3, 'hard'),
(43, 'The term \"Quantitative Easing\" is associated with?', 'Fiscal Policy', 'Monetary Policy', 'Trade Policy', 'Budget Deficit', 2, 'hard'),
(44, 'Which country launched the \"Digital Silk Road\" under its Belt and Road Initiative?', 'India', 'China', 'Japan', 'Russia', 2, 'hard'),
(45, 'Who authored the book \"Sapiens: A Brief History of Humankind\"?', 'Yuval Noah Harari', 'Stephen Hawking', 'Jared Diamond', 'Richard Dawkins', 1, 'hard'),
(46, 'Which Article provides for the impeachment of the Indian President?', 'Article 61', 'Article 74', 'Article 80', 'Article 124', 1, 'hard'),
(47, 'The Finance Commission of India is appointed every?', '3 years', '4 years', '5 years', '6 years', 3, 'hard'),
(48, 'Which gas causes the greenhouse effect the most?', 'CO₂', 'CH₄', 'O₃', 'N₂O', 1, 'hard'),
(49, 'In which year was GST implemented in India?', '2015', '2016', '2017', '2018', 3, 'hard'),
(50, 'Who coined the term \"Non-Aligned Movement\"?', 'Jawaharlal Nehru', 'Josip Broz Tito', 'Sukarno', 'Gamal Abdel Nasser', 1, 'hard'),
(51, 'Which city hosts the headquarters of the International Court of Justice?', 'Geneva', 'The Hague', 'Brussels', 'New York', 2, 'hard'),
(52, 'Which country recently adopted Bitcoin as legal tender?', 'El Salvador', 'Panama', 'Ecuador', 'Venezuela', 1, 'hard'),
(53, 'The \"Carbon Border Adjustment Mechanism\" is proposed by?', 'EU', 'USA', 'China', 'India', 1, 'hard'),
(54, 'Which Indian economist served as the IMF Chief Economist?', 'Raghuram Rajan', 'Arvind Subramanian', 'Kaushik Basu', 'Montek Singh Ahluwalia', 1, 'hard'),
(55, 'The \"Blue Revolution\" relates to?', 'Fish production', 'Water conservation', 'Industrial development', 'Energy generation', 1, 'hard'),
(56, 'Which treaty established the European Union?', 'Treaty of Paris', 'Treaty of Rome', 'Maastricht Treaty', 'Lisbon Treaty', 3, 'hard'),
(57, 'The \"Law of Diminishing Returns\" was first formulated by?', 'David Ricardo', 'Adam Smith', 'John Keynes', 'Milton Friedman', 1, 'hard'),
(58, 'Which schedule of the Indian Constitution deals with Panchayati Raj?', '10th', '11th', '12th', '9th', 2, 'hard'),
(59, 'The Global Innovation Index is published by?', 'WIPO', 'World Bank', 'IMF', 'UNESCO', 1, 'hard'),
(60, 'Which Indian port is a natural harbor?', 'Visakhapatnam', 'Kandla', 'Tuticorin', 'Haldia', 1, 'hard'),
(61, 'Which of the following is not a Maharatna PSU?', 'ONGC', 'BHEL', 'SAIL', 'IOCL', 2, 'hard'),
(62, 'Which is the world’s largest producer of rare earth metals?', 'USA', 'China', 'Australia', 'Russia', 2, 'hard'),
(63, 'The \"2+2 Dialogue\" in foreign policy context is between India and?', 'USA', 'UK', 'Russia', 'Japan', 1, 'hard'),
(64, 'In which year was SEBI established?', '1988', '1990', '1992', '1995', 1, 'hard'),
(65, 'Which country exited the European Union in 2020?', 'Italy', 'Germany', 'UK', 'Spain', 3, 'hard'),
(66, 'Who was India’s first Deputy Prime Minister?', 'Sardar Vallabhbhai Patel', 'Dr. Rajendra Prasad', 'C. Rajagopalachari', 'Jawaharlal Nehru', 1, 'hard'),
(67, 'Which state has the highest literacy rate in India?', 'Kerala', 'Goa', 'Mizoram', 'Sikkim', 1, 'hard'),
(68, 'Who is known as the Missile Man of India?', 'Vikram Sarabhai', 'A. P. J. Abdul Kalam', 'Homi Bhabha', 'Rakesh Sharma', 2, 'hard'),
(69, 'Which Indian Act introduced dyarchy in provinces?', 'Government of India Act 1919', 'Act of 1858', 'Act of 1935', 'Indian Councils Act 1909', 1, 'hard'),
(70, 'Which Indian personality received the Bharat Ratna posthumously in 1992?', 'B. R. Ambedkar', 'Rajiv Gandhi', 'Vallabhbhai Patel', 'Mother Teresa', 2, 'hard'),
(71, 'The \"Preamble\" of the Constitution was inspired by?', 'US Constitution', 'UK Constitution', 'French Constitution', 'Irish Constitution', 3, 'hard'),
(72, 'Which is the first Indian company to cross $200 billion market capitalization?', 'TCS', 'Reliance Industries', 'Infosys', 'HDFC Bank', 2, 'hard'),
(73, 'Which Indian city has the highest GDP contribution?', 'Mumbai', 'Delhi', 'Bengaluru', 'Hyderabad', 1, 'hard'),
(74, 'The \"Paris Agreement\" deals with?', 'Trade', 'Climate Change', 'Nuclear Disarmament', 'Refugees', 2, 'hard'),
(75, 'India’s first mission to the Moon was?', 'Chandrayaan-1', 'Chandrayaan-2', 'Mangalyaan', 'Aditya L1', 1, 'hard'),
(76, 'The human brain’s decision-making region is?', 'Cerebellum', 'Cerebrum', 'Medulla', 'Hypothalamus', 2, 'hard'),
(77, 'The 42nd Amendment is known as?', 'Mini Constitution', 'Emergency Bill', 'Judicial Reform', 'None', 1, 'hard'),
(78, 'The \"Bandung Conference\" was related to?', 'Non-Alignment', 'UN Charter', 'Cold War', 'Trade', 1, 'hard'),
(79, 'India’s longest-serving Prime Minister after Nehru was?', 'Indira Gandhi', 'Atal Bihari Vajpayee', 'Manmohan Singh', 'Narendra Modi', 1, 'hard'),
(80, 'Which Indian organization developed the supercomputer PARAM?', 'DRDO', 'C-DAC', 'ISRO', 'BARC', 2, 'hard'),
(81, 'The \"Chipko Movement\" began in?', 'Uttarakhand', 'Rajasthan', 'Madhya Pradesh', 'Gujarat', 1, 'hard'),
(82, 'Which Act abolished the East India Company’s rule?', 'Government of India Act 1858', 'Charter Act 1813', 'Regulating Act 1773', 'Pitt’s India Act', 1, 'hard'),
(83, 'Who invented the WWW (World Wide Web)?', 'Tim Berners-Lee', 'Bill Gates', 'Alan Turing', 'Steve Jobs', 1, 'hard'),
(84, 'The Indian Ocean Rim Association was established in?', '1990', '1992', '1995', '1997', 4, 'hard'),
(85, 'The UN Human Rights Council is based in?', 'Paris', 'New York', 'Geneva', 'Brussels', 3, 'hard'),
(86, 'India’s first nuclear explosion took place in?', '1971', '1974', '1975', '1977', 2, 'hard'),
(87, 'The Right to Property was removed from Fundamental Rights by which amendment?', '42nd', '44th', '52nd', '62nd', 2, 'hard'),
(88, 'The largest coral reef system in the world is?', 'Great Barrier Reef', 'Red Sea Reef', 'Andaman Reef', 'Java Reef', 1, 'hard'),
(89, 'Which country became the 31st member of NATO in 2024?', 'Finland', 'Sweden', 'Ukraine', 'Georgia', 2, 'hard'),
(90, 'The Global Biodiversity Framework was adopted at which COP summit?', 'COP15, Montreal', 'COP26, Glasgow', 'COP27, Sharm el-Sheikh', 'COP28, Dubai', 1, 'hard'),
(91, 'Which city will host the 2032 Summer Olympics?', 'Paris', 'Los Angeles', 'Brisbane', 'Madrid', 3, 'hard'),
(92, 'Which Indian state has implemented the “Mission LiFE” climate initiative first?', 'Gujarat', 'Kerala', 'Uttarakhand', 'Sikkim', 3, 'hard'),
(93, 'The “Digital Public Infrastructure for Agriculture” (DPIA) initiative was launched by?', 'NITI Aayog', 'Ministry of Agriculture', 'FAO', 'IMF', 1, 'hard'),
(94, 'Who became the first female UN Secretary-General?', 'No woman yet', 'Christine Lagarde', 'Angela Merkel', 'Jacinda Ardern', 1, 'hard'),
(95, 'The Artemis Program is associated with?', 'NASA’s lunar missions', 'ESA Mars project', 'ISRO’s Gaganyaan', 'SpaceX Starship', 1, 'hard'),
(96, 'Which organization releases the “World Press Freedom Index”?', 'UNESCO', 'Reporters Without Borders', 'Transparency International', 'Reuters Foundation', 2, 'hard'),
(97, 'Which country leads the BRICS New Development Bank?', 'Brazil', 'China', 'India', 'South Africa', 2, 'hard'),
(98, 'The first hydrogen train in India was launched in which year?', '2023', '2024', '2022', '2025', 1, 'hard'),
(99, 'Which nation introduced the concept of “Digital Nomad Visa” first?', 'Estonia', 'Portugal', 'Dubai (UAE)', 'South Korea', 1, 'hard'),
(100, 'The term “One Health Approach” refers to?', 'Integration of human, animal, environmental health', 'Universal Health Coverage', 'Ayushman Bharat Scheme', 'AI-based health analytics', 1, 'hard'),
(101, 'The “Global South Summit 2023” was hosted virtually by?', 'India', 'Brazil', 'South Africa', 'Indonesia', 1, 'hard'),
(102, 'Which Indian airport became carbon-neutral first?', 'Delhi IGI', 'Cochin International', 'Mumbai CSMIA', 'Hyderabad RGIA', 2, 'hard'),
(103, 'The “Blue Economy Policy Framework 2025” relates to?', 'Sustainable use of ocean resources', 'Water management', 'Hydroelectric projects', 'Tourism', 1, 'hard'),
(104, 'Which company became the first Indian firm to export semiconductor chips?', 'Vedanta-Foxconn', 'Tata Electronics', 'ISMC', 'Micron India', 4, 'hard'),
(105, 'The “LiFE” mission launched by India stands for?', 'Lifestyle for Environment', 'Living in Freedom & Ecology', 'Life for Energy', 'Living Future Ecosystem', 1, 'hard'),
(106, 'Which Indian state produces the highest amount of renewable energy?', 'Tamil Nadu', 'Gujarat', 'Karnataka', 'Rajasthan', 3, 'hard'),
(107, 'Which organization released the “Global Cybersecurity Index”?', 'ITU', 'World Bank', 'UNESCO', 'WIPO', 1, 'hard'),
(108, 'Who is the author of “The Climate Casino”?', 'William Nordhaus', 'Amartya Sen', 'Joseph Stiglitz', 'Paul Krugman', 1, 'hard'),
(109, 'The Indo-Pacific Economic Framework (IPEF) was launched by?', 'India', 'USA', 'Australia', 'Japan', 2, 'hard'),
(110, 'The “Kigali Amendment” is associated with?', 'Phasing down HFCs', 'Ozone layer protection', 'Carbon credits', 'Methane regulation', 1, 'hard'),
(111, 'Which Indian company became the first to join the global RE100 initiative?', 'Infosys', 'TCS', 'Wipro', 'Reliance Industries', 1, 'hard'),
(112, 'Which country has the world’s largest floating solar plant?', 'China', 'India', 'Japan', 'Singapore', 1, 'hard'),
(113, 'Which Indian state launched the “Mukhyamantri Shuddha Jal Yojana”?', 'Bihar', 'Rajasthan', 'Madhya Pradesh', 'Odisha', 4, 'hard'),
(114, 'Which country topped the Global Innovation Index 2024?', 'USA', 'Switzerland', 'Sweden', 'Singapore', 2, 'hard'),
(115, 'The “One Sun One World One Grid” initiative is spearheaded by?', 'India', 'France', 'UAE', 'UK', 1, 'hard'),
(116, 'The term “Carbon Neutral by 2070” refers to India’s target announced at?', 'COP26 Glasgow', 'COP27 Egypt', 'G20 Delhi', 'COP28 Dubai', 1, 'hard'),
(117, 'Which agency publishes the “World Happiness Report”?', 'UN Sustainable Development Solutions Network', 'World Bank', 'OECD', 'UNDP', 1, 'hard'),
(118, 'Which Indian bank launched the “Green Deposit Scheme” first?', 'HDFC Bank', 'ICICI Bank', 'SBI', 'Yes Bank', 4, 'hard'),
(119, 'The “Fourth Industrial Revolution Centre” of India is located in?', 'Mumbai', 'Bengaluru', 'Hyderabad', 'New Delhi', 1, 'hard'),
(120, 'Which country passed the world’s first “AI Safety Bill”?', 'UK', 'USA', 'China', 'Canada', 1, 'hard'),
(121, 'Which organization publishes the “World Energy Outlook”?', 'IEA', 'OPEC', 'IMF', 'UNEP', 1, 'hard'),
(122, 'Which Indian city hosts the headquarters of ISRO?', 'Chennai', 'Hyderabad', 'Bengaluru', 'Thiruvananthapuram', 3, 'hard'),
(123, 'The “Green Credit Programme” in India is implemented under?', 'Environment Protection Act 1986', 'Forest Conservation Act', 'Wildlife Protection Act', 'Biodiversity Act', 1, 'hard'),
(124, 'Which is the first country to grant citizenship to a robot?', 'Saudi Arabia', 'Japan', 'USA', 'South Korea', 1, 'hard'),
(125, 'The “International Solar Alliance” was launched by?', 'India and France', 'India and Germany', 'India and UK', 'India and UAE', 1, 'hard'),
(126, 'Which Indian city hosted the first Global Biofuels Alliance summit 2023?', 'New Delhi', 'Mumbai', 'Hyderabad', 'Pune', 1, 'hard'),
(127, 'The “Loss and Damage Fund” was adopted at?', 'COP27 Sharm el-Sheikh', 'COP26 Glasgow', 'COP28 Dubai', 'Rio+20', 1, 'hard'),
(128, 'Which report measures gender parity worldwide?', 'Global Gender Gap Report', 'Human Development Report', 'Global Competitiveness Report', 'World Happiness Report', 1, 'hard'),
(129, 'The “Indo-Pacific Maritime Domain Awareness Initiative” was announced by?', 'Quad Nations', 'BRICS', 'ASEAN', 'SAARC', 1, 'hard'),
(130, 'Which Indian space mission achieved soft-landing near lunar south pole?', 'Chandrayaan-3', 'Chandrayaan-2', 'Mangalyaan', 'Aditya-L1', 1, 'hard'),
(131, 'The “Digital India Act 2024” aims to replace?', 'IT Act 2000', 'Cyber Security Act 2005', 'Data Protection Bill 2019', 'E-Commerce Policy 2018', 1, 'hard'),
(132, 'Who was elected as the first woman President of the Indian Olympic Association?', 'P. T. Usha', 'Mary Kom', 'Anju Bobby George', 'Koneru Humpy', 1, 'hard'),
(133, 'Which institution developed India’s indigenous 5G Test Bed?', 'IIT Madras', 'IIT Delhi', 'IISc Bangalore', 'DRDO', 1, 'hard'),
(134, 'The “World Migration Report” is published by?', 'IOM', 'UNHCR', 'UNDP', 'ILO', 1, 'hard'),
(135, 'The “AI4All Global Summit” 2024 was hosted by?', 'Geneva', 'Dubai', 'New York', 'Bengaluru', 2, 'hard'),
(136, 'Which state inaugurated India’s first AI-based traffic management system?', 'Delhi', 'Maharashtra', 'Telangana', 'Karnataka', 3, 'hard'),
(137, 'The “Digital Personal Data Protection Act 2023” replaced?', 'Information Technology Act 2000 clauses', 'RTI Act', 'Cyber Law 2008', 'IT (Amendment) Rules 2011', 1, 'hard'),
(138, 'Which summit launched the “Global Biofuels Alliance”?', 'G20 Delhi Summit 2023', 'COP28 Dubai', 'BRICS Summit 2023', 'ASEAN Summit 2024', 1, 'hard');

-- --------------------------------------------------------

--
-- Table structure for table `programming_questions`
--

CREATE TABLE `programming_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programming_questions`
--

INSERT INTO `programming_questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `difficulty`) VALUES
(1, 'Which of the following is not a programming language?', 'Python', 'HTML', 'Java', 'C++', 2, 'easy'),
(2, 'Which keyword is used to define a function in Python?', 'function', 'def', 'func', 'lambda', 2, 'easy'),
(3, 'What is the default file extension for Java source files?', '.java', '.class', '.jar', '.js', 1, 'easy'),
(4, 'Which symbol is used for comments in Python?', '//', '#', '--', '/* */', 2, 'easy'),
(5, 'Which language is primarily used for Android development?', 'Swift', 'Java', 'C#', 'Ruby', 2, 'easy'),
(6, 'Which of these is a dynamically typed language?', 'Java', 'C', 'Python', 'C++', 3, 'easy'),
(7, 'What is the output of print(2**3) in Python?', '6', '8', '9', '16', 2, 'easy'),
(8, 'Which keyword is used to declare a constant in Java?', 'const', 'constant', 'final', 'static', 3, 'easy'),
(9, 'Which company developed Java?', 'Google', 'Microsoft', 'Sun Microsystems', 'IBM', 3, 'easy'),
(10, 'Which method is used to start a thread in Java?', 'run()', 'start()', 'execute()', 'begin()', 2, 'easy'),
(11, 'Which character is used for array indexing in most languages?', '{}', '()', '[]', '<>', 3, 'easy'),
(12, 'Which data structure uses FIFO?', 'Stack', 'Queue', 'Tree', 'Graph', 2, 'easy'),
(13, 'Which keyword exits from a loop in Python?', 'continue', 'break', 'stop', 'exit', 2, 'easy'),
(14, 'Which operator is used for string concatenation in Java?', '+', '++', '&', '.', 1, 'easy'),
(15, 'Which function is used to read input in Python 3?', 'scan()', 'input()', 'read()', 'gets()', 2, 'easy'),
(16, 'What does CSS stand for?', 'Cascading Style Sheets', 'Creative Style Syntax', 'Computer Style Sheets', 'Coded Style Sheets', 1, 'easy'),
(17, 'What does SQL stand for?', 'Structured Query Language', 'Standard Query List', 'Simple Query Language', 'System Query Language', 1, 'easy'),
(18, 'Which keyword is used for inheritance in Python?', 'inherits', 'extends', 'super', 'class', 4, 'easy'),
(19, 'Which symbol denotes a pointer in C?', '*', '&', '#', '@', 1, 'easy'),
(20, 'Which HTML tag is used for JavaScript code?', '<script>', '<js>', '<code>', '<javascript>', 1, 'easy'),
(21, 'Which company developed C#?', 'Oracle', 'Google', 'Microsoft', 'IBM', 3, 'easy'),
(22, 'Which keyword is used to create a class in Java?', 'struct', 'define', 'class', 'object', 3, 'easy'),
(23, 'Which method is the entry point in a Java program?', 'start()', 'init()', 'main()', 'run()', 3, 'easy'),
(24, 'What is the output of 10/3 in Python 3?', '3', '3.0', '3.33', 'Error', 3, 'easy'),
(25, 'Which of the following is NOT an OOP concept?', 'Encapsulation', 'Polymorphism', 'Inheritance', 'Compilation', 4, 'easy'),
(26, 'Which keyword is used for exception handling in Python?', 'try', 'catch', 'except', 'throw', 3, 'easy'),
(27, 'Which function is used to calculate length in Python?', 'size()', 'len()', 'length()', 'count()', 2, 'easy'),
(28, 'Which of these is a Python web framework?', 'Django', 'Laravel', 'Spring', 'React', 1, 'easy'),
(29, 'What does API stand for?', 'Application Programming Interface', 'Advanced Programming Integration', 'Applied Program Interface', 'Automated Programming Instruction', 1, 'easy'),
(30, 'Which of these is a NoSQL database?', 'MySQL', 'MongoDB', 'Oracle', 'PostgreSQL', 2, 'easy'),
(31, 'What is the time complexity of binary search?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(1)', 2, 'medium'),
(32, 'Which data structure is used for implementing recursion?', 'Queue', 'Stack', 'Array', 'Linked List', 2, 'medium'),
(33, 'What is the output of sorted([3,1,2]) in Python?', '[3,2,1]', '[1,2,3]', '(1,2,3)', '{1,2,3}', 2, 'medium'),
(34, 'Which sorting algorithm has the best average case?', 'Quick Sort', 'Merge Sort', 'Bubble Sort', 'Selection Sort', 2, 'medium'),
(35, 'Which keyword in Java is used to prevent inheritance?', 'static', 'final', 'sealed', 'const', 2, 'medium'),
(36, 'What is the size of an int in Java?', '2 bytes', '4 bytes', '8 bytes', 'Depends on OS', 2, 'medium'),
(37, 'Which collection in Java does not allow duplicates?', 'List', 'Set', 'Map', 'Queue', 2, 'medium'),
(38, 'In Python, what is the type of range(5)?', 'list', 'tuple', 'range', 'generator', 3, 'medium'),
(39, 'Which of these is a linear data structure?', 'Tree', 'Graph', 'Stack', 'Hash Table', 3, 'medium'),
(40, 'Which SQL clause is used to filter records?', 'ORDER BY', 'GROUP BY', 'HAVING', 'WHERE', 4, 'medium'),
(41, 'Which of these is an immutable type in Python?', 'list', 'dict', 'tuple', 'set', 3, 'medium'),
(42, 'What is the default port for HTTP?', '80', '443', '21', '8080', 1, 'medium'),
(43, 'Which algorithm is used in Dijkstra’s shortest path?', 'Dynamic Programming', 'Greedy', 'Divide and Conquer', 'Backtracking', 2, 'medium'),
(44, 'What does JVM stand for?', 'Java Virtual Machine', 'Java Variable Method', 'Java Verified Machine', 'Java Visual Manager', 1, 'medium'),
(45, 'Which of these is a checked exception in Java?', 'IOException', 'RuntimeException', 'NullPointerException', 'ArithmeticException', 1, 'medium'),
(46, 'What does REST stand for?', 'Representational State Transfer', 'Remote Execution Service Transfer', 'Random State Transition', 'Reliable Secure Transfer', 1, 'medium'),
(47, 'Which operator is overloaded by default in Python?', '+', '=', '()', '{}', 3, 'medium'),
(48, 'What is the worst-case complexity of Quick Sort?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(n^2)', 4, 'medium'),
(49, 'What is GIL in Python?', 'Global Interpreter Lock', 'General Integration Library', 'Graphical Interface Layer', 'Generic Instruction Loader', 1, 'medium'),
(50, 'What does ACID in databases stand for?', 'Atomicity, Consistency, Isolation, Durability', 'Accuracy, Control, Isolation, Data', 'Atomicity, Control, Integrity, Data', 'Access, Control, Integrity, Durability', 1, 'medium'),
(51, 'What is the time complexity of inserting into a balanced binary search tree?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 2, 'hard'),
(52, 'Which scheduling algorithm may cause starvation?', 'FCFS', 'SJF', 'Round Robin', 'Priority', 2, 'hard'),
(53, 'What is the time complexity of matrix multiplication using Strassen’s algorithm?', 'O(n^2)', 'O(n^2.81)', 'O(n^3)', 'O(n log n)', 2, 'hard'),
(54, 'Which of these problems is NP-complete?', 'Sorting', 'Traveling Salesman Problem', 'Binary Search', 'Matrix Multiplication', 2, 'hard'),
(55, 'What is the maximum recursion depth in Python by default?', '500', '1000', '2000', 'Unlimited', 2, 'hard'),
(56, 'Which garbage collection algorithm does JVM primarily use?', 'Reference Counting', 'Mark and Sweep', 'Copy Collection', 'Stop and Copy', 2, 'hard'),
(57, 'What is the output of 0.1 + 0.2 == 0.3 in Python?', 'True', 'False', 'Error', 'None', 2, 'hard'),
(58, 'Which design pattern ensures only one instance of a class?', 'Factory', 'Singleton', 'Observer', 'Decorator', 2, 'hard'),
(59, 'Which is the fastest algorithm for finding strongly connected components?', 'Tarjan’s Algorithm', 'Kosaraju’s Algorithm', 'Floyd-Warshall', 'Dijkstra’s Algorithm', 1, 'hard'),
(60, 'Which of these is a self-balancing binary search tree?', 'AVL Tree', 'Binary Heap', 'B Tree', 'Segment Tree', 1, 'hard'),
(61, 'What is the complexity of Dijkstra’s algorithm with Fibonacci Heap?', 'O(V^2)', 'O(E log V)', 'O(V log V + E)', 'O(E + V log V)', 4, 'hard'),
(62, 'Which SQL isolation level prevents dirty reads?', 'Read Uncommitted', 'Read Committed', 'Repeatable Read', 'Serializable', 2, 'hard'),
(63, 'What does CAP theorem stand for?', 'Consistency, Availability, Partition tolerance', 'Control, Access, Partition', 'Cache, API, Partition', 'Consistency, Accuracy, Performance', 1, 'hard'),
(64, 'Which memory allocation algorithm can cause external fragmentation?', 'Paging', 'Segmentation', 'Slab Allocation', 'Buddy System', 2, 'hard'),
(65, 'What is the worst case time complexity of building a heap?', 'O(n)', 'O(n log n)', 'O(log n)', 'O(n^2)', 1, 'hard'),
(66, 'Which scheduling algorithm guarantees no starvation?', 'Round Robin', 'Priority', 'SJF', 'FCFS', 1, 'hard'),
(67, 'Which consistency model is the strongest?', 'Eventual Consistency', 'Causal Consistency', 'Sequential Consistency', 'Linearizability', 4, 'hard'),
(68, 'Which type of join can cause a Cartesian product?', 'INNER JOIN', 'FULL JOIN', 'CROSS JOIN', 'LEFT JOIN', 3, 'hard'),
(69, 'Which lock mode allows multiple transactions to read but not write?', 'Exclusive', 'Shared', 'Update', 'Intent', 2, 'hard'),
(70, 'Which hashing technique resolves collisions using linked lists?', 'Linear Probing', 'Quadratic Probing', 'Chaining', 'Double Hashing', 3, 'hard'),
(71, 'Which data structure is used in implementing LRU cache?', 'Stack', 'Queue', 'HashMap + Doubly Linked List', 'Array', 3, 'hard'),
(72, 'What is the amortized complexity of splay tree operations?', 'O(n)', 'O(log n)', 'O(1)', 'O(n log n)', 2, 'hard'),
(73, 'Which compression algorithm is used in Gzip?', 'LZW', 'Huffman', 'DEFLATE', 'Burrows-Wheeler', 3, 'hard'),
(74, 'Which language introduced the concept of Generics?', 'Java', 'C++', 'Ada', 'C#', 3, 'hard'),
(75, 'What is the main difference between optimistic and pessimistic locking?', 'Deadlock', 'Concurrency Control Method', 'Data Model', 'Indexing', 2, 'hard'),
(76, 'Which algorithm is used in Git for object storage?', 'SHA-1', 'MD5', 'SHA-256', 'CRC32', 1, 'hard'),
(77, 'Which method in Java’s Object class is used for cloning?', 'copy()', 'clone()', 'replicate()', 'duplicate()', 2, 'hard'),
(78, 'Which algorithm is best for detecting deadlock?', 'Banker’s Algorithm', 'DFS-based Cycle Detection', 'FIFO', 'Greedy', 2, 'hard'),
(79, 'Which design principle states “Program to an interface, not an implementation”?', 'Liskov Substitution', 'Dependency Inversion', 'Open-Closed', 'Interface Segregation', 2, 'hard'),
(80, 'What is the maximum number of keys in a B-Tree of order m?', 'm', 'm-1', 'm+1', '2m', 2, 'hard'),
(81, 'What is the time complexity of building a suffix array?', 'O(n)', 'O(n log n)', 'O(n^2)', 'O(log n)', 2, 'hard'),
(82, 'Which database system supports MVCC?', 'MySQL (InnoDB)', 'Redis', 'MongoDB', 'Neo4j', 1, 'hard'),
(83, 'Which cache replacement policy is used in CPUs?', 'FIFO', 'LRU', 'MRU', 'Random', 2, 'hard'),
(84, 'Which network protocol is used by Docker for container communication?', 'TCP', 'UDP', 'gRPC', 'HTTP', 1, 'hard'),
(85, 'Which lock granularity is most fine-grained?', 'Row-level', 'Page-level', 'Table-level', 'Database-level', 1, 'hard'),
(86, 'Which algorithm is used in RSA encryption?', 'Elliptic Curve', 'Modular Exponentiation', 'Discrete Logarithm', 'AES', 2, 'hard'),
(87, 'Which optimization technique is used in compilers to reduce code size?', 'Loop Unrolling', 'Inlining', 'Constant Folding', 'Peephole Optimization', 4, 'hard'),
(88, 'Which feature does NOT belong to reactive programming?', 'Asynchronous', 'Event-driven', 'Synchronous', 'Non-blocking', 3, 'hard'),
(89, 'Which scheduler selects the process with the shortest next CPU burst?', 'FCFS', 'SJF', 'Round Robin', 'Priority', 2, 'hard'),
(90, 'Which index type is commonly used in relational databases?', 'Hash Index', 'B-Tree Index', 'Bitmap Index', 'All of the above', 4, 'hard'),
(91, 'Which protocol does REST APIs commonly use?', 'SMTP', 'HTTP', 'FTP', 'SNMP', 2, 'hard'),
(92, 'What is the default garbage collection algorithm in Python?', 'Mark and Sweep', 'Reference Counting', 'Generational GC', 'Stop the World', 3, 'hard'),
(93, 'Which technique is used to prevent SQL injection?', 'Prepared Statements', 'String Concatenation', 'Dynamic Queries', 'Manual Parsing', 1, 'hard'),
(94, 'Which type of memory is fastest?', 'DRAM', 'SRAM', 'Flash', 'Cache', 4, 'hard'),
(95, 'What is the space complexity of Depth First Search?', 'O(n)', 'O(log n)', 'O(n + e)', 'O(1)', 3, 'hard'),
(96, 'Which algorithm is used in blockchain for consensus?', 'Proof of Work', 'Round Robin', 'Dijkstra', 'Quorum', 1, 'hard'),
(97, 'Which pattern is used in Spring Framework for object creation?', 'Singleton', 'Factory', 'Prototype', 'All of the above', 4, 'hard'),
(98, 'What is the main advantage of tail recursion?', 'Improves Readability', 'Optimized for Memory', 'Faster Compilation', 'Type Safety', 2, 'hard'),
(99, 'Which operation on a Red-Black Tree maintains balance?', 'Insertion', 'Deletion', 'Rotation', 'Traversal', 3, 'hard'),
(100, 'Which algorithm does Git use for merging?', 'Three-way Merge', 'Two-way Merge', 'Fast Forward Merge', 'Rebase Merge', 1, 'hard'),
(101, 'What is the output of `print(2**3**2)` in Python?', '512', '64', '256', '16', 1, 'hard'),
(102, 'Which of these is NOT a feature of OOP?', 'Encapsulation', 'Polymorphism', 'Abstraction', 'Compilation', 4, 'medium'),
(103, 'What is the time complexity of inserting into a hash table (average case)?', 'O(n)', 'O(log n)', 'O(1)', 'O(n log n)', 3, 'hard'),
(104, 'Which sorting algorithm is stable?', 'Quick Sort', 'Merge Sort', 'Heap Sort', 'Selection Sort', 2, 'hard'),
(105, 'What will `list(\"abc\")` return in Python?', '[\"abc\"]', '[\"a\",\"b\",\"c\"]', '[a,b,c]', 'Error', 2, 'easy'),
(106, 'What is the default access modifier for class members in Java?', 'public', 'private', 'protected', 'package-private', 4, 'medium'),
(107, 'What is the difference between deep copy and shallow copy in Python?', 'No difference', 'Shallow copies nested objects, deep does not', 'Deep copies nested objects, shallow does not', 'Deep copy is faster', 3, 'hard'),
(108, 'Which of these data structures uses FIFO?', 'Stack', 'Queue', 'Heap', 'Tree', 2, 'easy'),
(109, 'Which operator is overloaded in Python for `len()`?', '__len__', '__count__', '__size__', '__length__', 1, 'hard'),
(110, 'What is a dangling pointer in C?', 'Pointer not declared', 'Pointer pointing to freed memory', 'Pointer to NULL', 'Pointer in loop', 2, 'hard'),
(111, 'What is the output of `print(bool(\"False\"))` in Python?', 'True', 'False', 'Error', 'None', 1, 'medium'),
(112, 'Which of these languages does NOT support garbage collection?', 'Java', 'Python', 'C', 'C#', 3, 'easy'),
(113, 'Which keyword in Java is used to inherit a class?', 'this', 'extends', 'super', 'implements', 2, 'medium'),
(114, 'What does the `volatile` keyword indicate in Java?', 'Immutable variable', 'Variable stored in cache', 'Variable accessed by multiple threads', 'Local variable', 3, 'hard'),
(115, 'What is the complexity of searching in a balanced binary search tree?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(1)', 2, 'medium'),
(116, 'Which Python method is used to compare objects for equality?', '__eq__', '__cmp__', '__compare__', '__equal__', 1, 'hard'),
(117, 'What will happen if you call `join()` without starting a thread in Java?', 'Exception', 'Deadlock', 'Nothing', 'Infinite loop', 1, 'hard'),
(118, 'What does `yield` do in Python?', 'Terminates function', 'Creates a generator', 'Returns a value permanently', 'Pauses the program', 2, 'medium'),
(119, 'Which algorithm is used in Python’s `sort()` internally?', 'Quick Sort', 'Merge Sort', 'Timsort', 'Heap Sort', 3, 'hard'),
(120, 'What is a monad in functional programming?', 'A class', 'A type constructor with bind operations', 'A linked list', 'A closure', 2, 'hard'),
(121, 'Which design pattern ensures a class has only one instance?', 'Factory', 'Singleton', 'Builder', 'Prototype', 2, 'medium'),
(122, 'What is tail recursion?', 'Recursion at the start', 'Recursion where last call returns itself', 'Recursion where recursive call is the last statement', 'Recursion in loops', 3, 'hard'),
(123, 'What is the output of `2 << 3` in C?', '16', '8', '4', '10', 1, 'hard'),
(124, 'What does `map()` return in Python 3?', 'List', 'Tuple', 'Map object (iterator)', 'Dictionary', 3, 'medium'),
(125, 'Which HTTP status code means \"Method Not Allowed\"?', '403', '405', '500', '401', 2, 'hard'),
(126, 'What is memoization?', 'Caching results of function calls', 'Sorting technique', 'Garbage collection', 'Loop optimization', 1, 'hard'),
(127, 'Which of these is NOT immutable in Python?', 'tuple', 'frozenset', 'list', 'str', 3, 'easy'),
(128, 'What is the purpose of the `finally` block in Java?', 'Handle exceptions', 'Always execute cleanup code', 'Catch runtime errors', 'Terminate program', 2, 'medium'),
(129, 'What is the output of `\"\".join([\"a\",\"b\",\"c\"])`?', 'abc', 'a b c', '[\"a\",\"b\",\"c\"]', 'Error', 1, 'easy'),
(130, 'Which algorithm uses a divide-and-conquer approach?', 'Bubble Sort', 'Merge Sort', 'Selection Sort', 'Counting Sort', 2, 'medium'),
(131, 'What is the difference between `==` and `is` in Python?', 'Both check equality', '`==` checks identity, `is` checks value', '`==` checks value, `is` checks identity', 'No difference', 3, 'hard'),
(132, 'What is the space complexity of DFS using recursion?', 'O(V+E)', 'O(V)', 'O(E)', 'O(1)', 2, 'hard'),
(133, 'What is an anonymous class in Java?', 'Class without a constructor', 'Class without a name defined inline', 'Class with no methods', 'Class declared abstract', 2, 'hard'),
(134, 'What is the main feature of dynamic typing in Python?', 'Variables must declare type', 'Type checked at runtime', 'Type checked at compile time', 'No types exist', 2, 'medium'),
(135, 'What is the default encoding in Python 3?', 'ASCII', 'UTF-8', 'ISO-8859-1', 'Unicode', 2, 'hard'),
(136, 'What will happen if you compare a string and integer in Python 3?', 'Returns False', 'Throws TypeError', 'Returns True', 'Converts integer to string', 2, 'hard'),
(137, 'Which design pattern provides a simplified interface to a complex system?', 'Builder', 'Facade', 'Adapter', 'Decorator', 2, 'hard'),
(138, 'What is the difference between pass by value and pass by reference?', 'Java uses pass by reference', 'Python uses pass by reference', 'C++ uses pass by value only', 'Pass by value copies, reference shares the address', 4, 'hard'),
(139, 'What is a generator expression in Python?', 'A tuple comprehension', 'An iterator created using parentheses', 'A lambda function', 'A list comprehension', 2, 'medium'),
(140, 'Which operator is overloaded for `+` in Python?', '__plus__', '__add__', '__sum__', '__append__', 2, 'hard'),
(141, 'What is the difference between `deepcopy` and `copy.copy()`?', 'copy.copy creates independent nested objects', 'deepcopy creates independent nested objects', 'No difference', 'deepcopy is faster', 2, 'hard'),
(142, 'Which of these data structures has amortized O(1) insertion?', 'Linked List', 'Array', 'HashMap', 'Binary Search Tree', 3, 'hard'),
(143, 'Which keyword in Python is used to create an iterator?', 'yield', 'return', 'async', 'await', 1, 'medium'),
(144, 'What will be the result of `bool([])` in Python?', 'True', 'False', 'None', 'Error', 2, 'easy'),
(145, 'What is duck typing in Python?', 'Type checking at compile time', 'Type checking at runtime', 'Object’s suitability determined by methods it defines', 'Strict type enforcement', 3, 'hard'),
(146, 'What is the complexity of inserting into a binary heap?', 'O(n)', 'O(log n)', 'O(1)', 'O(n log n)', 2, 'hard'),
(147, 'What is the purpose of the `super()` function in Python?', 'Create superclass', 'Call parent class constructor or method', 'Import superclass', 'Override methods', 2, 'medium'),
(148, 'What is currying in programming?', 'Combining functions', 'Transforming function so it takes one argument at a time', 'Using lambdas', 'Partial evaluation', 2, 'hard'),
(149, 'What is the difference between static and dynamic binding?', 'Static occurs at runtime', 'Dynamic occurs at compile time', 'Static occurs at compile time, dynamic at runtime', 'No difference', 3, 'hard'),
(150, 'What does GIL stand for in Python?', 'Global Instance Lock', 'Global Interpreter Lock', 'General Interpreter Loader', 'Global Initialization Level', 2, 'hard'),
(151, 'Which keyword is used to define a function in Python?', 'def', 'function', 'lambda', 'define', 1, 'easy'),
(152, 'Which of the following is not a primitive data type in Java?', 'int', 'boolean', 'String', 'float', 3, 'easy'),
(153, 'Which operator is used to access members of a structure in C?', '.', '->', '::', ':', 1, 'easy'),
(154, 'What does HTML stand for?', 'Hyper Text Markup Language', 'HighText Machine Language', 'Hyper Tabular Markup Language', 'None', 1, 'easy'),
(155, 'Which of the following is a mutable data type in Python?', 'tuple', 'string', 'list', 'int', 3, 'easy'),
(156, 'Which of these is a valid identifier in C?', '2sum', 'sum_2', 'sum-2', 'sum 2', 2, 'easy'),
(157, 'Which keyword is used for inheritance in Java?', 'inherits', 'extends', 'super', 'implements', 2, 'easy'),
(158, 'Which of the following is not an OOP concept?', 'Encapsulation', 'Polymorphism', 'Abstraction', 'Compilation', 4, 'easy'),
(159, 'In C, what is the size of int on a 32-bit compiler?', '2 bytes', '4 bytes', '8 bytes', 'Depends on compiler', 2, 'easy'),
(160, 'What is the output of print(2 ** 3) in Python?', '5', '6', '8', '9', 3, 'easy'),
(161, 'Which language runs on the JVM?', 'Python', 'C', 'Java', 'C++', 3, 'easy'),
(162, 'What is used to terminate a statement in Java?', '.', ':', ';', '}', 3, 'easy'),
(163, 'Which keyword is used to define constants in C?', 'constant', 'define', 'const', 'fixed', 3, 'easy'),
(164, 'What is the default value of a boolean in Java?', 'true', 'false', '0', 'null', 2, 'easy'),
(165, 'In Python, which symbol is used for comments?', '//', '#', '/* */', '<!-- -->', 2, 'easy'),
(166, 'Which data structure uses FIFO?', 'Stack', 'Queue', 'Tree', 'Graph', 2, 'easy'),
(167, 'Which of the following is a valid way to declare an array in Java?', 'int arr[];', 'array int arr;', 'int arr;', 'array arr[];', 1, 'easy'),
(168, 'In HTML, which tag is used to create a hyperlink?', '<a>', '<link>', '<href>', '<hyper>', 1, 'easy'),
(169, 'Which of these is a client-side scripting language?', 'PHP', 'Python', 'JavaScript', 'SQL', 3, 'easy'),
(170, 'What is the output of 3 + 2 * 2 in Python?', '10', '7', '9', '5', 2, 'easy'),
(171, 'What type of language is Python?', 'Compiled', 'Interpreted', 'Markup', 'Assembly', 2, 'easy'),
(172, 'Which of these is a looping construct?', 'if', 'for', 'switch', 'try', 2, 'easy'),
(173, 'Which keyword is used for exception handling in Java?', 'catch', 'try', 'except', 'throw', 2, 'easy'),
(174, 'Which method is used to get length of a string in Python?', 'strlen()', 'size()', 'len()', 'length()', 3, 'easy'),
(175, 'Which company developed C++?', 'Sun Microsystems', 'Microsoft', 'Bell Labs', 'IBM', 3, 'easy'),
(176, 'Which HTML element is used to display images?', '<img>', '<picture>', '<photo>', '<media>', 1, 'easy'),
(177, 'Which keyword is used to inherit an interface in Java?', 'extends', 'implements', 'inherits', 'interface', 2, 'easy'),
(178, 'Which of the following is not a programming paradigm?', 'Functional', 'Procedural', 'Declarative', 'Textual', 4, 'easy'),
(179, 'Which function is used to read input from user in Python?', 'scan()', 'read()', 'input()', 'get()', 3, 'easy'),
(180, 'Which keyword in C is used to exit from a loop?', 'return', 'stop', 'break', 'exit', 3, 'easy'),
(181, 'What is the output of: print(\"\".join(sorted(\"bca\")))?', 'abc', 'bca', 'cab', 'acb', 1, 'medium'),
(182, 'Which of the following correctly declares a pointer in C?', 'int *ptr;', 'int ptr;', '*int ptr;', 'ptr int*;', 1, 'medium'),
(183, 'Which access modifier in Java allows visibility only within the same package?', 'public', 'private', 'protected', 'default', 4, 'medium'),
(184, 'Which sorting algorithm has the best average complexity?', 'Bubble Sort', 'Insertion Sort', 'Merge Sort', 'Selection Sort', 3, 'medium'),
(185, 'What is the output of 5 // 2 in Python?', '2.5', '3', '2', '2.0', 3, 'medium'),
(186, 'Which keyword is used to prevent inheritance in Java?', 'stop', 'final', 'static', 'private', 2, 'medium'),
(187, 'In SQL, which command removes all rows but keeps structure?', 'DELETE', 'DROP', 'TRUNCATE', 'REMOVE', 3, 'medium'),
(188, 'Which of the following is not a stable sorting algorithm?', 'Merge Sort', 'Bubble Sort', 'Quick Sort', 'Insertion Sort', 3, 'medium'),
(189, 'Which of the following is an immutable data type in Python?', 'list', 'set', 'tuple', 'dict', 3, 'medium'),
(190, 'What is the time complexity of binary search?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(1)', 2, 'medium'),
(191, 'What will be printed by print(bool([]))?', 'True', 'False', 'Error', 'None', 2, 'medium'),
(192, 'Which keyword is used for multiple inheritance in Python?', 'inherits', 'super', 'extends', 'class', 4, 'medium'),
(193, 'In C, what is the purpose of malloc?', 'Memory allocation', 'String manipulation', 'Sorting', 'File handling', 1, 'medium'),
(194, 'In Java, which keyword is used to refer to current object?', 'this', 'self', 'current', 'object', 1, 'medium'),
(195, 'What is the output of 2**3**2 in Python?', '64', '512', '256', '128', 2, 'medium'),
(196, 'Which of the following is not a Java keyword?', 'static', 'volatile', 'unsigned', 'synchronized', 3, 'medium'),
(197, 'Which of the following file extensions is correct for a compiled Java class?', '.java', '.class', '.jar', '.jvm', 2, 'medium'),
(198, 'Which of the following functions releases memory allocated by malloc?', 'free()', 'delete()', 'dispose()', 'clear()', 1, 'medium'),
(199, 'Which algorithm is used in Dijkstra’s shortest path?', 'Greedy', 'Dynamic', 'Backtracking', 'Divide and Conquer', 1, 'medium'),
(200, 'Which keyword is used in Python for anonymous functions?', 'def', 'lambda', 'func', 'void', 2, 'medium'),
(201, 'What is the default port for HTTP?', '80', '8080', '443', '21', 1, 'medium'),
(202, 'Which concept allows one class to use another’s properties?', 'Polymorphism', 'Inheritance', 'Encapsulation', 'Abstraction', 2, 'medium'),
(203, 'Which of the following is a non-linear data structure?', 'Array', 'Linked List', 'Stack', 'Tree', 4, 'medium'),
(204, 'What does SQL stand for?', 'Structured Query Language', 'Sequential Query Language', 'Systematic Query Logic', 'Simple Query Language', 1, 'medium'),
(205, 'Which operator is used to compare values in Python?', '=', '==', 'equals()', 'is', 2, 'medium'),
(206, 'What is the output of print(type({}))?', '<class \"list\">', '<class \"dict\">', '<class \"set\">', '<class \"tuple\">', 2, 'medium'),
(207, 'In C, which function is used to read formatted input?', 'printf()', 'scanf()', 'gets()', 'input()', 2, 'medium'),
(208, 'What is the maximum length of an identifier in Python?', '31', '63', '79', 'No limit', 4, 'medium'),
(209, 'Which of these is an example of recursion?', 'Looping a list', 'Function calling itself', 'Variable shadowing', 'Lambda chaining', 2, 'medium'),
(210, 'In Java, String is a?', 'Primitive type', 'Mutable object', 'Immutable object', 'Wrapper class', 3, 'medium'),
(211, 'Which algorithm is used in quicksort partitioning?', 'Divide and Conquer', 'Greedy', 'Dynamic', 'Branch and Bound', 1, 'medium'),
(212, 'What is the output of print(10%3)?', '3', '1', '0.3', 'Error', 2, 'medium'),
(213, 'Which of these is not an access specifier in C++?', 'public', 'private', 'protected', 'internal', 4, 'medium'),
(214, 'Which module is used to work with dates in Python?', 'datetime', 'time', 'calendar', 'dateutil', 1, 'medium'),
(215, 'Which of these can be overloaded in C++?', 'Constructor', 'Destructor', 'Both', 'None', 3, 'medium'),
(216, 'Which keyword in Java is used for creating a thread?', 'create', 'implement', 'extends', 'implements Runnable', 4, 'medium'),
(217, 'In databases, normalization reduces?', 'Redundancy', 'Speed', 'Indexes', 'Queries', 1, 'medium'),
(218, 'Which of the following is not a valid SQL constraint?', 'PRIMARY KEY', 'FOREIGN KEY', 'CANDIDATE KEY', 'CHECK', 3, 'medium'),
(219, 'In C, what is sizeof(char)?', '1 byte', '2 bytes', '4 bytes', '8 bytes', 1, 'medium'),
(220, 'Which Python keyword is used to create generators?', 'def', 'yield', 'return', 'lambda', 2, 'medium'),
(221, 'Which method is called automatically when an object is created in C++?', 'start()', 'init()', 'constructor', 'setup()', 3, 'medium'),
(222, 'What is the worst-case time complexity of merge sort?', 'O(n)', 'O(n log n)', 'O(n²)', 'O(log n)', 2, 'hard'),
(223, 'In operating systems, what scheduling algorithm uses time quantum?', 'FCFS', 'SJF', 'Round Robin', 'Priority', 3, 'hard'),
(224, 'What is the output of print(0.1 + 0.2 == 0.3)?', 'True', 'False', 'Error', '0.3', 2, 'hard'),
(225, 'Which algorithm is used for detecting cycles in a directed graph?', 'Kruskal’s', 'Tarjan’s', 'Floyd-Warshall', 'Prim’s', 2, 'hard'),
(226, 'Which design pattern ensures a class has only one instance?', 'Factory', 'Singleton', 'Observer', 'Adapter', 2, 'hard'),
(227, 'What is the space complexity of DFS on a graph?', 'O(V)', 'O(V+E)', 'O(E)', 'O(V²)', 1, 'hard'),
(228, 'In Java, what does JVM stand for?', 'Java Variable Machine', 'Java Virtual Machine', 'Just Virtual Memory', 'Java Value Manager', 2, 'hard'),
(229, 'What is a deadlock?', 'Multiple threads sharing memory', 'Two processes waiting indefinitely for each other', 'CPU overload', 'Memory leak', 2, 'hard'),
(230, 'In networking, which layer ensures reliable communication?', 'Network', 'Transport', 'Session', 'Data Link', 2, 'hard'),
(231, 'Which of these is not a type of join in SQL?', 'INNER', 'OUTER', 'CROSS', 'BETWEEN', 4, 'hard'),
(232, 'In machine learning, what is gradient descent used for?', 'Feature scaling', 'Optimization', 'Activation', 'Regularization', 2, 'hard'),
(233, 'Which of the following is true about REST?', 'It uses SOAP', 'It is stateful', 'It is stateless', 'It requires XML', 3, 'hard'),
(234, 'In C++, what is RAII?', 'Runtime Allocation and Initialization', 'Resource Acquisition Is Initialization', 'Random Access Inline Implementation', 'Return After Initialization', 2, 'hard'),
(235, 'What is a closure in Python?', 'A function returning another function', 'A variable', 'A class', 'A decorator', 1, 'hard'),
(236, 'Which database system uses document-oriented storage?', 'MySQL', 'MongoDB', 'Oracle', 'PostgreSQL', 2, 'hard'),
(237, 'What is tail recursion?', 'Recursive call at end of function', 'Recursive call inside loop', 'Multiple recursion', 'Indirect recursion', 1, 'hard'),
(238, 'What is Big O of hash table lookup (average)?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 1, 'hard'),
(239, 'What does ACID stand for in databases?', 'Atomicity, Consistency, Isolation, Durability', 'Accuracy, Control, Isolation, Data', 'Automatic, Consistent, Indexed, Durable', 'None', 1, 'hard'),
(240, 'In JavaScript, what will typeof null return?', 'null', 'object', 'undefined', 'string', 2, 'hard'),
(241, 'What is the default protocol used by HTTP/3?', 'TCP', 'UDP', 'QUIC', 'WebSocket', 3, 'hard'),
(242, 'Which garbage collection algorithm is used by Java by default?', 'Mark and Sweep', 'Stop and Copy', 'Generational GC', 'Reference Counting', 3, 'hard'),
(243, 'What is the time complexity of heapify operation?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 2, 'hard'),
(244, 'Which of these is not a functional programming language?', 'Haskell', 'Lisp', 'C', 'Scala', 3, 'hard'),
(245, 'Which algorithm is used to find MST?', 'Kruskal', 'Dijkstra', 'Bellman-Ford', 'Floyd-Warshall', 1, 'hard'),
(246, 'In OS, which memory is fastest?', 'Cache', 'RAM', 'Virtual', 'Secondary', 1, 'hard'),
(247, 'What is memoization?', 'Storing results to avoid recomputation', 'Optimizing disk space', 'Thread synchronization', 'Data encryption', 1, 'hard'),
(248, 'In OOP, what is method overloading?', 'Same name, different parameters', 'Same name, same parameters', 'Different name, same parameters', 'None', 1, 'hard'),
(249, 'In C, what happens if malloc fails?', 'Returns NULL', 'Throws exception', 'Terminates program', 'Returns 0', 1, 'hard'),
(250, 'In Python, what is GIL?', 'Global Interpreter Lock', 'General Instance Loader', 'Graph Interface Layer', 'Generic Import Library', 1, 'hard'),
(251, 'Which database uses key-value storage?', 'MySQL', 'Redis', 'PostgreSQL', 'Oracle', 2, 'hard'),
(252, 'Which sorting algorithm is used in Python’s sort()?', 'Merge Sort', 'Timsort', 'Quick Sort', 'Heap Sort', 2, 'hard'),
(253, 'What is polymorphism in OOP?', 'One interface, multiple implementations', 'Multiple interfaces, one implementation', 'Same function names', 'All of these', 1, 'hard'),
(254, 'In Java, which class is superclass of all?', 'Object', 'Main', 'Base', 'System', 1, 'hard'),
(255, 'What is lazy evaluation?', 'Evaluate only when needed', 'Parallel execution', 'Precomputing values', 'Error handling', 1, 'hard'),
(256, 'What is a semaphore used for?', 'Process synchronization', 'I/O buffering', 'Data encryption', 'Paging', 1, 'hard'),
(257, 'Which algorithm does TCP use for congestion control?', 'Leaky Bucket', 'AIMD', 'Token Bucket', 'Stop and Wait', 2, 'hard'),
(258, 'What is difference between deep and shallow copy?', 'Copies references vs copies objects', 'Copies memory', 'Copies stack', 'None', 1, 'hard'),
(259, 'Which of these ensures thread safety in Java?', 'synchronized', 'threaded', 'atomic', 'volatile', 1, 'hard'),
(260, 'What is the main feature of functional programming?', 'Mutable data', 'Side-effects', 'Pure functions', 'Inheritance', 3, 'hard'),
(261, 'Which data structure is used in BFS?', 'Stack', 'Queue', 'Array', 'Graph', 2, 'hard'),
(262, 'What is the difference between TCP and UDP?', 'TCP is connectionless', 'UDP is reliable', 'TCP is connection-oriented', 'UDP uses handshakes', 3, 'hard'),
(263, 'What is the complexity of Dijkstra’s algorithm using min-heap?', 'O(V²)', 'O(V + E log V)', 'O(E log E)', 'O(VE)', 2, 'hard'),
(264, 'What is a race condition?', 'Processes accessing shared data concurrently', 'Low memory', 'CPU overload', 'Deadlock', 1, 'hard'),
(265, 'What does ORM stand for?', 'Object-Relational Mapping', 'Online Resource Management', 'Object-Reference Model', 'Open Resource Map', 1, 'hard'),
(266, 'What is the output of print(\"abc\"[::-1])?', 'abc', 'cba', 'bca', 'acb', 2, 'hard'),
(267, 'Which design pattern provides an interface to a group of subsystems?', 'Facade', 'Adapter', 'Bridge', 'Proxy', 1, 'hard'),
(268, 'What is the time complexity of inserting into a balanced BST?', 'O(n)', 'O(log n)', 'O(1)', 'O(n log n)', 2, 'hard');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `roll_number` varchar(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `aptitude_score` int(11) DEFAULT NULL,
  `technical_score` int(11) DEFAULT NULL,
  `verbal_score` int(11) DEFAULT NULL,
  `programming_score` int(11) DEFAULT NULL,
  `general_awareness_score` int(11) DEFAULT NULL,
  `tier` varchar(10) DEFAULT NULL,
  `recommendations` text DEFAULT NULL,
  `is_auto_submitted` tinyint(1) DEFAULT 0,
  `answered_questions` int(11) DEFAULT 0,
  `total_questions` int(11) DEFAULT 100,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `roll_number`, `name`, `aptitude_score`, `technical_score`, `verbal_score`, `programming_score`, `general_awareness_score`, `tier`, `recommendations`, `is_auto_submitted`, `answered_questions`, `total_questions`, `created_at`) VALUES
(1, '101', 'Akshay', 3, 8, 11, 12, 9, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-31 04:19:34'),
(2, '102', 'Aman', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 04:20:50'),
(3, '103', 'Akshay K', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 04:33:56'),
(4, '104', 'Bhuvan', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 04:36:36'),
(5, '105', 'Ashwath', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 04:40:23'),
(6, '106', 'Akash', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 04:48:59'),
(7, '110', 'Abhishek', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 04:59:14'),
(8, '111', 'Arman', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 05:01:07'),
(9, '112', 'Ajay', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 05:03:18'),
(10, '113', 'Vishnu', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 05:04:00'),
(11, '113', 'Anuj', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 05:18:13'),
(12, '114', 'Arush', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 05:19:02'),
(13, '115', 'Chethan', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-10-31 05:25:33'),
(14, '101', 'Akshay', 10, 8, 6, 4, 6, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-31 09:59:12'),
(15, '103', 'Akanksh', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-11-03 05:23:04'),
(16, '103', 'Akanksh', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-11-03 05:23:04'),
(17, '349', 'Shreya', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-11-07 04:09:19'),
(18, '349', 'Shreya', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 1, 0, 100, '2025-11-07 04:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `roll_number` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`roll_number`, `name`) VALUES
('101', 'Akshay'),
('102', 'Aman'),
('103', 'Akshay K'),
('104', 'Bhuvan'),
('105', 'Ashwath'),
('106', 'Akash'),
('110', 'Abhishek'),
('111', 'Arman'),
('112', 'Ajay'),
('113', 'Vishnu'),
('114', 'Arush'),
('115', 'Chethan'),
('121', 'Abhinav'),
('123', 'TestStudent'),
('145', 'Manisha'),
('151', 'Devesh'),
('349', 'Shreya');

-- --------------------------------------------------------

--
-- Table structure for table `technical_questions`
--

CREATE TABLE `technical_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technical_questions`
--

INSERT INTO `technical_questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `difficulty`) VALUES
(1, 'Which data structure uses FIFO (First In First Out)?', 'Stack', 'Queue', 'Tree', 'Graph', 2, 'easy'),
(2, 'What does HTML stand for?', 'HyperText Markup Language', 'HighText Machine Language', 'HyperTabular Markup Language', 'None of these', 1, 'easy'),
(3, 'Which of these is a relational database?', 'MongoDB', 'MySQL', 'Redis', 'Neo4j', 2, 'easy'),
(4, 'Which layer in OSI model handles routing?', 'Transport', 'Network', 'Data Link', 'Session', 2, 'easy'),
(5, 'Which keyword is used to define a class in Java?', 'object', 'define', 'class', 'struct', 3, 'easy'),
(6, 'Which protocol is used to send emails?', 'HTTP', 'SMTP', 'FTP', 'IMAP', 2, 'easy'),
(7, 'Which scheduling algorithm is preemptive?', 'First Come First Serve', 'Shortest Job First', 'Round Robin', 'Priority Scheduling', 3, 'easy'),
(8, 'Which symbol is used for comments in Python?', '#', '//', '<!-- -->', '/* */', 1, 'easy'),
(9, 'Which device operates at the Data Link Layer?', 'Router', 'Hub', 'Switch', 'Gateway', 3, 'easy'),
(10, 'Which version control system is distributed?', 'SVN', 'Git', 'CVS', 'Mercurial', 2, 'easy'),
(11, 'In SQL, which clause is used to filter records?', 'WHERE', 'FROM', 'SELECT', 'ORDER BY', 1, 'medium'),
(12, 'Which sorting algorithm has O(n log n) average time complexity?', 'Bubble Sort', 'Quick Sort', 'Selection Sort', 'Insertion Sort', 2, 'medium'),
(13, 'In C, what is the size of an int on most 32-bit systems?', '2 bytes', '4 bytes', '8 bytes', 'Depends on compiler', 2, 'medium'),
(14, 'Which command is used to view all branches in Git?', 'git branch', 'git show', 'git list', 'git view', 1, 'medium'),
(15, 'Which HTTP method is idempotent?', 'POST', 'GET', 'PATCH', 'CONNECT', 2, 'medium'),
(16, 'In DBMS, which normal form removes transitive dependency?', '2NF', '3NF', 'BCNF', '1NF', 2, 'medium'),
(17, 'What does DNS stand for?', 'Domain Name System', 'Dynamic Network System', 'Data Name Service', 'Domain Node Service', 1, 'medium'),
(18, 'Which of these is not a primitive data type in Java?', 'int', 'boolean', 'String', 'float', 3, 'medium'),
(19, 'Which of the following is a NoSQL database?', 'Oracle', 'PostgreSQL', 'MongoDB', 'SQLite', 3, 'medium'),
(20, 'Which memory is fastest?', 'Cache', 'RAM', 'Hard Disk', 'ROM', 1, 'medium'),
(21, 'What is the default port for HTTPS?', '21', '25', '443', '8080', 3, 'medium'),
(22, 'Which command is used to check network connectivity?', 'ping', 'netstat', 'ifconfig', 'route', 1, 'medium'),
(23, 'Which design pattern ensures only one instance of a class?', 'Factory', 'Observer', 'Singleton', 'Prototype', 3, 'medium'),
(24, 'Which of the following is not an OOP principle?', 'Encapsulation', 'Abstraction', 'Recursion', 'Inheritance', 3, 'medium'),
(25, 'Which of the following is not part of SDLC?', 'Testing', 'Deployment', 'Maintenance', 'Recursion', 4, 'medium'),
(26, 'In which layer does TCP operate?', 'Network', 'Transport', 'Data Link', 'Application', 2, 'medium'),
(27, 'Which command stages all files for commit in Git?', 'git push', 'git add .', 'git commit', 'git status', 2, 'medium'),
(28, 'Which function is used to find string length in Python?', 'len()', 'count()', 'length()', 'strlen()', 1, 'medium'),
(29, 'Which of the following is a cloud service model?', 'IaaS', 'CaaS', 'SaaS', 'PaaS', 3, 'medium'),
(30, 'Which data structure uses LIFO order?', 'Queue', 'Linked List', 'Stack', 'Heap', 3, 'medium'),
(31, 'In database indexing, what is the time complexity of searching in a B+ tree?', 'O(log n)', 'O(n)', 'O(1)', 'O(n log n)', 1, 'hard'),
(32, 'What is a race condition?', 'When two processes race to finish first', 'When multiple threads access shared data simultaneously', 'A CPU scheduling algorithm', 'A cache optimization issue', 2, 'hard'),
(33, 'Which algorithm is used in TCP congestion control?', 'Leaky Bucket', 'Additive Increase Multiplicative Decrease', 'Random Early Detection', 'Shortest Remaining Time First', 2, 'hard'),
(34, 'What is a deadlock?', 'Infinite loop', 'Resource contention with circular wait', 'Process starvation', 'Memory overflow', 2, 'hard'),
(35, 'In Linux, which command displays running processes?', 'ps', 'ls', 'cat', 'grep', 1, 'hard'),
(36, 'What is the main purpose of DNS caching?', 'Reduce DNS queries', 'Store passwords', 'Speed up FTP transfer', 'Encrypt domain names', 1, 'hard'),
(37, 'Which database property ensures consistency?', 'Isolation', 'Durability', 'Atomicity', 'Consistency', 4, 'hard'),
(38, 'Which of these is a strongly typed language?', 'C', 'Python', 'Java', 'JavaScript', 3, 'hard'),
(39, 'In memory management, what is thrashing?', 'CPU overheating', 'Excessive paging activity', 'Memory leak', 'Deadlock', 2, 'hard'),
(40, 'Which HTTP code indicates authentication required?', '200', '301', '401', '404', 3, 'hard'),
(41, 'What is the complexity of Dijkstra’s algorithm using a min-heap?', 'O(V^2)', 'O(V log V + E log V)', 'O(E log V)', 'O(VE)', 3, 'hard'),
(42, 'In operating systems, what is a context switch?', 'Changing file system context', 'Switching between processes', 'Loading kernel into memory', 'Updating user privileges', 2, 'hard'),
(43, 'Which type of join returns only matching rows from both tables?', 'LEFT JOIN', 'FULL JOIN', 'INNER JOIN', 'CROSS JOIN', 3, 'hard'),
(44, 'In Java, which garbage collector is used for large heaps?', 'Parallel GC', 'Serial GC', 'G1 GC', 'ZGC', 3, 'hard'),
(45, 'What is the purpose of ARP protocol?', 'Resolve IP to MAC address', 'Resolve domain to IP', 'Route packets', 'Encrypt traffic', 1, 'hard'),
(46, 'In microservices, which pattern helps rollback multiple service calls?', 'Saga', 'Adapter', 'Proxy', 'Observer', 1, 'hard'),
(47, 'Which AWS service is used for object storage?', 'EC2', 'RDS', 'S3', 'Lambda', 3, 'hard'),
(48, 'What is a foreign key in SQL?', 'Primary key of another table', 'Duplicate column', 'Temporary index', 'Composite key', 1, 'hard'),
(49, 'Which is not a REST constraint?', 'Stateless', 'Cacheable', 'Layered System', 'Synchronous', 4, 'hard'),
(50, 'What is the primary purpose of containerization?', 'Virtualize hardware', 'Package applications with dependencies', 'Monitor network traffic', 'Encrypt code', 2, 'hard'),
(51, 'Which algorithm is used for finding Minimum Spanning Tree?', 'Dijkstra', 'Kruskal', 'A*', 'Bellman-Ford', 2, 'medium'),
(52, 'Which SQL clause groups rows with the same values?', 'ORDER BY', 'GROUP BY', 'HAVING', 'JOIN', 2, 'medium'),
(53, 'Which operator is overloaded in Python for “+”?', '__add__', '__plus__', '__sum__', '__concat__', 1, 'medium'),
(54, 'Which layer in OSI is responsible for encryption and compression?', 'Presentation', 'Session', 'Application', 'Transport', 1, 'medium'),
(55, 'Which of these is not a valid HTTP method?', 'TRACE', 'PUT', 'COPY', 'FETCH', 4, 'medium'),
(56, 'Which Java collection does not allow duplicates?', 'List', 'Set', 'Map', 'ArrayList', 2, 'medium'),
(57, 'Which SQL keyword removes duplicate rows?', 'UNIQUE', 'DISTINCT', 'REMOVE', 'GROUP', 2, 'medium'),
(58, 'Which of these is not an example of cloud deployment model?', 'Private Cloud', 'Hybrid Cloud', 'Distributed Cloud', 'Edge Network', 4, 'medium'),
(59, 'In networking, what is MTU?', 'Maximum Transmission Unit', 'Minimum Transfer Utility', 'Medium Transport Utility', 'Maximum Time Unit', 1, 'medium'),
(60, 'What is the time complexity of binary search?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(1)', 2, 'medium'),
(61, 'In DBMS, which command is used to remove a table?', 'DELETE', 'DROP', 'TRUNCATE', 'REMOVE', 2, 'medium'),
(62, 'Which type of memory is non-volatile?', 'RAM', 'Cache', 'ROM', 'Register', 3, 'medium'),
(63, 'Which keyword in C++ is used to handle exceptions?', 'try', 'throw', 'catch', 'handle', 3, 'medium'),
(64, 'Which of these is a network topology?', 'Tree', 'Binary', 'Heap', 'Array', 1, 'medium'),
(65, 'What does CI/CD stand for?', 'Continuous Integration / Continuous Deployment', 'Cloud Integration / Continuous Development', 'Code Injection / Code Delivery', 'Continuous Installation / Continuous Debugging', 1, 'medium'),
(66, 'Which Java keyword prevents method overriding?', 'final', 'static', 'protected', 'volatile', 1, 'medium'),
(67, 'Which command is used to revert a commit in Git?', 'git undo', 'git revert', 'git rollback', 'git previous', 2, 'medium'),
(68, 'Which scheduling algorithm may cause starvation?', 'Round Robin', 'FCFS', 'SJF', 'Priority', 4, 'medium'),
(69, 'Which HTTP status code means “Forbidden”?', '403', '401', '404', '500', 1, 'medium'),
(70, 'Which of the following is an interpreted language?', 'C++', 'Python', 'Java', 'C', 2, 'medium'),
(71, 'In DBMS, what is phantom read?', 'Duplicate rows created by transactions', 'Reading uncommitted changes', 'Reading rows that appear/disappear in repeated queries', 'Accessing null data', 3, 'hard'),
(72, 'What is the difference between process and thread?', 'Threads are heavier', 'Threads share same memory space', 'Processes share memory by default', 'Threads run in kernel mode', 2, 'hard'),
(73, 'Which algorithm is used in RSA encryption?', 'Diffie-Hellman', 'Elliptic Curve', 'Modular Exponentiation', 'Hashing', 3, 'hard'),
(74, 'What is the role of ARP cache?', 'Stores IP addresses', 'Stores DNS lookups', 'Stores IP-MAC mappings', 'Stores routing tables', 3, 'hard'),
(75, 'In TCP, what does the 3-way handshake do?', 'Ensures packet delivery', 'Establishes a connection', 'Authenticates users', 'Checks bandwidth', 2, 'hard'),
(76, 'Which data structure is used in DFS?', 'Queue', 'Stack', 'Linked List', 'Tree', 2, 'hard'),
(77, 'Which of these is a distributed version control system?', 'SVN', 'Perforce', 'Git', 'CVS', 3, 'hard'),
(78, 'What is the main advantage of RESTful APIs?', 'Stateful connection', 'Loose coupling and scalability', 'Persistent sessions', 'Fast encryption', 2, 'hard'),
(79, 'In OS, what is demand paging?', 'Loading all pages at once', 'Loading pages as needed', 'Removing unused pages', 'Paging with cache', 2, 'hard'),
(80, 'What is normalization in DBMS?', 'Process of denormalizing tables', 'Reducing redundancy and dependency', 'Increasing redundancy for speed', 'Indexing data', 2, 'hard'),
(81, 'Which command in Linux shows disk usage?', 'ls', 'du', 'df', 'free', 2, 'hard'),
(82, 'What does the CAP theorem stand for?', 'Consistency, Availability, Partition tolerance', 'Cache, Application, Protocol', 'Consistency, Accuracy, Performance', 'Control, Access, Partition', 1, 'hard'),
(83, 'In programming, tail recursion is...', 'Recursion with base case first', 'Recursion optimized by compiler', 'Recursion without loop', 'Nested recursion', 2, 'hard'),
(84, 'Which protocol does HTTPS use for encryption?', 'TLS/SSL', 'SSH', 'SCP', 'RSA', 1, 'hard'),
(85, 'What is the difference between TCP and UDP?', 'TCP is connectionless', 'UDP is reliable', 'TCP is connection-oriented', 'Both are unreliable', 3, 'hard'),
(86, 'What is lazy loading?', 'Deferring object initialization until needed', 'Preloading all resources', 'Batch loading queries', 'Static loading of libraries', 1, 'hard'),
(87, 'In cloud computing, what is serverless?', 'Running without physical servers', 'Managed execution where provider runs the server', 'Self-hosted execution', 'Offline services', 2, 'hard'),
(88, 'What does RAID 5 use for fault tolerance?', 'Mirroring', 'Parity', 'Striping only', 'Backup only', 2, 'hard'),
(89, 'What is Docker primarily used for?', 'Virtual machines', 'Containers', 'Networking', 'File transfer', 2, 'hard'),
(90, 'Which is not a type of database join?', 'Inner Join', 'Right Join', 'Outer Join', 'Center Join', 4, 'hard'),
(91, 'In OS, what is context switching overhead?', 'CPU time wasted switching tasks', 'Extra memory usage', 'Deadlock prevention cost', 'Page fault delay', 1, 'hard'),
(92, 'In C, what is a memory leak?', 'Loss of pointer reference to allocated memory', 'Using NULL pointers', 'Accessing array out of bound', 'Stack overflow', 1, 'hard'),
(93, 'What is the default subnet mask for Class C IP?', '255.255.0.0', '255.255.255.0', '255.0.0.0', '255.255.255.255', 2, 'hard'),
(94, 'What is shadow paging in databases?', 'Page replacement algorithm', 'Recovery technique maintaining shadow copies', 'Indexing mechanism', 'Transaction rollback system', 2, 'hard'),
(95, 'Which system call creates a new process in Unix?', 'exec()', 'spawn()', 'fork()', 'run()', 3, 'hard'),
(96, 'Which AWS service provides serverless compute?', 'EC2', 'Lambda', 'S3', 'EBS', 2, 'hard'),
(97, 'In distributed systems, what is leader election?', 'Selecting a master node for coordination', 'Choosing best client', 'Balancing CPU load', 'Voting algorithm for deadlock', 1, 'hard'),
(98, 'What is a semaphore used for?', 'Synchronization', 'Communication', 'Scheduling', 'Paging', 1, 'hard'),
(99, 'Which of these ensures ACID in databases?', 'Transaction management', 'Replication', 'Normalization', 'Sharding', 1, 'hard'),
(100, 'What is the role of hypervisor?', 'Runs virtual machines', 'Manages users', 'Handles routing', 'Stores metadata', 1, 'hard'),
(101, 'Which of these best describes polymorphism?', 'Ability to take many forms', 'Code reuse', 'Encapsulation', 'Data hiding', 1, 'medium'),
(102, 'In networking, what does DHCP do?', 'Assigns IP addresses automatically', 'Encrypts data', 'Routes packets', 'Manages DNS entries', 1, 'medium'),
(103, 'Which sorting algorithm is stable?', 'Quick Sort', 'Merge Sort', 'Heap Sort', 'Selection Sort', 2, 'medium'),
(104, 'What is the output of 5 == \"5\" in JavaScript?', 'true', 'false', 'undefined', 'NaN', 2, 'medium'),
(105, 'In Python, which keyword is used for inheritance?', 'base', 'extends', 'super', 'class', 3, 'medium'),
(106, 'Which SQL constraint ensures uniqueness?', 'NOT NULL', 'CHECK', 'UNIQUE', 'PRIMARY KEY', 3, 'medium'),
(107, 'Which data structure is used in BFS?', 'Queue', 'Stack', 'Array', 'Linked List', 1, 'medium'),
(108, 'Which Git command combines commits?', 'merge', 'rebase', 'push', 'clone', 2, 'medium'),
(109, 'Which Java interface is implemented for multi-threading?', 'Thread', 'Runnable', 'Async', 'Callable', 2, 'medium'),
(110, 'What is encapsulation?', 'Wrapping data and methods together', 'Hiding methods', 'Overriding classes', 'Overloading functions', 1, 'medium'),
(111, 'Which command in Linux shows CPU usage?', 'df', 'top', 'free', 'ls', 2, 'medium'),
(112, 'What does JSON stand for?', 'Java Syntax Object Notation', 'JavaScript Object Notation', 'Joined Syntax Oriented Node', 'None', 2, 'medium'),
(113, 'Which OS concept allows multiple users to share CPU time?', 'Virtualization', 'Multithreading', 'Time sharing', 'Paging', 3, 'medium'),
(114, 'Which key uniquely identifies rows in a table?', 'Foreign Key', 'Primary Key', 'Composite Key', 'Candidate Key', 2, 'medium'),
(115, 'Which protocol transfers files over TCP?', 'SMTP', 'FTP', 'IMAP', 'DHCP', 2, 'medium'),
(116, 'In OS, what is a page fault?', 'Error in CPU scheduling', 'Accessing a page not in main memory', 'Disk failure', 'Cache miss', 2, 'hard'),
(117, 'What is the main idea behind MapReduce?', 'Distributed key-value processing', 'Compression', 'Data encryption', 'Cloud storage', 1, 'hard'),
(118, 'Which of these ensures serializability in transactions?', 'Locks', 'Triggers', 'Views', 'Stored Procedures', 1, 'hard'),
(119, 'In compiler design, what is lexical analysis?', 'Parsing syntax', 'Tokenizing source code', 'Optimizing code', 'Generating object code', 2, 'hard'),
(120, 'Which algorithm is used in public key encryption?', 'AES', 'RSA', 'SHA', 'DES', 2, 'hard'),
(121, 'In Linux, which signal terminates a process gracefully?', 'SIGTERM', 'SIGKILL', 'SIGSTOP', 'SIGINT', 1, 'hard'),
(122, 'What does ACID stand for?', 'Atomicity, Consistency, Isolation, Durability', 'Access, Cache, Index, Data', 'Accuracy, Connection, Integrity, Data', 'None', 1, 'hard'),
(123, 'Which protocol is used for secure file transfer?', 'FTP', 'SFTP', 'HTTP', 'SMTP', 2, 'hard'),
(124, 'Which data structure is used in heapsort?', 'Binary Heap', 'Binary Tree', 'Queue', 'Stack', 1, 'hard'),
(125, 'What is the worst-case complexity of quicksort?', 'O(n)', 'O(n log n)', 'O(n²)', 'O(log n)', 3, 'hard'),
(126, 'In networking, what is latency?', 'Packet loss', 'Delay in transmission', 'Bandwidth utilization', 'Data loss rate', 2, 'hard'),
(127, 'Which AWS service handles container orchestration?', 'Lambda', 'ECS', 'S3', 'RDS', 2, 'hard'),
(128, 'In databases, what is sharding?', 'Vertical scaling', 'Horizontal partitioning of data', 'Data caching', 'Replication', 2, 'hard'),
(129, 'Which protocol secures data in transit over HTTPS?', 'SSL/TLS', 'AES', 'RSA', 'SSH', 1, 'hard'),
(130, 'In OS, what is a zombie process?', 'Process terminated but entry remains', 'Hung process', 'Background service', 'Process consuming high CPU', 1, 'hard'),
(131, 'What is the role of message broker in microservices?', 'Coordinate inter-service communication', 'Run API gateways', 'Manage authentication', 'Log traffic', 1, 'hard'),
(132, 'What is the output of hashing?', 'Ciphertext', 'Hash value', 'Encrypted text', 'Key', 2, 'hard'),
(133, 'Which of these is not part of REST?', 'Statelessness', 'Cacheability', 'Session tracking', 'Layered system', 3, 'hard'),
(134, 'What is container orchestration?', 'Managing multiple containers', 'Building Docker images', 'Encrypting containers', 'Creating networks', 1, 'hard'),
(135, 'Which data structure best supports recursion?', 'Queue', 'Stack', 'Heap', 'Tree', 2, 'hard'),
(136, 'Which of these is a load balancer algorithm?', 'Round Robin', 'Linear Search', 'Binary Split', 'Merge', 1, 'hard'),
(137, 'What is CAP theorem’s trade-off in distributed databases?', 'Cannot achieve all three: Consistency, Availability, Partition tolerance', 'Requires all three always', 'Ensures all three automatically', 'Applies only to SQL', 1, 'hard'),
(138, 'Which part of compiler checks syntax rules?', 'Syntax Analyzer', 'Lexical Analyzer', 'Code Generator', 'Optimizer', 1, 'hard'),
(139, 'In networking, what is the role of TCP handshake?', 'Data encryption', 'Connection establishment', 'Session termination', 'Bandwidth reservation', 2, 'hard'),
(140, 'Which OS concept allows sharing of CPU among processes?', 'Multiprogramming', 'Spooling', 'Pipelining', 'Interrupt', 1, 'hard'),
(141, 'What is two-phase commit?', 'Distributed transaction protocol', 'File system cache method', 'Backup process', 'Checkpoint algorithm', 1, 'hard'),
(142, 'What does BASE stand for (NoSQL)?', 'Basically Available, Soft state, Eventually consistent', 'Binary Access, Simple Execution', 'Bounded Algorithmic State Evaluation', 'None', 1, 'hard'),
(143, 'Which of the following is used for data replication?', 'Mirroring', 'Sharding', 'Snapshotting', 'All of the above', 4, 'hard'),
(144, 'In OS, what is starvation?', 'Process never gets CPU time', 'Process stuck in I/O', 'Thread deadlock', 'Process overload', 1, 'hard'),
(145, 'What is mutex?', 'Synchronization lock', 'Shared variable', 'Memory area', 'Thread pool', 1, 'hard'),
(146, 'What is HDFS block size by default (Hadoop)?', '32 MB', '64 MB', '128 MB', '256 MB', 3, 'hard'),
(147, 'Which of these ensures message delivery in Kafka?', 'Acknowledgment mechanism', 'Topic partition', 'Offset management', 'Consumer group', 1, 'hard'),
(148, 'What is difference between scaling up and scaling out?', 'Scaling up increases resources; scaling out adds nodes', 'Same concept', 'Opposite meaning', 'Both add servers', 1, 'hard'),
(149, 'In virtualization, what is a snapshot?', 'Point-in-time copy of VM state', 'Temporary log', 'Memory dump', 'Container build', 1, 'hard'),
(150, 'What is a daemon process?', 'Background process without terminal', 'User session', 'System log', 'Task scheduler', 1, 'hard'),
(151, 'In databases, what is indexing?', 'Sorting data', 'Improving search performance using data structure', 'Compressing data', 'Encrypting data', 2, 'hard'),
(152, 'Which data structure implements priority queue?', 'Stack', 'Heap', 'Tree', 'Array', 2, 'hard'),
(153, 'Which scheduling algorithm gives minimum average waiting time?', 'FCFS', 'SJF', 'RR', 'Priority', 2, 'hard'),
(154, 'In networking, what is TTL?', 'Time To Live', 'Transmission Time Limit', 'Transfer Token Length', 'Total Transmission Layer', 1, 'hard'),
(155, 'Which OS component handles interrupts?', 'Kernel', 'Scheduler', 'Dispatcher', 'Memory Manager', 1, 'hard'),
(156, 'In databases, what is a trigger?', 'Procedure executed automatically on events', 'Manual script', 'Constraint', 'Backup function', 1, 'hard'),
(157, 'What is IaaS in cloud computing?', 'Infrastructure as a Service', 'Internet as a Service', 'Integration as a Service', 'Instance as a System', 1, 'hard'),
(158, 'Which command in Git removes local untracked files?', 'git clean -f', 'git reset', 'git prune', 'git purge', 1, 'hard');

-- --------------------------------------------------------

--
-- Table structure for table `verbal_questions`
--

CREATE TABLE `verbal_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verbal_questions`
--

INSERT INTO `verbal_questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `difficulty`) VALUES
(1, 'Choose the word most similar in meaning to “Ephemeral”.', 'Temporary', 'Eternal', 'Tedious', 'Constant', 1, 'hard'),
(2, 'Choose the correctly spelled word.', 'Accommodate', 'Acommodate', 'Accomodate', 'Acommadate', 1, 'hard'),
(3, 'Identify the antonym of “Magnanimous”.', 'Generous', 'Mean', 'Noble', 'Charitable', 2, 'hard'),
(4, 'Choose the correct one-word substitution: “One who studies ancient writings and inscriptions”.', 'Philatelist', 'Numismatist', 'Epigraphist', 'Archaeologist', 3, 'hard'),
(5, 'Fill in the blank: “She refused to _____ to the pressure of the board.”', 'concede', 'concur', 'capitulate', 'confide', 3, 'hard'),
(6, 'Select the correct indirect speech: He said, “I am reading a novel.”', 'He said he read a novel.', 'He said he was reading a novel.', 'He said I was reading a novel.', 'He says he is reading a novel.', 2, 'hard'),
(7, 'Choose the correct synonym of “Ubiquitous”.', 'Unique', 'Omnipresent', 'Rare', 'Limited', 2, 'hard'),
(8, 'Which of the following is a correct use of idiom “cut the mustard”?', 'To meet expectations', 'To cut expenses', 'To ruin something', 'To deceive someone', 1, 'hard'),
(9, 'Identify the correct sentence.', 'He has been living here since five years.', 'He is living here for five years.', 'He has been living here for five years.', 'He lives here since five years.', 3, 'hard'),
(10, 'Choose the most appropriate meaning of the phrase “to take a back seat”.', 'To become less important', 'To sit behind', 'To oppose something', 'To be alert', 1, 'hard'),
(11, 'Find the error: “Neither of the two men were tall.”', 'Neither', 'of the two', 'men', 'were', 4, 'hard'),
(12, 'Choose the right preposition: “He is good _____ mathematics.”', 'on', 'at', 'in', 'for', 2, 'hard'),
(13, 'Replace the underlined word: “His arguments were very *convincing*.”', 'deceptive', 'plausible', 'fallacious', 'indifferent', 2, 'hard'),
(14, 'Choose the correct passive voice: “They are painting the house.”', 'The house is painted by them.', 'The house was painted.', 'The house is being painted.', 'The house will be painted.', 3, 'hard'),
(15, 'Choose the synonym of “Oblivious”.', 'Aware', 'Forgetful', 'Mindful', 'Alert', 2, 'hard'),
(16, 'Select the correct alternative: “He was accused _____ stealing money.”', 'for', 'of', 'to', 'by', 2, 'hard'),
(17, 'Identify the correct sentence.', 'No sooner had he left when it started raining.', 'No sooner did he leave when it started raining.', 'No sooner had he left than it started raining.', 'No sooner did he left than it started raining.', 3, 'hard'),
(18, 'Choose the antonym of “Meticulous”.', 'Careless', 'Thorough', 'Diligent', 'Exact', 1, 'hard'),
(19, 'Select the correct indirect speech: “She said, ‘Do you like coffee?’”', 'She asked if I liked coffee.', 'She told I like coffee.', 'She said she liked coffee.', 'She asked that I liked coffee.', 1, 'hard'),
(20, 'Choose the right one-word substitution: “A person who pretends to be what he is not.”', 'Hypocrite', 'Misanthrope', 'Egoist', 'Anarchist', 1, 'hard'),
(21, 'Select the correct option: “If I _____ the truth, I would have acted differently.”', 'know', 'knew', 'had known', 'knows', 3, 'hard'),
(22, 'Find the correctly punctuated sentence.', 'He said “I am tired”.', 'He said “I am tired.”', 'He said, “I am tired.”', 'He said “I am tired.', 3, 'hard'),
(23, 'Choose the correct synonym of “Abate”.', 'Increase', 'Subside', 'Accelerate', 'Expand', 2, 'hard'),
(24, 'Fill in the blank: “He is too intelligent _____ be deceived.”', 'that he can', 'so as to', 'to', 'than to', 3, 'hard'),
(25, 'Choose the antonym of “Transient”.', 'Brief', 'Permanent', 'Momentary', 'Passing', 2, 'hard'),
(26, 'Select the most appropriate word: “The old man was too weak to _____ the steep hill.”', 'climb', 'climbed', 'climbing', 'climbs', 1, 'hard'),
(27, 'Choose the correct phrase: “He has the gift of the gab.”', 'He is a good speaker.', 'He is stingy.', 'He is a good writer.', 'He is dishonest.', 1, 'hard'),
(28, 'Identify the correct sentence.', 'The sceneries of Kashmir are beautiful.', 'The scenery of Kashmir is beautiful.', 'The scenery of Kashmir are beautiful.', 'The sceneries of Kashmir is beautiful.', 2, 'hard'),
(29, 'Choose the correct spelling.', 'Mischievious', 'Mischievous', 'Mischevious', 'Mischivious', 2, 'hard'),
(30, 'Choose the correct synonym of “Alleviate”.', 'Aggravate', 'Relieve', 'Complicate', 'Intensify', 2, 'hard'),
(31, 'Choose the correct antonym of “Lucid”.', 'Clear', 'Obscure', 'Transparent', 'Simple', 2, 'hard'),
(32, 'Select the correct option: “Had he worked harder, he _____ succeeded.”', 'will have', 'would have', 'can have', 'might have', 2, 'hard'),
(33, 'Find the error: “He did not knew the answer.”', 'He', 'did not', 'knew', 'answer', 3, 'hard'),
(34, 'Choose the correct idiom: “To hit the sack.”', 'To sleep', 'To fail', 'To start a fight', 'To celebrate', 1, 'hard'),
(35, 'Choose the synonym of “Resilient”.', 'Rigid', 'Flexible', 'Fragile', 'Weak', 2, 'hard'),
(36, 'Identify the correct indirect speech: “She said, ‘I will help you.’”', 'She said she would help me.', 'She said she helps me.', 'She told she will help me.', 'She said that I will help you.', 1, 'hard'),
(37, 'Select the correct word: “He is very good _____ solving riddles.”', 'for', 'at', 'in', 'on', 2, 'hard'),
(38, 'Choose the correct sentence.', 'Each of the boys have done well.', 'Each of the boys has done well.', 'Each of the boys were doing well.', 'Each boys have done well.', 2, 'hard'),
(39, 'Choose the antonym of “Candid”.', 'Frank', 'Deceitful', 'Open', 'Truthful', 2, 'hard'),
(40, 'Find the correctly punctuated sentence.', 'Yes he said I will go.', '“Yes,” he said, “I will go.”', 'Yes, he said I will go.', 'He said yes I will go.', 2, 'hard'),
(41, 'Choose the synonym of “Audacious”.', 'Timid', 'Bold', 'Cowardly', 'Reserved', 2, 'hard'),
(42, 'Select the correct phrase: “To play second fiddle.”', 'To take a subordinate role', 'To play well', 'To argue', 'To make noise', 1, 'hard'),
(43, 'Choose the correct spelling.', 'Indispensible', 'Indispensable', 'Indespensable', 'Indespensible', 2, 'hard'),
(44, 'Find the correct usage: “He was accused _____ cheating.”', 'for', 'of', 'to', 'by', 2, 'hard'),
(45, 'Choose the correct one-word substitution: “A speech made without preparation.”', 'Monologue', 'Extempore', 'Dialogue', 'Soliloquy', 2, 'hard'),
(46, 'Choose the correct antonym of “Proficient”.', 'Skilled', 'Incompetent', 'Expert', 'Able', 2, 'hard'),
(47, 'Fill in the blank: “He walked so fast that I could not keep _____ him.”', 'up', 'in', 'on', 'with', 4, 'hard'),
(48, 'Select the correct option: “No one can prevent him _____ going.”', 'from', 'to', 'for', 'of', 1, 'hard'),
(49, 'Choose the synonym of “Repercussion”.', 'Result', 'Cause', 'Origin', 'Beginning', 1, 'hard'),
(50, 'Identify the correct indirect speech: “He said, ‘Where are you going?’”', 'He asked where I was going.', 'He told where I go.', 'He said where I was going.', 'He told that I was going.', 1, 'hard'),
(51, 'Choose the antonym of “Explicit”.', 'Vague', 'Clear', 'Evident', 'Precise', 1, 'hard'),
(52, 'Select the correct sentence.', 'She resembles with her mother.', 'She resembles to her mother.', 'She resembles her mother.', 'She is resembling her mother.', 3, 'hard'),
(53, 'Find the correct spelling.', 'Recommend', 'Reccomend', 'Recomend', 'Reccommed', 1, 'hard'),
(54, 'Choose the synonym of “Erratic”.', 'Unstable', 'Stable', 'Constant', 'Predictable', 1, 'hard'),
(55, 'Choose the correct idiom meaning “To let the cat out of the bag”.', 'To reveal a secret', 'To chase a cat', 'To hide information', 'To waste time', 1, 'hard'),
(56, 'Choose the correct antonym of “Sagacious”.', 'Wise', 'Foolish', 'Prudent', 'Clever', 2, 'hard'),
(57, 'Identify the correct sentence.', 'He prefer coffee than tea.', 'He prefers coffee than tea.', 'He prefers coffee to tea.', 'He prefer coffee to tea.', 3, 'hard'),
(58, 'Fill in the blank: “He was too tired to carry _____ his plan.”', 'on', 'out', 'over', 'through', 2, 'hard'),
(59, 'Select the synonym of “Ostentatious”.', 'Simple', 'Showy', 'Modest', 'Plain', 2, 'hard'),
(60, 'Choose the correct option: “He was punished for _____ late.”', 'be', 'being', 'been', 'was', 2, 'hard');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `aptitude_questions`
--
ALTER TABLE `aptitude_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_status`
--
ALTER TABLE `exam_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_awareness_questions`
--
ALTER TABLE `general_awareness_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programming_questions`
--
ALTER TABLE `programming_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_results_roll_number` (`roll_number`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`roll_number`);

--
-- Indexes for table `technical_questions`
--
ALTER TABLE `technical_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verbal_questions`
--
ALTER TABLE `verbal_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aptitude_questions`
--
ALTER TABLE `aptitude_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `general_awareness_questions`
--
ALTER TABLE `general_awareness_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `programming_questions`
--
ALTER TABLE `programming_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `technical_questions`
--
ALTER TABLE `technical_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `verbal_questions`
--
ALTER TABLE `verbal_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`roll_number`) REFERENCES `students` (`roll_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
