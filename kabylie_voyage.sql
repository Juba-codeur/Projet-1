-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 25 juin 2019 à 12:38
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `kabylie_voyage`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo_admin` varchar(255) NOT NULL,
  `email_admin` varchar(255) NOT NULL,
  `motdepasse_admin` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `pseudo_admin`, `email_admin`, `motdepasse_admin`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$0P5EWbCt.8WlyP.RMoibNeufVZhZKwmvax8w6v0UzHQlqEAz3VXcK');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `civilite_client` enum('M','Mme') NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `date_naissance_client` date NOT NULL,
  `email_client` varchar(255) NOT NULL,
  `motdepasse_client` varchar(255) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_client`, `civilite_client`, `nom_client`, `prenom_client`, `date_naissance_client`, `email_client`, `motdepasse_client`) VALUES
(1, 'M', 'Soula', 'Koceila', '1980-06-26', 'soula@gmail.com', '$2y$10$4gd1W58JFAqRIOO5FruAnuilWthkeM5j3kCnT//VQn44mw.2EHARS'),
(2, 'M', 'Rachedi', 'Mokrane', '1990-03-01', 'mocco@gmail.com', '$2y$10$cUj2dtRwHLPUeZJWKabVoeZ3rQkL1jZnWfgyKZrU1paQ2i4gLlp/S'),
(3, 'M', 'User', 'Username', '1984-06-14', 'user@gmail.com', '$2y$10$9eeEo9s17wdCbYcBsTIC4.yYTQVeTuPPOcvvrj6aGllLBqPInJAyu');

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `id_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `nom_hotel` varchar(255) NOT NULL,
  `pays_hotel` varchar(255) NOT NULL,
  `image_hotel` varchar(255) NOT NULL,
  `prix_chambre` int(11) NOT NULL,
  `notation_hotel` int(1) NOT NULL,
  `services_hotel` varchar(255) NOT NULL,
  `adresse_hotel` varchar(255) NOT NULL,
  `contact_hotel` varchar(20) NOT NULL,
  `site_web_hotel` varchar(255) NOT NULL,
  `description_hotel` text NOT NULL,
  `date_ajout` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hotels`
--

