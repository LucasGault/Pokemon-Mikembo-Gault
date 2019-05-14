-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 14 mai 2019 à 22:52
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mikembo`
--

-- --------------------------------------------------------

--
-- Structure de la table `attaque`
--

CREATE TABLE `attaque` (
  `Num_Attaque` int(255) NOT NULL,
  `Nom_Attaque` varchar(35) NOT NULL,
  `Type_Attaque` int(20) DEFAULT NULL,
  `Classe_Attaque` varchar(15) DEFAULT NULL,
  `Puissance_Attaque` int(255) DEFAULT NULL,
  `Prec_Attaque` int(255) DEFAULT NULL,
  `PP_Attaque` int(255) DEFAULT NULL,
  `Effets secondaires` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `attaque`
--

INSERT INTO `attaque` (`Num_Attaque`, `Nom_Attaque`, `Type_Attaque`, `Classe_Attaque`, `Puissance_Attaque`, `Prec_Attaque`, `PP_Attaque`, `Effets secondaires`) VALUES
(1, 'Riposte', 1, 'Physique', NULL, 100, 20, 'Inflige le double des d&eacute;g&acirc;ts subis par une attaque de type \r\nNormal ou Combat durant le tour, &eacute;choue sinon'),
(2, 'Frappes Atlas', 1, 'Physique', NULL, 100, 20, 'Inflige des d&eacute;g&acirc;ts &eacute;gaux au niveau du lanceur\r\n'),
(3, 'Double Pied', 1, 'Physique', 30, 100, 30, 'Frappe deux fois'),
(4, 'Balayage', 1, 'Physique', 50, 100, 20, 'Peut apeurer la cible - Taux de Coups Critiques &eacute;lev&eacute;'),
(5, 'Mawashi Geri', 1, 'Physique', 60, 85, 15, 'Peut apeurer la cible'),
(6, 'Pied Saut&eacute;', 1, 'Physique', 70, 95, 25, 'Enl&egrave;ve 1 PV si l\'attaque &eacute;choue'),
(7, 'Sacrifice', 1, 'Physique', 80, 80, 25, 'Blesse le lanceur'),
(8, 'Pied Voltige', 1, 'Physique', 85, 90, 20, 'Enl&egrave;ve 1 PV si l\'attaque &eacute;choue'),
(9, 'Draco-Rage', 2, 'Sp&eacute;ciale', NULL, 100, 10, 'Inflige toujours 40 PV de d&eacute;g&acirc;ts'),
(10, 'Repli', 3, NULL, NULL, 100, 40, 'Augmente la d&eacute;fense du lanceur'),
(11, '&Eacute;cume', 3, 'Sp&eacute;ciale', 20, 100, 30, 'Peut baisser la vitesse de la cible'),
(12, 'Claquoir', 3, 'Sp&eacute;ciale', 35, 75, 10, 'Attaque continue sur deux &agrave; cinq tours'),
(13, 'Pistolet &agrave; O', 3, 'Sp&eacute;ciale', 40, 100, 25, NULL),
(14, 'Bulles d\'O', 3, 'Sp&eacute;ciale', 65, 100, 20, 'Peut baisser la vitesse de la cible'),
(15, 'Cascade', 3, 'Sp&eacute;ciale', 80, 100, 15, NULL),
(16, 'Pince-Masse', 3, 'Sp&eacute;ciale', 90, 85, 10, 'Taux de Coups Critiques &eacute;lev&eacute;'),
(17, 'Surf', 3, 'Sp&eacute;ciale', 95, 100, 15, NULL),
(18, 'Hydrocanon', 3, 'Sp&eacute;ciale', 120, 80, 5, NULL),
(19, 'Cage-&Eacute;clair', 4, NULL, NULL, 100, 20, 'Paralyse la cible'),
(20, '&Eacute;clair', 4, 'Sp&eacute;ciale', 40, 100, 30, 'Peut paralyser la cible'),
(21, 'Poing-&Eacute;clair', 4, 'Sp&eacute;ciale', 75, 100, 15, 'Peut paralyser la cible'),
(22, 'Tonnerre', 4, 'Sp&eacute;ciale', 95, 100, 15, 'Peut paralyser la cible'),
(23, 'Fatal-Foudre', 4, 'Sp&eacute;ciale', 120, 70, 5, 'Peut paralyser la cible'),
(24, 'DanseFlamme', 6, 'Sp&eacute;ciale', 15, 70, 15, 'Attaque continue sur deux &agrave; cinq tours'),
(25, 'Flamm&egrave;che', 6, 'Sp&eacute;ciale', 40, 100, 25, 'Peut br&ucirc;ler la cible'),
(26, 'Poing de Feu', 6, 'Sp&eacute;ciale', 75, 100, 15, 'Peut br&ucirc;ler la cible'),
(27, 'Lance-Flamme', 6, 'Sp&eacute;ciale', 95, 100, 15, 'Peut br&ucirc;ler la cible'),
(28, 'D&eacute;flagration', 6, 'Sp&eacute;ciale', 120, 85, 5, 'Peut br&ucirc;ler la cible'),
(29, 'Brume', 7, NULL, NULL, NULL, 30, 'Emp&ecirc;che toute variation de stat provoqu&eacute;e par l\'adversaire'),
(30, 'Bu&eacute;e Noire', 7, NULL, NULL, NULL, 30, 'Annule toute variation de stat, la confusion, les effets de \r\nPuissance, Vampigraine, Mur Lumi&egrave;re et Protection'),
(31, 'Onde Bor&eacute;ale', 7, 'Sp&eacute;ciale', 65, 100, 20, 'Peut baisser l\'attaque la cible'),
(32, 'Poing-Glace', 7, 'Sp&eacute;ciale', 75, 100, 15, 'Peut geler la cible'),
(33, 'Laser Glace', 7, 'Sp&eacute;ciale', 95, 100, 10, 'Peut geler la cible'),
(34, 'Blizzard', 7, 'Sp&eacute;ciale', 120, 90, 5, 'Peut geler la cible'),
(35, 'S&eacute;cr&eacute;tion', 8, NULL, NULL, 95, 40, 'Diminue la vitesse de la cible'),
(36, 'Dard Nu&eacute;e', 8, 'Physique', 14, 85, 20, 'Attaque deux &agrave; cinq fois'),
(37, 'Vampirisme', 8, 'Physique', 20, 100, 15, 'Restaure un nombre de PV au lanceur &eacute;gal\r\n&agrave; la moiti&eacute; des d&eacute;g&acirc;ts inflig&eacute;s &agrave; la cible'),
(38, 'Double-Dard', 8, 'Physique', 25, 100, 20, 'Attaque deux fois - Peut empoisoner'),
(39, 'Adaptation', 9, NULL, NULL, NULL, 30, 'Le lanceur devient du m&ecirc;me type que l\'adversaire'),
(40, 'Aff&ucirc;tage', 9, NULL, NULL, NULL, 30, 'Augmente l\'attaque du lanceur'),
(42, 'Armure', 9, NULL, NULL, NULL, 30, 'Augmente la d&eacute;fense du lanceur'),
(43, 'Berceuse', 9, NULL, NULL, 55, 15, 'Endort la cible'),
(44, 'Boul\'Armure', 9, NULL, NULL, NULL, 40, 'Augmente la d&eacute;fense du lanceur'),
(45, 'Brouillard', 9, NULL, NULL, 100, 20, 'Baisse la pr&eacute;cision de la cible'),
(46, 'Clonage', 9, NULL, NULL, NULL, 10, 'Cr&eacute;e un clone qui prend les dommages &agrave; la place du lanceur,\r\nenl&egrave;ve 25% des PV du lanceur'),
(47, 'Copie', 9, NULL, NULL, NULL, 10, 'Apprend une des attaques de l\'advresaire au hasard\r\njusqu\'&agrave; la fin du combat'),
(48, 'Croissance', 9, NULL, NULL, NULL, 40, 'Augmente le sp&eacute;cial du lanceur'),
(49, 'Cyclone', 9, NULL, NULL, 100, 20, 'Met fin au combat contre un Pok&eacute;mon sauvage,\r\n&eacute;choue contre un dresseur'),
(50, 'Danse-Lames', 9, NULL, NULL, NULL, 30, 'Augmente l\'attaque du lanceur de deux niveaux'),
(51, 'E-Coque', 9, NULL, NULL, NULL, 10, 'Restaure jusqu\'&agrave; la moiti&eacute; des PV du lanceur'),
(52, 'Entrave', 9, NULL, NULL, 55, 20, 'Supprime durant un &agrave; huit tour une \r\nattaque au hasard de la cible'),
(53, 'Flash', 9, NULL, NULL, 70, 20, 'Baisse la pr&eacute;cision de la cible'),
(54, 'Grincement', 9, NULL, NULL, 85, 40, 'Baisse la d&eacute;fense de l\'adversaire de deux niveaux'),
(55, 'Grosbisou', 9, NULL, NULL, 75, 10, 'Endort la cible'),
(56, 'Groz\'Yeux', 9, NULL, NULL, 100, 30, 'Baisse la d&eacute;fense de la cible'),
(57, 'Hurlement', 9, NULL, NULL, 100, 20, 'Met fin au combat contre un Pok&eacute;mon sauvage,\r\n&eacute;choue contre un dresseur'),
(58, 'Intimidation', 9, NULL, NULL, 75, 30, 'Paralyse la cible'),
(59, 'Jet de Sable', 9, NULL, NULL, 100, 15, 'Baisse la pr&eacute;cision de la cible'),
(60, 'Lilliput', 9, NULL, NULL, NULL, 20, 'Augmente l\'esquive du lanceur'),
(61, 'M&eacute;tronome', 9, NULL, NULL, NULL, 10, 'Ex&eacute;cute une attaque prise au hasard dans cette liste'),
(62, 'Mimi-Queue', 9, NULL, NULL, 100, 30, 'Baisse la d&eacute;fense de la cible'),
(63, 'Morphing', 9, NULL, NULL, NULL, 10, 'Transforme le lanceur en le Pok&eacute;mon adverse'),
(64, 'Puissance', 9, NULL, NULL, NULL, 30, 'Augmente le taux de Coups Critiques du lanceur'),
(65, 'Reflet', 9, NULL, NULL, NULL, 15, 'Augmente l\'esquive du lanceur'),
(66, 'Rugissement', 9, NULL, NULL, NULL, 40, 'Baisse l\'attaque de la cible'),
(67, 'Soin', 9, NULL, NULL, NULL, 20, 'Restaure jusqu\'&agrave; la moiti&eacute; des PV du lanceur'),
(68, 'Trempette', 9, NULL, NULL, NULL, 40, NULL),
(69, 'Ultrason', 9, NULL, NULL, 55, 20, 'Rend la cible confuse'),
(70, 'Croc Fatal', 9, 'Physique', NULL, 90, 10, 'Enl&egrave;ve 50% des PV restants de la cible'),
(71, 'Patience', 9, 'Physique', NULL, NULL, 10, 'Immobilise le lanceur deux ou trois tours, puis inflige &agrave;\r\nl\'adversaire le double des d&eacute;g&acirc;ts subis pendant cette p&eacute;riode'),
(72, 'Sonicboom', 9, 'Physique', NULL, 90, 20, 'Inflige toujours 20 PV de d&eacute;g&acirc;ts'),
(73, 'Empal\'Korne', 9, 'Physique', NULL, 30, 5, 'Met l\'adversaire KO, &eacute;choue s\'il a une vitesse\r\nsup&eacute;rieure &agrave; celle du lanceur'),
(74, 'Guillotine', 9, 'Physique', NULL, 30, 5, 'Met l\'adversaire KO, &eacute;choue s\'il a une vitesse\r\nsup&eacute;rieure &agrave; celle du lanceur'),
(75, 'Constriction', 9, 'Physique', 10, 100, 35, 'Peut baisser la vitesse de la cible'),
(76, '&Eacute;treinte', 9, 'Physique', 15, 85, 20, 'Attaque continue sur deux &agrave; cinq tours'),
(77, 'Furie', 9, 'Physique', 15, 85, 20, 'Attaque deux &agrave; cinq fois'),
(78, 'Ligotage', 9, 'Physique', 15, 90, 20, 'Attaque continue sur deux &agrave; cinq tours'),
(79, 'Pilonnage', 9, 'Physique', 15, 85, 20, 'Attaque deux &agrave; cinq fois'),
(80, 'Torgnoles', 9, 'Physique', 15, 85, 10, 'Attaque deux &agrave; cinq fois'),
(81, 'Combo-Griffe', 9, 'Physique', 18, 80, 15, 'Attaque deux &agrave; cinq fois'),
(82, 'Poing Com&egrave;te', 9, 'Physique', 18, 85, 15, 'Attaque deux &agrave; cinq fois'),
(83, 'Fr&eacute;n&eacute;sie', 9, 'Physique', 20, 100, 20, 'Attaque sans fin, provoque l\'augmentation de l\'attaque\r\ndu lanceur &agrave; chaque fois qu\'il subit des d&eacute;g&acirc;ts'),
(84, 'Picanon', 9, 'Physique', 20, 100, 15, 'Attaque deux &agrave; cinq fois'),
(85, 'Charge', 9, 'Physique', 35, 95, 35, NULL),
(86, 'Tornade', 9, 'Physique', 35, 100, 40, NULL),
(87, '&Eacute;cras\'Face', 9, 'Phsique', 40, 100, 35, NULL),
(88, 'Griffe', 9, 'Physique', 40, 100, 35, NULL),
(89, 'Jackpot', 9, 'Physique', 40, 100, 20, 'Fait gagner un peu d\'argent &agrave; la fin des combats'),
(90, 'Vive-Attaque', 9, 'Physique', 40, 100, 30, 'Attaque en premier'),
(91, 'Coupe', 9, 'Physique', 50, 95, 30, NULL),
(92, 'Poing Karat&eacute;', 9, 'Physique', 50, 100, 25, 'Taux de Coups Critiques &eacute;lev&eacute;'),
(93, 'Lutte', 9, 'Physique', 50, 100, NULL, 'Blesse le lanceur'),
(94, 'Force Poigne	', 9, 'Physique', 55, 100, 30, NULL),
(95, 'M&eacute;t&eacute;ores', 9, 'Physique', 60, NULL, 20, 'N\'&eacute;choue jamais'),
(96, 'Morsure', 9, 'Physique', 60, 100, 25, 'Peut apeurer la cible'),
(97, '&Eacute;crasement', 9, 'Physique', 65, 100, 20, 'Peut apeurer la cible'),
(98, 'Koud\'Korne	', 9, 'Physique', 65, 100, 25, NULL),
(99, 'Coud\'Boule', 9, 'Physique', 70, 100, 15, 'Peut apeurer la cible'),
(100, 'Tranche', 9, 'Physique', 70, 100, 20, 'Taux de Coups Critiques &eacute;lev&eacute;'),
(101, 'Uppercut', 9, 'Physique', 70, 100, 10, NULL),
(102, 'Coupe-Vent', 9, 'Physique', 80, 100, 10, 'Attaque en deux tours, n\'agit pas au premier\r\n'),
(103, 'Croc de Mort', 9, 'Physique', 80, 90, 15, 'Peut apeurer la cible'),
(104, 'Force', 9, 'Physique', 80, 100, 15, NULL),
(105, 'Souplesse', 9, 'Physique', 80, 75, 20, NULL),
(106, 'Triplattaque', 9, 'Physique', 80, 100, 10, NULL),
(107, 'Ultimapoing', 9, 'Physique', 80, 85, 20, NULL),
(108, 'Plaquage', 9, 'Physique', 85, 100, 15, 'Peut paralyser la cible'),
(109, 'B&eacute;lier', 9, 'Physique', 90, 85, 20, 'Blesse le lanceur'),
(110, 'Mania', 9, 'Physique', 90, 100, 20, 'Attaque continue sur deux ou trois tours, le \r\nlanceur devient confus par la suite'),
(111, 'Bomb\'&OElig;uf', 9, 'Physique', 100, 75, 16, NULL),
(112, 'Coud\'Kr&acirc;ne', 9, 'Physique', 100, 100, 15, 'Attaque en deux tours, n\'agit pas au premier\r\n'),
(113, 'Damocl&egrave;s', 9, 'Physique', 100, 100, 15, 'Blesse le lanceur'),
(114, 'Ultimawashi', 9, 'Physique', 120, 75, 5, NULL),
(115, 'Destruction', 9, 'Physique', 130, 100, 5, 'Lanceur KO apr&egrave;s l\'attaque, ne tient compte que de la moiti&eacute; de\r\nla d&eacute;fense adverse, ce qui &eacute;quivaut &agrave; une puissance r&eacute;elle de 260'),
(116, 'Ultralaser', 9, 'Physique', 150, 90, 5, 'Lanceur immobilis&eacute; au tour suivant'),
(117, 'Explosion', 9, 'Physique', 170, 100, 5, 'Lanceur KO apr&egrave;s l\'attaque, ne tient compte que de la moiti&eacute; de\r\nla d&eacute;fense adverse, ce qui &eacute;quivaut &agrave; une puissance r&eacute;elle de 340'),
(118, 'Para-Spore', 10, NULL, NULL, 75, 30, 'Paralyse la cible'),
(119, 'Poudre Dodo', 10, NULL, NULL, 75, 15, 'Endort la cible'),
(120, 'Spore', 10, NULL, NULL, 100, 15, 'Endort la cible'),
(121, 'Vampigraine', 10, NULL, NULL, 90, 10, 'Dra&icirc;ne &agrave; chaque tour des PV de la cible vers le lanceur'),
(122, 'Vol-Vie', 10, 'Sp&eacute;ciale', 20, 100, 20, 'Restaure un nombre de PV au lanceur &eacute;gal\r\n&agrave; la moiti&eacute; des d&eacute;g&acirc;ts inflig&eacute;s &agrave; la cible'),
(123, 'Fouet Lianes', 10, 'Sp&eacute;ciale', 35, 100, 10, NULL),
(124, 'M&eacute;ga-Sangsue', 10, 'Sp&eacute;ciale', 40, 100, 10, 'Restaure un nombre de PV au lanceur &eacute;gal\r\n&agrave; la moiti&eacute; des d&eacute;g&acirc;ts inflig&eacute;s &agrave; la cible'),
(125, 'Tranch\'Herbe', 10, 'Sp&eacute;ciale', 55, 95, 25, 'Taux de Coups Critiques &eacute;lev&eacute;'),
(126, 'Danse-Fleur', 10, 'Sp&eacute;ciale', 70, 100, 20, 'Attaque continue sur deux ou trois tour, le \r\nlanceur devient confus par la suite'),
(127, 'Lance-Soleil', 10, 'Sp&eacute;ciale', 120, 100, 10, 'Attaque en deux tours, n\'agit pas au premier'),
(128, 'Acidarmure', 11, NULL, NULL, NULL, 40, 'Augmente la d&eacute;fense du lanceur de deux niveaux'),
(129, 'Gaz Toxik', 11, NULL, NULL, 55, 40, 'Empoisonne la cible'),
(130, 'Poudre Toxik', 11, NULL, NULL, 75, 35, 'Empoisonne la cible'),
(131, 'Toxik', 11, NULL, NULL, 85, 10, 'Empoisonne gravement la cible'),
(132, 'Dard-Venin', 11, 'Physique', 15, 100, 35, 'Peut empoisonner la cible'),
(133, 'Pur&eacute;dpois', 11, 'Physique', 20, 70, 20, 'Peut empoisonner la cible'),
(134, 'Acide', 11, 'Physique', 40, 100, 30, 'Peut baisser la d&eacute;fense de la cible'),
(135, 'D&eacute;tritus', 11, 'Physique', 65, 100, 20, 'Peut empoisonner la cible'),
(136, 'Amn&eacute;sie', 12, NULL, NULL, NULL, 20, 'Augmente le sp&eacute;cial du lanceur de deux niveaux'),
(137, 'Bouclier', 12, NULL, NULL, NULL, 30, 'Augmente la d&eacute;fense du lanceur de deux niveaux'),
(138, 'H&acirc;te', 12, NULL, NULL, NULL, 30, 'Augmente la vitesse du lanceur de deux niveaux'),
(139, 'Hypnose', 12, NULL, NULL, NULL, 30, 'Endort la cible'),
(140, 'Mur Lumi&egrave;re', 12, NULL, NULL, NULL, 30, 'Augmente la r&eacute;sistance du lanceur aux attaques sp&eacute;ciales'),
(141, 'Protection', 12, NULL, NULL, NULL, 20, 'Augmente la r&eacute;sistance du lanceur aux attaques physiques'),
(142, 'Repos', 12, NULL, NULL, NULL, 10, 'Restaure tous les PV du lanceur ainsi que son statut,\r\nle lanceur est immobilis&eacute; pendant deux tours'),
(143, 'T&eacute;l&eacute;kin&eacute;sie', 12, NULL, NULL, 80, 15, 'Baisse la pr&eacute;cision de la cible'),
(144, 'T&eacute;l&eacute;port', 12, NULL, NULL, NULL, 20, 'Met fin au combat contre un Pok&eacute;mon sauvage,\r\n&eacute;choue contre un dresseur'),
(145, 'Yoga', 12, NULL, NULL, NULL, 40, 'Augmente l\'attaque du lanceur'),
(146, 'Vague Psy', 12, 'Sp&eacute;ciale', NULL, 80, 15, 'Inflige des d&eacute;g&acirc;ts variables'),
(147, 'Choc Mental', 12, 'Sp&eacute;ciale', 50, 100, 25, 'Peut rendre la cible confuse'),
(148, 'Rafale Psy', 12, 'Sp&eacute;ciale', 65, 100, 20, 'Peut rendre la cible confuse'),
(149, 'Psyko', 12, 'Sp&eacute;ciale', 90, 100, 20, 'Peut baisser le sp&eacute;cial de la cible'),
(150, 'D&eacute;vor&ecirc;ve', 12, 'Sp&eacute;ciale', 100, 100, 15, 'Restaure un nombre de PV au lanceur &eacute;gal &agrave; la moiti&eacute; des d&eacute;g&acirc;ts\r\ninflig&eacute;s &agrave; la cible, ne fonctionne que si la cible est endormie'),
(151, 'Jet-Pierres', 13, 'Physique', 50, 65, 15, NULL),
(152, '&Eacute;boulement', 13, 'Physique', 75, 90, 10, 'Peut apeurer la cible'),
(153, 'Ab&icirc;me', 14, 'Physique', NULL, 30, 5, 'Met l\'adversaire KO, &eacute;choue s\'il a une vitesse\r\nsup&eacute;rieure &agrave; celle du lanceur'),
(154, 'Osmerang', 14, 'Physique', 50, 90, 10, 'Attaque deux fois'),
(155, 'Massd\'Os', 14, 'Physique', 65, 85, 10, 'Peut apeurer la cible'),
(156, 'S&eacute;isme', 14, 'Physique', 100, 100, 10, NULL),
(157, 'Tunnel', 14, 'Physique', 100, 100, 10, 'Attaque en deux tours, le lanceur ne peut &ecirc;tre atteint\r\nque par M&eacute;t&eacute;ores et Patience au premier tour'),
(158, 'Onde Folie', 15, NULL, NULL, 100, 10, 'Rend la cible confuse'),
(159, 'T&eacute;n&egrave;bres', 15, 'Physique', NULL, 100, 15, 'Inflige des d&eacute;g&acirc;ts &eacute;gaux au niveau du lanceur'),
(160, 'L&eacute;chouille', 15, 'Physique', 20, 100, 30, 'Peut paralyser la cible'),
(161, 'Mimique', 16, NULL, NULL, NULL, 20, 'Le lanceur utilise la derni&egrave;re attaque lanc&eacute;e par l\'adversaire'),
(162, 'Cru-Aile', 16, 'Physique', 35, 100, 35, NULL),
(163, 'Picpic', 16, 'Physique', 35, 100, 35, NULL),
(164, 'Vol', 16, 'Physique', 70, 100, 15, 'Attaque en deux tours, le lanceur ne peut &ecirc;tre atteint\r\nque par M&eacute;t&eacute;ores et Patience au premier tour'),
(165, 'Bec Vrille', 16, 'Physique', 80, 100, 20, NULL),
(166, 'Piqu&eacute;', 16, 'Physique', 140, 90, 5, 'Attaque en deux tours, n\'agit pas au premier');

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `Id_equipe` int(255) NOT NULL,
  `id_membre` int(255) NOT NULL,
  `Numero` int(255) NOT NULL,
  `Num_Attaque1` int(255) DEFAULT NULL,
  `Num_Attaque2` int(255) DEFAULT NULL,
  `Num_Attaque3` int(255) DEFAULT NULL,
  `Num_Attaque4` int(255) DEFAULT NULL,
  `Niveau` int(100) NOT NULL,
  `PV_restant` int(255) NOT NULL,
  `Objet_Pokemon` int(11) DEFAULT NULL,
  `PP_att1` int(255) NOT NULL,
  `PP_att2` int(255) NOT NULL,
  `PP_att3` int(255) NOT NULL,
  `PP_att4` int(255) NOT NULL,
  `Place_Equipe` enum('1','2','3','4','5','6') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`Id_equipe`, `id_membre`, `Numero`, `Num_Attaque1`, `Num_Attaque2`, `Num_Attaque3`, `Num_Attaque4`, `Niveau`, `PV_restant`, `Objet_Pokemon`, `PP_att1`, `PP_att2`, `PP_att3`, `PP_att4`, `Place_Equipe`) VALUES
(128, 42, 1, 88, 66, NULL, NULL, 5, 45, NULL, 35, 40, 0, 0, '3'),
(213, 44, 4, 88, 66, NULL, NULL, 5, 0, NULL, 0, 0, 0, 0, '3'),
(228, 24, 145, 163, 20, NULL, NULL, 10, 90, NULL, 35, 30, 0, 0, '6'),
(229, 24, 144, 163, 33, NULL, NULL, 10, 90, NULL, 35, 10, 0, 0, '4'),
(233, 24, 103, 1, 2, 3, 4, 5, 95, NULL, 20, 20, 30, 20, '1'),
(234, 24, 115, 1, 2, 3, 4, 9, 105, NULL, 20, 20, 30, 20, '5'),
(246, 24, 151, 1, 2, 3, 4, 9, 100, NULL, 20, 20, 30, 20, '2'),
(255, 23, 11, 1, 2, 3, 4, 7, 50, NULL, 20, 20, 30, 20, '3'),
(260, 37, 1, 85, 66, NULL, NULL, 5, 0, NULL, 0, 0, 0, 0, ''),
(278, 23, 146, 1, 2, 3, 4, 7, 90, NULL, 0, 0, 0, 0, '2'),
(285, 45, 1, 85, 66, NULL, NULL, 5, 0, NULL, 0, 0, 0, 0, '3'),
(294, 45, 119, 1, 2, 3, 4, 7, 80, NULL, 0, 0, 0, 0, '2'),
(295, 45, 76, 1, 2, 3, 4, 9, 80, NULL, 0, 0, 0, 0, '3'),
(297, 45, 62, 1, 2, 3, 4, 6, 90, NULL, 0, 0, 0, 0, '4'),
(298, 45, 82, 1, 2, 3, 4, 9, 50, NULL, 0, 0, 0, 0, '5'),
(299, 45, 100, 1, 2, 3, 4, 6, 40, NULL, 0, 0, 0, 0, '6'),
(301, 23, 20, 1, 2, 3, 4, 9, 55, NULL, 0, 0, 0, 0, '1'),
(302, 23, 101, 1, 2, 3, 4, 5, 60, NULL, 0, 0, 0, 0, '1'),
(303, 24, 151, 1, 2, 3, 4, 9, 100, NULL, 0, 0, 0, 0, '1');

-- --------------------------------------------------------

--
-- Structure de la table `faiblesse`
--

CREATE TABLE `faiblesse` (
  `Num_Faiblesse` int(40) NOT NULL,
  `Type_Attaquant` int(40) NOT NULL,
  `Type_Defense` int(40) NOT NULL,
  `Effet_Faiblesse` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `faiblesse`
--

INSERT INTO `faiblesse` (`Num_Faiblesse`, `Type_Attaquant`, `Type_Defense`, `Effet_Faiblesse`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 6, 1, 1),
(6, 7, 1, 1),
(7, 8, 1, 0.5),
(8, 9, 1, 1),
(9, 10, 1, 1),
(10, 11, 1, 1),
(11, 12, 1, 2),
(12, 13, 1, 0.5),
(13, 14, 1, 1),
(14, 15, 1, 1),
(15, 16, 1, 2),
(16, 1, 2, 1),
(17, 2, 2, 2),
(18, 3, 2, 0.5),
(19, 4, 2, 0.5),
(20, 6, 2, 0.5),
(21, 7, 2, 2),
(22, 8, 2, 1),
(23, 9, 2, 1),
(24, 10, 2, 1),
(25, 11, 2, 2),
(26, 12, 2, 1),
(27, 13, 2, 1),
(28, 14, 2, 1),
(29, 15, 2, 1),
(30, 16, 2, 1),
(31, 1, 3, 1),
(32, 2, 3, 1),
(33, 3, 3, 0.5),
(34, 4, 3, 2),
(35, 6, 3, 0.5),
(36, 7, 3, 0.5),
(37, 8, 3, 1),
(38, 9, 3, 1),
(39, 10, 3, 2),
(40, 11, 3, 1),
(41, 12, 3, 1),
(42, 13, 3, 1),
(43, 14, 3, 1),
(44, 15, 3, 1),
(45, 16, 3, 1),
(46, 1, 4, 1),
(47, 2, 4, 1),
(48, 3, 4, 1),
(49, 4, 4, 1),
(50, 6, 4, 1),
(51, 7, 4, 1),
(52, 8, 4, 1),
(53, 9, 4, 1),
(54, 10, 4, 1),
(55, 11, 4, 1),
(56, 12, 4, 1),
(57, 13, 4, 1),
(58, 14, 4, 2),
(59, 15, 4, 1),
(60, 16, 4, 0.5),
(61, 1, 6, 1),
(62, 2, 6, 1),
(63, 3, 6, 2),
(64, 4, 6, 1),
(65, 6, 6, 0.5),
(66, 7, 6, 1),
(67, 8, 6, 0.5),
(68, 9, 6, 1),
(69, 10, 6, 0.5),
(70, 11, 6, 1),
(71, 12, 6, 1),
(72, 13, 6, 2),
(73, 14, 6, 2),
(74, 15, 6, 1),
(75, 16, 6, 1),
(76, 1, 7, 2),
(77, 2, 7, 1),
(78, 3, 7, 1),
(79, 4, 7, 1),
(80, 6, 7, 2),
(81, 7, 7, 0.5),
(82, 8, 7, 1),
(83, 9, 7, 1),
(84, 10, 7, 1),
(85, 11, 7, 1),
(86, 12, 7, 1),
(87, 13, 7, 2),
(88, 14, 7, 1),
(89, 15, 7, 1),
(90, 16, 7, 1),
(91, 1, 8, 0.5),
(92, 2, 8, 1),
(93, 3, 8, 1),
(94, 4, 8, 1),
(95, 6, 8, 2),
(96, 7, 8, 1),
(97, 8, 8, 1),
(98, 9, 8, 1),
(99, 10, 8, 0.5),
(100, 11, 8, 2),
(101, 12, 8, 1),
(102, 13, 8, 2),
(103, 14, 8, 0.5),
(104, 15, 8, 1),
(105, 16, 8, 2),
(106, 1, 9, 2),
(107, 2, 9, 1),
(108, 3, 9, 1),
(109, 4, 9, 1),
(110, 6, 9, 1),
(111, 7, 9, 1),
(112, 8, 9, 1),
(113, 9, 9, 1),
(114, 10, 9, 1),
(115, 11, 9, 1),
(116, 12, 9, 1),
(117, 13, 9, 1),
(118, 14, 9, 1),
(119, 15, 9, 0),
(120, 16, 9, 1),
(121, 1, 10, 1),
(122, 2, 10, 1),
(123, 3, 10, 0.5),
(124, 4, 10, 0.5),
(125, 6, 10, 2),
(126, 7, 10, 2),
(127, 8, 10, 2),
(128, 9, 10, 1),
(129, 10, 10, 0.5),
(130, 11, 10, 2),
(131, 12, 10, 1),
(132, 13, 10, 1),
(133, 14, 10, 0.5),
(134, 15, 10, 1),
(135, 16, 10, 2),
(136, 1, 11, 0.5),
(137, 2, 11, 1),
(138, 3, 11, 1),
(139, 4, 11, 1),
(140, 6, 11, 1),
(141, 7, 11, 1),
(142, 8, 11, 2),
(143, 9, 11, 1),
(144, 10, 11, 0.5),
(145, 11, 11, 0.5),
(146, 12, 11, 2),
(147, 13, 11, 1),
(148, 14, 11, 2),
(149, 15, 11, 1),
(150, 16, 11, 1),
(151, 1, 12, 0.5),
(152, 2, 12, 1),
(153, 3, 12, 1),
(154, 4, 12, 1),
(155, 6, 12, 1),
(156, 7, 12, 1),
(157, 8, 12, 2),
(158, 9, 12, 1),
(159, 10, 12, 1),
(160, 11, 12, 1),
(161, 12, 12, 0.5),
(162, 13, 12, 1),
(163, 14, 12, 1),
(164, 15, 12, 0),
(165, 16, 12, 1),
(166, 1, 13, 2),
(167, 2, 13, 1),
(168, 3, 13, 2),
(169, 4, 13, 1),
(170, 6, 13, 0.5),
(171, 7, 13, 1),
(172, 8, 13, 1),
(173, 9, 13, 0.5),
(174, 10, 13, 2),
(175, 11, 13, 0.5),
(176, 12, 13, 1),
(177, 13, 13, 1),
(178, 14, 13, 2),
(179, 15, 13, 1),
(180, 16, 13, 0.5),
(181, 1, 14, 1),
(182, 2, 14, 1),
(183, 3, 14, 2),
(184, 4, 14, 0),
(185, 6, 14, 1),
(186, 7, 14, 2),
(187, 8, 14, 1),
(188, 9, 14, 1),
(189, 10, 14, 2),
(190, 11, 14, 0.5),
(191, 12, 14, 1),
(192, 13, 14, 0.5),
(193, 14, 14, 1),
(194, 15, 14, 1),
(195, 16, 14, 1),
(196, 1, 15, 0),
(197, 2, 15, 1),
(198, 3, 15, 1),
(199, 4, 15, 1),
(200, 6, 15, 1),
(201, 7, 15, 1),
(202, 8, 15, 0.5),
(203, 9, 15, 0),
(204, 10, 15, 1),
(205, 11, 15, 0.5),
(206, 12, 15, 1),
(207, 13, 15, 1),
(208, 14, 15, 1),
(209, 15, 15, 2),
(210, 16, 15, 1),
(211, 1, 16, 0.5),
(212, 2, 16, 1),
(213, 3, 16, 1),
(214, 4, 16, 2),
(215, 6, 16, 1),
(216, 7, 16, 2),
(217, 8, 16, 0.5),
(218, 9, 16, 1),
(219, 10, 16, 0.5),
(220, 11, 16, 1),
(221, 12, 16, 1),
(222, 13, 16, 2),
(223, 14, 16, 0),
(224, 15, 16, 1),
(225, 16, 16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_inscription` date NOT NULL,
  `date_derniere_recompense` int(255) DEFAULT NULL,
  `Argent` int(255) NOT NULL,
  `Init_Objet` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Connecter` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `pass`, `email`, `date_inscription`, `date_derniere_recompense`, `Argent`, `Init_Objet`, `Connecter`) VALUES
(23, 'Brice', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'brice.mikembo@etu.u-pec.fr', '2019-04-17', 1557837385, 94800, '0', '1'),
(24, 'lucas', '9cf95dacd226dcf43da376cdb6cbba7035218921', 'lucasgault12@gmail.com', '2019-04-17', 1557863704, 616499, '1', '1'),
(34, 'marie190718', '837c7c0b2de196867bc22141cae11cc9f8f0d242', 'marie.cuvellier@icloud.com', '2019-04-27', 1556913548, 8050, '0', '0'),
(35, 'Vulnesy', '71fe43eb4c434bdea21ca4d70bf773f3e1934ac7', 'siennicki.tom@gmail.com', '2019-04-30', 1556645559, 200, '0', '0'),
(36, 'Kevin', 'd2995ad3a1b75078ab34392bfb06d1b63811f1b1', 'dinithostes@gmail.com', '2019-04-30', 1556646651, 200, '0', '0'),
(37, 'test7', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test@test4.test', '2019-05-02', 1557838449, 0, '1', '1'),
(41, 'oui', '5898fc860300e228dcd54c0b1045b5fa0dcda502', 'oui@oui.oui', '2019-05-02', 1556833743, 50, '0', '0'),
(42, 'Bob', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'lkflskfd@fsdf.fr', '2019-05-08', 1557325881, 50, '0', '0'),
(44, 'Pu$$ySlayErz', '95af8d98fe5d413bb0f5fdeb6cfe7a4ef0e62c1a', 'l@gmail.com', '2019-05-13', 1557745969, 50, '1', '0'),
(45, 'ono', '1fb10f267c25634a7530695349b995f13045be36', 'ono@ono.fr', '2019-05-14', 1557867142, 8200, '1', '0');

-- --------------------------------------------------------

--
-- Structure de la table `objets`
--

CREATE TABLE `objets` (
  `Num_TypeObjet` int(11) NOT NULL DEFAULT '2',
  `Num_Objet` int(11) NOT NULL,
  `Nom_Objet` varchar(25) NOT NULL,
  `Img_Objet` text NOT NULL,
  `Prix_Objet` int(11) DEFAULT NULL,
  `Description_Objet` text,
  `Utilisable_En_Combat` enum('oui','non') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `objets`
--

INSERT INTO `objets` (`Num_TypeObjet`, `Num_Objet`, `Nom_Objet`, `Img_Objet`, `Prix_Objet`, `Description_Objet`, `Utilisable_En_Combat`) VALUES
(2, 1, 'Potion', '<img src=\'./Images/Objets/PVPP/potion.png\'>', 300, 'Un spray qui soigne les blessures. Restaure 20 PV &agrave; un Pok&eacute;mon.', 'oui'),
(2, 2, 'Super Potion', '<img src=\'./Images/Objets/PVPP/super_potion.png\'>', 700, 'Un spray qui soigne les blessures. Restaure 50 PV &agrave; un Pok&eacute;mon.', 'oui'),
(2, 3, 'Hyper Potion', '<img src=\'./Images/Objets/PVPP/hyper_potion.png\'>', 1200, 'Un spray qui soigne les blessures. Restaure 200 PV &agrave; un Pok&eacute;mon.', 'oui'),
(2, 4, 'Potion Max', '<img src=\'./Images/Objets/PVPP/potion_max.png\'>', 2500, 'Un spray qui soigne les blessures. Restaure tous les PV d\'un Pok&eacute;mon.', 'oui'),
(2, 5, 'Gu&eacute;rison', '<img src=\'./Images/Objets/PVPP/guerison.png\'>', 3000, 'Un m&eacute;dicament qui restaure tous les PV d\'un Pok&eacute;mon et soigne tous ses probl&egrave;mes de statut.', 'oui'),
(2, 6, 'Antidote', '<img src=\'./Images/Objets/PVPP/antidote.png\'>', 100, 'M&eacute;dicament sous forme de spray qui soigne un Pok&eacute;mon empoisonn&eacute;.', 'oui'),
(2, 7, 'Anti-Para', '<img src=\'./Images/Objets/PVPP/anti_para.png\'>', 200, 'M&eacute;dicament sous forme de spray qui soigne un Pok&eacute;mon de la paralysie.', 'oui'),
(2, 8, 'Anti-Br&ucirc;le', '<img src=\'./Images/Objets/PVPP/anti_brule.png\'>', 250, 'M&eacute;dicament sous forme de spray qui soigne les br&ucirc;lures d\'un Pok&eacute;mon.', 'oui'),
(2, 9, 'Antigel', '<img src=\'./Images/Objets/PVPP/antigel.png\'>', 250, 'M&eacute;dicament sous forme de spray qui d&eacute;g&egrave;le un Pok&eacute;mon.', 'oui'),
(2, 10, 'R&eacute;veil', '<img src=\'./Images/Objets/PVPP/reveil.png\'>', 200, 'M&eacute;dicament sous forme de spray qui r&eacute;veille un Pok&eacute;mon endormi.', 'oui'),
(2, 11, 'Total Soin', '<img src=\'./Images/Objets/PVPP/total_soin.png\'>', 600, 'M&eacute;dicament sous forme de spray qui soigne tous les probl&egrave;mes de statut d\'un Pok&eacute;mon.', 'oui'),
(2, 12, 'Eau Fra&icirc;che', '<img src=\'./Images/Objets/PVPP/eau_fraiche.png\'>', 200, 'Boisson qui restaure 50 PV &agrave; un Pok&eacute;mon.', 'oui'),
(2, 13, 'Soda Cool', '<img src=\'./Images/Objets/PVPP/soda_cool.png\'>', 300, 'Boisson qui restaure 60 PV &agrave; un Pok&eacute;mon.', 'oui'),
(2, 14, 'Limonade', '<img src=\'./Images/Objets/PVPP/limonade.png\'>', 350, 'Boisson qui restaure 80 PV &agrave; un Pok&eacute;mon.', 'oui'),
(2, 15, 'Rappel', '<img src=\'./Images/Objets/PVPP/rappel.png\'>', 1500, 'Un m&eacute;dicament qui ranime un Pok&eacute;mon KO et lui restaure la moiti&eacute; de ses PV.', 'oui'),
(2, 16, 'Rappel Max', '<img src=\'./Images/Objets/PVPP/rappel_max.png\'>', NULL, 'Un m&eacute;dicament qui ranime un Pok&eacute;mon KO et lui restaure tous ses PV.', 'oui'),
(2, 17, '&Eacute;lixir', '<img src=\'./Images/Objets/PVPP/elixir.png\'>', NULL, 'Restaure 10 PP de chaque attaque d\'un Pok&eacute;mon.', 'oui'),
(2, 18, 'Max &Eacute;lixir', '<img src=\'./Images/Objets/PVPP/max_elixir.png\'>', NULL, 'Restaure tous les PP de chaque attaque d\'un Pok&eacute;mon.', 'oui'),
(2, 19, 'Huile', '<img src=\'./Images/Objets/PVPP/huile.png\'>', NULL, 'Restaure 10 PP d\'une attaque d\'un Pok&eacute;mon', 'oui'),
(2, 20, 'Huile Max', '<img src=\'./Images/Objets/PVPP/huile_max.png\'>', NULL, 'Restaure tous les PP d\'une attaque d\'un Pok&eacute;mon.', 'oui'),
(2, 21, 'PV Plus', '<img src=\'./Images/Objets/PVPP/pv_plus.png\'>', 9800, 'Une Boisson tr&egrave;s nutritive qui augmente le PV de base d\'un Pok&eacute;mon.', 'non'),
(2, 22, 'Prot&eacute;ine', '<img src=\'./Images/Objets/PVPP/proteine.png\'>', 9800, 'Une Boisson tr&egrave;s nutritive qui augmente l\'Attaque de base d\'un Pok&eacute;mon.', 'non'),
(2, 23, 'Fer', '<img src=\'./Images/Objets/PVPP/fer.png\'>', 9800, 'Une Boisson tr&egrave;s nutritive qui augmente la D&eacute;fense de base d\'un Pok&eacute;mon.', 'non'),
(2, 24, 'Calcium', '<img src=\'./Images/Objets/PVPP/calcium.png\'>', 9800, 'Une Boisson tr&egrave;s nutritive qui augmente le Sp&eacute;cial de base d\'un Pok&eacute;mon.', 'non'),
(2, 25, 'Carbone', '<img src=\'./Images/Objets/PVPP/carbone.png\'>', 9800, 'Une Boisson tr&egrave;s nutritive qui augmente la Vitesse de base d\'un Pok&eacute;mon.', 'non'),
(2, 26, 'PP Plus', '<img src=\'./Images/Objets/PVPP/pp_plus.png\'>', NULL, 'Augmente les PP d\'une capacit&eacute;. Peut &ecirc;tre utilis&eacute; 3 fois sur la m&ecirc;me capacit&eacute;.', 'non'),
(2, 27, 'Super Bonbon', '<img src=\'./Images/Objets/PVPP/super_bonbon.png\'>', NULL, 'Un bonbon plein d\'&eacute;nergie.\r\nIl permet &agrave; un Pok&eacute;mon de gagner un niveau d\'&eacute;p&eacute;rience.', 'non'),
(1, 28, 'Pok&eacute; Ball', '<img src=\'./Images/Objets/Balls/poke_ball.png\'>', 200, 'Un objet semblable &agrave; une capsule, qui capture le Pok&eacute;mon sauvages. Il suffit pour cela de la jeter comme une balle.', 'oui'),
(1, 29, 'Super Ball', '<img src=\'./Images/Objets/Balls/super_ball.png\'>', 600, 'Une Ball tr&egrave;s performante dont le taux de r&eacute;ussite est sup&eacute;rieur &agrave; celui de la Pok&eacute; Ball.', 'oui'),
(1, 30, 'Hyper Ball', '<img src=\'./Images/Objets/Balls/hyper_ball.png\'>', 1200, 'Une Ball ultraperformante dont le taux de r&eacute;ussite est sup&eacute;rieur &agrave; celui de la Super Ball.', 'oui'),
(3, 31, 'Pierre Eau', '<img src=\'./Images/Objets/Evolution/pierre_eau.png\'>', 2100, 'Une pierre &eacute;trange qui fait &eacute;voluer certaines esp&egrave;ces de Pok&eacute;mon. Elle est de couleur bleue.', 'non'),
(3, 32, 'Pierre Feu', '<img src=\'./Images/Objets/Evolution/pierre_feu.png\'>', 2100, 'Une pierre &eacute;trange qui fait &eacute;voluer certaines esp&egrave;ces de Pok&eacute;mon. Elle est jaune et orange de couleur bleue.', 'non'),
(3, 33, 'Pierre Foudre', '<img src=\'./Images/Objets/Evolution/pierre_foudre.png\'>', 2100, 'Une pierre &eacute;trange qui fait &eacute;voluer certaines esp&egraveces de Pok&eacute;mon. Un &eacute;clair est dessin&eacute; dessus.', 'non'),
(3, 34, 'Pierre Plante', '<img src=\'./Images/Objets/Evolution/pierre_plante.png\'>', 2100, 'Une pierre &eacute;trange qui fait &eacute;voluer certaines esp&egrave;ces de Pok&eacute;mon. Une feuille est dessin&eacute;e dessus.', 'non'),
(3, 35, 'Pierre Lune', '<img src=\'./Images/Objets/Evolution/pierre_lune.png\'>', NULL, 'Une pierre &eacute;trange qui fait &eacute;voluer certaines esp&egrave;ces de Pok&eacute;mon. Elle est sombre comme la nuit.', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `objets_joueur`
--

CREATE TABLE `objets_joueur` (
  `Id_objetJoueur` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `id_Objet` int(11) NOT NULL,
  `Qtte` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `objets_joueur`
--

INSERT INTO `objets_joueur` (`Id_objetJoueur`, `id_membre`, `id_Objet`, `Qtte`) VALUES
(1, 24, 1, 113),
(2, 24, 2, 52),
(3, 24, 3, 40),
(4, 24, 4, 4),
(5, 24, 5, 4),
(6, 24, 6, 2),
(7, 24, 7, 2),
(8, 24, 8, 2),
(9, 24, 9, 2),
(10, 24, 10, 2),
(11, 24, 11, 2),
(12, 24, 12, 2),
(13, 24, 13, 2),
(14, 24, 14, 2),
(15, 24, 15, 2),
(16, 24, 16, 1),
(17, 24, 17, 1),
(18, 24, 18, 1),
(19, 24, 19, 1),
(20, 24, 20, 1),
(21, 24, 21, 1),
(22, 24, 22, 2),
(23, 24, 23, 2),
(24, 24, 24, 6),
(25, 24, 25, 2),
(26, 24, 26, 1),
(27, 24, 27, 1),
(28, 24, 28, 1379),
(29, 24, 29, 306),
(30, 24, 30, 146),
(31, 24, 31, 1),
(32, 24, 32, 2),
(33, 24, 33, 5),
(34, 24, 34, 1),
(35, 24, 35, 14),
(37, 23, 28, 22),
(38, 23, 1, 30),
(39, 44, 1, 0),
(40, 44, 2, 0),
(41, 44, 3, 0),
(42, 44, 4, 0),
(43, 44, 5, 0),
(44, 44, 6, 0),
(45, 44, 7, 0),
(46, 44, 8, 0),
(47, 44, 9, 0),
(48, 44, 10, 0),
(49, 44, 11, 0),
(50, 44, 12, 0),
(51, 44, 13, 0),
(52, 44, 14, 0),
(53, 44, 15, 0),
(54, 44, 16, 0),
(55, 44, 17, 0),
(56, 44, 18, 0),
(57, 44, 19, 0),
(58, 44, 20, 0),
(59, 44, 21, 0),
(60, 44, 22, 0),
(61, 44, 23, 0),
(62, 44, 24, 0),
(63, 44, 25, 0),
(64, 44, 26, 0),
(65, 44, 27, 0),
(66, 44, 28, 5),
(67, 44, 29, 0),
(68, 44, 30, 0),
(69, 44, 31, 0),
(70, 44, 32, 0),
(71, 44, 33, 0),
(72, 44, 34, 0),
(73, 44, 35, 0),
(74, 23, 29, 1),
(75, 23, 30, 1),
(76, 37, 1, 0),
(77, 37, 2, 0),
(78, 37, 3, 0),
(79, 37, 4, 0),
(80, 37, 5, 0),
(81, 37, 6, 0),
(82, 37, 7, 0),
(83, 37, 8, 0),
(84, 37, 9, 0),
(85, 37, 10, 0),
(86, 37, 11, 0),
(87, 37, 12, 0),
(88, 37, 13, 0),
(89, 37, 14, 0),
(90, 37, 15, 0),
(91, 37, 16, 0),
(92, 37, 17, 0),
(93, 37, 18, 0),
(94, 37, 19, 0),
(95, 37, 20, 0),
(96, 37, 21, 0),
(97, 37, 22, 0),
(98, 37, 23, 0),
(99, 37, 24, 0),
(100, 37, 25, 0),
(101, 37, 26, 0),
(102, 37, 27, 0),
(103, 37, 28, 5),
(104, 37, 29, 0),
(105, 37, 30, 0),
(106, 37, 31, 0),
(107, 37, 32, 0),
(108, 37, 33, 0),
(109, 37, 34, 0),
(110, 37, 35, 0),
(111, 45, 1, 2),
(112, 45, 2, 0),
(113, 45, 3, 0),
(114, 45, 4, 0),
(115, 45, 5, 0),
(116, 45, 6, 0),
(117, 45, 7, 0),
(118, 45, 8, 0),
(119, 45, 9, 0),
(120, 45, 10, 0),
(121, 45, 11, 0),
(122, 45, 12, 0),
(123, 45, 13, 0),
(124, 45, 14, 0),
(125, 45, 15, 0),
(126, 45, 16, 0),
(127, 45, 17, 0),
(128, 45, 18, 0),
(129, 45, 19, 0),
(130, 45, 20, 0),
(131, 45, 21, 0),
(132, 45, 22, 0),
(133, 45, 23, 0),
(134, 45, 24, 0),
(135, 45, 25, 0),
(136, 45, 26, 0),
(137, 45, 27, 0),
(138, 45, 28, 0),
(139, 45, 29, 0),
(140, 45, 30, 0),
(141, 45, 31, 0),
(142, 45, 32, 0),
(143, 45, 33, 0),
(144, 45, 34, 0),
(145, 45, 35, 0);

-- --------------------------------------------------------

--
-- Structure de la table `objet_type`
--

CREATE TABLE `objet_type` (
  `Num_TypeObjet` int(11) NOT NULL,
  `Type_Objet` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `objet_type`
--

INSERT INTO `objet_type` (`Num_TypeObjet`, `Type_Objet`) VALUES
(1, 'Balls'),
(2, 'PV/PP'),
(3, 'Objets d &eacute;volution');

-- --------------------------------------------------------

--
-- Structure de la table `pc`
--

CREATE TABLE `pc` (
  `Id_PC` int(255) NOT NULL,
  `id_membre` int(255) NOT NULL,
  `Numero` int(255) NOT NULL,
  `Num_Attaque1` int(255) DEFAULT NULL,
  `Num_Attaque2` int(255) DEFAULT NULL,
  `Num_Attaque3` int(255) DEFAULT NULL,
  `Num_Attaque4` int(255) DEFAULT NULL,
  `Niveau` int(100) NOT NULL,
  `PV_restant` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pc`
