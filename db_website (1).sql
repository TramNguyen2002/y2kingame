-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 07:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `acc_id` int(8) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `acc_phone` varchar(200) NOT NULL,
  `acc_address` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`acc_id`, `user_name`, `password`, `acc_name`, `acc_phone`, `acc_address`) VALUES
(1, 'tramnguyen', 'tram123', 'Nguyễn Ngọc Bảo Trâm', '0123456789', '43-45 Nguyễn Chí Thanh, phường 9, quận 5, TP. Hồ Chí Minh'),
(2, 'linhnguyen', 'linh123', 'Nguyễn Thị Phương Linh', '0458213874', '277 Phan Đình Phùng, phường 15, quận Phú Nhuận, TP HCM'),
(3, 'huyle', 'huy123', 'Lê Ngọc Huy', '0156789145', '8 Lê Thị Riêng, phường Phạm Ngũ Lão, quận 1, TP. Hồ Chí Minh'),
(4, 'anhtruong', 'anh123', 'Trương Ngọc Ánh', '0568794565', '23 Trương Định, phường 6, quận 3, TP. Hồ Chí Minh'),
(5, 'huenguyen', 'hue123', 'Nguyễn Thị Khánh Huệ', '0687451354', '5/99 Nơ Trang Long, phường 7, quận Bình Thạnh, TP. HCM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_item`
--

CREATE TABLE `tbl_cart_item` (
  `game_id` int(8) NOT NULL,
  `acc_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_item`
--

INSERT INTO `tbl_cart_item` (`game_id`, `acc_id`) VALUES
(31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Arcade'),
(4, 'Building'),
(5, 'Casual'),
(6, 'Fighting'),
(7, 'Indie'),
(8, 'JRPG'),
(9, 'RPG'),
(10, 'Puzzle'),
(11, 'Role-Playing'),
(12, 'Simulation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_game`
--

CREATE TABLE `tbl_game` (
  `game_id` int(8) NOT NULL,
  `category_id` int(8) NOT NULL,
  `game_name` varchar(200) NOT NULL,
  `game_intro` varchar(200) NOT NULL,
  `game_price` int(11) NOT NULL,
  `game_configuration` varchar(1000) NOT NULL,
  `game_developer` varchar(200) NOT NULL,
  `game_releasedate` date NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_game`
--

INSERT INTO `tbl_game` (`game_id`, `category_id`, `game_name`, `game_intro`, `game_price`, `game_configuration`, `game_developer`, `game_releasedate`, `image_url`) VALUES
(0, 1, 'God of War', 'His vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters. It is in this harsh, unforgiving world that he must fight to survive.', 850000, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 10 64-bit<br/>\r\nProcessor: Intel i5-6600k (4 core 3.5 GHz) or AMD Ryzen 5 2400 G (4 core 3.6 GHz)<br/>\r\nMemory: 8 GB RAM<br/>\r\nGraphics: NVIDIA GTX 1060 (6 GB) or AMD RX 570 (4 GB)<br/>\r\nDirectX: Version 11<br/>\r\nStorage: 70 GB available space<br/>\r\nAdditional Notes: DirectX feature level 11_1 required', 'Santa Monica Studio', '2022-01-14', 'https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/capsule_616x353.jpg?t=1650554420'),
(1, 1, 'GhostRunner GOG', 'Ghostrunner offers a unique single-player experience: fast-paced, violent combat, and an original setting that blends science fiction with post-apocalyptic themes. ', 733000, 'OS: Windows 7, 8.1, 10 x64<br/>\r\nProcessor: Intel Core i7-6700K (4 * 4000) or AMD Ryzen 5 1500X (4 * 3500) or equivalent<br/>\r\nMemory: 8 GB RAM<br/>\r\nGraphics: GeForce GTX 970 (4096 MB) or Radeon RX 5700 (8192 MB)<br/>\r\nStorage: 22 GB available space<br/>\r\nAdditional Notes: (60FPS, High settings, 1080p)', 'One More Level 3D Realms Slipgate Ironworks™ All In! Games', '2020-10-27', 'https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_Ghostrunner_image1600w.jpg'),
(2, 1, 'Sniper: Ghost Warrior', 'As a Ghost Warrior, an elite sniper in a highly trained special ops unit, your unique skills in the art of stalking, target detection, surveillance and shooting accuracy will determine mission success', 97000, 'OS: Windows® XP (SP3) / Vista™ (SP1) / 7<br/>\r\nProcessor: Intel Pentium 4 3,2 GHz, Intel<br/> Pentium D 2,66 GHz, AMD Athlon 64 3500+<br/>\r\nMemory: 1GB for XP / 2GB for Vista and 7<br/>\r\nGraphics: 256 MB RAM compatible with DX10.0 or DX9.0c, Shader Model 3.0<br/>\r\nCards: GeForce ( 6800/7600-7950/8600-8800/9600-9800/GTX 260-280 ) or Radeon (X1650-1950/ HD2400-2900 / 3650<br/>\r\nDirectX®: DirectX® 9.0c<br/>\r\nHard Drive: 6.5GB<br/>\r\nSound: Compatible with DirectX® 9.0c', 'City Interactive', '2010-06-24', 'https://images.gog-statics.com/d5525ae1ce5aaf97ddd32a7f57f84ccc9f010250122af691e045572a0d9fa571.jpg'),
(3, 1, 'MONSTER HUNTER RISE', 'Rise to the challenge and join the hunt! In Monster Hunter Rise, the latest installment in the award-winning and top-selling Monster Hunter series, you’ll become a hunter, explore brand new maps.', 1367700, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 10 （64-bit）<br/>\r\nProcessor: Intel® Core™ i5-4460 or AMD FX™-8300\r\nMemory: 8 GB RAM<br/>\r\nGraphics: NVIDIA® GeForce® GTX 1060 (VRAM 3GB) or AMD Radeon™ RX 570 (VRAM 4GB)<br/>\r\nDirectX: Version 12<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 23 GB available space<br/>\r\nAdditional Notes: 1080p/30fps when graphics settings are set to \"Average\". System requirements subject to change during game development.', 'CAPCOM Co., Ltd.', '2022-01-12', 'https://www.monsterhunter.com/rise/assets/images/common/share.png'),
(4, 1, 'IT TAKES TWO', 'Embark on the craziest journey of your life in It Takes Two. Invite a friend to join for free with Friend’s Pass and work together across a huge variety of gleefully disruptive gameplay challenges.', 766300, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 8.1 64-bit or Windows 10 64-bit<br/>\r\nProcessor: Intel Core i5 3570K or AMD Ryzen 3 1300x<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: Nvidia GeForce GTX 980 or AMD R9 290X<br/>\r\nDirectX: Version 11<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 50 GB available space', 'Hazelight', '2021-03-25', 'https://cdn.akamai.steamstatic.com/steam/apps/1426210/ss_6ce2d50261a94284c72164e2d6d3721fe2f00013.1920x1080.jpg?t=1679951279'),
(5, 1, 'BATTLEFIELD™ 2042', 'Be a class above in Season 4: Eleventh Hour. Battlefield™ 2042 is a first-person shooter that marks the return to the iconic all-out warfare of the franchise.', 960300, 'Requires a 64-bit processor and operating system<br/>\r\nOS: 64-bit Windows 10<br/>\r\nProcessor: AMD Ryzen 7 2700X, Intel Core i7 4790<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: AMD Radeon RX 6600 XT, Nvidia GeForce RTX 3060<br/>\r\nDirectX: Version 12<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 100 GB available space', 'Electronic Arts', '2021-11-19', 'https://cdn.akamai.steamstatic.com/steam/apps/1517290/header.jpg?t=1682430413'),
(6, 2, 'PLAYERUNKNOWN\'S BATTLEGROUNDS', 'LAND, LOOT, SURVIVE!<br/>\r\nLand on strategic locations, loot weapons and supplies, and survive to become the last team standing across various, diverse Battlegrounds.\r\nSquad up and join the Battlegrou', 329800, 'Requires a 64-bit processor and operating system<br/>\r\nOS: 64-bit Windows 7, Windows 8.1, Windows 10<br/>\r\nProcessor: Intel Core i5-6600K / AMD Ryzen 5 1600<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: NVIDIA GeForce GTX 1060 3GB / AMD Radeon RX 580 4GB<br/>\r\nDirectX: Version 11<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 50 GB available space', 'KRAFTON, Inc.', '2017-12-21', 'https://cdn.akamai.steamstatic.com/steam/apps/578080/header.jpg?t=1681115546'),
(7, 2, 'RUST', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 494700, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 11 64bit<br/>\r\nProcessor: Intel Core i7-4790K / AMD Ryzen 5 1600<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: GTX 980 / AMD R9 Fury<br/>\r\nDirectX: Version 12<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 25 GB available space<br/>\r\nAdditional Notes: SSD is highly recommended.', 'Facepunch Studios', '2018-02-08', 'https://cdn.akamai.steamstatic.com/steam/apps/252490/header.jpg?t=1678981332'),
(8, 2, 'ICARUS', 'Explore a savage wilderness in the aftermath of terraforming gone wrong. Survive the Open World, complete timed Missions or build your Outpost.', 271600, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 10 (64-bit versions)<br/>\r\nProcessor: Intel i7-9700<br/>\r\nMemory: 32 GB RAM<br/>\r\nGraphics: NVIDIA RTX 3060ti<br/>\r\nDirectX: Version 11<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 70 GB available space', 'RocketWerkz', '2021-12-03', 'https://cdn.akamai.steamstatic.com/steam/apps/1149460/header.jpg?t=1678051000'),
(9, 2, 'DAYS GONE', 'Ride and fight into a deadly, post pandemic America. Play as Deacon St. John, a drifter and bounty hunter who rides the broken road, fighting to survive.', 1070000, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 10 64-bits<br/>\r\nProcessor: Intel Core i7-4770K@3.5GHz or Ryzen 5 1500X@3.5GHz<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: Nvidia GeForce GTX 1060 (6 GB) or AMD Radeon RX 580 (8 GB)<br/>\r\nDirectX: Version 11<br/>\r\nStorage: 70 GB available space<br/>\r\nAdditional Notes: Though not required, SSD for storage is recommended', 'PlayStation Mobile, Inc.', '2021-05-17', 'https://cdn.akamai.steamstatic.com/steam/apps/1259420/header.jpg?t=1684177712'),
(10, 2, 'NEW WORLD', 'Explore a thrilling, open-world MMO filled with danger and opportunity where you\'ll forge a new destiny for yourself as an adventurer shipwrecked on the supernatural island of Aeternum. ', 455900, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows® 10 64-bit<br/>\r\nProcessor: Intel® Core™ i7-2600K / AMD Ryzen 5 1400<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: NVIDIA® GeForce® GTX 970 / AMD Radeon R9 390X or better<br/>\r\nDirectX: Version 12<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 50 GB available space<br/>\r\nAdditional Notes: Internet connection required to play, offers in-game purchases', 'Amazon Games', '2021-08-28', 'https://cdn.akamai.steamstatic.com/steam/apps/1063730/header.jpg?t=1683846413'),
(11, 2, 'THE CAT LADY', 'The Cat Lady follows Susan Ashworth, a lonely 40-year old on the verge of suicide. She has no family, no friends and no hope for a better future. \r\n', 137740, 'OS: Windows 7, 8, 10<br/>\r\nProcessor: Dual-core Intel or AMD CPU<br/>\r\nMemory: 1 GB RAM<br/>\r\nGraphics: NVIDIA or AMD ATI video card with 1GB of RAM (Nvidia GeForce GTX 260 or higher/ATI Radeon 4890 or higher)<br/>\r\nDirectX: Version 11<br/>\r\nStorage: 2 GB available space<br/>\r\nSound Card: DirectX compatible sound card<br/>\r\nAdditional Notes: Keyboard', 'Harvester Games', '2013-12-04', 'https://cdn.akamai.steamstatic.com/steam/apps/253110/header.jpg?t=1682162307'),
(12, 5, 'FALL GUYS: ULTIMATE KNOCKOUT', 'In \"Fall Guys\", players control jellybean-like characters and compete in mini-games until the last one standing is declared the winner, with up to 40 players and rounds of eliminations.', 182360, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 10 64bit only<br/>\r\nProcessor: Intel Core i5 or AMD equivalent<br/>\r\nMemory: 8 GB RAM<br/>\r\nGraphics: NVIDIA GTX 660 or AMD Radeon HD 7950<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 2 GB available space<br/>\r\nAdditional Notes: Gamepad Recommended', 'Mediatonic', '2020-08-03', 'https://th.bing.com/th/id/R.6440821dc65cfca8e8fb6f2c8aa9d686?rik=caGAoQq4nBpVgQ&pid=ImgRaw&r=0'),
(13, 5, 'NO PLACE LIKE HOME', 'Humanity Trashed the Earth and left for Mars. Only few remained. EXPLORE the world. Clean the environment, CRAFT with recycled resources. Domesticate animals.', 0, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 7/8/10 64-bit<br/>\r\nProcessor: 3.2 GHz Dual Core Processor<br/>\r\nMemory: 4 GB RAM<br/>\r\nGraphics: GTX 750 / Radeon HD 7770<br/>\r\nStorage: 5 GB available space', 'Chicken Launcher', '2022-03-12', 'https://steamlists.com/wp-content/uploads/2021/08/no-place-like-home-feather-location-tips-guide-0-steamlists-com-rdf34ewr3r4.jpg'),
(14, 5, 'FLOWSCAPE', 'Ever wanted to effortlessly paint beautiful landscapes where there are no mistakes and only happy accidents? FlowScape offers that with its built-in selection of trees, houses, forts, mountains,...', 160050, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 10<br/>\r\nProcessor: 2 GHz<br/>\r\nMemory: 12 GB RAM<br/>\r\nGraphics: 4 GB VRAM<br/>\r\nDirectX: Version 11<br/>\r\nStorage: 4 GB available space', 'Pixel Forest Games', '2019-08-15', 'https://th.bing.com/th/id/R.03f2d28a39ac46c1d83578f2de4bbbd6?rik=VlDd1KC0yQ%2bYFQ&pid=ImgRaw&r=0'),
(15, 5, 'LOST IN DUNGEON', 'Lost in Dungeon is a 2D game with classic rogue like elements and a new RPG playing method. Make you embark on the adventure journey at the same time, get a new experience and fun.\r\n', 0, 'OS: Windows7/8/10<br/>\r\nProcessor: Intel Core i5<br/>\r\nMemory: 8 GB RAM<br/>\r\nGraphics: NVIDIA Gef<br/>\r\nStorage: 300 MB available space<br/>\r\nSound Card: DirectX 11 Sound Device', 'GOCORE', '2021-02-11', 'https://th.bing.com/th/id/OIP.etpxyk94WLB2TdIQo2tljAHaEK?pid=ImgDet&rs=1'),
(16, 5, 'GHOST LAND', 'Collecting materials through maze, making props and figures by alchemy. Make a lot of gold coins to expand the size of shops and add a variety of new facilities.', 29100, 'OS: Windows XP/7/8/10<br/>\r\nProcessor: Intel Core2DUO 2GHz<br/>\r\nMemory: 512 MB RAM<br/>\r\nGraphics: DirectX or OpenGL compatible card<br/>\r\nDirectX: Version 9.0<br/>\r\nStorage: 125 MB available space<br/>\r\nSound Card: DirectX 9.0c compatible', 'TentacleGame', '2019-06-20', 'https://th.bing.com/th/id/R.937ec245ccac3bfde9ba2adf30e37070?rik=FCQ%2fgEYZWwJprQ&pid=ImgRaw&r=0'),
(17, 5, 'VAMPIRES\' MELODY', 'Chef Raylan and his mentor encountered a thunderstorm and a hostile party while gathering ingredients in the mountains. While escaping pursuit, Raylan stumbled upon a mysterious girl in a deep sleep..', 57230, 'OS: Windows® 7 SP1<br/>\r\nProcessor: Intel Core 2 Duo E4400 or equivalent CPU<br/>\r\nMemory: 1 GB RAM<br/>\r\nGraphics: DirectX 9.0c Compatible Graphics Card<br/>\r\nDirectX: Version 9.0c<br/>\r\nStorage: 2 GB available space<br/>\r\nSound Card: Direct X 9.0c Compatible Sound Card', 'AsicxArt', '2020-10-02', 'https://th.bing.com/th/id/R.8540263c8927fb8fe783cc82f32d7795?rik=25k8vFY7i7rc0Q&pid=ImgRaw&r=0'),
(18, 4, 'Cities: Skylines', 'The game introduces new game play elements to realize the thrill and hardships of creating and maintaining a real city whilst expanding on some well-established tropes of the city building experience.', 0, 'OS: Windows® 7 SP1<br/>\r\nProcessor: Intel Core 2 Duo E4400 or equivalent CPU<br/>\r\nMemory: 1 GB RAM<br/>\r\nGraphics: DirectX 9.0c Compatible Graphics Card<br/>\r\nDirectX: Version 9.0c<br/>\r\nStorage: 2 GB available space<br/>\r\nSound Card: Direct X 9.0c Compatible Sound Card', '\r\nColossal Order Ltd.\r\n', '2015-03-10', 'https://cdn.akamai.steamstatic.com/steam/apps/255710/header.jpg?t=1683626322'),
(19, 4, 'Sons Of The Forest', 'Sent to find a missing billionaire on a remote island, you find yourself in a cannibal-infested hellscape. Craft, build, and struggle to survive, alone or with friends.', 385000, 'Requires a 64-bit processor and operating system<br/>\r\nOS: 64-bit Windows 10<br/>\r\nProcessor: INTEL CORE I7-8700K or AMD RYZEN 5 3600X<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: NVIDIA GeForce 1080Ti or AMD Radeon RX 5700 XT<br/>\r\nDirectX: Version 11<br/>\r\nStorage: 20 GB available space<br/>\r\nAdditional Notes: SSD (Preferred)', '\r\nEndnight Games Ltd', '2023-02-24', 'https://cdn.akamai.steamstatic.com/steam/apps/1326470/header.jpg?t=1679677298'),
(20, 4, 'V Rising', 'As a newly awakened vampire, you must hunt for blood to regain your strength and avoid the sun to stay alive. Build your castle, explore the open world to conquer the land of the living.', 150500, 'Requires a 64-bit processor and operating system<br/>\r\nOS: Windows 10 64 bit<br/>\r\nProcessor: Intel Core i5-11600K, 3.9 GHz or AMD Ryzen 5 5600X, 3.7 GHz<br/>\r\nMemory: 12 GB RAM<br/>\r\nGraphics: NVIDIA GeForce GTX 1070, 8 GB or AMD Radeon RX 590, 8 GB<br/>\r\nDirectX: Version 11<br/>\r\nNetwork: Broadband Internet connection<br/>\r\nStorage: 7 GB available space', 'Stunlock Studios', '2022-05-17', 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/header_alt_assets_2.jpg?t=1684394834'),
(21, 4, 'Settlement Survival', 'Players lead a group of survivors in a city-building game, manipulating the landscape, managing resources, and developing trade routes to create a unique and prosperous town.', 131500, 'OS: Windows 10(64-Bit)<br/>\r\nProcessor: I5-4590 3.3GHZ 4 Core<br/>\r\nMemory: 16 GB RAM<br/>\r\nGraphics: NVDIA Geforce GTX-1050Ti 4GB<br/>\r\nDirectX: Version 11<br/>\r\nStorage: 2 GB available space', 'Gleamer Studio', '2022-10-24', 'https://cdn.akamai.steamstatic.com/steam/apps/1509510/header.jpg?t=1669961496'),
(22, 4, '', 'Build and manage a town in grasslands, snow fields, even in the underworld! Set up inns, weapon stores, and more to convince adventurers to come visit.\r\n', 99000, 'Requires a 64-bit processor and operating system\r\nOS: Windows 10 64bit\r\nProcessor: Intel Atom® x7-Z8750\r\nMemory: 1 GB RAM\r\nDirectX: Version 10\r\nStorage: 250 MB available space', 'Kairosoft Co.,Ltd', '2023-03-15', 'https://cdn.akamai.steamstatic.com/steam/apps/1983710/header.jpg?t=1684574059'),
(23, 4, 'Anno 1800', 'Lead the Industrial Revolution! Welcome to the dawn of the Industrial Age. The path you choose will define your world. Are you an innovator or an exploiter? A conqueror or a liberator?', 990000, 'Requires a 64-bit processor and operating system\r\nOS: Windows 8.1 or Windows 10(64-bit versions only)\r\nProcessor: Intel i5 4690k, AMD Ryzen 5 1400\r\nMemory: 8 GB RAM\r\nGraphics: NVIDIA GeForce 970 GTX or AMD Radeon RX 480 (4 GB of VRAM, Shader Model 5.1)\r\nDirectX: Version 12\r\nStorage: 60 GB available space', 'Ubisoft Mainz', '2019-04-19', 'https://cdn.akamai.steamstatic.com/steam/apps/916440/header.jpg?t=1681854014'),
(24, 9, 'Dota 2', 'Every day, millions of players worldwide enter battle as one of over a hundred Dota heroes. And no matter if it\'s their 10th hour of play or 1,000th, there\'s always something new to discover.', 0, 'OS: Windows 7 or newer\r\nProcessor: Dual core from Intel or AMD at 2.8 GHz\r\nMemory: 4 GB RAM\r\nGraphics: NVIDIA GeForce 8600/9600GT, ATI/AMD Radeon HD2600/3600\r\nDirectX: Version 11\r\nNetwork: Broadband Internet connection\r\nStorage: 60 GB available space\r\nSound Card: DirectX Compatible', 'Valve', '2013-07-10', 'https://cdn.akamai.steamstatic.com/steam/apps/570/header.jpg?t=1682639497'),
(25, 9, 'Hogwarts Legacy', 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', 990000, 'Requires a 64-bit processor and operating system\r\nOS: 64-bit Windows 10\r\nProcessor: Intel Core i7-8700 (3.2Ghz) or AMD Ryzen 5 3600 (3.6 Ghz)\r\nMemory: 16 GB RAM\r\nGraphics: NVIDIA GeForce 1080 Ti or AMD Radeon RX 5700 XT or INTEL Arc A770\r\nDirectX: Version 12\r\nStorage: 85 GB available space', 'Avalanche Software', '2023-02-11', 'https://cdn.akamai.steamstatic.com/steam/apps/990080/header.jpg?t=1680647016'),
(26, 9, 'Cyberpunk 2077', 'Cyberpunk 2077 is an open-world in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.', 990000, 'Requires a 64-bit processor and operating system\r\nOS: Windows 10\r\nProcessor: Intel Core i7-4790 or AMD Ryzen 3 3200G\r\nMemory: 12 GB RAM\r\nGraphics: GTX 1060 6GB / GTX 1660 Super or Radeon RX 590\r\nDirectX: Version 12\r\nStorage: 70 GB available space', 'CD PROJEKT RED', '2020-12-10', 'https://cdn.akamai.steamstatic.com/steam/apps/1091500/header.jpg?t=1680026109'),
(27, 9, 'Tales of Arise', 'Fight against 300 years of tyranny with a mysterious mask and the Blazing Sword, alongside an enigmatic girl, to recover lost memories and fight oppression in this tale of liberation.', 320000, 'Requires a 64-bit processor and operating system\r\nOS: Windows 10 (64-bit Only)\r\nProcessor: Intel Core i5-4590 or AMD FX-8350\r\nMemory: 8 GB RAM\r\nGraphics: GeForce GTX 970 or Radeon R9 390\r\nDirectX: Version 11\r\nStorage: 45 GB available space\r\nSound Card: DirectX compatible soundcard or onboard chipset', 'Bandai Namco Studios Inc.', '2021-08-10', 'https://cdn.akamai.steamstatic.com/steam/apps/740130/header.jpg?t=1676857943'),
(28, 9, 'Shadows of Doubt', 'Immerse yourself in a fully simulated sci-fi noir city of crime and corruption, take on jobs, catch a serial killer, and prevent them from striking again in this thrilling sandbox detective stealth ga', 260000, 'OS: Windows 11 or newer\r\nProcessor: Intel 9th Gen i5 or AMD Ryzen 5 3500\r\nMemory: 16 GB RAM\r\nGraphics: Nvidia GTX 3060 or Radeon RX 5700 XT\r\nDirectX: Version 11\r\nStorage: 4 GB available space', 'ColePowered Games', '2023-04-24', 'https://cdn.akamai.steamstatic.com/steam/apps/986130/header.jpg?t=1684317661'),
(29, 9, 'Volcano Princess', 'In this RPG game, players prepare the next monarch by discovering her hobbies, training her for battle, and making friends with her future citizens. ', 155000, 'Requires a 64-bit processor and operating system\r\nOS: Windows 10 or higher\r\nProcessor: 1.7 GHz Dual Core CPU\r\nMemory: 8 GB RAM\r\nGraphics: NVIDIA GeForce GTX 260, ATI Radeon 4870 HD, or equivalent card with at least 512 MB VRAM\r\nDirectX: Version 9.0c\r\nStorage: 5 GB available space', 'Egg Hatcher', '2023-04-21', 'https://cdn.akamai.steamstatic.com/steam/apps/1669980/header.jpg?t=1683625807'),
(30, 12, 'EA SPORTS™ FIFA 23', 'FIFA 23 brings The World’s Game to the pitch, with HyperMotion2 Technology, men’s and women’s FIFA World Cup™coming during the season, women’s club teams, cross-play features*, and more.', 327000, 'Requires a 64-bit processor and operating system\r\nOS: Windows 10 64-bit\r\nProcessor: Intel Core i7 6700 or AMD Ryzen 7 2700X\r\nMemory: 12 GB RAM\r\nGraphics: NVIDIA GeForce GTX 1660 or AMD Radeon RX 5600 XT\r\nDirectX: Version 12\r\nNetwork: Broadband Internet connection\r\nStorage: 100 GB available space', 'EA Canada & EA Romania', '2022-09-24', 'https://cdn.akamai.steamstatic.com/steam/apps/1811260/header.jpg?t=1682117049'),
(31, 12, 'APICO', 'APICO is combines resource gathering, biology, and minigames to breed, collect, and conserve bees in lush environments inspired by real-life and fantasy apiculture and floriculture.\r\n\r\n', 0, 'OS: Windows 7\r\nProcessor: Intel Core i5 (4th Gen)\r\nMemory: 4 MB RAM\r\nGraphics: Intel HD Integrated\r\nStorage: 250 MB available space\r\nSound Card: Integrated', 'ellraiser, TNgineers', '2020-05-20', 'https://cdn.akamai.steamstatic.com/steam/apps/1390190/header.jpg?t=1681248202'),
(32, 12, 'Planet Zoo', 'Planet Zoo allows players to build detailed habitats, manage their zoo, and interact with authentic living animals who think, feel, and explore the world created around them.\r\n\r\n', 721500, 'Requires a 64-bit processor and operating system\r\nOS: Windows 10 64bit\r\nProcessor: Intel i7-4770k / AMD Ryzen 5 1600\r\nMemory: 16 GB RAM\r\nGraphics: NVIDIA GeForce GTX 1070 (8GB) or AMD Radeon RX 580 (8GB)\r\nStorage: 16 GB available space', 'Frontier Developments', '2019-11-05', 'https://cdn.akamai.steamstatic.com/steam/apps/703080/header.jpg?t=1680775682'),
(33, 12, 'Hell Let Loose', 'Hell Let Loose is a hardcore World War Two first-person shooter game that features epic battles of 100 players with infantry, tanks, and artillery on a dynamically shifting front line.', 0, 'Requires a 64-bit processor and operating system\r\nOS: Windows 10 64bit\r\nProcessor: Intel Core i5-8400/AMD Ryzen 5 2600X\r\nMemory: 16 GB RAM\r\nGraphics: NVIDIA GeForce GTX 1060 6GB /AMD Radeon RX 590 8GB\r\nDirectX: Version 11\r\nNetwork: Broadband Internet connection\r\nStorage: 30 GB available space', 'Black Matter Pty Ltd', '2021-07-27', 'https://cdn.akamai.steamstatic.com/steam/apps/686810/header.jpg?t=1684487690'),
(34, 12, 'Stardew Valley', 'In Stardew Valley, you inherit your grandfather\'s old farm plot and must learn to live off the land using hand-me-down tools and a few coins, to turn the overgrown fields into a thriving home.', 165000, 'OS: Windows Vista or greater\r\nProcessor: 2 Ghz\r\nMemory: 2 GB RAM\r\nGraphics: 256 mb video memory, shader model 3.0+\r\nDirectX: Version 10\r\nStorage: 500 MB available space', 'ConcernedApe', '2016-02-27', 'https://cdn.akamai.steamstatic.com/steam/apps/413150/header.jpg?t=1666917466'),
(35, 12, 'theHunter: Call of the Wild™', 'Experience a visually breathtaking open-world and immersive hunting game either in a single-player campaign or with friends, creating the ultimate hunting experience in an atmosphere like no other.', 56500, 'Requires a 64-bit processor and operating system\r\nOS: 64bit OS - Windows 10\r\nProcessor: Intel i7 quad-core\r\nMemory: 8 GB RAM\r\nGraphics: NVidia GTX 760 / R9 270x - 4GB VRAM\r\nStorage: 60 GB available space', 'Expansive Worlds', '2017-02-16', 'https://cdn.akamai.steamstatic.com/steam/apps/518790/header.jpg?t=1683730161');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_game`
--

CREATE TABLE `tbl_image_game` (
  `image_id` int(8) NOT NULL,
  `image_link` varchar(200) NOT NULL,
  `game_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_image_game`
--

INSERT INTO `tbl_image_game` (`image_id`, `image_link`, `game_id`) VALUES
(1, 'https://cdn.akamai.steamstatic.com/steam/apps/1139900/ss_19fd7fbc2af22d1a12a1816e755280fd88cc74a9.1920x1080.jpg?t=1649349504', 1),
(2, 'https://cdn.akamai.steamstatic.com/steam/apps/1139900/ss_ea6a22809a8c0339c87043bc008d7ce6efdf2e00.1920x1080.jpg?t=1649349504', 1),
(3, 'https://cdn.akamai.steamstatic.com/steam/apps/1139900/ss_034ce61072ebb41127d4920da5c4cec0184513fa.1920x1080.jpg?t=1649349504', 1),
(4, 'https://cdn.akamai.steamstatic.com/steam/apps/1139900/ss_8f91ee2a403f257dce6ad4b199c4ef2079bb09ca.1920x1080.jpg?t=1649349504', 1),
(5, 'https://cdn.akamai.steamstatic.com/steam/apps/1139900/ss_b3685fcab4d6f60c9fd54ffe8757ccaaef803d9e.1920x1080.jpg?t=1649349504', 1),
(6, 'https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_Ghostrunner_image1600w.jpg', 1),
(7, 'https://cdn.akamai.steamstatic.com/steam/apps/1593500/ss_6eccc970b5de2943546d93d319be1b5c0618f21b.1920x1080.jpg?t=1642526157', 0),
(8, 'https://cdn.akamai.steamstatic.com/steam/apps/1593500/ss_93a3ca63aa2cd8c675bbb6430324ee3f2d44b845.1920x1080.jpg?t=1642526157', 0),
(9, 'https://cdn.akamai.steamstatic.com/steam/apps/1593500/ss_f1bff24d3967a21d303d95e11ed892e3d9113057.1920x1080.jpg?t=1642526157', 0),
(10, 'https://cdn.akamai.steamstatic.com/steam/apps/1593500/ss_1351cb512d008f7e47fc50b74197f4f8eb6f3419.1920x1080.jpg?t=1642526157', 0),
(11, 'https://cdn.akamai.steamstatic.com/steam/apps/1593500/ss_e0edce62c590bc063a90a1296184392d0a9521da.1920x1080.jpg?t=1642526157', 0),
(12, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/capsule_616x353.jpg?t=1650554420', 0),
(13, 'https://cdn.akamai.steamstatic.com/steam/apps/34830/ss_25f94a3345571e0dde9ae5369595fd50c8967298.1920x1080.jpg?t=1589356937', 2),
(14, 'https://cdn.akamai.steamstatic.com/steam/apps/34830/ss_008a9237f6290420d0416dd3f798ebfcbd704db8.1920x1080.jpg?t=1589356937', 2),
(15, 'https://cdn.akamai.steamstatic.com/steam/apps/34830/ss_5497bd6d2a47620e05c6a860e3d95e867783042a.1920x1080.jpg?t=1589356937', 2),
(16, 'https://cdn.akamai.steamstatic.com/steam/apps/34830/ss_bebaa778b74bbf2d4c7b4cf0fadbfefd18e58fca.1920x1080.jpg?t=1589356937', 2),
(17, 'https://cdn.akamai.steamstatic.com/steam/apps/34830/ss_de8950510c04510fca549fe2d5a4aa2ae6a63c98.1920x1080.jpg?t=1589356937', 2),
(18, 'https://images.gog-statics.com/d5525ae1ce5aaf97ddd32a7f57f84ccc9f010250122af691e045572a0d9fa571.jpg', 2),
(19, 'https://cdn.akamai.steamstatic.com/steam/apps/1446780/ss_3f1a758231a78ab3cdd76c2f8f04d5bbec45faeb.1920x1080.jpg?t=1633047889', 3),
(20, 'https://cdn.akamai.steamstatic.com/steam/apps/1446780/ss_961c552a99c5c64689bebf0e272b13c80947f644.1920x1080.jpg?t=1633047889', 3),
(21, 'https://cdn.akamai.steamstatic.com/steam/apps/1446780/ss_f8249da14987e3c2d10fd4024736f28774c713da.1920x1080.jpg?t=1633047889', 3),
(22, 'https://cdn.akamai.steamstatic.com/steam/apps/1446780/ss_d8d96313f1049c800d37a3fc521f06f926fca3ac.1920x1080.jpg?t=1633047889', 3),
(23, 'https://cdn.akamai.steamstatic.com/steam/apps/1446780/ss_25686086b61ca88a859bc20d588682be92ab4d63.1920x1080.jpg?t=1633047889', 3),
(24, 'https://www.monsterhunter.com/rise/assets/images/common/share.png', 3),
(25, 'https://cdn.akamai.steamstatic.com/steam/apps/1426210/ss_6ce2d50261a94284c72164e2d6d3721fe2f00013.1920x1080.jpg?t=1679951279', 4),
(26, 'https://cdn.akamai.steamstatic.com/steam/apps/1426210/ss_6f7b65b8613afbcb2616bff8ed0283d0629b6572.1920x1080.jpg?t=1679951279', 4),
(27, 'https://cdn.akamai.steamstatic.com/steam/apps/1426210/ss_fdac523e3ea4d2f32a44449bb8c224857563bd7d.1920x1080.jpg?t=1679951279', 4),
(28, 'https://cdn.akamai.steamstatic.com/steam/apps/1426210/ss_d7a931229cbf1cc25975bb5860cbde5b9bbc826a.1920x1080.jpg?t=1679951279', 4),
(29, 'https://cdn.akamai.steamstatic.com/steam/apps/1426210/ss_a15164ddd357ab3c0b2aff575a6b215b2d91b406.1920x1080.jpg?t=1679951279', 4),
(30, 'https://hanoicomputercdn.com/media/lib/24-05-2022/dia-game-ps4-it-takes-two-us-06.jpg', 4),
(31, 'https://cdn.akamai.steamstatic.com/steam/apps/1517290/ss_a02a7a8e8fe4602894334fb54da62878b58274c7.1920x1080.jpg?t=1678795998', 5),
(32, 'https://cdn.akamai.steamstatic.com/steam/apps/1517290/ss_428dc93f94174628c3ef3109be9486940410c2f9.1920x1080.jpg?t=1678795998', 5),
(33, 'https://cdn.akamai.steamstatic.com/steam/apps/1517290/ss_ecc9de8f6ae3efad349eac56437ac257417c915f.1920x1080.jpg?t=1678795998', 5),
(34, 'https://cdn.akamai.steamstatic.com/steam/apps/1517290/ss_4261d86b529e25fc88822b81ec5fa8a839fb1657.1920x1080.jpg?t=1678795998', 5),
(35, 'https://cdn.akamai.steamstatic.com/steam/apps/1517290/ss_34acecffb86b5522dbc44165c2c1ee317d7346ee.1920x1080.jpg?t=1678795998', 5),
(36, 'https://ecdn.game4v.com/g4v-content/uploads/2021/06/game4v-Battlefield-2042-1.jpg', 5),
(37, 'https://cdn.akamai.steamstatic.com/steam/apps/578080/ss_e2cbfefdff39b9cb8e080da8f30cc07223b041b9.1920x1080.jpg?t=1625829485', 6),
(38, 'https://cdn.akamai.steamstatic.com/steam/apps/578080/ss_4454f310776c626a76baeca2d05fd82bd17c6ee0.1920x1080.jpg?t=1625829485', 6),
(39, 'https://cdn.akamai.steamstatic.com/steam/apps/578080/ss_93e6e1fa807c3b3b09ce4e1e4800e7723dc308a1.1920x1080.jpg?t=1625829485', 6),
(40, 'https://cdn.akamai.steamstatic.com/steam/apps/578080/ss_abadb3bfc951cd05150901ff65386e3129c6011a.1920x1080.jpg?t=1625829485', 6),
(41, 'https://cdn.akamai.steamstatic.com/steam/apps/578080/ss_52773275afe4c34a84fbf38e9960a598a420b3c2.1920x1080.jpg?t=1625829485', 6),
(42, 'https://didongviet.vn/dchannel/wp-content/uploads/2022/07/1-playerunknowns-battlegrounds-didongviet.jpg', 6),
(43, 'https://cdn.akamai.steamstatic.com/steam/apps/252490/ss_271feae67943bdc141c1249aba116349397e9ba9.1920x1080.jpg?t=1678981332', 7),
(44, 'https://cdn.akamai.steamstatic.com/steam/apps/252490/ss_0e646f1a70e5cb8eed00efef8adb9579d40d5b2e.1920x1080.jpg?t=1678981332', 7),
(45, 'https://cdn.akamai.steamstatic.com/steam/apps/252490/ss_d0fdacaeef5a28a7cee525fd73376adfe083c964.1920x1080.jpg?t=1678981332', 7),
(46, 'https://cdn.akamai.steamstatic.com/steam/apps/252490/ss_bbf6c96e490326ec877ae548cb148e53516b5f83.1920x1080.jpg?t=1678981332', 7),
(47, 'https://cdn.akamai.steamstatic.com/steam/apps/252490/ss_9d2ad1cd00376605d6f9a778eb7bd1cddfd68ee1.1920x1080.jpg?t=1678981332', 7),
(48, 'https://didongviet.vn/dchannel/wp-content/uploads/2022/10/rust-didongviet.jpg', 7),
(49, 'https://cdn.akamai.steamstatic.com/steam/apps/1149460/ss_71323ca651735d89764fa9e62c5d1756a9b64d4f.600x338.jpg?t=1678051000', 8),
(50, 'https://cdn.akamai.steamstatic.com/steam/apps/1149460/ss_50cd8cb092b53aa8de019492c1539ee6ee43c641.600x338.jpg?t=1678051000', 8),
(51, 'https://cdn.akamai.steamstatic.com/steam/apps/1149460/ss_aeb661379948d1155e9636b72fec5ea0dbc4e726.600x338.jpg?t=1678051000', 8),
(52, 'https://cdn.akamai.steamstatic.com/steam/apps/1149460/ss_ea75b5076ae031f2a39ee4d5d0448d70ea8e54ed.600x338.jpg?t=1678051000', 8),
(53, 'https://cdn.akamai.steamstatic.com/steam/apps/1149460/ss_aa5a09717e6432d3bd61e6d7b20ac622c6f27502.600x338.jpg?t=1678051000', 8),
(54, 'https://cdn.akamai.steamstatic.com/steam/apps/1149460/header.jpg?t=1678051000', 8),
(55, 'https://cdn.akamai.steamstatic.com/steam/apps/1259420/header.jpg?t=1684177712', 9),
(56, 'https://cdn.akamai.steamstatic.com/steam/apps/1259420/ss_a947f551335679fbffcbe64a3ffcb939429ed533.600x338.jpg?t=1684177712', 9),
(57, 'https://cdn.akamai.steamstatic.com/steam/apps/1259420/ss_80bbb5ea187cc422012f7a84e694f20f87a26862.600x338.jpg?t=1684177712', 9),
(58, 'https://cdn.akamai.steamstatic.com/steam/apps/1259420/ss_364f3048399fcb95df5e878c708c94e934cd53d4.600x338.jpg?t=1684177712', 9),
(59, 'https://cdn.akamai.steamstatic.com/steam/apps/1259420/ss_4a1a39d5559909424ed36414070477a96c91e92c.600x338.jpg?t=1684177712', 9),
(60, 'https://cdn.akamai.steamstatic.com/steam/apps/1259420/ss_8d958e566d5315463d099b21eae729d0f462caad.600x338.jpg?t=1684177712', 9),
(61, 'https://cdn.akamai.steamstatic.com/steam/apps/1063730/header.jpg?t=1683846413', 10),
(62, 'https://cdn.akamai.steamstatic.com/steam/apps/1063730/ss_69bc3b480327fec7c9beda5bc99fa1c8e332824f.600x338.jpg?t=1683846413', 10),
(63, 'https://cdn.akamai.steamstatic.com/steam/apps/1063730/ss_50acb79b81ea2d94f591ff288b41d6e27ffc49b0.600x338.jpg?t=1683846413', 10),
(64, 'https://cdn.akamai.steamstatic.com/steam/apps/1063730/ss_77a6d19ec93dd872087026e5d9d47ac46b5c029f.600x338.jpg?t=1683846413', 10),
(65, 'https://cdn.akamai.steamstatic.com/steam/apps/1063730/ss_8765a66c81f098c6340547834b3207244482fe95.600x338.jpg?t=1683846413', 10),
(66, 'https://cdn.akamai.steamstatic.com/steam/apps/1063730/ss_75c46de3e645b812b2750cf8f619fd9dfae2ba69.600x338.jpg?t=1683846413', 10),
(67, 'https://cdn.akamai.steamstatic.com/steam/apps/253110/header.jpg?t=1682162307', 11),
(68, 'https://cdn.akamai.steamstatic.com/steam/apps/253110/ss_a961029c4764d0ba8f146c7243f7a3cefe17d107.600x338.jpg?t=1682162307', 11),
(69, 'https://cdn.akamai.steamstatic.com/steam/apps/253110/ss_9a4b240f41e51aad3da594ff636eba83e0ed198d.600x338.jpg?t=1682162307', 11),
(70, 'https://cdn.akamai.steamstatic.com/steam/apps/253110/ss_4bc23e8a42c763047b1b7cfc2516de25f150f27d.600x338.jpg?t=1682162307', 11),
(71, 'https://cdn.akamai.steamstatic.com/steam/apps/253110/ss_6518a7d7310aad5d6f8a17c2c5d2fb718b444167.116x65.jpg?t=1682162307', 11),
(72, 'https://cdn.akamai.steamstatic.com/steam/apps/253110/ss_f44f3ebef195a899f1bed8e6c29d5903a848a924.600x338.jpg?t=1682162307', 11),
(73, 'https://cdn.akamai.steamstatic.com/steam/apps/1472660/header.jpg?t=1683720882', 13),
(74, 'https://cdn.akamai.steamstatic.com/steam/apps/1472660/ss_0bd72fe5adf330da913ce74d15cd9bb0d757a14e.600x338.jpg?t=1683720882', 13),
(75, 'https://cdn.akamai.steamstatic.com/steam/apps/1472660/ss_7e70232901956237a4bc808a192ba8ca074b40fa.600x338.jpg?t=1683720882', 13),
(76, 'https://cdn.akamai.steamstatic.com/steam/apps/1472660/ss_533e209888acd4fddc2d2ee3e5fde0d2916c0c07.600x338.jpg?t=1683720882', 13),
(77, 'https://cdn.akamai.steamstatic.com/steam/apps/1472660/ss_91f5fb267d169efdbcd49adb16075adbe5dbcd96.600x338.jpg?t=1683720882', 13),
(78, 'https://cdn.akamai.steamstatic.com/steam/apps/1472660/ss_e222403b7f0c0eeedc05108b76bdde0f905fde91.600x338.jpg?t=1683720882', 13),
(79, 'https://th.bing.com/th/id/R.6440821dc65cfca8e8fb6f2c8aa9d686?rik=caGAoQq4nBpVgQ&pid=ImgRaw&r=0', 12),
(80, 'https://cdn.akamai.steamstatic.com/steam/apps/1097150/ss_936c5f2fdc434785caaeeb07c2b3fd1383c730b0.1920x1080.jpg?t=1646934357', 12),
(81, 'https://cdn.akamai.steamstatic.com/steam/apps/1097150/ss_936c5f2fdc434785caaeeb07c2b3fd1383c730b0.1920x1080.jpg?t=1646934357', 12),
(82, 'https://cdn.akamai.steamstatic.com/steam/apps/1097150/ss_cd7ffed84717a53ba36973515e9e9d68a4d8f474.1920x1080.jpg?t=1646934357', 12),
(83, 'https://cdn.akamai.steamstatic.com/steam/apps/1097150/ss_a738dbb787d5aef8d2f8348c0b8f54c7b8a0da3e.1920x1080.jpg?t=1646934357', 12),
(84, 'https://cdn.akamai.steamstatic.com/steam/apps/1097150/ss_bba3a7ac1ad5b76e3dec817d80ea01997d05a665.1920x1080.jpg?t=1646934357', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `ord_id` int(8) NOT NULL,
  `acc_id` int(8) NOT NULL,
  `ord_date` int(11) NOT NULL,
  `ord-status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `ord_id` int(8) NOT NULL,
  `game-id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`acc_id`),
  ADD UNIQUE KEY `acc_phone` (`acc_phone`);

--
-- Indexes for table `tbl_cart_item`
--
ALTER TABLE `tbl_cart_item`
  ADD PRIMARY KEY (`game_id`,`acc_id`),
  ADD KEY `tbl_cart_item_ibfk_1` (`acc_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_game`
--
ALTER TABLE `tbl_game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_image_game`
--
ALTER TABLE `tbl_image_game`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `tbl_order_ibfk_1` (`acc_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`ord_id`,`game-id`),
  ADD KEY `tbl_order_detail_ibfk_2` (`game-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `acc_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_image_game`
--
ALTER TABLE `tbl_image_game`
  MODIFY `image_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart_item`
--
ALTER TABLE `tbl_cart_item`
  ADD CONSTRAINT `tbl_cart_item_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `tbl_account` (`acc_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_cart_item_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `tbl_game` (`game_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_game`
--
ALTER TABLE `tbl_game`
  ADD CONSTRAINT `tbl_game_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_image_game`
--
ALTER TABLE `tbl_image_game`
  ADD CONSTRAINT `tbl_image_game_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `tbl_game` (`game_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `tbl_account` (`acc_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD CONSTRAINT `tbl_order_detail_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `tbl_order` (`ord_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_detail_ibfk_2` FOREIGN KEY (`game-id`) REFERENCES `tbl_game` (`game_id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
