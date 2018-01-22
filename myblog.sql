-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 22, 2018 at 07:07 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `content` varchar(512) NOT NULL,
  `status` int(16) NOT NULL,
  `create_time` varchar(128) NOT NULL,
  `author` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `post_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `content`, `status`, `create_time`, `author`, `email`, `url`, `post_id`) VALUES
(1, 'Wow!! That\'s something new', 2, 'January 21, 2018, 3:28 pm', 'Paras', 'paras15@outlook.com', '', 1),
(2, 'Nice!! Keep It Up', 2, 'January 21, 2018, 3:28 pm', 'Akash', 'Akash321@gmail.com', '', 2),
(3, 'Nice Blog!!!', 2, 'January 21, 2018, 3:29 pm', 'Shivani', 'shivanigoel5@gmail.com', '', 1),
(5, 'What is the relation between these three modules??', 2, 'January 21, 2018, 3:36 pm', 'Anaya', 'anayajain@outlook.com', '', 2),
(6, 'Can you explain it in more detail?', 2, 'January 21, 2018, 3:38 pm', 'Akash', 'Akash321@gmail.com', '', 3),
(8, 'Awesome Features', 2, 'January 21, 2018, 3:43 pm', 'Anshika', 'anshikaksj@gmail.com', '', 5),
(9, 'Free!!!...That\'s Cool', 2, 'January 21, 2018, 3:42 pm', 'Joseph', 'jsph15@gmail.com', '', 5),
(10, 'I love it\'s automation features...', 2, 'January 21, 2018, 3:46 pm', 'Ram', 'Ramgupta12@yahoo.com', '', 3),
(16, 'It\'s a wonderful technology.', 2, 'January 21, 2018, 7:54 pm', 'Hiren', 'Hiren21@yahoo.com', '', 42),
(26, 'You just can\'t be a novice before you try hands on this!', 2, 'January 22, 2018, 2:49 am', 'Paras', 'paras@gmail.com', '', 45),
(47, 'What are the available resources exactly?', 2, 'January 22, 2018, 10:18 am', 'soumya', 'soumyaasawa@gmail.com', '', 5),
(63, 'Thanks for sharing!!!', 2, 'January 22, 2018, 12:27 pm', 'Paras', 'paras@gmail.com', '', 45),
(64, 'Yii & Gii, Wow!! This is the perfect rhyming', 2, 'January 22, 2018, 12:32 pm', 'Akash', 'akashrjpt@yahoo.co.in', '', 46),
(65, 'I think i\'m gonna give it a try...', 2, 'January 22, 2018, 12:39 pm', 'Priyansh', 'priyansh21@gmail.com', '', 45),
(66, 'That\'s Nice....', 2, 'January 22, 2018, 12:42 pm', 'Huma', 'huma@gmail.com', '', 44),
(68, 'Nothing to say!!!', 2, 'January 22, 2018, 12:52 pm', 'Hiren', 'Hiren21@yahoo.com', '', 44),
(69, 'Thanks for sharing the info.', 2, 'January 22, 2018, 1:23 pm', 'Akash', 'akashrjpt@yahoo.co.in', '', 42),
(70, 'No comments!!!', 2, 'January 22, 2018, 2:05 pm', 'Udita', 'udita@gmail.com', '', 44),
(71, 'Oh!!!Nice info...', 2, 'January 22, 2018, 3:46 pm', 'Sanaya', 'sanayakapoor@outlook.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lookup`
--