--

INSERT INTO `pc` (`Id_PC`, `id_membre`, `Numero`, `Num_Attaque1`, `Num_Attaque2`, `Num_Attaque3`, `Num_Attaque4`, `Niveau`, `PV_restant`) VALUES
(157, 24, 67, 1, 2, 3, 4, 6, 80),
(263, 24, 118, 1, 2, 3, 4, 6, 45),
(331, 24, 99, 1, 2, 3, 4, 6, 55),
(333, 24, 50, 1, 2, 3, 4, 10, 10),
(335, 24, 1, 1, 2, 3, 4, 10, 45),
(336, 24, 42, 1, 2, 3, 4, 7, 75),
(337, 24, 119, 1, 2, 3, 4, 8, 80),
(338, 24, 52, 1, 2, 3, 4, 10, 40),
(339, 24, 53, 1, 2, 3, 4, 8, 65),
(340, 24, 50, 1, 2, 3, 4, 7, 10),
(342, 24, 90, 1, 2, 3, 4, 10, 30),
(343, 24, 22, 1, 2, 3, 4, 8, 65),
(346, 24, 134, 1, 2, 3, 4, 6, 130),
(347, 24, 16, 1, 2, 3, 4, 9, 40),
(348, 24, 142, 1, 2, 3, 4, 6, 80),
(349, 24, 48, 1, 2, 3, 4, 6, 60),
(350, 24, 67, 1, 2, 3, 4, 9, 80),
(351, 24, 97, 1, 2, 3, 4, 9, 85),
(352, 24, 149, 1, 2, 3, 4, 6, 91),
(353, 24, 135, 1, 2, 3, 4, 7, 65),
(354, 24, 148, 1, 2, 3, 4, 9, 61),
(355, 24, 103, 1, 2, 3, 4, 6, 95),
(360, 24, 7, 85, 62, NULL, NULL, 5, 44),
(361, 24, 81, 1, 2, 3, 4, 6, 25),
(362, 24, 21, 1, 2, 3, 4, 9, 40),
(363, 24, 49, 1, 2, 3, 4, 7, 70),
(364, 24, 21, 1, 2, 3, 4, 10, 40),
(365, 24, 32, 1, 2, 3, 4, 6, 46),
(366, 24, 60, 1, 2, 3, 4, 9, 40),
(367, 24, 38, 1, 2, 3, 4, 9, 73),
(368, 24, 77, 1, 2, 3, 4, 5, 50),
(372, 24, 66, 1, 2, 3, 4, 7, 70),
(375, 24, 133, 1, 2, 3, 4, 5, 55),
(376, 24, 135, 1, 2, 3, 4, 10, 65),
(377, 24, 147, 1, 2, 3, 4, 8, 41),
(378, 24, 103, 1, 2, 3, 4, 8, 95),
(380, 24, 134, 1, 2, 3, 4, 5, 130),
(381, 24, 58, 1, 2, 3, 4, 9, 55),
(382, 24, 81, 1, 2, 3, 4, 9, 25),
(383, 24, 111, 1, 2, 3, 4, 9, 80),
(384, 24, 46, 1, 2, 3, 4, 7, 35),
(385, 24, 39, 1, 2, 3, 4, 9, 115),
(386, 24, 109, 1, 2, 3, 4, 10, 40),
(387, 24, 102, 1, 2, 3, 4, 5, 60),
(388, 24, 84, 1, 2, 3, 4, 9, 35),
(389, 24, 92, 1, 2, 3, 4, 9, 30),
(390, 24, 134, 1, 2, 3, 4, 7, 130),
(391, 24, 97, 1, 2, 3, 4, 10, 85),
(393, 24, 46, 1, 2, 3, 4, 8, 35),
(406, 24, 7, 1, 2, 3, 4, 5, 44),
(408, 24, 117, 1, 2, 3, 4, 10, 55),
(409, 24, 89, 1, 2, 3, 4, 6, 105),
(410, 24, 20, 1, 2, 3, 4, 6, 55),
(412, 24, 55, 1, 2, 3, 4, 9, 80),
(413, 24, 100, 1, 2, 3, 4, 10, 40),
(414, 24, 56, 1, 2, 3, 4, 6, 40),
(416, 24, 58, 1, 2, 3, 4, 10, 55),
(417, 24, 109, 1, 2, 3, 4, 5, 40),
(418, 24, 23, 1, 2, 3, 4, 7, 35),
(422, 24, 124, 1, 2, 3, 4, 9, 65),
(423, 24, 108, 1, 2, 3, 4, 5, 90),
(424, 24, 94, 1, 2, 3, 4, 7, 60),
(425, 24, 74, 1, 2, 3, 4, 9, 40),
(426, 24, 70, 1, 2, 3, 4, 7, 65),
(428, 24, 130, 1, 2, 3, 4, 8, 95),
(435, 24, 83, 1, 2, 3, 4, 8, 52),
(436, 24, 9, 1, 2, 3, 4, 6, 79),
(438, 24, 141, 1, 2, 3, 4, 7, 60),
(442, 24, 92, 1, 2, 3, 4, 6, 30),
(443, 24, 112, 1, 2, 3, 4, 10, 105),
(444, 24, 7, 1, 2, 3, 4, 8, 44),
(445, 24, 149, 1, 2, 3, 4, 6, 91),
(446, 24, 9, 1, 2, 3, 4, 5, 79),
(447, 23, 127, 1, 2, 3, 4, 6, 65),
(453, 24, 37, 1, 2, 3, 4, 7, 38),
(455, 24, 14, 1, 2, 3, 4, 9, 45),
(458, 24, 144, 1, 2, 3, 4, 8, 90),
(459, 24, 125, 1, 2, 3, 4, 7, 65),
(460, 24, 71, 1, 2, 3, 4, 6, 80),
(461, 24, 71, 1, 2, 3, 4, 9, 80),
(462, 24, 125, 1, 2, 3, 4, 7, 65),
(463, 24, 61, 1, 2, 3, 4, 9, 65),
(464, 24, 22, 1, 2, 3, 4, 9, 65),
(465, 24, 146, 1, 2, 3, 4, 6, 90),
(466, 24, 116, 1, 2, 3, 4, 10, 30),
(467, 24, 92, 1, 2, 3, 4, 6, 30),
(468, 24, 116, 1, 2, 3, 4, 5, 30),
(469, 24, 92, 1, 2, 3, 4, 5, 30),
(470, 24, 78, 1, 2, 3, 4, 10, 65),
(471, 24, 7, 1, 2, 3, 4, 5, 44),
(473, 24, 118, 1, 2, 3, 4, 7, 45),
(475, 24, 128, 1, 2, 3, 4, 9, 75),
(477, 24, 22, 1, 2, 3, 4, 9, 65),
(478, 24, 56, 1, 2, 3, 4, 8, 40),
(479, 24, 151, 1, 2, 3, 4, 9, 100),
(480, 24, 107, 1, 2, 3, 4, 5, 50),
(485, 24, 89, 1, 2, 3, 4, 6, 105),
(486, 24, 20, 1, 2, 3, 4, 6, 55),
(487, 24, 53, 1, 2, 3, 4, 6, 65),
(488, 24, 50, 1, 2, 3, 4, 10, 10),
(489, 24, 108, 1, 2, 3, 4, 8, 90),
(490, 24, 114, 1, 2, 3, 4, 8, 65),
(492, 24, 71, 1, 2, 3, 4, 10, 80),
(493, 24, 146, 1, 2, 3, 4, 7, 90),
(494, 24, 35, 1, 2, 3, 4, 6, 70),
(495, 24, 15, 1, 2, 3, 4, 10, 65),
(496, 24, 38, 1, 2, 3, 4, 8, 73),
(497, 24, 137, 1, 2, 3, 4, 10, 65),
(498, 24, 95, 1, 2, 3, 4, 8, 35),
(499, 24, 146, 1, 2, 3, 4, 10, 90),
(500, 24, 131, 1, 2, 3, 4, 5, 130),
(501, 24, 23, 1, 2, 3, 4, 9, 35),
(502, 24, 5, 1, 2, 3, 4, 8, 58),
(503, 24, 84, 1, 2, 3, 4, 7, 35),
(504, 24, 136, 1, 2, 3, 4, 9, 65),
(505, 24, 84, 1, 2, 3, 4, 9, 35),
(506, 24, 97, 1, 2, 3, 4, 7, 85),
(507, 24, 103, 1, 2, 3, 4, 5, 95),
(511, 24, 151, 1, 2, 3, 4, 9, 100),
(512, 24, 145, 1, 2, 3, 4, 5, 90),
(513, 24, 150, 1, 2, 3, 4, 6, 106),
(517, 23, 147, 1, 2, 3, 4, 10, 41),
(518, 23, 41, 1, 2, 3, 4, 8, 40),
(522, 23, 22, 1, 2, 3, 4, 6, 65),
(523, 23, 111, 1, 2, 3, 4, 6, 80),
(524, 24, 127, 1, 2, 3, 4, 9, 65),
(525, 24, 97, 1, 2, 3, 4, 9, 85),
(532, 24, 18, 1, 2, 3, 4, 5, 83),
(535, 23, 11, 1, 2, 3, 4, 7, 50),
(536, 23, 43, 1, 2, 3, 4, 7, 45),
(537, 23, 143, 1, 2, 3, 4, 8, 160),
(538, 23, 58, 1, 2, 3, 4, 8, 55),
(539, 23, 110, 1, 2, 3, 4, 9, 65),
(540, 24, 44, 1, 2, 3, 4, 8, 60),
(541, 24, 1, 1, 2, 3, 4, 8, 45),
(542, 24, 119, 1, 2, 3, 4, 6, 80),
(543, 24, 82, 1, 2, 3, 4, 9, 50),
(547, 24, 115, 1, 2, 3, 4, 8, 105),
(548, 24, 17, 1, 2, 3, 4, 7, 63),
(550, 23, 139, 1, 2, 3, 4, 7, 70),
(551, 23, 94, 1, 2, 3, 4, 6, 60),
(552, 23, 118, 1, 2, 3, 4, 10, 45),
(553, 24, 79, 1, 2, 3, 4, 5, 90),
(554, 24, 117, 1, 2, 3, 4, 5, 55),
(555, 24, 121, 1, 2, 3, 4, 8, 60),
(556, 24, 82, 1, 2, 3, 4, 8, 50),
(557, 24, 132, 1, 2, 3, 4, 10, 48),
(558, 24, 102, 1, 2, 3, 4, 9, 60),
(559, 24, 134, 1, 2, 3, 4, 9, 130),
(560, 24, 32, 1, 2, 3, 4, 10, 46),
(568, 24, 41, 1, 2, 3, 4, 9, 40),
(569, 24, 99, 1, 2, 3, 4, 9, 55),
(570, 24, 66, 1, 2, 3, 4, 8, 70),
(571, 24, 89, 1, 2, 3, 4, 5, 105),
(572, 24, 135, 1, 2, 3, 4, 9, 65),
(573, 24, 133, 1, 2, 3, 4, 7, 55),
(574, 24, 113, 1, 2, 3, 4, 6, 250),
(575, 24, 121, 1, 2, 3, 4, 10, 60),
(577, 24, 75, 1, 2, 3, 4, 9, 55),
(578, 24, 44, 1, 2, 3, 4, 10, 60),
(579, 24, 67, 1, 2, 3, 4, 6, 80),
(580, 24, 24, 1, 2, 3, 4, 8, 60),
(581, 24, 64, 1, 2, 3, 4, 5, 40),
(582, 24, 16, 1, 2, 3, 4, 6, 40),
(583, 24, 150, 1, 2, 3, 4, 6, 106),
(585, 24, 98, 1, 2, 3, 4, 8, 30),
(586, 24, 15, 1, 2, 3, 4, 5, 65),
(588, 24, 130, 1, 2, 3, 4, 5, 95),
(589, 24, 36, 1, 2, 3, 4, 10, 95),
(590, 24, 51, 1, 2, 3, 4, 9, 35),
(591, 24, 82, 1, 2, 3, 4, 10, 50),
(592, 23, 125, 1, 2, 3, 4, 9, 65),
(593, 23, 96, 1, 2, 3, 4, 6, 60),
(594, 24, 36, 1, 2, 3, 4, 8, 95),
(595, 24, 5, 1, 2, 3, 4, 7, 58),
(596, 24, 96, 1, 2, 3, 4, 9, 60),
(597, 24, 142, 1, 2, 3, 4, 9, 80),
(598, 24, 143, 1, 2, 3, 4, 10, 160),
(599, 24, 40, 1, 2, 3, 4, 7, 140),
(600, 24, 128, 1, 2, 3, 4, 5, 75),
(602, 24, 8, 1, 2, 3, 4, 9, 59),
(603, 24, 114, 1, 2, 3, 4, 8, 65),
(604, 24, 11, 1, 2, 3, 4, 8, 50),
(605, 24, 23, 1, 2, 3, 4, 7, 35),
(606, 24, 117, 1, 2, 3, 4, 10, 55),
(607, 24, 126, 1, 2, 3, 4, 8, 65),
(608, 24, 125, 1, 2, 3, 4, 9, 65),
(609, 24, 112, 1, 2, 3, 4, 6, 105),
(610, 24, 4, 1, 2, 3, 4, 9, 39),
(612, 24, 40, 1, 2, 3, 4, 8, 140),
(613, 24, 130, 1, 2, 3, 4, 8, 95),
(614, 24, 28, 1, 2, 3, 4, 6, 75),
(615, 24, 69, 1, 2, 3, 4, 5, 50),
(616, 24, 73, 1, 2, 3, 4, 5, 80),
(617, 24, 9, 1, 2, 3, 4, 5, 79),
(619, 24, 10, 1, 2, 3, 4, 5, 45),
(620, 24, 26, 1, 2, 3, 4, 10, 60),
(622, 24, 145, 1, 2, 3, 4, 9, 90),
(623, 24, 98, 1, 2, 3, 4, 9, 30),
(624, 24, 56, 1, 2, 3, 4, 6, 40),
(626, 24, 1, 1, 2, 3, 4, 8, 45),
(627, 24, 101, 1, 2, 3, 4, 9, 60),
(628, 24, 132, 1, 2, 3, 4, 8, 48),
(629, 24, 64, 1, 2, 3, 4, 7, 40),
(630, 24, 28, 1, 2, 3, 4, 10, 75),
(631, 24, 18, 1, 2, 3, 4, 7, 83),
(632, 24, 60, 1, 2, 3, 4, 10, 40),
(634, 24, 71, 1, 2, 3, 4, 8, 80),
(635, 24, 102, 1, 2, 3, 4, 8, 0),
(636, 24, 16, 1, 2, 3, 4, 9, 0),
(637, 24, 91, 1, 2, 3, 4, 9, 0),
(638, 24, 88, 1, 2, 3, 4, 9, 0),
(639, 24, 97, 1, 2, 3, 4, 10, 0),
(642, 24, 47, 1, 2, 3, 4, 6, 0),
(643, 24, 25, 1, 2, 3, 4, 5, 0),
(644, 24, 35, 1, 2, 3, 4, 5, 0),
(645, 24, 43, 1, 2, 3, 4, 10, 45),
(646, 24, 76, 1, 2, 3, 4, 10, 80),
(647, 24, 26, 1, 2, 3, 4, 10, 60),
(648, 24, 124, 1, 2, 3, 4, 10, 65),
(649, 24, 112, 1, 2, 3, 4, 5, 105),
(651, 24, 56, 1, 2, 3, 4, 7, 40),
(652, 24, 60, 1, 2, 3, 4, 8, 40),
(655, 45, 56, 1, 2, 3, 4, 5, 40),
(656, 24, 47, 1, 2, 3, 4, 7, 60),
(657, 24, 139, 1, 2, 3, 4, 5, 70),
(658, 24, 58, 1, 2, 3, 4, 7, 55),
(659, 24, 21, 1, 2, 3, 4, 10, 40),
(660, 23, 48, 1, 2, 3, 4, 6, 60),
(661, 24, 99, 1, 2, 3, 4, 10, 55),
(662, 24, 103, 1, 2, 3, 4, 9, 95),
(663, 23, 145, 1, 2, 3, 4, 5, 90),
(665, 24, 92, 1, 2, 3, 4, 10, 30),
(666, 24, 62, 1, 2, 3, 4, 6, 90);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `Numero` int(255) NOT NULL,
  `Miniature` text NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Evolution` int(2) DEFAULT NULL,
  `Type1` int(10) DEFAULT NULL,
  `Type2` int(10) DEFAULT NULL,
  `PV` int(255) DEFAULT NULL,
  `Attaque` int(255) DEFAULT NULL,
  `Defense` int(255) DEFAULT NULL,
  `Vitesse` int(255) DEFAULT NULL,
  `Speciale` int(255) DEFAULT NULL,
  `Taux_Apparition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`Numero`, `Miniature`, `Nom`, `Evolution`, `Type1`, `Type2`, `PV`, `Attaque`, `Defense`, `Vitesse`, `Speciale`, `Taux_Apparition`) VALUES
