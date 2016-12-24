-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.5.46-0ubuntu0.14.04.2 - (Ubuntu)
-- SE du serveur:                debian-linux-gnu
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de la structure de la base pour scotchbox
CREATE DATABASE IF NOT EXISTS `scotchbox` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scotchbox`;


-- Export de la structure de table scotchbox. produits
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Export de données de la table scotchbox.produits : ~4 rows (environ)
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` (`id`, `nom`, `marque`, `prix`) VALUES
	(1, 'MacBook', 'Apple', 1500.00),
	(2, 'PC portable', 'Asus', 750.00),
	(3, 'Sparc Station 5', 'Sun', 999.99);
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
