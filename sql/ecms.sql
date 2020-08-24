-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Ağu 2020, 16:36:35
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_must` int(11) DEFAULT NULL,
  `blog_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_slug`, `blog_file`, `blog_must`, `blog_content`, `blog_status`, `created_at`, `updated_at`) VALUES
(1, 'Mustafa Kemal Atatürk', 'mustafa-kemal-ataturk', '5dc8632a40531.jpg', NULL, '<p>Manastır&rsquo;ın Kocacık nahiyesinden olan g&uuml;mr&uuml;k memuru Ali Rız&acirc; Bey ile Langazalı Z&uuml;beyde Hanım&rsquo;ın d&ouml;rd&uuml;nc&uuml; &ccedil;ocuğudur. Asıl adı Mustafa&rsquo;dır. Babası Ali Rız&acirc;&rsquo;nın ailesi Kızıl-Oğuz ya da Kocacık y&ouml;r&uuml;klerindendir. Sofuz&acirc;deler&rsquo;den olan Z&uuml;beyde Hanım&rsquo;ın ailesi de Anadolu&rsquo;dan g&ouml;&ccedil; ettirilen Konyarlar&rsquo;a mensuptur. Mustafa&rsquo;nın n&uuml;fus kaydında doğum tarihi olarak 1296 yazılmıştır. Bu yılın karşılığı 13 Mart 1880 - 12 Mart 1881 arasına rastlar. Bu sebeple Cumhuriyet d&ouml;neminde doğumu &ouml;nceleri 1880 g&ouml;sterilmiş, fakat sonraları 1881 kabul edilmiştir.<img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuzi1uiHY3zfCvrFNq6B9LEqjCoXxSxviRjQm5Gr6h6zF5sbK5\" style=\"float:right; height:188px; width:300px\" /></p>\r\n\r\n<p>Altı yaşına geldiğinde annesinin isteğine uyularak &ouml;nce Fatma Molla Kadın Mektebi&rsquo;ne kaydedildi. Birka&ccedil; g&uuml;n sonra oradan alınıp Şemsi Efendi Mektebi&rsquo;ne g&ouml;nderildi. Babasının &ouml;l&uuml;m&uuml; &uuml;zerine (1893) annesi ve kendisinden k&uuml;&ccedil;&uuml;k kardeşi Makbule ile Lapka &Ccedil;iftliği&rsquo;nde kahy&acirc;lık yapan dayısı H&uuml;seyin&rsquo;in yanına gitti. Fakat &ccedil;ok ge&ccedil;meden halasının desteğiyle Sel&acirc;nik&rsquo;e d&ouml;nd&uuml; ve M&uuml;lkiye R&uuml;şdiyesi&rsquo;ne kaydoldu. Bir kavgaya karışması y&uuml;z&uuml;nden m&uuml;d&uuml;r yardımcısından dayak yiyince okulu terkederek Sel&acirc;nik Asker&icirc; R&uuml;şdiyesi&rsquo;ne girdi. Burada matematikteki başarılarından dolayı &ouml;ğretmeni Mustafa, &ldquo;Bundan sonra senin adın Mustafa Kemal olsun&rdquo; diyerek ona N&acirc;mık Kemal&rsquo;den esinlenen ikinci bir ad verdi. 1896 Ocağında asker&icirc; r&uuml;şdiyeyi bitirince Manastır Asker&icirc; İd&acirc;d&icirc;si&rsquo;ne girdi. İd&acirc;d&icirc;de sınıf arkadaşı &Ouml;mer N&acirc;ci&rsquo;nin etkisiyle şiir ve edebiyatla ilgilendi, ancak kompozisyon &ouml;ğretmeninin bunun askerlikle bağdaşmayacağı uyarısı karşısında bu defa tarihe merak sardı. 1898 Kasımında id&acirc;d&icirc;yi bitirerek İstanbul&rsquo;da Harbiye&rsquo;ye yazıldı. 13 Mart 1899&rsquo;daki kaydı &ldquo;Sel&acirc;nik Koca Kasım mahallesi g&uuml;mr&uuml;k memurlarından m&uuml;teveffa Ali Rız&acirc; Efendi&rsquo;nin mahdumu uzun boylu, beyaz benizli Mustafa Kemal Efendi, Sel&acirc;nik (96)&rdquo; diye yapılmıştı. 10 Şubat 1902&rsquo;de teğmen olarak Harbiye&rsquo;yi bitirdi ve kurmay sınıfına ge&ccedil;ti. 1903&rsquo;te &uuml;steğmenliğe y&uuml;kseldi ve 21 Ekim 1904&rsquo;te kurmay y&uuml;zbaşı oldu.</p>', '1', '2019-11-10 16:21:14', '2019-11-18 20:43:08'),
(2, 'Bilal Güngör merhaba', 'gungor-bilal-merhaba-deneme-test-12', NULL, NULL, '<p>dddd</p>', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_10_31_144259_create_settings_table', 1),
(26, '2019_11_04_115526_create_blogs_table', 1),
(27, '2019_11_04_143817_create_pages_table', 1),
(28, '2019_11_04_190358_create_sliders_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_must` int(11) DEFAULT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_slug`, `page_file`, `page_must`, `page_content`, `page_status`, `created_at`, `updated_at`) VALUES
(1, 'Sayfa Başlık', 'sayfa-slug', '5dc5e6b689640.png', 1, '<p>sayfa i&ccedil;erik</p>', '0', '2019-11-22 00:09:44', '2019-11-12 10:59:57'),
(2, 'Sayfa Deneme', 'sayfa-deneme', '5dc9f62bea3e2.jpeg', 0, '<p>sayfa deneme</p>', '1', '2019-11-22 00:09:44', '2019-11-12 10:59:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_must` int(11) NOT NULL,
  `settings_delete` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `settings_description`, `settings_key`, `settings_value`, `settings_type`, `settings_must`, `settings_delete`, `settings_status`, `created_at`, `updated_at`) VALUES
