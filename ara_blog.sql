-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 04:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ara_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, ' Web Programming', 'web-programming', '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(2, 'Web Design', 'web-design', '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(3, 'Personal', 'personal', '2023-08-17 18:28:36', '2023-08-17 18:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_08_012408_create_posts_table', 1),
(6, '2023_08_09_032101_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Non et porro sit reprehenderit.', 'non-ad-quia-voluptatum-alias-architecto-ducimus-molestiae', 'Accusantium et beatae quasi expedita et deserunt. Earum adipisci mollitia esse quo ipsa praesentium. Ea ut illo exercitationem est quo. Perferendis ipsum eius voluptates doloremque.', '<p>Ut quod placeat molestias qui dolorem. Et non et molestiae suscipit nulla voluptas incidunt vel. Odio maxime nostrum eveniet. Dolorem veritatis est sapiente deleniti quia magnam sint non.</p><p>Error quo quo eos natus rerum. Reprehenderit dolorem culpa perspiciatis nesciunt necessitatibus beatae. Deleniti omnis necessitatibus soluta sunt ab quae et fugit. Ea et nihil et modi.</p><p>Id fugit qui sed harum praesentium ipsum. Dolores ducimus numquam recusandae vel nostrum exercitationem. Enim veritatis non quam aut minima.</p><p>Saepe deleniti mollitia ut. Dignissimos nihil sequi voluptatibus non molestiae ut et corporis. Et delectus inventore neque fugit.</p><p>Explicabo nostrum natus sint voluptatem nisi dolor reiciendis optio. Placeat est quia omnis cum. Necessitatibus fuga nulla reiciendis est nam consequatur.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(2, 2, 1, 'Voluptatibus qui quisquam et sed ducimus aut deserunt.', 'placeat-non-temporibus-omnis-ipsam-et-dolorem-eum-cumque', 'At et nisi quibusdam facilis ab odio aut. Blanditiis molestias ut voluptas reprehenderit alias. Rerum similique ut et consequatur facilis nihil ut.', '<p>Debitis placeat dicta illo repellat et cumque adipisci. Ut ducimus ut accusantium distinctio non quia. Dolore possimus et aut rerum et. Distinctio porro rem ipsum quidem dolore nulla consequatur.</p><p>Et quo nihil esse amet. Dolor est nemo ut cum vel dolorum. Veniam voluptatem placeat qui saepe.</p><p>Rerum sint eligendi repudiandae atque aliquid cum aliquid. Qui quia aut ullam animi. In aut explicabo delectus rerum rerum sit sit. Nisi qui et repudiandae qui dolorem possimus.</p><p>Nemo amet occaecati aut ipsum. A reiciendis ad dignissimos nisi culpa quasi. Eum ipsa reprehenderit cupiditate quasi ducimus aut id.</p><p>Libero debitis nam ratione autem. Necessitatibus praesentium vel minima amet laborum eos iste.</p><p>Rerum eos odio ut soluta molestiae minus doloribus molestiae. Ut quos ullam velit similique fugiat. Blanditiis libero doloremque quia quas repellat ipsum.</p><p>Quo in ullam aliquid voluptas. Eaque numquam nihil ratione recusandae dolorum magni. Maiores id voluptatem ut.</p><p>Incidunt vero ut qui ex. Enim et autem ipsa iste blanditiis eum nulla. Iusto nihil soluta et et adipisci quo.</p><p>Et consectetur occaecati dolor deserunt. Qui sed laboriosam qui aut aut. Perferendis blanditiis deleniti repudiandae rem quia ipsum facilis.</p><p>Ipsum accusantium expedita voluptas ut at iure. Dolorum est voluptas delectus eligendi ad voluptatem et. Sed non harum id aperiam.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(3, 2, 2, 'Non quia officiis.', 'laudantium-sed-at-ut-aut-et', 'Id et laudantium debitis voluptates id culpa quod. Totam esse aut eius doloribus illo.', '<p>Ut qui non ut id non ut ducimus. Quibusdam doloribus ut explicabo neque. Molestiae minus odit ullam eum amet. Ipsa minus at deleniti libero harum sint.</p><p>Eligendi vero voluptas adipisci ut occaecati impedit. Amet cupiditate aut ducimus aliquam iste. Dolores accusantium qui velit molestias placeat rem.</p><p>Eius velit accusantium ratione laborum doloribus. Suscipit accusamus quo placeat et illo ratione id. Sed nemo harum earum sequi mollitia quo ut autem. Animi perspiciatis nostrum quasi provident.</p><p>Corporis inventore id nihil perspiciatis. Velit sunt doloribus temporibus iure veritatis et. Repudiandae aliquam quod reiciendis ab. Perspiciatis quod non nihil possimus et laborum explicabo pariatur.</p><p>Sed assumenda cupiditate delectus est quo. Distinctio eos aut sed. Non sunt qui iure sunt explicabo recusandae maxime facilis. Ipsa omnis ea sed libero et illo in.</p><p>Maiores repellat sint voluptas autem dolor. Reprehenderit magnam sint aperiam quod et placeat nesciunt. Ut expedita quia hic recusandae dicta voluptas sed.</p><p>Velit assumenda quia reiciendis. Quaerat sapiente molestiae nesciunt non nam. Molestiae in eum quaerat sed.</p><p>Voluptatem sit esse delectus soluta vero sit. Possimus quam qui dolorem esse sit consequuntur. Excepturi fugit voluptates et sequi.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(4, 1, 3, 'Optio aliquam dolorum.', 'a-ad-sunt-ducimus-totam-eum-aut', 'Repellat dolores enim aut nesciunt qui esse. Iusto sed deleniti et soluta nesciunt. Et voluptatem nam perspiciatis qui fugiat. Et alias necessitatibus eum dignissimos nam veritatis quisquam quas.', '<p>Distinctio laudantium eos expedita. Est non doloremque possimus totam. Modi quos eius alias eius et atque.</p><p>Fugit architecto temporibus harum quia. Et velit impedit quasi exercitationem quam ea esse tenetur.</p><p>Fugiat accusamus consequatur consequatur et qui. Nam sit ipsam ab numquam tenetur. Est rerum sunt fuga dolores.</p><p>Exercitationem architecto sunt reiciendis vel sunt natus quia quos. Esse deserunt est minima reiciendis ipsam eveniet. At animi suscipit soluta amet repellat nesciunt. Accusantium commodi rerum et eaque rerum provident occaecati.</p><p>Est rerum in fuga optio consectetur autem et necessitatibus. In fuga omnis occaecati minima aut dolor eveniet. Enim vel odio eaque ut. Dolorem est ut sit ea minima non tempore.</p><p>Dolorum aut totam voluptates reprehenderit saepe illo. Sed laudantium officia incidunt velit est. Voluptatum quam illo dolor assumenda. Laborum omnis vel voluptate corporis nostrum.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(5, 1, 1, 'Quia asperiores nulla.', 'qui-ea-eveniet-velit-est-nostrum-blanditiis-culpa', 'Architecto rerum similique nam et ea. Architecto maiores odit dolores mollitia nostrum.', '<p>Quis consequatur amet quod nisi nemo. Ad explicabo in perferendis consequatur delectus facilis et accusantium. Et tempore qui quasi qui minus blanditiis eum.</p><p>Perferendis sapiente vel possimus placeat. Culpa sed ab blanditiis omnis hic veritatis accusamus hic. Est distinctio quia quia vel praesentium cum numquam. Corrupti nam voluptas in eaque unde. Sunt consectetur optio eum animi.</p><p>Sapiente consequuntur nihil mollitia. Amet dolore nam qui architecto perspiciatis. Quia rerum ut dolor vitae et et. Et illum saepe unde ipsum qui rerum. Et eos debitis rem et sed porro.</p><p>Sunt possimus quis aperiam consectetur. Et doloribus quo et architecto eius maxime. Id aliquid alias quod ab ut. Totam magnam culpa quas est earum animi.</p><p>Quis quod ratione doloremque magni. Velit est vel inventore quo molestias in distinctio sit. Et et aut eligendi beatae quod voluptatem nisi. Pariatur doloribus delectus delectus alias quidem quos. Sit quis dicta consequatur commodi quam earum.</p><p>Officia pariatur ea eius et aut amet aut. Magni ullam esse qui aliquam dolorem est consequatur. Reiciendis delectus qui odit voluptas quis voluptate sequi. Dolorum expedita est voluptatem molestiae et facilis suscipit qui.</p><p>Non porro soluta earum qui tenetur itaque. Cum voluptatem reiciendis maiores enim corporis molestias. Earum sunt odit iste delectus reiciendis illum rerum. Fugit quam voluptates quidem molestiae.</p><p>Consequatur cumque aperiam consequatur sed id voluptatem illum. Rerum quae placeat similique. Odit maxime et neque ducimus. Incidunt distinctio aut sed nulla minima. Corrupti rerum dicta error ratione magni.</p><p>Rerum delectus ipsa iure eos quod. Dolorem dolores aut et rerum distinctio ratione rerum autem. Atque vitae aliquam temporibus laborum accusamus dicta.</p><p>Molestiae consequatur optio rerum et rerum ut tenetur. Quis et et exercitationem quis ut fuga. Velit accusamus qui eum reprehenderit.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(6, 1, 1, 'Omnis omnis aut quos recusandae.', 'assumenda-vero-excepturi-sunt-dolore-consequatur-sit-atque', 'Beatae sequi ut fugit natus eaque tenetur. Animi in rem ut. Placeat dolor facere iusto qui.', '<p>Autem laboriosam consequuntur consequatur ut. Vel natus et ut. Alias consequatur perferendis dignissimos saepe dolorem sed vero.</p><p>Et eum illo beatae assumenda modi. Consectetur repudiandae sit id ullam. Aut occaecati reiciendis non dolorem. Vero aut sequi qui.</p><p>Id omnis a quos magni. Vitae sequi sunt sint alias non deserunt vitae. Fugit asperiores magnam dolor autem officiis. Rerum nobis recusandae ut laudantium numquam.</p><p>Earum iusto magnam saepe occaecati reprehenderit. Ipsam eum ducimus molestias ut qui. Repellendus aut consequatur velit dolorum.</p><p>Optio enim laboriosam enim. Exercitationem et sint nesciunt ratione rem. Rem quia autem rem magnam accusamus.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(7, 2, 3, 'Molestiae qui quia voluptatem et labore.', 'a-tempora-voluptatem-aut-repudiandae-maiores-animi', 'Consequuntur labore est cupiditate voluptatum. Quisquam vel earum optio quas dolore cum voluptas. Voluptatibus libero accusantium temporibus accusamus delectus nulla accusamus. Et qui reprehenderit vel vero ut nihil.', '<p>Consectetur perferendis expedita vero molestias architecto voluptatibus quasi. Vitae qui dicta qui quia pariatur. Accusantium fuga illum esse saepe totam necessitatibus. Non non assumenda incidunt perspiciatis voluptas.</p><p>Dolores ea quae nihil. Quae sit non eius ea itaque qui est. Non eum eum aut.</p><p>Repudiandae eius voluptas sit. Deleniti similique dolore totam eum debitis adipisci eligendi. Eligendi nam quaerat harum dolores deserunt ut asperiores ut. Voluptatem dolores nam minima ut.</p><p>Ipsum et et ut soluta est reprehenderit. Iste ut est temporibus laborum dolorum maiores repudiandae. Qui non omnis praesentium. Debitis qui voluptas numquam id et recusandae.</p><p>Sunt odit sunt saepe at error voluptate. Itaque perferendis nemo exercitationem molestiae. Ducimus corrupti et sunt debitis sapiente aut nulla vero. Fuga id est rerum.</p><p>Nulla nihil dolorem modi provident qui ab. Nihil sapiente quia quia velit tenetur. Suscipit reiciendis magnam unde qui sint. Quas et sint ut voluptatem.</p><p>Sunt tenetur omnis reiciendis ut sunt qui id. Eos atque iusto omnis minus excepturi id ut nihil. Blanditiis itaque fugit corrupti illum. Quas tenetur quo error odit porro facere.</p><p>Possimus modi eaque aut nihil sit dolor minima. Quisquam nesciunt voluptatibus quaerat omnis quia. Qui accusamus in deleniti sunt mollitia labore. Iure autem et deleniti omnis magni ab.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(8, 2, 1, 'Sunt vel qui.', 'dolor-sit-maiores-tempora-labore', 'Rerum et ad unde ea et fugit. Sit ut libero et eaque. Repellat exercitationem doloribus quam in qui. Sunt maiores culpa ad nihil accusamus numquam.', '<p>Quo labore et provident quidem. Consequatur sequi omnis suscipit. Eaque consequatur architecto error non id. Omnis qui consequatur porro voluptatibus mollitia animi.</p><p>Vitae commodi asperiores aut reiciendis eaque ratione. Amet adipisci et ex aspernatur. Quos eos ut repudiandae nemo id ipsum sequi.</p><p>Et et ea non impedit. Error qui velit officiis sed voluptatum distinctio. Aut natus rerum aliquid aut at inventore. Sint sit quae et neque.</p><p>Ad quis deleniti adipisci quisquam ducimus aut incidunt. Blanditiis neque aperiam eligendi ut voluptatibus qui totam. Natus sed voluptatem blanditiis error dolor rerum. Possimus tenetur et quam dolores ea doloremque.</p><p>Accusantium enim non vel quisquam sequi inventore sed. Dolore ducimus laborum odio autem aut officiis. Nemo sit asperiores expedita eum et quaerat nostrum. Sapiente et in dolorem qui aut voluptatem voluptatibus.</p>', NULL, '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(9, 1, 1, 'Omnis fugit eius.', 'molestiae-occaecati-vero-quo-error-illum-iusto-magni', 'Nesciunt velit debitis voluptatum eligendi. Placeat dolores incidunt qui rerum. Eos repudiandae minima sed sit. Expedita totam cum sit quaerat sed. Similique molestiae consequatur optio sed.', '<p>Provident eligendi distinctio ipsa mollitia odit. Corrupti eaque commodi distinctio. Dolorem qui voluptatem aut officiis possimus nobis expedita.</p><p>Distinctio aliquid sint omnis quis ut. Quod sunt ut nihil libero similique.</p><p>Molestiae quibusdam ut accusantium aut velit nihil ab. Sunt veniam soluta suscipit ab explicabo iste quaerat. Modi velit autem consequuntur voluptatem qui dolores.</p><p>Est est enim dolorum quos sapiente voluptas. Neque eius ea accusantium est non. Officiis praesentium nesciunt sit odio accusamus. Dignissimos ab ut perspiciatis et tenetur.</p><p>Eligendi qui rerum illum eius nesciunt. Rerum quaerat accusantium nostrum laborum tempore. Nulla ab sit quis sunt eveniet. Temporibus aperiam esse nemo natus ipsum vel ratione voluptas. Accusantium quas ut reprehenderit atque sed eligendi porro.</p><p>Ducimus et quas placeat delectus doloribus quo. Voluptas neque quibusdam ad voluptatem odit. Harum ea consequatur occaecati exercitationem sint unde.</p><p>Eaque voluptas qui ea in aut omnis. Cumque quia ad eum tempore. Aliquam quas rerum sint. Et reprehenderit dolorum tempore.</p><p>Officiis id hic iste aliquam consequatur dolores cumque. Dignissimos aut unde nihil voluptas. Nobis cupiditate omnis ducimus consequatur. Repellat alias quos doloremque tempora delectus.</p><p>Iusto mollitia beatae inventore debitis aliquam molestiae. Fuga consequatur facere nemo voluptate earum est. Consequuntur alias asperiores qui laudantium distinctio delectus.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(10, 2, 2, 'Necessitatibus voluptatum eligendi accusamus quis ducimus est minima eius.', 'sit-laborum-ipsam-non-occaecati-adipisci', 'Molestiae deserunt non deserunt quia dolore laborum aperiam. Cupiditate nisi veniam sequi praesentium quis. Id autem harum corporis culpa. Ipsam enim necessitatibus enim commodi est eaque voluptate.', '<p>Harum repudiandae alias blanditiis ut dolores eveniet quam. Et aliquid facilis consequatur vel. Eligendi voluptatem velit eveniet et voluptatem voluptatem.</p><p>Sunt maiores expedita libero ab aliquam consequuntur. Soluta soluta minus nulla quasi. Ipsum error doloribus eum odio recusandae fugiat consequatur. Quia qui aut dolor recusandae.</p><p>Aut expedita laboriosam sit autem voluptatibus aut. Maiores explicabo soluta distinctio tempora. Numquam magnam a ut delectus eligendi est.</p><p>Consequatur omnis aut est incidunt eligendi. Aut quaerat facere porro eos. A doloremque cupiditate non mollitia. Dolorem animi sit ex quibusdam voluptatem.</p><p>Consequuntur iure et voluptas maxime sit voluptatem autem. Ducimus ea animi omnis sint possimus.</p><p>Reiciendis esse animi vel ullam magnam quas sint. Dolorem delectus quo officia ut blanditiis. Praesentium quibusdam ipsum cupiditate blanditiis omnis ut et.</p><p>Molestias in ipsam ut non totam quia. Incidunt sapiente nam tempore est. Saepe et qui officia ut necessitatibus. Et dolorem minima numquam.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(11, 1, 1, 'Ut esse a similique eius et molestias.', 'delectus-consequuntur-adipisci-est-voluptatum-sapiente-aut-sunt', 'Exercitationem asperiores voluptatibus nulla aut porro qui sit. Molestias mollitia fugiat excepturi omnis modi perferendis. Laudantium aut consequatur expedita iure. Voluptatem et earum aliquam provident placeat quod voluptas. Laudantium hic dolorem sequi aut alias.', '<p>Natus soluta id iusto harum. Error accusantium nihil dolor exercitationem ratione et. Vero pariatur esse et eos quod.</p><p>Nam quo ullam repellat eligendi delectus. Quia ut corrupti et vitae. Autem voluptas voluptate sint. Iusto quae accusamus qui exercitationem.</p><p>Numquam aperiam quia et velit sequi quis eum quam. Qui vero sed sint non iure vero harum. Aut vel nihil veritatis tempore non. Vitae fugit quae ipsam delectus et explicabo.</p><p>Ex fugit veritatis nihil autem consectetur ipsum. Voluptatem aut incidunt sint aspernatur rerum magnam. Vero aspernatur omnis officia facilis. Nam reprehenderit id qui perspiciatis fugit sequi sit. Sit consequatur quos possimus expedita voluptatem et.</p><p>Et recusandae eum unde aut voluptate tenetur ut. Eius ut ut praesentium ea et consequuntur distinctio eius. Beatae quia in magni reprehenderit blanditiis. Voluptatem recusandae itaque porro magni ducimus enim.</p><p>Quas cupiditate aut perferendis aut. Itaque est voluptatibus tempora minus assumenda deleniti nemo non. Fugiat ipsa dolores odio suscipit unde saepe.</p><p>Velit et delectus commodi est culpa. Quisquam explicabo dolorem qui aut ratione qui labore. Dolorem repellendus repellendus fugiat assumenda laudantium reiciendis. Consequatur est veniam error quod ut. Temporibus eum voluptas non ullam.</p><p>Similique sed quod repudiandae sequi nihil maiores et. Sunt doloribus est quaerat at similique accusantium consequuntur. Velit quae rerum rem maxime et. Id sint illum enim soluta dolorum deleniti.</p><p>Officia veniam dolores dolores quidem. Et nam velit qui excepturi sed vitae quia.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(12, 2, 2, 'Cumque eos perferendis laborum enim.', 'unde-officiis-consectetur-quos-quidem-ut-magnam', 'Ex ad accusamus illo ipsa qui et reprehenderit. Eligendi odit praesentium illum illum quia. Ut iure quia eum animi aut saepe. Voluptatum natus voluptatem et quam rem.', '<p>Vitae eum voluptate pariatur et doloremque ea eum fugiat. Nisi ducimus soluta omnis aut repellat ducimus quia natus. Repellat repellat omnis voluptas dolor consectetur maxime eum. Sed distinctio nostrum in. Quia eaque a illo adipisci.</p><p>Maiores quibusdam eum ad rerum rerum atque et. Similique et expedita velit. Laborum et rerum minima similique. Et illo fugit provident quibusdam incidunt quaerat illo quo.</p><p>Nam est magnam voluptatem facilis. Aut est amet fugit sunt porro non. Molestiae et est natus tenetur. Vel molestiae modi similique aliquid.</p><p>Nulla et iusto repellendus sit temporibus. Officia modi exercitationem suscipit voluptates. Aspernatur qui iure debitis aut eos nesciunt. Non architecto hic quam rerum cumque aut. Voluptates est ratione voluptatem non.</p><p>Molestias aut velit illum. Reprehenderit et laborum illum mollitia in. Eum sit quam libero et ex sed et. Qui non consequatur eveniet vero commodi temporibus omnis alias.</p><p>Commodi ut necessitatibus et et sapiente quos. Sed aliquid voluptate laborum. Perspiciatis labore illo similique qui non dolor doloribus.</p><p>Sunt et dicta suscipit ut voluptatem qui. Aut qui inventore ea animi sit id doloribus. Atque voluptatem dolorem deserunt. Impedit veniam iste cum eveniet.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(13, 1, 3, 'Architecto dolore et at perspiciatis necessitatibus officia.', 'accusantium-possimus-qui-dolorem-dolore', 'Quasi rerum impedit adipisci reiciendis voluptatem similique dolores hic. Qui est qui ab nihil. Harum fugit voluptate quia reprehenderit quis. Non officiis qui minima et soluta.', '<p>Facere ipsum ipsa corrupti quo incidunt est enim non. Assumenda corrupti ea officia omnis veritatis ex provident. Eos enim quo tempora non non soluta aut saepe. Ipsum ut soluta possimus eligendi sapiente distinctio pariatur.</p><p>Accusantium odit quo vitae. Quod sint esse aut illo magnam. Animi quo explicabo est.</p><p>Hic error qui doloribus voluptatibus. Quam magnam vel asperiores esse quis et. Animi omnis placeat eaque id itaque. Ea aspernatur quia fugiat labore animi laudantium.</p><p>Rerum doloremque molestiae dolor voluptatem voluptas quo. Omnis illum et assumenda porro nemo ratione illum. Cum unde aut quaerat autem deleniti. Et aut harum laborum quis quidem beatae distinctio et.</p><p>Quod quam modi ut id architecto officiis. Error quam sit autem omnis totam modi rerum consequuntur. Praesentium officia labore alias a quas corrupti.</p><p>Ratione iste quia dolores beatae delectus voluptas ab et. Corrupti nesciunt ex et qui alias. Facilis sunt sed inventore doloribus tenetur et.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(14, 1, 2, 'Adipisci sequi aliquid praesentium est aut.', 'tempore-quis-sit-aliquam-doloremque-soluta-repellat-eaque-sit', 'Aliquam alias est non recusandae voluptatem. Ipsum omnis tenetur sapiente. Earum ut rem qui pariatur.', '<p>Nihil optio consectetur aut nihil. Voluptatem consectetur expedita molestias voluptas ratione. Et iure beatae ex dolorem eaque sit temporibus accusantium. Labore nesciunt nam sapiente quas facere ea repellendus.</p><p>Magnam ipsa dolor temporibus veniam laboriosam quos. Et sunt labore eos. Sit doloribus ut recusandae.</p><p>Voluptatem quo et ea perferendis. Cum accusamus aut sunt aut. Non corrupti nisi quisquam sint modi quia.</p><p>Saepe ut quia qui. Ipsam aspernatur consequatur omnis neque repellendus vel. Est voluptatum ut sunt rerum aut dicta eos. Beatae quisquam error ut voluptatem.</p><p>Quia iure eaque nihil. Veritatis repellat enim veniam officiis odit et et. Quis aut et tempora sunt et deserunt neque. Sit delectus sint odio voluptatum.</p><p>Et quia possimus reprehenderit. Facere odio ipsa exercitationem autem voluptatem.</p><p>Quam consequatur omnis alias iusto qui. Temporibus qui porro cum quia ratione ab. Accusantium sunt et optio illum itaque voluptas facilis repudiandae.</p><p>Sunt perspiciatis alias sit dolores delectus. Omnis expedita quo voluptatem et id voluptatem. Deleniti tenetur quaerat quia sit.</p><p>Officiis fuga molestiae id cupiditate nesciunt at. Ut qui excepturi assumenda quia est error voluptatem. Laborum cum dignissimos fugiat quis voluptatem. Tenetur consequuntur est sed.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(15, 2, 2, 'Voluptatem sint dolorem rerum excepturi.', 'autem-rem-perspiciatis-officia-eum-eos-doloribus', 'Laboriosam assumenda voluptate quibusdam cupiditate. Voluptas perspiciatis laborum officiis modi est quae. Nobis voluptatem cum iure omnis nisi placeat aut. Voluptatem amet autem corrupti molestiae. Animi tempore quam blanditiis voluptas unde.', '<p>Debitis alias omnis ut sapiente. Illum vitae veniam placeat omnis. Dolor dolorem odio et. Libero magni quia beatae saepe. Est est cupiditate architecto odit.</p><p>Vel reiciendis eum voluptatum in voluptatem accusamus. Eveniet consequuntur id cum quis eius corporis ullam. Qui autem at quia et qui suscipit.</p><p>Eum quam officiis consectetur inventore. Mollitia explicabo doloribus facere et sint doloremque aperiam nemo. Esse unde sapiente quaerat consequatur laudantium voluptas in repudiandae. Consectetur et fugit quia.</p><p>Perspiciatis asperiores eligendi ad. Et dolorum consequatur ea eaque animi. Dolor ea sint dolorem aut itaque.</p><p>Veniam fugit voluptatem earum est eos quidem. Quia ullam qui et deleniti at dolor numquam. Nihil consequuntur voluptatem tempora expedita expedita labore vero. Qui harum dolorum voluptas rerum dignissimos blanditiis. Earum tempore omnis ea.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(16, 2, 1, 'Sed qui ex ipsam dolorem libero porro iste qui.', 'repellendus-illum-qui-dolorem-impedit-est-architecto', 'Incidunt consequatur cumque natus et quidem repellat aut. Quis soluta qui dolorem laudantium qui dolore. At ut dicta voluptatem a asperiores.', '<p>Sint repellat doloremque sunt est et in illo. Ab cumque cupiditate aut libero adipisci. Optio sequi ad eum tempore hic.</p><p>Ad ipsam ipsa ut veniam ipsum et excepturi. Veniam vitae illo quas atque. Beatae nisi sed necessitatibus.</p><p>Tempore non nam omnis quas est molestias. Asperiores quam vero magnam atque harum voluptatem cupiditate. Consectetur id ut voluptatum recusandae qui voluptatibus ut. Illum id est animi ut dolore nisi aspernatur.</p><p>Recusandae ipsum voluptatem qui voluptatem repudiandae suscipit aut harum. Reprehenderit accusantium explicabo nam sit. Nihil dignissimos totam sit facilis qui accusamus quo.</p><p>Molestias aut qui sint mollitia. Aut ut beatae veniam consequuntur doloribus aut illum. Aut placeat eum aspernatur ut ut commodi quibusdam eius.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(17, 2, 3, 'Dignissimos eveniet amet.', 'adipisci-dolorem-sed-consectetur-tempora', 'Hic et et alias exercitationem. Commodi ipsam qui corrupti quis numquam. Ipsa animi voluptatem ut laborum delectus.', '<p>Natus in perspiciatis laboriosam pariatur fuga nobis quis. Minus hic nemo ex. Sed omnis voluptas sit non.</p><p>Nulla rerum consectetur consequuntur ut. Voluptatum dolorem nihil similique consequatur necessitatibus. Dolor doloremque recusandae odio quia ut qui suscipit id.</p><p>Sit nesciunt quo nisi voluptates sequi. Quam consequatur repudiandae culpa et culpa vel et error. Ut porro sint consectetur dolorem.</p><p>Dicta cupiditate dolor eius dolorem enim dolor dolorum. Dolorem ea perferendis odio nulla necessitatibus. Omnis id voluptates incidunt voluptatum earum officiis distinctio.</p><p>Sunt et laudantium consequatur non. Voluptas tenetur totam voluptatem. Non et perspiciatis quia consequuntur sint.</p><p>Fugit sunt fugiat esse voluptates corporis quia odio. Magni dolor illo et cum quis eius error. Cumque atque quidem et odio id modi dolorum. Amet veniam asperiores repellendus molestias.</p><p>Cumque consequuntur incidunt hic excepturi recusandae nemo. Dicta ducimus ipsam voluptate nobis quo cupiditate. Repudiandae dolore blanditiis odio rerum blanditiis. Impedit assumenda possimus in modi excepturi.</p><p>Tenetur quos quia illum nobis recusandae ut voluptate recusandae. Qui velit est et eveniet soluta laborum rerum ea. Autem dolor eum consequatur eum nulla voluptatem eos quia. Nemo necessitatibus commodi voluptas iure.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(18, 2, 1, 'Error dolor excepturi dolores repellat nam.', 'velit-dicta-asperiores-natus-enim-consectetur', 'Dolor ea ut quia. Aut iusto deserunt sed consequatur minima et sunt. Cupiditate sed laboriosam cumque. Et est aut doloribus explicabo modi.', '<p>Sed cumque pariatur harum voluptatem officia eos. Inventore aut nemo fugiat eaque quia harum. Voluptatum voluptas quia et voluptatem illo hic. Hic voluptatum consequatur ut eos sint recusandae voluptates est.</p><p>Repudiandae aspernatur eaque aut aut. Quam et iste magnam culpa. Molestiae necessitatibus nisi laborum suscipit eius ab dolores occaecati.</p><p>Iure at rerum ut praesentium excepturi. Ab impedit ducimus ut. Quibusdam eligendi autem odit ducimus aut at inventore. Cumque adipisci est ducimus minus.</p><p>Est eum et suscipit ab enim rerum ad. Dolor exercitationem dolor dolorem. Vitae ipsam quos nemo. Eligendi sunt quia ipsum.</p><p>Omnis iste similique blanditiis consequatur nam dolorem dolorem. Est voluptatem unde distinctio. Aliquam ex in maxime laborum nam sed reprehenderit. Distinctio quam soluta ut aut.</p><p>Ex at molestias beatae adipisci quod nihil facilis rerum. Quasi nesciunt sint voluptates beatae sed aut qui. Ea ea amet distinctio tempora praesentium fugiat quo minus.</p><p>Explicabo qui enim facere. Assumenda libero aut rerum eius non neque dolores deleniti. Ut dignissimos delectus dignissimos iste. Sit et optio nam temporibus itaque.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(19, 2, 3, 'Aut aut ut aut beatae rerum quis nobis.', 'in-id-doloribus-sed', 'Delectus omnis esse id sunt reiciendis. Saepe sed odio saepe magni reprehenderit.', '<p>Autem dolor itaque quis quo repudiandae dignissimos rerum. Perferendis quisquam et explicabo neque sed numquam non omnis.</p><p>Cum minima aliquam in at quas ipsam. Dolor accusantium in quia vel aperiam. Illum nostrum explicabo dolor cum.</p><p>Illum ea dignissimos porro asperiores eos. Incidunt vitae dolor rerum nemo repellat. At exercitationem sequi magnam corporis. Sed similique sunt atque quos perspiciatis impedit.</p><p>Aliquam amet autem officia voluptatibus. Consequatur eligendi labore autem corrupti esse fugit.</p><p>Delectus eos quas saepe quidem. Dolor dolorem non illo nisi animi.</p><p>Dignissimos magnam consequatur molestiae porro. A dolorem illo harum iure voluptatibus temporibus doloremque. Alias eligendi voluptatem odit minus esse. Omnis eius eum temporibus voluptatem natus praesentium aperiam odio.</p><p>Quod beatae nulla in nemo. Molestias adipisci maiores blanditiis similique earum. Quod sit perspiciatis sunt doloremque. Et cupiditate numquam voluptas cumque excepturi quis voluptatem.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37'),
(20, 1, 2, 'Eligendi dicta cumque doloribus.', 'blanditiis-autem-aut-commodi-accusamus', 'Quia autem reiciendis maiores illum minus veniam aliquid. Ut reprehenderit provident labore rem necessitatibus eligendi reiciendis.', '<p>Eaque aspernatur est quam quis quos et. Ab delectus ut voluptas expedita officiis ut qui. Dolorem incidunt eveniet qui neque est totam beatae. Saepe nulla molestiae omnis ab est sequi.</p><p>Excepturi sunt earum qui incidunt. Libero sunt molestias ut dolores consectetur. Reprehenderit et qui labore voluptatum quae.</p><p>Dolores quos eos id consequatur voluptatem est. Et ut qui voluptatem praesentium.</p><p>Nostrum quo non ad vel sit. In facilis laboriosam et blanditiis nostrum possimus amet. Autem voluptatum aut doloremque facere fuga fuga. Placeat omnis quos sapiente et magni in architecto.</p><p>Porro ut et numquam error tenetur ab autem et. Tempora consequatur ut et qui. Sint libero aut asperiores et est pariatur. Fugit voluptatibus ratione et voluptates saepe. Non aperiam repellendus et aut iure aut qui.</p>', NULL, '2023-08-17 18:28:37', '2023-08-17 18:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tari Rahayu', 'wani50', 'kamila.putra@example.org', '2023-08-17 18:28:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1DbVy7d9cQ', '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(2, 'Harjaya Empluk Siregar S.I.Kom', 'gilda.lestari', 'ilsa.prayoga@example.org', '2023-08-17 18:28:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VR5dagxWk1', '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(3, 'Talia Uyainah', 'latika.sinaga', 'ismail.irawan@example.org', '2023-08-17 18:28:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '20yrF3f9hf', '2023-08-17 18:28:36', '2023-08-17 18:28:36'),
(6, 'zid', 'zidan', 'zid@gmail.com', NULL, '$2y$10$amcpQhXsHCG922/AEQAVcOz12Lud8040gYoCpG3mfVMLTlTbatSsC', NULL, '2023-08-25 06:22:32', '2023-08-25 06:22:32'),
(7, 'ggg', 'gakk', 'gak@gmail.com', NULL, '$2y$10$viUVQafrTlTHagsxiaaLk.CoylXNYNIUbzYrUaICKIP3x35xiGxzm', NULL, '2023-08-25 06:33:05', '2023-08-25 06:33:05'),
(8, 'ara', 'araz', 'ara@gmail.com', NULL, '$2y$10$BUiBsjaudc0h1oBy9ATwjOHaFPYrJVinNR6N/a/nNLR5n91LKt0bG', NULL, '2023-08-25 07:28:27', '2023-08-25 07:28:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
