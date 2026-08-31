-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2026 at 05:14 PM
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
-- Database: `my_notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` varchar(50) NOT NULL,
  `note_title` varchar(300) DEFAULT NULL,
  `note_content` text DEFAULT NULL,
  `note_date` datetime DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `note_title`, `note_content`, `note_date`, `user_id`) VALUES
('0a463a36-e53d-4014-8317-abdc2f10d582', 'second note', 'djcxvc bk', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('12ccd143-2125-4d64-b87a-6da60c03ff9a', 'Untitled Note', 'hh', '2026-07-16 01:56:06', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('223ea832-b259-41bb-b5b4-e4f613252f38', 'mc,qdml,', 'qlnl', '2026-07-10 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('2a639f73-79d1-4dbd-a996-03bd7c212ed7', 'groceries', 'vervev', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('3062af4c-ff00-4667-aa83-5ad07ac1f98f', 'Untitled Note', 'zfef', '2026-07-14 06:52:20', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('38b04488-40fa-4333-bef3-104993bc990c', '100000000000000000', 'NOTO SANS\r\nYEAH BABY\r\n\r\n', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('39a9384c-fa82-4989-b258-4f07842aaf5d', 'Note 11', 'Body', '2026-07-11 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('409287bc-614a-4b70-b615-0271448801f7', 'Untitled Note', 'qchijsdjo', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('43188562-c28a-4f9b-bdbd-e5f46d066c4c', 'Untitled Note', 'hassan bennor', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('471b12f0-ca7b-4991-828f-fef2b6f0ea2b', 'Untitled Note', 'dc', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('49359ecc-044e-4a46-b02e-937861471a9c', 'Untitled Note', 'cjkcjkazbc', '2026-07-16 12:24:55', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('49b2e16e-b84a-4ff9-ba80-65685993cba5', 'Untitled Note', 'hqio', '2026-07-15 23:14:56', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('4e173470-f202-411e-bb43-57c96dc5d59d', 'Untitled Note', 'k,lm,ùl,l!,ùl', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('4fbf388e-f77d-4e50-9da3-ca30482cef43', 'Untitled Note', 'hlkllj', '2026-07-16 02:08:22', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('55e66178-5ad6-45c1-9e66-2f74f1ea94da', 'csd', 'cqsdccqz', '2026-07-21 01:11:15', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('570d8a43-27ab-46cf-a38b-853e175595c2', 'Untitled Notesdvcu', 'cdbhsj\r\nrfytf', '2026-07-16 11:18:48', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('57549702-f219-43cb-8883-36c2d42ac1a7', 'd', 'b', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('5d38e809-140f-47c2-9cb5-a03132b6861b', 'Untitled Note', 'bla', '2026-07-15 22:32:30', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('5dca2681-9217-4d66-845b-e6c7af2a4b46', 'Untitled Note', 'vuvu', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('5eba0b8f-7c92-4a01-abf7-3e61a109ec9c', 'Untitled Note', 'dal\r\n', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('5ed1bc98-f37c-4a6b-b319-3e03e1f36eef', 'new', '', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('6222b6b1-a778-481b-88fa-1fd939273976', 'qkbckb', 'bcqkdbk', '2026-07-10 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('67492b4b-3508-4ea5-8e22-664ff2497bee', 'Programs  to install', '1. Dia\r\n2. Visual Studio Code\r\n3. Zed\r\n4. Antigravity\r\n5. CLion\r\n6. PyCharm\r\n7. PHPStorm\r\n8. WebStorm\r\n9. Git\r\n10. Node\r\n11. Bun\r\n12. g++\r\n13. python', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('6a469d78-5114-4796-b6fe-9ec69caee7ac', 'meeting notes', 'meeting scheduled for the next week, monday morning.\nthe whole team should be present, no exceptions\n', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('6db4872c-dc9d-4801-a1b4-95f75a4c4099', 'Untitled Note', 'dmo', '2026-07-15 23:16:23', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('7b688e88-7d9a-4fd5-974e-548046c3a7b7', 'Untitled Note', 'ui.chadcn.com', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('7c9a62ed-dcfc-403a-9457-39f89f3d4c17', 'greeting', 'Welcome daddy,\r\nthis web app is created by your troublesome son.\r\nHope you like it', '2026-07-14 05:01:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('82bc9ead-43f3-48f0-baaa-2663879a5f91', 'Untitled Note', 'sdjlfljsqjdljp', '2026-07-10 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('8445e635-47b1-4a02-8512-8aac0e9fa395', 'Untitled Note', 'cqz', '2026-07-15 23:16:06', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('8a47fda9-6d3f-4320-8c1a-d56b0e0b46f6', 'lui', 'elle\r\n', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('97072096-9f37-44dd-85ad-807cca4173fa', 'moi', 'toi', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('998b2513-0ad4-4b45-8e40-e61854025383', 'Untitled Note', 'zdc', '2026-07-15 23:16:03', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('9b76a712-ec0a-4fb3-a8c1-7f34691b5915', 'Untitled Note', 'QC', '2026-07-15 23:16:11', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('a1b8329c-3a64-48d3-8ce9-e7ff41543080', 'yyyy', 'jezklkq', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('a5e2f00c-844e-47c9-bbbf-a5b8c475d1db', 'kbcq', 'cjcqk', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('a6611adb-33be-4b65-b5d3-709d4e88710d', 'first note', 'abdellah', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaa85d8d-47c5-4817-a4cf-775424e919ee', 'Untitled Note', 'qscn', '2026-07-15 23:18:34', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaaa-aaaa-aaaa-aaaa-aaaa', 'Note 1', 'Edited Body 11\r\n', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaaa-aaaa-aaaa-aaaa-aaab', 'Note 2', 'Body', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaaa-aaaa-aaaa-aaaa-aaac', 'Note 3', 'Body', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaaa-aaaa-aaaa-aaaa-aaad', 'Note 4', 'Body 2', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaaa-aaaa-aaaa-aaaa-aaae', 'Note 55', 'Body', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaaa-aaaa-aaaa-aaaa-aaah', 'Note 8', 'Body 8', '2026-07-16 12:24:51', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('aaaa-aaaa-aaaa-aaaa-aaaj', 'Note 10', 'Body 10', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('b61655df-73e3-45b1-b0a7-b63a0a18af84', 'Untitled Note', 'hhh', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('b6198107-8fcb-42fe-94ca-5d42cafb0a09', 'Untitled Note', 'bla bla', '2026-07-16 02:33:55', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('bcf6be33-0e1a-4088-9644-c8ebf71ac00d', 'Untitled Note', 'jkqbc', '2026-07-10 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('bdce1576-99ec-4aaa-bee8-c3a87ed10a0f', 'Untitled Note', 'ZC', '2026-07-15 23:16:18', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('c0e8bfbc-c554-44c5-aa36-ddb96bf5bead', 'Untitled Note', 'xq', '2026-07-16 02:08:37', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('cc17f9b7-289e-44da-9c45-a3ca4f2d4248', 'Untitled Note', 'bqsd,zbqq', '2026-07-16 02:08:13', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('d6cbd80d-5cd7-467d-9455-105e6bf7b19e', 'Learn this Summer', '1. UML\r\n2. Git\r\n3. Java\r\n4. Kotlin\r\n5. Jetpack Compose\r\n6. Swift\r\n7. Dart\r\n8. Flutter\r\n9. React\r\n10. MongoDB\r\n11. C++\r\n12. Laravel\r\n13. Node\r\n14. Express\r\n15. Hono\r\n16. React Native', '2026-07-16 11:18:24', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('ddbc7fd3-2fcd-4871-bf48-2d48183ebec6', 'Untitled Note', 'aa', '2026-07-16 11:17:25', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('e3f78f3e-cb78-4bbd-8303-6be0fb9fc200', 'dddd', 'bsdcf', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('e4fc056f-f1d0-49e8-86ea-b25a4e40574a', 'Untitled Note', 'fzezeferr\nesvervd\ngqsdfcer\ndgveqrgvs\neqgsvqrgv', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('e648f323-9571-4418-9415-e0e7b444da0c', 'Untitled Note', 'qlcnqeofhmioze', '2026-07-10 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('e8ca42ae-d76d-451f-95fe-50671518eadf', 'Untitled Note', 'czd \nqcq\nqsxq\nqscqs\n\nsdc\nsdcs\ncsdc', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('ea820dff-611a-4297-a399-a6a5cad25cb3', 'Untitled Note', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', '2026-07-12 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('ec387370-857a-43a9-81b1-f7a059c42e05', 'f', '', '2026-07-13 00:00:00', '05fc5cea-eec4-45c1-b97d-baab29a83b5c'),
('f03d8118-4d88-4766-8759-c091c545ffbd', 'test', 'testr', '2026-07-17 00:12:29', '05fc5cea-eec4-45c1-b97d-baab29a83b5c');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(50) NOT NULL,
  `user_email` varchar(150) DEFAULT NULL,
  `user_password` varchar(150) DEFAULT NULL,
  `user_profile_picture` text DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `activation_token` varchar(64) DEFAULT NULL,
  `reset_token_hash` varchar(240) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_profile_picture`, `is_activated`, `activation_token`, `reset_token_hash`, `reset_token_expires_at`, `username`) VALUES
('05fc5cea-eec4-45c1-b97d-baab29a83b5c', 'dal.dakirallah@gmail.com', '$2y$10$gf5L/0jBZ/Jj1S3wq68/4uQ2Cdgk4Ay/Xtd01wqK6AWGzQ6Mnii.O', NULL, 1, NULL, NULL, NULL, 'Abdellah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `reset_token_hash` (`reset_token_hash`),
  ADD UNIQUE KEY `reset_token_expires_at` (`reset_token_expires_at`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
