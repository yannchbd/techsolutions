-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 24 nov. 2025 à 17:20
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `techsolutions`
--

-- --------------------------------------------------------

--
-- Structure de la table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `components`
--

INSERT INTO `components` (`id`, `name`, `description`) VALUES
(1, 'AMD Ryzen 9 9950X3D (4.3 GHz / 5.7 GHz)', 'CPU001'),
(2, 'AMD Ryzen 9 7950X (4.5 GHz / 5.7 GHz)', 'CPU002'),
(3, 'AMD Ryzen 7 7800X3D (4.2 GHz / 5.0 GHz)', 'CPU003'),
(4, 'Intel Core i9 14900K (3.2 GHz / 5.8 GHz)', 'CPU004'),
(5, 'Intel Core i7-14700KF (3.4 GHz / 5.6 GHz)', 'CPU005'),
(6, 'Intel Core i7-14700K (3.4 GHz / 5.6 GHz)', 'CPU006'),
(7, 'Intel Core i9-12900K (3.2 GHz / 5.2 GHz)', 'CPU007'),
(8, 'Intel Core Ultra 9 285K (3.7 GHz / 5.7 GHz)', 'CPU008'),
(9, 'AMD Ryzen 5 7600 Wraith Stealth (3.8 GHz / 5.1 GHz)', 'CPU009'),
(10, 'AMD Ryzen 5 5600XT Wraith Stealth (3.7 GHz / 4.7 GHz)', 'CPU010'),
(11, 'Intel Arc A380 Challenger ITX OC 6GB GDDR6', 'GPU001'),
(12, 'ASUS Dual GeForce RTX 5050 8GB', 'GPU002'),
(13, 'NVIDIA RTX A4000 Carte Graphique Professionnelle', 'GPU003'),
(14, 'ASUS Dual NVIDIA GeForce RTX 4060 Ti Evo OC Edition', 'GPU004'),
(15, 'NVIDIA RTX A2000?', 'GPU005'),
(16, 'Nvidia GT710 954 MHz 2048 Mo PCI Express Noir', 'GPU006'),
(17, 'NVIDIA GeForce RTX 3050', 'GPU007'),
(18, 'MSI GeForce RTX 5070 Ti 16G VENTUS 3X OC', 'GPU008'),
(19, 'ASUS PRIME GeForce RTX 5080 16GB GDDR7 OC Edition', 'GPU009'),
(20, 'Gigabyte GeForce RTX 3060 WINDFORCE OC 12G (LHR)', 'GPU010'),
(21, 'Textorm 16 Go (2x 8 Go) DDR4 3200 MHz CL16', 'RAM001'),
(22, 'Textorm 32 Go (2x 16 Go) DDR4 3200 MHz CL16', 'RAM002'),
(23, 'Textorm 16 Go (2x 8 Go) DDR4 2666 MHz CL19', 'RAM003'),
(24, 'Textorm 32 Go (2x 16 Go) DDR4 2666 MHz CL19', 'RAM004'),
(25, 'Corsair Dominator Platinum DDR5 RGB 32 Go (2 x 16 Go) 6200 MHz CL36', 'RAM005'),
(26, 'Corsair Vengeance DDR5 32 Go (2 x 16 Go) 7200 MHz CL34 - Noir', 'RAM006'),
(27, 'Corsair Vengeance RGB DDR5 64 Go (2 x 32 Go) 6400 MHz CL42 - Noir', 'RAM007'),
(28, 'G.Skill Trident Z5 32 Go (2 x 16 Go) DDR5 7600 MHz CL36 - Noir', 'RAM008'),
(29, 'G.Skill Trident Z5 Neo RGB Series 32 Go (2x 16 Go) DDR5 8000 MHz CL38', 'RAM009'),
(30, 'G.Skill Trident Z5 CK 48 Go (2 x 24 Go) DDR5 9000 MHz CL42 - Noir', 'RAM010'),
(31, 'Fox Spirit PM70 PRO M.2 NVMe 960 Go PCIe 4.0', 'SSD001'),
(32, 'Textorm BM40 M.2 2280 PCIE NVME 1920 Go', 'SSD002'),
(33, 'Corsair Force MP600 CORE XT R2 2 To', 'SSD003'),
(34, 'Corsair Force MP600 CORE XT 4 To', 'SSD004'),
(35, 'Corsair Force MP600 GS 1 To', 'SSD005'),
(36, 'Corsair Force MP600 GS 500 Go', 'SSD006'),
(37, 'Samsung SSD 9100 PRO M.2 PCIe NVMe 8 To avec dissipateur', 'SSD007'),
(38, 'Samsung SSD 9100 PRO M.2 PCIe NVMe 4 To avec dissipateur', 'SSD008'),
(39, 'Crucial T710 2 To - Avec dissipateur', 'SSD009'),
(40, 'Crucial T710 1 To - Avec dissipateur', 'SSD010'),
(41, 'Antec C5 ARGB (Noir)', 'BOI001'),
(42, 'Lian Li LANCOOL III Noir', 'BOI002'),
(43, 'NZXT H7 Flow Noir (2024)', 'BOI003'),
(44, 'Corsair 5000T (Noir)', 'BOI004'),
(45, 'be quiet! Pure Base 500 (Noir)', 'BOI005'),
(46, 'be quiet! Shadow Base 800 - Noir', 'BOI006'),
(47, 'Antec Performance 1 FT', 'BOI007'),
(48, 'Corsair 3500X (Blanc)', 'BOI008'),
(49, 'Fox Spirit EG1 (Noir)', 'BOI009'),
(50, 'Antec FLUX (Noir)', 'BOI010'),
(51, 'Fox Spirit HG 1000 80PLUS Gold', 'ALI001'),
(52, 'Fox Spirit HG 750 80PLUS Gold', 'ALI002'),
(53, 'Fox Spirit HG 850 80PLUS Gold', 'ALI003'),
(54, 'Antec HCG1000 Pro Platinum ATX 3.1', 'ALI004'),
(55, 'Antec HCG850 Pro Platinum ATX 3.1', 'ALI005'),
(56, 'be quiet! Pure Power 12 650W 80PLUS Gold', 'ALI006'),
(57, 'be quiet! Power Zone 2 850W 80PLUS Platinum', 'ALI007'),
(58, 'be quiet! Power Zone 2 1000W 80PLUS Platinum', 'ALI008'),
(59, 'ASUS ROG MAXIMUS Z890 HERO', 'CM001'),
(60, 'ASUS ROG MAXIMUS Z890 HERO BTF', 'CM002'),
(61, 'ASUS PRIME Z890-P WIFI', 'CM003'),
(62, 'Gigabyte B650 EAGLE AX', 'CM004'),
(63, 'ASUS PRIME B550-PLUS', 'CM005'),
(64, 'MSI B760 GAMING PLUS WIFI DDR4', 'CM006'),
(65, 'ASUS ProArt B650-CREATOR', 'CM007'),
(66, 'ASUS PRIME B550-PLUS', 'CM008'),
(67, 'Fox Spirit GT120', 'REF001'),
(68, 'Antec FrigusAir 400 ARGB', 'REF002'),
(69, 'be quiet! Dark Rock Elite', 'REF003'),
(70, 'be quiet! Dark Rock Slim', 'REF004');

