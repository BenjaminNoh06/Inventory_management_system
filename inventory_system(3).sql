-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2026 at 06:10 AM
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
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_users`
--

CREATE TABLE `active_users` (
  `session_id` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `last_seen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `active_users`
--

INSERT INTO `active_users` (`session_id`, `user_id`, `full_name`, `role`, `last_seen`) VALUES
('0tsng36a00sb98e9b7o7tbsbv6', 1, 'Benjamin Noh', 'admin', '2026-11-24 10:04:41'),
('1etfsgjm4d3plpo6qianaj25fn', 1, 'Benjamin Noh', 'admin', '2026-11-23 23:56:32'),
('3i6056fpf3b54ate64p2e9ch8j', 1, 'Benjamin Noh', 'admin', '2026-11-23 13:31:35'),
('4ivgfunh6n04l7hpeqqmrrf67r', 1, 'Benjamin Noh', 'admin', '2026-11-24 23:10:39'),
('53rhiusiom66qgcunait611ka5', 3, 'Yurik Magaña', 'staff', '2026-11-24 13:58:08'),
('90vl51v9udir8lff28iik34183', 2, 'Imanol Botes', 'staff', '2026-11-24 13:58:44'),
('cm4qepr42sqv6qi8crf6pgkq9p', 1, 'Benjamin Noh', 'admin', '2026-11-23 23:55:47'),
('emgs2su332sr234165fqov3uj9', 2, 'Imanol Botes', 'staff', '2026-11-23 13:30:10'),
('lgecr1k5e7e3g1jm6ae82e2q4a', 1, 'Benjamin Noh', 'admin', '2026-11-24 13:58:22'),
('om0caq79jl2679hhf5qp31qcbe', 1, 'Benjamin Noh', 'admin', '2026-11-24 11:36:14'),
('oo39g9h1888lnqu8m5l4cv7v8d', 1, 'Benjamin Noh', 'admin', '2026-11-24 09:58:51'),
('v474qgd6k4t4kfeg4rjsbv8sdu', 1, 'Benjamin Noh', 'admin', '2026-11-24 13:28:09'),
('varg06fgo5crncsran6c4ct98u', 1, 'Benjamin Noh', 'admin', '2026-11-23 13:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Groceries', 'Fresh food and bakery items'),
(2, 'Electronics', 'This warehouse category includes consumer electronics, computer hardware, mobile devices, audio equipment, power supplies, cables, and fragile electrical components requiring secure, dry, and organized storage.'),
(3, 'Office Supplies', 'This warehouse category includes paper products, pens, folders, binders, desk organizers, printer ink, shipping labels, and everyday workplace stationery requiring clean, dry, and accessible storage.'),
(4, 'Hardware & Tools', 'Hand tools, power tools, fasteners, and measuring equipment'),
(5, 'Clothing', 'T-shirts, hats, caps, and costumes'),
(6, 'Jewelry', 'Rings and wearable jewelry items'),
(7, 'Video Games', 'Console and PC video games'),
(8, 'Toys ', 'Board games, building sets, plush toys, and collectible figures'),
(9, 'Sports & Fitness', 'Exercise gear, workout boards, and fitness accessories'),
(10, 'Home Decor', 'Wall tapestries and decorative household items'),
(11, 'Books & Media', 'Books, graphic novels, and print media'),
(12, 'Stationary', 'Items specifically used for education or recreational purposes such as books, papers, pens, pencils, crayons or  folders');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `min_stock_threshold` int(11) NOT NULL,
  `image_path` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `description`, `unit_price`, `quantity`, `min_stock_threshold`, `image_path`, `updated_at`) VALUES
