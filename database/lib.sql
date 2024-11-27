-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for libsystem
CREATE DATABASE IF NOT EXISTS `libsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `libsystem`;


-- Dumping structure for table libsystem.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table libsystem.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
	(1, 'samitharandika', '$2y$10$KbzmSxWPtQzn7V4VUhfI3OnFlBMYB/DQb965axhSYAGJd0.QtpV/m', 'Samitha', 'Edirisinghe', 'IMG_20221018_182058 (2).jpg', '2018-05-03');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table libsystem.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `publish_date` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table libsystem.books: ~4 rows (approximately)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
REPLACE INTO `books` (`id`, `isbn`, `category_id`, `title`, `author`, `publisher`, `publish_date`, `status`) VALUES
	(10, '0001', 5, 'java', 'Author1', 'Publisher1', '2023-08-09', 0),
	(11, '0002', 5, 'php', 'Author2', 'Publisher2', '2023-08-17', 0),
	(12, '0004', 5, 'HTML', 'Author2', 'Publisher1', '2023-08-30', 0),
	(13, '0003', 5, 'python', 'Author2', 'Publisher1', '2023-08-10', 0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;


-- Dumping structure for table libsystem.borrow
CREATE TABLE IF NOT EXISTS `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrow` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table libsystem.borrow: ~4 rows (approximately)
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
REPLACE INTO `borrow` (`id`, `student_id`, `book_id`, `date_borrow`, `status`) VALUES
	(25, 1, 10, '2023-08-10', 1),
	(26, 1, 11, '2023-08-10', 1),
	(27, 1, 13, '2023-08-10', 1),
	(28, 1, 12, '2023-08-10', 1);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;


-- Dumping structure for table libsystem.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table libsystem.category: ~5 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
REPLACE INTO `category` (`id`, `name`) VALUES
	(1, 'Engineering'),
	(2, 'Mathematics'),
	(3, 'Science and Technology'),
	(4, 'History'),
	(5, 'IT Programming');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- Dumping structure for table libsystem.course
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `code` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table libsystem.course: ~3 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
REPLACE INTO `course` (`id`, `title`, `code`) VALUES
	(1, 'Bachelor of Science in Information Systems', 'BSIS'),
	(2, 'Bachelor of Science in Computer Science', 'BSCS'),
	(3, 'Bachelors of Information Technology', 'BIT');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Dumping structure for table libsystem.returns
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_return` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table libsystem.returns: ~4 rows (approximately)
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
REPLACE INTO `returns` (`id`, `student_id`, `book_id`, `date_return`) VALUES
	(6, 1, 10, '2023-08-10'),
	(7, 1, 11, '2023-08-10'),
	(8, 1, 13, '2023-08-10'),
	(9, 1, 12, '2023-08-10');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;


-- Dumping structure for table libsystem.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table libsystem.students: ~1 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
REPLACE INTO `students` (`id`, `student_id`, `firstname`, `lastname`, `photo`, `course_id`, `created_on`) VALUES
	(1, 'ST001', 'Samitha', 'Edirisinghe', '', 2, '2018-05-04');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
