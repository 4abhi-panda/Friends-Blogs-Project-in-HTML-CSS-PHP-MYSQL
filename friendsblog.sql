-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 09:27 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `friendsblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `status`) VALUES
(1, 'admin', 'admin@mail.com', '202cb962ac59075b964b07152d234b70', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `mob` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `massage` mediumtext COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mob`, `massage`) VALUES
(1, 'ekansh', 'ekansh@ganil.com', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(2, 'ekansh', 'admin@mail.com', '', 'uioggggggggg'),
(3, 'ekansh', 'ekansh@gmail.com', '', 'sssssssssssssssssssssssssssvvvvvvvvvvvvvvvvvvvvcxvvvvv'),
(4, 'ekansh', 'omakr@gmail.com', '', 'aaaaaaaaaaaaaaaaaaaaaaa'),
(5, 'ekansh', 'admin@mail.com', '5050', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `posttitle` varchar(200) COLLATE utf16_unicode_ci NOT NULL,
  `Description` mediumtext COLLATE utf16_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf16_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) COLLATE utf16_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `posttitle`, `Description`, `image`, `category`, `date`, `status`) VALUES
(1, 'History Of Shivaji Maharaj', 'Shivaji Maharaj  (Also Chhatrapati Shivaji Maharaj, Shivaji Raje Bhosale) was the Founder of Maratha Empire in India. Shivaji Maharaj was born in 1627 A.D. at Shivneri, a hill fort near Puna.\r\nShivaji’s Maharaj  father- Shahaji Raje Bhosale was employed as an officer in the army of Satan of Bijapur. Shivaji’s mother Jijabai and his guru Ramdas inspired him with noble ft patriotic ideas and infuse  him love for the religion and the motherland. In 1645, the 15-year-old the Shivaji Maharaj   bribed or persuaded’ the Bijapuri commander of Torna Fort, The Inayat Khan, to hand over the possession of the fort to him.\r\nIn 1659, Adilshah sent Afzal Khan, an experienced and the veteran general to destroy the Shivaji Maharaj , effort to put down what he saw as a regional revolt. After that there was no stopping him and he went on to the capture Kondana and Rajgad forts and exercised full control over the region of Pune. Around the year 1659, Shivaji took over the forts in  the Western Ghats and the ones near the Konkan coast. In order to disrupt Shivaji’s seriei, of , Adilshah arrested his father Shahaji by unfair means “, . shivaji Maharaj  and his elder brother Sambhaji Maharaj  .', '5-Chhatrapati-Shivaji-Maharaj-Quotes.jpg', 'Electronics', '2021-06-12 15:57:01', 'active'),
(2, 'Anime Jujutsu Kaisen is a Japanese manga series ', 'Jujutsu Kaisen is a Japanese manga series written and illustrated by Gege Akutami, serialized in Shueisha\'s Weekly Shōnen Jump since March 2018. The Jujutsu Kaisen chapters are collected and published by Shueisha, with sixteen tankōbon volumes released as of June 2021\r\n', 'anime.jpg', 'Fashion', '2021-06-12 15:51:03', 'active'),
(3, 'Top 10 Hollywood movies must watch', '#10\r\nThe Prestige\r\n\r\n\r\nThis movie which released in 2006, and this will keep you glued to your seats right until its very end. Directed by Christopher Nolan, Prestige stars Hugh Jackman and Christian Bale as two rival magicians who try to the outsmart each other. It’s an intriguing tale of the deceit and drama as both the protagonists run after fame at the cost of some dire consequences. Nolan manages to keep the audience hooked with his brilliant way of the storytelling.\r\n\r\n#9\r\nThe Pursuit of Happyness\r\n\r\n\r\nThe Pursuit of Happyness is based on the true story of the Chris Gardener and his son Christopher. It shows the hardships faced by  the Chris (played by Will Smith) and Christopher (played by Jaden Smith) as they try to survive in daily world. Powered by the terrific performance by Will Smith, this movie gives us an inspiring and a heart-touching story that will make most of audience emotional.\r\n\r\n', 'top-10-hollywood-movies-1024x594.jpg', 'Electronics', '2021-06-12 15:57:50', 'active'),
(4, 'Dangal (Indian wrestling stars)', 'Director: Nitesh Tiwari | Starring: Aamir Khan, Sakshi Tanwar,  Sanya Malhotra, Fatima Sana Shaikh |  Year: 2016 \r\n\r\nTo date, Dangal is the one of the highest grossing Bollywood movies ever made. The movie is based on true story of the Phogat sisters, who are Indian wrestling stars.', 'dangal.jpg', '', '2021-06-18 12:49:10', 'active'),
(5, 'The Festival Of Colors', 'Everyone is familiar with “HOLI” as a festival of fun and enjoyment with our friends and family but not everyone knows about its significance. Firstly ,we should know how this festival came to existence and what is it’s main motto. There’s a legendary significance of why holi is celebrated as a triumph of good over evil.The story involves God Vishnu , a demonic king ,a devotee of God Vishnu and an evil aunt. Hiranyakashipu was a demonic king of the asuras and always thought that his existence is more important than God . By worshiping for years and years he earned five super powers that he couldn’t be killed by a human or an animal; neither at day or at night ;neither indoors nor outdoors ;neither by astra ;neither by shastra.Because of all these powers he thought that he is invincible and should take the place of god .He demanded his people to worship him .But his own son Prahlada believed in God Vishnu and disagreed to worship his father. Hiranyakashipu couldn’t bear this and gave cruel punishments to prahlada which did not affect him or changed his belief in God. ', 'holi.jpg', '', '2021-06-18 12:50:30', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
