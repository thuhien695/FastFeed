-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2025 at 06:38 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast_feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `content`, `created_at`) VALUES
(1, 1, 2, 'Tôi rất thích bánh hamburger bò phô mai ở McDonald\'s! Đặc biệt là lớp phô mai béo ngậy kết hợp với thịt bò. Sẽ ghé lại thử lần nữa.', '2025-05-27 17:08:38'),
(2, 2, 2, 'Gà rán sốt cay Hàn Quốc ở Lotteria là món khoái khẩu của tôi. Tuy nhiên tôi thấy độ cay không đều giữa các lần, có khi rất cay có khi lại nhạt.', '2025-05-27 17:08:38'),
(3, 3, 2, 'Cơm gà KFC là bữa trưa quen thuộc của tôi. Tiện lợi và ngon. Nhưng gần đây tôi thấy phần gà nhỏ hơn trước đây.', '2025-05-27 17:08:38'),
(4, 1, 1, 'Cảm ơn bạn đã chia sẻ nhận xét! Đúng là phần phô mai là điểm nhấn của burger này. Lần tới bạn có thể thử combo với khoai tây chiên phô mai, rất ngon đấy!', '2025-05-27 17:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `content`, `user_id`, `image`, `created_at`) VALUES
(1, 'Review McDonalds - Hamburger Bò Phô Mai Đặc Biệt', '<p>McDonald&#39;s l&agrave; một trong những chuỗi cửa h&agrave;ng thức ăn nhanh nổi tiếng tr&ecirc;n to&agrave;n thế giới. Trong b&agrave;i viết n&agrave;y, m&igrave;nh sẽ review chiếc b&aacute;nh Hamburger B&ograve; Ph&ocirc; Mai Đặc Biệt m&agrave; m&igrave;nh đ&atilde; thử gần đ&acirc;y.</p>\r\n\r\n<p>Về phần vỏ b&aacute;nh, McDonald&#39;s sử dụng vỏ b&aacute;nh m&igrave; tr&ograve;n mềm, được nướng vừa đủ độ gi&ograve;n b&ecirc;n ngo&agrave;i nhưng vẫn giữ được độ mềm b&ecirc;n trong. Vỏ b&aacute;nh được rắc một lớp m&egrave; trắng b&ecirc;n tr&ecirc;n, tạo th&ecirc;m hương vị thơm ngon.</p>\r\n\r\n<p>Phần nh&acirc;n b&aacute;nh gồm c&oacute; thịt b&ograve; xay được nướng ch&iacute;n tới, l&aacute;t ph&ocirc; mai v&agrave;ng &oacute;ng, rau x&agrave; l&aacute;ch tươi gi&ograve;n, c&agrave; chua tươi v&agrave; h&agrave;nh t&acirc;y th&aacute;i l&aacute;t. Đặc biệt l&agrave; sốt đặc trưng của McDonald&#39;s tạo n&ecirc;n hương vị đậm đ&agrave;, b&eacute;o ngậy.</p>\r\n\r\n<p>Điểm cộng lớn nhất l&agrave; sự h&agrave;i h&ograve;a giữa c&aacute;c th&agrave;nh phần. Thịt b&ograve; đậm đ&agrave;, ph&ocirc; mai b&eacute;o ngậy, rau tươi gi&ograve;n v&agrave; sốt đặc trưng tạo n&ecirc;n một tổng thể rất ngon miệng. Tuy nhi&ecirc;n, đ&ocirc;i khi lượng sốt hơi nhiều khiến b&aacute;nh bị hơi ướt v&agrave; kh&oacute; cầm.</p>\r\n\r\n<p>Về gi&aacute; cả, với khoảng 50-60k cho một combo gồm hamburger, khoai t&acirc;y chi&ecirc;n v&agrave; nước, th&igrave; mức gi&aacute; n&agrave;y kh&aacute; hợp l&yacute; cho một bữa ăn nhanh đầy đủ dinh dưỡng.</p>\r\n\r\n<p>Nh&igrave;n chung, Hamburger B&ograve; Ph&ocirc; Mai Đặc Biệt của McDonald&#39;s l&agrave; một lựa chọn tốt cho bữa ăn nhanh. M&igrave;nh đ&aacute;nh gi&aacute; 8/10 cho m&oacute;n ăn n&agrave;y.</p>\r\n', 1, 'assets/images/posts/post_6836044bc0a1f.png', '2025-05-27 18:33:39'),
(2, 'Lotteria - Gà Rán Sốt Cay Hàn Quốc', '<p>Lotteria l&agrave; một thương hiệu thức ăn nhanh kh&aacute; quen thuộc với người Việt Nam. H&ocirc;m nay m&igrave;nh sẽ review về m&oacute;n G&agrave; R&aacute;n Sốt Cay H&agrave;n Quốc m&agrave; m&igrave;nh đ&atilde; thử tại Lotteria.</p>\r\n\r\n<p>Phần g&agrave; được chi&ecirc;n gi&ograve;n, lớp bột b&ecirc;n ngo&agrave;i v&agrave;ng đều v&agrave; gi&ograve;n rụm. Thịt g&agrave; b&ecirc;n trong mềm, ngọt v&agrave; được ướp gia vị kh&aacute; đậm đ&agrave;. Điểm nhấn của m&oacute;n n&agrave;y ch&iacute;nh l&agrave; phần sốt cay H&agrave;n Quốc được phủ đều l&ecirc;n miếng g&agrave;.</p>\r\n\r\n<p>Sốt cay H&agrave;n Quốc c&oacute; m&agrave;u đỏ đặc trưng, vị cay the nhẹ ở đầu lưỡi v&agrave; sau đ&oacute; lan tỏa trong miệng. Độ cay ở mức vừa phải, ph&ugrave; hợp với khẩu vị của nhiều người Việt. Sốt c&ograve;n c&oacute; vị ngọt thanh từ đường v&agrave; mật ong, kết hợp với vị chua nhẹ tạo n&ecirc;n hương vị rất hấp dẫn.</p>\r\n\r\n<p>Điểm trừ l&agrave; đ&ocirc;i khi phần g&agrave; hơi bị kh&ocirc;, đặc biệt l&agrave; phần ức. V&agrave; nếu để l&acirc;u, lớp bột sẽ bị mềm do thấm sốt, l&agrave;m mất đi độ gi&ograve;n ban đầu.</p>\r\n\r\n<p>Về gi&aacute; cả, một miếng g&agrave; r&aacute;n sốt cay c&oacute; gi&aacute; khoảng 40-45k, combo với khoai t&acirc;y v&agrave; nước ngọt khoảng 70-80k. Mức gi&aacute; n&agrave;y kh&aacute; cao so với một số cửa h&agrave;ng g&agrave; r&aacute;n kh&aacute;c, nhưng chất lượng của Lotteria kh&aacute; ổn định.</p>\r\n\r\n<p>Tổng kết, G&agrave; R&aacute;n Sốt Cay H&agrave;n Quốc của Lotteria l&agrave; một lựa chọn kh&ocirc;ng tồi nếu bạn đang th&egrave;m g&agrave; r&aacute;n với hương vị cay nồng đặc trưng của H&agrave;n Quốc. M&igrave;nh đ&aacute;nh gi&aacute; 7.5/10 cho m&oacute;n ăn n&agrave;y.</p>\r\n', 1, 'assets/images/posts/post_68360489aec66.png', '2025-05-27 18:34:39'),
(3, 'KFC - Cơm Gà Truyền Thống', '<p>KFC l&agrave; một trong những thương hiệu g&agrave; r&aacute;n nổi tiếng nhất thế giới. H&ocirc;m nay m&igrave;nh sẽ review m&oacute;n Cơm G&agrave; Truyền Thống của KFC.</p>\r\n\r\n<p>Phần cơm của KFC l&agrave; cơm trắng hạt d&agrave;i, được nấu vừa ch&iacute;n tới, kh&ocirc;ng qu&aacute; mềm cũng kh&ocirc;ng qu&aacute; cứng. Phần g&agrave; gồm một miếng g&agrave; r&aacute;n truyền thống với lớp bột gi&ograve;n đặc trưng của KFC.</p>\r\n\r\n<p>Điểm đặc biệt của m&oacute;n n&agrave;y l&agrave; nước sốt c&agrave; chua được rưới l&ecirc;n cơm. Sốt c&oacute; vị chua ngọt dễ ăn, kết hợp với cơm v&agrave; g&agrave; tạo n&ecirc;n hương vị rất h&agrave;i h&ograve;a. Ngo&agrave;i ra c&ograve;n c&oacute; một &iacute;t rau x&agrave; l&aacute;ch v&agrave; c&agrave; chua tươi đi k&egrave;m, gi&uacute;p c&acirc;n bằng khẩu vị.</p>\r\n\r\n<p>Miếng g&agrave; r&aacute;n truyền thống của KFC vẫn giữ được độ gi&ograve;n đặc trưng, phần thịt b&ecirc;n trong mềm v&agrave; nhiều nước. Tuy nhi&ecirc;n, đ&ocirc;i khi miếng g&agrave; hơi nhỏ so với gi&aacute; tiền.</p>\r\n\r\n<p>Về gi&aacute; cả, một phần cơm g&agrave; truyền thống c&oacute; gi&aacute; khoảng 45-55k t&ugrave;y chi nh&aacute;nh. Nếu th&ecirc;m nước ngọt th&igrave; khoảng 60-70k. Mức gi&aacute; n&agrave;y kh&aacute; hợp l&yacute; cho một bữa ăn đầy đủ.</p>\r\n\r\n<p>Tổng kết, Cơm G&agrave; Truyền Thống của KFC l&agrave; một lựa chọn an to&agrave;n v&agrave; ngon miệng cho bữa trưa văn ph&ograve;ng hoặc khi bạn muốn c&oacute; một bữa ăn nhanh nhưng vẫn đầy đủ dinh dưỡng. M&igrave;nh đ&aacute;nh gi&aacute; 8/10 cho m&oacute;n ăn n&agrave;y.</p>\r\n', 1, 'assets/images/posts/post_683604a3be0d8.png', '2025-05-27 18:35:39'),
(4, 'Review gà sốt bơ tỏi và thảo mộc Texas hot hit giới trẻ những ngày qua', '<h2>Nếu bạn l&agrave; fans của những m&oacute;n g&agrave; r&aacute;n, chắc hẳn c&aacute;i t&ecirc;n Texas Chicken kh&ocirc;ng c&ograve;n qu&aacute; xa lạ phải kh&ocirc;ng? Từ 100% nguy&ecirc;n liệu g&agrave; tươi ngon, Texas Chicken lu&ocirc;n đến những điều mới mẻ trong c&aacute;c m&oacute;n g&agrave; r&aacute;n. Nhằm thay lời tri &acirc;n cho c&aacute;c kh&aacute;ch h&agrave;ng đ&atilde; lu&ocirc;n ủng hộ thương hiệu g&agrave; n&agrave;y, Texas Chicken đ&atilde; tung ra m&oacute;n g&agrave; sốt bơ tỏi v&agrave; thảo mộc thơm ngon v&agrave; hấp dẫn, đ&atilde; v&agrave; đang l&agrave;m mưa l&agrave;m gi&oacute; trong giới trẻ hiện nay.&nbsp;Kh&aacute;m ph&aacute; m&oacute;n g&agrave; n&agrave;y với&nbsp;<a href=\"https://blog.utop.vn/nguoi-tieu-dung\">Utop&nbsp;</a>nh&eacute;!</h2>\r\n\r\n<h3><strong>Kh&aacute;m ph&aacute; thực đơn phong ph&uacute; của Texas Chicken</strong></h3>\r\n\r\n<p>Đặc trưng của Texas Chicken ch&iacute;nh l&agrave; những m&oacute;n g&agrave; r&aacute;n, gi&ograve;n tan với lớp &aacute;o b&ecirc;n ngo&agrave;i, mềm mịn mọng nước của thịt g&agrave; b&ecirc;n trong, m&agrave;u chi&ecirc;n đẹp mắt hấp dẫn. Điều đặc biệt, Texas Chicken hay tung ra những sản phẩm giới hạn, mỗi một m&oacute;n g&agrave; đều mang một hương vị độc đ&aacute;o ri&ecirc;ng. Điển h&igrave;nh l&agrave; m&oacute;n g&agrave; sốt bơ tỏi v&agrave; thảo mộc, đang l&agrave; m&oacute;n best seller v&agrave; lu&ocirc;n được y&ecirc;u cầu b&aacute;n lại.</p>\r\n\r\n<p>Vậy m&oacute;n g&agrave; sốt bơ tỏi v&agrave; thảo mộc c&oacute; g&igrave; hấp dẫn? Những ai hay ăn g&agrave; r&aacute;n Texas chắc hẳn đ&atilde; qu&aacute; quen thuộc với nguy&ecirc;n liệu g&agrave; được sử dụng ở đ&acirc;y, với 100% g&agrave; tươi được nhập khẩu trực tiếp từ n&ocirc;ng trại, kh&ocirc;ng qua đ&ocirc;ng lạnh, n&ecirc;n thịt g&agrave; rất mềm ngọt, đ&oacute; l&agrave; n&eacute;t đầu ti&ecirc;n tạo n&ecirc;n sự thu h&uacute;t kh&aacute;ch h&agrave;ng. Th&ecirc;m sự kết hợp độc đ&aacute;o của tỏi v&agrave; thảo mộc tạo n&ecirc;n một hương vị mới khiến thực kh&aacute;ch th&iacute;ch th&uacute;.&nbsp;</p>\r\n', 1, 'assets/images/posts/post_6836063769bd6.png', '2025-05-27 18:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$OdhcWeim8vhptQPp8rjMnuNJqGHNb1eMaUzadnR72rEh.Cr3H.Rc2', 'admin', '2025-05-27 17:08:38'),
(2, 'Nguyễn Văn A', 'user@gmail.com', '$2y$10$OdhcWeim8vhptQPp8rjMnuNJqGHNb1eMaUzadnR72rEh.Cr3H.Rc2', 'user', '2025-05-27 17:08:38'),
(3, 'Nguyễn Văn B', 'user2@gmail.com', '$2y$10$1/1Oi.F1a0fGO7oPGlH3muIAPFl7xvsKyDnKj4Jbq0TuSkfJ3.SVW', 'user', '2025-05-27 17:55:02'),
(4, 'Nguyễn Văn C', 'user3@gmail.com', '$2y$10$vwDVqcaYzjPLrSCirENT6uf9NzgYv2jy3aOxkH.XkE1TNnTVGVo8e', 'user', '2025-05-27 17:55:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
