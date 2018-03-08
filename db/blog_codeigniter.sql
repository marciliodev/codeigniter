-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Mar-2018 às 13:56
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_codeigniter`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `titulo`) VALUES
(1, 'Cinema'),
(2, 'Animais'),
(3, 'Comidas'),
(4, 'Viagens'),
(5, 'Novidades');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_session`
--

CREATE TABLE `ci_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagens`
--

CREATE TABLE `postagens` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `subtitulo` varchar(150) NOT NULL,
  `conteudo` longtext NOT NULL,
  `data` datetime NOT NULL,
  `img` longtext NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `postagens`
--

INSERT INTO `postagens` (`id`, `categoria`, `titulo`, `subtitulo`, `conteudo`, `data`, `img`, `user`) VALUES
(2, 1, 'Ut consectetur lacus augue, tincidunt finibus nulla convallis eget', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-11 16:14:36', '', 1),
(3, 4, 'Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem', 'Duis finibus, felis semper suscipit convallis, orci ante eleifend lectus, ac pharetra ipsum risus in elit. Vestibulum enim turpis, suscipit eget lacus', '<p>Sed velit ex, sodales nec aliquet sed, imperdiet ac justo. Vestibulum gravida lacus eu turpis interdum cursus. Morbi ultricies libero sed nibh pulvinar elementum. Fusce vestibulum, orci quis laoreet lobortis, enim lorem sollicitudin augue, eu imperdiet eros neque id leo. In id enim ornare, bibendum tortor vitae, pellentesque nibh. Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo. Maecenas sit amet lectus vitae magna gravida dictum. Cras iaculis in augue eget sagittis. Maecenas gravida felis sed est bibendum, nec ultricies nunc porttitor.</p>\r\n\r\n<p>Curabitur pretium justo dui, non porta ante ultrices at. Duis finibus, felis semper suscipit convallis, orci ante eleifend lectus, ac pharetra ipsum risus in elit. Vestibulum enim turpis, suscipit eget lacus vitae, posuere posuere ante. Nunc nec ligula facilisis, eleifend ipsum non, pulvinar nulla. Pellentesque pharetra at nulla eget elementum. Pellentesque vel tristique diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', '2017-03-07 20:14:36', '', 1),
(4, 1, 'Curabitur eu mauris id neque ultricies feugiat a ut mi', 'Duis finibus, felis semper suscipit convallis, orci ante eleifend lectus, ac pharetra ipsum risus in elit. Vestibulum enim turpis, suscipit eget lacus', '<p>Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem. Mauris at condimentum dolor. Curabitur eu mauris id neque ultricies feugiat a ut mi. Ut posuere faucibus nisl, sed sagittis tellus laoreet quis. Pellentesque molestie euismod tempus. Aliquam mattis, velit eget consequat maximus, mauris lectus scelerisque diam, eget volutpat ligula est fermentum odio. Vestibulum nisi libero, malesuada ut congue vel, efficitur sit amet mi. Cras pellentesque egestas volutpat. Aliquam venenatis ullamcorper felis nec cursus. Praesent lacinia laoreet ante, et hendrerit nisi. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Ut consectetur lacus augue, tincidunt finibus nulla convallis eget. Donec rutrum aliquam quam at ultricies. Maecenas at dignissim ex, nec semper urna. Nunc id lacus vel nisl mollis auctor. Etiam vulputate gravida porttitor. Quisque at lobortis quam, id pulvinar nunc. Cras finibus, nisl eget pulvinar egestas, neque nibh sollicitudin velit, eget efficitur neque urna non justo. Sed vehicula non velit sed viverra. Vestibulum lacinia neque et mattis dictum. Sed rhoncus dapibus nisl id fringilla. Duis quis sagittis augue. Morbi accumsan tellus ipsum, et vulputate lectus sagittis quis. Mauris eu sem justo.</p>\r\n\r\n<p>Phasellus quis vehicula tortor. Vestibulum sed purus et mauris tempor posuere. Vivamus vel commodo ipsum. Donec a tristique tellus. In lobortis, tortor et rhoncus rhoncus, metus libero mollis sem, id tincidunt ipsum tortor ut eros. Nullam faucibus, turpis ut egestas interdum, mi risus eleifend dui, a mollis magna enim vel odio. In lobortis, erat et luctus lobortis, nulla neque imperdiet tellus, nec varius nisi lacus id dolor. Suspendisse tempus dictum dolor ac vestibulum. Fusce tincidunt eu ipsum varius ultricies. Donec commodo bibendum consequat. Suspendisse potenti. Nam in ultricies risus.</p>', '2017-03-09 16:14:36', '', 1),
(5, 2, 'Vestibulum sed purus et mauris tempor posuere', 'Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo.', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-11 13:14:36', '', 1),
(6, 3, 'Curabitur eu mauris id neque ultricies feugiat a ut mi', 'Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo.', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-12 18:14:36', '', 1),
(7, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem. Mauris at condimentum dolor. Curabitur eu mauris id neque ultricies feugiat a ut mi. Ut posuere faucibus nisl, sed sagittis tellus laoreet quis. Pellentesque molestie euismod tempus. Aliquam mattis, velit eget consequat maximus, mauris lectus scelerisque diam, eget volutpat ligula est fermentum odio. Vestibulum nisi libero, malesuada ut congue vel, efficitur sit amet mi. Cras pellentesque egestas volutpat. Aliquam venenatis ullamcorper felis nec cursus. Praesent lacinia laoreet ante, et hendrerit nisi. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Ut consectetur lacus augue, tincidunt finibus nulla convallis eget. Donec rutrum aliquam quam at ultricies. Maecenas at dignissim ex, nec semper urna. Nunc id lacus vel nisl mollis auctor. Etiam vulputate gravida porttitor. Quisque at lobortis quam, id pulvinar nunc. Cras finibus, nisl eget pulvinar egestas, neque nibh sollicitudin velit, eget efficitur neque urna non justo. Sed vehicula non velit sed viverra. Vestibulum lacinia neque et mattis dictum. Sed rhoncus dapibus nisl id fringilla. Duis quis sagittis augue. Morbi accumsan tellus ipsum, et vulputate lectus sagittis quis. Mauris eu sem justo.</p>\r\n\r\n<p>Phasellus quis vehicula tortor. Vestibulum sed purus et mauris tempor posuere. Vivamus vel commodo ipsum. Donec a tristique tellus. In lobortis, tortor et rhoncus rhoncus, metus libero mollis sem, id tincidunt ipsum tortor ut eros. Nullam faucibus, turpis ut egestas interdum, mi risus eleifend dui, a mollis magna enim vel odio. In lobortis, erat et luctus lobortis, nulla neque imperdiet tellus, nec varius nisi lacus id dolor. Suspendisse tempus dictum dolor ac vestibulum. Fusce tincidunt eu ipsum varius ultricies. Donec commodo bibendum consequat. Suspendisse potenti. Nam in ultricies risus.</p>', '2017-03-08 16:14:36', '', 1),
(8, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>Sed velit ex, sodales nec aliquet sed, imperdiet ac justo. Vestibulum gravida lacus eu turpis interdum cursus. Morbi ultricies libero sed nibh pulvinar elementum. Fusce vestibulum, orci quis laoreet lobortis, enim lorem sollicitudin augue, eu imperdiet eros neque id leo. In id enim ornare, bibendum tortor vitae, pellentesque nibh. Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo. Maecenas sit amet lectus vitae magna gravida dictum. Cras iaculis in augue eget sagittis. Maecenas gravida felis sed est bibendum, nec ultricies nunc porttitor.</p>\r\n\r\n<p>Curabitur pretium justo dui, non porta ante ultrices at. Duis finibus, felis semper suscipit convallis, orci ante eleifend lectus, ac pharetra ipsum risus in elit. Vestibulum enim turpis, suscipit eget lacus vitae, posuere posuere ante. Nunc nec ligula facilisis, eleifend ipsum non, pulvinar nulla. Pellentesque pharetra at nulla eget elementum. Pellentesque vel tristique diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', '2017-03-13 16:14:36', '', 1),
(9, 2, 'Ut consectetur lacus augue, tincidunt finibus nulla convallis eget', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-11 18:14:36', '', 1),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>Sed velit ex, sodales nec aliquet sed, imperdiet ac justo. Vestibulum gravida lacus eu turpis interdum cursus. Morbi ultricies libero sed nibh pulvinar elementum. Fusce vestibulum, orci quis laoreet lobortis, enim lorem sollicitudin augue, eu imperdiet eros neque id leo. In id enim ornare, bibendum tortor vitae, pellentesque nibh. Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo. Maecenas sit amet lectus vitae magna gravida dictum. Cras iaculis in augue eget sagittis. Maecenas gravida felis sed est bibendum, nec ultricies nunc porttitor.</p>\r\n\r\n<p>Curabitur pretium justo dui, non porta ante ultrices at. Duis finibus, felis semper suscipit convallis, orci ante eleifend lectus, ac pharetra ipsum risus in elit. Vestibulum enim turpis, suscipit eget lacus vitae, posuere posuere ante. Nunc nec ligula facilisis, eleifend ipsum non, pulvinar nulla. Pellentesque pharetra at nulla eget elementum. Pellentesque vel tristique diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', '2017-03-09 16:14:36', '', 1),
(11, 5, 'Ut consectetur lacus augue, tincidunt finibus nulla convallis eget', 'Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo.', '<p>Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem. Mauris at condimentum dolor. Curabitur eu mauris id neque ultricies feugiat a ut mi. Ut posuere faucibus nisl, sed sagittis tellus laoreet quis. Pellentesque molestie euismod tempus. Aliquam mattis, velit eget consequat maximus, mauris lectus scelerisque diam, eget volutpat ligula est fermentum odio. Vestibulum nisi libero, malesuada ut congue vel, efficitur sit amet mi. Cras pellentesque egestas volutpat. Aliquam venenatis ullamcorper felis nec cursus. Praesent lacinia laoreet ante, et hendrerit nisi. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Ut consectetur lacus augue, tincidunt finibus nulla convallis eget. Donec rutrum aliquam quam at ultricies. Maecenas at dignissim ex, nec semper urna. Nunc id lacus vel nisl mollis auctor. Etiam vulputate gravida porttitor. Quisque at lobortis quam, id pulvinar nunc. Cras finibus, nisl eget pulvinar egestas, neque nibh sollicitudin velit, eget efficitur neque urna non justo. Sed vehicula non velit sed viverra. Vestibulum lacinia neque et mattis dictum. Sed rhoncus dapibus nisl id fringilla. Duis quis sagittis augue. Morbi accumsan tellus ipsum, et vulputate lectus sagittis quis. Mauris eu sem justo.</p>\r\n\r\n<p>Phasellus quis vehicula tortor. Vestibulum sed purus et mauris tempor posuere. Vivamus vel commodo ipsum. Donec a tristique tellus. In lobortis, tortor et rhoncus rhoncus, metus libero mollis sem, id tincidunt ipsum tortor ut eros. Nullam faucibus, turpis ut egestas interdum, mi risus eleifend dui, a mollis magna enim vel odio. In lobortis, erat et luctus lobortis, nulla neque imperdiet tellus, nec varius nisi lacus id dolor. Suspendisse tempus dictum dolor ac vestibulum. Fusce tincidunt eu ipsum varius ultricies. Donec commodo bibendum consequat. Suspendisse potenti. Nam in ultricies risus.</p>', '2017-03-13 17:14:36', '', 1),
(12, 5, 'Curabitur eu mauris id neque ultricies feugiat a ut mi', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-11 16:14:36', '', 1),
(13, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem. Mauris at condimentum dolor. Curabitur eu mauris id neque ultricies feugiat a ut mi. Ut posuere faucibus nisl, sed sagittis tellus laoreet quis. Pellentesque molestie euismod tempus. Aliquam mattis, velit eget consequat maximus, mauris lectus scelerisque diam, eget volutpat ligula est fermentum odio. Vestibulum nisi libero, malesuada ut congue vel, efficitur sit amet mi. Cras pellentesque egestas volutpat. Aliquam venenatis ullamcorper felis nec cursus. Praesent lacinia laoreet ante, et hendrerit nisi. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Ut consectetur lacus augue, tincidunt finibus nulla convallis eget. Donec rutrum aliquam quam at ultricies. Maecenas at dignissim ex, nec semper urna. Nunc id lacus vel nisl mollis auctor. Etiam vulputate gravida porttitor. Quisque at lobortis quam, id pulvinar nunc. Cras finibus, nisl eget pulvinar egestas, neque nibh sollicitudin velit, eget efficitur neque urna non justo. Sed vehicula non velit sed viverra. Vestibulum lacinia neque et mattis dictum. Sed rhoncus dapibus nisl id fringilla. Duis quis sagittis augue. Morbi accumsan tellus ipsum, et vulputate lectus sagittis quis. Mauris eu sem justo.</p>\r\n\r\n<p>Phasellus quis vehicula tortor. Vestibulum sed purus et mauris tempor posuere. Vivamus vel commodo ipsum. Donec a tristique tellus. In lobortis, tortor et rhoncus rhoncus, metus libero mollis sem, id tincidunt ipsum tortor ut eros. Nullam faucibus, turpis ut egestas interdum, mi risus eleifend dui, a mollis magna enim vel odio. In lobortis, erat et luctus lobortis, nulla neque imperdiet tellus, nec varius nisi lacus id dolor. Suspendisse tempus dictum dolor ac vestibulum. Fusce tincidunt eu ipsum varius ultricies. Donec commodo bibendum consequat. Suspendisse potenti. Nam in ultricies risus.</p>', '2017-03-07 16:14:36', '', 1),
(14, 2, 'Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem', 'Duis finibus, felis semper suscipit convallis, orci ante eleifend lectus, ac pharetra ipsum risus in elit. Vestibulum enim turpis, suscipit eget lacus', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-11 16:14:36', '', 1),
(15, 1, 'Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem', 'Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo.', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-10 18:14:36', '', 1),
(16, 1, 'Sed velit ex, sodales nec aliquet sed, imperdiet ac justo', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>Sed velit ex, sodales nec aliquet sed, imperdiet ac justo. Vestibulum gravida lacus eu turpis interdum cursus. Morbi ultricies libero sed nibh pulvinar elementum. Fusce vestibulum, orci quis laoreet lobortis, enim lorem sollicitudin augue, eu imperdiet eros neque id leo. In id enim ornare, bibendum tortor vitae, pellentesque nibh. Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo. Maecenas sit amet lectus vitae magna gravida dictum. Cras iaculis in augue eget sagittis. Maecenas gravida felis sed est bibendum, nec ultricies nunc porttitor.</p>\r\n\r\n<p>Curabitur pretium justo dui, non porta ante ultrices at. Duis finibus, felis semper suscipit convallis, orci ante eleifend lectus, ac pharetra ipsum risus in elit. Vestibulum enim turpis, suscipit eget lacus vitae, posuere posuere ante. Nunc nec ligula facilisis, eleifend ipsum non, pulvinar nulla. Pellentesque pharetra at nulla eget elementum. Pellentesque vel tristique diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', '2017-03-11 16:14:36', '', 1),
(17, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem. Mauris at condimentum dolor. Curabitur eu mauris id neque ultricies feugiat a ut mi. Ut posuere faucibus nisl, sed sagittis tellus laoreet quis. Pellentesque molestie euismod tempus. Aliquam mattis, velit eget consequat maximus, mauris lectus scelerisque diam, eget volutpat ligula est fermentum odio. Vestibulum nisi libero, malesuada ut congue vel, efficitur sit amet mi. Cras pellentesque egestas volutpat. Aliquam venenatis ullamcorper felis nec cursus. Praesent lacinia laoreet ante, et hendrerit nisi. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Ut consectetur lacus augue, tincidunt finibus nulla convallis eget. Donec rutrum aliquam quam at ultricies. Maecenas at dignissim ex, nec semper urna. Nunc id lacus vel nisl mollis auctor. Etiam vulputate gravida porttitor. Quisque at lobortis quam, id pulvinar nunc. Cras finibus, nisl eget pulvinar egestas, neque nibh sollicitudin velit, eget efficitur neque urna non justo. Sed vehicula non velit sed viverra. Vestibulum lacinia neque et mattis dictum. Sed rhoncus dapibus nisl id fringilla. Duis quis sagittis augue. Morbi accumsan tellus ipsum, et vulputate lectus sagittis quis. Mauris eu sem justo.</p>\r\n\r\n<p>Phasellus quis vehicula tortor. Vestibulum sed purus et mauris tempor posuere. Vivamus vel commodo ipsum. Donec a tristique tellus. In lobortis, tortor et rhoncus rhoncus, metus libero mollis sem, id tincidunt ipsum tortor ut eros. Nullam faucibus, turpis ut egestas interdum, mi risus eleifend dui, a mollis magna enim vel odio. In lobortis, erat et luctus lobortis, nulla neque imperdiet tellus, nec varius nisi lacus id dolor. Suspendisse tempus dictum dolor ac vestibulum. Fusce tincidunt eu ipsum varius ultricies. Donec commodo bibendum consequat. Suspendisse potenti. Nam in ultricies risus.</p>', '2017-03-12 13:14:37', '', 1),
(18, 2, 'Curabitur eu mauris id neque ultricies feugiat a ut mi', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem. Mauris at condimentum dolor. Curabitur eu mauris id neque ultricies feugiat a ut mi. Ut posuere faucibus nisl, sed sagittis tellus laoreet quis. Pellentesque molestie euismod tempus. Aliquam mattis, velit eget consequat maximus, mauris lectus scelerisque diam, eget volutpat ligula est fermentum odio. Vestibulum nisi libero, malesuada ut congue vel, efficitur sit amet mi. Cras pellentesque egestas volutpat. Aliquam venenatis ullamcorper felis nec cursus. Praesent lacinia laoreet ante, et hendrerit nisi. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Ut consectetur lacus augue, tincidunt finibus nulla convallis eget. Donec rutrum aliquam quam at ultricies. Maecenas at dignissim ex, nec semper urna. Nunc id lacus vel nisl mollis auctor. Etiam vulputate gravida porttitor. Quisque at lobortis quam, id pulvinar nunc. Cras finibus, nisl eget pulvinar egestas, neque nibh sollicitudin velit, eget efficitur neque urna non justo. Sed vehicula non velit sed viverra. Vestibulum lacinia neque et mattis dictum. Sed rhoncus dapibus nisl id fringilla. Duis quis sagittis augue. Morbi accumsan tellus ipsum, et vulputate lectus sagittis quis. Mauris eu sem justo.</p>\r\n\r\n<p>Phasellus quis vehicula tortor. Vestibulum sed purus et mauris tempor posuere. Vivamus vel commodo ipsum. Donec a tristique tellus. In lobortis, tortor et rhoncus rhoncus, metus libero mollis sem, id tincidunt ipsum tortor ut eros. Nullam faucibus, turpis ut egestas interdum, mi risus eleifend dui, a mollis magna enim vel odio. In lobortis, erat et luctus lobortis, nulla neque imperdiet tellus, nec varius nisi lacus id dolor. Suspendisse tempus dictum dolor ac vestibulum. Fusce tincidunt eu ipsum varius ultricies. Donec commodo bibendum consequat. Suspendisse potenti. Nam in ultricies risus.</p>', '2017-03-10 16:14:36', '', 1),
(19, 4, 'Curabitur eu mauris id neque ultricies feugiat a ut mi', 'Donec odio neque, sodales eu nibh eget, posuere pharetra erat. Sed luctus felis ac risus gravida, ac condimentum diam commodo.', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-11 16:14:36', '', 1),
(20, 3, 'Nunc magna mauris, aliquam id dapibus et, egestas finibus lorem', 'Your not gonna be picking a fight, Dad, dad dad daddy-o. You\'re coming to a rescue, right? Okay, let\'s go', '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', '2017-03-11 14:14:36', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `img` longtext,
  `historico` longtext,
  `user` varchar(50) DEFAULT NULL,
  `senha` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `img`, `historico`, `user`, `senha`) VALUES
(1, 'Emerson Carvalho', 'teste@teste.vom.br', NULL, '<p>That\'s right, he\'s gonna be mayor. Whoa, they really cleaned this place up, looks brand new. My insurance, it\'s your car, your insurance should pay for it. Hey, I wanna know who\'s gonna pay for this? I spilled beer all over it when that car smashed into me. Who\'s gonna pay my cleaning bill? Yes, yes, I\'m George, George McFly, and I\'m your density. I mean, I\'m your destiny. It\'s uh, the other end of town, a block past Maple.</p>', 'emerson', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_session`
--
ALTER TABLE `ci_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `postagens`
--
ALTER TABLE `postagens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `postagens`
--
ALTER TABLE `postagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
