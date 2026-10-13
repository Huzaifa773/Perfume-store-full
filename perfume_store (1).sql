-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2026 at 09:42 PM
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
-- Database: `perfume_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `providerAccountId` varchar(191) NOT NULL,
  `refresh_token` text DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `token_type` varchar(191) DEFAULT NULL,
  `scope` varchar(191) DEFAULT NULL,
  `id_token` text DEFAULT NULL,
  `session_state` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `fullName` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `line1` varchar(191) NOT NULL,
  `line2` varchar(191) DEFAULT NULL,
  `city` varchar(191) NOT NULL,
  `province` varchar(191) NOT NULL,
  `postalCode` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT 'Pakistan',
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `userId`, `fullName`, `phone`, `line1`, `line2`, `city`, `province`, `postalCode`, `country`, `isDefault`, `createdAt`, `updatedAt`) VALUES
('cmv6j5asl00133hvpowfj1bia', 'cmv6j5arx000x3hvpe0sayras', 'Demo Customer', '+92 300 1111111', '123 Clifton Block 5', NULL, 'Karachi', 'Sindh', '75600', 'Pakistan', 1, '2026-10-13 10:20:19.558', '2026-10-13 10:20:19.558'),
('cmv6jjjdt000a6982vxhecis8', 'cmv6jjjdt00096982fiwnycn8', 'Yasir', '03124584512', 'orangi twon', NULL, 'Karachi', 'Pakistan', '', 'Pakistan', 1, '2026-10-13 10:31:23.874', '2026-10-13 10:31:23.874'),
('cmv6jllhn000c6982cl0qxzzm', 'cmv6jjjdt00096982fiwnycn8', 'Yasir', '03215154152', 'orangi twon', NULL, 'Karachi', 'Sindh', '00000', 'Pakistan', 0, '2026-10-13 10:32:59.913', '2026-10-13 10:32:59.913'),
('cmv71001d0001gpk34gn2hw62', 'cmv71001a0000gpk39d327m4c', 'shabbir', '0312781527', 'orangi twon', NULL, 'Karachi', 'Pakistan', '', 'Pakistan', 1, '2026-10-13 18:40:05.421', '2026-10-13 18:40:05.421'),
('cmv72qb7l0001k1hgebh2vx0l', 'cmv71001a0000gpk39d327m4c', 'shabbir', '03215154152', 'orangi twon', NULL, 'Karachi', 'Sindh', '00000', 'Pakistan', 0, '2026-10-13 19:28:32.567', '2026-10-13 19:28:32.567');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `userId`, `createdAt`, `updatedAt`) VALUES
('cmv6j5as1000z3hvps9t4dxjw', 'cmv6j5arx000x3hvpe0sayras', '2026-10-13 10:20:19.538', '2026-10-13 10:20:19.538');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` varchar(191) NOT NULL,
  `cartId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `isActive`, `createdAt`, `updatedAt`) VALUES
('cmv6j5a7j00003hvpguz9avvo', 'Men\'s Perfumes', 'mens-perfumes', 'Bold, timeless scents crafted for men.', NULL, 1, '2026-10-13 10:20:18.798', '2026-10-13 10:20:18.798'),
('cmv6j5a8500013hvpac1j2p4b', 'Women\'s Perfumes', 'womens-perfumes', 'Elegant, refined fragrances for women.', NULL, 1, '2026-10-13 10:20:18.822', '2026-10-13 10:20:18.822'),
('cmv6j5a8800023hvpy2dd8wsd', 'Unisex Perfumes', 'unisex-perfumes', 'Fragrances designed to be worn by anyone.', NULL, 1, '2026-10-13 10:20:18.825', '2026-10-13 10:20:18.825'),
('cmv6j5a8f00033hvphmxml82l', 'Oud', 'oud', 'Rich, woody oud-based fragrances.', NULL, 1, '2026-10-13 10:20:18.832', '2026-10-13 10:20:18.832'),
('cmv6j5a8j00043hvp4dq9csc4', 'Attar', 'attar', 'Alcohol-free traditional concentrated oils.', NULL, 1, '2026-10-13 10:20:18.836', '2026-10-13 10:20:18.836'),
('cmv6j5a8n00053hvp9b1d85ls', 'Gift Sets', 'gift-sets', 'Curated fragrance sets, perfect for gifting.', NULL, 1, '2026-10-13 10:20:18.840', '2026-10-13 10:20:18.840'),
('cmv6j5a8r00063hvp26ec42tt', 'Premium Collection', 'premium-collection', 'Our most luxurious, limited fragrances.', NULL, 1, '2026-10-13 10:20:18.844', '2026-10-13 10:20:18.844'),
('cmv6j5a8v00073hvp7j1jj2wa', 'New Arrivals', 'new-arrivals', 'The latest additions to our catalog.', NULL, 1, '2026-10-13 10:20:18.847', '2026-10-13 10:20:18.847'),
('cmv6jdgq000006982ovhpm62b', 'men', 'men', NULL, NULL, 1, '2026-10-13 10:26:40.488', '2026-10-13 10:26:40.488');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(191) NOT NULL,
  `orderNumber` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `addressId` varchar(191) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `shippingCost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL,
  `paymentMethod` enum('COD','BANK_TRANSFER','JAZZCASH','EASYPAISA','SAFEPAY') NOT NULL,
  `paymentStatus` enum('PENDING','PAID','FAILED','REFUNDED') NOT NULL DEFAULT 'PENDING',
  `orderStatus` enum('PENDING','CONFIRMED','PROCESSING','SHIPPED','DELIVERED','CANCELLED') NOT NULL DEFAULT 'PENDING',
  `customerName` varchar(191) NOT NULL,
  `customerEmail` varchar(191) NOT NULL,
  `customerPhone` varchar(191) NOT NULL,
  `notes` text DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderNumber`, `userId`, `addressId`, `subtotal`, `shippingCost`, `discount`, `total`, `paymentMethod`, `paymentStatus`, `orderStatus`, `customerName`, `customerEmail`, `customerPhone`, `notes`, `createdAt`, `updatedAt`) VALUES
('cmv6jlli5000e6982u880ja7s', 'ORD-2026-4822', 'cmv6jjjdt00096982fiwnycn8', 'cmv6jllhn000c6982cl0qxzzm', 9000.00, 350.00, 0.00, 9350.00, 'EASYPAISA', 'PAID', 'CONFIRMED', 'Yasir', 'yasir@gmail.com', '03215154152', '', '2026-10-13 10:32:59.933', '2026-10-13 10:36:26.400'),
('cmv72qb920003k1hgqlx1ia0x', 'ORD-2026-3008', 'cmv71001a0000gpk39d327m4c', 'cmv72qb7l0001k1hgebh2vx0l', 29900.00, 0.00, 0.00, 29900.00, 'EASYPAISA', 'PAID', 'CONFIRMED', 'shabbir', 'shabbir@gmail.com', '03215154152', '', '2026-10-13 19:28:32.630', '2026-10-13 19:29:21.725');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` varchar(191) NOT NULL,
  `orderId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `orderId`, `productId`, `name`, `price`, `quantity`, `createdAt`) VALUES
('cmv6jlli5000g6982y2vqiwq0', 'cmv6jlli5000e6982u880ja7s', 'cmv6jf24d000669822in5u2qp', 'white Uadd', 4500.00, 2, '2026-10-13 10:32:59.933'),
('cmv72qb920005k1hg719b8ot2', 'cmv72qb920003k1hgqlx1ia0x', 'cmv6j5a9x000d3hvpct0keo18', 'Velvet Oud Royale', 29900.00, 1, '2026-10-13 19:28:32.630');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` varchar(191) NOT NULL,
  `orderId` varchar(191) NOT NULL,
  `method` enum('COD','BANK_TRANSFER','JAZZCASH','EASYPAISA','SAFEPAY') NOT NULL,
  `status` enum('INITIATED','AWAITING_VERIFICATION','SUCCESS','FAILED','CANCELLED') NOT NULL DEFAULT 'INITIATED',
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(191) NOT NULL DEFAULT 'PKR',
  `gatewayTxnId` varchar(191) DEFAULT NULL,
  `gatewayReference` varchar(191) DEFAULT NULL,
  `gatewayRawResponse` longtext DEFAULT NULL,
  `proofImageUrl` varchar(191) DEFAULT NULL,
  `verifiedById` varchar(191) DEFAULT NULL,
  `verifiedAt` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discountPrice` decimal(10,2) DEFAULT NULL,
  `brand` varchar(191) NOT NULL,
  `size` varchar(191) NOT NULL,
  `fragranceType` enum('EAU_DE_PARFUM','EAU_DE_TOILETTE','EAU_DE_COLOGNE','PARFUM_EXTRAIT','ATTAR','BODY_MIST') NOT NULL,
  `sku` varchar(191) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `isBestSeller` tinyint(1) NOT NULL DEFAULT 0,
  `isNewArrival` tinyint(1) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`notes`)),
  `targetPage` varchar(191) NOT NULL DEFAULT 'shop',
  `image_1` text DEFAULT NULL,
  `image_2` text DEFAULT NULL,
  `categoryId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `discountPrice`, `brand`, `size`, `fragranceType`, `sku`, `stock`, `isFeatured`, `isBestSeller`, `isNewArrival`, `isActive`, `notes`, `targetPage`, `image_1`, `image_2`, `categoryId`, `createdAt`, `updatedAt`) VALUES