(1, 1, 'SKU-001', 'Tomatoes', 'Fresh tomatoes, per lb', 1.50, 7, 15, 'uploads/1795454277_7816.jpg', '2026-11-24 16:30:16'),
(2, 1, 'SKU-002', 'Eggs', 'Dozen eggs', 3.25, 45, 12, 'uploads/1795454301_1478.jpg', '2026-11-24 19:56:09'),
(3, 1, 'SKU-003', 'Lettuce', 'Fresh lettuce head', 1.25, 40, 10, 'uploads/1795454472_9126.jpg', '2026-11-23 17:21:12'),
(4, 1, 'SKU-004', 'Bread', 'Fresh baked loaf', 2.00, 40, 10, 'uploads/1795454481_9897.jpg', '2026-11-24 19:58:19'),
(5, 4, 'SKU-005', 'Claw Hammer', '16 oz steel claw hammer with rubber grip', 14.99, 41, 8, 'uploads/1795454496_1890.jpg', '2026-11-24 05:47:29'),
(6, 4, 'SKU-006', 'Adjustable Wrench', '10 inch adjustable wrench', 11.50, 35, 8, 'uploads/1795454502_6191.jpg', '2026-11-23 17:21:42'),
(7, 4, 'SKU-007', 'Screwdriver Set', '12 piece Phillips and flathead set', 16.75, 50, 10, 'uploads/1795454526_9958.jpg', '2026-11-23 17:22:06'),
(8, 4, 'SKU-008', 'Cordless Drill', '18V cordless drill with battery and charger', 89.00, 15, 4, 'uploads/1795454543_8350.jpg', '2026-11-23 17:22:23'),
(9, 4, 'SKU-009', 'Tape Measure', '25 ft retractable tape measure', 9.25, 80, 15, 'uploads/1795454554_1113.jpg', '2026-11-23 17:22:34'),
(10, 4, 'SKU-010', 'Hex Bolt Assortment', '200 piece zinc plated bolt and nut kit', 19.99, 61, 12, 'uploads/1795454563_7685.jpg', '2026-11-23 18:01:17'),
(11, 4, 'SKU-011', 'Needle Nose Pliers', '8 inch needle nose pliers', 10.40, 45, 10, 'uploads/1795454574_8151.jpg', '2026-11-23 17:22:54'),
(12, 4, 'SKU-012', 'Hand Saw', '20 inch wood cutting hand saw', 17.30, 25, 5, 'uploads/1795454586_4011.jpg', '2026-11-23 17:23:06'),
(13, 4, 'SKU-013', 'Level Tool', '24 inch aluminum spirit level', 15.60, 0, 6, 'uploads/1795454599_4773.jpg', '2026-11-24 18:11:24'),
(14, 4, 'SKU-014', 'Utility Knife', 'Retractable utility knife with spare blades', 6.80, 100, 20, 'uploads/1795454608_4833.jpg', '2026-11-23 17:23:28'),
(15, 9, 'SKU-015', 'Push-Up Board Set', 'Foldable push-up board with color-coded grip positions, resistance bands and handles', 29.99, 35, 8, 'uploads/1795454618_2788.jpg', '2026-11-23 17:23:38'),
(16, 7, 'SKU-016', 'Grand Theft Auto VI (PS5)', 'PlayStation 5 video game', 69.99, 15, 10, 'uploads/1795454633_8720.jpg', '2026-11-24 05:55:57'),
(17, 5, 'SKU-017', 'Jew hat', 'Navy satin kippah with silver embroidered Star of David and trim', 8.50, 60, 15, 'uploads/1795454644_1502.jpg', '2026-11-23 17:24:04'),
(18, 10, 'SKU-018', 'Dr Nowhere Tapestry', 'Wall tapestry, available in multiple sizes', 4.24, 90, 20, 'uploads/1795454658_9566.jpg', '2026-11-23 17:24:18'),
(19, 8, 'SKU-019', 'Roaring Knight Lego set', 'Black fantasy character brick model, 169 pieces', 9.68, 47, 10, 'uploads/1795454748_8760.jpg', '2026-11-24 16:17:31'),
(20, 8, 'SKU-020', 'Gaster plush', '34cm skeleton plush doll in black suit', 8.14, 55, 12, 'uploads/1795454760_2133.jpg', '2026-11-23 17:26:00'),
(21, 8, 'SKU-021', '3-Player Round Chess Set', '15.75 inch round board with 48 pieces in three colors', 10.72, 38, 8, 'uploads/1795454774_6929.jpg', '2026-11-23 17:26:14'),
(22, 5, 'SKU-022', 'Medieval Monk Robe Costume', 'Hooded friar robe with rope belt, coffee color', 9.74, 50, 10, 'uploads/1795454902_2200.jpg', '2026-11-23 17:28:22'),
(23, 2, 'SKU-023', 'Poker Chip USB Flash Drive', '32GB USB 2.0 flash drive shaped like a poker chip', 9.10, 120, 25, 'uploads/1795454923_8343.jpg', '2026-11-23 17:28:43'),
(24, 2, 'SKU-024', 'Dog charger', '100cm Lightning charging cable with novelty dog, orange', 9.46, 85, 20, 'uploads/1795454934_2959.jpg', '2026-11-23 17:28:54'),
(25, 11, 'SKU-025', 'Maus I: A Survivor\'s Tale', 'Pantheon Graphic Library, spiral-bound, English, 160 pages', 23.18, 30, 6, 'uploads/1795454965_6609.jpg', '2026-11-23 17:29:25'),
(26, 5, 'SKU-026', 'Rainbow Propeller Baseball Cap', 'Adjustable color-block cap with propeller top', 7.92, 70, 15, 'uploads/1795454979_2066.jpg', '2026-11-23 17:29:39'),
(27, 6, 'SKU-027', 'Star of David Ring', 'Golden hexagram ring with floral cutouts, sizes 6 to 12', 4.92, 80, 20, 'uploads/1795454999_1502.jpg', '2026-11-23 17:29:59'),
(28, 5, 'SKU-028', 'Pimp costume', '6 piece costume set with hat, sunglasses, chain and cane', 26.07, 4, 2, 'uploads/1795455013_7698.jpg', '2026-11-23 17:30:13'),
(29, 5, 'SKU-029', 'Ball cancer t-shirt', 'Women\'s short sleeve black tee with phone call screen print', 7.57, 601, 12, 'uploads/1795455027_6895.jpg', '2026-11-24 16:05:37'),
(30, 5, 'SKU-030', 'Black Gay handicap t-shirt', 'Men\'s plus-size black crew neck short sleeve tee', 6.27, 50, 10, 'uploads/1795455038_4652.jpg', '2026-11-23 17:30:38'),
(31, 1, 'SKU-031', 'Brown Leather Bullwhip 8 FT', '8 foot braided brown bullwhip', 27.66, 29, 6, 'uploads/1795455048_2565.jpg', '2026-11-23 17:30:48'),
(32, 5, 'SKU-032', 'Ibuprofen Cat Graphic Tee', 'Black crew neck graphic tee, sizes S to 16Y', 4.79, 90, 20, 'uploads/1795455058_3322.jpg', '2026-11-23 17:30:58'),
(33, 5, 'SKU-033', 'Tel Aviv Israel T-Shirt', 'Men\'s white tee with navy Tel Aviv Israel print', 5.79, 45, 10, 'uploads/1795455069_6951.jpg', '2026-11-23 17:31:09'),
(34, 5, 'SKU-034', 'Ibuprofen tshirt', 'Unisex black round neck graphic tee, machine washable', 6.21, 41, 10, 'uploads/1795455079_6963.jpg', '2026-11-24 04:11:01'),
(36, 5, 'SKU-036', 'Dog Gustavo Calling T-Shirt', 'Men\'s big size black tee, sizes 0XL to 5XL', 7.93, 60, 12, 'uploads/1795455124_8127.jpg', '2026-11-23 19:30:00'),
(37, 5, 'SKU-037', 'CHUD Fat Cat T-Shirt', 'Men\'s black graphic tee', 4.26, 65, 15, 'uploads/1795455133_8924.jpg', '2026-11-23 17:32:13'),
(38, 2, 'SKU-038', 'Teto Gaming Mouse Pad', '1pc extended 2D flat gaming mouse pad', 8.85, 105, 20, 'uploads/1795455146_8844.jpg', '2026-11-24 18:11:42'),
(40, 5, 'SKU-040', 'Larry Calling Plus-Size T-Shirt', 'Men\'s plus-size black tee', 5.31, 54, 8, 'uploads/1795455182_9937.jpg', '2026-11-24 19:53:43'),
(41, 5, 'SKU-041', 'Chinese Mode ON T-Shirt', 'Black graphic tee with green toggle print', 5.93, 21, 5, 'uploads/1795455243_9007.jpg', '2026-11-24 05:55:04'),
(42, 1, 'SKU-042', 'teto King Version Lid Figure', 'Collectible figure that sits on a cup lid', 5.56, 93, 20, 'uploads/1795455253_9902.jpg', '2026-11-24 16:27:46'),
(43, 2, 'SKU-100', 'Bird', 'A bird-brain', 1000.00, 67, 5, 'uploads/1795544553_1128.jpg', '2026-11-24 18:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_additions`
--

CREATE TABLE `product_additions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity_added` int(11) NOT NULL DEFAULT 0,
  `added_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_additions`
--

INSERT INTO `product_additions` (`id`, `user_id`, `user_name`, `product_id`, `product_name`, `quantity_added`, `added_at`) VALUES
(3, 2, 'Imanol Botes', 40, 'Larry Calling Plus-Size T-Shirt', 1, '2026-11-23 21:32:27'),
(4, 2, 'Imanol Botes', 40, 'Larry Calling Plus-Size T-Shirt', 10, '2026-11-23 21:32:35'),
(5, 3, 'Yurik Magaña', 34, 'Ibuprofen tshirt', 1, '2026-11-23 22:11:01'),
(6, 1, 'Benjamin Noh', 2, 'Eggs', 1, '2026-11-23 23:28:08'),
(7, 1, 'Benjamin Noh', 2, 'Eggs', 10, '2026-11-23 23:28:25'),
(8, 2, 'Imanol Botes', 2, 'Eggs', 1, '2026-11-23 23:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action_type` enum('CREATED','STOCK_IN','STOCK_OUT','UPDATED','DELETED') NOT NULL,
  `quantity_change` int(11) NOT NULL,
  `platform` enum('WEB','MOBILE') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `user_id`, `action_type`, `quantity_change`, `platform`, `created_at`) VALUES
(1, 40, 2, 'STOCK_IN', 1, 'WEB', '2026-11-24 03:32:27'),
(2, 40, 2, 'STOCK_IN', 10, 'WEB', '2026-11-24 03:32:35'),
(3, 34, 3, 'STOCK_IN', 1, 'WEB', '2026-11-24 04:11:01'),
(4, 2, 1, 'STOCK_IN', 1, 'WEB', '2026-11-24 05:28:08'),
(5, 2, 1, 'STOCK_IN', 10, 'WEB', '2026-11-24 05:28:25'),
(6, 2, 2, 'STOCK_IN', 1, 'WEB', '2026-11-24 05:35:02'),
(8, 5, 1, 'STOCK_IN', 1, 'WEB', '2026-11-24 05:47:29'),
(9, 41, 1, 'STOCK_IN', 1, 'WEB', '2026-11-24 05:55:04'),
(10, 16, 1, 'STOCK_IN', 15, 'WEB', '2026-11-24 05:55:57'),
(11, 29, 1, 'STOCK_IN', 1, 'WEB', '2026-11-24 16:05:37'),
(12, 19, 1, 'STOCK_IN', 1, 'MOBILE', '2026-11-24 16:17:31'),
(13, 1, 2, 'STOCK_IN', 1, 'WEB', '2026-11-24 16:24:38'),
(14, 42, 1, 'STOCK_IN', 1, 'WEB', '2026-11-24 16:27:46'),
(15, 1, 1, 'STOCK_OUT', 1, 'WEB', '2026-11-24 16:30:10'),
(16, 1, 1, 'STOCK_OUT', 80, 'WEB', '2026-11-24 16:30:16'),
(17, 13, 3, 'STOCK_OUT', -1, 'WEB', '2026-11-24 18:10:57'),
(18, 13, 3, 'STOCK_OUT', -29, 'WEB', '2026-11-24 18:11:24'),
(19, 38, 3, 'STOCK_IN', 1, 'WEB', '2026-11-24 18:11:42'),
(20, 43, 1, 'CREATED', 67, 'WEB', '2026-11-24 18:22:33'),
(21, 40, 2, 'STOCK_IN', 1, 'WEB', '2026-11-24 19:53:36'),
(22, 40, 2, 'STOCK_IN', 10, 'WEB', '2026-11-24 19:53:43'),
(23, 2, 1, 'STOCK_OUT', -1, 'WEB', '2026-11-24 19:56:00'),
(24, 2, 1, 'STOCK_OUT', -30, 'WEB', '2026-11-24 19:56:09'),
(25, 4, 3, 'STOCK_OUT', -10, 'WEB', '2026-11-24 19:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password_hash` varchar(100) NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password_hash`, `role`, `created_at`, `images`) VALUES
(1, 'Benjamin Noh', 'nohbenjamin47@gmail.com', 'aef1b17eb607e33f3468c493a05e7fe2', 'admin', '2026-11-20 03:36:12', ''),
(2, 'Imanol Botes', 'ibotes25129@gmail.com', '1a9ce1cc5e07b14baebc7daeec2032d0', 'staff', '2026-11-20 03:39:48', ''),
(3, 'Yurik Magaña', 'ymagana25127@cemjc.edu.bz', 'a88e25cd2e2932b3e915df4d18c0a73d', 'staff', '2026-11-24 03:42:17', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_users`
--
ALTER TABLE `active_users`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_seen` (`last_seen`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_additions`
--
ALTER TABLE `product_additions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_additions`
--
ALTER TABLE `product_additions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD CONSTRAINT `fk_stock_logs_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stock_logs_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