INSERT INTO `hotels` (`id_hotel`, `nom_hotel`, `pays_hotel`, `image_hotel`, `prix_chambre`, `notation_hotel`, `services_hotel`, `adresse_hotel`, `contact_hotel`, `site_web_hotel`, `description_hotel`, `date_ajout`) VALUES
(1, 'HÃ´tel ibis Alger AÃ©roport babzouar', 'Algerie', 'HÃ´tel ibis Alger AÃ©roport babzouar.jpg', 17900, 5, 'Restaurant,Centre de fitness,Navette aÃ©roport,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', 'Quartier des Affaires de 16024 BP 134, Bab Ezzouar', '021 98 80 20', 'https://www.accorhotels.com/fr/hotel-5682-ibis-alger-aeroport/index.shtml', 'Cet hÃ´tel moderne Ã  l\'aÃ©roport se trouve Ã  1 km du centre commercial Bab Ezzouar et Ã  3 km de l\'aÃ©roport d\'Alger Houari Boumediene.\r\n\r\nLes chambres Ã  l\'ambiance dÃ©contractÃ©e disposent de la climatisation, d\'une salle de bain attenante, d\'un accÃ¨s Wi-Fi gratuit et d\'une tÃ©lÃ©vision Ã  Ã©cran plat.\r\n\r\nL\'accÃ¨s au parking et une navette aÃ©roport sont proposÃ©s gratuitement. Le petit-dÃ©jeuner est disponible moyennant un supplÃ©ment. L\'Ã©tablissement abrite un Ã©lÃ©gant restaurant servant une cuisine internationale, ainsi qu\'un bar.', '2019-06-03 00:49:32'),
(2, 'HÃ´tel Sofitel Algiers Hamma Garden', 'Algerie', 'HÃ´tel Sofitel.jpg', 22800, 4, 'Restaurant,Centre de fitness,Navette aÃ©roport,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', '172 Rue Hassiba Ben Bouali, Belouizdad 16015', '021 68 52 10', 'https://www.accorhotels.com/fr/hotel-1540-sofitel-algiers-hamma-garden/index.shtml', 'Donnant sur la baie d\'Alger, cet hÃ´tel Ã©lÃ©gant se trouve Ã  7 minutes Ã  pied de la station de mÃ©tro la plus proche et Ã  2 km du musÃ©e national des Beaux-Arts d\'Alger. Le MÃ©morial du martyr se situe Ã  3 km.\r\n\r\nLes chambres raffinÃ©es Ã  la dÃ©coration luxueuse sont Ã©quipÃ©es d\'une tÃ©lÃ©vision Ã  Ã©cran plat, d\'un accÃ¨s Wi-Fi gratuit et d\'un minibar. Les suites disposent Ã©galement d\'un coin salon ou d\'une salle de sÃ©jour, et certaines comprennent une cuisine et une machine Nespresso. Un service de chambre est proposÃ© 24h/24 et 7j/7.\r\n\r\nLe parking est gratuit et des massages sont proposÃ©s dans le spa dotÃ© d\'une salle de fitness, d\'un sauna et d\'une piscine intÃ©rieure. L\'hÃ´tel possÃ¨de aussi 3 restaurants haut de gamme, un bar Ã  la rÃ©ception de style Art dÃ©co et une piscine extÃ©rieure.', '2019-06-03 00:56:28'),
(3, 'Holiday Inn Alger - Cheraga Tower', 'Algerie', 'Holiday Inn Alger - Cheraga Tower.jpg', 18400, 3, 'Restaurant,Centre de fitness,Navette aÃ©roport,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', '02 Route d\'Ouled Fayet, ChÃ©raga 16002', '023 28 58 58', 'https://www.ihg.com/holidayinn/hotels/us/en/cheraga-alger/algct/hoteldetail?cm_mmc=GoogleMaps-_-HI-_-DZ-_-ALGCT', 'InstallÃ© dans un gratte-ciel Ã©lÃ©gant, cet hÃ´tel moderne se trouve Ã  32 km de l\'aÃ©roport international d\'Alger et Ã  16 km de la casbah d\'Alger, un site classÃ© au patrimoine mondial.\r\n\r\nLes chambres contemporaines sont Ã©quipÃ©es d\'une tÃ©lÃ©vision Ã  Ã©cran plat, d\'un minibar, d\'un nÃ©cessaire Ã  thÃ© et cafÃ©, et du Wi-Fi inclus. Les suites disposent en outre d\'une salle de sÃ©jour sÃ©parÃ©e avec un canapÃ©-lit. Un service de chambre est proposÃ©. Le sÃ©jour est gratuit pour les enfants de 12 ans et moins accompagnÃ©s d\'un parent.\r\n\r\nLe parking est gratuit. Le restaurant chic amÃ©nagÃ© au dernier Ã©tage offre une vue panoramique sur la ville. L\'Ã©tablissement possÃ¨de Ã©galement un restaurant de style dÃ©contractÃ©, des piscines intÃ©rieure et extÃ©rieure, un spa et un bar. Les animaux de compagnie sont acceptÃ©s (en supplÃ©ment).', '2019-06-03 01:02:41'),
(4, 'Hilton Alger', 'Algerie', 'Crystal Lounge.jpg', 20000, 5, 'Restaurant,Centre de fitness,Navette aÃ©roport,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', ' Pins Maritimes El Mohammadia, Algiers 16000', '021 21 96 96', 'https://www.hiltonhotels.com/fr_FR/algerie/hilton-algiers/', 'Cet hÃ´tel haut de gamme se trouve Ã  10 minutes Ã  pied du palais des expositions et Ã  11 km du musÃ©e national des Beaux-arts d\'Alger.\r\n\r\nLes Ã©lÃ©gantes chambres et suites disposent d\'un balcon, d\'une tÃ©lÃ©vision Ã  Ã©cran plat, d\'un accÃ¨s Wi-Fi gratuit, d\'un minibar, d\'un coffre, ainsi que d\'une thÃ©iÃ¨re et d\'une cafetiÃ¨re. Les suites bÃ©nÃ©ficient d\'une salle de sÃ©jour, et certaines sont dotÃ©es d\'un espace repas, ainsi que d\'une kitchenette. L\'hÃ´tel propose un service de chambre 24h/24 et 7j/7.\r\n\r\nUn petit-dÃ©jeuner buffet est servi gratuitement dans une salle Ã  manger de style dÃ©contractÃ©. L\'hÃ´tel abrite 3 restaurants proposant une cuisine locale, italienne ou franÃ§aise. Il possÃ¨de Ã©galement plusieurs courts de tennis, une salle de sport, une piscine extÃ©rieure et un bar Ã  cocktails.', '2019-06-03 01:09:25'),
(5, 'AZ HOTEL PALM BEACH', 'Algerie', 'AZ HOTEL PALM BEACH.jpg', 13550, 4, 'Restaurant,Navette aÃ©roport,Convient aux enfants,Wi-fi,Service de chambre,Bar,Spa,Parking', 'Palm Beach LotØŒ N11, Staoueli', '023 20 14 28', 'http://www.azhotels.dz/', 'SituÃ© le long de Glorious Beach, bordant la mer MÃ©diterranÃ©e, cet hÃ´tel de luxe se trouve Ã  39 km de l\'aÃ©roport d\'Alger-Houari-BoumÃ©diÃ¨ne.\r\n\r\nLes chambres modernes disposent d\'un accÃ¨s Wi-Fi, d\'une tÃ©lÃ©vision Ã  Ã©cran plat, d\'un coffre-fort et d\'un balcon ou d\'une terrasse avec vue sur la ville ou la mer. Les chambres de catÃ©gorie supÃ©rieure bÃ©nÃ©ficient en outre d\'un coin salon ou d\'une salle de sÃ©jour.\r\n\r\nL\'Ã©tablissement possÃ¨de un restaurant chic dotÃ© d\'une terrasse avec vue sur la mer. Le petit-dÃ©jeuner est servi moyennant un supplÃ©ment.', '2019-06-03 01:12:30'),
(6, 'Sheraton Club des Pins Resort', 'Algerie', 'Sheraton Club des Pins Resort.jpg', 24500, 5, 'Restaurant,Centre de fitness,Navette aÃ©roport,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', ' Boite Postal 62, Staoueli 16101', '021 37 77 77', 'https://www.marriott.com/hotels/travel/algsi-sheraton-club-des-pins-resort/?scid=bb1a189a-fec3-4d19-a255-54ba596febe2', 'Cet hÃ´tel contemporain haut de gamme est situÃ© sur une plage privÃ©e, Ã  10 km du circuit de Karting AlgÃ©rie MegaKart Cheraga et Ã  19 km du Stade du 5 juillet 1962.\r\n\r\nLes chambres classiques et raffinÃ©es disposent d\'une connexion Wi-Fi gratuite, d\'une tÃ©lÃ©vision Ã  Ã©cran plat, d\'un minibar et d\'un coin salon. Les chambres Club offrent un accÃ¨s Ã  un salon oÃ¹ sont servis un petit-dÃ©jeuner gratuit, des collations et des boissons. Les suites comprennent une salle de sÃ©jour et une cafetiÃ¨re.\r\n\r\nL\'Ã©tablissement possÃ¨de 2 bars et 7 Ã©lÃ©gants restaurants internationaux servant des plats aux origines allant de l\'Asie Ã  l\'Europe. Il propose Ã©galement des piscines intÃ©rieures et extÃ©rieures, une salle de sport et un spa avec hammam. Il met en outre Ã  disposition un centre d\'affaires et une salle de rÃ©union. Le parking est gratuit.', '2019-06-03 01:15:47'),
(7, 'La Kasbah', 'Tunisie', 'La Kasbah.jpg', 13000, 5, 'Restaurant,Centre de fitness,Wi-fi,Service de chambre,Piscine,Bar,Parking', 'Rue de La Kasbah Kairouan TN 3140, Rue Sidi Abdelkader, Kairouan, Tunisie', '216 77 237 301', 'http://www.goldenyasmin.com/', 'Cet hÃ´tel haut de gamme, situÃ© dans le quartier central et traditionnel de la ville sainte de Kairouan, se trouve Ã©galement Ã  8 minutes Ã  pied de la Grande MosquÃ©e de Kairouan, Ã  10 minutes de marche de l\'arrÃªt de bus Aouled Farhan et Ã  2 km du stade sportif Ali Zouaoui.\r\n\r\nDotÃ©es d\'Ã©lÃ©gants tapis, les chambres dÃ©corÃ©es dans le style ottoman disposent aussi d\'une tÃ©lÃ©vision par satellite, d\'un minibar et d\'un coffre-fort. Les suites bÃ©nÃ©ficient d\'un espace de vie sÃ©parÃ©.\r\n\r\nL\'Ã©tablissement possÃ¨de un Ã©lÃ©gant restaurant Ã  la carte dotÃ© d\'une terrasse pavÃ©e, ainsi qu\'un cafÃ© turc et une piscine extÃ©rieure. Il abrite Ã©galement un hammam chic et un hall en marbre. Le parking est inclus.', '2019-06-03 01:20:59'),
(8, 'Radisson Blu Resort &amp; Thalasso, Hammamet', 'Tunisie', 'Radisson Blu Resort & Thalasso, Hammamet.jpg', 12300, 4, 'Restaurant,Centre de fitness,Navette aÃ©roport,Convient aux enfants,Service de chambre,Spa,Parking', 'Avenue HÃ©di Nouira, Hammamet 8050, Tunisie', '216 72 101 000', 'https://www.radissonblu.com/en/resort-hammamet?facilitatorId=CSOSEO&amp;csref=org_gmb_sk_en_sn_ho_NBEZH', 'Surplombant la mer MÃ©diterranÃ©e, ce complexe hÃ´telier Ã  la fois Ã©lÃ©gant et moderne offre un accÃ¨s direct Ã  la plage de Hammamet. Il se situe Ã  12 minutes Ã  pied de la gare ferroviaire Hammamet Azur et Ã  20 km des magasins de MÃ©dina Mediterrane.\r\n\r\nLes chambres et les suites raffinÃ©es dÃ©corÃ©es d\'arabesques sont dotÃ©es d\'une tÃ©lÃ©vision Ã  Ã©cran plat, d\'un accÃ¨s Wi-Fi, d\'un minibar et d\'une cafetiÃ¨re. Les chambres de catÃ©gorie supÃ©rieure disposent d\'un balcon privÃ© avec vue sur la mer, tandis que les suites comprennent un coin salon sÃ©parÃ© et une machine Nespresso.\r\n\r\nL\'hÃ´tel propose un petit-dÃ©jeuner buffet gratuit, et comprend 3 restaurants haut de gamme, 3 bars et un cafÃ©. Il possÃ¨de Ã©galement un centre de fitness, un spa, une piscine couverte et une piscine extÃ©rieure.', '2019-06-03 01:23:46'),
(9, 'Radisson Blu Palace Resort &amp; Thalasso, Djerba', 'Tunisie', 'Radisson Blu Palace Resort & Thalasso, Djerba.jpg', 18600, 4, 'Restaurant,Centre de fitness,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', 'Houmt Souk Djerba, 4128, Tunisie', '216 75 757 600', 'https://www.radissonblu.com/en/resort-djerba?facilitatorId=CSOSEO&amp;csref=org_gmb_sk_en_sn_ho_DJEZR', 'Surplombant la mer MÃ©diterranÃ©e, ce grand hÃ´tel offre un accÃ¨s direct Ã  la plage. Il se trouve Ã  7 km du club de golf de Djerba et Ã  11 km du zoo du parc Djerba Explore.\r\n\r\nLes chambres lumineuses disposent d\'une tÃ©lÃ©vision Ã  Ã©cran plat, d\'un minibar, d\'un accÃ¨s Wi-Fi gratuit et d\'un balcon privÃ© avec vue sur la mer. Les suites possÃ¨dent un coin salon, une cafetiÃ¨re et un jacuzzi. Un service en chambre 24 h/24 est disponible.\r\n\r\nL\'hÃ´tel propose un petit-dÃ©jeuner buffet gratuit servi sur la terrasse du restaurant. Il abrite Ã©galement un centre d\'affaires, une salle de musculation, un cafÃ© en front de mer, un Ã©lÃ©gant restaurant italien et un restaurant andalou haut de gamme. L\'Ã©tablissement comprend une piscine couverte et une piscine extÃ©rieure. Le parking est gratuit.', '2019-06-03 01:26:20'),
(10, 'HÃ´tel Pullman Marrakech Palmeraie Resort and Spa', 'Maroc', 'HÃ´tel Pullman Marrakech Palmeraie Resort and Spa.jpg', 17209, 5, 'Restaurant,Centre de fitness,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', 'KM6 Route de Fes, Marrakesh 40060, Maroc', '212 525 071000', 'https://bit.ly/314KHL1', 'EntourÃ© d\'oliviers et de palmiers, ce complexe Ã©lÃ©gant se trouve Ã  8 km du jardin Majorelle et Ã  9 km de la place Jemaa el-Fna.\r\n\r\nLes chambres contemporaines comprennent le Wi-Fi, un Ã©cran plat, un minibar, un coffre-fort et un balcon ou une terrasse avec vue sur le jardin. Les chambres de catÃ©gorie supÃ©rieure disposent d\'un canapÃ©-lit ; donnant sur les montagnes de l\'Atlas, certaines sont Ã©quipÃ©es d\'une machine Nespresso et d\'un dock pour iPod. Un service de chambre est proposÃ© 24h/24 et 7j/7.\r\n\r\nLe parking et la navette locale sont disponible. Le complexe possÃ¨de par ailleurs 3 restaurants (international, marocain et repas lÃ©gers), 2 bars, un court de tennis, une salle de sport, une piscine extÃ©rieure, un spa et un club pour enfants. Sont Ã©galement proposÃ©s un service de location de vÃ©los, des leÃ§ons de golf et des excursions.', '2019-06-03 01:35:45'),
(11, 'Radisson Blu Hotel Kayseri', 'Turquie', 'Radisson Blu Hotel Kayseri.png', 9600, 5, 'Restaurant,Centre de fitness,Navette aÃ©roport,Convient aux enfants,Wi-fi,Service de chambre,Piscine,Bar,Spa,Parking', 'Hunat Mahallesi, Sivas Caddesi No. 24/1, 38030 Melikgazi/Kayseri, Turquie', '90 352 315 50 00', 'https://www.radissonblu.com/en/hotel-kayseri?facilitatorId=CSOSEO&amp;csref=org_gmb_sk_en_sn_ho_ASRZR', 'DotÃ© d\'une piscine intÃ©rieure ainsi que d\'un spa et centre de bien-Ãªtre, le Radisson Blu Hotel, Kayseri se trouve Ã  Kayseri. Il possÃ¨de un local Ã  skis et un point de vente de forfaits de ski. Une connexion Wi-Fi est disponible gratuitement.\r\n\r\nOffrant une vue sur la ville et la montagne, toutes les chambres sont climatisÃ©es et disposent d\'une tÃ©lÃ©vision par satellite, d\'un minibar ainsi que d\'une bouilloire Ã©lectrique. Leur salle de bains privative est pourvue d\'une baignoire ou d\'une douche, d\'un sÃ¨che-cheveux et de peignoirs.\r\n\r\nVous trouverez un restaurant et une salle de sport sur place. Une bagagerie est Ã©galement Ã  votre disposition. Vous aurez la possibilitÃ© de pratiquer diffÃ©rentes activitÃ©s sur place ou dans les environs, telles que le ski. Le parking de l\'hÃ´tel est gratuit.\r\n\r\nLe Radisson Blu Hotel, Kayseri est Ã  600 mÃ¨tres du chÃ¢teau de Kayseri et de l\'Ã©glise Saint-GrÃ©goire l\'Illuminateur. L\'universitÃ© d\'Erciyes se trouve Ã  3,2 km. La station de ski d\'Erciyes est Ã  seulement 30 minutes de route de l\'Ã©tablissement. Le Radisson Blu Hotel est situÃ© Ã  10 km de l\'aÃ©roport de Kayseri et Ã  84 km de celui de Nevsehir.\r\n\r\nCet Ã©tablissement a Ã©galement Ã©tÃ© bien notÃ© pour son excellent emplacement Ã  Kayseri ! Les clients en sont plus satisfaits en comparaison avec d\'autres Ã©tablissements dans cette ville.', '2019-06-03 01:40:19');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_hotel`
--

DROP TABLE IF EXISTS `reservation_hotel`;
CREATE TABLE IF NOT EXISTS `reservation_hotel` (
  `id_reservation_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `prenom_client` varchar(255) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nom_hotel` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `duree_reservation_hotel` int(11) NOT NULL,
  PRIMARY KEY (`id_reservation_hotel`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_client` (`id_client`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation_hotel`
--

INSERT INTO `reservation_hotel` (`id_reservation_hotel`, `id_client`, `nom_client`, `prenom_client`, `id_hotel`, `nom_hotel`, `date_debut`, `date_fin`, `duree_reservation_hotel`) VALUES
(6, 1, 'Soula', 'Koceila', 2, 'HÃ´tel Sofitel Algiers Hamma Garden', '2019-06-27', '2019-06-29', 2),
(7, 2, 'Rachedi', 'Mokrane', 8, 'Radisson Blu Resort &amp; Thalasso, Hammamet', '2019-07-18', '2019-07-27', 9),
(8, 3, 'User', 'Username', 3, 'Holiday Inn Alger - Cheraga Tower', '2019-08-21', '2019-08-31', 10),
(9, 3, 'User', 'Username', 7, 'La Kasbah', '2019-08-20', '2019-08-29', 9);

-- --------------------------------------------------------

--
-- Structure de la table `reservation_sejour`
--

DROP TABLE IF EXISTS `reservation_sejour`;
CREATE TABLE IF NOT EXISTS `reservation_sejour` (
  `id_reservation_sejour` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `prenom_client` varchar(255) NOT NULL,
  `id_sejour` int(11) NOT NULL,
  `nom_sejour` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reservation_sejour`),
  KEY `id_client` (`id_client`),
  KEY `id_sejour` (`id_sejour`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation_sejour`
--

INSERT INTO `reservation_sejour` (`id_reservation_sejour`, `id_client`, `nom_client`, `prenom_client`, `id_sejour`, `nom_sejour`) VALUES
(6, 1, 'Soula', 'Koceila', 8, 'SÃ‰JOUR MAJORQUE'),
(7, 1, 'Soula', 'Koceila', 1, 'CIRCUIT ANTALYA'),
(8, 2, 'Rachedi', 'Mokrane', 2, 'CROISIÃˆRE LOUXOR'),
(9, 2, 'Rachedi', 'Mokrane', 4, 'SÃ‰JOUR MONASTIR'),
(10, 3, 'User', 'Username', 9, 'SÃ‰JOUR PUNTA CANA'),
(11, 3, 'User', 'Username', 1, 'CIRCUIT ANTALYA');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_vol`
--

DROP TABLE IF EXISTS `reservation_vol`;
CREATE TABLE IF NOT EXISTS `reservation_vol` (
  `id_reservation_vol` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `prenom_client` varchar(255) NOT NULL,
  `id_vol` int(11) NOT NULL,
  `nom_vol` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reservation_vol`),
  KEY `id_client` (`id_client`),
  KEY `id_vol` (`id_vol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation_vol`
--

INSERT INTO `reservation_vol` (`id_reservation_vol`, `id_client`, `nom_client`, `prenom_client`, `id_vol`, `nom_vol`) VALUES
(2, 2, 'Rachedi', 'Mokrane', 7, 'Alger -> Londres'),
(3, 2, 'Rachedi', 'Mokrane', 12, 'BÃ©jaÃ¯a -> Alger'),
(4, 3, 'User', 'Username', 3, 'Alger -> DubaÃ¯'),
(5, 3, 'User', 'Username', 6, 'Alger -> Tunis');

-- --------------------------------------------------------

--
-- Structure de la table `sejours`
--

DROP TABLE IF EXISTS `sejours`;
CREATE TABLE IF NOT EXISTS `sejours` (
  `id_sejour` int(11) NOT NULL AUTO_INCREMENT,
  `nom_sejour` varchar(255) NOT NULL,
  `pays_sejour` varchar(255) NOT NULL,
  `image_sejour` varchar(255) NOT NULL,
  `prix_sejour` int(11) NOT NULL,
  `duree_sejour` int(10) NOT NULL,
  `description_sejour` text NOT NULL,
  `date_ajout` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sejour`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sejours`
--

INSERT INTO `sejours` (`id_sejour`, `nom_sejour`, `pays_sejour`, `image_sejour`, `prix_sejour`, `duree_sejour`, `description_sejour`, `date_ajout`) VALUES
(1, 'CIRCUIT ANTALYA', 'Turquie', 'CIRCUIT ANTALYA.jpg', 120000, 10, 'La Turquie dispose d\'un riche patrimoine historique et archÃ©ologique rare ainsi que des sites naturels d\'exception comme Pamukkable et la Cappadoce. Elle offre aussi de surprenants paysages et un magnifique littoral qui en font une destination de charme et attrayante Ã  un prix trÃ¨s attractif.\r\nC\'est aussi de nombreuses stations balnÃ©aires trÃ¨s frÃ©quentÃ©es avec en vedette la ville d\'Antalya.\r\n\r\nEmbarquez pour la Turquie et profitez d\'un sÃ©jour inÃ©dit Ã  la dÃ©couverte de lieux incontournables et combinez richesses naturelles et culturelles. \r\n\r\nDans la ville antique de SidÃ© il reste encore plusieurs patrimoine pour visiter. Ce circuit vous emmÃ¨ne pour dÃ©couvrir les anciens patrimoines et les belles cÃ´tes du sud de la Turquie.', '2019-06-23 05:30:37'),
(2, 'CROISIÃˆRE LOUXOR', 'Egypte', 'CROISIÃˆRE LOUXOR.jpg', 75000, 7, 'Voyage initiatique en croisiÃ¨re sur le Nil 5*, en pension complÃ¨te (repas inclus sur le bateau, hors boissons) qui vous permettra de dÃ©couvrir l\'Egypte et ses hauts lieux culturels grÃ¢ce Ã  de nombreuses excursions incluses : le Temple de Karnak, le Temple d\'Edfou, le Temple de Kom Ombo, les Barrages d\'Assouan, le Temple de Medinet Habou et le Temple de Louxor (si vous le souhaitez, d\'autres excursions vous seront proposÃ©es sur place en option, avec supplÃ©ment).', '2019-06-02 19:35:28'),
(3, 'Circuits Marrakech &amp; Villes ImpÃ©riales', 'Maroc', 'tigzirt.jpg', 73100, 8, 'Durant votre circuit, vous serez logÃ©s en hÃ´tels de catÃ©gorie 3*/4* (normes locales), base chambre double.\r\n\r\nCi-dessous logements possibles ou Ã©quivalents, Ã  titre indicatif et sous rÃ©serve de modification : \r\nMARRAKECH : HÃ´tel Oudaya, Marrakech House, Al Kabir ou similaire\r\nFES : HÃ´tel Fes Inn, Mounia, Zahrat Al Jabal ou similaire\r\nCASABLANCA : HÃ´tel Suisse, Le Zenith ou similaire\r\n\r\nJOUR 1 : AlgÃ©rie / Marrakech\r\nEnvol Ã  destination de Marrakech. ArrivÃ©e et accueil par notre reprÃ©sentant. Transfert Ã  l\'hÃ´tel. DÃ®ner (selon horaires de vol).\r\n\r\nJOUR 2 : Marrakech / FÃ¨s (440 km)\r\nDÃ©part vers Beni-Mellal, entre le Moyen Atlas et la plaine irriguÃ©e du Tadla. Continuation vers Azrou (1300 m), carrefour routier entre les Moyen et Haut Atlas et Ifrane (1700 m), perle du Moyen Atlas. Route vers FÃ¨s.\r\n\r\nJOUR 3 : FÃ¨s\r\nJournÃ©e consacrÃ©e Ã  la visite de FÃ¨s. DÃ©couverte de la mÃ©dina et ses monuments historiques. Visite de la Zaouia Moulay Dris et de la Place NÃ©jjarine et sa fontaine, dÃ©corÃ©e de zelliges et surmontÃ©e d\'un auvent de cÃ¨dre sculptÃ©. Visite du musÃ©e Nejjarine des arts et mÃ©tiers du bois puis de divers ateliers d\'artisanat fassi et dÃ©couverte d\'un four traditionnel. L\'aprÃ¨s-midi, visite du Palais Royal et sa somptueuse porte dorÃ©e puis dÃ©couverte des tombeaux de MÃ©rinides, d\'oÃ¹ vous aurez une vue panoramique sur la ville et ses remparts. Visite du complexe des potiers et tour des remparts.\r\n\r\nJOUR 4 : FÃ¨s / Volubilis / Moulay Idriss / FÃ¨s (150 km)\r\nDÃ©couverte des vestiges romains de Volubilis et de la ville sainte de Moulay Idriss. Route pour MeknÃ¨s, autre ville impÃ©riale. DÃ©jeuner marocain dans un palais. Visite de la porte Bab Mansour, cÃ©lÃ¨bre dans le monde entier, de la porte Bab El Khemis puis passage par l\'entrÃ©e principale de l\'ancien Mellah. Visite d\'un grenier Ã  grains, des Ã©curies royales et du mausolÃ©e de Moulay Ismail.\r\n\r\nJOUR 5 : FÃ¨s / Rabat (250 km)\r\nDÃ©part pour Tiflet (en bordure de la plaine de Gharb) et KhÃ©misset, connue pour ses tapis berbÃ¨res, puis Rabat. Visite de l\'esplanade de Mechouar, du Palais Royal, de Chellah (nÃ©cropole mÃ©rinides du XIIIe siÃ¨cle), du mausolÃ©e Mohamed V, de la Tour Hassan et de la Kasbah des Oudayas.\r\n\r\nJOUR 6 : Rabat / Marrakech (230 km)\r\nDÃ©part pour Casablanca. Tour panoramique de la ville en passant par le quartier rÃ©sidentiel d\'Anfa, la place des Nations Unies, les abords du Palais Royal dans le quartier des habous et la corniche de Casablanca. Visite externe de la grande mosquÃ©e Hassan II. DÃ©part vers Marrakech. DÃ®ner avec spectacle dans un palais de la Medina.\r\n\r\nJOUR 7 : Marrakech\r\nMarrakech est la 3Ã¨me plus grande ville du Maroc. Visite des extÃ©rieurs de la ville en passant par les jardins de la MÃ©nara puis en faisant le tour des remparts. DÃ©jeuner typique. Visite historique : le Palais Bahia, les Tombeaux Saadiens puis arrÃªt devant la Koutoubia, Ã©difice reprÃ©sentatif de l\'art des Almohades. TraversÃ©e de la place Djemaa El Fna. En option : dÃ®ner spectacle Fantasia (39â‚¬ Ã  titre indicatif).\r\n\r\nJOUR 8 : Marrakech / AlgÃ©rie\r\nTemps libre selon les horaires de vol. DÃ©jeuner libre. Transfert Ã  l\'aÃ©roport de Marrakech. Envol vers la France.\r\n\r\nBON A SAVOIR :\r\nGuide local du 2e au 7e jour.\r\nL\'hÃ´tel Ã  Marrakech peut Ãªtre Ã©loignÃ© des souks.\r\nLe dÃ®ner dans un palais de la Medina peut avoir lieu un autre soir.\r\n5e jour : logement possible Ã  Casablanca (350 km).\r\n\r\nA NOTER : \r\nNous vous informons que l\'ordre du circuit et des visites pourra Ãªtre modifiÃ© en fonction d\'impÃ©ratifs locaux, mais toutes les visites seront respectÃ©es. \r\nLes participants en arrivÃ©e samedi effectuent le dimanche, les visites prÃ©vues Ã  Marrakech. Les participants en arrivÃ©e dimanche rejoignent les participants arrivÃ©s le samedi pour effectuer le reste du programme en commun.\r\n\r\n\r\n', '2019-06-02 19:44:32'),
(4, 'SÃ‰JOUR MONASTIR', 'Tunisie', 'terrasse-maxi-clubtropicana_317707_pgbighd.jpg', 45300, 7, 'Cette plaisante citÃ© balnÃ©aire doit son expansion rÃ©cente au prÃ©sident Habib Bourguiba. AprÃ¨s l\'indÃ©pendance, le Combattant suprÃªme voulut promouvoir sa bourgade natale au rang de ville moderne, en faisant raser une partie de la mÃ©dina pour amÃ©nager des esplanades, des avenues rectilignes bordÃ©es d\'arbres, des galeries Ã  arcades et une mosquÃ©e portant son nom. Le prÃ©sident favorisa le dÃ©veloppement touristique de cette cÃ´te aux plages de sable fin en la dotant d\'un aÃ©roport international et de nombreux hÃ´tels. MÃªme si ces opÃ©rations ont volÃ© Ã  la ville une partie de son Ã¢me, vous trouverez Ã  Monastir une sÃ©duisante atmosphÃ¨re de vacances permanentes.', '2019-06-02 19:48:43'),
(5, 'SÃ‰JOUR DJERBA', 'Tunisie', 'terrasse-maxi-club-riad-meninx_436216_pgbighd.jpg', 36000, 15, 'Djerba vous promet un sÃ©jour synonyme de douceur, de dÃ©paysement et de tranquillitÃ©. Houmt Souk, la capitale administrative de l\'Ã®le vous charmera par son cÃ´tÃ© pittoresque. Le souk, formÃ© autour d\'Ã©troites ruelles bordÃ©es d\'Ã©choppes trÃ¨s animÃ©es, dispose d\'un grand choix de tissus, tapis, bijoux... \r\nA quelques kilomÃ¨tres de Houmt Souk, sur la cÃ´te nord-est de l\'Ã®le, commencent les belles plages au sable blanc, qui s\'Ã©tendent, sans interruption, jusqu\'Ã  Aghir, au sud-est. \r\nDjerba constitue une vÃ©ritable oasis flottante recouvert de centaine de milliers de palmiers et d\'oliviers aux troncs sÃ©culaires. ', '2019-06-02 19:51:37'),
(6, 'SÃ‰JOUR MAROC BALNÃ‰AIRE', 'Maroc', 'tildi_VIRMEL11068527_pgbighd.jpg', 29300, 6, 'Agadir, situÃ©e au sud de la cÃ´te marocaine se prÃ©sente comme une vÃ©ritable ville balnÃ©aire oÃ¹ il fait bon vivre. Un climat doux tout au long de l\'annÃ©e, une baie dominante et une corniche amÃ©nagÃ©e qui offre de belles balades sur le front de mer, une marina qui peut accueillir plusieurs dizaines de bateaux de plaisance.\r\n\r\nL\'hÃ´tel Tildi 4* (normes locales) est situÃ© dans le centre-ville d\'Agadir, Ã  5 minutes de marche de la plage et Ã  30 minutes de route de l\'aÃ©roport Al Massira. \r\nNotre avis: La situation du Tildi est idÃ©ale pour se promener sur la plage ou visiter les alentours. L\'hÃ´tel est classÃ© 4* selon les normes locales marocaines, mais propose des prestations que nous jugeons plutÃ´t d\'un niveau de catÃ©gorie 3*.', '2019-06-02 19:56:33'),
(7, 'SÃ‰JOUR MINORQUE', 'Grece', 'maxi-club-vacances-menorca-resort_VIRBBQ537914419841_pgbighd.jpg', 71800, 12, 'SituÃ©e dans l\'archipel des BalÃ©ares, au cÅ“ur de la mÃ©diterranÃ©e, Minorque est la plus petite Ã®le des BalÃ©ares et aussi la moins frÃ©quentÃ©e. D\'une superficie de 702 kmÂ², l\'Ã®le est dÃ©clarÃ©e Â« RÃ©serve Mondiale de la biosphÃ¨re Â» par l\'Unesco depuis 1993. Minorque attire tous les voyageurs en quÃªte de nature et d\'authenticitÃ©. Vous serez comblÃ©s par la beautÃ© des paysages et de ses merveilleuses palettes de couleurs entre la terre ocre et rouge et les petites criques isolÃ©es aux eaux cristallines. Fornells, paisible village de pÃªcheurs dont la baie est l\'un des plus grands ports naturels de Minorque, s\'intÃ¨gre dans une zone naturelle protÃ©gÃ©e. C\'est la destination idÃ©ale pour la pratique de la voile. Prenez le temps de vous balader dans les petits villages emplis de charme, de Mahon Ã  Ciutadella. Les possibilitÃ©s d\'activitÃ©s sportives ne manquent pas Ã  Minorque ! Vous aurez le choix entre les sports nautiques, la plongÃ©e sous marine, la randonnÃ©e pÃ©destre. Purement authentique, venez dÃ©couvrir Ã  Minorque une autre facette des BalÃ©ares !', '2019-06-02 19:59:36'),
(8, 'SÃ‰JOUR MAJORQUE', 'Espagne', 'santa-ponsa_VIRMEL10244408_pgbighd.jpg', 50000, 8, 'Construit dans le style dâ€™une maison de campagne de Majorque, cet aparthotel moderne est situÃ© sur une colline et offre une vue somptueuse sur la baie. Il est Ã  300 m du centre de Santa Ponsa oÃ¹ les clients trouveront des magasins, des bars, des restaurants et des discothÃ¨ques. Lâ€™hÃ´tel est Ã  900 m de la mer et dâ€™une plage de sable fin. Les transports publics sont Ã  50 m de lâ€™Ã©tablissement et le centre touristique le plus proche est Ã  5 km.qwqw', '2019-06-02 20:01:50'),
(9, 'SÃ‰JOUR PUNTA CANA', 'Republique Dominicaine', 'maxi-club-emerald-khao-lak-beach-resort---spa_VIRBBQ542641382587_pgbighd.jpg', 128000, 9, 'Destination idÃ©ale tout au long de l\'annÃ©e au cÅ“ur des CaraÃ¯bes, la RÃ©publique Dominicaine est cÃ©lÃ¨bre pour ses kilomÃ¨tres de plages. Au sud de l\'Ã®le, vous sÃ©journez Ã  Punta Cana et ses environs. Le charme de Bayahibe avec ses forÃªts de cocotiers ou celui de la plage de Bavaro, classÃ©e parmi les plus belles plages au monde, n\'Ã©chappera Ã  aucun visiteur. De multiples activitÃ©s orientÃ©es vers la mer s\'offriront Ã  vous, comme la plongÃ©e et bien d\'autres sports nautiques. Explorez aussi l\'arriÃ¨re pays verdoyant ainsi que la vie sauvage qui y rÃ¨gne. Et profitez de la formule Tout Inclus, si complÃ¨te ! Ambiance caliente garantie !\r\n\r\nL\'hÃ´tel Maxi Club Tropical Princess 4* (normes locales) bÃ©nÃ©ficie d\'une localisation privilÃ©giÃ©e sur l\'une des plages de Bavaro, la plage de sable fin de Arena Blanca. Le complexe hÃ´telier est amÃ©nagÃ© sous forme de bÃ¢timents de 2 Ã©tages aux couleurs vives et chatoyantes caractÃ©ristiques des CaraÃ¯bes. Le cadre naturel et exotique ne laisse pas indiffÃ©rent, notamment grÃ¢ce Ã  un grand parc avec une vÃ©gÃ©tation tropicale abondante et prÃ©servÃ©e. Vous rejoindrez ainsi votre logement depuis le bÃ¢timent de l\'accueil, en empruntant une allÃ©e de mangroves. Nous vous proposons un lieu d\'harmonie oÃ¹ le plaisir d\'Ãªtre au cÅ“ur d\'un environnement naturel se conjugue avec la dÃ©tente. En plus de lÃ©zarder simplement sur la plage, vous pourrez profiter d\'une large gamme de services et d\'activitÃ©s. \r\nL\'aÃ©roport de Punta Cana est Ã  25 km et la ville de Punta Cana est Ã  27 km de l\'hÃ´tel. Le club de golf Iberostar Golf Course est Ã  4 km.', '2019-06-03 00:29:50');

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

DROP TABLE IF EXISTS `vols`;
CREATE TABLE IF NOT EXISTS `vols` (
  `id_vol` int(11) NOT NULL AUTO_INCREMENT,
  `ville_depart` varchar(255) NOT NULL,
  `ville_arrivee` varchar(255) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `heure_depart` time NOT NULL,
  `heure_arrivee` time NOT NULL,
  `companie_voyage` varchar(255) NOT NULL,
  `type_vol` varchar(20) NOT NULL,
  `aeroport_depart` varchar(255) NOT NULL,
  `aeroport_arrivee` varchar(255) NOT NULL,
  `classe_voyage` varchar(20) NOT NULL,
  `prix_vol` int(20) NOT NULL,
  `date_ajout` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_vol`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vols`
--

INSERT INTO `vols` (`id_vol`, `ville_depart`, `ville_arrivee`, `date_depart`, `date_arrivee`, `heure_depart`, `heure_arrivee`, `companie_voyage`, `type_vol`, `aeroport_depart`, `aeroport_arrivee`, `classe_voyage`, `prix_vol`, `date_ajout`) VALUES
(1, 'Alger', 'Paris', '2019-07-10', '2019-07-10', '12:15:00', '15:30:00', 'Aigle Azur', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport de Paris-Orly', 'Ã‰conomique', 37300, '2019-06-23 04:54:14'),
(2, 'Alger', 'Paris', '2019-06-08', '2019-06-08', '09:10:00', '12:30:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport de Paris-Orly', 'Ã‰conomique', 39000, '2019-06-23 04:55:36'),
(3, 'Alger', 'DubaÃ¯', '2019-07-08', '2019-07-09', '18:55:00', '22:35:00', 'Air France', 'Avec Escale', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport international de DubaÃ¯', 'Affaires', 167800, '2019-06-23 04:58:42'),
(4, 'BÃ©jaÃ¯a', 'Paris', '2019-07-14', '2019-07-14', '09:20:00', '12:40:00', 'Air Algerie', 'Avec Escale', 'AÃ©roport de BÃ©jaÃ¯a - Soummam - Abane Ramdane', 'AÃ©roport de Paris-Charles De Gaulle', 'Ã‰conomique', 41200, '2019-06-23 05:02:39'),
(5, 'Alger', 'Marseille', '2019-07-04', '2019-07-04', '08:55:00', '11:20:00', 'Aigle Azur', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport Marseille Provence', 'Ã‰conomique', 25000, '2019-06-23 05:04:39'),
(6, 'Alger', 'Tunis', '2019-07-23', '2019-07-23', '16:50:00', '18:10:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'International Airport of Tunis-Carthage', 'Ã‰conomique', 28000, '2019-06-23 05:07:46'),
(7, 'Alger', 'Londres', '2019-07-15', '2019-07-15', '13:50:00', '17:00:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport de Londres Heathrow', 'Ã‰conomique', 56263, '2019-06-23 05:10:43'),
(8, 'Alger', 'MontrÃ©al', '2019-07-25', '2019-07-25', '12:40:00', '21:40:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport international Pierre-Elliott-Trudeau de MontrÃ©al', 'Ã‰conomique', 81180, '2019-06-23 05:15:30'),
(9, 'Alger', 'Paris', '2019-07-24', '2019-07-24', '12:00:00', '15:20:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport de Paris-Orly', 'PremiÃ¨re', 45800, '2019-06-23 05:18:52'),
(10, 'Alger', 'Istanbul', '2019-07-04', '2019-07-04', '10:00:00', '15:15:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport d\'Istanbul', 'Ã‰conomique', 42330, '2019-06-23 05:21:01'),
(11, 'Hassi Messaoud', 'Alger', '2019-07-08', '2019-07-08', '17:30:00', '18:45:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport d\'Hassi Messaoud - Oued Irara - Krim Belkacem', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'Ã‰conomique', 6460, '2019-06-23 05:22:48'),
(12, 'BÃ©jaÃ¯a', 'Alger', '2019-07-09', '2019-07-09', '16:10:00', '16:40:00', 'Aigle Azur', 'Vol Direct', 'AÃ©roport de BÃ©jaÃ¯a - Soummam - Abane Ramdane', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'Ã‰conomique', 2230, '2019-06-23 05:24:30'),
(13, 'Alger', 'Constantine', '2019-07-30', '2019-07-30', '07:30:00', '08:35:00', 'Air Algerie', 'Vol Direct', 'AÃ©roport international d\'Alger - Houari BoumÃ©diÃ¨ne', 'AÃ©roport de Constantine - Mohamed Boudiaf', 'Ã‰conomique', 3805, '2019-06-23 05:27:00');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation_hotel`
--
ALTER TABLE `reservation_hotel`
  ADD CONSTRAINT `reservation_hotel_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_hotel_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `hotels` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation_sejour`
--
ALTER TABLE `reservation_sejour`
  ADD CONSTRAINT `reservation_sejour_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_sejour_ibfk_2` FOREIGN KEY (`id_sejour`) REFERENCES `sejours` (`id_sejour`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation_vol`
--
ALTER TABLE `reservation_vol`
  ADD CONSTRAINT `reservation_vol_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_vol_ibfk_2` FOREIGN KEY (`id_vol`) REFERENCES `vols` (`id_vol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
