-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2025 at 01:48 PM
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
(1, 'What is 2+2?', '3', '4', '5', '6', 2, 'easy'),
(2, 'What is the square root of 144?', '12', '14', '10', '16', 1, 'medium'),
(3, 'If x^2 = 16, what is x?', '2', '4', '-4', '8', 3, 'hard'),
(4, 'What is 5 + 3?', '6', '7', '8', '9', 3, 'easy'),
(5, 'What is 10 - 4?', '6', '7', '5', '4', 1, 'easy'),
(6, 'What is 7 * 2?', '12', '14', '16', '13', 2, 'easy'),
(7, 'What is 100 ÷ 10?', '5', '10', '20', '25', 2, 'easy'),
(8, 'What is 9 + 6?', '15', '14', '16', '13', 1, 'easy'),
(9, 'What is the square of 3?', '6', '9', '12', '8', 2, 'easy'),
(10, 'What is 81 ÷ 9?', '8', '7', '9', '6', 3, 'easy'),
(11, 'What is 2^3?', '6', '8', '4', '10', 2, 'easy'),
(12, 'What is 15 - 7?', '7', '8', '6', '9', 2, 'easy'),
(13, 'What is the next number in 2, 4, 6, ?', '8', '7', '10', '12', 1, 'easy'),
(14, 'What is the result of 3 + 3 * 2?', '12', '9', '6', '8', 2, 'easy'),
(15, 'Which number is even?', '3', '5', '8', '9', 3, 'easy'),
(16, 'What is 49 ÷ 7?', '6', '7', '8', '9', 2, 'easy'),
(17, 'What is the value of 0 × 5?', '0', '5', '1', '10', 1, 'easy'),
(18, 'How many sides does a triangle have?', '3', '4', '5', '6', 1, 'easy'),
(19, 'What is the opposite of subtraction?', 'Multiplication', 'Division', 'Addition', 'None', 3, 'easy'),
(20, 'Which is a prime number?', '4', '6', '9', '7', 4, 'easy'),
(21, 'What is the LCM of 6 and 8?', '24', '12', '18', '36', 1, 'medium'),
(22, 'What is 25% of 200?', '40', '50', '60', '45', 2, 'medium'),
(23, 'What is the square of 15?', '225', '215', '205', '230', 1, 'medium'),
(24, 'What is 3/4 of 80?', '50', '60', '70', '40', 2, 'medium'),
(25, 'Simplify: 5 + 2 * 3 - 1', '10', '11', '12', '13', 2, 'medium'),
(26, 'What is the average of 4, 8, 10, 12?', '8', '9', '10', '11', 2, 'medium'),
(27, 'Convert 0.75 to a fraction.', '1/2', '3/4', '2/3', '1/3', 2, 'medium'),
(28, 'What is 16% of 250?', '40', '42', '44', '46', 1, 'medium'),
(29, 'If a train travels 60 km in 1.5 hours, what is its speed?', '30 km/h', '40 km/h', '50 km/h', '45 km/h', 4, 'medium'),
(30, 'What is the area of a rectangle with length 8 and width 6?', '48', '54', '56', '64', 1, 'medium'),
(31, 'Solve: 2x + 3 = 11', '4', '5', '6', '7', 1, 'medium'),
(32, 'If x = 3, what is the value of x^3 - x?', '24', '27', '21', '30', 1, 'medium'),
(33, 'Simplify: (2 + 3)^2', '25', '20', '10', '15', 1, 'medium'),
(34, 'Find the simple interest on $500 at 5% for 2 years.', '50', '45', '55', '60', 1, 'medium'),
(35, 'A man walks 5 km north, then 3 km east. How far is he from the start?', '8 km', '7 km', '6 km', '5 km', 2, 'medium'),
(36, 'What is the next prime number after 19?', '21', '22', '23', '24', 3, 'medium'),
(37, 'If the perimeter of a square is 40, what is one side?', '10', '8', '12', '14', 1, 'medium'),
(38, 'What is 3.5 + 4.25?', '7.25', '7.5', '7.75', '8', 3, 'medium'),
(39, 'If 5x = 20, what is x?', '2', '3', '4', '5', 3, 'medium'),
(40, 'Find the median of 5, 7, 9, 11, 13', '7', '9', '11', '13', 2, 'medium'),
(41, 'A car covers 180 km in 3 hours. Find the speed.', '50 km/h', '60 km/h', '70 km/h', '80 km/h', 2, 'medium'),
(42, 'How many degrees in a right angle?', '45°', '60°', '90°', '180°', 3, 'medium'),
(43, 'What is 0.2 × 0.5?', '0.1', '0.2', '0.25', '0.3', 1, 'medium'),
(44, 'What is the cube root of 64?', '2', '3', '4', '5', 3, 'medium'),
(45, 'Find the perimeter of a triangle with sides 5, 6, 7.', '17', '18', '19', '20', 2, 'medium'),
(46, 'How many prime numbers between 1 and 10?', '2', '3', '4', '5', 3, 'medium'),
(47, 'What is the square of 18?', '324', '316', '336', '300', 1, 'medium'),
(48, 'Convert 3/5 to a percentage.', '40%', '60%', '70%', '80%', 2, 'medium'),
(49, 'What is 1/4 of 100?', '20', '25', '30', '35', 2, 'medium'),
(50, 'If x^2 - 4x + 4 = 0, what is x?', '2', '4', '0', '-2', 1, 'hard'),
(51, 'Solve: (3x - 2)(x + 4) = 0', '-4 or 2/3', '-4 or 3', '4 or -2/3', '2 or 3', 1, 'hard'),
(52, 'A man can do a work in 10 days. If he works with a partner, they finish in 6 days. How many days would the partner take alone?', '12', '15', '20', '24', 3, 'hard'),
(53, 'If A:B = 3:4 and B:C = 2:5, find A:C', '3:10', '2:5', '3:5', '4:5', 1, 'hard'),
(54, 'Find the compound interest on $2000 at 5% for 2 years.', '205', '210', '215', '220', 2, 'hard'),
(55, 'Simplify: √(49 + 36)', '10', '11', '12', '13', 2, 'hard'),
(56, 'What is the value of log₃ 81?', '3', '4', '5', '6', 2, 'hard'),
(57, 'Find x: 2^(x+1) = 16', '2', '3', '4', '5', 3, 'hard'),
(58, 'A boat goes 30 km downstream in 2 hours and returns in 3 hours. Find speed of boat in still water.', '10', '12', '14', '15', 1, 'hard'),
(59, 'Solve: x^2 + 6x + 9 = 0', '-3', '3', '-6', '0', 1, 'hard'),
(60, 'A person gains 10% profit by selling an item at $220. What is the cost price?', '200', '210', '190', '230', 1, 'hard'),
(61, 'If sinθ = 0.6, find cosθ', '0.8', '0.6', '0.5', '0.9', 1, 'hard'),
(62, 'In a class, 60% are boys. If there are 30 girls, find total students.', '70', '75', '80', '85', 3, 'hard'),
(63, 'A number when divided by 7 leaves remainder 5. What is the remainder when its square is divided by 7?', '2', '4', '3', '5', 2, 'hard'),
(64, 'A pipe can fill a tank in 12 hours, another can empty it in 8 hours. If both are opened together, in how many hours will it be empty?', '24', '16', '10', '8', 2, 'hard'),
(65, 'Solve: If 3x + 1 = 2x + 9, what is x?', '6', '7', '8', '9', 1, 'hard'),
(66, 'If the ratio of angles in a triangle is 2:3:4, what is the largest angle?', '40°', '80°', '100°', '90°', 3, 'hard'),
(67, 'What is the probability of getting a sum of 9 from two dice?', '1/6', '1/8', '1/9', '1/12', 1, 'hard'),
(68, 'A person invests $1200 at 10% p.a. compound interest. What will be the amount after 2 years?', '1440', '1452', '1460', '1458', 4, 'hard'),
(69, 'Solve: x^3 - 27 = 0', '2', '3', '4', '5', 2, 'hard'),
(70, 'The average age of 5 people is 30. One new person joins and the new average is 32. What is the age of the new person?', '38', '40', '42', '44', 4, 'hard'),
(71, 'If the selling price of 10 items equals the cost price of 11 items, find the gain or loss percentage.', '9.09% loss', '10% loss', '9.09% gain', '10% gain', 1, 'hard'),
(72, 'What is the smallest number which when divided by 12, 18, and 24 leaves a remainder of 5?', '77', '101', '173', '197', 3, 'hard'),
(73, 'Solve for x: 4x – (2x – 3) = 9', '3', '4', '5', '6', 3, 'hard'),
(74, 'A shopkeeper bought an article for ₹1,200 and sold it for ₹1,500. What is the profit percentage?', '20%', '25%', '30%', '15%', 2, 'medium'),
(75, 'If 4 men can do a piece of work in 6 days, in how many days will 8 men do it?', '3', '4', '5', '2', 1, 'easy'),
(76, 'The average of five consecutive numbers is 27. What is the largest number?', '27', '28', '29', '30', 3, 'easy'),
(77, 'A train travels 180 km in 3 hours. What is its speed in km/h?', '50', '60', '65', '70', 2, 'easy'),
(78, 'If A is twice as fast as B and B can complete a work in 24 days, in how many days can A and B together complete the work?', '8', '10', '12', '16', 3, 'medium'),
(79, 'The sum of the ages of a father and son is 60. If father is 4 times as old as the son, what is the son’s age?', '10', '12', '15', '20', 1, 'medium'),
(80, 'A bag contains 4 red balls and 6 blue balls. One ball is drawn at random. What is the probability of drawing a blue ball?', '1/2', '3/5', '2/3', '1/3', 2, 'medium'),
(81, 'If the ratio of two numbers is 3:4 and their sum is 84, what is the smaller number?', '24', '28', '32', '36', 2, 'easy'),
(82, 'What is the compound interest on ₹10,000 for 2 years at 10% per annum compounded annually?', '₹1,000', '₹2,000', '₹2,100', '₹2,200', 3, 'hard'),
(83, 'A car covers 240 km in 4 hours. What is its speed in m/s?', '16.6', '17', '18', '20', 1, 'medium'),
(84, 'If 12 men can finish a work in 15 days, in how many days will 18 men finish it?', '8', '9', '10', '12', 2, 'medium'),
(85, 'The average of 20 numbers is zero. How many of them can be greater than zero?', '0', '1', '19', 'None of these', 3, 'hard'),
(86, 'If the cost price is ₹250 and selling price is ₹300, what is the profit percentage?', '10%', '15%', '20%', '25%', 3, 'easy'),
(87, 'If a number is 30% less than 200, what is the number?', '140', '150', '160', '170', 1, 'easy'),
(88, 'Two pipes can fill a tank in 20 min and 30 min respectively. How long will it take to fill the tank if both are opened together?', '10', '12', '15', '18', 2, 'medium'),
(89, 'If the price of sugar rises from ₹24/kg to ₹30/kg, by what percent must a household reduce consumption so as not to increase expenditure?', '15%', '20%', '18%', '25%', 2, 'hard'),
(90, 'A man can row 6 km/h in still water. If the speed of the current is 2 km/h, what is his speed upstream?', '3', '4', '5', '6', 2, 'medium'),
(91, 'The difference between the squares of two consecutive odd integers is:', '2', '4', '8', '16', 3, 'medium'),
(92, 'The sum of first 50 natural numbers is:', '1250', '1275', '1300', '1350', 2, 'easy'),
(93, 'If 45% of a number is 90, what is the number?', '180', '190', '200', '210', 3, 'easy'),
(94, 'A and B together can complete a work in 8 days. A alone can complete it in 12 days. How many days will B take to complete the work alone?', '18', '20', '24', '16', 1, 'medium'),
(95, 'If a sum doubles itself in 10 years at simple interest, what is the rate of interest?', '5%', '8%', '10%', '12%', 3, 'medium'),
(96, 'The perimeter of a rectangle is 100 m and its length is 30 m. What is its breadth?', '20', '25', '15', '10', 1, 'easy'),
(97, 'The HCF of 36 and 48 is:', '6', '8', '12', '18', 3, 'easy'),
(98, 'If 3x + 5 = 20, what is the value of x?', '3', '4', '5', '6', 2, 'easy'),
(99, 'The LCM of 12, 15 and 18 is:', '180', '360', '540', '720', 2, 'medium'),
(100, 'If the speed of a car is increased by 25%, what is the percentage decrease in time to cover the same distance?', '15%', '20%', '25%', '30%', 2, 'hard'),
(101, 'A can do a piece of work in 15 days, B in 20 days. If they work together, in how many days will they finish?', '8', '9', '10', '12', 2, 'medium'),
(102, 'What is the value of √2025?', '45', '40', '42', '50', 1, 'easy'),
(103, 'The difference between simple and compound interest on ₹10,000 at 10% for 2 years is:', '₹10', '₹50', '₹100', '₹200', 3, 'hard'),
(104, 'A sum of ₹5000 amounts to ₹6000 in 2 years at simple interest. What is the rate?', '8%', '10%', '12%', '15%', 3, 'medium'),
(105, 'A man walks 10 km at 4 km/h and returns at 5 km/h. What is his average speed?', '4.4', '4.5', '4.6', '4.8', 2, 'hard'),
(106, 'If 20% of x is equal to 40% of y, then x : y is:', '1 : 2', '2 : 1', '3 : 2', '2 : 3', 2, 'medium'),
(107, 'The selling price of 8 articles is equal to the cost price of 10 articles. What is the profit percentage?', '20%', '25%', '30%', '40%', 2, 'easy'),
(108, 'If 15 men can complete a work in 12 days, how many men will complete it in 6 days?', '20', '25', '30', '35', 3, 'easy'),
(109, 'What is the sum of angles of a pentagon?', '360°', '450°', '540°', '600°', 3, 'easy'),
(110, 'If the diameter of a circle is 14 cm, what is its circumference?', '44 cm', '42 cm', '46 cm', '48 cm', 1, 'medium'),
(111, 'If the price of petrol increases by 25%, by how much percent should a consumer reduce consumption to keep expenditure constant?', '20%', '25%', '15%', '10%', 1, 'hard'),
(112, 'The average marks of 30 students is 40. If the teacher’s marks are included, the average becomes 41. What are the teacher’s marks?', '70', '71', '72', '73', 2, 'medium'),
(113, 'The area of a triangle is 54 cm² and its base is 9 cm. What is its height?', '10', '11', '12', '13', 3, 'easy'),
(114, 'A sum triples itself in 20 years at simple interest. What is the rate of interest?', '8%', '10%', '12%', '15%', 2, 'hard'),
(115, 'If x + 1/x = 4, what is the value of x² + 1/x²?', '14', '15', '16', '18', 1, 'hard'),
(116, 'Two numbers are in the ratio 5:7 and their LCM is 420. What is the smaller number?', '30', '35', '25', '20', 1, 'medium'),
(117, 'If 15 workers can finish a job in 18 days, how many workers are needed to finish it in 9 days?', '20', '25', '30', '35', 3, 'easy'),
(118, 'If 10% of a number is 50, what is the number?', '400', '500', '600', '700', 2, 'easy'),
(119, 'The difference between the compound interest and simple interest on ₹2500 at 8% for 2 years is:', '₹12', '₹16', '₹20', '₹25', 3, 'hard'),
(120, 'The perimeter of a square is 48 cm. What is its area?', '144', '128', '132', '122', 1, 'easy'),
(121, 'If A can do a work in 6 days and B can do it in 8 days, in how many days will they do it together?', '3', '3.5', '4', '4.5', 3, 'medium'),
(122, 'The population of a town is 20000. It increases by 10% annually. What will be the population after 2 years?', '24000', '24200', '24220', '24400', 3, 'medium'),
(123, 'What is the cube root of 2197?', '11', '12', '13', '14', 3, 'easy'),
(124, 'If 12 men can complete a job in 15 days, how many days will 18 men take?', '8', '9', '10', '12', 2, 'medium'),
(125, 'The simple interest on ₹8000 at 12% for 3 years is:', '₹2800', '₹2880', '₹2900', '₹3000', 2, 'easy'),
(126, 'What is the probability of getting an even number on a dice?', '1/6', '1/3', '1/2', '2/3', 3, 'easy'),
(127, 'If the price of sugar increases by 20%, by what percent should consumption decrease?', '16.66%', '15%', '20%', '10%', 1, 'hard'),
(128, 'What is the area of a circle with radius 7 cm?', '144', '150', '154', '160', 3, 'easy'),
(129, 'If a train passes a pole in 10 sec at a speed of 54 km/h, its length is:', '120 m', '130 m', '140 m', '150 m', 1, 'medium'),
(130, 'What is the smallest prime number?', '0', '1', '2', '3', 3, 'easy'),
(131, 'If 6% of x is equal to 8% of y, then x:y is:', '3:4', '4:3', '2:3', '3:2', 2, 'medium'),
(132, 'A sum of ₹500 becomes ₹600 in 4 years at simple interest. What is the rate?', '4%', '5%', '6%', '7%', 2, 'medium'),
(133, 'If a sum quadruples itself in 20 years at simple interest, what is the rate?', '15%', '20%', '18%', '12%', 4, 'hard'),
(134, 'The average of 10 numbers is 25. If one number is removed, average becomes 24. What is the removed number?', '30', '32', '34', '36', 3, 'medium'),
(135, 'What is the value of (0.1)²?', '0.01', '0.001', '0.0001', '1', 1, 'easy'),
(136, 'If 2x – 3 = 7, what is x?', '4', '5', '6', '7', 2, 'easy'),
(137, 'What is the ratio of 45 minutes to 2 hours?', '2:3', '3:4', '3:2', '4:3', 1, 'medium'),
(138, 'If a:b = 2:3 and b:c = 4:5, then a:c = ?', '8:15', '2:5', '4:5', '6:5', 1, 'medium'),
(139, 'The sum of squares of first 5 natural numbers is:', '55', '30', '25', '50', 1, 'medium'),
(140, 'What is the percentage of 3/8?', '35%', '37.5%', '40%', '45%', 2, 'easy'),
(141, 'A can do a work in 10 days, B in 15 days, C in 30 days. If they work together, how long will it take?', '4', '5', '6', '7', 2, 'hard'),
(142, 'What is the square of 0.5?', '0.05', '0.5', '0.25', '1', 3, 'easy'),
(143, 'If 7x = 84, what is x?', '10', '11', '12', '13', 3, 'easy'),
(144, 'What is the value of π?', '3.14', '3.141', '3.142', 'All of these', 4, 'medium'),
(145, 'If 60% of a number is 120, what is the number?', '180', '190', '200', '210', 3, 'easy'),
(146, 'If 10 men can dig a pit in 8 days, how many days will 5 men take?', '12', '14', '15', '16', 4, 'medium'),
(147, 'What is the compound interest on ₹4000 at 5% for 2 years?', '₹400', '₹405', '₹410', '₹420', 2, 'medium'),
(148, 'The difference between the largest and smallest prime numbers between 1 and 20 is:', '16', '17', '18', '19', 2, 'easy'),
(149, 'What is the value of log10(1000)?', '1', '2', '3', '4', 3, 'medium'),
(150, 'If a train crosses a platform in 36 seconds at a speed of 54 km/h and the length of the train is 120 m, what is the length of the platform?', '240 m', '260 m', '280 m', '300 m', 3, 'hard');

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
(1, 'What is the capital of France?', 'Paris', 'London', 'Berlin', 'Madrid', 1, 'easy'),
(2, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Venus', 2, 'easy'),
(3, 'H2O is the chemical formula of what?', 'Oxygen', 'Hydrogen', 'Salt', 'Water', 4, 'easy'),
(4, 'Who wrote \"Romeo and Juliet\"?', 'Shakespeare', 'Tolstoy', 'Hemingway', 'Dickens', 1, 'easy'),
(5, 'Which animal is called the King of the Jungle?', 'Elephant', 'Tiger', 'Lion', 'Leopard', 3, 'easy'),
(6, 'What is the largest ocean?', 'Atlantic', 'Pacific', 'Indian', 'Arctic', 2, 'easy'),
(7, 'Which country gifted the Statue of Liberty to the USA?', 'UK', 'France', 'Italy', 'Germany', 2, 'easy'),
(8, 'Which gas do plants absorb?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 2, 'easy'),
(9, 'What is the capital of India?', 'Mumbai', 'Delhi', 'Kolkata', 'Chennai', 2, 'easy'),
(10, 'What is the boiling point of water at sea level?', '90°C', '100°C', '80°C', '120°C', 2, 'easy'),
(11, 'What is the national currency of Japan?', 'Yen', 'Won', 'Ruble', 'Dollar', 1, 'easy'),
(12, 'Who is the Father of Computers?', 'Newton', 'Babbage', 'Einstein', 'Turing', 2, 'easy'),
(13, 'Which continent is Egypt located in?', 'Asia', 'Europe', 'Africa', 'Australia', 3, 'easy'),
(14, 'What is the smallest prime number?', '1', '2', '3', '5', 2, 'easy'),
(15, 'How many continents are there?', '5', '6', '7', '8', 3, 'easy'),
(16, 'What is the capital of Australia?', 'Sydney', 'Melbourne', 'Canberra', 'Brisbane', 3, 'medium'),
(17, 'Which country hosted the 2016 Summer Olympics?', 'China', 'UK', 'Brazil', 'Russia', 3, 'medium'),
(18, 'Who wrote “The Origin of Species”?', 'Darwin', 'Einstein', 'Newton', 'Marx', 1, 'medium'),
(19, 'What is the most abundant gas in Earth’s atmosphere?', 'Oxygen', 'Nitrogen', 'Carbon dioxide', 'Argon', 2, 'medium'),
(20, 'Which city is known as the Silicon Valley of India?', 'Mumbai', 'Bengaluru', 'Chennai', 'Hyderabad', 2, 'medium'),
(21, 'What year did the Berlin Wall fall?', '1985', '1987', '1989', '1991', 3, 'medium'),
(22, 'Which doctor is known as the “Father of the Nation” in India?', 'Netaji Bose', 'Gandhi', 'Patel', 'Ambedkar', 2, 'medium'),
(23, 'What is the smallest continent?', 'Europe', 'Australia', 'Antarctica', 'South America', 2, 'medium'),
(24, 'Which mineral is hardest on Mohs scale?', 'Quartz', 'Diamond', 'Topaz', 'Corundum', 2, 'medium'),
(25, 'Who discovered gravity when an apple fell on his head?', 'Einstein', 'Newton', 'Galileo', 'Kepler', 2, 'medium'),
(26, 'Which country is known for the invention of paper?', 'Egypt', 'China', 'Greece', 'India', 2, 'medium'),
(27, 'Which vitamin is produced when skin is exposed to sunlight?', 'Vitamin A', 'Vitamin B12', 'Vitamin C', 'Vitamin D', 4, 'medium'),
(28, 'What is the national sport of Japan?', 'Baseball', 'Sumo', 'Karate', 'Judo', 2, 'medium'),
(29, 'What is the SI unit of force?', 'Newton', 'Pascal', 'Joule', 'Watt', 1, 'medium'),
(30, 'Which Nobel Prize did Malala Yousafzai win?', 'Peace', 'Literature', 'Economics', 'Chemistry', 1, 'medium'),
(31, 'Which is the largest desert?', 'Sahara', 'Gobi', 'Kalahari', 'Arctic', 1, 'medium'),
(32, 'Which organ detoxifies harmful substances?', 'Stomach', 'Kidney', 'Liver', 'Lungs', 3, 'medium'),
(33, 'What is the capital of Canada?', 'Toronto', 'Vancouver', 'Ottawa', 'Montreal', 3, 'medium'),
(34, 'Which country is landlocked?', 'Chile', 'Nepal', 'Australia', 'Indonesia', 2, 'medium'),
(35, 'Who invented the telephone?', 'Bell', 'Edison', 'Marconi', 'Tesla', 1, 'medium'),
(36, 'What is the common name for sodium chloride?', 'Sugar', 'Salt', 'Baking soda', 'Bleach', 2, 'medium'),
(37, 'Who is the first woman to travel into space?', 'Amelia Earhart', 'Valentina Tereshkova', 'Sally Ride', 'Mae Jemison', 2, 'medium'),
(38, 'Which city hosted the first modern Olympics in 1896?', 'Paris', 'Athens', 'London', 'Rome', 2, 'medium'),
(39, 'What is the boiling point of mercury?', '356.7 °C', '100 °C', '250 °C', '500 °C', 1, 'medium'),
(40, 'Which planet is the largest in solar system?', 'Jupiter', 'Saturn', 'Neptune', 'Uranus', 1, 'medium'),
(41, 'Which Indian state has the longest coastline?', 'Gujarat', 'Tamil Nadu', 'Andhra Pradesh', 'Maharashtra', 1, 'hard'),
(42, 'Who was India’s first female President?', 'Indira Gandhi', 'Sarojini Naidu', 'Pratibha Patil', 'Sushma Swaraj', 3, 'hard'),
(43, 'Which city is known as the \"Detroit of Asia\"?', 'Chennai', 'Pune', 'Bengaluru', 'Hyderabad', 1, 'hard'),
(44, 'The Bretton Woods Conference established which two major financial institutions?', 'WTO & IMF', 'IMF & World Bank', 'UNESCO & WTO', 'UN & WHO', 2, 'hard'),
(45, 'Who is known for the economic theory \"comparative advantage\"?', 'Adam Smith', 'David Ricardo', 'Keynes', 'Milton Friedman', 2, 'hard'),
(46, 'Which country has the most official languages?', 'India', 'Switzerland', 'South Africa', 'Zimbabwe', 4, 'hard'),
(47, 'Which planet has the strongest gravity?', 'Jupiter', 'Saturn', 'Earth', 'Neptune', 1, 'hard'),
(48, 'In which year was the UN founded?', '1940', '1945', '1950', '1960', 2, 'hard'),
(49, 'Which chemical element is used in nuclear reactors as fuel?', 'Uranium', 'Thorium', 'Plutonium', 'Radon', 1, 'hard'),
(50, 'What is the name of the boundary between India and Pakistan?', 'Maginot Line', 'Durand Line', 'McMahon Line', 'Radcliffe Line', 4, 'hard'),
(51, 'Which UN body is responsible for maintaining international peace?', 'UNESCO', 'UNICEF', 'Security Council', 'Economic Council', 3, 'hard'),
(52, 'Who was the first female Prime Minister in the world?', 'Indira Gandhi', 'Golda Meir', 'Margaret Thatcher', 'Sirimavo Bandaranaike', 4, 'hard'),
(53, 'What is the volume of Earth’s atmosphere in km³ (approx)?', '5 million', '50 million', '1 trillion', '4 trillion', 4, 'hard'),
(54, 'Which element has the highest melting point?', 'Tungsten', 'Carbon', 'Iron', 'Nickel', 1, 'hard'),
(55, 'What is the name of the world’s largest coral reef system?', 'Red Sea Reef', 'Great Barrier Reef', 'Belize Reef', 'Maldives Reef', 2, 'hard'),
(56, 'Which country is the largest producer of lithium as of 2025?', 'Chile', 'Australia', 'Argentina', 'China', 2, 'hard'),
(57, 'Who invented the first successful polio vaccine?', 'Sabin', 'Salk', 'Pasteur', 'Fleming', 2, 'hard'),
(58, 'Which treaty ended World War I?', 'Treaty of Versailles', 'Treaty of Paris', 'Treaty of Ghent', 'Treaty of Tordesillas', 1, 'hard'),
(59, 'What is the approximate age of the universe?', '13.8 billion years', '4.5 billion years', '7 billion years', '10 billion years', 1, 'hard'),
(60, 'Which Nobel Prize-winning chemist discovered penicillin?', 'Fleming', 'Curie', 'Pauling', 'Sanger', 1, 'hard'),
(61, 'Which is the rarest blood group worldwide?', 'A‑', 'B‑', 'AB‑', 'AB+', 3, 'hard'),
(62, 'What is the name of India’s first satellite?', 'Aryabhata', 'INSAT‑1', 'Chandrayaan‑1', 'Rohini', 1, 'hard'),
(63, 'Which city is the headquarters of the International Court of Justice?', 'Geneva', 'The Hague', 'New York', 'Vienna', 2, 'hard'),
(64, 'Who developed the theory of general relativity?', 'Newton', 'Einstein', 'Bohr', 'Heisenberg', 2, 'hard'),
(65, 'What is the name of the gene-editing technique awarded the Nobel Prize in Chemistry in 2020?', 'CRISPR‑Cas9', 'Zinc‑finger', 'TALEN', 'Meganuclease', 1, 'hard'),
(66, 'Which African country was formerly known as Rhodesia?', 'Zimbabwe', 'Zambia', 'Botswana', 'Mozambique', 1, 'hard'),
(67, 'What is the capital of Kazakhstan?', 'Almaty', 'Nur‑Sultan', 'Astana', 'Karaganda', 3, 'hard'),
(68, 'Which ocean trench is the deepest known point on Earth?', 'Mariana Trench', 'Tonga Trench', 'Java Trench', 'Kuril–Kamchatka Trench', 1, 'hard'),
(69, 'What is the Mandelbrot set?', 'A snail species', 'A fractal pattern', 'A planet', 'A mathematical theorem', 2, 'hard'),
(70, 'Which poet wrote \"The Waste Land\"?', 'T.S. Eliot', 'W.B. Yeats', 'Robert Frost', 'Langston Hughes', 1, 'hard'),
(71, 'Which country recently launched the “Digital Rupee”?', 'USA', 'China', 'India', 'Japan', 3, 'hard'),
(72, 'Who was the first Indian woman to win an Olympic medal?', 'P.T. Usha', 'Karnam Malleswari', 'Mary Kom', 'Saina Nehwal', 2, 'medium'),
(73, 'What is the currency of South Korea?', 'Yen', 'Won', 'Ringgit', 'Baht', 2, 'easy'),
(74, 'Where is the headquarters of UNESCO?', 'Paris', 'Geneva', 'New York', 'London', 1, 'easy'),
(75, 'Which planet has the most moons?', 'Earth', 'Saturn', 'Jupiter', 'Neptune', 2, 'medium'),
(76, 'What is the chemical name of baking soda?', 'Sodium bicarbonate', 'Calcium carbonate', 'Sodium carbonate', 'Magnesium bicarbonate', 1, 'medium'),
(77, 'Who discovered Penicillin?', 'Alexander Fleming', 'Louis Pasteur', 'Robert Koch', 'Edward Jenner', 1, 'medium'),
(78, 'What is the longest river in the world?', 'Amazon', 'Nile', 'Yangtze', 'Mississippi', 2, 'easy'),
(79, 'Which country is known as the “Land of the Rising Sun”?', 'China', 'Japan', 'South Korea', 'Thailand', 2, 'easy'),
(80, 'What is the national game of Canada?', 'Cricket', 'Hockey', 'Lacrosse', 'Baseball', 3, 'hard'),
(81, 'Who was the first President of the USA?', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'John Adams', 1, 'easy'),
(82, 'Where are the headquarters of the World Bank?', 'Geneva', 'Washington D.C.', 'Paris', 'New York', 2, 'medium'),
(83, 'Which Indian state has the highest population?', 'Uttar Pradesh', 'Maharashtra', 'Bihar', 'West Bengal', 1, 'easy'),
(84, 'When was the United Nations established?', '1945', '1950', '1939', '1947', 1, 'medium'),
(85, 'What is the capital of Canada?', 'Ottawa', 'Toronto', 'Vancouver', 'Montreal', 1, 'easy'),
(86, 'Who wrote the book “Origin of Species”?', 'Charles Darwin', 'Isaac Newton', 'Albert Einstein', 'Gregor Mendel', 1, 'medium'),
(87, 'Which Indian city is known as the “Silicon Valley of India”?', 'Hyderabad', 'Mumbai', 'Bangalore', 'Pune', 3, 'easy'),
(88, 'Who is the founder of Microsoft?', 'Steve Jobs', 'Larry Page', 'Bill Gates', 'Mark Zuckerberg', 3, 'easy'),
(89, 'What is the chemical formula of water?', 'H2O', 'H2O2', 'HO2', 'H3O', 1, 'easy'),
(90, 'What is the national animal of Australia?', 'Kangaroo', 'Emu', 'Koala', 'Platypus', 1, 'easy'),
(91, 'Which country recently joined BRICS?', 'Saudi Arabia', 'Argentina', 'Iran', 'All of the above', 4, 'hard'),
(92, 'Which Indian state is known as the “Spice Garden of India”?', 'Kerala', 'Goa', 'Assam', 'Tamil Nadu', 1, 'medium'),
(93, 'What is the full form of ISRO?', 'Indian Scientific Research Organisation', 'Indian Space Research Organisation', 'International Space Research Organisation', 'Indian Satellite Research Organisation', 2, 'easy'),
(94, 'What is the boiling point of water at sea level?', '100°C', '90°C', '110°C', '80°C', 1, 'easy'),
(95, 'Which Mughal emperor built the Taj Mahal?', 'Akbar', 'Aurangzeb', 'Shah Jahan', 'Humayun', 3, 'easy'),
(96, 'What is the currency of Switzerland?', 'Euro', 'Franc', 'Krone', 'Pound', 2, 'medium'),
(97, 'Who is the current Secretary-General of the United Nations?', 'António Guterres', 'Ban Ki-moon', 'Kofi Annan', 'Javier Pérez', 1, 'medium'),
(98, 'Where are the headquarters of the European Union?', 'London', 'Brussels', 'Paris', 'Berlin', 2, 'medium'),
(99, 'What is the largest desert in the world?', 'Sahara', 'Gobi', 'Kalahari', 'Antarctic Desert', 4, 'hard'),
(100, 'When did India adopt the Constitution?', '15 August 1947', '26 January 1950', '2 October 1949', '1 January 1950', 2, 'easy'),
(101, 'Which state in India is known for the Gir National Park?', 'Rajasthan', 'Gujarat', 'Madhya Pradesh', 'Maharashtra', 2, 'medium'),
(102, 'Who was the first Indian astronaut?', 'Kalpana Chawla', 'Rakesh Sharma', 'Sunita Williams', 'Vikram Sarabhai', 2, 'medium'),
(103, 'Which country invented paper?', 'India', 'China', 'Egypt', 'Greece', 2, 'medium'),
(104, 'What is the currency of Brazil?', 'Peso', 'Real', 'Dollar', 'Ruble', 2, 'medium'),
(105, 'Who wrote “Geetanjali”?', 'Rabindranath Tagore', 'Sarojini Naidu', 'Bankim Chandra Chatterjee', 'Sri Aurobindo', 1, 'medium'),
(106, 'Which gas is used in fire extinguishers?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Methane', 2, 'easy'),
(107, 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Pablo Picasso', 'Michelangelo', 'Vincent van Gogh', 1, 'easy'),
(108, 'Which Indian city is known as the “Pink City”?', 'Udaipur', 'Jaipur', 'Jodhpur', 'Agra', 2, 'easy'),
(109, 'What is the largest organ in the human body?', 'Heart', 'Liver', 'Skin', 'Lung', 3, 'medium'),
(110, 'Which Indian personality is known as the Missile Man?', 'APJ Abdul Kalam', 'Vikram Sarabhai', 'Homi Bhabha', 'Satish Dhawan', 1, 'medium'),
(111, 'What is the stock market index of India called?', 'Dow Jones', 'Sensex', 'FTSE', 'Nikkei', 2, 'medium'),
(112, 'Which Indian state has the highest literacy rate?', 'Kerala', 'Goa', 'Tamil Nadu', 'Mizoram', 1, 'medium'),
(113, 'Who was the first woman Prime Minister of India?', 'Indira Gandhi', 'Sarojini Naidu', 'Pratibha Patil', 'Sushma Swaraj', 1, 'easy'),
(114, 'What is the capital of Bhutan?', 'Kathmandu', 'Thimphu', 'Paro', 'Dhaka', 2, 'easy'),
(115, 'Which day is celebrated as World Environment Day?', '5 June', '22 April', '1 May', '10 December', 1, 'easy'),
(116, 'What is the largest gland in the human body?', 'Pancreas', 'Liver', 'Kidney', 'Thyroid', 2, 'medium'),
(117, 'Which is the smallest country in the world?', 'Monaco', 'San Marino', 'Vatican City', 'Maldives', 3, 'medium'),
(118, 'Who was known as the Iron Man of India?', 'Sardar Patel', 'Bhagat Singh', 'Subhash Chandra Bose', 'Jawaharlal Nehru', 1, 'easy'),
(119, 'What is the capital of Sri Lanka?', 'Colombo', 'Kandy', 'Galle', 'Jaffna', 1, 'medium'),
(120, 'Which Indian river is known as the “Sorrow of Bihar”?', 'Ganga', 'Kosi', 'Yamuna', 'Brahmaputra', 2, 'hard'),
(121, 'Who was the first Nobel Prize winner in India?', 'CV Raman', 'Rabindranath Tagore', 'Hargobind Khurana', 'Amartya Sen', 2, 'medium'),
(122, 'Which element has the highest electrical conductivity?', 'Gold', 'Copper', 'Silver', 'Platinum', 3, 'hard'),
(123, 'Where is the headquarters of WHO?', 'New York', 'Geneva', 'Paris', 'London', 2, 'easy'),
(124, 'What is the main ingredient in cement?', 'Clay', 'Limestone', 'Gypsum', 'Sand', 2, 'medium'),
(125, 'Which planet is called the Red Planet?', 'Mercury', 'Mars', 'Venus', 'Jupiter', 2, 'easy'),
(126, 'What is the rank of India in GDP (nominal) globally?', '5th', '7th', '3rd', '10th', 1, 'hard'),
(127, 'Which city is known as the Financial Capital of India?', 'New Delhi', 'Bangalore', 'Mumbai', 'Hyderabad', 3, 'easy'),
(128, 'Which year was the Battle of Plassey fought?', '1757', '1764', '1857', '1799', 1, 'hard'),
(129, 'What is the name of India’s first satellite?', 'Rohini', 'Aryabhata', 'INSAT-1A', 'Bhaskara', 2, 'medium'),
(130, 'Which gas causes acid rain?', 'Oxygen', 'Sulfur dioxide', 'Nitrogen', 'Carbon dioxide', 2, 'medium'),
(131, 'Who invented the World Wide Web?', 'Tim Berners-Lee', 'Bill Gates', 'Steve Jobs', 'Larry Page', 1, 'hard'),
(132, 'What is the SI unit of pressure?', 'Pascal', 'Newton', 'Bar', 'Joule', 1, 'easy'),
(133, 'Which country has the largest population?', 'India', 'China', 'USA', 'Indonesia', 2, 'medium'),
(134, 'What is the freezing point of water in Fahrenheit?', '0°F', '32°F', '100°F', '212°F', 2, 'easy'),
(135, 'Who is known as the Father of the Indian Constitution?', 'Jawaharlal Nehru', 'Dr. B.R. Ambedkar', 'Mahatma Gandhi', 'Sardar Patel', 2, 'easy'),
(136, 'Which Indian leader gave the slogan “Jai Jawan Jai Kisan”?', 'Indira Gandhi', 'Mahatma Gandhi', 'Lal Bahadur Shastri', 'Rajiv Gandhi', 3, 'medium'),
(137, 'What is the chemical symbol for Potassium?', 'K', 'P', 'Pt', 'Po', 1, 'easy'),
(138, 'Who discovered electricity?', 'Thomas Edison', 'Benjamin Franklin', 'Michael Faraday', 'Nikola Tesla', 2, 'medium'),
(139, 'Where is the Suez Canal located?', 'Egypt', 'Saudi Arabia', 'Turkey', 'Iran', 1, 'medium'),
(140, 'What is the national fruit of India?', 'Apple', 'Mango', 'Banana', 'Orange', 2, 'easy'),
(141, 'Which city hosted the 2020 Summer Olympics?', 'Tokyo', 'Rio de Janeiro', 'Paris', 'Beijing', 1, 'medium'),
(142, 'Who is the first woman to head the RBI?', 'Arundhati Bhattacharya', 'Usha Thorat', 'Nirmala Sitharaman', 'None', 4, 'hard'),
(143, 'What is the capital of Uzbekistan?', 'Tashkent', 'Astana', 'Baku', 'Bishkek', 1, 'hard'),
(144, 'What is the name of the first nuclear test by India?', 'Shakti', 'Smiling Buddha', 'Pokhran II', 'Trinity', 2, 'hard'),
(145, 'Who discovered the electron?', 'J.J. Thomson', 'Rutherford', 'Bohr', 'Dalton', 1, 'medium'),
(146, 'What is the currency of Bangladesh?', 'Taka', 'Rupee', 'Kyat', 'Rial', 1, 'easy'),
(147, 'Who gave the slogan “Do or Die”?', 'Bhagat Singh', 'Jawaharlal Nehru', 'Mahatma Gandhi', 'Subhash Chandra Bose', 3, 'medium'),
(148, 'Where is the headquarters of IMF?', 'Paris', 'London', 'Washington D.C.', 'New York', 3, 'medium'),
(149, 'What is the national flower of India?', 'Lotus', 'Rose', 'Sunflower', 'Lily', 1, 'easy'),
(150, 'Which country is known as the Land of the Midnight Sun?', 'Norway', 'Sweden', 'Iceland', 'Finland', 1, 'hard');

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
(150, 'What does GIL stand for in Python?', 'Global Instance Lock', 'Global Interpreter Lock', 'General Interpreter Loader', 'Global Initialization Level', 2, 'hard');

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
(2, '980', 'utk', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(3, '980', 'utk', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(4, '980', 'utk', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(5, '980', 'utk', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(6, '980', 'utk', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(7, '980', 'utk', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(8, '980', 'utk', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(9, '980', 'utk', 2, 2, 0, 4, 1, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(10, '980', 'utk', 2, 3, 1, 3, 7, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(11, '980', 'utk', 3, 3, 1, 7, 6, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(12, '980', 'utk', 1, 1, 4, 4, 2, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(13, '980', 'utk', 4, 2, 2, 4, 5, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(14, '980', 'utk', 4, 3, 2, 3, 5, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(15, '980', 'utk', 2, 2, 4, 1, 2, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(16, '980', 'utk', 4, 0, 2, 3, 4, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(17, '980', 'utk', 1, 2, 2, 3, 2, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(18, '980', 'utk', 1, 3, 1, 3, 1, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(19, '980', 'utk', 1, 3, 2, 5, 3, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(20, '980', 'utk', 2, 1, 5, 0, 6, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(21, '786', 'kfftkuf', 4, 5, 5, 4, 7, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(22, '786', 'kfftkuf', 4, 5, 5, 4, 7, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(23, '786', 'kfftkuf', 4, 5, 5, 4, 7, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(24, '056', 'abcd', 10, 2, 4, 7, 7, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(25, '056', 'abcd', 5, 5, 5, 1, 3, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(26, '056', 'abcd', 2, 5, 5, 1, 3, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(27, '056', 'abcd', 3, 4, 5, 1, 3, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(28, '980', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(29, '056', 'abcd', 2, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(30, '123', 'kfftkuf', 5, 5, 6, 9, 6, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(31, '123', 'kfftkuf', 7, 9, 5, 1, 7, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(32, '123', 'kfftkuf', 8, 8, 6, 7, 5, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(33, '123', 'kfftkuf', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(34, '123', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(35, '123', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(36, '123', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(37, '869', 'ash', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(38, '869', 'ash', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(39, '869', 'ash', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(40, '123', 'wede', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(41, '123', 'wede', 3, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(42, '123', 'wede', 9, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(43, '123', 'wede', 10, 3, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(44, '123', 'wede', 10, 5, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(45, '123', 'wede', 9, 8, 7, 5, 5, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(46, '123', 'wede', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(47, '123', 'wede', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(48, '123', 'wede', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(49, '123', 'wede', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(50, '987', 'john', 0, 1, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(51, '987', 'john', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(52, '987', 'john', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(53, '987', 'john', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(54, '987', 'john', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(55, '987', 'john', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(56, '987', 'john', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(57, '987', 'johnny', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(58, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(59, '908', 'jessy', 4, 3, 6, 5, 3, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(60, '908', 'jessy', 5, 5, 4, 4, 8, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(61, '908', 'jessy', 2, 6, 0, 3, 1, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(62, '908', 'jessy', 2, 6, 0, 3, 1, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(63, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(64, '908', 'jessy', 1, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(65, '908', 'jessy', 5, 4, 0, 2, 2, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(66, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(67, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(68, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(69, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(70, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(71, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(72, '908', 'jessy', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(73, '123', 'aman', 0, 0, 0, 0, 0, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(74, '123', 'aman', 6, 5, 4, 6, 7, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(75, '961', 'P karthik aithal', 9, 4, 9, 5, 8, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(76, '123', 'karthik', 4, 6, 11, 7, 10, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(77, '123', 'karthik', 9, 5, 4, 6, 4, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(78, '123', 'karthik', 5, 8, 5, 8, 11, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(79, '123', 'karthik', 10, 5, 5, 8, 7, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(80, '123', 'karthik', 4, 8, 5, 2, 3, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(81, '123', 'karthik', 4, 2, 3, 4, 5, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(82, '123', 'karthik', 7, 4, 4, 4, 5, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(83, '123', 'karthik', 6, 1, 9, 8, 7, 'Tier 2', '[\"Focus on skill development\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(84, '673', 'P karthik aithal', 6, 7, 9, 3, 5, 'Tier 4', '[\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(85, '123', 'P karthik aithal', 2, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 4/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(86, '123', 'P karthik aithal', 1, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 3/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(87, '123', 'P karthik aithal', 5, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 10/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(88, '123', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 1/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(89, '123', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 1/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(90, '123', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 1/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(91, '123', 'P karthik aithal', 2, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 4/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 0, 0, 100, '2025-10-14 06:10:41'),
(92, '123', 'P karthik aithal', 0, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 1/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 1, 1, 100, '2025-10-14 06:13:16'),
(93, '677', 'vivek', 2, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 2/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 1, 2, 100, '2025-10-14 06:53:15'),
(94, '677', 'vivek', 0, 0, 0, 0, 0, 'Tier 4', '[\"⚠️ Quiz was auto-submitted due to excessive tab switching. Only 1/100 questions were answered.\",\"Enroll in training programs\",\"Strengthen fundamentals\",\"Seek internships\"]', 1, 1, 100, '2025-10-14 09:40:36');

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
('011', 'bhuvi'),
('056', 'abcd'),
('091', 'kfftkuf'),
('100', 'ashu'),
('101', 'vijay'),
('123', 'P karthik aithal'),
('345', 'ibin'),
('456', 'aman'),
('673', 'P karthik aithal'),
('677', 'vivek'),
('786', 'kfftkuf'),
('869', 'ash'),
('908', 'jessy'),
('961', 'P karthik aithal'),
('980', 'P karthik aithal'),
('987', 'johnny');

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
(1, 'Which of these is an example of an operating system?', 'MySQL', 'Linux', 'Oracle', 'Photoshop', 2, 'easy'),
(2, 'Which protocol is used for web browsing?', 'FTP', 'HTTP', 'SMTP', 'SSH', 2, 'easy'),
(3, 'What does IP stand for?', 'Internet Protocol', 'Internal Process', 'Integrated Program', 'Internet Provider', 1, 'easy'),
(4, 'What is the default port for HTTPS?', '80', '21', '443', '25', 3, 'easy'),
(5, 'Which of these is NOT a relational database?', 'MySQL', 'Oracle', 'MongoDB', 'PostgreSQL', 3, 'easy'),
(6, 'What does CPU stand for?', 'Central Processing Unit', 'Control Processing Unit', 'Computer Processing Unit', 'Central Program Unit', 1, 'easy'),
(7, 'Which layer in OSI model deals with IP addressing?', 'Application', 'Network', 'Transport', 'Data Link', 2, 'easy'),
(8, 'Which company developed the Windows OS?', 'Google', 'Microsoft', 'Apple', 'IBM', 2, 'easy'),
(9, 'What does DNS do?', 'Encrypt data', 'Resolve domain names to IP', 'Send emails', 'Provide VPN', 2, 'easy'),
(10, 'Which protocol is used for email transmission?', 'SMTP', 'HTTP', 'FTP', 'POP3', 1, 'easy'),
(11, 'Which file system is used by Windows?', 'EXT4', 'NTFS', 'HFS', 'XFS', 2, 'easy'),
(12, 'What is the main function of RAM?', 'Store permanent data', 'Process instructions', 'Store temporary data', 'Run antivirus', 3, 'easy'),
(13, 'Which device converts digital signals to analog?', 'Switch', 'Router', 'Modem', 'Hub', 3, 'easy'),
(14, 'What does SQL stand for?', 'Structured Query Language', 'System Query Language', 'Simple Query Logic', 'Secure Query Language', 1, 'easy'),
(15, 'Which of these is a cloud computing service model?', 'IaaS', 'CaaS', 'SaaP', 'FaaF', 1, 'easy'),
(16, 'Which of these is NOT an operating system?', 'Ubuntu', 'Android', 'iOS', 'Oracle DB', 4, 'easy'),
(17, 'Which IP version uses 128-bit addresses?', 'IPv4', 'IPv5', 'IPv6', 'IPv8', 3, 'easy'),
(18, 'Which layer ensures reliable delivery of data?', 'Physical', 'Data Link', 'Transport', 'Network', 3, 'easy'),
(19, 'Which tool is used for version control?', 'Docker', 'Git', 'Jenkins', 'Ansible', 2, 'easy'),
(20, 'What does BIOS stand for?', 'Basic Input Output System', 'Binary Integrated Operating System', 'Basic Internal Operation System', 'Basic IO Service', 1, 'easy'),
(21, 'Which of these is a type of virtualization?', 'Application', 'Storage', 'Network', 'All of the above', 4, 'easy'),
(22, 'Which cloud model is shared by multiple organizations?', 'Private', 'Public', 'Hybrid', 'Community', 4, 'easy'),
(23, 'Which device forwards packets based on IP?', 'Switch', 'Router', 'Hub', 'Bridge', 2, 'easy'),
(24, 'What does GUI stand for?', 'Graphical User Interface', 'General User Input', 'Graphical Unified Interface', 'General Utility Interface', 1, 'easy'),
(25, 'Which of these is NOT a programming paradigm?', 'OOP', 'Functional', 'Procedural', 'Relational', 4, 'easy'),
(26, 'Which protocol secures HTTP traffic?', 'SSL/TLS', 'FTP', 'SSH', 'SCP', 1, 'easy'),
(27, 'Which storage type is fastest?', 'SSD', 'HDD', 'Tape', 'CD-ROM', 1, 'easy'),
(28, 'Which of these is a hypervisor?', 'VMware ESXi', 'MySQL', 'Apache', 'Nginx', 1, 'easy'),
(29, 'Which command checks network connectivity?', 'ping', 'ls', 'cd', 'chmod', 1, 'easy'),
(30, 'What does AI stand for?', 'Advanced Internet', 'Artificial Intelligence', 'Automated Integration', 'Applied Informatics', 2, 'easy'),
(31, 'Which scheduling algorithm gives priority to shortest job?', 'FCFS', 'SJF', 'Round Robin', 'Priority', 2, 'medium'),
(32, 'What is RAID 5 used for?', 'Load balancing', 'Data redundancy', 'Data encryption', 'Backup only', 2, 'medium'),
(33, 'Which protocol is used for secure remote login?', 'Telnet', 'SSH', 'FTP', 'SMTP', 2, 'medium'),
(34, 'What is the main purpose of a firewall?', 'Encrypt traffic', 'Block unauthorized access', 'Manage DNS', 'Provide IP', 2, 'medium'),
(35, 'Which cloud model combines public and private clouds?', 'Community', 'Hybrid', 'Private', 'Distributed', 2, 'medium'),
(36, 'What is the default port for MySQL?', '1521', '3306', '1433', '5432', 2, 'medium'),
(37, 'Which hashing algorithm is used in blockchain?', 'SHA-1', 'SHA-256', 'MD5', 'CRC32', 2, 'medium'),
(38, 'Which RAID level provides mirroring?', 'RAID 0', 'RAID 1', 'RAID 5', 'RAID 6', 2, 'medium'),
(39, 'What is the primary key property in DBMS?', 'Duplicate allowed', 'Null allowed', 'Unique & Not Null', 'None of the above', 3, 'medium'),
(40, 'Which algorithm does OSPF use for routing?', 'Bellman-Ford', 'Dijkstra', 'Floyd-Warshall', 'Prim', 2, 'medium'),
(41, 'Which OS uses Mach kernel?', 'Linux', 'Windows', 'macOS', 'Solaris', 3, 'medium'),
(42, 'What does SMTP do?', 'Transfers emails', 'Encrypts files', 'Manages DNS', 'Connects VPN', 1, 'medium'),
(43, 'Which scheduling avoids starvation?', 'Round Robin', 'SJF', 'Priority', 'FCFS', 1, 'medium'),
(44, 'Which device operates at Layer 2 of OSI?', 'Router', 'Switch', 'Gateway', 'Hub', 2, 'medium'),
(45, 'Which algorithm is used for IP packet routing?', 'RIP', 'SMTP', 'DHCP', 'ARP', 1, 'medium'),
(46, 'Which database model uses key-value pairs?', 'Relational', 'Document', 'Graph', 'Key-Value', 4, 'medium'),
(47, 'Which memory allocation technique suffers from fragmentation?', 'Paging', 'Segmentation', 'Swapping', 'All of the above', 2, 'medium'),
(48, 'What is the main role of DNS server?', 'Store passwords', 'Map domain names to IPs', 'Encrypt traffic', 'Provide NAT', 2, 'medium'),
(49, 'Which cloud service is used for software delivery?', 'IaaS', 'PaaS', 'SaaS', 'DaaS', 3, 'medium'),
(50, 'What is the main function of ARP?', 'Resolve IP to MAC', 'Resolve MAC to IP', 'Resolve DNS', 'Resolve Gateway', 1, 'medium'),
(51, 'Which algorithm is used in TCP congestion control?', 'Go-Back-N', 'Leaky Bucket', 'Slow Start', 'Sliding Window', 3, 'hard'),
(52, 'What is the main difference between symmetric and asymmetric encryption?', 'Key size', 'Number of keys used', 'Encryption speed', 'Hashing technique', 2, 'hard'),
(53, 'Which consensus mechanism is used in Ethereum 2.0?', 'Proof of Work', 'Proof of Stake', 'Proof of Authority', 'Delegated Proof', 2, 'hard'),
(54, 'Which OSI layer is responsible for encryption?', 'Presentation', 'Session', 'Application', 'Transport', 1, 'hard'),
(55, 'What is a Zero-Day vulnerability?', 'Known and patched', 'Exploited before discovery', 'Discovered after patch', 'Affects only Linux', 2, 'hard'),
(56, 'Which RAID provides both mirroring and striping?', 'RAID 0', 'RAID 1', 'RAID 5', 'RAID 10', 4, 'hard'),
(57, 'What is the maximum length of IPv6 address?', '32 bits', '64 bits', '128 bits', '256 bits', 3, 'hard'),
(58, 'Which algorithm is used in Kerberos authentication?', 'AES', 'DES', 'RSA', 'MD5', 2, 'hard'),
(59, 'Which protocol is used for transferring files securely?', 'FTP', 'SFTP', 'HTTP', 'SMTP', 2, 'hard'),
(60, 'What is the complexity of Dijkstra’s algorithm?', 'O(V^2)', 'O(V log V + E)', 'O(E^2)', 'O(VE)', 2, 'hard'),
(61, 'Which OS component is responsible for process scheduling?', 'Kernel', 'Shell', 'Driver', 'Daemon', 1, 'hard'),
(62, 'Which cloud deployment model ensures the highest security?', 'Public', 'Private', 'Hybrid', 'Community', 2, 'hard'),
(63, 'What is the main difference between IPv4 and IPv6 header?', 'Checksum removed in IPv6', 'IPv6 header smaller', 'IPv6 uses ARP', 'IPv4 uses 128-bit', 1, 'hard'),
(64, 'Which hashing algorithm is considered broken?', 'SHA-256', 'SHA-1', 'MD5', 'CRC32', 3, 'hard'),
(65, 'Which storage type uses block-level access?', 'NAS', 'SAN', 'Object Storage', 'Tape Storage', 2, 'hard'),
(66, 'Which feature of cloud computing allows scaling resources dynamically?', 'Elasticity', 'Resilience', 'Reliability', 'Redundancy', 1, 'hard'),
(67, 'What does BGP stand for?', 'Border Gateway Protocol', 'Binary Gateway Protocol', 'Basic Gateway Process', 'Border Graph Protocol', 1, 'hard'),
(68, 'Which attack exploits SQL vulnerabilities?', 'XSS', 'SQL Injection', 'CSRF', 'MITM', 2, 'hard'),
(69, 'Which type of virtualization requires hardware support?', 'Full Virtualization', 'Paravirtualization', 'Containerization', 'OS-level', 1, 'hard'),
(70, 'What is the default block size in HDFS?', '32 MB', '64 MB', '128 MB', '256 MB', 3, 'hard'),
(71, 'Which NoSQL database uses a column-family store?', 'MongoDB', 'Cassandra', 'Redis', 'Neo4j', 2, 'hard'),
(72, 'What is the primary function of a load balancer?', 'Encrypt traffic', 'Distribute traffic', 'Store sessions', 'Provide firewall', 2, 'hard'),
(73, 'Which scheduling algorithm is used in Linux?', 'Round Robin', 'Completely Fair Scheduler', 'Priority', 'SJF', 2, 'hard'),
(74, 'Which distributed system issue does CAP theorem describe?', 'Latency', 'Consistency', 'Caching', 'Security', 2, 'hard'),
(75, 'Which RAID level can tolerate two disk failures?', 'RAID 5', 'RAID 6', 'RAID 10', 'RAID 0', 2, 'hard'),
(76, 'What is a honeypot used for?', 'Authentication', 'Intrusion Detection', 'Performance Tuning', 'Data Encryption', 2, 'hard'),
(77, 'Which caching mechanism is used in CDNs?', 'Write-through', 'Read-through', 'Edge Caching', 'Lazy Loading', 3, 'hard'),
(78, 'Which consensus algorithm is used in Hyperledger Fabric?', 'Raft', 'PBFT', 'Paxos', 'PoS', 2, 'hard'),
(79, 'What is the function of NAT?', 'Translate IP addresses', 'Encrypt packets', 'Route traffic', 'Assign DNS', 1, 'hard'),
(80, 'Which protocol does DNS use by default?', 'TCP', 'UDP', 'Both TCP and UDP', 'HTTP', 3, 'hard'),
(81, 'Which part of the OS is responsible for memory management?', 'Kernel', 'Shell', 'Scheduler', 'Daemon', 1, 'hard'),
(82, 'What is the default MTU size in Ethernet?', '1280 bytes', '1500 bytes', '4096 bytes', '512 bytes', 2, 'hard'),
(83, 'Which approach is used for eventual consistency in distributed systems?', '2PC', 'Gossip Protocol', 'Locking', 'Snapshot Isolation', 2, 'hard'),
(84, 'What is the difference between NAS and SAN?', 'NAS uses block storage, SAN uses file', 'NAS uses file storage, SAN uses block', 'Both use block storage', 'Both use file storage', 2, 'hard'),
(85, 'Which algorithm is used for deadlock detection?', 'Wait-Die', 'Banker’s', 'Graph Reduction', 'FIFO', 3, 'hard'),
(86, 'What is the default port for LDAP?', '139', '389', '636', '443', 2, 'hard'),
(87, 'Which HTTP method is idempotent?', 'POST', 'GET', 'PATCH', 'CONNECT', 2, 'hard'),
(88, 'Which cryptographic principle ensures data integrity?', 'Confidentiality', 'Availability', 'Hashing', 'Non-repudiation', 3, 'hard'),
(89, 'What does ARP spoofing attack target?', 'MAC-IP mapping', 'Routing tables', 'DNS cache', 'Encryption keys', 1, 'hard'),
(90, 'Which is the primary advantage of containerization over VMs?', 'Stronger isolation', 'Lighter weight', 'Slower startup', 'Requires hypervisor', 2, 'hard'),
(91, 'What is the consistency model used in DynamoDB?', 'Strong', 'Eventual', 'Causal', 'Sequential', 2, 'hard'),
(92, 'Which algorithm is used for encryption in WPA2?', 'RC4', 'AES-CCMP', 'DES', 'Blowfish', 2, 'hard'),
(93, 'Which is the main disadvantage of 2-phase commit?', 'Slow', 'Prone to blocking', 'Complex', 'All of the above', 4, 'hard'),
(94, 'Which backup strategy copies only changed files?', 'Full', 'Incremental', 'Differential', 'Snapshot', 2, 'hard'),
(95, 'What is the purpose of sharding in databases?', 'Backup', 'Replication', 'Partitioning', 'Compression', 3, 'hard'),
(96, 'Which consensus mechanism is energy-efficient?', 'Proof of Work', 'Proof of Stake', 'PoW + PoS', 'PBFT', 2, 'hard'),
(97, 'What is the main difference between Monolithic and Microservices?', 'Deployment model', 'Programming language', 'OS dependency', 'Data structure', 1, 'hard'),
(98, 'Which technology underlies Docker containers?', 'Virtual Machines', 'Namespaces & Cgroups', 'Kubernetes', 'Hypervisor', 2, 'hard'),
(99, 'Which mechanism is used to avoid race conditions?', 'Mutex', 'Deadlock', 'Cache', 'Paging', 1, 'hard'),
(100, 'In RAID 5 configuration, data is distributed with what feature?', 'Full mirroring', 'Striping with parity', 'Striping without parity', 'No redundancy', 2, 'hard'),
(101, 'What is the time complexity of quicksort in the worst case?', 'O(n log n)', 'O(n^2)', 'O(n)', 'O(log n)', 2, 'hard'),
(102, 'Which of these is a type of Denial of Service (DoS) attack?', 'SQL Injection', 'Ping of Death', 'Man-in-the-Middle', 'DNS Spoofing', 2, 'hard'),
(103, 'What does the term \"Big-O notation\" represent?', 'Space requirement only', 'Worst-case time complexity', 'Average time complexity', 'Exact execution time', 2, 'hard'),
(104, 'Which disk scheduling algorithm can lead to starvation?', 'FCFS', 'SSTF', 'SCAN', 'C-SCAN', 2, 'hard'),
(105, 'What is the maximum number of hosts in a /24 subnet?', '254', '256', '255', '253', 1, 'hard'),
(106, 'In database normalization, which normal form removes partial dependency?', '1NF', '2NF', '3NF', 'BCNF', 2, 'hard'),
(107, 'What is the main purpose of a Load Balancer?', 'Store backups', 'Distribute network or application traffic', 'Increase disk capacity', 'Encrypt data packets', 2, 'hard'),
(108, 'Which RAID level provides fault tolerance and improved performance?', 'RAID 0', 'RAID 1', 'RAID 5', 'RAID 6', 3, 'hard'),
(109, 'In cryptography, what does RSA stand for?', 'Randomized Security Algorithm', 'Rivest-Shamir-Adleman', 'Real Secure Algorithm', 'Reliable Security Architecture', 2, 'hard'),
(110, 'What is the purpose of ARP in networking?', 'Map IP address to MAC address', 'Map MAC to IP address', 'Resolve DNS queries', 'Translate domain names', 1, 'hard'),
(111, 'What is the default administrative distance of OSPF?', '90', '110', '120', '100', 2, 'hard'),
(112, 'Which protocol is used for secure file transfer?', 'FTP', 'TFTP', 'SFTP', 'HTTP', 3, 'hard'),
(113, 'What does \"deadlock\" in an OS mean?', 'Two processes running in sync', 'Two processes waiting indefinitely for resources', 'Process termination error', 'Memory leak', 2, 'hard'),
(114, 'Which algorithm is used in public-key cryptography?', 'DES', 'AES', 'RSA', 'MD5', 3, 'hard'),
(115, 'Which layer of the OSI model handles encryption?', 'Network', 'Transport', 'Presentation', 'Application', 3, 'hard'),
(116, 'What is the main drawback of using mutex in multithreading?', 'No synchronization', 'Risk of deadlock', 'Low security', 'Inefficient data access', 2, 'hard'),
(117, 'Which type of memory is fastest?', 'SRAM', 'DRAM', 'Cache', 'Virtual Memory', 3, 'hard'),
(118, 'What does NAT do in networking?', 'Convert IP to MAC', 'Translate private IP to public IP', 'Encrypt packets', 'Route traffic internally', 2, 'hard'),
(119, 'Which scheduling algorithm can cause convoy effect?', 'Round Robin', 'SJF', 'FCFS', 'Priority', 3, 'hard'),
(120, 'What is the default port for HTTPS?', '80', '22', '443', '21', 3, 'hard'),
(121, 'Which SQL clause is used to group rows?', 'GROUP BY', 'ORDER BY', 'HAVING', 'WHERE', 1, 'hard'),
(122, 'What is the maximum length of an IPv6 address?', '32 bits', '64 bits', '128 bits', '256 bits', 3, 'hard'),
(123, 'Which technique prevents SQL Injection?', 'Parameterized Queries', 'String Concatenation', 'Dynamic Queries', 'Inline SQL', 1, 'hard'),
(124, 'In cloud computing, what does IaaS provide?', 'Applications', 'Virtualized hardware resources', 'Middleware', 'Complete solutions', 2, 'hard'),
(125, 'What is the role of a hypervisor?', 'Manages user permissions', 'Manages virtual machines', 'Encrypts network traffic', 'Routes IP packets', 2, 'hard'),
(126, 'Which data structure is used for implementing recursion?', 'Queue', 'Stack', 'Heap', 'Tree', 2, 'hard'),
(127, 'What is the complexity of binary search?', 'O(n)', 'O(n log n)', 'O(log n)', 'O(n^2)', 3, 'hard'),
(128, 'Which network device operates at Layer 3 of the OSI model?', 'Hub', 'Switch', 'Router', 'Bridge', 3, 'hard'),
(129, 'What does DHCP do?', 'Assigns IP addresses automatically', 'Encrypts data packets', 'Routes traffic', 'Detects intrusions', 1, 'hard'),
(130, 'What is the difference between TCP and UDP?', 'TCP is unreliable; UDP is reliable', 'TCP is connectionless; UDP is connection-oriented', 'TCP is connection-oriented; UDP is connectionless', 'Both are connection-oriented', 3, 'hard'),
(131, 'Which algorithm is used in Dijkstra’s shortest path?', 'Greedy Algorithm', 'Dynamic Programming', 'Divide and Conquer', 'Backtracking', 1, 'hard'),
(132, 'What is a MAC address?', 'Physical address', 'Logical address', 'Public IP address', 'Private IP address', 1, 'hard'),
(133, 'Which sorting algorithm has the best average case performance?', 'Bubble Sort', 'Quick Sort', 'Selection Sort', 'Insertion Sort', 2, 'hard'),
(134, 'Which NoSQL database uses key-value storage?', 'MongoDB', 'Redis', 'Cassandra', 'Neo4j', 2, 'hard'),
(135, 'What does the CAP theorem state?', 'Consistency, Availability, Partition Tolerance cannot be achieved together', 'Only scalability matters', 'Cache and Performance dominate systems', 'Concurrency always breaks', 1, 'hard'),
(136, 'Which process synchronization tool avoids busy waiting?', 'Semaphores', 'Locks', 'Spinlock', 'Atomic variable', 1, 'hard'),
(137, 'What is the purpose of garbage collection in Java?', 'Manual memory management', 'Automatic memory management', 'Disk cleanup', 'Heap expansion', 2, 'hard'),
(138, 'What is the maximum size of a TCP segment?', '64 KB', '32 KB', '1 MB', '16 KB', 1, 'hard'),
(139, 'What is the default subnet mask for Class B?', '255.0.0.0', '255.255.0.0', '255.255.255.0', '255.255.255.255', 2, 'hard'),
(140, 'Which algorithm is used for data compression?', 'SHA-256', 'Huffman Coding', 'RSA', 'AES', 2, 'hard'),
(141, 'What is a race condition?', 'Multiple threads accessing shared resource without synchronization', 'Deadlock situation', 'High CPU usage', 'Packet collision in network', 1, 'hard'),
(142, 'Which command in Linux is used to change file permissions?', 'chmod', 'chown', 'ls', 'pwd', 1, 'hard'),
(143, 'What is the default port for DNS?', '25', '53', '80', '110', 2, 'hard'),
(144, 'Which OS scheduling algorithm gives preference to shortest job first?', 'SJF', 'Round Robin', 'FCFS', 'Priority', 1, 'hard'),
(145, 'What does ACID in databases stand for?', 'Atomicity, Consistency, Isolation, Durability', 'Access, Control, Integrity, Data', 'Atomicity, Control, Integrity, Duration', 'Access, Consistency, Isolation, Distribution', 1, 'hard'),
(146, 'Which OSI layer uses MAC addresses?', 'Data Link', 'Network', 'Transport', 'Session', 1, 'hard'),
(147, 'What is the purpose of an index in a database?', 'Speed up queries', 'Ensure data integrity', 'Backup data', 'Encrypt data', 1, 'hard'),
(148, 'Which is a symmetric encryption algorithm?', 'RSA', 'AES', 'ECC', 'Diffie-Hellman', 2, 'hard'),
(149, 'What is the difference between primary key and unique key?', 'Both allow null values', 'Primary key allows multiple nulls', 'Primary key does not allow null; unique key allows one null', 'Primary key can be repeated', 3, 'hard');

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
(1, 'Choose the synonym of \"Happy\".', 'Sad', 'Joyful', 'Angry', 'Gloomy', 2, 'easy'),
(2, 'Choose the antonym of \"Ancient\".', 'Old', 'Historic', 'Modern', 'Traditional', 3, 'easy'),
(3, 'Find the correct spelling.', 'Accomodate', 'Acommodate', 'Accommodate', 'Acomodate', 3, 'easy'),
(4, 'Identify the noun in the sentence: \"The cat sat on the mat.\"', 'cat', 'sat', 'on', 'the', 1, 'easy'),
(5, 'Choose the correct preposition: \"She is good ___ math.\"', 'in', 'at', 'on', 'for', 2, 'easy'),
(6, 'Select the plural form of \"Child\".', 'Childs', 'Childes', 'Children', 'Childrens', 3, 'easy'),
(7, 'What is the adjective in: \"He is a smart boy\"?', 'He', 'is', 'smart', 'boy', 3, 'easy'),
(8, 'Pick the correct sentence.', 'He go to school.', 'He goes to school.', 'He going to school.', 'He gone to school.', 2, 'easy'),
(9, 'Choose the synonym of \"Begin\".', 'Start', 'End', 'Close', 'Stop', 1, 'easy'),
(10, 'Which is a conjunction?', 'Fast', 'Because', 'Above', 'Yellow', 2, 'easy'),
(11, 'Select the correct article: \"___ apple a day keeps the doctor away.\"', 'A', 'An', 'The', 'None', 2, 'easy'),
(12, 'Find the verb: \"They played football.\"', 'They', 'played', 'football', 'None', 2, 'easy'),
(13, 'Choose the antonym of \"Weak\".', 'Strong', 'Tiny', 'Small', 'Short', 1, 'easy'),
(14, 'Choose the correct sentence.', 'She don’t like tea.', 'She doesn’t like tea.', 'She doesn’t likes tea.', 'She like not tea.', 2, 'easy'),
(15, 'Choose the correct synonym of \"Big\".', 'Tiny', 'Huge', 'Narrow', 'Slim', 2, 'easy'),
(16, 'Pick the right word: \"He is taller ___ me.\"', 'than', 'then', 'that', 'as', 1, 'easy'),
(17, 'Identify the interjection: \"Wow! That’s amazing.\"', 'Wow', 'That', 'amazing', 'is', 1, 'easy'),
(18, 'Which is a proper noun?', 'girl', 'book', 'India', 'pen', 3, 'easy'),
(19, 'Which word is an adverb?', 'Run', 'Quickly', 'Fast', 'Big', 2, 'easy'),
(20, 'Which is the correct homophone of \"pair\"?', 'pear', 'pare', 'peer', 'peir', 1, 'easy'),
(21, 'Choose the plural of \"Mouse\".', 'Mouses', 'Mouse', 'Mices', 'Mice', 4, 'easy'),
(22, 'Choose the correct past tense of \"Go\".', 'Goed', 'Gone', 'Went', 'Goes', 3, 'easy'),
(23, 'Which is a compound word?', 'Sun', 'Moon', 'Sunlight', 'Light', 3, 'easy'),
(24, 'Pick the correct sentence.', 'She am a doctor.', 'She is a doctor.', 'She are a doctor.', 'She be a doctor.', 2, 'easy'),
(25, 'Select the correct form: \"He ___ at the park.\"', 'was', 'were', 'are', 'be', 1, 'easy'),
(26, 'Choose the right pronoun: \"___ is my friend.\"', 'She', 'Her', 'Hers', 'Him', 1, 'easy'),
(27, 'Which is a question word?', 'Very', 'Why', 'Also', 'Hard', 2, 'easy'),
(28, 'Identify the subject: \"John eats apples.\"', 'eats', 'apples', 'John', 'None', 3, 'easy'),
(29, 'Choose the opposite of \"Fast\".', 'Quick', 'Speedy', 'Slow', 'Swift', 3, 'easy'),
(30, 'What is the verb form of \"Advice\"?', 'Advise', 'Advicing', 'Advised', 'Adviser', 1, 'easy'),
(31, 'Select the correctly punctuated sentence.', 'He said \"lets go now.\"', 'He said, \"Let’s go now.\"', 'He said: \"lets go now\".', 'He said \"Let’s go now\"', 2, 'medium'),
(32, 'Which is a gerund?', 'Running', 'Run', 'Ran', 'Runs', 1, 'medium'),
(33, 'Choose the correct reported speech: He said, \"I am fine.\"', 'He said he was fine.', 'He said I am fine.', 'He said he is fine.', 'He said he be fine.', 1, 'medium'),
(34, 'Which sentence is in passive voice?', 'She writes a letter.', 'A letter is written by her.', 'She is writing a letter.', 'She wrote a letter.', 2, 'medium'),
(35, 'Identify the type of sentence: \"Close the door.\"', 'Interrogative', 'Declarative', 'Imperative', 'Exclamatory', 3, 'medium'),
(36, 'What is the comparative form of \"Good\"?', 'Gooder', 'Better', 'More good', 'Best', 2, 'medium'),
(37, 'Choose the correct conjunction: \"She was tired ___ she kept working.\"', 'and', 'but', 'because', 'so', 2, 'medium'),
(38, 'Choose the correct spelling.', 'Maintainance', 'Mantainance', 'Maintenance', 'Maintanance', 3, 'medium'),
(39, 'Which is a subordinating conjunction?', 'And', 'But', 'Because', 'Or', 3, 'medium'),
(40, 'Pick the correct voice change: \"They built a house.\"', 'A house was built by them.', 'A house were built by them.', 'They had built a house.', 'A house is built by them.', 1, 'medium'),
(41, 'Choose the correct idiom meaning \"immediately\".', 'At the drop of a hat', 'Cost an arm and a leg', 'Burn the midnight oil', 'Break a leg', 1, 'medium'),
(42, 'What is an oxymoron?', 'Two opposite words used together', 'A long poem', 'A kind of metaphor', 'A figure of speech exaggerating something', 1, 'medium'),
(43, 'Which is an abstract noun?', 'Table', 'Love', 'Chair', 'Pen', 2, 'medium'),
(44, 'Identify the type of clause in: \"I know that she is honest.\"', 'Noun clause', 'Adverb clause', 'Adjective clause', 'Main clause', 1, 'medium'),
(45, 'Which part of speech is \"very\" in: \"He runs very fast\"?', 'Adjective', 'Verb', 'Adverb', 'Noun', 3, 'medium'),
(46, 'Choose the correct form: \"Neither of them ___ available.\"', 'are', 'is', 'have', 'were', 2, 'medium'),
(47, 'Which sentence is in present perfect tense?', 'She is eating.', 'She has eaten.', 'She ate.', 'She eats.', 2, 'medium'),
(48, 'What is the function of an article in a sentence?', 'Describe action', 'Introduce a noun', 'Show possession', 'Connect clauses', 2, 'medium'),
(49, 'Choose the correct spelling.', 'Recommend', 'Recomend', 'Reccomend', 'Recommmend', 1, 'medium'),
(50, 'Pick the correct usage: \"He prefers tea ___ coffee.\"', 'than', 'over', 'to', 'with', 3, 'medium'),
(51, 'Choose the sentence with correct parallel structure.', 'She likes dancing, to swim, and biking.', 'She likes to dance, swimming, and to bike.', 'She likes dancing, swimming, and biking.', 'She likes to dance, swim, and biking.', 3, 'hard'),
(52, 'Which figure of speech is used in: \"The wind whispered\"?', 'Simile', 'Personification', 'Metaphor', 'Alliteration', 2, 'hard'),
(53, 'Choose the correct complex sentence.', 'She went to the store.', 'She went to the store because she needed milk.', 'She needs milk.', 'She going to the store.', 2, 'hard'),
(54, 'Which is the correct conditional sentence?', 'If he will come, I will go.', 'If he comes, I go.', 'If he comes, I will go.', 'If he came, I go.', 3, 'hard'),
(55, 'Choose the correct phrasal verb: \"He ___ the task easily.\"', 'carried out', 'carried over', 'carried through', 'carried in', 1, 'hard'),
(56, 'What is the subjunctive mood?', 'Expresses fact', 'Expresses desire/wish', 'Expresses command', 'Expresses condition only', 2, 'hard'),
(57, 'Pick the correct use of \"whom\".', 'Whom is coming?', 'Whom did you meet?', 'Whom do you love me?', 'Whom are they?', 2, 'hard'),
(58, 'Identify the type of irony: \"A fire station burns down.\"', 'Verbal', 'Situational', 'Dramatic', 'Literal', 2, 'hard'),
(59, 'Choose the correct question tag: \"He’s a doctor, ___?\"', 'isn’t he', 'is he', 'doesn’t he', 'aren’t he', 1, 'hard'),
(60, 'Which is a dangling modifier?', 'Driving down the road, the trees were beautiful.', 'The trees were beautiful driving down the road.', 'While driving, the trees looked lovely.', 'All are correct.', 1, 'hard'),
(61, 'Which is the correct formal word for \"buy\"?', 'Purchase', 'Grab', 'Snag', 'Take', 1, 'hard'),
(62, 'What type of sentence is this: \"Had I known, I would have acted.\"?', 'Conditional', 'Exclamatory', 'Imperative', 'Simple', 1, 'hard'),
(63, 'Identify the misplaced modifier.', 'She nearly drove her kids to school every day.', 'She drove her kids nearly to school every day.', 'She drove nearly every day to school.', 'She drove her kids to school nearly every day.', 1, 'hard'),
(64, 'What is an example of a collective noun?', 'Herd', 'Cow', 'Milk', 'Pasture', 1, 'hard'),
(65, 'Choose the best rephrased sentence: \"Despite being late, he made it.\"', 'He made it although he was late.', 'Although late, he was making it.', 'He made it because he was late.', 'He did make it when he was late.', 1, 'hard'),
(66, 'Choose the correct synonym for \"Obsolete\".', 'Modern', 'Outdated', 'Current', 'Recent', 2, 'hard'),
(67, 'Identify the figure of speech: \"He has the heart of a lion.\"', 'Simile', 'Metaphor', 'Hyperbole', 'Personification', 2, 'hard'),
(68, 'Which sentence uses a restrictive clause correctly?', 'The book, that I borrowed, is new.', 'The book that I borrowed is new.', 'The book which, I borrowed, is new.', 'The book that, I borrowed, is new.', 2, 'hard'),
(69, 'Choose the correct indirect speech: She said, \"I can swim.\"', 'She said she can swim.', 'She said she could swim.', 'She said she swims.', 'She said she could swam.', 2, 'hard'),
(70, 'Pick the antonym of \"Sparse\".', 'Thin', 'Dense', 'Few', 'Empty', 2, 'hard'),
(71, 'What is an anagram of \"LISTEN\"?', 'ENLIST', 'STELIN', 'LENIST', 'INSTEL', 1, 'hard'),
(72, 'Choose the correct pair for analogy: \"Doctor : Patient :: Teacher : ___\"', 'Book', 'Student', 'School', 'Classroom', 2, 'hard'),
(73, 'Which sentence uses subjunctive mood?', 'If I were you, I would leave.', 'I am happy now.', 'She likes pizza.', 'He runs fast.', 1, 'hard'),
(74, 'Pick the correct usage of \"whoever\".', 'Give it to whoever wants it.', 'Give it to whomever wants it.', 'Give it whoever wants it.', 'Give it to whom wants it.', 1, 'hard'),
(75, 'What is the opposite of \"Exacerbate\"?', 'Worsen', 'Improve', 'Complicate', 'Intensify', 2, 'hard'),
(76, 'Identify the idiom meaning \"to reveal a secret\".', 'Bite the bullet', 'Let the cat out of the bag', 'Burn bridges', 'Hit the sack', 2, 'hard'),
(77, 'Choose the correct spelling.', 'Connoisseur', 'Connoiseur', 'Connoisuor', 'Connosieur', 1, 'hard'),
(78, 'What does the phrase \"Achilles heel\" mean?', 'A strong point', 'A weakness', 'A mystery', 'A turning point', 2, 'hard'),
(79, 'Which sentence uses the correct form of \"Lie\"?', 'I lay down yesterday.', 'I lied down yesterday.', 'I lain down yesterday.', 'I lie down yesterday.', 1, 'hard'),
(80, 'Choose the word closest in meaning to \"Ephemeral\".', 'Lasting', 'Short-lived', 'Permanent', 'Frequent', 2, 'hard'),
(81, 'Identify the correct sentence.', 'The committee have given its decision.', 'The committee has given its decision.', 'The committee have given their decision.', 'The committee has given their decision.', 2, 'hard'),
(82, 'What is the meaning of \"Quintessential\"?', 'Ordinary', 'Typical example', 'Useless', 'Rare', 2, 'hard'),
(83, 'Choose the sentence with correct subject-verb agreement.', 'Neither of the boys were present.', 'Neither of the boys was present.', 'Neither of the boys are present.', 'Neither of the boys have present.', 2, 'hard'),
(84, 'Pick the synonym of \"Voracious\".', 'Hungry', 'Lazy', 'Happy', 'Calm', 1, 'hard'),
(85, 'Which sentence is correct?', 'He suggested me to go there.', 'He suggested that I go there.', 'He suggested I to go there.', 'He suggested me that I go there.', 2, 'hard'),
(86, 'Choose the antonym of \"Lucid\".', 'Clear', 'Obscure', 'Bright', 'Simple', 2, 'hard'),
(87, 'What is the meaning of \"To cut corners\"?', 'To save time and money by doing less', 'To decorate something', 'To avoid conflict', 'To increase efficiency by adding steps', 1, 'hard'),
(88, 'Identify the sentence in conditional type 3.', 'If he had studied, he would have passed.', 'If he studies, he will pass.', 'If he studies, he would pass.', 'If he studied, he will pass.', 1, 'hard'),
(89, 'Choose the sentence with proper parallelism.', 'She likes reading, to swim, and cooking.', 'She likes to read, swim, and cook.', 'She likes read, swimming, and to cook.', 'She likes reading, swimming, and to cook.', 2, 'hard'),
(90, 'Select the correct meaning of the idiom: \"Bark up the wrong tree\".', 'Shouting loudly', 'Accusing the wrong person', 'Being very angry', 'Trying hard for success', 2, 'hard'),
(91, 'What is the figure of speech in \"He fought like a lion\"?', 'Metaphor', 'Simile', 'Personification', 'Hyperbole', 2, 'hard'),
(92, 'Choose the correct homophone for \"Stationary\".', 'Stationery', 'Stationarie', 'Stationaryy', 'Stationari', 1, 'hard'),
(93, 'Which word is closest in meaning to \"Ambiguous\"?', 'Clear', 'Uncertain', 'Transparent', 'Simple', 2, 'hard'),
(94, 'What does the phrase \"Throw in the towel\" mean?', 'To fight harder', 'To quit', 'To start again', 'To delay', 2, 'hard'),
(95, 'Pick the sentence that uses correct parallelism.', 'He likes singing, dancing, and to swim.', 'He likes singing, dancing, and swimming.', 'He likes to sing, dancing, and swimming.', 'He likes singing, to dance, and swimming.', 2, 'hard'),
(96, 'Identify the meaning of the phrase \"Hit the nail on the head\".', 'Make a mistake', 'Say exactly the right thing', 'To hurt someone', 'To break something', 2, 'hard'),
(97, 'Choose the correct word for \"Fear of confined spaces\".', 'Agoraphobia', 'Claustrophobia', 'Acrophobia', 'Arachnophobia', 2, 'hard'),
(98, 'Pick the correct usage of \"fewer\".', 'There are fewer people today.', 'There are less people today.', 'There are fewer water today.', 'There is fewer milk today.', 1, 'hard'),
(99, 'What does the phrase \"Burn the midnight oil\" mean?', 'Sleep early', 'Work late into the night', 'Waste time', 'Travel at night', 2, 'hard'),
(100, 'Choose the synonym of \"Pernicious\".', 'Harmless', 'Deadly', 'Insignificant', 'Innocuous', 2, 'hard'),
(101, 'Pick the correct meaning of the idiom \"Turn a blind eye\".', 'Ignore something deliberately', 'Look carefully', 'Change your opinion', 'See clearly', 1, 'hard'),
(102, 'Identify the sentence with proper tense usage.', 'She will went to school.', 'She will go to school.', 'She go to school tomorrow.', 'She going to school tomorrow.', 2, 'easy'),
(103, 'Choose the correct antonym for \"Melancholy\".', 'Sadness', 'Gloom', 'Joy', 'Sorrow', 3, 'medium'),
(104, 'What is the meaning of the phrase \"By leaps and bounds\"?', 'Very slowly', 'Very quickly', 'Without direction', 'With difficulty', 2, 'medium'),
(105, 'Select the correct indirect speech: He said, \"I am learning French.\"', 'He said he is learning French.', 'He said he was learning French.', 'He said he has learned French.', 'He said he had learned French.', 2, 'hard'),
(106, 'Choose the correct synonym of \"Ubiquitous\".', 'Rare', 'Everywhere', 'Difficult', 'Unique', 2, 'hard'),
(107, 'Pick the antonym of \"Candid\".', 'Frank', 'Honest', 'Secretive', 'Transparent', 3, 'hard'),
(108, 'Select the correct meaning of \"Bite the bullet\".', 'Avoid a task', 'Face a difficult situation bravely', 'Act carelessly', 'Quit under pressure', 2, 'medium'),
(109, 'Choose the word which best expresses the meaning of \"Mitigate\".', 'Worsen', 'Lessen', 'Provoke', 'Magnify', 2, 'hard'),
(110, 'Pick the correct sentence.', 'Neither of them are coming.', 'Neither of them is coming.', 'Neither of them were coming.', 'Neither of them have coming.', 2, 'hard'),
(111, 'What is the meaning of \"Call it a day\"?', 'To end work for the day', 'To start work', 'To work all night', 'To postpone work', 1, 'medium'),
(112, 'Choose the correct spelling.', 'Accommodation', 'Accomodation', 'Acommodation', 'Accommadation', 1, 'hard'),
(113, 'Which sentence uses the correct comparative form?', 'She is more tall than her sister.', 'She is taller than her sister.', 'She is tall than her sister.', 'She is tallest than her sister.', 2, 'easy'),
(114, 'Pick the antonym of \"Transient\".', 'Temporary', 'Permanent', 'Short-lived', 'Momentary', 2, 'medium'),
(115, 'What does the idiom \"Spill the beans\" mean?', 'To waste food', 'To reveal a secret', 'To hide information', 'To make a mess', 2, 'medium'),
(116, 'Select the sentence with proper subject-verb agreement.', 'Each of the players have a jersey.', 'Each of the players has a jersey.', 'Each of the players having a jersey.', 'Each of the players is have a jersey.', 2, 'hard'),
(117, 'Choose the correct usage of \"whom\".', 'Whom are you talking to?', 'Who are you talking to?', 'Whom is there?', 'Whom do you think will win?', 1, 'hard'),
(118, 'What is the meaning of \"Throw cold water on\"?', 'To encourage something', 'To discourage something', 'To improve something', 'To ignore something', 2, 'hard'),
(119, 'Pick the synonym of \"Erudite\".', 'Ignorant', 'Scholarly', 'Lazy', 'Careless', 2, 'hard'),
(120, 'Choose the correct sentence.', 'She said that she can come.', 'She said that she could come.', 'She said that she may can come.', 'She said that she could came.', 2, 'hard'),
(121, 'What does \"Cut the mustard\" mean?', 'Fail to meet expectations', 'Meet or exceed expectations', 'Start something new', 'Create confusion', 2, 'hard'),
(122, 'Choose the antonym of \"Ostentatious\".', 'Showy', 'Simple', 'Luxurious', 'Extravagant', 2, 'hard'),
(123, 'Pick the sentence with correct punctuation.', 'It is Ramesh’s book isn’t it?', 'It is Ramesh’s book, isn’t it?', 'It is Ramesh’s book isn’t it.', 'It is Ramesh’s book isn’t it?', 2, 'medium'),
(124, 'Choose the correct meaning of \"Once in a blue moon\".', 'Frequently', 'Rarely', 'Always', 'Never', 2, 'easy'),
(125, 'Pick the synonym of \"Oblivious\".', 'Unaware', 'Aware', 'Alert', 'Attentive', 1, 'hard'),
(126, 'What does \"Play it by ear\" mean?', 'Plan everything', 'Improvise as you go', 'Refuse to act', 'Sing a song', 2, 'hard'),
(127, 'Choose the correct homophone for \"Sight\".', 'Site', 'Cite', 'Sigh', 'Seat', 1, 'easy'),
(128, 'Pick the correct sentence.', 'The news are good.', 'The news is good.', 'The news were good.', 'The news have been good.', 2, 'medium'),
(129, 'Choose the antonym of \"Belligerent\".', 'Aggressive', 'Peaceful', 'Hostile', 'Violent', 2, 'hard'),
(130, 'Select the idiom meaning \"To take someone for a ride\".', 'To cheat someone', 'To travel with someone', 'To entertain someone', 'To accompany someone', 1, 'medium'),
(131, 'What does the phrase \"Apple of discord\" mean?', 'A source of happiness', 'A source of conflict', 'A fruit basket', 'A favorite thing', 2, 'hard'),
(132, 'Choose the correct spelling.', 'Entrepreneur', 'Enterpreneur', 'Entrapreneur', 'Entreprenour', 1, 'hard'),
(133, 'Pick the correct usage of \"affect\".', 'The medicine will effect you.', 'The medicine will affect you.', 'The medicine will effected you.', 'The medicine affect you.', 2, 'medium'),
(134, 'What is the meaning of \"Skeleton in the cupboard\"?', 'An old possession', 'A hidden secret', 'A rare treasure', 'A confusing story', 2, 'hard'),
(135, 'Choose the correct synonym for \"Eloquent\".', 'Inarticulate', 'Fluent', 'Silent', 'Dull', 2, 'hard'),
(136, 'Pick the antonym of \"Futile\".', 'Useless', 'Effective', 'Worthless', 'Hopeless', 2, 'medium'),
(137, 'Choose the correct indirect speech: She said, \"I will help you.\"', 'She said she will help me.', 'She said she would help me.', 'She said she can help me.', 'She said she helps me.', 2, 'hard'),
(138, 'Identify the meaning of the idiom \"Kick the bucket\".', 'Start something new', 'Die', 'Get angry', 'Celebrate', 2, 'medium'),
(139, 'Pick the correct spelling.', 'Privilege', 'Privelege', 'Priviledge', 'Privileage', 1, 'medium'),
(140, 'Choose the sentence with correct conditional usage.', 'If it rains, we would stay inside.', 'If it rains, we will stay inside.', 'If it rains, we would have stayed inside.', 'If it rains, we staying inside.', 2, 'easy'),
(141, 'Pick the synonym of \"Tenacious\".', 'Weak', 'Persistent', 'Lazy', 'Fragile', 2, 'hard'),
(142, 'What does \"Take with a grain of salt\" mean?', 'Believe completely', 'Doubt or be skeptical', 'Ignore completely', 'Accept happily', 2, 'hard'),
(143, 'Choose the correct antonym for \"Prolific\".', 'Productive', 'Sparse', 'Fertile', 'Rich', 2, 'hard'),
(144, 'Pick the idiom meaning \"To go the extra mile\".', 'Do less than required', 'Do more than expected', 'Avoid responsibility', 'Work without a plan', 2, 'medium'),
(145, 'Choose the correct sentence.', 'He has less friends than I have.', 'He has fewer friends than I have.', 'He has lesser friends than I have.', 'He has few friends than I have.', 2, 'hard'),
(146, 'What is the opposite of \"Benevolent\"?', 'Kind', 'Cruel', 'Generous', 'Helpful', 2, 'hard'),
(147, 'Pick the meaning of \"Under the weather\".', 'Feeling sick', 'Enjoying sunshine', 'Traveling', 'Feeling happy', 1, 'easy'),
(148, 'Choose the correct homophone of \"Plain\".', 'Plane', 'Plan', 'Playne', 'Plaine', 1, 'easy'),
(149, 'Pick the correct usage of \"their\".', 'Their going to school.', 'They’re going to school.', 'There going to school.', 'Thier going to school.', 2, 'medium'),
(150, 'What does the phrase \"Beat around the bush\" mean?', 'Speak directly', 'Avoid the main topic', 'Fight with someone', 'Talk too much', 2, 'medium');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `general_awareness_questions`
--
ALTER TABLE `general_awareness_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `programming_questions`
--
ALTER TABLE `programming_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `technical_questions`
--
ALTER TABLE `technical_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `verbal_questions`
--
ALTER TABLE `verbal_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
