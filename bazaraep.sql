-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2020 at 11:11 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazaraep`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_02_191947_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `body`) VALUES
(13, '2020-03-07 17:58:17', '2020-03-07 17:58:17', 'Apsirin', 'Lek ASPIRIN protect se upotrebljava:\r\n Obavezno konsultujte Vašeg lekara pre nego što prvi put primenite ovaj lek.\r\n Za smanjenje rizika smrtnosti kod pacijenata kod kojih se sumnja na akutni srčani infarkt;\r\n Za smanjenje rizika od smrtnosti i oboljenja kod pacijenata koji su ranije imali srčani infarkt;\r\n Za sekundarno sprečavanje moždanog udara;\r\n Za smanjenje rizika od pojave tranzitornih ishemijskih napada (TIA-prolaznog smanjenja protoka krvi u\r\nmozgu) i moždanog udara kod pacijenata koji pate od TIA;\r\n Za smanjenje rizika od oboljenja i smrti kod pacijenata sa stabilnom i nestabilnom anginom pectoris;\r\n Za prevenciju tromboembolije posle operacije na krvnom sudu ili hirurške intervencije, npr. PTCA,\r\nCABG, karotidne endarterektomije, arteriovenskih šantova kod pacijenata na dijalizi;\r\n Za profilaksu duboke venske tromboze i embolije pluća posle dugotrajne imobilizacije, npr. posle većeg\r\nhiruškog zahvata;\r\n Za smanjenje rizika od pojave prvog infarkta miokarda kod ljudi sa faktorima rizika za oboljevanje od\r\nsrčanih bolesti i bolesti krvnih sudova, npr. šećerna bolest, hiperlipidemije (povećanje koncentracije\r\nlipida u krvi), hipertenzije (povišenog krvnog pritiska), gojaznosti, pušenja, starosti.'),
(14, '2020-03-07 17:59:24', '2020-03-07 17:59:24', 'Brufen', 'BRUFEN®\r\n je antiinflamatorni i antireumatski lek namenjen za lečenje reumatskih i nereumatskih bolesti\r\nmišićno-koštanog sistema. BRUFEN®\r\n se upotrebljava u terapiji bola i zapaljenja kod reumatoidnog artritisa\r\n(uključujući juvenilni reumatoidni artritis), artritisa kičme(ankilozirajućeg spondilitisa), osteoartritisa,\r\nnereumatoidnih oboljenja zglobova, vanzglobnog reumatizma (ukočeno \"sleñeno\" rame, tendinitis-zapaljenje\r\ntetiva, tendosinovitis-zapaljenje tetivnog omotača, burzitis-zapaljenje serozne kese).\r\nDelotvoran je protiv bolova nakon povrede mekih tkiva, kod bolova u donjem delu leña (lumbosakralnom delu\r\nkičme), kod uganuća, istegnuća, kod bolnih menstruacija, za glavobolju (uključujući migrenu), zubobolju i\r\nbolove nakon operativnih zahvata.\r\nBRUFEN®\r\n smanjuje bol, snižava povišenu telesnu temperaturu i uklanja znake zapaljenjskog procesa.'),
(15, '2020-03-07 18:00:14', '2020-03-07 18:00:14', 'Panadol', 'Panadol® je analgetik (lek za ublažavanje blagih do umerenih bolova) i antipiretik (snižava povišenu telesnu temperaturu).\r\n\r\nPanadol® efikasno otklanja blage do umerene bolove, kao što su glavobolja uključujući i migrenu i tenzionu glavobolju. Takođe je efikasan u lečenju bola u leđima, reumatskih bolova, mišićnog bola, neuralnog bola, zubobolje i menstrualnih bolova.\r\n\r\nPanadol® ublažava groznicu i bolove koji prate grip i prehladu.'),
(16, '2020-03-07 18:01:08', '2020-03-07 18:01:08', 'Rapten K', 'Lek Rapten-K kao aktivnu supstancu sadrži diklofenak-kalijum koji pripada grupi lekova poznatoj kao\r\nnesteroidni antiinflamatorni lekovi (NSAIL). Ovi lekovi se koriste za ublažavanje bola i zapaljenja.\r\nLek Rapten-K se koristi za ublažavanje bola, smanjivanje otoka i smirivanje zapaljenja kod:\r\n• zapaljenjskih reumatskih bolesti - reumatoidni artritis, osteoartroza, akutni giht, ankilozirajući spondilitis\r\n• bolova u lumbalnom (slabinskom) delu leđa\r\n• migrene\r\n• medicinskih stanja koja zahvataju zglobove i mišiće, kao što su: uganuća, istegnuća, sportske povrede\r\nmekih tkiva, „ smrznuto rame“, iščašenje, kao i kod preloma\r\n• medicinskih stanja koja zahvataju tetive kao što su tendinitis (zapaljenje tetiva), tenosinovitis (zapaljenje\r\ntetiva i sinovijalne ovojnice), burzitis (zapaljenje male zatvorene vreće ispunjene tečnošću smeštene u\r\npodručju zgloba)\r\n• pirofosfatne artropatije i pridruženih oboljenja\r\nLek Rapten-K se primenjuje i u terapiji bola i zapaljenja povezanih sa ortopedskim, stomatološkim i drugim\r\nmanjim hirurškim zahvatima.'),
(17, '2020-03-07 18:01:33', '2020-03-07 18:01:33', 'Diklofen', 'Diklofenak-natrijum, aktivna supstanca leka Diklofen, pripada grupi lekova koji se zovu nesteroidni\r\nantiinflamatorni lekovi (NSAIL). NSAIL smanjuju bol i zapaljenje. Lek Diklofen, 100 mg, tablete sa\r\nproduženim oslobađanjem su specijalno napravljene da postepeno oslobađaju diklofenak.\r\nLek Diklofen se koristi za ublažavanje bola, otoka i zapaljenja koja prate veliki broj oboljenja zglobova,\r\nmišića i tetiva, uključujući:\r\n- stanja povezana sa artritisom: reumatoidni artritis (hronično zapaljenje zglobova), osteoartritis\r\n(nezapaljenjsko degenerativno oboljenje zglobova), ankilozirajući spondilitis (zapaljenjska bolest\r\nlokomotornog sistema), akutni giht,\r\n- akutne mišićno-skeletne poremećaje kao što su: periartritis (npr. „smrznuto rame“), tendinitis (zapaljenje\r\ntkiva), tenosinovitis (zapaljenje tetiva i sinovijalnog omotača), burzitis (zapaljenje serozne kese zglobova),\r\n- druga bolna stanja koja nastaju kao posledica trauma, uključujući prelome, bol u donjem delu leđa,\r\nistegnuća, uganuća, iščašenja, ortopedske, stomatološke ili druge manje hirurške intervencije.\r\nPrimena leka Diklofen se ne preporučuje kod dece'),
(18, '2020-03-07 18:02:07', '2020-03-07 18:02:07', 'Fervex', 'Ovaj lek se koristi za simptomatsku terapiju prehlade, zapaljenja sluznice nosa (rinitisa), zapaljenja sluznice nosa\r\ni ždrela (rinofaringitisa) i stanja sličnih gripu kod odraslih (15 godina i stariji), uključujući groznicu, glavobolju,\r\nkijavicu, bistru sekreciju iz nosa i suzenje očiju'),
(20, '2020-03-08 10:09:40', '2020-03-08 10:09:40', 'Ksalol', 'Lek Ksalol sadrži aktivnu supstancu alprazolam. Alprazolam pripada grupi lekova koji se nazivaju benzodiazepini, koji deluju tako što smanjuju anksioznost (uznemirenost), ubrzavaju uspavljivanje, smanjuju agitaciju (uzrujanost) i emocionalnu neuravnoteženost (sedativni efekat). Lek Ksalol je namenjen za lečenje anksioznosti, napetosti ili drugih somatskih (telesnih) ili psihijatrijskih simptoma povezanih sa anksioznošću. Takođe, primenjuje se kod napada panike sa agorafobijom ili bez nje (strah od otvorenog prostora). Benzodiazepini su namenjeni za primenu samo u slučajevima prisustva teških oblika bolesti koje onesposobljavaju pacijenta i koje ga dovode do izražene uznemirenosti');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sdsd', 'marko.markovic070@gmail.com', NULL, '$2y$10$gC3nzdqHj0RH3oHQQjoeuuRQBjF3GTCtDN4B9FCqgUlsosaE7Hmwi', NULL, '2020-03-03 13:08:03', '2020-03-03 13:08:03'),
(2, 'Marko', 'petar.petrovic070@gmail.com', NULL, '$2y$10$lx.Oz2IMVPslrOO10gZzkOgPsi7lBkdIAtbsRWwihXFSh6NstcRgm', NULL, '2020-03-04 12:07:49', '2020-03-04 12:07:49'),
(3, 'dragan', 'dragan@gmail.com', NULL, '$2y$10$LfVFo1oDWaCOF44uNh.S8ORzL1trk6tu5ORsVjP8.Yev7yHyOuoY6', 'CKERaJ6sZIss2klMYFo8K78brk9NmQiTJKDNSD8vJDlW3cnWhGeJEqLzrMPC', '2020-03-05 18:47:55', '2020-03-05 18:47:55'),
(4, 'Filip', 'filip@ficogmail.com', NULL, '$2y$10$oy1VJf4goFnZxqxDmCLx0u8jeM2F0jfa6scYdm85j4K7z8dq2G4mm', NULL, '2020-03-06 17:44:33', '2020-03-06 17:44:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