(1, '<img src=\'./Images/Pokemon/Bulbizarre.png\'>', 'Bulbizarre', 1, 10, 11, 45, 49, 49, 45, 65, 0),
(2, '<img src=\'./Images/Pokemon/Herbizarre.png\'>', 'Herbizarre', 2, 10, 11, 60, 62, 63, 60, 80, 0),
(3, '<img src=\'./Images/Pokemon/Florizarre.png\'>', 'Florizarre', NULL, 10, 11, 80, 82, 83, 80, 100, 0),
(4, '<img src=\'./Images/Pokemon/Salameche.png\'>', 'Salam&egrave;che', 1, 6, NULL, 39, 52, 43, 65, 50, 0),
(5, '<img src=\'./Images/Pokemon/Reptincel.png\'>', 'Reptincel', 2, 6, NULL, 58, 64, 58, 80, 65, 0),
(6, '<img src=\'./Images/Pokemon/Dracaufeu.png\'>', 'Dracaufeu', NULL, 6, 16, 78, 84, 78, 100, 85, 0),
(7, '<img src=\'./Images/Pokemon/Carapuce.png\'>', 'Carapuce', 1, 3, NULL, 44, 48, 65, 43, 50, 0),
(8, '<img src=\'./Images/Pokemon/Carabaffe.png\'>', 'Carabaffe', 2, 3, NULL, 59, 63, 80, 58, 65, 0),
(9, '<img src=\'./Images/Pokemon/Tortank.png\'>', 'Tortank', NULL, 3, NULL, 79, 83, 100, 78, 85, 0),
(10, '<img src=\'./Images/Pokemon/Chenipan.png\'>', 'Chenipan', 1, 8, NULL, 45, 30, 35, 45, 20, 80),
(11, '<img src=\'./Images/Pokemon/Chrysacier.png\'>', 'Chrysacier', 2, 8, NULL, 50, 20, 55, 30, 25, 40),
(12, '<img src=\'./Images/Pokemon/Papilusion.png\'>', 'Papilusion', NULL, 8, 16, 60, 45, 50, 70, 80, 10),
(13, '<img src=\'./Images/Pokemon/Aspicot.png\'>', 'Aspicot', 1, 8, 11, 40, 35, 30, 50, 20, 80),
(14, '<img src=\'./Images/Pokemon/Coconfort.png\'>', 'Coconfort', 2, 8, 11, 45, 25, 50, 35, 25, 40),
(15, '<img src=\'./Images/Pokemon/Dardargnan.png\'>', 'Dardargnan', NULL, 8, 11, 65, 80, 40, 75, 45, 10),
(16, '<img src=\'./Images/Pokemon/Roucool.png\'>', 'Roucool', 1, 9, 16, 40, 45, 40, 56, 35, 80),
(17, '<img src=\'./Images/Pokemon/Roucoups.png\'>', 'Roucoups', 2, 9, 16, 63, 60, 55, 71, 50, 40),
(18, '<img src=\'./Images/Pokemon/Roucarnage.png\'>', 'Roucarnage', NULL, 9, 16, 83, 80, 75, 91, 70, 10),
(19, '<img src=\'./Images/Pokemon/Rattata.png\'>', 'Rattata', 1, 9, NULL, 30, 56, 35, 72, 25, 50),
(20, '<img src=\'./Images/Pokemon/Rattatac.png\'>', 'Rattatac', NULL, 9, NULL, 55, 81, 60, 97, 50, 20),
(21, '<img src=\'./Images/Pokemon/Piafabec.png\'>', 'Piafabec', 1, 9, 16, 40, 60, 30, 70, 31, 50),
(22, '<img src=\'./Images/Pokemon/Rapasdepic.png\'>', 'Rapasdepic', NULL, 9, 16, 65, 90, 65, 100, 61, 20),
(23, '<img src=\'./Images/Pokemon/Abo.png\'>', 'Abo', 1, 11, NULL, 35, 60, 44, 55, 40, 50),
(24, '<img src=\'./Images/Pokemon/Arbok.png\'>', 'Arbok', NULL, 11, NULL, 60, 85, 69, 80, 65, 20),
(25, '<img src=\'./Images/Pokemon/Pikachu.png\'>', 'Pikachu', 5, 4, NULL, 35, 55, 30, 90, 50, 5),
(26, '<img src=\'./Images/Pokemon/Raichu.png\'>', 'Raichu', NULL, 4, NULL, 60, 90, 55, 100, 90, 0),
(27, '<img src=\'./Images/Pokemon/Sabelette.png\'>', 'Sabelette', 1, 14, NULL, 50, 75, 85, 40, 30, 40),
(28, '<img src=\'./Images/Pokemon/Sablaireau.png\'>', 'Sablaireau', NULL, 14, NULL, 75, 100, 110, 65, 55, 10),
(29, '<img src=\'./Images/Pokemon/Nidoranf.png\'>', 'Nidoran&female;', 1, 11, NULL, 55, 47, 52, 41, 40, 70),
(30, '<img src=\'./Images/Pokemon/Nidorina.png\'>', 'Nidorina', 7, 11, NULL, 70, 62, 67, 56, 55, 30),
(31, '<img src=\'./Images/Pokemon/Nidoqueen.png\'>', 'Nidoqueen', NULL, 11, 14, 90, 82, 87, 76, 75, 0),
(32, '<img src=\'./Images/Pokemon/Nidoranm.png\'>', 'Nidoran&male;', 1, 11, NULL, 46, 57, 40, 50, 40, 70),
(33, '<img src=\'./Images/Pokemon/Nidorino.png\'>', 'Nidorino', 7, 11, NULL, 61, 72, 57, 65, 55, 30),
(34, '<img src=\'./Images/Pokemon/Nidoking.png\'>', 'Nidoking', NULL, 11, 14, 81, 92, 77, 85, 75, 0),
(35, '<img src=\'./Images/Pokemon/Melofee.png\'>', 'M&eacute;lof&eacute;e', 7, 9, NULL, 70, 45, 48, 35, 60, 35),
(36, '<img src=\'./Images/Pokemon/Melodelfe.png\'>', 'M&eacute;lodelfe', NULL, 9, NULL, 95, 70, 73, 60, 85, 0),
(37, '<img src=\'./Images/Pokemon/Goupix.png\'>', 'Goupix', 4, 6, NULL, 38, 41, 40, 65, 65, 35),
(38, '<img src=\'./Images/Pokemon/Feunard.png\'>', 'Feunard', NULL, 6, NULL, 73, 76, 75, 100, 100, 0),
(39, '<img src=\'./Images/Pokemon/Rondoudou.png\'>', 'Rondoudou', 7, 9, NULL, 115, 45, 20, 20, 25, 35),
(40, '<img src=\'./Images/Pokemon/Grodoudou.png\'>', 'Grodoudou', NULL, 9, NULL, 140, 70, 45, 45, 50, 0),
(41, '<img src=\'./Images/Pokemon/Nosferapti.png\'>', 'Nosferapti', 1, 11, 16, 40, 45, 35, 55, 40, 80),
(42, '<img src=\'./Images/Pokemon/Nosferalto.png\'>', 'Nosferalto', NULL, 11, 16, 75, 80, 70, 90, 75, 20),
(43, '<img src=\'./Images/Pokemon/Mystherbe.png\'>', 'Mystherbe', 1, 10, 11, 45, 50, 55, 30, 75, 70),
(44, '<img src=\'./Images/Pokemon/Ortide.png\'>', 'Ortide', 6, 10, 11, 60, 65, 70, 40, 85, 35),
(45, '<img src=\'./Images/Pokemon/Rafflesia.png\'>', 'Rafflesia', NULL, 10, 11, 75, 80, 85, 50, 100, 0),
(46, '<img src=\'./Images/Pokemon/Paras.png\'>', 'Paras', 1, 8, 10, 35, 70, 55, 25, 55, 70),
(47, '<img src=\'./Images/Pokemon/Parasect.png\'>', 'Parasect', NULL, 8, 10, 60, 95, 80, 30, 80, 20),
(48, '<img src=\'./Images/Pokemon/Mimitoss.png\'>', 'Mimitoss', 1, 8, 11, 60, 55, 50, 45, 40, 70),
(49, '<img src=\'./Images/Pokemon/Aeromite.png\'>', 'A&eacute;romite', NULL, 8, 11, 70, 65, 60, 90, 90, 20),
(50, '<img src=\'./Images/Pokemon/Taupiqueur.png\'>', 'Taupiqueur', 1, 14, NULL, 10, 55, 25, 95, 45, 65),
(51, '<img src=\'./Images/Pokemon/Triopikeur.png\'>', 'Triopikeur', NULL, 14, NULL, 35, 80, 50, 120, 70, 15),
(52, '<img src=\'./Images/Pokemon/Miaouss.png\'>', 'Miaouss', 1, 9, NULL, 40, 45, 35, 90, 40, 50),
(53, '<img src=\'./Images/Pokemon/Persian.png\'>', 'Persian', NULL, 9, NULL, 65, 70, 60, 115, 65, 15),
(54, '<img src=\'./Images/Pokemon/Psykokwak.png\'>', 'Psykokwak', 1, 3, NULL, 50, 52, 48, 55, 50, 65),
(55, '<img src=\'./Images/Pokemon/Akwakwak.png\'>', 'Akwakwak', NULL, 3, NULL, 80, 82, 78, 85, 80, 20),
(56, '<img src=\'./Images/Pokemon/Colossinge.png\'>', 'Colossinge', 1, 1, NULL, 40, 80, 35, 70, 35, 50),
(57, '<img src=\'./Images/Pokemon/Ferosinge.png\'>', 'F&eacute;rosinge', NULL, 1, NULL, 65, 105, 60, 95, 60, 10),
(58, '<img src=\'./Images/Pokemon/Caninos.png\'>', 'Caninos', 4, 6, NULL, 55, 70, 45, 60, 50, 65),
(59, '<img src=\'./Images/Pokemon/Arcanin.png\'>', 'Arcanin', NULL, 6, NULL, 90, 110, 80, 95, 80, 0),
(60, '<img src=\'./Images/Pokemon/Ptitard.png\'>', 'Ptitard', 1, 3, NULL, 40, 50, 40, 90, 40, 65),
(61, '<img src=\'./Images/Pokemon/tetarte.png\'>', 'T&ecirc;tarte', 3, 3, NULL, 65, 65, 65, 90, 50, 10),
(62, '<img src=\'./Images/Pokemon/Tartard.png\'>', 'Tartard', NULL, 3, 1, 90, 85, 95, 70, 70, 0),
(63, '<img src=\'./Images/Pokemon/Abra.png\'>', 'Abra', 1, 12, NULL, 25, 20, 15, 90, 105, 55),
(64, '<img src=\'./Images/Pokemon/Kadabra.png\'>', 'Kadabra', 8, 12, NULL, 40, 35, 30, 105, 120, 25),
(65, '<img src=\'./Images/Pokemon/Alakazam.png\'>', 'Alakazam', NULL, 12, NULL, 55, 50, 45, 120, 135, 0),
(66, '<img src=\'./Images/Pokemon/Machoc.png\'>', 'Machoc', 1, 1, NULL, 70, 80, 50, 35, 35, 60),
(67, '<img src=\'./Images/Pokemon/Machopeur.png\'>', 'Machopeur', 8, 1, NULL, 80, 100, 70, 45, 50, 25),
(68, '<img src=\'./Images/Pokemon/Mackogneur.png\'>', 'Mackogneur', NULL, 1, NULL, 90, 130, 80, 55, 65, 0),
(69, '<img src=\'./Images/Pokemon/Chetiflor.png\'>', 'Ch&eacute;tiflor', 1, 10, 11, 50, 75, 35, 40, 70, 70),
(70, '<img src=\'./Images/Pokemon/Boustiflor.png\'>', 'Boustiflor', 6, 10, 11, 65, 90, 50, 55, 85, 40),
(71, '<img src=\'./Images/Pokemon/Empiflor.png\'>', 'Empiflor', NULL, 10, 11, 80, 105, 65, 70, 100, 0),
(72, '<img src=\'./Images/Pokemon/Tentacool.png\'>', 'Tentacool', 1, 3, 11, 40, 40, 35, 70, 100, 60),
(73, '<img src=\'./Images/Pokemon/Tentacruel.png\'>', 'Tentacruel', NULL, 3, 11, 80, 70, 65, 100, 120, 10),
(74, '<img src=\'./Images/Pokemon/Racaillou.png\'>', 'Racaillou', 1, 13, 14, 40, 80, 100, 20, 30, 70),
(75, '<img src=\'./Images/Pokemon/Gravalanch.png\'>', 'Gravalanch', 8, 13, 14, 55, 95, 115, 35, 45, 25),
(76, '<img src=\'./Images/Pokemon/Grolem.png\'>', 'Grolem', NULL, 13, 14, 80, 110, 130, 45, 55, 0),
(77, '<img src=\'./Images/Pokemon/Ponyta.png\'>', 'Ponyta', 1, 6, NULL, 50, 85, 55, 90, 65, 65),
(78, '<img src=\'./Images/Pokemon/Galopa.png\'>', 'Galopa', NULL, 6, NULL, 65, 100, 70, 105, 80, 10),
(79, '<img src=\'./Images/Pokemon/Ramoloss.png\'>', 'Ramoloss', 1, 3, 12, 90, 65, 65, 15, 40, 75),
(80, '<img src=\'./Images/Pokemon/Flagadoss.png\'>', 'Flagadoss', NULL, 3, 12, 95, 75, 110, 30, 80, 25),
(81, '<img src=\'./Images/Pokemon/Magneti.png\'>', 'Magn&eacute;ti', 1, 4, NULL, 25, 35, 70, 45, 95, 75),
(82, '<img src=\'./Images/Pokemon/Magneton.png\'>', 'Magn&eacute;ton', NULL, 4, NULL, 50, 60, 95, 70, 120, 15),
(83, '<img src=\'./Images/Pokemon/Canarticho.png\'>', 'Canarticho', NULL, 9, 16, 52, 65, 55, 60, 58, 20),
(84, '<img src=\'./Images/Pokemon/Doduo.png\'>', 'Doduo', 1, 9, 16, 35, 85, 45, 75, 35, 65),
(85, '<img src=\'./Images/Pokemon/Dodrio.png\'>', 'Dodrio', NULL, 9, 16, 65, 110, 70, 100, 60, 10),
(86, '<img src=\'./Images/Pokemon/Otaria.png\'>', 'Otaria', 1, 3, NULL, 65, 45, 55, 45, 70, 65),
(87, '<img src=\'./Images/Pokemon/Lamantine.png\'>', 'Lamantine', NULL, 3, 7, 90, 70, 80, 70, 95, 12),
(88, '<img src=\'./Images/Pokemon/Tadmorv.png\'>', 'Tadmorv', 1, 11, NULL, 80, 80, 50, 25, 40, 65),
(89, '<img src=\'./Images/Pokemon/Grotadmorv.png\'>', 'Grotadmorv', NULL, 11, NULL, 105, 105, 75, 50, 65, 12),
(90, '<img src=\'./Images/Pokemon/Kokiyas.png\'>', 'Kokiyas', 1, 3, NULL, 30, 65, 100, 40, 45, 62),
(91, '<img src=\'./Images/Pokemon/Crustabri.png\'>', 'Crustabri', NULL, 3, 7, 50, 95, 180, 70, 85, 10),
(92, '<img src=\'./Images/Pokemon/Fantominus.png\'>', 'Fantominus', 1, 15, 11, 30, 35, 30, 80, 100, 75),
(93, '<img src=\'./Images/Pokemon/Spectrum.png\'>', 'Spectrum', 8, 15, 11, 45, 50, 45, 95, 115, 42),
(94, '<img src=\'./Images/Pokemon/Ectoplasma.png\'>', 'Ectoplasma', NULL, 15, 11, 60, 65, 60, 110, 130, 0),
(95, '<img src=\'./Images/Pokemon/Onix.png\'>', 'Onix', 1, 13, 14, 35, 45, 160, 70, 30, 42),
(96, '<img src=\'./Images/Pokemon/Soporifik.png\'>', 'Soporifik', 1, 12, NULL, 60, 48, 45, 42, 90, 40),
(97, '<img src=\'./Images/Pokemon/Hypnomade.png\'>', 'Hypnomade', NULL, 12, NULL, 85, 73, 70, 67, 115, 9),
(98, '<img src=\'./Images/Pokemon/Krabby.png\'>', 'Krabby', 1, 3, NULL, 30, 105, 90, 50, 25, 65),
(99, '<img src=\'./Images/Pokemon/Krabboss.png\'>', 'Krabboss', NULL, 3, NULL, 55, 130, 115, 75, 50, 25),
(100, '<img src=\'./Images/Pokemon/Voltorbe.png\'>', 'Voltorbe', 1, 4, NULL, 40, 30, 50, 100, 55, 55),
(101, '<img src=\'./Images/Pokemon/Electrode.png\'>', '&Eacute;lectrode', NULL, 4, NULL, 60, 50, 70, 140, 80, 12),
(102, '<img src=\'./Images/Pokemon/Noeunoeuf.png\'>', 'Noeunoeuf', 1, 10, 12, 60, 40, 80, 40, 60, 65),
(103, '<img src=\'./Images/Pokemon/Noadkoko.png\'>', 'Noadkoko', NULL, 10, 12, 95, 95, 85, 55, 125, 12),
(104, '<img src=\'./Images/Pokemon/Osselait.png\'>', 'Osselait', 1, 14, NULL, 50, 50, 95, 35, 40, 65),
(105, '<img src=\'./Images/Pokemon/Ossatueur.png\'>', 'Ossatueur', NULL, 14, NULL, 60, 80, 110, 45, 50, 12),
(106, '<img src=\'./Images/Pokemon/Kicklee.png\'>', 'Kicklee', NULL, 1, NULL, 50, 120, 53, 87, 35, 15),
(107, '<img src=\'./Images/Pokemon/Tygnon.png\'>', 'Tygnon', NULL, 1, NULL, 50, 105, 79, 76, 35, 15),
(108, '<img src=\'./Images/Pokemon/Excelangue.png\'>', 'Excelangue', 1, 9, NULL, 90, 55, 75, 30, 60, 25),
(109, '<img src=\'./Images/Pokemon/Smogo.png\'>', 'Smogo', 1, 11, NULL, 40, 65, 95, 35, 60, 55),
(110, '<img src=\'./Images/Pokemon/Smogogo.png\'>', 'Smogogo', NULL, 11, NULL, 65, 90, 120, 60, 85, 12),
(111, '<img src=\'./Images/Pokemon/Rhinocorne.png\'>', 'Rhinocorne', 1, 14, 13, 80, 85, 95, 25, 30, 45),
(112, '<img src=\'./Images/Pokemon/Rhinoferos.png\'>', 'Rhinoferos', NULL, 14, 13, 105, 130, 120, 40, 45, 6),
(113, '<img src=\'./Images/Pokemon/Leveinard.png\'>', 'Leveinard', NULL, 9, NULL, 250, 5, 5, 50, 105, 12),
(114, '<img src=\'./Images/Pokemon/Saquedeneu.png\'>', 'Saquedeneu', 1, 10, NULL, 65, 55, 115, 60, 100, 55),
(115, '<img src=\'./Images/Pokemon/Kangourex.png\'>', 'Kangourex', NULL, 9, NULL, 105, 95, 80, 90, 40, 25),
(116, '<img src=\'./Images/Pokemon/Hypotrempe.png\'>', 'Hypotrempe', 1, 3, NULL, 30, 40, 70, 60, 70, 65),
(117, '<img src=\'./Images/Pokemon/Hypocean.png\'>', 'Hypoc&eacute;an', 2, 3, NULL, 55, 65, 95, 85, 95, 25),
(118, '<img src=\'./Images/Pokemon/Poissirene.png\'>', 'Poissir&egrave;ne', 1, 3, NULL, 45, 67, 60, 63, 50, 69),
(119, '<img src=\'./Images/Pokemon/Poissoroy.png\'>', 'Poissoroy', NULL, 3, NULL, 80, 92, 65, 68, 80, 12),
(120, '<img src=\'./Images/Pokemon/Stari.png\'>', 'Stari', 1, 3, NULL, 30, 45, 55, 85, 70, 69),
(121, '<img src=\'./Images/Pokemon/Staross.png\'>', 'Staross', NULL, 3, 12, 60, 75, 85, 115, 100, 15),
(122, '<img src=\'./Images/Pokemon/MMime.png\'>', 'M. Mime', NULL, 12, NULL, 40, 45, 65, 90, 100, 13),
(123, '<img src=\'./Images/Pokemon/Insecateur.png\'>', 'Ins&eacute;cateur', NULL, 8, 16, 70, 110, 80, 105, 55, 9),
(124, '<img src=\'./Images/Pokemon/Lippoutou.png\'>', 'Lippoutou', NULL, 7, 12, 65, 50, 35, 95, 95, 0),
(125, '<img src=\'./Images/Pokemon/Elektek.png\'>', '&Eacute;lektek', 1, 4, NULL, 65, 83, 57, 105, 85, 12),
(126, '<img src=\'./Images/Pokemon/Magmar.png\'>', 'Magmar', 1, 6, NULL, 65, 95, 57, 93, 85, 12),
(127, '<img src=\'./Images/Pokemon/Scarabrute.png\'>', 'Scarabrute', NULL, 8, NULL, 65, 125, 100, 85, 55, 40),
(128, '<img src=\'./Images/Pokemon/Tauros.png\'>', 'Tauros', NULL, 9, NULL, 75, 100, 95, 110, 70, 40),
(129, '<img src=\'./Images/Pokemon/Magicarpe.png\'>', 'Magicarpe', 1, 3, NULL, 20, 10, 55, 80, 20, 80),
(130, '<img src=\'./Images/Pokemon/Leviator.png\'>', 'L&eacute;viator', NULL, 3, 16, 95, 125, 79, 81, 100, 9),
(131, '<img src=\'./Images/Pokemon/Lokhlass.png\'>', 'Lokhlass', NULL, 3, 7, 130, 85, 80, 60, 95, 6),
(132, '<img src=\'./Images/Pokemon/Metamorph.png\'>', 'Metamorph', NULL, 9, NULL, 48, 48, 48, 48, 48, 0),
(133, '<img src=\'./Images/Pokemon/Evoli.png\'>', '&Eacute;voli', 1, 9, NULL, 55, 55, 50, 55, 65, 75),
(134, '<img src=\'./Images/Pokemon/Aquali.png\'>', 'Aquali', 5, 3, NULL, 130, 65, 60, 65, 110, 0),
(135, '<img src=\'./Images/Pokemon/Voltali.png\'>', 'Voltali', 6, 4, NULL, 65, 65, 60, 130, 110, 0),
(136, '<img src=\'./Images/Pokemon/Pyroli.png\'>', 'Pyroli', 7, 6, NULL, 65, 130, 60, 65, 110, 0),
(137, '<img src=\'./Images/Pokemon/Porygon.png\'>', 'Porygon', 1, 9, NULL, 65, 60, 70, 40, 75, 6),
(138, '<img src=\'./Images/Pokemon/Amonita.png\'>', 'Amonita', 1, 13, 3, 35, 40, 100, 35, 90, 50),
(139, '<img src=\'./Images/Pokemon/Amonistar.png\'>', 'Amonistar', NULL, 13, 3, 70, 60, 125, 55, 115, 0),
(140, '<img src=\'./Images/Pokemon/Kabuto.png\'>', 'Kabuto', 1, 13, 3, 30, 80, 90, 55, 115, 50),
(141, '<img src=\'./Images/Pokemon/Kabutops.png\'>', 'Kabutops', NULL, 13, 3, 60, 115, 105, 80, 70, 0),
(142, '<img src=\'./Images/Pokemon/Ptera.png\'>', 'Pt&eacute;ra', NULL, 13, 16, 80, 105, 65, 130, 60, 12),
(143, '<img src=\'./Images/Pokemon/Ronflex.png\'>', 'Ronflex', NULL, 9, NULL, 160, 110, 65, 30, 65, 12),
(144, '<img src=\'./Images/Pokemon/Artikodin.png\'>', 'Artikodin', 4, 7, 16, 90, 85, 100, 85, 125, 1),
(145, '<img src=\'./Images/Pokemon/Electhor.png\'>', 'Electhor', 4, 4, 16, 90, 90, 85, 100, 125, 1),
(146, '<img src=\'./Images/Pokemon/Sulfura.png\'>', 'Sulfura', 4, 6, 16, 90, 100, 90, 90, 125, 1),
(147, '<img src=\'./Images/Pokemon/Minidraco.png\'>', 'Minidraco', 1, 2, NULL, 41, 64, 45, 50, 50, 50),
(148, '<img src=\'./Images/Pokemon/Draco.png\'>', 'Draco', 2, 2, NULL, 61, 84, 65, 70, 70, 25),
(149, '<img src=\'./Images/Pokemon/Dracolosse.png\'>', 'Dracolosse', NULL, 2, 16, 91, 134, 95, 80, 100, 0),
(150, '<img src=\'./Images/Pokemon/Mewtwo.png\'>', 'Mewtwo', 4, 12, NULL, 106, 110, 90, 130, 154, 1),
(151, '<img src=\'./Images/Pokemon/Mew.png\'>', 'Mew', 4, 12, NULL, 100, 100, 100, 100, 100, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pokemonsauvage`
--

CREATE TABLE `pokemonsauvage` (
  `id_sauvage` int(255) NOT NULL,
  `Id_membre` int(255) NOT NULL,
  `Id_Pokemon` int(255) NOT NULL,
  `Num_Attaque1` int(255) NOT NULL,
  `Num_Attaque2` int(255) NOT NULL,
  `Num_Attaque3` int(255) NOT NULL,
  `Num_Attaque4` int(255) NOT NULL,
  `Niveau` int(255) NOT NULL,
  `PV_restant` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `Num_Type` int(20) NOT NULL,
  `Nom_Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`Num_Type`, `Nom_Type`) VALUES
