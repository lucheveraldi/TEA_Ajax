-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 27 Juin 2016 à 18:53
-- Version du serveur: 5.5.47-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `isig`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`) VALUES
(1, 'Bourdeaudhuy', 'Thomas'),
(2, 'ANDRIEUX','LAURINE'),
(3, 'ARIES','PIERRE'),
(4, 'BACHELOT','ALICE'),
(5, 'BERNARD','ELIAN'),
(6, 'BEYOU','MARCEAU'),
(7, 'BOUVIER','AYMERIC'),
(8, 'BOUZEREAU','JEAN'),
(9, 'BRAHMI','HAMDI'),
(10,'BRISSON','ULYSSE'),
(11,'BRUNET','CAMILLE'),
(12,'CAISSIAL','ADRIEN'),
(13,'CHABCHOUB','WISSEM'),
(14,'CHAPERON','BENJAMIN'),
(15,'CLAESSEN','LENA'),
(16,'CLAUDINO E SILVA','GUILHERME'),
(17,'COLSON','SACHA'),
(18,'CORTES AZUERO','OSCAR'),
(19,'DE COUCY','THOMAS'),
(20,'DE SOUSA FERREIRA COSTA','RAFAEL'),
(21,'DELAGE DE LUGET','VICTOR'),
(22,'DEMENOIS','EDOUARD'),
(23,'DEMICHEL','THOMAS'),
(24,'DULONG','NICOLAS'),
(25,'DUQUENOY','FLORENCE'),
(26,'DUTILLIEUX','LYDERIC'),
(27,'FAURE','AMAURY'),
(28,'FIEVEZ','MATHILDE'),
(29,'FRERE','MAXENCE'),
(30,'GUICHARD','MARGOT'),
(31,'HANS','ADRIEN'),
(32,'HOCQUET','LOUIS'),
(33,'HUE','CYPRIEN'),
(34,'HUG','RAPHAELLE'),
(35,'LALOYE','GASPARD'),
(36,'LE BERRE','THEO'),
(37,'LE FLOCH','NINON'),
(38,'LE TEXIER','ALEXANDRE'),
(39,'LESBROS','CLAIRE'),
(40,'LEVY','NICOLAS'),
(41,'LOUASFI','ANASS'),
(42,'MARTIN','LAURINE'),
(43,'MASSE','OSCAR'),
(44,'MAUDUIT','THIBAULT'),
(45,'MOULLIE CHAUVET','MORGANE'),
(46,'PINET','PAUL-HENRI'),
(47,'PIZIGO','ALEXANDRE'),
(48,'QUIERTANT','LUCAS'),
(49,'ROISIN','EMILE'),
(50,'ROULLE','MARTIN'),
(51,'SEKIGUCHI','TAIYO'),
(52,'SETHIAN','NICOLAS'),
(53,'SONNEVILLE','BENJAMIN'),
(54,'SQALLI HOUSSAINI','GHALI'),
(55,'SUZAN','SIMON'),
(56,'TAKI','YANIS'),
(57,'TERRASSE','ARTHUR'),
(58,'THOMAS','IONA'),
(59,'VIAL','SIMON'),
(60,'VIGNERON','EMMA'),
(61,'VO','CLEMENT'),
(62,'WAZEN','CELINE'),
(63,'WILHELM','THOMAS'),
(64,'WILLOT','TRISTAN'),
(65,'Le-Glaz', 'Isabelle');