-- --------------------------------------------------------

--
-- Structure de la table `pcs`
--

CREATE TABLE `pcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pcs`
--

INSERT INTO `pcs` (`id`, `name`, `image_url`, `price`) VALUES
(1, 'PC Développeur logiciel', 'https://lcdi.fr/cdn/shop/files/MSI-MAG-PANO-M100R-PZ-BLANC-5070-TI_-_1.jpg?v=1748348438&width=1000', 549.00),
(2, 'PC Infrastructures', 'https://m.media-amazon.com/images/I/81wsSavZiGL._AC_SL1500_.jpg', 779.00),
(3, 'PC Design', 'https://sc04.alicdn.com/kf/Ue3cec0cebf754220bd4636ce860daeeee.jpg', 999.00),
(4, 'PC Marketing/Vente', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzcXdos_s4CIDXPRG4rquYEJOpx6d-EcN8HQ&s', 456.95),
(5, 'PC Support', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa6fHgBwT2lMHERhmNSw4AWTzDrizCB8igYA&s', 321.95),
(6, 'PC RH et Administration', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV7JjqwCqJxhhCKm7hcHBCdrH14vC-9VfUdg&s', 354.95),
(7, 'PC Direction', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPQIJVFXCqOUH0FjvJzpKyuR12S8yRuh9YxQ&s', 412.99);

-- --------------------------------------------------------

--
-- Structure de la table `pc_components`
--

CREATE TABLE `pc_components` (
  `pc_id` int(10) UNSIGNED NOT NULL,
  `component_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pc_components`
--

INSERT INTO `pc_components` (`pc_id`, `component_id`) VALUES
(1, 9),
(1, 19),
(1, 30),
(1, 33),
(1, 48),
(1, 58),
(2, 4),
(2, 17),
(2, 27),
(2, 39),
(2, 48);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pcs`
--
ALTER TABLE `pcs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pc_components`
--
ALTER TABLE `pc_components`
  ADD PRIMARY KEY (`pc_id`,`component_id`),
  ADD KEY `component_id` (`component_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `pcs`
--
ALTER TABLE `pcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pc_components`
--
ALTER TABLE `pc_components`
  ADD CONSTRAINT `pc_components_ibfk_1` FOREIGN KEY (`pc_id`) REFERENCES `pcs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pc_components_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `components` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