CREATE TABLE `tbl_lookup` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `position` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(512) NOT NULL,
  `tags` varchar(128) NOT NULL,
  `status` int(16) NOT NULL,
  `create_time` varchar(128) NOT NULL,
  `update_time` varchar(128) NOT NULL,
  `author_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `tags`, `status`, `create_time`, `update_time`, `author_id`) VALUES
(1, 'Yii Blog', 'This blog system is developed using Yii. It is meant to demonstrate how to use Yii to build a complete real-world application. Complete source code may be found in the Yii releases.Just vist regularly!!', 'Yii, blogs', 1, 'January 21, 2018, 2:12 pm', 'January 22, 2018, 3:50 pm', 1),
(2, 'MVC', 'MVC (Model-View-Controller) is a type of application architecture. It’s used in Yii framework. When your application uses MVC architecture, it is divided into 3 basic parts-Model,View,Controller', 'MVC, model, view, controller', 2, 'January 21, 2018, 2:12 pm', 'January 22, 2018, 2:41 am', 1),
(3, 'Yii Definition', 'Yii is a high-performance, component-based PHP framework for developing large-scale Web applications rapidly. It enables maximum reusability in Web programming and can significantly accelerate your Web application development process. The name Yii (pronounced Yee or [ji:]) is an acroynym for \"Yes It Is!', 'Yii, Definition', 3, 'January 21, 2018, 2:13 pm', 'January 22, 2018, 3:51 pm', 1),
(4, 'About Yii', 'Yii is a high-performance modern PHP framework best for developing both web applications and APIs. Yii helps Web developers build complex applications and deliver them on-time.', 'Yii, blogs', 1, 'January 21, 2018, 2:17 pm', 'January 22, 2018, 2:45 am', 1),
(5, 'Yii Features', 'Whether you are one developer building a fairly simple Web site, or a team of distributed developers building an extremely complex Web application, using Yii is like augmenting your development team with additional experienced, professional, and efficient resources. All for free! ', 'features, Yii, view', 2, 'January 21, 2018, 2:49 pm', 'January 22, 2018, 2:41 am', 1),
(42, 'History of Yii', 'Yii started as an attempt to fix drawbacks of the PRADO framework: Slow handling of complex pages, steep learning curve and difficulty to customize many controls. In October 2006, after ten months of private development, the first alpha version of Yii was released, followed by the formal 1.00 release in December 2008', 'history', 2, 'January 21, 2018, 7:53 pm', 'January 22, 2018, 2:41 am', 1),
(43, 'Documentation', 'Yii comes with a collection of official documentation, such as a tutorial to develop a simple blog application, a guide that gives the description of every feature and a class reference which gives every detail about properties, methods and events.\r\n\r\nThere\'s also a user-contributed documentation, most of which is available within the wiki on the official website.', 'documentation, wiki', 2, 'January 22, 2018, 2:02 am', 'January 22, 2018, 2:42 am', 1),
(44, 'Yii Comparision', 'If you\'re already familiar with another framework, you may appreciate knowing how Yii compares:\r\n\r\nLike most PHP frameworks, Yii implements the MVC (Model-View-Controller) architectural pattern and promotes code organization based on that pattern.\r\nYii takes the philosophy that code should be written in a simple yet elegant way. Yii will never try to over-design things mainly for the purpose of strictly following some design pattern.\r\nYii is a full-stack framework providing many proven and ready-to-use feat', 'comparision', 2, 'January 22, 2018, 2:31 am', 'January 22, 2018, 2:31 am', 1),
(45, 'Requirements and Prerequisites', 'Yii 2.0 requires PHP 5.4.0 or above and runs best with the latest version of PHP 7. You can find more detailed requirements for individual features by running the requirement checker included in every Yii release.\r\n\r\nUsing Yii requires basic knowledge of object-oriented programming (OOP), as Yii is a pure OOP-based framework. Yii 2.0 also makes use of the latest features of PHP, such as namespaces and traits. Understanding these concepts will help you more easily pick up Yii 2.0.', 'Requirements, Prerequisites', 2, 'January 22, 2018, 2:43 am', 'January 22, 2018, 2:43 am', 1),
(46, 'Gii', 'Gii is provided in Yii as a module. You can enable Gii by configuring it in the yii\\base\\Application::modules property of the application. Depending upon how you created your application, you may find the following code is already provided in the config/web.php configuration file', 'Gii', 1, 'January 22, 2018, 12:31 pm', 'January 22, 2018, 12:31 pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag`
--

CREATE TABLE `tbl_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `frequency` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tag`
--

INSERT INTO `tbl_tag` (`id`, `name`, `frequency`) VALUES
(1, 'MVC', 1),
(2, 'model', 1),
(3, 'view', 2),
(4, 'controller', 1),
(5, 'Definition', 1),
(6, 'Yii', 3),
(7, 'features', 1),
(8, 'blogs', 2),
(18, 'wiki', 2),
(19, 'history', 1),
(20, 'documentation', 1),
(21, 'comparision', 1),
(22, 'Requirements', 1),
(23, 'Prerequisites', 1),
(24, 'Gii', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `profile` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `salt`, `email`, `profile`) VALUES
(1, 'test1', 'pass1', '', 'test1@example.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_comment_ibfk_1` (`post_id`);

--
-- Indexes for table `tbl_lookup`
--
ALTER TABLE `tbl_lookup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_post_ibfk_1` (`author_id`);

--
-- Indexes for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `tbl_lookup`
--
ALTER TABLE `tbl_lookup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `tbl_post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