(1, 'Başlık', 'title', 'Laravel CMS', 'text', 0, '0', '1', NULL, NULL),
(2, 'Açıklama', 'description', 'Laravel CMS Description', 'text', 1, '0', '1', NULL, NULL),
(3, 'Logo', 'logo', '5dc5e73a10b11.jpeg', 'file', 2, '0', '1', NULL, '2019-11-08 19:07:54'),
(4, 'Icon', 'icon', '5dc5e744d8a5c.png', 'file', 3, '0', '1', NULL, '2019-11-08 19:08:04'),
(5, 'Anahtar Kelimeler', 'keywords', 'laravel,cms,php', 'text', 4, '0', '1', NULL, NULL),
(6, 'Sabit Telefon', 'phone_sabit', '0534 298 61 89', 'text', 5, '0', '1', NULL, NULL),
(7, 'GSM', 'phono_gsm', '0534 298 61 89', 'text', 6, '0', '1', NULL, NULL),
(8, 'Mail', 'mail', 'gungor.bilal@galatasaray.net', 'text', 7, '0', '1', NULL, NULL),
(9, 'İlçe', 'ilce', 'Izmit', 'text', 8, '0', '1', NULL, NULL),
(10, 'İl', 'il', 'Kocaeli', 'text', 9, '0', '1', NULL, NULL),
(11, 'Açık Adres', 'adres', 'Izmit Caddesi', 'text', 10, '0', '1', NULL, NULL),
(12, 'Anasayfa Başlık', 'baslik', 'Izmit Pişmaniyesi', 'text', 11, '0', '1', NULL, NULL),
(13, 'Anasayfa Detay', 'detay', '<p>The Modern Business template by Start Bootstrap includes:</p>\r\n\r\n<ul>\r\n	<li><strong>Bootstrap v4</strong></li>\r\n	<li>jQuery</li>\r\n	<li>Font Awesome</li>\r\n	<li>Working contact form with validation</li>\r\n	<li>Unstyled page elements for easy customization</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>', 'ckeditor', 12, '0', '1', NULL, '2019-11-12 11:12:13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_must` int(11) DEFAULT NULL,
  `slider_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `slider_slug`, `slider_url`, `slider_file`, `slider_must`, `slider_content`, `slider_status`, `created_at`, `updated_at`) VALUES
(2, 'Slider Title 1', 'slider-title-deneme-1', 'http://www.ranarte.net', '5dc85efdaf040.png', NULL, '<p>Slider Content 1</p>', '1', NULL, NULL),
(3, 'Slider Title 2', 'slider-title-deneme-2', 'http://www.ranarte.net', '5dc85f10619ee.png', NULL, '<p>Slider Content 2</p>', '1', NULL, NULL),
(4, 'Slider Title 3', 'slider-title-deneme-6', 'http://www.ranarte.net', NULL, NULL, '<p>dd</p>', '1', NULL, NULL),
(5, 'Slider Title 1', 'slider-title-deneme-6', 'http://www.ranarte.net', '5de815f9c6fc4.jpeg', NULL, '<p>ddd</p>', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `user_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_file`, `role`, `user_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bilal Güngör', 'gungor.bilal@galatasaray.net', NULL, '$2y$10$265wwsJR0n4ge3r/7VCFXunYPBplRx8PvmB65247dC0rGcaEDbTay', '5dc08e96931c3.jpeg', 'admin', '1', NULL, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