(1, '<img src=\'./Images/Type/Combat.png\'>'),
(2, '<img src=\'./Images/Type/Dragon.png\'>'),
(3, '<img src=\'./Images/Type/Eau.png\'>'),
(4, '<img src=\'./Images/Type/Electrick.png\'>'),
(6, '<img src=\'./Images/Type/Feu.png\'>'),
(7, '<img src=\'./Images/Type/Glace.png\'>'),
(8, '<img src=\'./Images/Type/Insecte.png\'>'),
(9, '<img src=\'./Images/Type/Normal.png\'>'),
(10, '<img src=\'./Images/Type/Plante.png\'>'),
(11, '<img src=\'./Images/Type/Poison.png\'>'),
(12, '<img src=\'./Images/Type/Psy.png\'>'),
(13, '<img src=\'./Images/Type/Roche.png\'>'),
(14, '<img src=\'./Images/Type/Sol.png\'>'),
(15, '<img src=\'./Images/Type/Spectre.png\'>'),
(16, '<img src=\'./Images/Type/Vol.png\'>');

-- --------------------------------------------------------

--
-- Structure de la table `typeevolution`
--

CREATE TABLE `typeevolution` (
  `Num_TEvo` int(11) NOT NULL,
  `Nom_TEvo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typeevolution`
--

INSERT INTO `typeevolution` (`Num_TEvo`, `Nom_TEvo`) VALUES
(1, 'Par Niveau 1.'),
(2, 'Par Niveau 2.'),
(3, 'Objet Pierre Eau'),
(4, 'Objet Pierre Feu'),
(5, 'Objet Pierre Foudre'),
(6, 'Objet Pierre Plante'),
(7, 'Objet Pierre Lune'),
(8, '&Eacute;change');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attaque`
--
ALTER TABLE `attaque`
  ADD PRIMARY KEY (`Num_Attaque`),
  ADD KEY `type_attaque` (`Type_Attaque`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`Id_equipe`),
  ADD KEY `attaque1` (`Num_Attaque1`),
  ADD KEY `attaque2` (`Num_Attaque2`),
  ADD KEY `attaque3` (`Num_Attaque3`),
  ADD KEY `attaque4` (`Num_Attaque4`),
  ADD KEY `idmem` (`id_membre`),
  ADD KEY `num` (`Numero`),
  ADD KEY `objettenu` (`Objet_Pokemon`);

--
-- Index pour la table `faiblesse`
--
ALTER TABLE `faiblesse`
  ADD PRIMARY KEY (`Num_Faiblesse`),
  ADD KEY `TypeFA` (`Type_Attaquant`),
  ADD KEY `TypeFD` (`Type_Defense`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`Num_Objet`),
  ADD KEY `typeobjet` (`Num_TypeObjet`) USING BTREE;

--
-- Index pour la table `objets_joueur`
--
ALTER TABLE `objets_joueur`
  ADD PRIMARY KEY (`Id_objetJoueur`),
  ADD KEY `id_membre` (`id_membre`),
  ADD KEY `id_objet` (`id_Objet`);

--
-- Index pour la table `objet_type`
--
ALTER TABLE `objet_type`
  ADD PRIMARY KEY (`Num_TypeObjet`);

--
-- Index pour la table `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`Id_PC`),
  ADD KEY `numero` (`Numero`),
  ADD KEY `att1` (`Num_Attaque1`),
  ADD KEY `att2` (`Num_Attaque2`),
  ADD KEY `att3` (`Num_Attaque3`),
  ADD KEY `att4` (`Num_Attaque4`),
  ADD KEY `idmembre` (`id_membre`);

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`Numero`),
  ADD KEY `type1` (`Type1`),
  ADD KEY `type2` (`Type2`),
  ADD KEY `evo` (`Evolution`);

