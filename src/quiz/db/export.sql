-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 07 mars 2023 à 07:54
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `aantworden`
--

DROP TABLE IF EXISTS `aantworden`;
CREATE TABLE IF NOT EXISTS `aantworden` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `aantword` varchar(150) NOT NULL,
  `is_correct` int(11) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `quiz_answer`
--

DROP TABLE IF EXISTS `quiz_answer`;
CREATE TABLE IF NOT EXISTS `quiz_answer` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `option_number` int(11) NOT NULL,
  PRIMARY KEY (`qa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quiz_answer`
--

INSERT INTO `quiz_answer` (`qa_id`, `qid`, `option_number`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `quiz_options`
--

DROP TABLE IF EXISTS `quiz_options`;
CREATE TABLE IF NOT EXISTS `quiz_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `option` varchar(150) NOT NULL,
  `is_enabled` int(11) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quiz_options`
--

INSERT INTO `quiz_options` (`option_id`, `qid`, `option`, `is_enabled`) VALUES
(1, 1, 'Ja', 1),
(2, 1, 'Nee', 1),
(3, 2, 'Ja', 1),
(4, 2, 'Nee', 1),
(5, 3, 'Ja', 1),
(6, 3, 'Nee', 1),
(7, 4, 'Ja', 1),
(8, 4, 'Nee', 1),
(9, 5, 'Ja', 1),
(10, 5, 'Nee', 1),
(11, 6, 'Ja', 1),
(12, 6, 'Nee', 1),
(13, 7, 'Ja', 1),
(14, 7, 'Nee', 1),
(15, 8, 'Ja', 1),
(16, 8, 'Nee', 1),
(17, 9, 'Ja', 1),
(18, 9, 'Nee', 1),
(19, 10, 'Ja', 1),
(20, 10, 'Nee', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vraagen`
--

DROP TABLE IF EXISTS `vraagen`;
CREATE TABLE IF NOT EXISTS `vraagen` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `vraag` varchar(150) NOT NULL,
  `is_enabled` int(11) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vraagen`
--

INSERT INTO `vraagen` (`qid`, `vraag`, `is_enabled`) VALUES
(1, 'Wat is de eerste vraag?', 1),
(2, 'Wat is de tweede vraag?', 1),
(3, 'Wat is de deerde vraag?', 1),
(4, 'Wat is de vierde vraag?', 1),
(5, 'Wat is de vijfde vraag?', 1),
(6, 'Wat is de zesde vraag?', 1),
(7, 'Wat is de zevende vraag?', 1),
(8, 'Wat is de achtste vraag?', 1),
(9, 'Wat is de negende vraag?', 1),
(10, 'Wat is de tiende vraag?', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;