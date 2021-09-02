-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 18 avr. 2021 à 17:40
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `titre` varchar(40) NOT NULL,
  `accroche` varchar(200) NOT NULL,
  `contenu` text NOT NULL,
  `publication` datetime DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `accroche`, `contenu`, `publication`, `image`) VALUES
(1, 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad .\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.\r\n', '2021-04-16 12:44:50', 'img3.png'),
(2, 'Article 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam \r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molesteius eos.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit similique eum sequi! Culpa quam earum, iusto atque incidunt porro ad quae sint, doloremque molestiae qui recusandae repudiandae sequi eius eos.\r\n\r\n', '2021-04-16 12:44:50', 'img2.png'),
(3, 'Article 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n', '2021-04-16 12:45:42', 'img1.png');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_membre` int(3) NOT NULL,
  `commentaire` text NOT NULL,
  `publication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