--
-- Index pour la table `pokemonsauvage`
--
ALTER TABLE `pokemonsauvage`
  ADD PRIMARY KEY (`id_sauvage`),
  ADD KEY `pokemon` (`Id_Pokemon`),
  ADD KEY `numattaque1` (`Num_Attaque1`),
  ADD KEY `numattaque2` (`Num_Attaque2`),
  ADD KEY `numattaque3` (`Num_Attaque3`),
  ADD KEY `numattaque4` (`Num_Attaque4`),
  ADD KEY `idmmembre` (`Id_membre`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Num_Type`);

--
-- Index pour la table `typeevolution`
--
ALTER TABLE `typeevolution`
  ADD PRIMARY KEY (`Num_TEvo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attaque`
--
ALTER TABLE `attaque`
  MODIFY `Num_Attaque` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `Id_equipe` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT pour la table `faiblesse`
--
ALTER TABLE `faiblesse`
  MODIFY `Num_Faiblesse` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `objets`
--
ALTER TABLE `objets`
  MODIFY `Num_Objet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `objets_joueur`
--
ALTER TABLE `objets_joueur`
  MODIFY `Id_objetJoueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT pour la table `objet_type`
--
ALTER TABLE `objet_type`
  MODIFY `Num_TypeObjet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pc`
--
ALTER TABLE `pc`
  MODIFY `Id_PC` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;

--
-- AUTO_INCREMENT pour la table `pokemonsauvage`
--
ALTER TABLE `pokemonsauvage`
  MODIFY `id_sauvage` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `Num_Type` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `typeevolution`
--
ALTER TABLE `typeevolution`
  MODIFY `Num_TEvo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `attaque1` FOREIGN KEY (`Num_Attaque1`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `attaque2` FOREIGN KEY (`Num_Attaque2`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `attaque3` FOREIGN KEY (`Num_Attaque3`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `attaque4` FOREIGN KEY (`Num_Attaque4`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `idmem` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id`),
  ADD CONSTRAINT `num` FOREIGN KEY (`Numero`) REFERENCES `pokemon` (`Numero`),
  ADD CONSTRAINT `objettenu` FOREIGN KEY (`Objet_Pokemon`) REFERENCES `objets` (`Num_Objet`);

--
-- Contraintes pour la table `objets`
--
ALTER TABLE `objets`
  ADD CONSTRAINT `typeobje` FOREIGN KEY (`Num_TypeObjet`) REFERENCES `objet_type` (`Num_TypeObjet`);

--
-- Contraintes pour la table `objets_joueur`
--
ALTER TABLE `objets_joueur`
  ADD CONSTRAINT `id_membre` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id`),
  ADD CONSTRAINT `id_objet` FOREIGN KEY (`id_Objet`) REFERENCES `objets` (`Num_Objet`);

--
-- Contraintes pour la table `pc`
--
ALTER TABLE `pc`
  ADD CONSTRAINT `att1` FOREIGN KEY (`Num_Attaque1`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `att2` FOREIGN KEY (`Num_Attaque2`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `att3` FOREIGN KEY (`Num_Attaque3`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `att4` FOREIGN KEY (`Num_Attaque4`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `idmembre` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id`),
  ADD CONSTRAINT `numero` FOREIGN KEY (`Numero`) REFERENCES `pokemon` (`Numero`);

--
-- Contraintes pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `evo` FOREIGN KEY (`Evolution`) REFERENCES `typeevolution` (`Num_TEvo`),
  ADD CONSTRAINT `type1` FOREIGN KEY (`Type1`) REFERENCES `type` (`Num_Type`),
  ADD CONSTRAINT `type2` FOREIGN KEY (`Type2`) REFERENCES `type` (`Num_Type`);

--
-- Contraintes pour la table `pokemonsauvage`
--
ALTER TABLE `pokemonsauvage`
  ADD CONSTRAINT `idmmembre` FOREIGN KEY (`Id_membre`) REFERENCES `membres` (`id`),
  ADD CONSTRAINT `numattaque1` FOREIGN KEY (`Num_Attaque1`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `numattaque2` FOREIGN KEY (`Num_Attaque2`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `numattaque3` FOREIGN KEY (`Num_Attaque3`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `numattaque4` FOREIGN KEY (`Num_Attaque4`) REFERENCES `attaque` (`Num_Attaque`),
  ADD CONSTRAINT `pokemon` FOREIGN KEY (`Id_Pokemon`) REFERENCES `pokemon` (`Numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
