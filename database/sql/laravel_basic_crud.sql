-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2020 at 02:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_basic_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_12_13_191618_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Created By User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'Product 1 Description', 2000.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(2, 'Product 2', 'Product 2 Description', 5000.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(3, 'Product 3', 'Product 3 Description', 77000.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(4, 'libero', 'Ullam dolorem numquam recusandae accusamus. Natus atque id magnam incidunt. Ipsa magni aperiam aperiam deleniti dolor nisi reiciendis.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(5, 'atque', 'Et qui vel expedita laudantium. Ut voluptatem et quo autem quia est nam.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(6, 'omnis', 'Illo fugit numquam deleniti dolor ut. Nisi quaerat eius reiciendis laboriosam esse est. Est perferendis quia inventore aut cumque voluptas. Aperiam omnis suscipit dignissimos rem.', 9.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(7, 'First Priduct Updated 7', 'Simple Description Updated 7', 2012.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 12:21:41'),
(9, 'asperiores', 'Aut at fugit rerum id. Quae sapiente qui non quibusdam vitae nesciunt nostrum deserunt.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(10, 'sed', 'Asperiores aut quo non. Sed ut officiis labore officia dolorum et quam iure. Asperiores optio quia rerum rerum corrupti.', 7.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(11, 'amet', 'Ad et dolor perspiciatis sapiente et dicta. Deserunt modi rem voluptates minima. Itaque facilis vero perspiciatis sed. Pariatur qui eos sit non aut nihil praesentium doloribus.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(12, 'commodi', 'Eius qui omnis praesentium ut sit velit. Quia et earum occaecati. Non alias temporibus enim mollitia commodi.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(13, 'exercitationem', 'Qui laborum cum sequi id sint saepe eos. Accusantium deleniti itaque voluptas neque cumque enim. Ut omnis nesciunt quaerat cumque.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(14, 'sequi', 'Est necessitatibus qui omnis. Aut asperiores eum qui. Facilis eius vitae minima qui ut id quia. In accusantium odio quis corrupti rerum nam odit sed.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(15, 'illum', 'Et quis quibusdam quia officia quisquam. Eaque laudantium odio eos voluptatibus. Harum excepturi quibusdam ut quisquam corrupti cum vel.', 5.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(16, 'dolor', 'Debitis quas tenetur ab. Quia repudiandae aliquam quo laborum unde sint. Veritatis aliquid et quos rerum fugit illum eos.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(17, 'harum', 'Exercitationem vel sed aut enim ipsa eos. Voluptate ut provident eveniet eos. Est nostrum ut vel illo dolores. Necessitatibus error est sit.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(18, 'minima', 'Quo laudantium dolor soluta dolorum. Cupiditate delectus omnis consequatur aut. Quis delectus numquam est aliquam non voluptatibus et. Quam esse illo at est quam esse in facere.', 9.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(19, 'nobis', 'Nemo blanditiis voluptatum molestiae neque recusandae a. Quidem molestiae explicabo magni. At praesentium rerum earum omnis totam. Excepturi iure pariatur doloribus optio voluptatem ut.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(20, 'enim', 'Sit autem veritatis et. Qui est rerum consequatur pariatur aspernatur eos doloremque. Qui dolorem voluptatem dolor ab ipsum.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(21, 'natus', 'A nisi est occaecati voluptatem pariatur repellendus voluptas. Ut voluptatum autem assumenda tempore. Ut ut soluta molestiae molestiae explicabo.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(22, 'aut', 'Magni sit odit rem totam minus vel dolor. Est placeat ut et beatae. Veritatis id quia rerum praesentium sunt. Ut quia corporis quo quo.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(23, 'laboriosam', 'Et et ea eveniet ab velit et qui. Numquam ratione vitae aliquam. Ducimus sapiente et illum ducimus adipisci.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(24, 'possimus', 'Officia at maiores aut quam. Et dolore aut praesentium sit ut. Aut corporis facere suscipit et quae. Nobis consequatur dolore ea est in ut enim.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(25, 'eos', 'Consequatur dolores sed qui earum officiis eveniet. Asperiores libero expedita beatae quidem at. Consequatur dolore molestias ut modi. Nostrum dolorem sequi id vel non.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(26, 'perspiciatis', 'Velit quidem veritatis consequuntur sit officiis doloremque et. Expedita laboriosam molestiae praesentium velit sunt quae sint. Praesentium omnis tempore sint sed voluptatem provident.', 1.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(27, 'nemo', 'Quisquam quis aut rerum velit. Odit saepe ad vero rerum et esse error. Ut ut impedit incidunt consectetur asperiores ducimus. Quo veritatis deserunt dolores voluptas voluptatem non.', 7.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(28, 'corporis', 'Et quod omnis ut quo. Error autem eum mollitia perferendis. Veritatis iste quia occaecati.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(29, 'odio', 'Explicabo culpa ipsam tempore molestiae aliquid est vel corporis. Consequatur non qui qui saepe quibusdam voluptatem soluta. Magni aut aut voluptates eos dolorem.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(30, 'et', 'Vel deserunt accusamus ipsa. Iure libero atque dolore veritatis. Ut officiis expedita pariatur sequi.', 5.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(31, 'enim', 'Qui voluptas excepturi aliquam dolor. Ipsam tempora ut repellat. Numquam quod perferendis quo et non dolorem est.', 7.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(32, 'eos', 'Voluptas ut fugiat alias reiciendis reprehenderit et sit placeat. Dolor repudiandae non repellendus est. Tenetur dolor commodi qui hic.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(33, 'corrupti', 'Laborum voluptatem atque voluptatem non. Placeat dolorem assumenda nesciunt autem esse. Et doloremque sint incidunt odit vel deserunt.', 1.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(34, 'voluptatem', 'Eaque nihil recusandae accusantium voluptatem. Magni omnis totam natus. Quidem voluptas tempore ex nihil tempore.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(35, 'quis', 'Enim sunt consequuntur ipsum rem cum voluptatem. Sit animi libero quibusdam dignissimos. Tempore blanditiis qui vel odit alias officiis nihil temporibus.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(36, 'quas', 'Voluptatibus minima sed aperiam dolore eaque autem. Rerum eos deleniti ipsa magni numquam ea. Consectetur in nesciunt hic aperiam cum quas ea. Rerum aliquid adipisci at eum eligendi.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(37, 'ratione', 'Rem laborum aperiam vel eum qui qui quod. Et necessitatibus dolorum aperiam sit magnam harum quia. Quia omnis in et qui voluptas delectus velit.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(38, 'dolor', 'Sed sequi harum dolorem sint aut. Deserunt repudiandae quis quo provident ab quasi. Soluta sit harum quas velit et quia tempora.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(39, 'dicta', 'Quibusdam vitae quo accusamus et et. Cum sit ducimus voluptatem odio voluptas non facilis. Dolore neque corporis occaecati eaque eveniet similique. Id voluptatibus eveniet nulla et odio.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(40, 'molestiae', 'Delectus voluptatem voluptas omnis quo laborum. Eaque culpa accusamus vel ut. Doloribus sit dolorem sed. Sit nihil impedit cupiditate optio voluptas.', 7.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(41, 'perspiciatis', 'Omnis et facere quia inventore minus consequatur. Repellendus non minus velit iusto provident veritatis vitae. Quaerat temporibus saepe provident aut corrupti aut quia. Minus et ut labore.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(42, 'repellendus', 'Modi delectus ipsam voluptatem debitis sequi vel. Sit in sed vel et. Est id dolores nihil aut harum.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(43, 'voluptate', 'Fugiat nihil et itaque maiores placeat temporibus quas. Iure ipsa est alias autem. Sunt quos aspernatur voluptates modi aspernatur odio.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(44, 'impedit', 'Totam earum similique cumque quas. Et doloremque reprehenderit est. Veritatis eos velit possimus autem blanditiis ratione. Ad aut laboriosam adipisci rem et aut.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(45, 'cupiditate', 'Sed ullam facilis similique dolore. Laudantium molestiae delectus enim eos fugit totam. Et ratione ratione quis placeat amet.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(46, 'et', 'Quos rem dolorem dolor sit. Distinctio praesentium mollitia similique. Quia repellat quia quos ut non.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(47, 'voluptate', 'Culpa facere voluptate rerum maiores. Iure non et odio consequatur quisquam. Maxime qui voluptas praesentium.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(48, 'enim', 'Placeat aut cum id eum. Quae qui numquam eos harum quisquam. Dolore sed corrupti ut accusantium. Asperiores alias quos quia quia dolorum adipisci doloribus sit.', 7.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(49, 'nesciunt', 'Temporibus quaerat voluptates recusandae non earum iste id ab. Et voluptatibus repellendus suscipit repellat. Omnis dolor quisquam tempore dolore deserunt accusamus autem.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(50, 'qui', 'Consequuntur nostrum quos vel dicta accusantium veniam sit. Doloremque numquam aut iusto qui atque praesentium ea. Eius saepe occaecati qui ipsam.', 5.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(51, 'blanditiis', 'Repellendus autem libero commodi vitae nisi. Et atque asperiores quos quis accusantium placeat dolor mollitia. Ipsum ducimus nostrum quis earum sint. Et architecto tempora doloremque itaque nostrum.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(52, 'excepturi', 'Ut quasi totam incidunt dolores eius quia. Quia veniam est distinctio velit soluta est sunt. Ut id nihil eos consequatur deleniti doloribus sit.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(53, 'sint', 'Est et ratione dolorem et natus. Omnis quo occaecati nisi et et esse eius tempore. Qui quasi illum doloribus cum eligendi. Praesentium veritatis ab est eos.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(54, 'quis', 'Velit natus sint sint veritatis sint. Reprehenderit culpa sapiente quas nostrum. Numquam deleniti veritatis non aut enim.', 1.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(55, 'fugiat', 'Adipisci quis officia quos. Dolorum repellat pariatur ut qui. Dolorem accusamus ut reprehenderit cum est.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(56, 'id', 'Praesentium est magni libero voluptatem. Qui ad dolores aut sit. Quaerat vero dignissimos ut odit non quasi consequatur.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(57, 'corporis', 'Quia numquam nihil officiis voluptates fugit ullam. Aut et ut repellat corporis. Sit dicta pariatur aspernatur neque fuga. Fuga quia sed quos unde architecto enim.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(58, 'eum', 'Expedita minima ut nulla ipsum vero sapiente cumque. Unde ex soluta qui sed in ut error. Voluptas occaecati delectus enim veniam quia blanditiis at.', 5.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(59, 'beatae', 'Perferendis autem iusto est nam. Voluptatum aliquid adipisci nobis quia. Illo culpa hic accusamus esse autem est natus. Quos assumenda doloribus id illo.', 9.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(60, 'qui', 'Accusantium illum rerum et quia excepturi. Ipsa illum consequuntur voluptas similique. Eos ut molestiae occaecati dignissimos non sunt. Repellat aut itaque necessitatibus est.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(61, 'mollitia', 'Dignissimos est labore ipsum repellendus. Magnam eum quia et nostrum aut blanditiis. Vel est consequatur maxime natus. Molestiae quae assumenda odit voluptatem cumque.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(62, 'velit', 'At sapiente et quia enim optio quisquam voluptas. Officia cumque ratione aut sed ducimus sint. Veritatis a ex quidem tenetur et perspiciatis. Natus cupiditate omnis in earum et blanditiis.', 9.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(63, 'veritatis', 'Illo vero quo officiis tempore. Aspernatur nesciunt ratione quasi aperiam enim facere. Doloremque qui aliquam et doloremque aperiam unde est quia.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(64, 'necessitatibus', 'Quaerat qui vel in voluptatum. Vel sit quisquam sint eos rerum eius iusto. Omnis eius ab voluptatem quia rerum tempore. Est quia officiis et accusamus consequuntur magnam veniam sapiente.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(65, 'saepe', 'Quia quo ratione autem maxime voluptatem facilis in. Cumque neque nihil impedit quis eveniet eveniet. Libero enim quam eaque. Quia ipsa vel et aut exercitationem beatae.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(66, 'omnis', 'Necessitatibus quibusdam ut soluta delectus sit. In voluptatem quis corporis doloribus. Reprehenderit accusantium sapiente sit ut. Aut tempore ut enim nobis nam eos ut.', 9.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(67, 'sed', 'Consequatur quo tempora et ut. Magni ducimus harum cum enim quidem error eos. Impedit reprehenderit sed facilis vel velit.', 5.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(68, 'repudiandae', 'Maxime voluptatem recusandae est iste laborum. Et earum incidunt qui enim dolorem rerum non. Optio atque nam in aperiam.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(69, 'aspernatur', 'Distinctio ut maiores omnis natus atque. Omnis et fugiat quo omnis ut. Consequatur dolores nulla error in assumenda.', 9.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(70, 'quia', 'Nostrum ab explicabo qui rem. Omnis occaecati tenetur rerum quod laudantium. Rerum cumque voluptas architecto sed.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(71, 'voluptates', 'Vitae enim officiis aspernatur earum. Commodi quaerat cumque quam et temporibus. Qui qui dolores ratione et sed perferendis perferendis. Fuga quisquam necessitatibus et quis et cumque atque.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(72, 'pariatur', 'Aliquid et molestias eos quo quasi odit. Velit enim aut cupiditate molestiae ea dolorem officiis. Dolor cumque sed ipsam.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(73, 'qui', 'Saepe alias molestiae sint et et. Velit quis rem repudiandae est beatae id. Laboriosam unde et et et id explicabo praesentium beatae. Blanditiis voluptate excepturi non similique eveniet ut.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(74, 'consectetur', 'Aut qui dignissimos eum eos aliquid doloribus exercitationem. Ratione beatae ut id perferendis vel. Exercitationem quo illo vel sed modi necessitatibus.', 9.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(75, 'sint', 'Placeat culpa rerum voluptatem voluptas impedit nam dolor corporis. Ex perferendis et in ab. Consequatur fuga ad harum accusamus id.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(76, 'qui', 'Sequi ab quia omnis omnis. Voluptatibus aut quas tempore sint. In et laboriosam eligendi eum. Quia alias in quibusdam ut. Eligendi qui repellendus enim incidunt vero. Magnam nesciunt assumenda quia.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(77, 'aspernatur', 'Beatae ut quae aspernatur reiciendis totam amet. Commodi magni omnis temporibus iusto fugiat omnis. Maiores quod fugiat neque molestiae.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(78, 'eum', 'Inventore quo dolor deserunt. Qui dolores modi ratione autem. Aut voluptatem nobis sint quod. Voluptatem ipsum ipsum maxime consequuntur fugit eius.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(79, 'id', 'Rerum ipsam soluta quidem. Exercitationem voluptas et dolores iste. Temporibus non odit eveniet neque est. Aliquam adipisci possimus molestias dolorum quis. Saepe quo labore exercitationem.', 1.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(81, 'voluptatem', 'Qui quibusdam nihil voluptates enim. Qui veniam labore provident accusamus minima expedita. At sint rerum sunt nulla quis.', 3.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(83, 'totam', 'Ullam unde eum esse. Consequatur repellendus qui illo. Ex in repellat vel aut animi ut voluptas vel.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(84, 'corrupti', 'Aut non corrupti a quo quos voluptatibus. Velit velit corrupti libero eos. Dolorem rerum facilis pariatur veritatis minus asperiores. Qui eum aspernatur vel.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(85, 'repellat', 'Repellendus molestiae assumenda rerum culpa voluptatem non. Odit omnis qui perspiciatis in rem omnis explicabo. Accusantium maiores et nesciunt enim debitis pariatur sed in.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(86, 'dolores', 'Velit optio in corrupti sit praesentium hic. Non optio est eum iure quos officiis ut et. Dolorem et consequatur assumenda occaecati molestiae. Voluptas esse vero qui itaque ut occaecati.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(87, 'iure', 'Vero quod sapiente quas est. Sequi fuga beatae sed delectus. Rerum quisquam et consequatur minima voluptatem quam. Aut id deleniti commodi natus.', 1.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(88, 'ipsum', 'Aperiam ipsa enim dolor voluptatibus aspernatur veniam aut. Qui et laborum omnis odio. Maxime voluptatem neque quis voluptatem.', 8.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(89, 'dolores', 'Inventore perspiciatis perspiciatis unde corporis est. Velit quasi molestias consequatur velit. Quae enim nisi nesciunt ea aliquid.', 0.00, NULL, 31, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(90, 'voluptas', 'Vitae eius reiciendis accusantium sequi eos officiis. Incidunt ullam sapiente adipisci fugit. Accusantium qui molestiae qui voluptatem ut. Accusantium ut fugit veniam sunt dicta rerum.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(91, 'aut', 'Quis voluptatem modi nostrum et tempora. Ut eos repudiandae incidunt eveniet. Voluptatem excepturi et consequatur.', 9.00, NULL, 31, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(92, 'enim', 'Assumenda dolorem eligendi numquam voluptas alias laboriosam quia. Magnam mollitia nulla laudantium autem. Voluptatibus et temporibus iure nisi excepturi.', 4.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(93, 'est', 'Ut maxime alias enim harum est adipisci ut eveniet. Ratione sint sit nisi et.', 2.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(94, 'est', 'Nulla voluptas aut aspernatur nihil labore earum. Quis hic expedita adipisci veniam. Quam expedita quo repellendus aut accusantium quo. Id eaque optio maxime.', 0.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(95, 'nesciunt', 'Et magnam tempora fugit alias harum eos est. Omnis quas nam est ut aut repellat.', 7.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(96, 'iusto', 'Nihil ipsum molestias est eos maxime aperiam ratione. Eos minus nesciunt vel enim quis odio. Tenetur et neque ducimus eius reprehenderit. Sequi at quod reiciendis.', 6.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(98, 'Akij Chair', '<p>Officiis quia hic voluptatum voluptatem omnis. Dolor ea sit veritatis quasi minus est. Aut ut modi vitae pariatur minus. Accusantium ipsum ab sint. Blanditiis odio fugiat rerum inventore non velit.</p>', 1200.00, 'akij-chair-1608363866.png', 1, '2020-12-15 11:29:03', '2020-12-19 01:44:26'),
(99, 'ut', 'Optio qui ipsa repellat rerum. Corrupti itaque facere ab temporibus alias fugiat rem architecto. Deserunt fuga nulla labore laboriosam quia.', 1.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(100, 'Product 1001209120', 'Description', 10120.00, NULL, 1, '2020-12-15 11:29:03', '2020-12-19 13:17:54'),
(101, 'Formal T-Shart', '<p>Placeat eius maxime ut iusto provident quis ut error. Ut et et nesciunt sunt dolorem. Voluptate aliquid dolorem non culpa.</p>', 900.00, 't-shirt-2-1608369537.jpeg', 1, '2020-12-15 11:29:03', '2020-12-19 05:16:18'),
(102, 'White Sleeve T-Shirt', '<p>Ut dolore voluptas totam hic ducimus quos nihil. Magni et libero qui odio nihil molestiae. Deleniti unde quia deleniti repudiandae aliquid porro vero veniam.</p>', 1020.00, 'white-sleeve-t-shirt-1608369183.jpeg', 1, '2020-12-15 11:29:03', '2020-12-19 03:13:03'),
(110, 'Grey Cotton Fila Long Sleeve T-shirt for Men', '<ul><li>Product Type: Short Sleeve T-Shirt</li><li>Main Material: 100% Cotton.</li><li>Stylish and trendy</li><li>Comfortable</li><li>Smart look</li><li>GSM 190+</li><li>Made in Bangladesh</li></ul><h1>About Grey Cotton Fila Long Sleeve T-shirt for Men</h1><h1><br></h1><p>This T-Shirt for Men\'s comfortable and can be worn for regular use. It is a perfect wear for men like you. You will love to wear this luxurious and colorful shirt just for its versatile usability and diversified fashion sense. It is generally made of a light, great quality cotton fabrics and is easy to clean. It is perfect to wear with jeans and gabardine pant. Longsleevedesign with a regular fit for men. It is very versatile because it is useful on formal as well as casual occasion. It is designed to be comfortable and durable.</p><h1><br></h1><p>N.B: Please check the size chart and select your size before placing order</p>', 176.00, 'grey-cotton-fila-lon-1608366720.webp', 1, '2020-12-18 20:11:38', '2020-12-19 02:32:00'),
(111, 'Desktop Monitor', '<p>Desktop Monitor</p>', 25999.00, 'desktop-monitor-1608362784.png', 1, '2020-12-18 20:12:29', '2020-12-19 01:26:24'),
(112, 'Sunglass', '<p>Sunglass Features:</p><ol><li>Feature 1</li><li>Feature 2</li></ol>', 1211.00, 'sunglass-1608361794.png', 1, '2020-12-18 20:14:19', '2020-12-19 01:18:25'),
(113, 'Samsung Galaxy Tab A 10.1', NULL, 12000.00, NULL, 1, '2020-12-18 20:15:25', '2020-12-19 00:59:56'),
(114, 'Product 1 Updated', '<p>Description</p>', 10120.00, 'product-1-updated-1608359602.png', 1, '2020-12-18 20:15:58', '2020-12-19 00:33:22'),
(115, 'Samsung Gallaxy  A10', '<p><strong>General</strong></p><p>BrandSamsungModelGalaxy A10LaunchedFebruary 2019Battery capacity (mAh)3400ColoursRed, Blue Black</p><p><br></p><p><strong>Display</strong></p><p>Screen size (inches)6.20TouchscreenYes</p><p><br></p><p><strong>Hardware</strong></p><p>Processorocta-coreProcessor makeSamsung Exynos 7884RAM2GBInternal storage32GBExpandable storageYesExpandable storage typemicroSDExpandable storage up to (GB)512</p><p><br></p><p><strong>Camera</strong></p><p>Rear camera13-megapixel (f/1.9)Front camera5-megapixel (f/2.0)</p><p><br></p><p><strong>Software</strong></p><p>Operating systemAndroid PieSkinOne UI</p><p><br></p>', 20500.00, 'samsung-gallaxy-a10-1608354906.png', 1, '2020-12-18 23:15:06', '2020-12-18 23:15:06'),
(116, 'ASUS - ROG G531GT 15.6\" Gaming Laptop', '<h4>Windows 10 operating system</h4><h4>15.6\" Full HD display</h4><p><br></p><p>The 1920 x 1080 resolution boasts impressive color and clarity. Energy-efficient LED backlight.</p><h4>9th Gen Intel® Core™ i7-9750H mobile processor</h4><p>Powerful 6-core, twelve-way processing performance.</p><h4>8GB system memory for advanced multitasking</h4><p>Substantial high-bandwidth RAM to smoothly run your games and photo- and video-editing applications, as well as multiple programs and browser tabs all at once.</p><h4>512GB PCIe solid state drive</h4><p>While offering less storage space than a hard drive, a flash-based SSD has no moving parts, resulting in faster start-up times and data access, no noise, and reduced heat production and power draw on the battery.</p><p><br></p><h4>NVIDIA GeForce GTX 1650 graphics</h4><p>Backed by 4GB GDDR5 dedicated video memory for a fast, advanced GPU to fuel your games.</p><h4>Weighs 5.29 lbs. and measures 1\" thin</h4><p>Thin and light design with DVD/CD drive omitted for improved portability. 3-cell lithium-ion battery.</p><h4>HDMI output expands your viewing options</h4><p>Connect to an HDTV or high-def monitor to set up two screens side by side or just see more of the big picture.</p><h4>Wireless/Wired connectivity (WiFi 5 - 802.11 ac)</h4><p>Connect to a Wireless-AC router for nearly 3x the speed, more capacity and wider coverage than Wireless-N. Backward-compatible with all other Wi-Fi networks and hotspots.</p><h4>RGB backlit keyboard</h4><p>Allows you to enjoy comfortable and accurate typing, even in dim lighting.</p><h4>Additional port</h4><p>Headphone output.</p><p>Note: This laptop does not include a built-in DVD/CD drive.</p><p><br></p><p>Intel, Pentium, Celeron, Core, Atom, Ultrabook, Intel Inside and the Intel Inside logo are trademarks or registered trademarks of Intel Corporation or its subsidiaries in the United States and other countries.</p>', 110999.00, 'asus-rog-g531gt-15-1608355217.png', 1, '2020-12-18 23:20:17', '2020-12-18 23:20:17'),
(117, 'IndoPrimo Men\'s Regular Fit Casual Shirt', '<p>Fit Type: Regular Fit</p><p>Fabric: Cotton</p><p>Style: Regular</p><p>Neck Style: Classic Collar</p><p>Pattern: Solid</p><p>Sleeve Type: Full Sleeve</p><p><br></p>', 699.00, 'indoprimo-mens-regu-1608355308.png', 21, '2020-12-18 23:21:48', '2020-12-18 23:21:48'),
(118, 'Canon EOS 1500D 24.1 Digital SLR Camera', '<ul><li>Sensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping)</li><li>ISO: 100-6400 sensitivity range (critical for obtaining grain-free pictures, especially in low light)</li><li>Image Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography)</li><li>Video Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)</li><li>Connectivity: WiFi, NFC and Bluetooth built-in (useful for remotely controlling your camera and transferring pictures wirelessly as you shoot)</li><li>Lens Mount: EF-S mount compatible with all EF and EF-S lenses (crop-sensor mount versatile and compact, especially when used with EF-S lenses)</li><li>For any queries, please contact_us on: [1860-180-3366]</li><li>Country of Origin: Taiwan</li></ul>', 35999.00, 'canon-eos-1500d-241-1608355424.png', 1, '2020-12-18 23:23:44', '2020-12-19 03:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maniruzzaman Akash', 'admin@example.com', NULL, '$2y$10$jdG3GU42lMN5ZI2OiExOiOW16D9E9IWLEyfVRonczCtGv9uwgiAEK', NULL, '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(2, 'Anjali Emmerich', 'dhamill@example.org', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LkbWggOXQM', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(3, 'Alexander Gleichner', 'turcotte.cassidy@example.net', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rs6yUe6frs', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(4, 'Gustave Eichmann', 'ekonopelski@example.net', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NIPJYrA7wW', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(5, 'Ewell Littel', 'gaylord.clement@example.com', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MzLu97Jrsm', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(6, 'Thelma DuBuque', 'nathanael.mills@example.com', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'br0nALuG8H', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(7, 'Dr. Billie Corkery', 'kokuneva@example.org', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JIy8fkShte', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(8, 'Dr. Adrienne Lindgren II', 'burnice95@example.net', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lpCWLZBsU5', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(9, 'Miss Lempi Balistreri', 'nichole37@example.org', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kZ3zPDkj7z', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(10, 'Marco Schmeler', 'jayda.casper@example.net', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D1IjicArXZ', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(11, 'Jamie Boehm', 'iwintheiser@example.org', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BEkgK3HMx2', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(12, 'Oscar Hilpert', 'jairo.brekke@example.org', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ug2bB74lOI', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(13, 'Kelli Fay', 'vhegmann@example.org', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xr2BfVIQ9Y', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(14, 'Arnaldo O\'Conner', 'reichel.cooper@example.com', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm8cpWLUM48', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(15, 'Mr. Keeley Stanton I', 'jhartmann@example.net', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qKvISfYEds', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(16, 'Jillian Satterfield', 'dolly17@example.org', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sRsrtHnRM1', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(17, 'Scarlett Goodwin', 'prosacco.clifford@example.com', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YBKwMJ4Jel', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(18, 'Jacquelyn Lakin', 'treva05@example.com', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qTRnc3ZB0O', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(19, 'Prof. Lucienne Russel V', 'elroy.borer@example.net', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DfcekLUTaj', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(20, 'Ms. Theresia Gleichner DVM', 'samson11@example.com', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZGfG6dSr4S', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(21, 'Quinten Gleichner', 'wbogisich@example.net', '2020-12-15 11:29:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mSAVCY0GIy', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(29, 'Jhon Doe', 'jhondoe@example.com', NULL, '$2y$10$tvV/fhuJCjAraZxg.QiCeOLdgS784jyrW/puOYaMwXa1QGAwXnZRi', NULL, '2020-12-15 21:03:16', '2020-12-15 21:03:16'),
(30, 'Jhon Doe', 'jhondoe@example1.com', NULL, '$2y$10$7jTZAnzt.oKEvzO3s3zCTOFvRXmTctalgsklUPZtDf6g7UiXbGgIy', NULL, '2020-12-15 21:07:15', '2020-12-15 21:07:15'),
(31, 'Jhon Doe', 'jhondoe@example2.com', NULL, '$2y$10$r/TusD8CJlWHD8Gov5j5qOapngJ2FF1YOn0F5ZUGCCQWXtWHZGy5C', NULL, '2020-12-15 21:09:30', '2020-12-15 21:09:30'),
(32, 'Jhon Doe', 'jhondoe@example3.com', NULL, '$2y$10$xquzruVOYAoSiC7p7fVUu.lMmUBuSUgs98Y5sV7uQZc2G3Lj4kDiK', NULL, '2020-12-15 21:12:45', '2020-12-15 21:12:45'),
(33, 'Jhon Doe', 'jhondoe2@example.com', NULL, '$2y$10$6ULaCgc8WGpBnv2LccwZTucOuTVn64/lIBWkmm/lS.ofg9CR6TDp.', NULL, '2020-12-16 10:08:11', '2020-12-16 10:08:11'),
(34, 'Maniruzzaman Akash', 'akash.corp1@akij.net', NULL, '$2y$10$caQotwbMPG1ddoEe/PH5muu.gpPQCitp/ZMlW7vLmjeLla8DwB.qi', NULL, '2020-12-16 13:29:18', '2020-12-16 13:29:18'),
(35, 'Maniruzzaman Akash', 'akash.corp22@akij.net', NULL, '$2y$10$N9aM9FM7bLj5iRblIKrJXul80N9sRbrmfvfd2Nj49X2m41wSCPO0m', NULL, '2020-12-16 13:58:01', '2020-12-16 13:58:01'),
(36, 'Maniruzzaman Akash', 'akash.corp3@akij.net', NULL, '$2y$10$aIgDBzB71sfIWckBwwabHeybYoEjrQFsiTdUDxWNjC8AO3bl5dhgu', NULL, '2020-12-17 06:13:51', '2020-12-17 06:13:51'),
(37, 'Maniruzzaman Akash', 'akash.corp@akij.net', NULL, '$2y$10$CRHK6.9z5IBwIFsfeGUeNu6H05HNv1SklUKXNp8H2xrThguLMQR6S', NULL, '2020-12-19 13:19:14', '2020-12-19 13:19:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
