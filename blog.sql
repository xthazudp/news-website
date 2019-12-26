-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2019 at 11:43 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Politics', 1, '2019-12-23 20:01:58', '2019-12-23 20:01:58'),
(2, 'Lifestyle', 1, '2019-12-23 20:02:09', '2019-12-23 20:02:09'),
(3, 'Interview', 1, '2019-12-23 20:02:20', '2019-12-23 20:02:20'),
(4, 'Business', 1, '2019-12-23 20:02:32', '2019-12-23 20:02:43'),
(5, 'Travel', 1, '2019-12-23 20:02:52', '2019-12-23 20:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hari', 'hello comment', 3, 0, '2019-12-20 18:15:00', '2019-12-20 18:15:00'),
(2, 'Ram', 'comment test', 3, 1, '2019-12-20 18:15:00', '2019-12-21 00:41:05'),
(3, 'admin', 'okay', 3, 1, '2019-12-21 00:26:06', '2019-12-21 00:41:03'),
(4, 'admin', 'hello', 3, 1, '2019-12-21 00:52:09', '2019-12-21 00:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_19_065916_entrust_setup_tables', 2),
(4, '2019_12_20_113235_create_categories_table', 3),
(5, '2019_12_20_134444_create_posts_table', 4),
(6, '2019_12_21_014951_create_posts_table', 5),
(7, '2019_12_21_045056_create_comments_table', 6),
(8, '2019_12_21_063953_create_settings_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Permission Add', 'Permission Add', 'Permission Add', '2019-12-19 23:22:53', '2019-12-19 23:22:53'),
(7, 'Permission List', 'Permission List', 'Permission List', '2019-12-19 23:23:23', '2019-12-19 23:23:23'),
(8, 'Permission Update', 'Permission Update', 'Permission Update', '2019-12-19 23:23:41', '2019-12-19 23:23:41'),
(9, 'Permission Delete', 'Permission Delete', 'Permission Delete', '2019-12-19 23:24:00', '2019-12-19 23:24:00'),
(10, 'Role Add', 'Role Add', 'Role Add', '2019-12-19 23:26:05', '2019-12-19 23:26:05'),
(11, 'Role List', 'Role List', 'Role List', '2019-12-19 23:26:31', '2019-12-19 23:26:31'),
(12, 'Role Update', 'Role Update', 'Role Update', '2019-12-19 23:27:06', '2019-12-19 23:27:06'),
(13, 'Role Delete', 'Role Delete', 'Role Delete', '2019-12-19 23:27:24', '2019-12-19 23:27:24'),
(14, 'Category Add', 'Category Add', 'Category Add', '2019-12-19 23:27:57', '2019-12-19 23:27:57'),
(15, 'Category List', 'Category List', 'Category List', '2019-12-19 23:28:40', '2019-12-19 23:28:40'),
(16, 'Category Update', 'Category Update', 'Category Update', '2019-12-19 23:29:23', '2019-12-19 23:29:23'),
(17, 'Category Delete', 'Category Delete', 'Category Delete', '2019-12-19 23:29:48', '2019-12-19 23:29:48'),
(18, 'Post Add', 'Post Add', 'Post Add', '2019-12-19 23:30:23', '2019-12-19 23:30:23'),
(19, 'Post List', 'Post List', 'Post List', '2019-12-19 23:31:02', '2019-12-19 23:31:02'),
(20, 'Post Update', 'Post Update', 'Post Update', '2019-12-19 23:31:38', '2019-12-19 23:31:38'),
(21, 'Post Delete', 'Post Delete', 'Post Delete', '2019-12-19 23:32:03', '2019-12-19 23:32:03'),
(22, 'Comment View', 'Comment Viewl', 'Comment View', '2019-12-19 23:33:21', '2019-12-19 23:33:21'),
(23, 'Comment Reply', 'Comment Reply', 'Comment Reply', '2019-12-19 23:33:49', '2019-12-19 23:33:49'),
(24, 'Comment Approval', 'Comment Approval', 'Comment Approval', '2019-12-19 23:34:08', '2019-12-19 23:34:08'),
(25, 'System Settings', 'System Settings', 'System Settings', '2019-12-19 23:35:12', '2019-12-19 23:35:12'),
(26, 'All', 'All', 'All', '2019-12-19 23:35:27', '2019-12-19 23:35:27'),
(27, 'Author List', 'Author List', 'Author List', '2019-12-19 23:35:59', '2019-12-19 23:35:59'),
(28, 'Author Add', 'Author Add', 'Author Add', '2019-12-19 23:36:31', '2019-12-19 23:36:31'),
(29, 'Author Update', 'Author Update', 'Author Update', '2019-12-19 23:37:09', '2019-12-19 23:37:09'),
(30, 'Author Delete', 'Author Delete', 'Author Delete', '2019-12-19 23:37:50', '2019-12-19 23:37:50'),
(36, 'Permission', 'Permission', 'Permission', '2019-12-20 01:27:18', '2019-12-20 01:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(18, 5),
(18, 6),
(19, 5),
(19, 6),
(20, 5),
(20, 6),
(21, 6),
(22, 6),
(23, 5),
(23, 6),
(24, 6),
(26, 4),
(36, 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL,
  `hot_news` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_description`, `description`, `slug`, `category_id`, `created_by`, `main_image`, `thumb_image`, `list_image`, `view_count`, `hot_news`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NCP lawmaker wants got to inform House about Gokarna Resort deal', 'A lawmaker of the ruling Nepal Communist Party has demanded that the government inform the Federal Parliament about its decision to lease the land belonging to Nepal Trust for the operation of Gokarna Forest Resort to Yeti Holdings, an influential private company in the country.', '<p>Khim Lal Bhattarai</p>\r\n\r\n<p>Kathmandu, December 23</p>\r\n\r\n<p>A lawmaker of the ruling Nepal Communist Party has demanded that the government inform the Federal Parliament about its decision to lease the land belonging to Nepal Trust for the operation of Gokarna Forest Resort to Yeti Holdings, an influential private company in the country.</p>\r\n\r\n<p>Khim Lal Bhattarai, also the chief whip of the party in the National Assembly, made the demand during the Upper House meeting today. His urge follows a number of media reports that said the government leased the land at a nominal rate.</p>\r\n\r\n<p>&ldquo;After criticisms and controversies come out, it is the government&rsquo;s duty to make the issue clear,&rdquo; he said, &ldquo;The government should inform the House about the issue.&rdquo;</p>\r\n\r\n<hr />\r\n<p>Published on December 23rd, Monday, 2019 2:31 PM</p>', 'ncp-lawmaker-wants-got-to-inform-house-about-gokarna-resort-deal', 1, 1, 'post_main_1.jpg', 'post_thumb_1.jpg', 'post_list_1.jpg', 0, 0, 1, '2019-12-23 20:11:01', '2019-12-23 20:11:02'),
(2, 'NCP’s weeklong standing committee meeting over, CC meeting called for Jan 8', 'The weeklong standing committee meeting of the ruling Nepal Communist Party has been over on Sunday. The meeting had begun on Sunday last week.', '<p>Nepal Communist Party leaders during a standing committee meeting in Kathmandu, in December 2019.</p>\r\n\r\n<p>Kathmandu, December 22</p>\r\n\r\n<p>The weeklong standing committee meeting of the ruling Nepal Communist Party has been over on Sunday. The meeting had&nbsp;<a href=\"https://english.onlinekhabar.com/ncp-discussing-statute-amendment-border-dispute-in-its-standing-committee-meeting.html\">begun on Sunday</a>&nbsp;last week.</p>\r\n\r\n<p>The meeting decided to call a central committee meeting on January 8, 2020, according to a leader. As the party held its standing committee meeting after several months last week, it has already been months since the central committee met last.</p>\r\n\r\n<p>The meeting endorsed the political report presented by two chairmen&ndash;KP Sharma Oli and Pushpa Kamal Dahal with some amendments and suggestions. However, it decided to forward the party charter amendment proposal tabled by general secretary Bishnu Paudel to the central committee for further discussion, according to standing committee member Bhim Rawal.</p>\r\n\r\n<p><strong>&lsquo;US has to prove Indo-Pacific Strategy and MCC are different&rsquo;</strong></p>\r\n\r\n<p>Meanwhile, the meeting also decided to urge the government to hold talks with the United States government about the Millennium Challenge Corporation grant agreement signed with Nepal in 2017. The meeting said the government should accept the grant only after the US proved it was not a part of the controversial Indo-Pacific Strategy.</p>\r\n\r\n<p>Earlier, some leaders of the party had strongly&nbsp;<a href=\"https://english.onlinekhabar.com/ncp-leadership-ready-to-endorse-mcc-pact-despite-dissident-voices.html\">advocated against</a>&nbsp;the deal. The agreement&rsquo;s implementation is pending as Parliament has&nbsp;<a href=\"https://english.onlinekhabar.com/mccs-nepal-manager-asks-parliament-to-endorse-deal-in-this-session.html\">not yet endorsed</a>&nbsp;the document.</p>\r\n\r\n<hr />\r\n<p>Published on December 22nd, Sunday, 2019 2:53 PM</p>', 'ncps-weeklong-standing-committee-meeting-over-cc-meeting-called-for-jan-8', 1, 1, 'post_main_2.jpg', 'post_thumb_2.jpg', 'post_list_2.jpg', 0, 1, 1, '2019-12-23 20:12:38', '2019-12-23 20:12:49'),
(3, 'President ‘not happy’ with Oli govt', 'President Bidya Devi Bhandari is not satisfied with the current performance of the government, some leaders of the ruling Nepal Communist Party who met the head of the state on Saturday inform.', '<p>President Bidya Devi Bhandari</p>\r\n\r\n<p>Kathmandu, December 22</p>\r\n\r\n<p>President Bidya Devi Bhandari is not satisfied with the current performance of the government, some leaders of the ruling Nepal Communist Party who met the head of the state on Saturday inform.</p>\r\n\r\n<p>&ldquo;Do you think the government is performing as it promised in its annual policy and programme and the budget plan,&rdquo; the president questioned the leaders, &ldquo;I have been reading various kinds of news reports. How is the government moving ahead? What do you think about it?&rdquo;</p>\r\n\r\n<p>A leader says the president, in particular, was concerned about the government&rsquo;s recent decision to lease a land piece owned by Nepal Trust to a private business group at a very cheap rate.</p>\r\n\r\n<p>During the lunch meeting, the president told the leaders to work effectively and seriously as the government with the two-thirds majority support had a historic opportunity.</p>\r\n\r\n<p>While the party was holding its standing committee meeting at its central office in Dhumbarahi, Bhandari had summoned Foreign Affairs Minister Pradeep Gyawali, Energy Minister Barsha Man Pun, Environment Minister Shakti Basnet, Province 5 Chief Minister Shankar Pokhrel, and leaders Janardan Sharma, Surendra Pandey and Devendra Paudel to Sheetal Niwas for the meeting.</p>\r\n\r\n<p>Meanwhile, the party&rsquo;s executive chairman Pushpa Kamal Dahal and other leaders objected to the ceremonial president&rsquo;s interference in the political affairs and the leaders&rsquo; act of meeting her without informing the party.</p>\r\n\r\n<hr />\r\n<p>Published on December 22nd, Sunday, 2019 12:19 PM</p>', 'president-not-happy-with-oli-govt', 1, 1, 'post_main_3.jpg', 'post_thumb_3.jpg', 'post_list_3.jpg', 0, 0, 1, '2019-12-23 20:14:09', '2019-12-23 20:14:10'),
(4, 'Federal Parliament to begin new session today', 'The Federal Parliament is beginning the new session of Parliament on Friday. President Bidya Devi Bhandari, upon a recommendation from the Cabinet, has summoned the fifth session to begin from this afternoon.', '<p>Kathmandu, December 20</p>\r\n\r\n<p>The Federal Parliament is beginning the new session of Parliament on Friday. President Bidya Devi Bhandari, upon a recommendation from the Cabinet, has summoned the fifth session to begin from this afternoon.</p>\r\n\r\n<p>Both houses&ndash;the House of Representatives and the National Assembly&ndash;will have their meetings today. Whereas National Assembly chairman Ganesh Prasad Timilsina will chair the Upper House, deputy speaker Shiva Maya&nbsp;<a href=\"https://english.onlinekhabar.com/ncp-leadership-agrees-to-let-tumbahamphe-chair-first-house-meeting-of-next-session.html\">Tumbahamphe will chair</a>&nbsp;the Lower House.</p>\r\n\r\n<p>In the beginning, both of them will read out a letter sent by the President&rsquo;s Office about summoning the session.</p>\r\n\r\n<p>Meanwhile, the National Assembly has already finalised agenda for the meeting today. The House of Representatives is yet to finalise the Friday business. Deputy speaker Tumbahamphe has called a meeting of the Business Advisory Committee for 1 pm today to finalise the list.</p>\r\n\r\n<hr />\r\n<p>Published on December 20th, Friday, 2019 9:23 AM</p>', 'federal-parliament-to-begin-new-session-today', 1, 1, 'post_main_4.jpg', 'post_thumb_4.jpg', 'post_list_4.jpg', 0, 0, 1, '2019-12-23 20:15:00', '2019-12-23 20:15:00'),
(5, 'NCP leadership agrees to let Tumbahamphe chair first House meeting of next session', 'The ruling Nepal Communist Party has agreed to let its leader and deputy speaker Shiva Maya Tumbahamphe chair the first meeting of the next session of the House of Representatives. President Bidya Devi Bhandari has summoned the meeting this Friday afternoon.', '<p>Shiva Maya Tumbahamphe</p>\r\n\r\n<p>Kathmandu, December 19</p>\r\n\r\n<p>The ruling Nepal Communist Party has agreed to let its leader and deputy speaker Shiva Maya Tumbahamphe chair the first meeting of the next session of the House of Representatives. President Bidya Devi Bhandari has summoned the meeting this Friday afternoon.</p>\r\n\r\n<p>Though the parliamentary regulations allow the deputy speaker to carry out duties of the speaker in the speaker&rsquo;s absence, the law says the speaker begins and ends the House session. In the absence of speaker after Krishna Bahadur Mahara&rsquo;s resignation in October, Tumbahamphe has been leading the House, but some have raised questions.</p>\r\n\r\n<p>Similarly, the ruling party is pressing Tumbahamphe to resign from the position so that the party can file candidacy for the speaker. Because the constitution has a provision for speaker and deputy from different parties, the party cannot contest the election unless Tumbahamphe resigns. But staking her claim on the position, Tumbahamphe is refusing to step down.</p>\r\n\r\n<p>In this context, the NCP parliamentary party&rsquo;s deputy leader Subas Chandra Nembang mediated between the party leadership and Tumbahamphe and convinced that Tumbahamphe would chair the first meeting and announce the schedule for the speaker&rsquo;s election before submitting the resignation, according to sources.</p>\r\n\r\n<p>The NCP is yet to make any decision about who will contest the speaker&rsquo;s election.</p>\r\n\r\n<hr />\r\n<p>Published on December 19th, Thursday, 2019 12:08 PM</p>', 'ncp-leadership-agrees-to-let-tumbahamphe-chair-first-house-meeting-of-next-session', 1, 1, 'post_main_5.jpg', 'post_thumb_5.jpg', 'post_list_5.jpg', 0, 0, 1, '2019-12-23 20:15:50', '2019-12-23 20:15:50'),
(6, 'Govt committed to diplomatic solution to border dispute: PM tells Supreme Court', 'Prime Minister KP Sharma Oli has told the Supreme Court that the government is committed to finding a solution to a recent border dispute with India through diplomatic communications.', '<p>Prime Minister KP Sharma Oli has told the Supreme Court that the government is committed to finding a solution to a recent border dispute with India through diplomatic communications.</p>\r\n\r\n<p>Responding to the court&rsquo;s order to furnish a written answer over the issue, the prime minister also claimed that diplomatic efforts were underway to solve the issue, hence the court&rsquo;s intervention was not needed.</p>\r\n\r\n<p>Earlier, advocate Kanchan Krishna Neupane had filed a case at the court, demanding that the court order the government to return its encroached land. But, the prime minister said, &ldquo;Since needful efforts are underway for the safeguarding of Nepal&rsquo;s border and the Nepali land, and the issue will be solved through diplomatic channels, the court needs not issuing any order. This writ deserves to be scrapped.&rdquo;</p>\r\n\r\n<p>He also added that the government recently formed a committee for border surveillance.</p>\r\n\r\n<hr />\r\n<p>Published on December 18th, Wednesday, 2019 3:01 PM</p>', 'govt-committed-to-diplomatic-solution-to-border-dispute-pm-tells-supreme-court', 1, 1, 'post_main_6.jpg', 'post_thumb_6.jpg', 'post_list_6.jpg', 0, 0, 1, '2019-12-23 20:16:47', '2019-12-23 20:16:47'),
(7, 'Commission publishes National Assembly election calendar', 'The Election Commission has published its calendar for the National Assembly elections scheduled for January 23, 2020.', '<p>Kathmandu, December 18</p>\r\n\r\n<p>The Election Commission has published its calendar for the National Assembly elections&nbsp;<a href=\"https://english.onlinekhabar.com/national-assembly-poll-on-jan-23-2020-to-elect-a-third-of-members.html\">scheduled for January 23</a>, 2020.</p>\r\n\r\n<p>The term of 19 lawmakers, a third of the 59-member Upper House, is expiring on March 4, 2020. The constitution requires elections to be held to fill the vacancies at least 35 days before that. Whereas 18 members will be elected, the last member will be appointed by the President.</p>\r\n\r\n<p>Chiefs and deputies of local governments and provincial lawmakers will cast their votes in the elections. Votes of these two groups will have different weights.</p>\r\n\r\n<p>According to the commission&rsquo;s schedule, the election procedure will begin on January 2 with the publication of voters&rsquo; list. The other steps are as follows:</p>\r\n\r\n<ul>\r\n	<li>January 2: Publication Of Voters&rsquo; List; Complaints About The List</li>\r\n	<li>January 3: Investigation Into The Complaints; Publication Of The Final List</li>\r\n	<li>January 5: Nomination Of Candidates; Publication Of The Candidates&rsquo; List</li>\r\n	<li>January 6: Complaints Against The Candidates</li>\r\n	<li>January 7: Investigation Into The Complaints</li>\r\n	<li>January 8: Publication Of The Candidates&rsquo; List</li>\r\n	<li>January 9: Withdrawal Of The Candidacies</li>\r\n	<li>January 10: Publication Of The Final List Of The Candidates; Distribution Of Election Symbols</li>\r\n	<li>January 23: Voting</li>\r\n</ul>', 'commission-publishes-national-assembly-election-calendar', 1, 1, 'post_main_7.jpg', 'post_thumb_7.jpg', 'post_list_7.jpg', 0, 0, 1, '2019-12-23 20:18:49', '2019-12-23 20:18:50'),
(8, 'NCP leadership ‘ready’ to endorse MCC pact despite dissident voices', 'Though a few leaders of the ruling Nepal Communist Party have publicly protested a two-year-old agreement about the United States government’s 500 million dollar grant support to Nepal through its Millenium Challenge Corporation (MCC), the party leadership is not in the position to protest the deal publicly, insiders say.', '<p>Kathmandu, December 18</p>\r\n\r\n<p>Though a few leaders of the ruling Nepal Communist Party have publicly protested a two-year-old agreement about the United States government&rsquo;s 500 million dollar grant support to Nepal through its Millenium Challenge Corporation (MCC), the party leadership is not in the position to protest the deal publicly, insiders say.</p>\r\n\r\n<p>Saying that the protests were raised &lsquo;just for the formality&rsquo;s sake&rsquo;, they claim the party leadership including Prime Minister and chairman KP Sharma Oli and executive chairman Pushpa Kamal Dahal is ready to endorse the pact from Parliament. The agreement&rsquo;s implementation has not started yet as the legislative has not approved the deal.</p>\r\n\r\n<p>Prime Minister Oli is for an early endorsement and implementation of the agreement. He had publicly criticised the then speaker Krishna Bahadur Mahara for failing to approve the deal from the House during the last session.</p>\r\n\r\n<p>Further, the International Affairs Department of the party has also suggested that the party endorse the deal after a minute study, hence the party is not in a position to go back.</p>\r\n\r\n<p>However, standing committee members such as Bhim Rawal and Dev Gurung have been protesting the deal, suspecting that the US government offered the grant so as to convince Nepal to join its controversial Indo-Pacific Strategy.</p>\r\n\r\n<p>&ldquo;But we believe the MCC agreement is a different component because it was signed before the Indo-Pacific Strategy came into discussion,&rdquo; the party&rsquo;s International Affairs Department&rsquo;s deputy chief Bishnu Rijal says, &ldquo;The prime minister wants to endorse it as soon as possible, and he is right.&rdquo;</p>\r\n\r\n<p>During the ongoing standing committee meeting of the party, Rawal and Gurung spoke against the deal. It is expected that Deputy Prime Minister Ishwar Pokharel and Foreign Affairs Minister Pradeep Gyawali will speak later in the meeting highlighting the need of the deal. Since Oli is not attending the meeting, Pokharel and Gyawali will also represent the government&rsquo;s opinion about the issue.</p>', 'ncp-leadership-ready-to-endorse-mcc-pact-despite-dissident-voices', 1, 1, 'post_main_8.jpg', 'post_thumb_8.jpg', 'post_list_8.jpg', 0, 0, 1, '2019-12-23 20:19:45', '2019-12-23 20:19:46'),
(9, 'Survey dept preparing new map to incorporate Kalapani', 'The Survey Department under the government says it is currently preparing a new map of Nepal, incorporating the disputed land of Kalapani region, up to Limpiyadhura, which Nepal claims to be its northwestern frontier.', '<p>Kathmandu, December 17</p>\r\n\r\n<p>The Survey Department under the government says it is currently preparing a new map of Nepal, incorporating the disputed land of Kalapani region, up to Limpiyadhura, which Nepal claims to be its northwestern frontier.</p>\r\n\r\n<p>The move follows the publication of India&rsquo;s new political map last month which identifies Kalapani as a part of India. As the move&nbsp;<a href=\"https://english.onlinekhabar.com/explainer-what-is-the-kalapani-controversy-between-nepal-and-india-all-about.html\">triggered protests</a>&nbsp;in Nepal, the government directed the department to publish a new map that could oppose the Indian claim. Accordingly, the department is preparing the map, informs its information officer Damodar Dhakal.</p>\r\n\r\n<p>&ldquo;We have received the government&rsquo;s directive, hence we are implementing it,&rdquo; he says.</p>\r\n\r\n<p>Another official says the department soon will be ready to provide the map to the government on the date it demands.</p>\r\n\r\n<p>Just law week, Minister for Land Management Padma Kumari Aryal had told lawmakers in a House committee meeting that the government would&nbsp;<a href=\"https://english.onlinekhabar.com/nepals-minister-says-govt-will-publish-new-map-incorporating-limpiyadhura.html\">soon publish</a>&nbsp;a corrected map of the country.</p>', 'survey-dept-preparing-new-map-to-incorporate-kalapani', 1, 1, 'post_main_9.jpg', 'post_thumb_9.jpg', 'post_list_9.jpg', 0, 0, 1, '2019-12-23 20:21:01', '2019-12-23 20:21:01'),
(10, 'Nepali Congress deadlock: Representatives of Deuba, Paudel hold talks', 'In their bid to end the deadlock recently seen in Nepali Congress, both factions of the party have expedited meetings with each-other. On Monday morning, confidants of party president Sher Bahadur Deuba and Ram Chandra Paudel held a meeting to discuss their differences.', '<p>Kathmandu, December 16</p>\r\n\r\n<p>In their bid to end the deadlock recently seen in Nepali Congress, both factions of the party have expedited meetings with each-other. On Monday morning, confidants of party president Sher Bahadur Deuba and Ram Chandra Paudel held a meeting to discuss their differences.</p>\r\n\r\n<p>The Paudel side has been&nbsp;<a href=\"https://english.onlinekhabar.com/paudel-camp-continues-to-boycott-nc-cwc-meeting.html\">boycotting</a>&nbsp;the party&rsquo;s central working committee meeting for the past few weeks, demanding that the meeting discuss a plan for the 14th general convention as the number one agenda item. Deuba is not ready as he wants to extend the term of his presidency.</p>\r\n\r\n<p>Amidst this situation, the Paudel side has formed a team led by Prakash Man Singh to hold talks with the party leadership whereas Deuba has assigned vice-president Bimalendra Nidhi to solve the issue. Nidhi went to Singh&rsquo;s house in Chaksibari this morning and they made some progress towards solving the issue, according to leaders.</p>\r\n\r\n<p>Now, Nidhi will update the developments to Deuba and Paudel before reaching a conclusion, it has been learned.</p>', 'nepali-congress-deadlock-representatives-of-deuba-paudel-hold-talks', 1, 1, 'post_main_10.jpg', 'post_thumb_10.jpg', 'post_list_10.jpg', 0, 0, 1, '2019-12-23 20:22:28', '2019-12-23 20:22:28'),
(11, 'House panel directs govt to halt implementing new cement standard', 'The Public Accounts Committee in Parliament has directed the government to halt implementing the recently introduced standard of cement produced in the country for now.', '<p>Kathmandu, December 23</p>\r\n\r\n<p>The Public Accounts Committee in Parliament has directed the government to halt implementing the recently introduced standard of cement produced in the country for now.</p>\r\n\r\n<p>A meeting of the committee on Monday issued the directive after the Nepal Bureau of Standards argued that the new standard would be harmful to structures.</p>\r\n\r\n<p>During the meeting today, Industry Secretary Yam Kumari Khatiwada argued that the government did not have any ill intent behind implementing the new standard. She said the new criteria were introduced after three years of consultation with technicians.</p>\r\n\r\n<p>The PAC chair Bharat Kumar Shah, however, said the government cheated the committee by saying that the new rule was not implemented though it had directed the bureau to enforce it earlier.</p>', 'house-panel-directs-govt-to-halt-implementing-new-cement-standard', 4, 1, 'post_main_11.jpg', 'post_thumb_11.jpg', 'post_list_11.jpg', 0, 0, 1, '2019-12-23 20:28:04', '2019-12-23 20:28:04'),
(12, 'Bankers’ Association fears social security scheme deprives staff of existing facilities', 'Nepal Bankers’ Association, an organisation of managers of commercial banks of the country, has said that the banks are not ready to implement the new social security scheme introduced by the government last year, claiming the scheme could deprive their staff of existing facilities.', '<p>Kathmandu, December 23</p>\r\n\r\n<p>Nepal Bankers&rsquo; Association, an organisation of managers of commercial banks of the country, has said that the banks are not ready to implement the new social security scheme introduced by the government last year, claiming the scheme could deprive their staff of existing facilities.</p>\r\n\r\n<p>In an interview with Onlinekhabar, NBA president Gyanendra Dhungana says the association has already communicated its concerns to the government via Nepal Rastra Bank, the central bank of the country, and is looking forward to the government&rsquo;s efforts to address them.</p>\r\n\r\n<p>&ldquo;Once a law is introduced, everyone has to implement it. We also want to participate in the scheme,&rdquo; the banker explains, &ldquo;But we have some extended some suggestions. They are yet to be implemented. Unless they are implemented, it will be difficult for us to join.&rdquo;</p>\r\n\r\n<p>Dhungana elaborates that the scheme requires the workers to pay excessive taxes whereas it does not give loan facilities as the workers currently get from the Employees Provident Fund. Likewise, a few provisions of the scheme contradict provisions of the Labour Act, according to him.</p>', 'bankers-association-fears-social-security-scheme-deprives-staff-of-existing-facilities', 4, 1, 'post_main_12.jpg', 'post_thumb_12.jpg', 'post_list_12.jpg', 0, 0, 1, '2019-12-23 20:31:21', '2019-12-23 20:31:22'),
(13, 'MCC’s Nepal manager asks Parliament to endorse deal in this session', 'The Millennium Challenge Account Nepal, a government-formed body commissioned to manage the programmes to be developed under an agreement between the government of Nepal and the Millennium Challenge Corporation (MCC) of the United States, has urged the government and parties in Parliament to endorse the agreement in this session of the legislative.', '<p>Kathmandu, December 22</p>\r\n\r\n<p>The Millennium Challenge Account Nepal, a government-formed body commissioned to manage the programmes to be developed under an agreement between the government of Nepal and the Millennium Challenge Corporation (MCC) of the United States, has urged the government and parties in Parliament to endorse the agreement in this session of the legislative.</p>\r\n\r\n<p>The two-year-old deal&rsquo;s implementation is pending as the Federal Parliament has not endorsed the document. The MCA-Nepal&rsquo;s urge comes at a time when some leaders of the ruling Nepal Communist Party have&nbsp;<a href=\"https://english.onlinekhabar.com/ncp-leadership-ready-to-endorse-mcc-pact-despite-dissident-voices.html\">objected to the deal</a>&nbsp;claiming the US government is wooing Nepal to join the Indo-Pacific Strategy with the grant support.</p>\r\n\r\n<p>Organising a press meeting in Kathmandu on Sunday, MCA-Nepal&rsquo;s Executive Director Khadga Bahadur Bisht said his agency was committed to completing the projects on time.</p>', 'mccs-nepal-manager-asks-parliament-to-endorse-deal-in-this-session', 4, 1, 'post_main_13.jpg', 'post_thumb_13.jpg', 'post_list_13.jpg', 0, 0, 1, '2019-12-23 20:32:08', '2019-12-23 20:32:09'),
(14, 'Nepalis in UAE want govt to launch special scheme to attract Middle East tourists', 'In the run-up to the ambitious Visit Nepal Year 2020 campaign, Nepalis working and living in the United Arab Emirates have demanded that the Nepal government launch a special scheme to attract tourists from the Middle East region.', '<p>Kathmandu, December 20</p>\r\n\r\n<p>In the run-up to the ambitious Visit Nepal Year 2020 campaign, Nepalis working and living in the United Arab Emirates have demanded that the Nepal government launch a special scheme to attract tourists from the Middle East region.</p>\r\n\r\n<p>Speaking at an interaction organised by the VNY 2020 secretariat and Nepali Embassy in Abu Dhabi on Wednesday, they said the plan should address interests and wishes for the potential tourists.</p>\r\n\r\n<p>Ekendra Thapa, a Nepali who operates a travel agency in the UAE, said Nepal should partner with the UAE not only in labour, but also in tourism and other economic dimensions.</p>\r\n\r\n<p>Shashi Silwal, a leader of a Nepali diaspora organisation, said Nepal should promote itself as a natural destination in front of the Gulf people. Likewise, Prakash Paudel suggested that Nepal promote its attractions during local fares in the UAE.</p>\r\n\r\n<p>The speakers also said they were committed to supporting the government in the campaign.</p>', 'nepalis-in-uae-want-govt-to-launch-special-scheme-to-attract-middle-east-tourists', 4, 1, 'post_main_14.jpg', 'post_thumb_14.jpg', 'post_list_14.jpg', 0, 0, 1, '2019-12-23 20:32:54', '2019-12-23 20:32:55'),
(15, 'Govt amending Public Procurement Regulation, in submission to contractors’ pressure', 'Apparently owing to the pressure put by construction entrepreneurs, the government is preparing to amend the Public Procurement Regulation once again. Of late, the contractors have been blaming the policies and laws including the regulation for the government’s failure to effectively spend development budget and complete infrastructure projects on time.', '<p>Kathmandu, December 20</p>\r\n\r\n<p>Apparently owing to the pressure put by construction entrepreneurs, the government is preparing to amend the Public Procurement Regulation once again. Of late, the contractors have been blaming the policies and laws including the regulation for the government&rsquo;s failure to effectively spend development budget and complete infrastructure projects on time.</p>\r\n\r\n<p>An official at the Prime Minister&rsquo;s Office says concerned agencies such as the Ministry of Physical Infrastructure and Transport are studying obstacles caused by the regulation as a part of the homework to amend the regulation.</p>\r\n\r\n<p>&ldquo;Since the entrepreneurs have claimed that the government could not spend development budget as it was not allowed to spend on older projects, we are studying these issues,&rdquo; he says, adding extending the deadline of old projects would be a highlight of the amendment.</p>\r\n\r\n<p>In the first year of his premiership, KP Sharma Oli had warned that all contracts would be scrapped if the contractors failed to meet the target on time. However, the new amendment will have an exactly opposite effect, it has been learned.</p>\r\n\r\n<p>Further, the government is currently in a defensive position as it has not been able to spend the development budget effectively even in presence of such a stable government. As five months have passed in the current fiscal year, the government has spent only nine per cent of the development budget.</p>\r\n\r\n<p>In the past year, the government has already amended the regulation three times. The last two of them were introduced owing to the contractors&rsquo; concerns.</p>', 'govt-amending-public-procurement-regulation-in-submission-to-contractors-pressure', 4, 1, 'post_main_15.jpg', 'post_thumb_15.jpg', 'post_list_15.jpg', 0, 0, 1, '2019-12-23 20:33:47', '2019-12-23 20:33:48'),
(16, 'ACI World to grade Kathmandu airport', 'The Civil Aviation Authority of Nepal says it had written to the ACI World and the international organisation has also responded to the request. The Ministry of Culture, Tourism and Civil Aviation has also been informed about the grading plan.', '<p>Kathmandu, December 18</p>\r\n\r\n<p>The Airports Council International (ACI) World is grading Tribhuvan International Airport in Kathmandu soon, according to the government.</p>\r\n\r\n<p>The Civil Aviation Authority of Nepal says it had written to the ACI World and the international organisation has also responded to the request. The Ministry of Culture, Tourism and Civil Aviation has also been informed about the grading plan.</p>\r\n\r\n<p>The authority hopes that the ACI World&rsquo;s grading of the sole international airport of the country would push for reforms in the airport management. The ministry had also planned to internationally grade the airport in the current fiscal year.</p>\r\n\r\n<p>The ACI World claims itself to be the only global trade representative of the world&rsquo;s airports. Established in 1991, ACI represents airports interests with governments and international organisations such as ICAO, develops standards, policies and recommended practices for airports, and provides information and training opportunities to raise standards around the world.</p>', 'aci-world-to-grade-kathmandu-airport', 4, 1, 'post_main_16.jpg', 'post_thumb_16.jpg', 'post_list_16.jpg', 0, 0, 1, '2019-12-23 20:34:37', '2019-12-23 20:34:38'),
(17, 'Nepali products’ export to China halted due to demand for Chinese label', 'For the past three months, Nepal has failed to export various goods to China after Chinese officials demanded that the Nepali suppliers write information on the product labels in Chinese, customs officials inform.', '<p>Kathmandu, December 18</p>\r\n\r\n<p>For the past three months, Nepal has failed to export various goods to China after Chinese officials demanded that the Nepali suppliers write information on the product labels in Chinese, customs officials inform.</p>\r\n\r\n<p>The chief of Rasuwagadhi Customs Office in Rasuwa, a major route of bilateral trade, Punya Bikram Khadka, says the export of food products in particular has been halted since September. Chinese customs officials have been claiming that most residents of the border area do not understand both Nepali and English, hence claiming that the labels should be written in Chinese.</p>\r\n\r\n<p>Officials also claim that the Chinese traders&rsquo; demand is against provisions of Nepal-China bilateral trade agreements. Nevertheless, the Nepali officers have also stopped various goods being imported from China which had information in Chinese language only. Nepal&rsquo;s quality standard and quarantine laws require labels to be in either Nepali or in English.</p>\r\n\r\n<p>Just a few months back, trade officials of the two countries had held a meeting at Tatopani border point, and they had agreed to accept English-language labels. However, lower officials of Chinese government have not followed the agreement yet, according to Khadka.</p>\r\n\r\n<p>Meanwhile, Dinesh Bhattarai, the spokesperson at the Ministry of Commerce, says the government has written to its Chinese counterpart about the issue.</p>', 'nepali-products-export-to-china-halted-due-to-demand-for-chinese-label', 4, 1, 'post_main_17.jpg', 'post_thumb_17.jpg', 'post_list_17.jpg', 0, 0, 1, '2019-12-23 20:36:17', '2019-12-23 20:36:18'),
(18, 'Plan to unbundle CAAN in ‘final stage’', 'The government claims its plan to unbundle the Civil Aviation Authority of Nepal into two units has reached its final stage. The CAAN officials say a bill proposing the unbundling has been sent to the Cabinet and the Council of Ministers is likely to endorse it soon.', '<p>Kathmandu, December 16</p>\r\n\r\n<p>The government claims its plan to unbundle the Civil Aviation Authority of Nepal into two units has reached its final stage. The CAAN officials say a bill proposing the unbundling has been sent to the Cabinet and the Council of Ministers is likely to endorse it soon.</p>\r\n\r\n<p>After the government&rsquo;s endorsement, the Federal Parliament will discuss the bill in order to forward it to President Bidya Devi Bhandari for endorsement.</p>\r\n\r\n<p>The government hopes that once the unbundling is over, the European Commission will lift the ban imposed on Nepali airline companies. The EU body had revised its air safety list just last week, continuing the six-year-old ban on Nepal.</p>\r\n\r\n<p>The bill has proposed cutting off the CAAN&rsquo;s rights and responsibilities about the operation of airports. Whereas the CAAN will only be responsible for regulatory affairs, a separate body, named the Aviation Service Authority, will be established to manage all airports of the country.</p>', 'plan-to-unbundle-caan-in-final-stage', 4, 1, 'post_main_18.jpg', 'post_thumb_18.jpg', 'post_list_18.jpg', 0, 0, 1, '2019-12-23 20:37:35', '2019-12-23 20:37:35'),
(19, 'Every Nepali household can use electricity in next 3 years: Authority', 'Nepal Electricity Authority says its national transmission grid will reach all families of the country within the next three years.', '<p>Kathmandu, December 12</p>\r\n\r\n<p>Nepal Electricity Authority says its national transmission grid will reach all families of the country within the next three years.</p>\r\n\r\n<p>The authority&rsquo;s spokesperson Prabal Adhikari says the authority is working towards meeting its target now since it has already secured needful resources for that.</p>\r\n\r\n<p>As of now, Karnali is the least illuminated province with the national electricity grid. Only 30 per cent households in the province have access to electricity, the authority says.</p>\r\n\r\n<p>Since the province has difficult terrain, electrification in Karnali needs more money, but the government is receiving a loan of Rs 22 billion from Asian Infrastructure Development Bank and European Investment Bank at a subsidised rate. The authority plans to use the money in Karnali, Sudurpaschim and Province 5.</p>\r\n\r\n<p>Meanwhile, the authority says 40 districts of the country will have access to electricity completely by the end of this fiscal year.</p>', 'every-nepali-household-can-use-electricity-in-next-3-years-authority', 4, 1, 'post_main_19.jpg', 'post_thumb_19.jpg', 'post_list_19.jpg', 0, 0, 1, '2019-12-23 20:38:21', '2019-12-23 20:38:22'),
(20, 'Nepal fails to get rid of EU air safety ban yet again', 'Once again, Nepal has failed to convince the European Union to lift its ban on the flight of aircraft of Nepali companies in the European sky.', '<p>Kathmandu, December 12</p>\r\n\r\n<p>Once again, Nepal has failed to convince the European Union to lift its ban on the flight of aircraft of Nepali companies in the European sky.</p>\r\n\r\n<p>A&nbsp;<a href=\"https://ec.europa.eu/transport/modes/air/news/2019-12-09-commission-updates-eu-air-safety-list_en\">recent revision</a>&nbsp;made to the European Commission Air Safety List has kept Nepal among 15 states whose all airlines have been banned from operating in the region. Nepali airline companies have been banned in Europe since 2013. The commission has been claiming that the ban has been imposed &ldquo;due to a lack of safety oversight by the aviation authorities.&rdquo;</p>\r\n\r\n<p>Meanwhile, the revised list has removed airline companies from Gabon &ldquo;following improvements to the aviation safety situation in that country&rdquo;.</p>\r\n\r\n<p>After the revision, a total of 115 airline companies are banned from the European skies including all companies of 15 countries such as Nepal and six individual companies of different counties.</p>\r\n\r\n<p>An additional three airlines are subject to operational restrictions and can only fly to the EU with specific aircraft types.</p>', 'nepal-fails-to-get-rid-of-eu-air-safety-ban-yet-again', 4, 1, 'post_main_20.jpg', 'post_thumb_20.jpg', 'post_list_20.jpg', 0, 0, 1, '2019-12-23 20:39:36', '2019-12-23 20:39:36'),
(21, 'Four destinations to start out mountain biking in Kathmandu', 'Hey guys, I expect my previous three-story series on mountain biking (mtb in short) has helped you get the hang of the basic bike skills and handling; and you must have pulled off quite some off-road short rides to the backcountry.', '<p>Hey guys, I expect my previous three-story series on mountain biking (mtb in short) has helped you get the hang of the basic bike skills and handling; and you must have pulled off quite some off-road short rides to the backcountry.</p>\r\n\r\n<p>Maybe you would now like to try some challenging rides.&nbsp; Let me help you with a lowdown on some locations for you to venture out, which can really turn out as fascinating daylong destinations.</p>\r\n\r\n<p>For a start, the destination I am going to chart out for you is a one-day long ride with a moderate to rugged terrains, both paved and dirt including some isolated forested areas. So my advice to you is: Take along a partner with you&ndash;so much the better and more fun if you can muster a group of say three to four riders.&nbsp;That will also help you to learn group rapport and&nbsp;<a href=\"http://www.dictionary.com/browse/group-dynamics\">group dynamics</a>.</p>\r\n\r\n<p><strong>Not to be missed</strong></p>\r\n\r\n<p>Hopefully, you will not miss out on the basic essentials for the trip such as a pump, spare tube, patch kit, a toolkit . . . and of course, a rain jacket.&nbsp; Don&rsquo;t!&nbsp; Also, make sure that you are well-hydrated way before you kick off. What I always do before long rides is to drink a litre of oral electrolyte-blended water at least 5 hours before the start (mostly coinciding with a night before) and supplement it with water during the ride. If you are carrying a hydration bladder tucked into your backpack, all the better.</p>\r\n\r\n<p>As you sweat a lot and lose a lot of fluid, you need to replenish yourselves to keep yourself hydrated and avoid getting the most dreaded issue like muscle cramps, which can really ruin your entire ride. &nbsp;Caveat: do not start on a completely empty stomach. A light breakfast before the ride is a good idea.</p>\r\n\r\n<p>&ldquo;Electrolytes are analogous to the motor oil in your car&mdash;they don&rsquo;t make the engine run, but they&rsquo;re absolutely necessary to keep everything running smoothly. Proper functioning of the digestive, nervous, cardiac, and muscular systems depends on adequate electrolyte levels&rdquo; writes Steve Born, a sports nutrition specialist.</p>\r\n\r\n<p>It will be a good idea to stash in some energy bars or chocolates into your backpack to refuel yourself as you will be burning off a lot of calories doing quite some gruelling up-hills. Also, they can work wonders for your sapping energy and stamina. Bananas, too, can substitute for the energy bars if you forget to carry them. &nbsp;Needless to write, carry water bottles. And if you wish to have a less sore bum, apply Vaseline under your crotch. And do not forget to put on your padded underwear.</p>', 'four-destinations-to-start-out-mountain-biking-in-kathmandu', 5, 7, 'post_main_21.jpg', 'post_thumb_21.jpg', 'post_list_21.jpg', 0, 0, 1, '2019-12-23 20:52:40', '2019-12-23 20:52:41'),
(22, 'Sixth sense: Myth or fact?', 'What I saw in the dim light, less than a foot behind the bull-cart, made the fine hairs rise on the back of my neck and arms, and I started shaking like a leaf.', '<p>Sight. Hearing. Touch. Taste. And Smell. The Greek philosopher Aristotle identified these five senses in humans. What&rsquo;s more, for eons, an inexplicable intuitive faculty, exhibited by animals, baffled the humans the most. It came to be known as the &lsquo;sixth sense.&rsquo;</p>\r\n\r\n<p>Every day, when my neighbour is back from work, his dog whines, whimpers, barks, and whirls around in circles at the sound of his master&rsquo;s scooter when it is still a fair distance away. Another of his next-door neighbour has an identical scooter&mdash;same power displacement and, obviously, the same sound. But the dog remains quiet when it sounds.</p>\r\n\r\n<p><strong>Strange but true&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>Animals do weirder things we can barely imagine. The Himalayan golden mahseers home in on their birthplace to spawn hundreds of miles upriver. So do the Atlantic salmons to breed, traveling over 1,000 miles from the sea to the river. Much the same, the sea turtles return to the same beach, where they were born to lay eggs.</p>\r\n\r\n<p>Likewise, the demoiselle cranes on their annual migration fly from Siberia to their wintry habitat, as far away as the Thar Desert in Rajasthan, India. Strange as it may sound, birds migrate using celestial cues. Bats locate food, with echoes. Believe it or not, dogs can discern if you were sad, angry, or suspicious. Nay, if you&rsquo;d had a row with your wife!</p>\r\n\r\n<p>Defying the laws of nature, history records a plethora of strange events wherein both domestic and wild animals have displayed an uncanny sense of predicting danger through their actions beyond scientific understanding.</p>\r\n\r\n<p><strong>ESP</strong></p>\r\n\r\n<p>I never seriously took the matter about the much-talked-about sixth sense, said to be possessed by animals. The incident that took place some 25 years ago made me, however, change my mind as it saved me and the lives of my three friends. I will relate the anecdote shortly.</p>\r\n\r\n<p>Joseph Banks Rhine, a parapsychologist from Pennsylvania USA, named the phenomenon as ESP (extrasensory perception). This psychic faculty of the mind was also named telepathy, clairvoyance, or psychometry. Some even called it the &lsquo;second sight.&rsquo;</p>\r\n\r\n<p>Scientists have moved heaven and earth to unravel the mystery surrounding this behavioural shift in animals, which predicted impending danger, but to no avail. They failed to reason or logically explain these behaviours that defy the science of deduction. At best, they could offer only hypothetical explanations.</p>', 'sixth-sense-myth-or-fact', 5, 7, 'post_main_22.jpg', 'post_thumb_22.jpg', 'post_list_22.jpg', 0, 0, 1, '2019-12-23 20:53:59', '2019-12-23 20:54:00'),
(23, 'The buried kingdom of Simraungadh', 'In 2012, I visited Simraungadh, a quintessential Terai town, some 160 km south of Kathmandu. The trip was not planned but a last-minute decision—no more than one of my little quirks. But, much to my astonishment, it turned out the little-known town once prided as a thriving capital city of Mithila kingdom in the 11th century Karnata Dynasty.', '<p>In 2012, I visited Simraungadh, a quintessential Terai town, some 160 km south of Kathmandu. The trip was not planned but a last-minute decision&mdash;no more than one of my little quirks. But, much to my astonishment, it turned out the little-known town once prided as a thriving capital city of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mithila_(region)\">Mithila kingdom</a>&nbsp;in the 11th century Karnata Dynasty.</p>\r\n\r\n<p>After rounding off our pilgrimage to the&nbsp;<a href=\"https://english.onlinekhabar.com/trip-to-gadhimai-a-profound-experience-evoking-awe-and-wonder.html\">Gadhimai</a>, a Hindu shrine 20 km northeast of the border city Birgunj, I suggested my wife, Radhika, we pay a visit to Simraungadh, 13 km away. The whole idea of the sudden foray was to dig for clues to my ancestral roots, the early&nbsp;<em>Dolakhes</em>, the people of Dolakha, a hill-town 143 km northeast of Kathmandu.</p>\r\n\r\n<p>To Radhika, my idea founded on hearsay (talked about by elders in Dolakha) sounded nothing short of a wild-goose chase. With the puja ritual wrapped up at Gadhimai (the Hindu shrine is also noted for holding the largest animal sacrifice in the world every five years), we drove off to Simraungadh.</p>\r\n\r\n<p><strong>Dismal start&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>We were in for some bad vibes, however. We met a local who told us that only a week ago, a fellow was found murdered on the road to Simraungadh. Another fanned the flames by quipping in that the road cut across some isolated forest stretches was frequented by Indian dacoits.&nbsp; That gave Radhika quite a fright. I thought the inside stories were a trifle exaggerated, if not just gossip. I managed to get her acquiescence reluctantly, though. There were three of us, Radhika, a priest from Gadhimai who kindly volunteered to guide us, and I. I was behind the wheel of our Hyundai Getz.</p>\r\n\r\n<p>Our progress on the badly pitted road was slow, almost a crawl at some places. Some sections of the dirt road required weaseling out of a lot of potholes. All this time, as we sped past deserted locales and wooded stretches, an edgy Radhika kept on casting suspicious looks outside the window.</p>\r\n\r\n<p>As we drove along, vast swathes of harvest-ready rice fields flanked the road with thin habitation and insignificant motor traffic&mdash;all the more reason for Radhika to get worked-up. All we intercepted, less than halfway, was a solitary bullock-cart lurching along the uneven road with gunny sacks piled high.</p>', 'the-buried-kingdom-of-simraungadh', 5, 7, 'post_main_23.jpg', 'post_thumb_23.jpg', 'post_list_23.jpg', 0, 0, 1, '2019-12-23 20:54:49', '2019-12-23 20:54:49'),
(24, 'Does your body need potassium?', 'Potassium? You may have heard about it but cannot precisely put your finger on it.  Physicians advise on taking 3,500 to 4,700 mg of potassium daily. WHO (the World Health Organization), too, recommends an intake of 3,510 mg per day.  Hang on, this does not mean you pop into your mouth a potassium pill every day! Plenty of food is loaded with this mineral compound to help you meet your daily requirements.', '<p>Potassium? You may have heard about it but cannot precisely put your finger on it. &nbsp;Physicians advise on taking 3,500 to 4,700 mg of potassium daily. WHO (the World Health Organization), too, recommends an intake of 3,510 mg per day.&nbsp; Hang on, this does not mean you pop into your mouth a potassium pill every day! Plenty of food is loaded with this mineral compound to help you meet your daily requirements.Potassium? You may have heard about it but cannot precisely put your finger on it. &nbsp;Physicians advise on taking 3,500 to 4,700 mg of potassium daily. WHO (the World Health Organization), too, recommends an intake of 3,510 mg per day.&nbsp; Hang on, this does not mean you pop into your mouth a potassium pill every day! Plenty of food is loaded with this mineral compound to help you meet your daily requirements.Potassium? You may have heard about it but cannot precisely put your finger on it. &nbsp;Physicians advise on taking 3,500 to 4,700 mg of potassium daily. WHO (the World Health Organization), too, recommends an intake of 3,510 mg per day.&nbsp; Hang on, this does not mean you pop into your mouth a potassium pill every day! Plenty of food is loaded with this mineral compound to help you meet your daily requirements.Potassium? You may have heard about it but cannot precisely put your finger on it. &nbsp;Physicians advise on taking 3,500 to 4,700 mg of potassium daily. WHO (the World Health Organization), too, recommends an intake of 3,510 mg per day.&nbsp; Hang on, this does not mean you pop into your mouth a potassium pill every day! Plenty of food is loaded with this mineral compound to help you meet your daily requirements.</p>', 'does-your-body-need-potassium', 2, 7, 'post_main_24.jpg', 'post_thumb_24.jpg', 'post_list_24.jpg', 0, 0, 1, '2019-12-23 20:55:36', '2019-12-23 20:55:37');
INSERT INTO `posts` (`id`, `title`, `short_description`, `description`, `slug`, `category_id`, `created_by`, `main_image`, `thumb_image`, `list_image`, `view_count`, `hot_news`, `status`, `created_at`, `updated_at`) VALUES
(25, 'Once the rightful natives of the jungle — now wander as refugees', 'It took 400 million years for Earth to evolve. The epic journey was tough, grueling and harrowing for both humans and the denizens of the wild. The biggest challenge for the animal kingdom has, however, been the hominoids—the ‘thinking ape’ as they are sometimes referred to.', '<p><em>It took 400 million years for Earth to evolve. The epic journey was tough, grueling and harrowing for both humans and the denizens of the wild. The biggest challenge for the animal kingdom has, however, been the hominoids&mdash;the &lsquo;thinking ape&rsquo; as they are sometimes referred to.</em></p>\r\n\r\n<p><em>&nbsp;If the evolutionary history of the early primates is to be dug up, the earliest known ancestors of modern-day elephants came 65 million years ago, long before the birth of Homo sapiens in the Paleolithic Stone Age, 2.5 million years ago. The humans came, and the &lsquo;rape&rsquo; began. Untold species and numbers of our pre-historic elephants, the rightful early settlers of this planet, were pushed to extinction.</em></p>\r\n\r\n<p><em>It took 400 million years for Earth to evolve. The epic journey was tough, grueling and harrowing for both humans and the denizens of the wild. The biggest challenge for the animal kingdom has, however, been the hominoids&mdash;the &lsquo;thinking ape&rsquo; as they are sometimes referred to.</em></p>\r\n\r\n<p><em>&nbsp;</em><em>If the evolutionary history of the early primates is to be dug up, the earliest known ancestors of modern-day elephants came 65 million years ago, long before the birth of Homo sapiens in the Paleolithic Stone Age, 2.5 million years ago. The humans came, and the &lsquo;rape&rsquo; began. Untold species and numbers of our pre-historic elephants, the rightful early settlers of this planet, were pushed to extinction.</em></p>', 'once-the-rightful-natives-of-the-jungle-now-wander-as-refugees', 5, 7, 'post_main_25.jpg', 'post_thumb_25.jpg', 'post_list_25.jpg', 0, 0, 1, '2019-12-23 20:56:40', '2019-12-23 20:56:40'),
(26, 'This 72-year-old rides his bike nine hours a day ‘because he loves working’', 'Call Mangal Man Maharjan and he will ask ‘where are you?’ before you tell him who you are and why you are calling.', '<p>Call Mangal Man Maharjan and he will ask &lsquo;where are you?&rsquo; before you tell him who you are and why you are calling.</p>\r\n\r\n<p>Like hundreds of motorcyclists working for&nbsp;<a href=\"https://english.onlinekhabar.com/tootle-ridesharing-to-change-peoples-mindset-is-more-than-a-story-of-hope.html\">ride-sharing apps</a>&nbsp;Tootle and Pathao in Nepal, Maharjan is accustomed to asking your location every time you call. But, he is strikingly different from most of the riders.</p>\r\n\r\n<p>Seventy-two is past the retirement age for most Nepalis, but septuagenarian Maharjan works nine hours every day.</p>\r\n\r\n<p>However, he does not have any compulsion to earn living for his family; his children are all grown up and they have been supporting him.</p>\r\n\r\n<p>So why does this man ride to ferry people from here to there every day?</p>\r\n\r\n<p><strong>The youthful old man</strong></p>\r\n\r\n<p>Maharjan looks too old to be a &lsquo;professional&rsquo; biker&ndash;his hairs are grey and he has already lost many of his teeth. Yet, he tries to show himself &lsquo;young&rsquo; to suit the profession: he regularly colours his hair. More importantly, perhaps, an inner zeal makes his face glow.</p>\r\n\r\n<p>It was not his hair colour or wrinkled face that posed challenges to his decision to join the job. But, his unfamiliarity with smartphones certainly became an issue. Initially, he feared that he could not do it.</p>', 'this-72-year-old-rides-his-bike-nine-hours-a-day-because-he-loves-working', 2, 5, 'post_main_26.jpg', 'post_thumb_26.jpg', 'post_list_26.jpg', 0, 0, 1, '2019-12-23 21:01:59', '2019-12-23 21:02:00'),
(27, 'A favourite Nepali hard cheese finds favour with canines', 'As you pass by the misty Kanyam tea gardens in the Ilam District of eastern Nepal, you will come across bunches of hard cheese hanging in most of the shops.', '<p>As you pass by the misty&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kanyam\">Kanyam</a>&nbsp;tea gardens in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ilam_District\">Ilam District</a>&nbsp;of eastern Nepal, you will come across bunches of hard cheese hanging in most of the shops.</p>\r\n\r\n<p>The hard cheese, known locally as&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Chhurpi\">chhurpi</a></em>, is made from&nbsp;<a href=\"https://nfgrcnepal.blogspot.com/2007/07/yak-and-chauri-farming-in-nepal-by.html\">milk collected</a>&nbsp;from&nbsp;<em>naks</em>&nbsp;(female yaks), cows and&nbsp;<em>chauris</em>&nbsp;(a cross between yaks and local hill cows). An excellent source of protein, people throughout the Himalayan region, including Tibet, Darjeeling and Sikkim, and Bhutan, love this hard-to-chew cheese.</p>\r\n\r\n<p>As you pass by the misty&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kanyam\">Kanyam</a>&nbsp;tea gardens in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ilam_District\">Ilam District</a>&nbsp;of eastern Nepal, you will come across bunches of hard cheese hanging in most of the shops.</p>\r\n\r\n<p>The hard cheese, known locally as&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Chhurpi\">chhurpi</a></em>, is made from&nbsp;<a href=\"https://nfgrcnepal.blogspot.com/2007/07/yak-and-chauri-farming-in-nepal-by.html\">milk collected</a>&nbsp;from&nbsp;<em>naks</em>&nbsp;(female yaks), cows and&nbsp;<em>chauris</em>&nbsp;(a cross between yaks and local hill cows). An excellent source of protein, people throughout the Himalayan region, including Tibet, Darjeeling and Sikkim, and Bhutan, love this hard-to-chew cheese.</p>', 'a-favourite-nepali-hard-cheese-finds-favour-with-canines', 2, 6, 'post_main_27.jpg', 'post_thumb_27.jpg', 'post_list_27.jpg', 0, 0, 1, '2019-12-23 21:03:11', '2019-12-23 21:03:12'),
(28, 'Sarauto movie review: Story speaks louder than action', 'What is a ‘sarauto’ anyway? Arguably, many Nepali cinemagoers of the young generation are not familiar with the term. Making a movie with such a difficult word in the title and featuring a non-star cast is really a risky affair. However, the producers dared to do it and the movie is already on the screen now.', '<p>What is a &lsquo;sarauto&rsquo; anyway? Arguably, many Nepali cinemagoers of the young generation are not familiar with the term. Making a movie with such a difficult word in the title and featuring a non-star cast is really a risky affair. However, the producers dared to do it and the movie is already on the screen now.</p>\r\n\r\n<p>This week&rsquo;s Kollywood release might exceed your expectations you may have set considering its strange title. Even with the non-star team, debutant director Hari Humagain has done an impressive job.</p>\r\n\r\n<p>Raghav Krishna Gautam&rsquo;s intriguing story and dialogues compensate for the so-so acting and overall presentation of the movie. Despite several flaws, the movie keeps most members of the audience hooked, and it deserves applause as the majority of contemporary Nepali &lsquo;action&rsquo; films are boring and unsubstantial.</p>', 'sarauto-movie-review-story-speaks-louder-than-action', 2, 7, 'post_main_28.jpg', 'post_thumb_28.jpg', 'post_list_28.jpg', 0, 0, 1, '2019-12-23 21:03:56', '2019-12-23 21:03:57'),
(29, 'Why everyone needs to worry about first case of malaria parasites in Nepali buffalos', 'Nepali zoologists have reported the first case of the malaria parasite in water buffalos in Nepal. The alarming discovery places thousands of farmers who rear buffalos and their cattle across the country at risk.', '<p>Nepali zoologists have reported the first case of the malaria parasite in water buffalos in Nepal. The alarming discovery places thousands of farmers who rear buffalos and their cattle across the country at risk.</p>\r\n\r\n<p>Scientists, who uncovered the presence of the hitherto unnoticed parasites, say besides farmers, the non-farming urban group is also at risk, almost equally. Department of National Parks and Wildlife Conservation&rsquo;s Deputy Director-General Ram Chandra Kandel, who led the research in 2017, informs that buffalo meat-eaters in the urban areas constitute the most vulnerable group in Nepal. &ldquo;Multiple studies have found out that eating meat from diseased animals can cause various ailments.&rdquo;</p>\r\n\r\n<p>Nepali zoologists have reported the first case of the malaria parasite in water buffalos in Nepal. The alarming discovery places thousands of farmers who rear buffalos and their cattle across the country at risk.</p>\r\n\r\n<p>Scientists, who uncovered the presence of the hitherto unnoticed parasites, say besides farmers, the non-farming urban group is also at risk, almost equally. Department of National Parks and Wildlife Conservation&rsquo;s Deputy Director-General Ram Chandra Kandel, who led the research in 2017, informs that buffalo meat-eaters in the urban areas constitute the most vulnerable group in Nepal. &ldquo;Multiple studies have found out that eating meat from diseased animals can cause various ailments.&rdquo;</p>', 'why-everyone-needs-to-worry-about-first-case-of-malaria-parasites-in-nepali-buffalos', 2, 5, 'post_main_29.jpg', 'post_thumb_29.jpg', 'post_list_29.jpg', 0, 0, 1, '2019-12-23 21:04:41', '2019-12-23 21:04:41'),
(30, 'Energy consumption should not be discouraged now: Ghising', 'Nepal Electricity Authority’s Managing Director Kul Man Ghising is retiring in a few months. When he was promoted to the position in 2016, the country was in a severe power crisis. Nepalis had to endure up to 18 hours of load-shedding every day. However, the regular power outage is a once-upon-a-time story now. Rather, Ghising’s team in the authority is currently advocating for increased energy consumption in Nepal, claiming the country will see more hydropower projects in the next few years.', '<p>Nepal Electricity Authority&rsquo;s Managing Director&nbsp;<strong>Kul Man Ghising</strong>&nbsp;is retiring in a few months. When he was promoted to the position in 2016, the country was in a severe power crisis. Nepalis had to endure up to 18 hours of load-shedding every day. However, the regular power outage is a once-upon-a-time story now. Rather, Ghising&rsquo;s team in the authority is currently advocating for increased energy consumption in Nepal, claiming the country will see more hydropower projects in the next few years.Nepal Electricity Authority&rsquo;s Managing Director&nbsp;<strong>Kul Man Ghising</strong>&nbsp;is retiring in a few months. When he was promoted to the position in 2016, the country was in a severe power crisis. Nepalis had to endure up to 18 hours of load-shedding every day. However, the regular power outage is a once-upon-a-time story now. Rather, Ghising&rsquo;s team in the authority is currently advocating for increased energy consumption in Nepal, claiming the country will see more hydropower projects in the next few years.Nepal Electricity Authority&rsquo;s Managing Director&nbsp;<strong>Kul Man Ghising</strong>&nbsp;is retiring in a few months. When he was promoted to the position in 2016, the country was in a severe power crisis. Nepalis had to endure up to 18 hours of load-shedding every day. However, the regular power outage is a once-upon-a-time story now. Rather, Ghising&rsquo;s team in the authority is currently advocating for increased energy consumption in Nepal, claiming the country will see more hydropower projects in the next few years.</p>', 'energy-consumption-should-not-be-discouraged-now-ghising', 3, 1, 'post_main_30.jpg', 'post_thumb_30.jpg', 'post_list_30.jpg', 0, 0, 1, '2019-12-23 21:09:48', '2019-12-23 21:09:49'),
(31, 'It’s time to restructure conservation area projects in Nepal, says conservationist writer', 'Broughton Coburn of Wilson, Wyoming has worked in conservation and development projects in Nepal, Tibet and India for the four decades, for a variety of international agencies. In Nepal, he worked for the establishment of the Annapurna Area Conservation Project (ACAP), which attracts thousands of tourists, domestic and foreign, every year.', '<p><strong>Broughton Coburn</strong>&nbsp;of Wilson, Wyoming has worked in conservation and development projects in Nepal, Tibet and India for the four decades, for a variety of international agencies. In Nepal, he worked for the establishment of the Annapurna Area Conservation Project (ACAP), which attracts thousands of tourists, domestic and foreign, every year.<strong>Broughton Coburn</strong>&nbsp;of Wilson, Wyoming has worked in conservation and development projects in Nepal, Tibet and India for the four decades, for a variety of international agencies. In Nepal, he worked for the establishment of the Annapurna Area Conservation Project (ACAP), which attracts thousands of tourists, domestic and foreign, every year.<strong>Broughton Coburn</strong>&nbsp;of Wilson, Wyoming has worked in conservation and development projects in Nepal, Tibet and India for the four decades, for a variety of international agencies. In Nepal, he worked for the establishment of the Annapurna Area Conservation Project (ACAP), which attracts thousands of tourists, domestic and foreign, every year.<strong>Broughton Coburn</strong>&nbsp;of Wilson, Wyoming has worked in conservation and development projects in Nepal, Tibet and India for the four decades, for a variety of international agencies. In Nepal, he worked for the establishment of the Annapurna Area Conservation Project (ACAP), which attracts thousands of tourists, domestic and foreign, every year.<strong>Broughton Coburn</strong>&nbsp;of Wilson, Wyoming has worked in conservation and development projects in Nepal, Tibet and India for the four decades, for a variety of international agencies. In Nepal, he worked for the establishment of the Annapurna Area Conservation Project (ACAP), which attracts thousands of tourists, domestic and foreign, every year.</p>', 'its-time-to-restructure-conservation-area-projects-in-nepal-says-conservationist-writer', 1, 1, 'post_main_31.jpg', 'post_thumb_31.jpg', 'post_list_31.jpg', 0, 0, 1, '2019-12-23 21:10:22', '2019-12-23 21:10:23'),
(32, 'I still have a lot to offer for Nepali cricket: Paras Khadka', 'Paras Khadka, who stepped down as captain of the national cricket team, is not playing the series against MCC. However, Khadka, who is preparing to go to Dubai to play the T-10 league, is ever-present at the TU Cricket Ground to cheer up his teammates.', '<p><strong>Paras Khadka</strong>, who stepped down as captain of the national cricket team, is not playing the series against MCC. However, Khadka, who is preparing to go to Dubai to play the T-10 league, is ever-present at the TU Cricket Ground to cheer up his teammates.</p>\r\n\r\n<p>On Wednesday,&nbsp;<em>Onlinekhabar&rsquo;s</em>&nbsp;<strong>Raj Kumar Shrestha</strong>&nbsp;caught up with Khadka and spoke to him about why he didn&rsquo;t play this series, his aspiration in the T-10 league and his future plans.&nbsp;Excerpts:</p>\r\n\r\n<p><strong>Paras Khadka</strong>, who stepped down as captain of the national cricket team, is not playing the series against MCC. However, Khadka, who is preparing to go to Dubai to play the T-10 league, is ever-present at the TU Cricket Ground to cheer up his teammates.</p>\r\n\r\n<p>On Wednesday,&nbsp;<em>Onlinekhabar&rsquo;s</em>&nbsp;<strong>Raj Kumar Shrestha</strong>&nbsp;caught up with Khadka and spoke to him about why he didn&rsquo;t play this series, his aspiration in the T-10 league and his future plans.&nbsp;Excerpts:</p>', 'i-still-have-a-lot-to-offer-for-nepali-cricket-paras-khadka', 3, 1, 'post_main_32.jpg', 'post_thumb_32.jpg', 'post_list_32.jpg', 0, 0, 1, '2019-12-23 21:11:06', '2019-12-23 21:11:07'),
(33, '‘Chinese PV price drop has enabled us to sell power at cheaper rate than national grid’', 'Anjal Niraula is a distributed solar expert. He is also a member of the Future Energy Leader’s group with the World Energy Council where he works on the Energy Access taskforce. As CEO of Gham Power, one of Nepal’s leading solar companies, he oversees R&D and product strategy, including business development, design, and engineering. He has been with Gham Power since it’s early days in 2010, when Nepal faced a severe power crisis with outages up to 18 hrs a day. Gham Power, which was first established to provide back-up for households during the crisis, now develops solar microgrids in rural areas and in urban areas it is developing itself as an energy service company. Onlinekhabar’s Abhaya Raj Joshi talked to Niraula recently on his company’s work and the way forward for solar power in Nepal, Excerpts:', '<p>Anjal Niraula is a distributed solar expert. He is also a member of the Future Energy Leader&rsquo;s group with the World Energy Council where he works on the Energy Access taskforce. As CEO of Gham Power, one of Nepal&rsquo;s leading solar companies, he oversees R&amp;D and product strategy, including business development, design, and engineering. He has been with Gham Power since it&rsquo;s early days in 2010, when Nepal faced a severe power crisis with outages up to 18 hrs a day. Gham Power, which was first established to provide back-up for households during the crisis, now develops solar microgrids in rural areas and in urban areas it is developing itself as an energy service company. Onlinekhabar&rsquo;s&nbsp;<strong>Abhaya Raj Joshi</strong>&nbsp;talked to Niraula recently on his company&rsquo;s work and the way forward for solar power in Nepal, Excerpts:</p>\r\n\r\n<p>Anjal Niraula is a distributed solar expert. He is also a member of the Future Energy Leader&rsquo;s group with the World Energy Council where he works on the Energy Access taskforce. As CEO of Gham Power, one of Nepal&rsquo;s leading solar companies, he oversees R&amp;D and product strategy, including business development, design, and engineering. He has been with Gham Power since it&rsquo;s early days in 2010, when Nepal faced a severe power crisis with outages up to 18 hrs a day. Gham Power, which was first established to provide back-up for households during the crisis, now develops solar microgrids in rural areas and in urban areas it is developing itself as an energy service company. Onlinekhabar&rsquo;s&nbsp;<strong>Abhaya Raj Joshi</strong>&nbsp;talked to Niraula recently on his company&rsquo;s work and the way forward for solar power in Nepal, Excerpts:</p>\r\n\r\n<p>Anjal Niraula is a distributed solar expert. He is also a member of the Future Energy Leader&rsquo;s group with the World Energy Council where he works on the Energy Access taskforce. As CEO of Gham Power, one of Nepal&rsquo;s leading solar companies, he oversees R&amp;D and product strategy, including business development, design, and engineering. He has been with Gham Power since it&rsquo;s early days in 2010, when Nepal faced a severe power crisis with outages up to 18 hrs a day. Gham Power, which was first established to provide back-up for households during the crisis, now develops solar microgrids in rural areas and in urban areas it is developing itself as an energy service company. Onlinekhabar&rsquo;s&nbsp;<strong>Abhaya Raj Joshi</strong>&nbsp;talked to Niraula recently on his company&rsquo;s work and the way forward for solar power in Nepal, Excerpts:</p>', 'chinese-pv-price-drop-has-enabled-us-to-sell-power-at-cheaper-rate-than-national-grid', 3, 1, 'post_main_33.jpg', 'post_thumb_33.jpg', 'post_list_33.jpg', 0, 0, 1, '2019-12-23 21:12:37', '2019-12-23 21:12:38'),
(34, 'Austrian climber who visited Nepal 100 times in 50 yrs: Mountains teach coming down is as important as going up', 'Wolfgang Nairz is a renowned mountaineer and the leader of Austria’s 1978 Everest expedition, in which Reinhold Messner and Peter Habeler reached the top of Everest without bottled oxygen.\r\n\r\nNairz first came to Nepal in 1970 and since then has been coming to Nepal on a regular basis. Last week, Nairz arrived in Nepal for the 100th time, becoming probably the first foreigner to do so. Upon arrival, his hosts and fans gave him a ‘hero’s welcome’ at the Kathmandu airport and took him to Thamel on a traditional carriage (baggi). Later, Nairz spoke to Onlinekhabar about his impression of Nepal, how things have changed here and about his projects in the country. Excerpts:', '<p><strong>Wolfgang Nairz</strong>&nbsp;is a renowned mountaineer and the leader of Austria&rsquo;s 1978 Everest expedition, in which Reinhold Messner and Peter Habeler reached the top of Everest without bottled oxygen.</p>\r\n\r\n<p>Nairz first came to Nepal in 1970 and since then has been coming to Nepal on a regular basis. Last week, Nairz arrived in Nepal for the 100th&nbsp;time, becoming probably the first foreigner to do so. Upon arrival, his hosts and fans gave him a &lsquo;hero&rsquo;s welcome&rsquo; at the Kathmandu airport and took him to Thamel on a traditional carriage (baggi). Later, Nairz spoke to&nbsp;<em>Onlinekhabar</em>&nbsp;about his impression of Nepal, how things have changed here and about his projects in the country. Excerpts:<strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Wolfgang Nairz</strong>&nbsp;is a renowned mountaineer and the leader of Austria&rsquo;s 1978 Everest expedition, in which Reinhold Messner and Peter Habeler reached the top of Everest without bottled oxygen.</p>\r\n\r\n<p>Nairz first came to Nepal in 1970 and since then has been coming to Nepal on a regular basis. Last week, Nairz arrived in Nepal for the 100th&nbsp;time, becoming probably the first foreigner to do so. Upon arrival, his hosts and fans gave him a &lsquo;hero&rsquo;s welcome&rsquo; at the Kathmandu airport and took him to Thamel on a traditional carriage (baggi). Later, Nairz spoke to&nbsp;<em>Onlinekhabar</em>&nbsp;about his impression of Nepal, how things have changed here and about his projects in the country. Excerpts:<strong>&nbsp;</strong></p>', 'austrian-climber-who-visited-nepal-100-times-in-50-yrs-mountains-teach-coming-down-is-as-important-as-going-up', 1, 1, 'post_main_34.jpg', 'post_thumb_34.jpg', 'post_list_34.jpg', 0, 0, 1, '2019-12-23 21:13:25', '2019-12-23 21:13:26'),
(35, 'Everest climb in autumn sounds tough, but can be done: Garrett Madison', 'Garrett Madison is one of the most sought-after foreign climbers and mountain guides. Since he first summited Everest in 2006, he has led over 60 climbers to the summit of Everest and started his own company, Madison Mountaineering.', '<p><em>Garrett Madison</em>&nbsp;is one of the most sought-after foreign climbers and mountain guides. Since he first summited Everest in 2006, he has led over 60 climbers to the summit of Everest and started his own company, Madison Mountaineering.</p>\r\n\r\n<p>Madison holds multiple high-altitude mountaineering world records. He is the only person to have climbed Mount Everest and Lhotse in a day, that too three times. He is also the only American to have climbed K2 twice. Madison spoke to&nbsp;<em>Onlinekhabar</em>&nbsp;about his current expedition where he plans to take a team to the top of Everest in autumn for the first time since 2010 and about mountaineering in Nepal. Excerpts:</p>', 'everest-climb-in-autumn-sounds-tough-but-can-be-done-garrett-madison', 1, 1, 'post_main_35.jpg', 'post_thumb_35.jpg', 'post_list_35.jpg', 0, 0, 1, '2019-12-23 21:14:11', '2019-12-23 21:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Master Admin', 'Master Admin', 'Master Admin', '2019-12-19 23:40:25', '2019-12-19 23:40:25'),
(5, 'Blogger', 'Blogger', 'Blogger', '2019-12-19 23:42:21', '2019-12-19 23:42:21'),
(6, 'Editor', 'Editor', 'Editor', '2019-12-19 23:44:00', '2019-12-19 23:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 4),
(5, 6),
(6, 6),
(7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_name', 'National News', NULL, '2019-12-23 21:42:51'),
(2, 'favicon', 'favicon.png', NULL, NULL),
(3, 'front_logo', 'front_logo.png', NULL, NULL),
(4, 'admin_logo', 'admin_logo.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$oC9XHvu7McxpxeWsIJEk1um9e/FfXCmKshb6sjXhoPQynh/bz9JqC', 1, 'Z9xtd6aRZUIVL1nLRwIKmgskm5luMpmoM3ZRaVmSlZ1BilxMxbnAp4N4eZxJ', '2019-12-18 18:15:00', '2019-12-18 18:15:00'),
(5, 'Hari', 'hari@gmail.com', '$2y$10$upkbC/80aWdgV/0MIhfL0.Yv3rQL6maVk6Rw.Z3Cc1xl9YRIG5U0O', 2, 'vNRxWgYBWsP4ZlPLswp9yWbhVRI6tVEBxQfUCrToRUiPEQ1srkXpgFozqQaS', '2019-12-19 23:46:25', '2019-12-19 23:46:25'),
(6, 'Ram', 'ram@gmail.com', '$2y$10$xfriy4UTOanHkNluD9VE0etdA0/DEM1lb3oi3rJK0dQyF7tYK6n6K', 2, '8RMp0k4jlGJTxciGXMt4xca5IlTnh55ldMNSD6IupCuxKOJeMxW2yWDikdBC', '2019-12-19 23:46:50', '2019-12-19 23:46:50'),
(7, 'Author1', 'Author1@gmail.com', '$2y$10$woIrt5iDrPy6cgx6Ay65hOER.rgQyl.Vz92FgVtlah3HYQouCCwGi', 2, 'T7OTWQGGwvbED0kyAvcMW5CrB6xlTxMVTwQS2lBmANPTsz0N0aCAItSRGzOV', '2019-12-23 20:41:51', '2019-12-23 20:41:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