('cmv6j5a9100093hvppurd5fje', 'Noir Absolu', 'noir-absolu', 'A deep, smoky blend of oud, amber and dark spices for the evening.', 18500.00, 15900.00, 'Maison Charcoal', '100ml', 'EAU_DE_PARFUM', 'PF-NOIR-100', 40, 1, 1, 0, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a7j00003hvpguz9avvo', '2026-10-13 10:20:18.851', '2026-10-13 10:20:18.851'),
('cmv6j5a9l000b3hvppc9ks71w', 'Golden Iris', 'golden-iris', 'Powdery iris and champagne accord wrapped in warm vanilla.', 21000.00, NULL, 'Maison Charcoal', '50ml', 'EAU_DE_PARFUM', 'PF-IRIS-50', 25, 1, 0, 1, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8500013hvpac1j2p4b', '2026-10-13 10:20:18.873', '2026-10-13 10:20:18.873'),
('cmv6j5a9x000d3hvpct0keo18', 'Velvet Oud Royale', 'velvet-oud-royale', 'Premium Cambodian oud layered with saffron and rose.', 34500.00, 29900.00, 'Oud Heritage', '50ml', 'PARFUM_EXTRAIT', 'PF-OUDR-50', 15, 1, 1, 0, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8f00033hvphmxml82l', '2026-10-13 10:20:18.885', '2026-10-13 10:20:18.885'),
('cmv6j5aa8000f3hvplyc73jl5', 'Musk Al Ameer Attar', 'musk-al-ameer-attar', 'Traditional alcohol-free white musk attar oil.', 8900.00, NULL, 'Al Ameer', '12ml', 'ATTAR', 'PF-ATTAR-12', 60, 0, 0, 1, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8j00043hvp4dq9csc4', '2026-10-13 10:20:18.896', '2026-10-13 10:20:18.896'),
('cmv6j5aah000h3hvppuvzyp4j', 'Citrus Neutral', 'citrus-neutral', 'Fresh bergamot and white tea, light enough for daily wear by anyone.', 12500.00, 10900.00, 'Maison Charcoal', '100ml', 'EAU_DE_TOILETTE', 'PF-CIT-100', 55, 0, 1, 0, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8800023hvpy2dd8wsd', '2026-10-13 10:20:18.905', '2026-10-13 10:20:18.905'),
('cmv6j5aap000j3hvphtufn1pu', 'Royal Duo Gift Set', 'royal-duo-gift-set', 'A matching his-and-hers 50ml gift set in a satin box.', 27500.00, 24900.00, 'Maison Charcoal', '2 x 50ml', 'EAU_DE_PARFUM', 'PF-GIFT-02', 20, 1, 0, 0, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8n00053hvp9b1d85ls', '2026-10-13 10:20:18.914', '2026-10-13 10:20:18.914'),
('cmv6j5aay000l3hvplsz8gyx0', 'Amber Nocturne', 'amber-nocturne', 'Smoky amber, tobacco leaf and dark chocolate for cold nights.', 19800.00, NULL, 'Noir House', '75ml', 'EAU_DE_PARFUM', 'PF-AMBN-75', 30, 0, 1, 0, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a7j00003hvpguz9avvo', '2026-10-13 10:20:18.922', '2026-10-13 10:20:18.922'),
('cmv6j5ab6000n3hvp7z6h2q1r', 'Rose Cashmere', 'rose-cashmere', 'Turkish rose petals blended into soft cashmere musk.', 23500.00, 19900.00, 'Maison Charcoal', '50ml', 'EAU_DE_PARFUM', 'PF-ROSE-50', 18, 1, 0, 0, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8500013hvpac1j2p4b', '2026-10-13 10:20:18.931', '2026-10-13 10:20:18.931'),
('cmv6j5abh000p3hvpxnqf08ho', 'Sultan\'s Oud Extrait', 'sultans-oud-extrait', 'Our most concentrated, longest-lasting oud extrait — limited batch.', 45900.00, NULL, 'Oud Heritage', '30ml', 'PARFUM_EXTRAIT', 'PF-SULT-30', 8, 1, 0, 0, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8r00063hvp26ec42tt', '2026-10-13 10:20:18.941', '2026-10-13 10:20:18.941'),
('cmv6j5abo000r3hvpxtmb34eb', 'Fresh Linen Mist', 'fresh-linen-mist', 'A light body mist with notes of clean cotton and white musk.', 6900.00, 5900.00, 'Everyday Co.', '150ml', 'BODY_MIST', 'PF-LINEN-150', 80, 0, 0, 1, 1, NULL, 'shop', NULL, NULL, 'cmv6j5a8800023hvpy2dd8wsd', '2026-10-13 10:20:18.948', '2026-10-13 10:20:18.948'),
('cmv6jdgqi00026982to5keofo', 'Rose', 'rose-mv6jdgp8', 'An artisanal luxury formulation.', 450.00, 350.00, 'Maison Charcoal', '100ml Eau De Parfum', 'EAU_DE_PARFUM', 'MC-87200502-395', 35, 1, 0, 1, 1, '{\"top\":[],\"heart\":[],\"base\":[]}', 'men', NULL, NULL, 'cmv6jdgq000006982ovhpm62b', '2026-10-13 10:26:40.505', '2026-10-13 10:26:40.505'),
('cmv6jf24d000669822in5u2qp', 'white Uadd', 'white-uadd-mv6jf247', 'An artisanal luxury formulation.', 5000.00, 4500.00, 'Maison Charcoal', '100ml Eau De Parfum', 'EAU_DE_PARFUM', 'MC-87274875-42', 35, 1, 0, 1, 1, '{\"top\":[],\"heart\":[],\"base\":[]}', 'shop', NULL, NULL, 'cmv6jdgq000006982ovhpm62b', '2026-10-13 10:27:54.877', '2026-10-13 10:27:54.877');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `altText` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `productId`, `url`, `altText`, `position`, `createdAt`) VALUES
('cmv6j5a9100093hvppurd5fje-seed-0', 'cmv6j5a9100093hvppurd5fje', '/images/products/p1.jpg', 'Noir Absolu', 0, '2026-10-13 10:20:18.868'),
('cmv6j5a9l000b3hvppc9ks71w-seed-0', 'cmv6j5a9l000b3hvppc9ks71w', '/images/products/p2.jpg', 'Golden Iris', 0, '2026-10-13 10:20:18.879'),
('cmv6j5a9x000d3hvpct0keo18-seed-0', 'cmv6j5a9x000d3hvpct0keo18', '/images/products/p3.jpg', 'Velvet Oud Royale', 0, '2026-10-13 10:20:18.891'),
('cmv6j5aa8000f3hvplyc73jl5-seed-0', 'cmv6j5aa8000f3hvplyc73jl5', '/images/products/p4.jpg', 'Musk Al Ameer Attar', 0, '2026-10-13 10:20:18.901'),
('cmv6j5aah000h3hvppuvzyp4j-seed-0', 'cmv6j5aah000h3hvppuvzyp4j', '/images/products/p5.jpg', 'Citrus Neutral', 0, '2026-10-13 10:20:18.909'),
('cmv6j5aap000j3hvphtufn1pu-seed-0', 'cmv6j5aap000j3hvphtufn1pu', '/images/products/p6.jpg', 'Royal Duo Gift Set', 0, '2026-10-13 10:20:18.918'),
('cmv6j5aay000l3hvplsz8gyx0-seed-0', 'cmv6j5aay000l3hvplsz8gyx0', '/images/products/p7.jpg', 'Amber Nocturne', 0, '2026-10-13 10:20:18.927'),
('cmv6j5ab6000n3hvp7z6h2q1r-seed-0', 'cmv6j5ab6000n3hvp7z6h2q1r', '/images/products/p8.jpg', 'Rose Cashmere', 0, '2026-10-13 10:20:18.935'),
('cmv6j5abh000p3hvpxnqf08ho-seed-0', 'cmv6j5abh000p3hvpxnqf08ho', '/images/products/p9.jpg', 'Sultan\'s Oud Extrait', 0, '2026-10-13 10:20:18.945'),
('cmv6j5abo000r3hvpxtmb34eb-seed-0', 'cmv6j5abo000r3hvpxtmb34eb', '/images/products/p10.jpg', 'Fresh Linen Mist', 0, '2026-10-13 10:20:18.952'),
('cmv6jdgqi00036982mdeztm29', 'cmv6jdgqi00026982to5keofo', '/api/images/1791887189750-png2.jpeg', NULL, 0, '2026-10-13 10:26:40.505'),
('cmv6jdgqi000469822xe3b5mz', 'cmv6jdgqi00026982to5keofo', '/api/images/1791887198225-png.jpg', NULL, 1, '2026-10-13 10:26:40.505'),
('cmv6jf24d000769828068xlpp', 'cmv6jf24d000669822in5u2qp', '/images/products/p1.jpg', NULL, 0, '2026-10-13 10:27:54.877'),
('cmv6jf24d000869824swdw6o3', 'cmv6jf24d000669822in5u2qp', '/images/products/p2.jpg', NULL, 1, '2026-10-13 10:27:54.877');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `sessionToken` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `expires` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `emailVerified` datetime(3) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `passwordHash` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `role` enum('CUSTOMER','ADMIN') NOT NULL DEFAULT 'CUSTOMER',
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `emailVerified`, `phone`, `passwordHash`, `image`, `role`, `isActive`, `createdAt`, `updatedAt`) VALUES
('cmv6j5akg000w3hvptp8kzkg9', 'Store Admin', 'huzaifa2409e@aptechorangi.com', NULL, '+92 300 0000000', '$2a$12$zNr7DfZwKPeXDGruPlrFnuO6.KvIoN/lg9ch7/SnFxxuMV2.0LoS2', NULL, 'ADMIN', 1, '2026-10-13 10:20:19.264', '2026-10-13 10:20:19.264'),
('cmv6j5arx000x3hvpe0sayras', 'Demo Customer', 'customer@demo-perfume.test', NULL, '+92 300 1111111', '$2a$12$t0opTIsBJHRKhdQFsqLjk.73vFVi5W2.26dRQnLdMN1Z14qvAeP3K', NULL, 'CUSTOMER', 1, '2026-10-13 10:20:19.533', '2026-10-13 10:20:19.533'),
('cmv6jjjdt00096982fiwnycn8', 'Yasir', 'yasir@gmail.com', NULL, '03124584512', '$2a$10$qYv//eudbw1qLw8a.MZjpeGm0Wuq.DBKNSUHJr0NbGyeacTp//rie', '/images/products/placeholder.jpg', 'CUSTOMER', 1, '2026-10-13 10:31:23.874', '2026-10-13 10:31:23.874'),
('cmv71001a0000gpk39d327m4c', 'shabbir', 'shabbir@gmail.com', NULL, '0312781527', '$2a$10$Op5DiQvHUqL5cYWcDRf9LeFYa9AH2ynUJl8oD1HKp8t4XnaFJXs1a', '/images/products/placeholder.jpg', 'CUSTOMER', 1, '2026-10-13 18:40:05.421', '2026-10-13 18:40:05.421');

-- --------------------------------------------------------

--
-- Table structure for table `verification_tokens`
--

CREATE TABLE `verification_tokens` (
  `identifier` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `expires` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `userId`, `createdAt`) VALUES
('cmv6j5asa00113hvphud2pw0v', 'cmv6j5arx000x3hvpe0sayras', '2026-10-13 10:20:19.546');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` varchar(191) NOT NULL,
  `wishlistId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('8db55f31-c61e-40cb-9663-d23be6bffa5f', '53fea1a4b00a4d5b5b7e750f8bb0f22bb1cad6dc8c8a5186151685188459a2d1', '2026-10-13 10:20:16.889', '20261013102015_add_cascade_delete', NULL, NULL, '2026-10-13 10:20:15.718', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_provider_providerAccountId_key` (`provider`,`providerAccountId`),
  ADD KEY `accounts_userId_idx` (`userId`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_userId_idx` (`userId`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_userId_key` (`userId`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_items_cartId_productId_key` (`cartId`,`productId`),
  ADD KEY `cart_items_productId_idx` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_key` (`name`),
  ADD UNIQUE KEY `categories_slug_key` (`slug`),
  ADD KEY `categories_isActive_idx` (`isActive`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderNumber_key` (`orderNumber`),
  ADD KEY `orders_userId_idx` (`userId`),
  ADD KEY `orders_orderStatus_idx` (`orderStatus`),
  ADD KEY `orders_paymentStatus_idx` (`paymentStatus`),
  ADD KEY `orders_addressId_fkey` (`addressId`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_orderId_idx` (`orderId`),
  ADD KEY `order_items_productId_idx` (`productId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_orderId_idx` (`orderId`),
  ADD KEY `payments_status_idx` (`status`),
  ADD KEY `payments_method_idx` (`method`),
  ADD KEY `payments_verifiedById_fkey` (`verifiedById`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_key` (`slug`),
  ADD UNIQUE KEY `products_sku_key` (`sku`),
  ADD KEY `products_categoryId_idx` (`categoryId`),
  ADD KEY `products_isFeatured_idx` (`isFeatured`),
  ADD KEY `products_isBestSeller_idx` (`isBestSeller`),
  ADD KEY `products_isNewArrival_idx` (`isNewArrival`),
  ADD KEY `products_isActive_idx` (`isActive`);
ALTER TABLE `products` ADD FULLTEXT KEY `products_name_brand_idx` (`name`,`brand`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_productId_idx` (`productId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviews_userId_productId_key` (`userId`,`productId`),
  ADD KEY `reviews_productId_idx` (`productId`),
  ADD KEY `reviews_rating_idx` (`rating`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sessions_sessionToken_key` (`sessionToken`),
  ADD KEY `sessions_userId_idx` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`),
  ADD KEY `users_role_idx` (`role`);

--
-- Indexes for table `verification_tokens`
--
ALTER TABLE `verification_tokens`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_userId_key` (`userId`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlist_items_wishlistId_productId_key` (`wishlistId`,`productId`),
  ADD KEY `wishlist_items_productId_idx` (`productId`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cartId_fkey` FOREIGN KEY (`cartId`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_addressId_fkey` FOREIGN KEY (`addressId`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_verifiedById_fkey` FOREIGN KEY (`verifiedById`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_items_wishlistId_fkey` FOREIGN KEY (`wishlistId`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
