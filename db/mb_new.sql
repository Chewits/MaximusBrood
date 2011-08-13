-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 13, 2011 at 09:59 PM
-- Server version: 5.1.44
-- PHP Version: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mb_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `mb_articles`
--

CREATE TABLE `mb_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mb_articles`
--

INSERT INTO `mb_articles` VALUES(1, 'Rule one', 'You must respect the authority and decisions of those with a higher rank. Repeated insubordination and disrespect for authority will result in demotion, return to trial level, or expulsion depending on the severity of the case. The hierarchy is an important part of maintaining the clan and you should at all times obey the senior commanders. Asking for a promotion is not allowed. Promotions are awarded for persistent effort in the eyes of the Generals and the Commander. Their decision is final, you should not question it. If you truly do deserve a promotion, you will get one eventually. Asking for one will set you back several weeks.\r\n', 1, 6, 1);
INSERT INTO `mb_articles` VALUES(4, 'Rule four', 'You must not change your Maximus Brood username or use another without first consulting a Leader. It is preferable that you should not have to change your username at all. Certainly if the reason is just out of personal preference, this will count against you in terms of promotion, because it is confusing to all concerned. To clarify, joining other BW or SC2 clans is strictly forbidden.', 1, 3, 1);
INSERT INTO `mb_articles` VALUES(5, 'Rule five', 'You must try to play an active role within the clan. Those absent for more than a few weeks without due notice will be sacked. Checking the web site for new information and participation in discussions is mandatory. You should not refuse to play tournament or league games if you have signed yourself up to it. Failure to play your games will mean a demotion if there is not a good reason, or at the very least you will not be looked on favourably for a promotion. If you won''t be able to play in a competition, don''t sign up. ', 1, 2, 1);
INSERT INTO `mb_articles` VALUES(6, 'Rule six', 'You have to be able to speak and understand English or at least try hard to improve it, so that you can communicate with your follow clanmates, read and understand clan news aswell as being active on the site and it''s forum. Feel free to join even if your English is very bad, but we expect you to do your best on improving it. Ignoring the clan site and forums because you have a hard time understanding it, will not be tolerated.', 1, 1, 1);
INSERT INTO `mb_articles` VALUES(2, 'Rule two', 'You must never cheat, or use hacks of any kind to distort of unfairly influence the result of a game on battle.net. Failure to comply with this rule will result in demotion for those with medium to high ranks and expulsion for lower ranked members. Loss accounts are also badly frowned upon.', 1, 5, 1);
INSERT INTO `mb_articles` VALUES(3, 'Rule three', 'You must respect your fellow members and must not seriously abuse other people on battle.net whilst representing the clan without due cause. Making trouble on the site is not allowed. Those found to be deliberately making trouble will be suspended from the site. You must also remember some people have a strange sense of humour. Do not take insults aimed as a joke seriously, and do not repeatedly tell tales on other members.', 1, 4, 1);
INSERT INTO `mb_articles` VALUES(7, 'Test 234', '5678', 2, 8, 1);
INSERT INTO `mb_articles` VALUES(8, 'Test567', '234', 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mb_boards`
--

CREATE TABLE `mb_boards` (
  `permission_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `style` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mb_boards`
--

INSERT INTO `mb_boards` VALUES(35, 1, 'Classified', 1, '', 'color: #e32;');
INSERT INTO `mb_boards` VALUES(0, 2, 'Normal', 0, '', '');
INSERT INTO `mb_boards` VALUES(36, 3, 'Highlighted', 0, '', 'color: #783b80;');
INSERT INTO `mb_boards` VALUES(40, 5, 'News', 0, '', 'color: #759c4c;');

-- --------------------------------------------------------

--
-- Table structure for table `mb_categories`
--

CREATE TABLE `mb_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `full` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mb_categories`
--

INSERT INTO `mb_categories` VALUES(1, 'Rules', 'The rules provide a framework defining what is expected from members, and equally importantly, what is not! You should study these carefully, for staying on the right side of them will serve you well in your time with the clan.', 1, 0);
INSERT INTO `mb_categories` VALUES(2, 'Test Categories', 'asdfkjghawiulrghvdlksbdosivugbf ', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_filter`
--

CREATE TABLE `mb_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mb_filter`
--


-- --------------------------------------------------------

--
-- Table structure for table `mb_groups`
--

CREATE TABLE `mb_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mb_groups`
--

INSERT INTO `mb_groups` VALUES(5, 'Starcraft: Brood War', '', 'iccup.png', 1);
INSERT INTO `mb_groups` VALUES(4, 'Starcraft II: Wings of Liberty', '', 'sc2.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mb_groups_users`
--

CREATE TABLE `mb_groups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `mb_groups_users`
--

INSERT INTO `mb_groups_users` VALUES(27, 5, 1);
INSERT INTO `mb_groups_users` VALUES(29, 4, 2);
INSERT INTO `mb_groups_users` VALUES(28, 4, 1);
INSERT INTO `mb_groups_users` VALUES(30, 5, 5);
INSERT INTO `mb_groups_users` VALUES(35, 4, 6);
INSERT INTO `mb_groups_users` VALUES(32, 5, 7);
INSERT INTO `mb_groups_users` VALUES(33, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `mb_links`
--

CREATE TABLE `mb_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `controller` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT 'index',
  `url` text NOT NULL,
  `permission_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `mb_links`
--

INSERT INTO `mb_links` VALUES(3, 19, 'Add User', '', 'users', '', 'add', '', 26, 6);
INSERT INTO `mb_links` VALUES(6, 20, 'Members', '', 'users', '', 'index', '', 0, 0);
INSERT INTO `mb_links` VALUES(4, 16, 'Ranks', '', 'ranks', '', 'index', '', 0, 0);
INSERT INTO `mb_links` VALUES(5, 3, 'Log', '', 'logs', '', 'index', '', 1, 0);
INSERT INTO `mb_links` VALUES(16, 18, 'View Guests', '', 'users', '', 'show/guest', '', 0, 6);
INSERT INTO `mb_links` VALUES(7, 13, 'Add Rank', '', 'ranks', '', 'add', '', 23, 4);
INSERT INTO `mb_links` VALUES(22, 17, 'Ex-members', '', 'users', '', 'exmembers', '', 0, 6);
INSERT INTO `mb_links` VALUES(10, 7, 'Add Link', '', 'links', '', 'add', '', 14, 9);
INSERT INTO `mb_links` VALUES(19, 24, 'News', '', 'news', '', '', '', 0, 0);
INSERT INTO `mb_links` VALUES(17, 22, 'Forum', '', 'forum', '', 'index', '', 0, 0);
INSERT INTO `mb_links` VALUES(18, 21, 'New Thread', '', 'forum', '', 'add', '', 19, 17);
INSERT INTO `mb_links` VALUES(20, 23, 'Add News', '', 'news', '', 'add', '', 40, 19);
INSERT INTO `mb_links` VALUES(21, 10, 'Rules', '', 'articles', 'rules', 'view/1', '', 0, 0);
INSERT INTO `mb_links` VALUES(23, 12, 'Ex-member Ranks', '', 'ranks', '', 'exmembers', '', 0, 4);
INSERT INTO `mb_links` VALUES(24, 4, 'Pages', '', 'articles', '', 'summary', '', 2, 0);
INSERT INTO `mb_links` VALUES(25, 25, 'Add Category', '', 'articles', '', 'addcategory', '', 8, 24);

-- --------------------------------------------------------

--
-- Table structure for table `mb_logs`
--

CREATE TABLE `mb_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `additional` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `additional_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2651 ;

--
-- Dumping data for table `mb_logs`
--

INSERT INTO `mb_logs` VALUES(1, 'Group', 'Add', '', '2010-12-28 01:52:13', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(2, 'Permission', 'Add', '', '2010-12-28 02:00:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(3, 'Permission', 'Add', '', '2010-12-28 02:00:31', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(4, 'Permission', 'Add', '', '2010-12-28 02:00:40', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(5, 'Permission', 'Add', '', '2010-12-28 02:00:50', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(6, 'Permission', 'Add', '', '2010-12-28 02:00:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(7, 'Permission', 'Add', '', '2010-12-28 02:00:58', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(8, 'Permission', 'Add', '', '2010-12-28 02:01:03', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(9, 'Permission', 'Add', '', '2010-12-28 02:01:08', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(10, 'Permission', 'Add', '', '2010-12-28 02:01:13', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(11, 'Permission', 'Add', '', '2010-12-28 02:01:18', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(12, 'Permission', 'Add', '', '2010-12-28 02:01:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(13, 'Permission', 'Add', '', '2010-12-28 02:01:35', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(14, 'Permission', 'Add', '', '2010-12-28 02:01:44', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(15, 'Permission', 'Add', '', '2010-12-28 02:01:55', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(16, 'Permission', 'Add', '', '2010-12-28 02:02:07', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(17, 'Permission', 'Add', '', '2010-12-28 02:02:15', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(18, 'Permission', 'Add', '', '2010-12-28 02:02:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(19, 'Permission', 'Add', '', '2010-12-28 02:02:35', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(20, 'Permission', 'Add', '', '2010-12-28 02:02:48', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(21, 'Permission', 'Add', '', '2010-12-28 02:02:58', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(22, 'Permission', 'Add', '', '2010-12-28 02:03:12', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(23, 'Permission', 'Add', '', '2010-12-28 02:03:20', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(24, 'Permission', 'Add', '', '2010-12-28 02:03:40', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(25, 'Permission', 'Add', '', '2010-12-28 02:03:55', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(26, 'Permission', 'Add', '', '2010-12-28 02:04:13', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(27, 'Permission', 'Add', '', '2010-12-28 02:04:44', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(28, 'Permission', 'Add', '', '2010-12-28 02:05:13', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(29, 'Permission', 'Add', '', '2010-12-28 02:05:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(30, 'Permission', 'Add', '', '2010-12-28 02:05:31', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(31, 'Permission', 'Add', '', '2010-12-28 02:05:44', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(32, 'Permission', 'Add', '', '2010-12-28 02:05:55', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(33, 'Permission', 'Add', '', '2010-12-28 02:06:02', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(34, 'Permission', 'Add', '', '2010-12-28 02:06:10', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(35, 'Permission', 'Add', '', '2010-12-28 02:06:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(36, 'Permission', 'Add', '', '2010-12-28 02:06:33', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(37, 'Permission', 'Add', '', '2010-12-28 02:06:41', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(38, 'Permission', 'Add', '', '2010-12-28 02:06:52', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(40, 'Permission', 'Add', '', '2010-12-28 02:22:33', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(41, 'Permission', 'Delete', '', '2010-12-28 02:22:40', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(42, 'Permission', 'Delete', '', '2010-12-28 02:29:45', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(43, 'Permission', 'Edit', '', '2010-12-28 02:31:21', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(44, 'Permission', 'Edit', '', '2010-12-28 02:40:34', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(45, 'Link', 'Delete', '', '2010-12-28 02:42:39', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(46, 'Link', 'Delete', '', '2010-12-28 02:42:43', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(47, 'Permission', 'Edit', '', '2010-12-28 02:57:25', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(48, 'Permission', 'Edit', '', '2010-12-28 02:58:02', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(49, 'Permission', 'Edit', '', '2010-12-28 02:58:12', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(50, 'Permission', 'Edit', '', '2010-12-28 02:58:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(51, 'Link', 'Add', '', '2010-12-28 03:14:26', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(52, 'Link', 'Add', '', '2010-12-28 03:26:17', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(53, 'Link', 'Edit', '', '2010-12-28 03:37:43', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(54, 'Link', 'Add', '', '2010-12-28 03:40:17', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(55, 'Link', 'Add', '', '2010-12-28 03:58:53', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(56, 'Permission', 'Edit', '', '2010-12-28 03:59:37', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(57, 'Permission', 'Edit', '', '2010-12-28 03:59:48', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(58, 'Link', 'Edit', '', '2010-12-28 04:00:10', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(59, 'Link', 'Edit', '', '2010-12-28 13:02:29', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(60, 'Link', 'Add', '', '2010-12-28 13:04:09', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(61, 'Link', 'Edit', '', '2010-12-28 13:23:36', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(62, 'Permission', 'Edit', '', '2010-12-28 13:28:44', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(63, 'Link', 'Edit', '', '2010-12-28 13:29:14', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(64, 'Permission', 'Edit', '', '2010-12-28 13:29:48', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(65, 'Rank', 'Add', '', '2010-12-28 18:18:42', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(66, 'User', 'Edit', '', '2010-12-28 18:18:58', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(67, 'User', 'Edit', '', '2010-12-28 18:24:28', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(68, 'Group', 'Delete', '', '2010-12-28 18:26:01', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(69, 'Group', 'Delete', '', '2010-12-28 18:26:03', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(70, 'Group', 'Add', '', '2010-12-28 18:26:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(71, 'Link', 'Edit', '', '2010-12-28 18:56:00', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(72, 'Link', 'Edit', '', '2010-12-28 18:56:12', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(73, 'Link', 'Edit', '', '2010-12-28 18:56:19', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(74, 'Link', 'Edit', '', '2010-12-28 18:56:26', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(75, 'Link', 'Edit', '', '2010-12-28 18:56:51', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(76, 'Link', 'Edit', '', '2010-12-28 18:58:40', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(77, 'Link', 'Edit', '', '2010-12-28 18:58:46', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(78, 'Link', 'Edit', '', '2010-12-28 18:58:52', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(79, 'Link', 'Edit', '', '2010-12-28 18:58:58', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(80, 'Link', 'Add', '', '2010-12-28 19:11:50', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(81, 'Link', 'Add', '', '2010-12-28 19:32:51', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(82, 'Link', 'Add', '', '2010-12-28 19:33:36', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(83, 'Link', 'Edit', '', '2010-12-28 19:33:49', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(84, 'Link', 'Delete', '', '2010-12-28 19:34:25', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(85, 'Permission', 'Add', '', '2010-12-28 19:42:56', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(86, 'Permission', 'Edit', '', '2010-12-28 19:44:50', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(87, 'Link', 'Add', '', '2010-12-28 22:19:53', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(88, 'Link', 'Add', '', '2010-12-28 22:20:52', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(89, 'Link', 'Add', '', '2010-12-28 22:21:25', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(90, 'Link', 'Delete', '', '2010-12-28 22:21:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(91, 'Link', 'Add', '', '2010-12-29 00:52:36', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(92, 'Link', 'Edit', '', '2010-12-29 00:56:06', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(93, 'Link', 'Edit', '', '2010-12-29 00:56:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(94, 'Link', 'Edit', '', '2010-12-29 00:56:32', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(95, 'Link', 'Edit', '', '2010-12-29 00:58:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(96, 'Link', 'Edit', '', '2010-12-29 01:05:05', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(97, 'Rank', 'Edit', '', '2010-12-29 01:06:12', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(98, 'Rank', 'Add', '', '2010-12-29 01:06:42', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(99, 'Rank', 'Add', '', '2010-12-29 01:07:08', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(100, 'Permission', 'Edit', '', '2010-12-29 01:55:59', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(101, 'Group', 'Add', '', '2010-12-29 01:59:00', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(102, 'Group', 'Edit', '', '2010-12-29 02:05:35', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(103, 'Group', 'Edit', '', '2010-12-29 02:06:17', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(104, 'Group', 'Edit', '', '2010-12-29 02:06:19', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(105, 'Group', 'Edit', '', '2010-12-29 02:06:21', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(106, 'Group', 'Edit', '', '2010-12-29 02:06:31', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(107, 'Group', 'Edit', '', '2010-12-29 02:08:05', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(108, 'Group', 'Edit', '', '2010-12-29 02:08:31', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(109, 'Group', 'Edit', '', '2010-12-29 02:08:47', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(114, 'Link', 'Delete', '', '2010-12-29 17:55:30', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(111, 'Link', 'Edit', '', '2010-12-29 14:04:06', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(112, 'Link', 'Edit', '', '2010-12-29 14:04:19', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(113, 'Link', 'Edit', '', '2010-12-29 14:04:28', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(115, 'Link', 'Edit', '', '2010-12-29 17:59:07', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(116, 'Link', 'Edit', '', '2010-12-29 17:59:25', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(117, 'Link', 'Edit', '', '2010-12-29 17:59:25', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(118, 'Link', 'Edit', '', '2010-12-29 18:00:57', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(119, 'Link', 'Edit', '', '2010-12-29 18:02:48', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(120, 'Link', 'Edit', '', '2010-12-29 18:03:15', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(121, 'Link', 'Edit', '', '2010-12-29 18:04:04', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(122, 'Link', 'Edit', '', '2010-12-29 18:04:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(123, 'Link', 'Edit', '', '2010-12-29 18:04:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(124, 'Link', 'Delete', '', '2010-12-29 18:05:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(125, 'Rank', 'Delete', '', '2010-12-29 21:32:32', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(126, 'User', 'Edit', '', '2010-12-29 21:35:13', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(127, 'Rank', 'Add', '', '2010-12-29 21:35:33', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(128, 'Rank', 'Add', '', '2010-12-29 21:36:02', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(129, 'Rank', 'Edit', '', '2010-12-29 21:37:28', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(130, 'User', 'Edit', '', '2010-12-29 22:19:59', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(131, 'Rank', 'Edit', '', '2010-12-29 22:23:39', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(132, 'Link', 'Edit', '', '2010-12-29 23:05:00', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(133, 'Rank', 'Edit', '', '2010-12-30 00:18:20', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(134, 'Permission', 'Add', '', '2010-12-30 01:02:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(135, 'Link', 'Edit', '', '2010-12-30 01:02:49', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(136, 'Permission', 'Edit', '', '2010-12-30 01:04:59', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(137, 'Link', 'Edit', '', '2010-12-30 01:05:28', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(138, 'Link', 'Edit', '', '2010-12-30 01:14:02', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(139, 'Permission', 'Edit', '', '2010-12-30 01:14:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(140, 'Permission', 'Edit', '', '2010-12-30 01:14:33', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(141, 'Permission', 'Edit', '', '2010-12-30 01:14:41', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(142, 'Permission', 'Add', '', '2010-12-30 01:14:56', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(143, 'Permission', 'Edit', '', '2010-12-30 01:20:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(144, 'Board', 'Add', '', '2010-12-30 01:26:19', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(145, 'Board', 'Add', '', '2010-12-30 01:26:48', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(146, 'Post', 'Add', '', '2010-12-30 01:27:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(147, 'Rank', 'Move down', '', '2010-12-30 01:39:08', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(148, 'Rank', 'Move up', '', '2010-12-30 01:39:11', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(149, 'Rank', 'Move down', '', '2010-12-30 01:43:32', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(150, 'Rank', 'Move up', '', '2010-12-30 01:43:34', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(151, 'Post', 'Add', '', '2010-12-30 03:29:04', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(152, 'Link', 'Edit', '', '2010-12-30 03:47:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.231 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(153, 'Post', 'Add', '', '2011-02-01 16:07:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(154, 'Post', 'Add', '', '2011-02-01 17:54:12', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(155, 'Post', 'Add', '', '2011-02-01 17:56:59', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(156, 'Post', 'Add', '', '2011-02-01 17:57:00', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(157, 'Post', 'Add', '', '2011-02-01 17:58:06', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(158, 'Post', 'Add', '', '2011-02-01 17:58:07', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(159, 'Post', 'Add', '', '2011-02-01 17:58:45', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(160, 'Post', 'Add', '', '2011-02-01 18:00:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(161, 'Post', 'Add', '', '2011-02-01 18:03:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(162, 'Post', 'Add', '', '2011-02-01 18:03:52', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(163, 'Post', 'Add', '', '2011-02-01 18:04:50', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(164, 'Post', 'Add', '', '2011-02-01 18:04:58', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(165, 'Post', 'Add', '', '2011-02-01 18:04:58', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(166, 'Post', 'Add', '', '2011-02-01 18:05:00', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(167, 'Post', 'Add', '', '2011-02-01 18:05:13', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(168, 'Post', 'Add', '', '2011-02-01 18:05:15', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(169, 'Post', 'Add', '', '2011-02-01 18:05:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(170, 'Post', 'Add', '', '2011-02-01 18:05:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(171, 'Post', 'Add', '', '2011-02-01 18:08:23', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(172, 'Post', 'Add', '', '2011-02-01 18:08:39', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(173, 'Post', 'Add', '', '2011-02-01 18:08:42', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(174, 'Post', 'Add', '', '2011-02-01 18:08:43', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(175, 'Post', 'Add', '', '2011-02-01 18:09:46', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(176, 'Post', 'Add', '', '2011-02-01 18:09:47', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(177, 'Post', 'Add', '', '2011-02-01 18:11:43', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(178, 'Post', 'Add', '', '2011-02-01 18:11:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(179, 'Post', 'Add', '', '2011-02-01 20:00:53', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(180, 'Post', 'Add', '', '2011-02-01 20:04:52', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(181, 'Post', 'Edit', '', '2011-02-01 20:12:44', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(182, 'Post', 'Add', '', '2011-02-01 20:13:22', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(183, 'Post', 'Edit', '', '2011-02-01 20:15:16', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(184, 'Post', 'Edit', '', '2011-02-01 20:17:01', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(185, 'Post', 'Add', '', '2011-02-01 20:19:36', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(186, 'Post', 'Add', '', '2011-02-01 20:20:09', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(187, 'Post', 'Add', '', '2011-02-01 20:20:20', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(188, 'Post', 'Add', '', '2011-02-01 20:20:40', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(189, 'Post', 'Add', '', '2011-02-01 20:29:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(190, 'Post', 'Edit', '', '2011-02-01 20:30:11', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(191, 'Rank', 'Move down', '', '2011-02-02 23:43:40', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(192, 'Rank', 'Move up', '', '2011-02-02 23:43:42', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(193, 'Post', 'Edit', '', '2011-02-03 09:35:12', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(194, 'Post', 'Add', '', '2011-02-03 18:17:55', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(195, 'Post', 'Edit', '', '2011-02-03 18:19:34', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(196, 'Permission', 'Edit', '', '2011-02-03 18:51:18', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(197, 'Board', 'Edit', '', '2011-02-03 18:53:39', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(198, 'Board', 'Edit', '', '2011-02-03 18:53:51', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(199, 'Board', 'Edit', '', '2011-02-03 18:54:00', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(200, 'Rank', 'Move down', '', '2011-02-03 18:57:41', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(201, 'Rank', 'Move up', '', '2011-02-03 18:57:50', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(202, 'Rank', 'Move down', '', '2011-02-03 19:18:24', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(203, 'Rank', 'Move down', '', '2011-02-03 19:40:54', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(204, 'Post', 'Edit', '', '2011-02-03 19:41:34', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(205, 'Board', 'Edit', '', '2011-02-03 19:54:16', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(206, 'Permission', 'Edit', '', '2011-02-03 20:05:53', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(207, 'Permission', 'Edit', '', '2011-02-03 20:06:06', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(208, 'Permission', 'Edit', '', '2011-02-07 15:01:35', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(209, 'Permission', 'Edit', '', '2011-02-07 15:07:49', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', 1, 0);
INSERT INTO `mb_logs` VALUES(210, 'User', 'Add', '', '2011-02-28 23:11:34', '::1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', 1, 0);
INSERT INTO `mb_logs` VALUES(211, 'Rank', 'Move down', '', '2011-04-26 11:58:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.205 Safari/534.16', 1, 0);
INSERT INTO `mb_logs` VALUES(212, 'Rank', 'Move up', '', '2011-04-26 11:58:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.205 Safari/534.16', 1, 0);
INSERT INTO `mb_logs` VALUES(213, 'User', 'Edit', '', '2011-05-17 17:49:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(214, 'User', 'Edit', '', '2011-05-17 17:58:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(215, 'User', 'Edit', '', '2011-05-17 18:04:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(216, 'User', 'Edit', '', '2011-05-18 11:44:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(217, 'Permissions', 'Edit', '', '2011-05-18 11:45:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(218, 'Permissions', 'Edit', '', '2011-05-18 11:47:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(219, 'Permissions', 'Edit', '', '2011-05-18 11:48:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(220, 'Permissions', 'Edit', '', '2011-05-18 11:49:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(221, 'Link', 'Delete', '', '2011-05-18 12:03:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(222, 'Link', 'Delete', '', '2011-05-18 12:03:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(223, 'Post', 'Add', '', '2011-05-18 16:05:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(224, 'Permissions', 'Edit', '', '2011-05-18 16:08:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(225, 'Permissions', 'Edit', '', '2011-05-19 15:16:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(226, 'Permissions', 'Edit', '', '2011-05-19 15:17:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(227, 'Permissions', 'Edit', '', '2011-05-19 15:17:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(228, 'Permissions', 'Edit', '', '2011-05-19 15:43:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(229, 'Permissions', 'Edit', '', '2011-05-19 15:44:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(230, 'Permissions', 'Edit', '', '2011-05-19 15:50:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(231, 'Permissions', 'Edit', '', '2011-05-19 15:51:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(232, 'Permissions', 'Edit', '', '2011-05-19 15:51:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(233, 'Permissions', 'Edit', '', '2011-05-19 15:51:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.68 Safari/534.24', 1, 0);
INSERT INTO `mb_logs` VALUES(234, 'Post', 'Add', '', '2011-05-23 15:12:54', '192.168.0.100', 'Mozilla/5.0 (iPad; U; CPU OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5', 1, 0);
INSERT INTO `mb_logs` VALUES(235, 'Link', 'Edit', '', '2011-06-23 17:01:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(236, 'Link', 'Edit', '', '2011-06-23 17:02:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(237, 'Link', 'Edit', '', '2011-06-24 14:07:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(238, 'Rank', 'Edit', '', '2011-06-24 14:07:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(239, 'Rank', 'Move down', '', '2011-06-24 14:07:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(240, 'Rank', 'Move down', '', '2011-06-24 14:07:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(241, 'Rank', 'Move down', '', '2011-06-24 14:07:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(242, 'Rank', 'Move down', '', '2011-06-24 14:07:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(243, 'Rank', 'Move down', '', '2011-06-24 14:07:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(244, 'User', 'Add', '', '2011-06-24 14:08:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.91 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(245, 'Post', 'Edit', '', '2011-06-25 15:53:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(246, 'Post', 'Edit', '', '2011-06-25 15:53:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(247, 'Post', 'Edit', '', '2011-06-25 15:53:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(248, 'Post', 'Edit', '', '2011-06-25 15:53:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(249, 'Post', 'Edit', '', '2011-06-25 15:53:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(250, 'Permissions', 'Edit', '', '2011-06-29 18:32:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(251, 'Board', 'Add', '', '2011-06-29 18:37:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(252, 'Permissions', 'Edit', '', '2011-06-29 18:37:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(253, 'Post', 'Add', '', '2011-06-29 18:37:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(254, 'Link', 'Edit', '', '2011-06-29 18:38:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(255, 'Post', 'Add', '', '2011-06-29 18:50:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(256, 'Post', 'Edit', '', '2011-06-29 18:53:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(257, 'Post', 'Add', '', '2011-06-29 19:16:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(258, 'Post', 'Edit', '', '2011-06-29 19:16:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(259, 'Group', 'Delete', '', '2011-06-29 19:19:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(260, 'Rank', 'Move down', '', '2011-06-29 19:22:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(261, 'Rank', 'Move up', '', '2011-06-29 19:22:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(262, 'Post', 'Edit', '', '2011-06-30 00:44:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(263, 'Post', 'Edit', '', '2011-06-30 00:47:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(264, 'Post', 'Edit', '', '2011-06-30 00:52:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(265, 'Post', 'Edit', '', '2011-06-30 00:52:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(266, 'Post', 'Edit', '', '2011-06-30 00:53:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(267, 'Post', 'Edit', '', '2011-06-30 00:53:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(268, 'Post', 'Edit', '', '2011-06-30 00:53:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(269, 'Post', 'Edit', '', '2011-06-30 00:53:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(270, 'Post', 'Edit', '', '2011-06-30 00:53:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(271, 'Post', 'Edit', '', '2011-06-30 01:11:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(272, 'Post', 'Edit', '', '2011-06-30 01:11:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(273, 'Post', 'Edit', '', '2011-06-30 01:12:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(274, 'Post', 'Edit', '', '2011-06-30 01:13:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(275, 'Post', 'Edit', '', '2011-06-30 01:14:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(276, 'Link', 'Edit', '', '2011-06-30 11:11:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(277, 'Link', 'Move down', '', '2011-06-30 11:11:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(278, 'Link', 'Edit', '', '2011-06-30 11:11:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(279, 'Link', 'Edit', '', '2011-06-30 11:12:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(280, 'Link', 'Edit', '', '2011-06-30 11:12:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(281, 'Link', 'Edit', '', '2011-06-30 11:12:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(282, 'Permissions', 'Edit', '', '2011-06-30 11:26:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(283, 'Permissions', 'Edit', '', '2011-06-30 11:28:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(284, 'Post', 'Add', '', '2011-06-30 11:30:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(285, 'Post', 'Add', '', '2011-06-30 11:31:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(286, 'Post', 'Add', '', '2011-06-30 11:32:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(287, 'Post', 'Add', '', '2011-06-30 11:32:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(288, 'Post', 'Edit', '', '2011-06-30 11:34:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(289, 'Post', 'Edit', '', '2011-06-30 11:34:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(290, 'Post', 'Delete', '', '2011-06-30 11:36:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(291, 'Post', 'Edit', '', '2011-06-30 11:37:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(292, 'Post', 'Edit', '', '2011-06-30 11:37:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.100 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(293, 'User', 'Edit', '', '2011-07-12 17:56:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(294, 'User', 'Edit', '', '2011-07-12 17:56:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(319, 'User', 'Promoted', 'Corporal', '2010-12-12 19:30:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(320, 'Article', 'Add', '', '2011-07-12 19:34:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(321, 'User', 'Promoted', 'General', '2011-05-12 19:45:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(322, 'User', 'Promoted', 'Commander', '2011-06-12 20:01:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(334, 'Article', 'Edit', '', '2011-07-12 23:52:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(333, 'User', 'Demoted', 'General', '2011-07-12 20:08:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(335, 'Article', 'Edit', '', '2011-07-12 23:53:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(336, 'Article', 'Edit', '', '2011-07-12 23:53:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(337, 'Article', 'Edit', '', '2011-07-12 23:53:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(338, 'Article', 'Edit', '', '2011-07-12 23:53:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(339, 'Article', 'Edit', '', '2011-07-12 23:53:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(340, 'Article', 'Add', '', '2011-07-12 23:54:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(341, 'Article', 'Add', '', '2011-07-12 23:54:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(342, 'Article', 'Add', '', '2011-07-12 23:54:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(343, 'Rank', 'Move up', '', '2011-07-13 00:05:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(344, 'Rank', 'Move up', '', '2011-07-13 00:05:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(345, 'Rank', 'Move up', '', '2011-07-13 00:05:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(346, 'Rank', 'Move up', '', '2011-07-13 00:05:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(347, 'Rank', 'Move down', '', '2011-07-13 00:06:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(348, 'Rank', 'Move up', '', '2011-07-13 00:06:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(349, 'Rank', 'Edit', '', '2011-07-13 00:07:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(318, 'User', 'Promoted', 'Private', '2010-07-12 19:08:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(350, 'Rank', 'Move down', '', '2011-07-13 00:07:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(351, 'Rank', 'Move up', '', '2011-07-13 00:19:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(352, 'Rank', 'Move down', '', '2011-07-13 00:19:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(353, 'Rank', 'Move down', '', '2011-07-13 00:20:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(354, 'Article', 'Move down', '', '2011-07-13 00:34:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(355, 'Article', 'Move up', '', '2011-07-13 00:35:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(356, 'Article', 'Move up', '', '2011-07-13 00:35:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(357, 'Article', 'Move up', '', '2011-07-13 00:35:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(358, 'Article', 'Move up', '', '2011-07-13 00:35:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(359, 'Article', 'Move up', '', '2011-07-13 00:35:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(360, 'Article', 'Move up', '', '2011-07-13 00:35:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(361, 'Article', 'Move up', '', '2011-07-13 00:35:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(362, 'Article', 'Move down', '', '2011-07-13 00:40:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(363, 'Article', 'Edit', '', '2011-07-13 00:41:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(364, 'Link', 'Edit', '', '2011-07-13 00:41:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(365, 'Link', 'Move down', '', '2011-07-13 00:41:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(366, 'Link', 'Move down', '', '2011-07-13 00:41:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(367, 'Link', 'Move down', '', '2011-07-13 00:41:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(368, 'Link', 'Move down', '', '2011-07-13 00:41:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(369, 'Link', 'Move up', '', '2011-07-13 00:41:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(370, 'Link', 'Move up', '', '2011-07-13 00:41:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(371, 'Link', 'Move up', '', '2011-07-13 00:42:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(372, 'Link', 'Move down', '', '2011-07-13 00:42:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(373, 'Link', 'Move down', '', '2011-07-13 00:42:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(374, 'Link', 'Move down', '', '2011-07-13 00:42:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(375, 'Link', 'Move down', '', '2011-07-13 00:42:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(376, 'Link', 'Move down', '', '2011-07-13 00:42:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(377, 'Link', 'Move down', '', '2011-07-13 00:42:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(378, 'Link', 'Move down', '', '2011-07-13 00:42:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(379, 'Link', 'Move down', '', '2011-07-13 00:42:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(380, 'Link', 'Move down', '', '2011-07-13 00:42:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(381, 'Link', 'Move down', '', '2011-07-13 00:42:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(382, 'Post', 'Edit', '', '2011-07-13 00:45:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(383, 'Post', 'Edit', '', '2011-07-13 00:45:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(384, 'Post', 'Add', '', '2011-07-13 00:46:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(385, 'Post', 'Edit', '', '2011-07-13 01:36:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(386, 'Forum', 'Post', '', '2011-07-13 15:15:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 31);
INSERT INTO `mb_logs` VALUES(387, 'Forum', 'Add', '', '2011-07-13 22:04:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(388, 'Forum', 'Add', '', '2011-07-13 22:05:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(389, 'Forum', 'Add', '', '2011-07-13 22:07:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(390, 'Forum', 'Edit', '', '2011-07-13 22:08:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(391, 'Forum', 'Edit', '', '2011-07-13 22:08:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(392, 'Forum', 'Edit', 'Finn', '2011-07-13 22:09:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(393, 'Forum', 'Edit', 'Finn', '2011-07-13 22:09:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(394, 'Forum', 'Edit', 'Finn', '2011-07-13 22:11:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(395, 'Forum', 'Edit', 'Finn', '2011-07-13 22:11:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(396, 'Forum', 'Edit', 'Finn', '2011-07-13 22:12:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(397, 'Forum', 'Edit', 'Finn', '2011-07-13 22:12:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(398, 'Forum', 'Edit', 'Finn', '2011-07-13 22:14:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(399, 'Forum', 'Edit', 'Finn', '2011-07-13 22:17:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 5);
INSERT INTO `mb_logs` VALUES(400, 'Post', 'Delete', '', '2011-07-13 22:24:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(401, 'Post', 'Delete', '', '2011-07-13 22:34:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(402, 'Post', 'Delete', '', '2011-07-13 22:42:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(403, 'Post', 'Edit', '', '2011-07-15 13:42:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(404, 'Post', 'Edit', '', '2011-07-15 13:43:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(405, 'Article', 'Edit', '', '2011-07-15 13:53:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(406, 'Article', 'Edit', '', '2011-07-15 13:53:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(407, 'User', 'Demoted', 'General', '2011-07-15 18:20:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 2);
INSERT INTO `mb_logs` VALUES(408, 'Board', 'Edit', '', '2011-07-15 22:56:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(409, 'Board', 'Edit', '', '2011-07-15 23:00:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(410, 'Board', 'Edit', '', '2011-07-15 23:02:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(411, 'Link', 'Delete', '', '2011-07-15 23:16:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(412, 'Permissions', 'Edit', '', '2011-07-17 22:10:00', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(413, 'Permissions', 'Edit', '', '2011-07-17 22:11:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(414, 'Permissions', 'Edit', '', '2011-07-17 22:12:28', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(415, 'User', 'Edit', '', '2011-07-17 22:33:25', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(416, 'User', 'Edit', '', '2011-07-17 22:35:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(417, 'User', 'Edit', '', '2011-07-17 22:39:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(418, 'User', 'Edit', '', '2011-07-17 22:39:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(419, 'User', 'Edit', '', '2011-07-17 22:39:44', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(420, 'User', 'Edit', '', '2011-07-17 22:54:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(421, 'User', 'Edit', '', '2011-07-17 23:07:20', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(422, 'User', 'Edit', '', '2011-07-17 23:07:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(423, 'User', 'Edit', '', '2011-07-17 23:07:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(424, 'User', 'Edit', '', '2011-07-17 23:08:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(425, 'User', 'Edit', '', '2011-07-17 23:09:25', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(426, 'User', 'Edit', '', '2011-07-17 23:10:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(427, 'User', 'Edit', '', '2011-07-17 23:10:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(428, 'User', 'Edit', '', '2011-07-18 01:23:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(429, 'User', 'Edit', '', '2011-07-18 01:24:02', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(430, 'User', 'Edit', '', '2011-07-18 01:24:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(431, 'Permissions', 'Edit', '', '2011-07-18 16:33:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(432, 'Permissions', 'Edit', '', '2011-07-18 16:47:03', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(433, 'View', '/MB/logs', '', '2011-07-18 23:42:54', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(434, 'View', '/MB/logs', '', '2011-07-18 23:55:46', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(435, 'View', '/MB/logs', '', '2011-07-19 00:00:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(436, 'View', '/MB/forum', '', '2011-07-19 00:00:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(437, 'View', '/MB/', '', '2011-07-19 00:00:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(438, 'View', '/MB/', '', '2011-07-19 00:00:49', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(439, 'View', '/MB/', '', '2011-07-19 00:00:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(440, 'View', '/MB/', '', '2011-07-19 00:01:24', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(441, 'View', '/MB/', '', '2011-07-19 00:01:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(442, 'View', '/MB/', '', '2011-07-19 00:01:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(443, 'View', '/MB/', '', '2011-07-19 00:02:02', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(444, 'View', '/MB/', '', '2011-07-19 00:02:10', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(445, 'View', '/MB/', '', '2011-07-19 00:02:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(446, 'View', '/MB/', '', '2011-07-19 00:02:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(447, 'View', '/MB/', '', '2011-07-19 00:02:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(448, 'View', '/MB/', '', '2011-07-19 00:02:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(449, 'View', '/MB/', '', '2011-07-19 00:03:05', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(450, 'View', '/MB/', '', '2011-07-19 00:03:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(451, 'View', '/MB/', '', '2011-07-19 00:03:41', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(452, 'View', '/MB/', '', '2011-07-19 00:03:44', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(453, 'View', '/MB/', '', '2011-07-19 00:03:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(454, 'View', '/MB/', '', '2011-07-19 00:04:16', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(455, 'View', '/MB/', '', '2011-07-19 00:04:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(456, 'View', '/MB/', '', '2011-07-19 00:04:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(457, 'View', '/MB/', '', '2011-07-19 00:05:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(458, 'View', '/MB/', '', '2011-07-19 00:06:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(459, 'View', '/MB/', '', '2011-07-19 00:07:01', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(460, 'View', '/MB/', '', '2011-07-19 00:07:03', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(461, 'View', '/MB/', '', '2011-07-19 00:07:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(462, 'View', '/MB/', '', '2011-07-19 00:07:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(463, 'View', '/MB/', '', '2011-07-19 00:07:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(464, 'View', '/MB/', '', '2011-07-19 00:07:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(465, 'View', '/MB/', '', '2011-07-19 00:08:19', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(466, 'View', '/MB/', '', '2011-07-19 00:08:19', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(467, 'View', '/MB/', '', '2011-07-19 00:08:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(468, 'View', '/MB/', '', '2011-07-19 00:09:24', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(469, 'View', '/MB/', '', '2011-07-19 00:09:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(470, 'View', '/MB/', '', '2011-07-19 00:09:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(471, 'View', '/MB/logs', '', '2011-07-19 00:09:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(472, 'View', '/MB/logs', '', '2011-07-19 00:09:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(473, 'View', '/MB/', '', '2011-07-19 00:10:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(474, 'View', '/MB/', '', '2011-07-19 00:10:22', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(475, 'View', '/MB/', '', '2011-07-19 00:10:34', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(476, 'View', '/MB/', '', '2011-07-19 00:10:49', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(477, 'View', '/MB/', '', '2011-07-19 00:10:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(478, 'View', '/MB/', '', '2011-07-19 00:10:55', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(479, 'View', '/MB/', '', '2011-07-19 00:11:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(480, 'View', '/MB/', '', '2011-07-19 00:11:55', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(481, 'View', '/MB/', '', '2011-07-19 00:12:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(482, 'View', '/MB/', '', '2011-07-19 00:13:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(483, 'View', '/MB/', '', '2011-07-19 00:13:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(484, 'View', '/MB/', '', '2011-07-19 00:14:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(485, 'View', '/MB/', '', '2011-07-19 00:14:16', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(486, 'View', '/MB/', '', '2011-07-19 00:14:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(487, 'View', '/MB/', '', '2011-07-19 00:14:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(488, 'View', '/MB/', '', '2011-07-19 00:14:38', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(489, 'View', '/MB/', '', '2011-07-19 00:16:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(490, 'View', '/MB/', '', '2011-07-19 00:16:19', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(491, 'View', '/MB/', '', '2011-07-19 00:36:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(492, 'View', '/MB/', '', '2011-07-19 00:36:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(493, 'View', '/MB/logs', '', '2011-07-19 00:36:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(494, 'View', '/MB/logs', '', '2011-07-19 00:36:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(495, 'View', '/MB/', '', '2011-07-19 00:36:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(496, 'View', '/MB/logs', '', '2011-07-19 00:36:52', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(497, 'View', '/MB/', '', '2011-07-19 00:37:01', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(498, 'View', '/MB/', '', '2011-07-19 00:40:24', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(499, 'View', '/MB/', '', '2011-07-19 00:41:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(500, 'View', '/MB/', '', '2011-07-19 00:41:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(501, 'View', '/MB/', '', '2011-07-19 00:42:03', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(502, 'View', '/MB/', '', '2011-07-19 00:45:20', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(503, 'View', '/MB/', '', '2011-07-19 00:45:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(504, 'View', '/MB/', '', '2011-07-19 00:45:28', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(505, 'View', '/MB/', '', '2011-07-19 00:47:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(506, 'View', '/MB/', '', '2011-07-19 00:47:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(507, 'View', '/MB/', '', '2011-07-19 00:47:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(508, 'View', '/MB/', '', '2011-07-19 01:21:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(509, 'View', '/MB/', '', '2011-07-19 01:22:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(510, 'View', '/MB/', '', '2011-07-19 01:22:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(511, 'View', '/MB/', '', '2011-07-19 01:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(512, 'View', '/MB/', '', '2011-07-19 01:25:46', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(513, 'View', '/MB/', '', '2011-07-19 01:25:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(514, 'View', '/MB/', '', '2011-07-19 01:26:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(515, 'View', '/MB/', '', '2011-07-19 01:27:19', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(516, 'View', '/MB/', '', '2011-07-19 01:27:27', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(517, 'View', '/MB/', '', '2011-07-19 01:27:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(518, 'View', '/MB/', '', '2011-07-19 01:32:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(519, 'View', '/MB/', '', '2011-07-19 01:32:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(520, 'View', '/MB/', '', '2011-07-19 01:32:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(521, 'View', '/MB/logs', '', '2011-07-19 01:32:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(522, 'View', '/MB/logs/index/page:5', '', '2011-07-19 01:34:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(523, 'View', '/MB/logs/index/page:5', '', '2011-07-19 01:34:54', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(524, 'View', '/MB/logs/index/page:5', '', '2011-07-19 01:35:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(525, 'View', '/MB/logs/index/page:5', '', '2011-07-19 01:35:10', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(526, 'View', '/MB/logs/index/page:5', '', '2011-07-19 01:35:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(527, 'View', '/MB/logs/index/page:5', '', '2011-07-19 01:35:25', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(528, 'View', '/MB/', '', '2011-07-19 01:41:22', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(529, 'View', '/MB/', '', '2011-07-19 01:41:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(530, 'View', '/MB/', '', '2011-07-19 01:41:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(531, 'View', '/MB/', '', '2011-07-19 01:41:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(532, 'View', '/MB/', '', '2011-07-19 01:42:02', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(533, 'View', '/MB/', '', '2011-07-19 01:42:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(534, 'View', '/MB/', '', '2011-07-19 01:42:16', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(535, 'View', '/MB/', '', '2011-07-19 01:42:41', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(536, 'View', '/MB/', '', '2011-07-19 01:51:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(537, 'View', '/MB/', '', '2011-07-19 01:51:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(538, 'View', '/MB/', '', '2011-07-19 01:52:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(539, 'View', '/MB/', '', '2011-07-19 01:55:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(540, 'View', '/MB/', '', '2011-07-19 01:55:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(541, 'View', '/MB/', '', '2011-07-19 01:56:01', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(542, 'View', '/MB/', '', '2011-07-19 01:56:38', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(543, 'View', '/MB/', '', '2011-07-19 01:56:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(544, 'View', '/MB/', '', '2011-07-19 01:57:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(545, 'View', '/MB/', '', '2011-07-19 01:57:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(546, 'View', '/MB/', '', '2011-07-19 01:57:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(547, 'View', '/MB/', '', '2011-07-19 01:58:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(548, 'View', '/MB/members/index', '', '2011-07-19 01:58:38', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(549, 'View', '/MB/logs', '', '2011-07-19 02:01:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(550, 'View', '/MB/members/logout', '', '2011-07-19 02:04:05', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(551, 'View', '/MB/logs', '', '2011-07-19 02:04:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(552, 'View', '/MB/members/view/1', '', '2011-07-19 02:05:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(553, 'View', '/MB/', '', '2011-07-19 02:47:00', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(554, 'View', '/MB/', '', '2011-07-19 02:51:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(555, 'View', '/MB/members/edit/1', '', '2011-07-19 02:52:00', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(556, 'View', '/MB/members/view/1', '', '2011-07-19 02:52:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(557, 'View', '/MB/members/show/guest', '', '2011-07-19 02:52:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(558, 'View', '/MB/members/add', '', '2011-07-19 02:52:55', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(559, 'View', '/MB/members/index', '', '2011-07-19 02:52:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(560, 'View', '/MB/members/view/1', '', '2011-07-19 02:54:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(561, 'View', '/MB/members/view/1', '', '2011-07-19 02:56:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(562, 'View', '/MB/forum', '', '2011-07-19 02:56:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(563, 'View', '/MB/forum', '', '2011-07-19 02:56:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(564, 'View', '/MB/members/index', '', '2011-07-19 02:56:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(565, 'View', '/MB/members/view/1', '', '2011-07-19 02:56:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(566, 'View', '/MB/', '', '2011-07-19 02:56:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(567, 'View', '/MB/forum', '', '2011-07-19 02:56:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(568, 'View', '/MB/members/index', '', '2011-07-19 02:56:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(569, 'View', '/MB/members/view/1', '', '2011-07-19 02:57:01', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(570, 'View', '/MB/', '', '2011-07-23 20:19:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(571, 'View', '/MB/forum', '', '2011-07-23 20:19:49', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(572, 'User', 'Promoted', 'Commander', '2011-07-23 20:20:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 2);
INSERT INTO `mb_logs` VALUES(573, 'View', '/MB/members/view/2', '', '2011-07-23 20:20:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(574, 'View', '/MB/members/view/css/reset.css', '', '2011-07-23 20:20:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(575, 'View', '/MB/members/view/css/element.styles.2.css', '', '2011-07-23 20:20:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(576, 'View', '/MB/members/view/css/layout.styles.css', '', '2011-07-23 20:20:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(577, 'View', '/MB/members/view/img/layout/mblogo.png', '', '2011-07-23 20:20:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(578, 'View', '/MB/members/view/2', '', '2011-07-23 20:21:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(579, 'View', '/MB/members/view/2', '', '2011-07-23 20:21:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(580, 'View', '/MB/forum', '', '2011-07-23 20:21:22', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(581, 'View', '/MB/', '', '2011-07-23 20:21:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(582, 'View', '/MB/forum', '', '2011-07-23 20:49:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(583, 'View', '/MB/forum', '', '2011-07-23 20:52:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(584, 'View', '/MB/forum', '', '2011-07-23 20:54:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(585, 'View', '/MB/forum', '', '2011-07-23 20:54:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(586, 'View', '/MB/forum', '', '2011-07-23 20:58:19', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(587, 'View', '/MB/', '', '2011-07-23 21:23:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(588, 'View', '/MB/', '', '2011-07-23 22:31:54', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(589, 'View', '/MB/forum', '', '2011-07-23 22:32:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(590, 'View', '/MB/members/view/1', '', '2011-07-23 22:32:22', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(591, 'View', '/MB/members/view/1', '', '2011-07-23 22:32:24', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(592, 'View', '/MB/members/view/1', '', '2011-07-23 22:34:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(593, 'View', '/MB/members/view/img/cake.power.gif', '', '2011-07-23 22:34:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(594, 'View', '/MB/members/view/css/cake.generic.css', '', '2011-07-23 22:34:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(595, 'View', '/MB/members/view/favicon.ico', '', '2011-07-23 22:34:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(596, 'View', '/MB/members/view/1', '', '2011-07-23 22:35:02', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(597, 'View', '/MB/', '', '2011-07-23 22:35:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(598, 'View', '/MB/', '', '2011-07-23 22:36:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(599, 'View', '/MB/forum', '', '2011-07-23 22:36:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(600, 'View', '/MB/members/view/1', '', '2011-07-23 22:36:44', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(601, 'View', '/MB/members/view/1', '', '2011-07-23 22:38:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(602, 'View', '/MB/', '', '2011-07-23 22:38:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(603, 'View', '/MB/forum', '', '2011-07-23 22:38:28', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(604, 'View', '/MB/forum/view/31', '', '2011-07-23 22:38:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(605, 'View', '/MB/members/index', '', '2011-07-23 22:38:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(606, 'View', '/MB/', '', '2011-07-24 20:27:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(607, 'View', '/MB/', '', '2011-07-24 20:27:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(608, 'View', '/MB/', '', '2011-07-24 20:27:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(609, 'View', '/MB/', '', '2011-07-24 20:28:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(610, 'View', '/MB/forum', '', '2011-07-24 20:28:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(611, 'View', '/MB/members/view/1', '', '2011-07-24 20:28:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(612, 'View', '/MB/members/view/1', '', '2011-07-24 20:30:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(613, 'View', '/MB/members/edit/1', '', '2011-07-24 20:30:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(614, 'View', '/MB/forum', '', '2011-07-24 20:31:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(615, 'View', '/MB/forum/view/22', '', '2011-07-24 20:32:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(616, 'View', '/MB/forum/reply/22', '', '2011-07-24 20:32:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(617, 'Forum', 'Edit', 'Finn', '2011-07-24 20:32:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 22);
INSERT INTO `mb_logs` VALUES(618, 'View', '/MB/forum/view/22', '', '2011-07-24 20:32:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(619, 'View', '/MB/forum', '', '2011-07-24 20:32:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(620, 'View', '/MB/members/view/1', '', '2011-07-24 20:32:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(621, 'View', '/MB/members/edit/1', '', '2011-07-24 20:33:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(622, 'User', 'Edit', '', '2011-07-24 20:33:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(623, 'View', '/MB/members/index', '', '2011-07-24 20:33:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(624, 'View', '/MB/members/view/1', '', '2011-07-24 20:33:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(625, 'View', '/MB/members/view/1', '', '2011-07-24 20:33:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(626, 'View', '/MB/forum', '', '2011-07-24 20:35:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(627, 'View', '/MB/forum', '', '2011-07-24 20:37:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(628, 'View', '/MB/members/edit/1', '', '2011-07-24 20:38:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(629, 'View', '/MB/members/edit/1', '', '2011-07-24 20:38:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(630, 'View', '/MB/members/view/1', '', '2011-07-24 20:38:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(631, 'View', '/MB/members/view/1', '', '2011-07-24 20:39:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(632, 'View', '/MB/forum', '', '2011-07-24 20:40:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(633, 'View', '/MB/members/index', '', '2011-07-24 20:40:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(634, 'View', '/MB/', '', '2011-07-24 20:41:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(635, 'View', '/MB/forum', '', '2011-07-24 20:41:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(636, 'View', '/MB/members/index', '', '2011-07-24 20:41:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(637, 'View', '/MB/ranks', '', '2011-07-24 20:41:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(638, 'View', '/MB/articles/view/1', '', '2011-07-24 20:41:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(639, 'View', '/MB/ranks', '', '2011-07-24 20:41:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(640, 'View', '/MB/members/index', '', '2011-07-24 20:41:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(641, 'View', '/MB/forum', '', '2011-07-24 20:42:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(642, 'View', '/MB/forum/view/22', '', '2011-07-24 20:42:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(643, 'View', '/MB/forum', '', '2011-07-24 20:43:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(644, 'View', '/MB/forum', '', '2011-07-24 20:44:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(645, 'View', '/MB/forum', '', '2011-07-24 20:44:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(646, 'View', '/MB/forum', '', '2011-07-24 20:44:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(647, 'View', '/MB/members/index', '', '2011-07-24 20:44:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(648, 'View', '/MB/members/index', '', '2011-07-24 20:46:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(649, 'View', '/MB/groups/index', '', '2011-07-24 20:46:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(650, 'View', '/MB/groups/add', '', '2011-07-24 20:46:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(651, 'Group', 'Add', '', '2011-07-24 20:47:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(652, 'View', '/MB/groups', '', '2011-07-24 20:47:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(653, 'View', '/MB/', '', '2011-07-24 20:47:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(654, 'View', '/MB/members/index', '', '2011-07-24 20:47:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(655, 'View', '/MB/members/view/1', '', '2011-07-24 20:47:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(656, 'View', '/MB/members/edit/1', '', '2011-07-24 20:47:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(657, 'User', 'Edit', '', '2011-07-24 20:47:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(658, 'View', '/MB/members/index', '', '2011-07-24 20:47:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(659, 'View', '/MB/members/index', '', '2011-07-24 20:49:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(660, 'View', '/MB/members/view/2', '', '2011-07-24 20:49:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(661, 'View', '/MB/members/edit/2', '', '2011-07-24 20:49:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(662, 'User', 'Edit', '', '2011-07-24 20:49:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(663, 'View', '/MB/members/index', '', '2011-07-24 20:49:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(664, 'View', '/MB/members/index', '', '2011-07-24 20:54:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(665, 'View', '/MB/forum', '', '2011-07-24 20:54:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(666, 'View', '/MB/', '', '2011-07-24 20:57:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(667, 'View', '/MB/members/index', '', '2011-07-24 20:57:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(668, 'View', '/MB/forum', '', '2011-07-24 20:57:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(669, 'View', '/MB/members/view/1', '', '2011-07-24 20:57:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(670, 'View', '/MB/forum', '', '2011-07-24 21:07:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(671, 'View', '/MB/members/index', '', '2011-07-24 21:07:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(672, 'View', '/MB/articles/view/1', '', '2011-07-24 21:07:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(673, 'View', '/MB/members/view/1', '', '2011-07-24 21:09:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(674, 'View', '/MB/members/view/1', '', '2011-07-24 21:19:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(675, 'View', '/MB/members/view/1', '', '2011-07-24 21:26:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(676, 'View', '/MB/', '', '2011-07-24 23:29:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(677, 'View', '/MB/forum', '', '2011-07-24 23:29:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(678, 'View', '/MB/logs', '', '2011-07-24 23:29:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(679, 'View', '/MB/forum', '', '2011-07-24 23:29:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(680, 'View', '/MB/forum/view/22', '', '2011-07-24 23:29:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(681, 'View', '/MB/forum/info/22', '', '2011-07-24 23:29:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(682, 'View', '/MB/members/index', '', '2011-07-24 23:30:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(683, 'View', '/MB/members/view/1', '', '2011-07-24 23:30:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(684, 'View', '/MB/', '', '2011-07-26 18:22:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(685, 'View', '/MB/forum', '', '2011-07-26 18:22:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(686, 'View', '/MB/members/index', '', '2011-07-26 18:22:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(687, 'View', '/MB/members/view/1', '', '2011-07-26 18:22:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(688, 'View', '/MB/permissions/edit/1', '', '2011-07-26 18:22:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(689, 'View', '/MB/members/index', '', '2011-07-26 18:22:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(690, 'View', '/MB/members/view/2', '', '2011-07-26 18:22:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(691, 'View', '/MB/', '', '2011-07-26 22:17:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(692, 'View', '/MB/forum', '', '2011-07-26 22:17:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(693, 'View', '/MB/members/index', '', '2011-07-26 22:17:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(694, 'View', '/MB/members/show/guest', '', '2011-07-26 22:18:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(695, 'View', '/MB/', '', '2011-07-27 20:33:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(696, 'View', '/MB/members/index', '', '2011-07-27 20:33:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(697, 'View', '/MB/members/stats', '', '2011-07-27 20:33:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(698, 'View', '/MB/members/stats', '', '2011-07-27 20:34:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(699, 'View', '/MB/members/stats/1', '', '2011-07-27 20:34:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(700, 'View', '/MB/members/login', '', '2011-07-27 20:34:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(701, 'View', '/MB/', '', '2011-07-27 20:34:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(702, 'View', '/MB/members/index', '', '2011-07-27 20:34:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(703, 'View', '/MB/members/stats', '', '2011-07-27 20:35:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(704, 'View', '/MB/members/index', '', '2011-07-27 20:35:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(705, 'View', '/MB/members/stats', '', '2011-07-27 20:35:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(706, 'View', '/MB/members/index', '', '2011-07-27 20:36:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(707, 'View', '/MB/members/index', '', '2011-07-27 20:36:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(708, 'View', '/MB/members/index', '', '2011-07-27 20:36:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(709, 'View', '/MB/members/index', '', '2011-07-27 20:36:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(710, 'View', '/MB/members/index', '', '2011-07-27 20:36:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(711, 'View', '/MB/', '', '2011-07-27 20:37:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(712, 'View', '/MB/forum', '', '2011-07-27 20:37:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(713, 'View', '/MB/articles/view/1', '', '2011-07-27 20:37:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(714, 'View', '/MB/articles/view/1', '', '2011-07-27 20:37:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(715, 'View', '/MB/ranks', '', '2011-07-27 20:37:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(716, 'View', '/MB/members/index', '', '2011-07-27 20:37:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(717, 'View', '/MB/members/index', '', '2011-07-27 20:38:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(718, 'View', '/MB/members/index', '', '2011-07-27 20:41:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(719, 'View', '/MB/members/stats/1', '', '2011-07-27 20:41:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(720, 'View', '/MB/members/stats/1', '', '2011-07-27 20:41:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(721, 'View', '/MB/members/stats/1', '', '2011-07-27 20:42:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(722, 'View', '/MB/members/stats/1', '', '2011-07-27 20:44:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(723, 'View', '/MB/members/stats/1', '', '2011-07-27 20:45:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(724, 'View', '/MB/members/stats/1', '', '2011-07-27 21:19:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(725, 'View', '/MB/members/stats/1', '', '2011-07-27 21:19:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(726, 'View', '/MB/members/stats/1', '', '2011-07-27 21:28:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(727, 'View', '/MB/members/stats/1', '', '2011-07-27 21:28:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(728, 'View', '/MB/members/stats/1', '', '2011-07-27 21:28:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(729, 'View', '/MB/members/stats/1', '', '2011-07-27 21:28:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(730, 'View', '/MB/members/stats/1', '', '2011-07-27 21:29:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(731, 'View', '/MB/members/stats/1', '', '2011-07-27 21:29:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(732, 'View', '/MB/members/stats/1', '', '2011-07-27 21:29:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(733, 'View', '/MB/members/stats/1', '', '2011-07-27 21:29:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(734, 'View', '/MB/members/stats/1', '', '2011-07-27 21:30:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(735, 'View', '/MB/members/stats/1', '', '2011-07-27 21:30:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(736, 'View', '/MB/members/index', '', '2011-07-27 22:30:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(737, 'View', '/MB/members/view/2', '', '2011-07-27 22:30:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(738, 'View', '/MB/members/stats/1', '', '2011-07-27 22:34:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(739, 'View', '/MB/members/stats/1', '', '2011-07-27 22:35:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(740, 'View', '/MB/members/stats/2', '', '2011-07-27 22:38:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(741, 'View', '/MB/users/stats/1', '', '2011-07-27 23:10:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(742, 'View', '/MB/users/stats/1', '', '2011-07-27 23:10:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(743, 'View', '/MB/users/stats/1', '', '2011-07-27 23:11:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(744, 'View', '/MB/users/stats/1', '', '2011-07-27 23:11:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(745, 'View', '/MB/users/stats/1', '', '2011-07-27 23:12:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(746, 'View', '/MB/users/stats/1', '', '2011-07-27 23:12:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(747, 'View', '/MB/users/stats/1', '', '2011-07-27 23:12:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(748, 'View', '/MB/users/stats/1', '', '2011-07-27 23:12:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(749, 'View', '/MB/users/stats/1', '', '2011-07-27 23:12:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(750, 'View', '/MB/users/stats/1', '', '2011-07-27 23:12:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(751, 'View', '/MB/users/stats/1', '', '2011-07-27 23:13:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(752, 'View', '/MB/members/view/1', '', '2011-07-27 23:14:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(753, 'View', '/MB/members/view/1', '', '2011-07-27 23:15:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(754, 'View', '/MB/members/edit/1', '', '2011-07-27 23:15:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(755, 'User', 'Edit', '', '2011-07-27 23:15:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(756, 'View', '/MB/members/index', '', '2011-07-27 23:15:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(757, 'View', '/MB/members/view/1', '', '2011-07-27 23:15:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(758, 'View', '/MB/members/stats/1', '', '2011-07-27 23:17:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(759, 'View', '/MB/members/stats/1', '', '2011-07-27 23:18:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(760, 'View', '/MB/members/stats/1', '', '2011-07-27 23:19:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(761, 'View', '/MB/members/stats/1', '', '2011-07-27 23:19:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(762, 'View', '/MB/members/stats/1', '', '2011-07-27 23:19:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(763, 'View', '/MB/members/stats/1', '', '2011-07-27 23:19:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(764, 'View', '/MB/members/stats/1', '', '2011-07-27 23:19:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(765, 'View', '/MB/members/stats/1', '', '2011-07-27 23:20:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(766, 'View', '/MB/members/stats/1', '', '2011-07-27 23:20:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(767, 'View', '/MB/members/stats/1', '', '2011-07-27 23:23:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(768, 'View', '/MB/members/stats/1', '', '2011-07-27 23:23:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(769, 'View', '/MB/members/stats/1', '', '2011-07-27 23:23:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(770, 'View', '/MB/members/stats/1', '', '2011-07-27 23:23:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(771, 'View', '/MB/members/stats/1', '', '2011-07-27 23:24:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(772, 'View', '/MB/members/stats/1', '', '2011-07-27 23:24:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(773, 'View', '/MB/members/stats/1', '', '2011-07-27 23:24:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(774, 'View', '/MB/members/stats/1', '', '2011-07-27 23:24:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(775, 'View', '/MB/members/stats/1', '', '2011-07-27 23:25:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(776, 'View', '/MB/members/stats/1', '', '2011-07-27 23:25:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(777, 'View', '/MB/members/stats/1', '', '2011-07-27 23:25:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(778, 'View', '/MB/members/stats/1', '', '2011-07-27 23:26:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(779, 'View', '/MB/members/stats/1', '', '2011-07-27 23:26:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(780, 'View', '/MB/members/stats/1', '', '2011-07-27 23:27:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(781, 'View', '/MB/members/stats/1', '', '2011-07-27 23:27:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(782, 'View', '/MB/members/stats/1', '', '2011-07-27 23:27:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(783, 'View', '/MB/members/stats/1', '', '2011-07-27 23:27:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(784, 'View', '/MB/members/stats/1', '', '2011-07-27 23:28:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(785, 'View', '/MB/members/stats/1', '', '2011-07-27 23:28:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(786, 'View', '/MB/members/stats/1', '', '2011-07-27 23:28:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(787, 'View', '/MB/members/stats/1', '', '2011-07-27 23:28:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(788, 'View', '/MB/members/stats/1', '', '2011-07-27 23:29:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(789, 'View', '/MB/members/stats/1', '', '2011-07-27 23:33:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(790, 'View', '/MB/members/stats/1', '', '2011-07-27 23:34:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(791, 'View', '/MB/members/stats/1', '', '2011-07-27 23:34:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(792, 'View', '/MB/members/stats/1', '', '2011-07-27 23:34:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(793, 'View', '/MB/members/stats/1', '', '2011-07-27 23:35:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(794, 'View', '/MB/members/stats/1', '', '2011-07-27 23:36:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(795, 'View', '/MB/members/stats/1', '', '2011-07-27 23:36:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(796, 'View', '/MB/members/stats/1', '', '2011-07-27 23:36:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(797, 'View', '/MB/members/stats/1', '', '2011-07-27 23:38:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(798, 'View', '/MB/members/stats/1', '', '2011-07-27 23:38:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(799, 'View', '/MB/members/stats/1', '', '2011-07-27 23:39:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(800, 'View', '/MB/members/stats/1', '', '2011-07-27 23:42:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(801, 'View', '/MB/members/stats/1', '', '2011-07-27 23:42:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(802, 'View', '/MB/members/stats/1', '', '2011-07-27 23:42:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(803, 'View', '/MB/members/stats/1', '', '2011-07-27 23:43:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(804, 'View', '/MB/members/stats/1', '', '2011-07-27 23:43:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(805, 'View', '/MB/members/stats/1', '', '2011-07-27 23:43:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(806, 'View', '/MB/members/stats/1', '', '2011-07-27 23:43:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(807, 'View', '/MB/members/stats/1', '', '2011-07-27 23:43:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(808, 'View', '/MB/members/stats/1', '', '2011-07-27 23:45:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(809, 'View', '/MB/members/index', '', '2011-07-27 23:48:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(810, 'View', '/MB/members/stats/1', '', '2011-07-27 23:55:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(811, 'View', '/MB/members/stats/1', '', '2011-07-27 23:55:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(812, 'View', '/MB/members/add', '', '2011-07-27 23:59:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(813, 'View', '/MB/members/add', '', '2011-07-27 23:59:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(814, 'View', '/MB/members/add', '', '2011-07-28 00:00:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(815, 'View', '/MB/members/add', '', '2011-07-28 00:02:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(816, 'View', '/MB/members/add', '', '2011-07-28 00:02:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(817, 'View', '/MB/members/add', '', '2011-07-28 00:02:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(818, 'View', '/MB/members/add', '', '2011-07-28 00:02:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(819, 'User', 'Add', '', '2011-07-28 00:03:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(820, 'View', '/MB/members/index', '', '2011-07-28 00:03:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(821, 'View', '/MB/members/show/guest', '', '2011-07-28 00:03:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(822, 'View', '/MB/members/view/4', '', '2011-07-28 00:03:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(823, 'View', '/MB/members/edit/4', '', '2011-07-28 00:03:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(824, 'View', '/MB/permissions/edit/4', '', '2011-07-28 00:03:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(825, 'View', '/MB/members/view/1', '', '2011-07-28 00:03:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(826, 'View', '/MB/members/stats/1', '', '2011-07-28 00:04:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(827, 'View', '/MB/members/add', '', '2011-07-28 00:05:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(828, 'View', '/MB/members/add', '', '2011-07-28 00:07:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(829, 'View', '/MB/members/add', '', '2011-07-28 00:07:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(830, 'View', '/MB/members/index', '', '2011-07-28 00:07:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(831, 'View', '/MB/members/view/2', '', '2011-07-28 00:07:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(832, 'View', '/MB/members/edit/2', '', '2011-07-28 00:07:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(833, 'View', '/MB/members/add', '', '2011-07-28 00:08:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(834, 'View', '/MB/ranks', '', '2011-07-28 00:08:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(835, 'View', '/MB/ranks', '', '2011-07-28 00:09:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(836, 'View', '/MB/members/index', '', '2011-07-28 00:09:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(837, 'View', '/MB/members/add', '', '2011-07-28 00:09:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(838, 'View', '/MB/members/add', '', '2011-07-28 00:10:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(839, 'View', '/MB/members/add', '', '2011-07-28 00:22:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(840, 'View', '/MB/members/add', '', '2011-07-28 00:23:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(841, 'View', '/MB/members/add', '', '2011-07-28 00:23:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(842, 'View', '/MB/members/add', '', '2011-07-28 00:24:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(843, 'View', '/MB/members/add', '', '2011-07-28 00:24:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(844, 'View', '/MB/members/add', '', '2011-07-28 00:24:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(845, 'View', '/MB/members/add', '', '2011-07-28 00:24:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(846, 'View', '/MB/members/add', '', '2011-07-28 00:25:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(847, 'View', '/MB/members/add', '', '2011-07-28 00:25:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(848, 'View', '/MB/members/add', '', '2011-07-28 00:30:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(849, 'View', '/MB/members/add', '', '2011-07-28 00:30:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(850, 'View', '/MB/members/add', '', '2011-07-28 00:30:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(851, 'View', '/MB/members/add', '', '2011-07-28 00:40:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(852, 'View', '/MB/members/add', '', '2011-07-28 00:40:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(853, 'View', '/MB/forum', '', '2011-07-28 00:44:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(854, 'View', '/MB/', '', '2011-07-28 00:44:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(855, 'View', '/MB/members/index', '', '2011-07-28 00:58:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(856, 'View', '/MB/members/index', '', '2011-07-28 00:59:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(857, 'View', '/MB/members/view/2', '', '2011-07-28 00:59:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(858, 'View', '/MB/members/edit/2', '', '2011-07-28 00:59:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(859, 'User', 'Edit', '', '2011-07-28 01:00:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(860, 'View', '/MB/members/index', '', '2011-07-28 01:00:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(861, 'View', '/MB/members/index', '', '2011-07-28 01:06:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(862, 'View', '/MB/members/index', '', '2011-07-28 01:18:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(863, 'View', '/MB/forum', '', '2011-07-28 01:18:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(864, 'View', '/MB/forum/view/22', '', '2011-07-28 01:18:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(865, 'View', '/MB/forum/reply/22', '', '2011-07-28 01:18:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(866, 'View', '/MB/forum/reply/22', '', '2011-07-28 01:18:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(867, 'Forum', 'Edit', 'Finn', '2011-07-28 01:19:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 22);
INSERT INTO `mb_logs` VALUES(868, 'View', '/MB/forum/view/22', '', '2011-07-28 01:19:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(869, 'View', '/MB/forum/reply/22', '', '2011-07-28 01:19:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(870, 'Forum', 'Edit', 'Finn', '2011-07-28 01:19:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 22);
INSERT INTO `mb_logs` VALUES(871, 'View', '/MB/forum/view/22', '', '2011-07-28 01:19:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(872, 'View', '/MB/forum/view/22', '', '2011-07-28 01:22:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(873, 'View', '/MB/members/view/1', '', '2011-07-28 01:22:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(874, 'View', '/MB/members/stats/1', '', '2011-07-28 01:22:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(875, 'View', '/MB/', '', '2011-07-28 01:47:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(876, 'View', '/MB/logs', '', '2011-07-28 01:47:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(877, 'View', '/MB/logs/index/page:1/sort:user_agent/direction:asc', '', '2011-07-28 01:48:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(878, 'View', '/MB/forum', '', '2011-07-28 01:48:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(879, 'View', '/MB/members/view/1', '', '2011-07-28 01:48:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(880, 'View', '/MB/', '', '2011-07-28 01:50:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(881, 'View', '/MB/members/index', '', '2011-07-28 01:50:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(882, 'View', '/MB/members/view/1', '', '2011-07-28 01:50:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(883, 'View', '/MB/', '', '2011-07-30 15:06:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(884, 'View', '/MB/forum', '', '2011-07-30 15:06:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(885, 'View', '/MB/forum/view/31', '', '2011-07-30 15:06:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(886, 'View', '/MB/forum/reply/31', '', '2011-07-30 15:06:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(887, 'Forum', 'Edit', 'Finn', '2011-07-30 15:06:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 31);
INSERT INTO `mb_logs` VALUES(888, 'View', '/MB/forum/view/31', '', '2011-07-30 15:06:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(889, 'View', '/MB/', '', '2011-07-30 15:21:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(890, 'View', '/MB/news/add', '', '2011-07-30 15:21:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(891, 'View', '/MaximusBrood/', '', '2011-07-30 15:24:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(892, 'View', '/MaximusBrood/forum', '', '2011-07-30 15:24:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(893, 'View', '/MaximusBrood/forum/view/31', '', '2011-07-30 15:24:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(894, 'View', '/MaximusBrood/forum/reply/31', '', '2011-07-30 15:24:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(895, 'Forum', 'Edit', 'Finn', '2011-07-30 15:24:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 31);
INSERT INTO `mb_logs` VALUES(896, 'View', '/MaximusBrood/forum/view/31', '', '2011-07-30 15:24:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(897, 'View', '/MaximusBrood/', '', '2011-07-30 15:24:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(898, 'View', '/MaximusBrood/news/add', '', '2011-07-30 15:24:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(899, 'Forum', 'Add', '', '2011-07-30 15:24:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 37);
INSERT INTO `mb_logs` VALUES(900, 'View', '/MaximusBrood/forum', '', '2011-07-30 15:24:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(901, 'View', '/MaximusBrood/', '', '2011-07-30 15:24:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(902, 'View', '/MaximusBrood/forum', '', '2011-07-30 15:24:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(903, 'View', '/MaximusBrood/', '', '2011-07-30 15:24:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(904, 'View', '/MaximusBrood/news/add', '', '2011-07-30 15:25:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(905, 'Forum', 'Add', '', '2011-07-30 15:25:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 38);
INSERT INTO `mb_logs` VALUES(906, 'View', '/MaximusBrood/forum', '', '2011-07-30 15:25:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(907, 'View', '/MaximusBrood/forum/add', '', '2011-07-30 15:25:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(908, 'View', '/MaximusBrood/', '', '2011-07-30 15:25:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(909, 'View', '/MaximusBrood/news/add', '', '2011-07-30 15:25:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(910, 'View', '/MaximusBrood/news/add', '', '2011-07-30 15:25:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(911, 'View', '/MaximusBrood/news/add', '', '2011-07-30 15:25:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(912, 'News', 'Add', '', '2011-07-30 15:25:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 39);
INSERT INTO `mb_logs` VALUES(913, 'View', '/MaximusBrood/', '', '2011-07-30 15:25:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(914, 'View', '/MaximusBrood/', '', '2011-07-30 15:32:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(915, 'View', '/MaximusBrood/', '', '2011-07-30 15:50:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(916, 'View', '/MaximusBrood/', '', '2011-07-30 15:50:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(917, 'View', '/MaximusBrood/members/index', '', '2011-07-30 15:51:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(918, 'View', '/MaximusBrood/members/show/guest', '', '2011-07-30 15:51:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(919, 'View', '/MaximusBrood/members/show/guest', '', '2011-07-30 15:56:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(920, 'View', '/MaximusBrood/forum', '', '2011-07-30 15:58:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(921, 'View', '/MaximusBrood/forum/index/page:1/sort:title/direction:asc', '', '2011-07-30 15:58:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(922, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:01:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(923, 'View', '/MaximusBrood/members/show/guest', '', '2011-07-30 16:01:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(924, 'View', '/MaximusBrood/members/show/exmembers:true', '', '2011-07-30 16:01:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(925, 'View', '/MaximusBrood/members/show/rank:guest', '', '2011-07-30 16:02:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(926, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:02:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(927, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:02:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(928, 'View', '/MaximusBrood/forum', '', '2011-07-30 16:02:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(929, 'View', '/MaximusBrood/forum/view/39', '', '2011-07-30 16:02:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(930, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:07:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(931, 'View', '/MaximusBrood/members/add', '', '2011-07-30 16:07:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(932, 'User', 'Add', '', '2011-07-30 16:07:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(933, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:07:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(934, 'View', '/MaximusBrood/members/view/5', '', '2011-07-30 16:07:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(935, 'View', '/MaximusBrood/members/edit/5', '', '2011-07-30 16:07:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(936, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:08:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(937, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:08:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(938, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:08:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(939, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:08:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(940, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:09:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(941, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:09:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(942, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:10:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(943, 'View', '/MaximusBrood/members/show/guest', '', '2011-07-30 16:10:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(944, 'View', '/MaximusBrood/members/show/legend', '', '2011-07-30 16:10:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(945, 'View', '/MaximusBrood/members/view/5', '', '2011-07-30 16:10:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(946, 'View', '/MaximusBrood/members/edit/5', '', '2011-07-30 16:10:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(947, 'View', '/MaximusBrood/members/show/guest', '', '2011-07-30 16:11:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(948, 'View', '/MaximusBrood/members/show/guest', '', '2011-07-30 16:11:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(949, 'View', '/MaximusBrood/members/show/legend', '', '2011-07-30 16:11:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(950, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:11:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(951, 'View', '/MaximusBrood/members/link', '', '2011-07-30 16:11:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(952, 'View', '/MaximusBrood/links/', '', '2011-07-30 16:11:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(953, 'View', '/MaximusBrood/links/add', '', '2011-07-30 16:11:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(954, 'Link', 'Edit', '', '2011-07-30 16:12:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(955, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(956, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:12:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(957, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(958, 'Link', 'Move down', '', '2011-07-30 16:12:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(959, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(960, 'Link', 'Move down', '', '2011-07-30 16:12:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(961, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(962, 'Link', 'Move down', '', '2011-07-30 16:12:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(963, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(964, 'Link', 'Move down', '', '2011-07-30 16:12:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(965, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(966, 'Link', 'Move down', '', '2011-07-30 16:12:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(967, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(968, 'Link', 'Move down', '', '2011-07-30 16:12:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(969, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(970, 'Link', 'Move down', '', '2011-07-30 16:12:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(971, 'View', '/MaximusBrood/links', '', '2011-07-30 16:12:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(972, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:12:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(973, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:13:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(974, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:14:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(975, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:15:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(976, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:16:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(977, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:17:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(978, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:17:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(979, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:17:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(980, 'View', '/MaximusBrood/members/show/Legend', '', '2011-07-30 16:17:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(981, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:17:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(982, 'View', '/MaximusBrood/members/show/Legend', '', '2011-07-30 16:17:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(983, 'View', '/MaximusBrood/ranks', '', '2011-07-30 16:17:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(984, 'View', '/MaximusBrood/ranks', '', '2011-07-30 16:18:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(985, 'View', '/MaximusBrood/ranks', '', '2011-07-30 16:18:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(986, 'View', '/MaximusBrood/ranks', '', '2011-07-30 16:21:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(987, 'View', '/MaximusBrood/ranks', '', '2011-07-30 16:21:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(988, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:21:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(989, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:21:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(990, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:22:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(991, 'View', '/MaximusBrood/members/show/Legend', '', '2011-07-30 16:22:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(992, 'View', '/MaximusBrood/members/show/Legend', '', '2011-07-30 16:22:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(993, 'View', '/MaximusBrood/members/view/5', '', '2011-07-30 16:27:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(994, 'View', '/MaximusBrood/members/index', '', '2011-07-30 16:27:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(995, 'View', '/MaximusBrood/members/exmembers', '', '2011-07-30 16:27:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(996, 'View', '/MaximusBrood/links', '', '2011-07-30 16:32:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(997, 'View', '/MaximusBrood/links/add', '', '2011-07-30 16:32:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(998, 'Link', 'Edit', '', '2011-07-30 16:33:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(999, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1000, 'Link', 'Move down', '', '2011-07-30 16:33:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1001, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1002, 'Link', 'Move down', '', '2011-07-30 16:33:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1003, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1004, 'Link', 'Move down', '', '2011-07-30 16:33:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1005, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1006, 'Link', 'Move down', '', '2011-07-30 16:33:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1007, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1008, 'Link', 'Move down', '', '2011-07-30 16:33:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1009, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1010, 'Link', 'Move down', '', '2011-07-30 16:33:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1011, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1012, 'Link', 'Move down', '', '2011-07-30 16:33:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1013, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1014, 'Link', 'Move down', '', '2011-07-30 16:33:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1015, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1016, 'Link', 'Move down', '', '2011-07-30 16:33:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1017, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1018, 'Link', 'Move down', '', '2011-07-30 16:33:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1019, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1020, 'View', '/MaximusBrood/ranks', '', '2011-07-30 16:33:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1021, 'View', '/MaximusBrood/ranks/exmembers', '', '2011-07-30 16:33:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1022, 'View', '/MaximusBrood/links/edit/23', '', '2011-07-30 16:33:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1023, 'Link', 'Edit', '', '2011-07-30 16:33:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1024, 'View', '/MaximusBrood/links', '', '2011-07-30 16:33:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1025, 'View', '/MaximusBrood/ranks', '', '2011-07-30 16:33:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1026, 'View', '/maximusbrood/', '', '2011-08-01 00:07:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1027, 'View', '/maximusbrood/members/index', '', '2011-08-01 00:07:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1028, 'View', '/maximusbrood/members/add', '', '2011-08-01 00:07:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1029, 'User', 'Add', '', '2011-08-01 00:07:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1030, 'View', '/maximusbrood/members/index', '', '2011-08-01 00:07:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1031, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1032, 'User', 'Promoted', 'Guest', '2011-08-01 00:07:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 6);
INSERT INTO `mb_logs` VALUES(1033, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1034, 'User', 'Promoted', 'Guest', '2011-08-01 00:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 6);
INSERT INTO `mb_logs` VALUES(1035, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1036, 'User', 'Promoted', 'Guest', '2011-08-01 00:07:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 6);
INSERT INTO `mb_logs` VALUES(1037, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1038, 'View', '/maximusbrood/members/promote/6/false', '', '2011-08-01 00:07:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1039, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1040, 'View', '/maximusbrood/members/promote/6/false', '', '2011-08-01 00:07:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1041, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1042, 'View', '/maximusbrood/members/promote/6/false', '', '2011-08-01 00:07:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1043, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1044, 'User', 'Promoted', 'Guest', '2011-08-01 00:07:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 6);
INSERT INTO `mb_logs` VALUES(1045, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1046, 'User', 'Promoted', 'Guest', '2011-08-01 00:07:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 6);
INSERT INTO `mb_logs` VALUES(1047, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1048, 'View', '/maximusbrood/members/promote/6/false', '', '2011-08-01 00:07:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1049, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:07:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1050, 'View', '/maximusbrood/ranks', '', '2011-08-01 00:08:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1051, 'View', '/maximusbrood/members/index', '', '2011-08-01 00:08:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1052, 'View', '/maximusbrood/members/index', '', '2011-08-01 00:08:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1053, 'View', '/maximusbrood/members/show/guest', '', '2011-08-01 00:08:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1054, 'View', '/maximusbrood/members/view/6', '', '2011-08-01 00:08:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1055, 'View', '/maximusbrood/members/edit/6', '', '2011-08-01 00:08:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1056, 'View', '/maximusbrood/permissions/edit/6', '', '2011-08-01 00:08:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1057, 'Permissions', 'Edit', '', '2011-08-01 00:09:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1058, 'View', '/maximusbrood/members/view', '', '2011-08-01 00:09:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1059, 'View', '/maximusbrood/members/edit/1', '', '2011-08-01 00:09:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1060, 'View', '/maximusbrood/', '', '2011-08-01 22:57:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1061, 'View', '/maximusbrood/articles/view/1', '', '2011-08-01 22:58:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1062, 'View', '/maximusbrood/links', '', '2011-08-01 22:58:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1063, 'View', '/maximusbrood/links/add', '', '2011-08-01 22:58:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1064, 'Link', 'Edit', '', '2011-08-01 22:59:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1065, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1066, 'Link', 'Move down', '', '2011-08-01 22:59:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1067, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1068, 'Link', 'Move down', '', '2011-08-01 22:59:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1069, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1070, 'Link', 'Move down', '', '2011-08-01 22:59:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1071, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1072, 'Link', 'Move down', '', '2011-08-01 22:59:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1073, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1074, 'Link', 'Move down', '', '2011-08-01 22:59:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1075, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1076, 'Link', 'Move down', '', '2011-08-01 22:59:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1077, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1078, 'Link', 'Move down', '', '2011-08-01 22:59:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1079, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1080, 'Link', 'Move down', '', '2011-08-01 22:59:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1081, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1082, 'Link', 'Move down', '', '2011-08-01 22:59:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1083, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1084, 'Link', 'Move down', '', '2011-08-01 22:59:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1085, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1086, 'Link', 'Move down', '', '2011-08-01 22:59:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1087, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1088, 'Link', 'Move down', '', '2011-08-01 22:59:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1089, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1090, 'Link', 'Move down', '', '2011-08-01 22:59:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1091, 'View', '/maximusbrood/links', '', '2011-08-01 22:59:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1092, 'View', '/maximusbrood/articles/pages', '', '2011-08-01 22:59:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1093, 'View', '/maximusbrood/articles/add', '', '2011-08-01 22:59:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1094, 'View', '/maximusbrood/links/edit/24', '', '2011-08-01 23:00:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1095, 'Link', 'Edit', '', '2011-08-01 23:00:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1096, 'View', '/maximusbrood/links', '', '2011-08-01 23:00:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1097, 'View', '/maximusbrood/links/edit/24', '', '2011-08-01 23:00:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1098, 'Link', 'Edit', '', '2011-08-01 23:00:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1099, 'View', '/maximusbrood/links', '', '2011-08-01 23:00:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1100, 'View', '/maximusbrood/links', '', '2011-08-01 23:01:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1101, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:02:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1102, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:02:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1103, 'View', '/maximusbrood/categories/view/2', '', '2011-08-01 23:02:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1104, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:03:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1105, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:03:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1106, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:04:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1107, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:04:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1108, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:04:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1109, 'View', '/maximusbrood/categories/view/2', '', '2011-08-01 23:04:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1110, 'View', '/maximusbrood/articles/summary', '', '2011-08-01 23:04:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1111, 'View', '/maximusbrood/articles/view/1', '', '2011-08-01 23:04:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1112, 'View', '/maximusbrood/articles/view/7', '', '2011-08-01 23:04:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1113, 'View', '/maximusbrood/articles/view/1', '', '2011-08-01 23:07:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1114, 'View', '/maximusbrood/members/index', '', '2011-08-01 23:07:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1115, 'View', '/maximusbrood/members/view/2', '', '2011-08-01 23:07:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1116, 'View', '/maximusbrood/members/exmembers', '', '2011-08-01 23:07:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1117, 'View', '/maximusbrood/members/show/Legend', '', '2011-08-01 23:07:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1118, 'View', '/maximusbrood/members/view/5', '', '2011-08-01 23:07:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1119, 'View', '/maximusbrood/members/view/5', '', '2011-08-01 23:08:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1120, 'View', '/maximusbrood/members/index', '', '2011-08-01 23:08:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1121, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1122, 'View', '/maximusbrood/members/promote/1', '', '2011-08-01 23:08:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1123, 'User', 'Promoted', 'Guest', '2011-08-01 23:08:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1124, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1125, 'View', '/maximusbrood/members/promote/1/false', '', '2011-08-01 23:08:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1126, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1127, 'View', '/maximusbrood/members/promote/1/false', '', '2011-08-01 23:08:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1128, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1129, 'User', 'Promoted', 'Guest', '2011-08-01 23:08:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1130, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1131, 'User', 'Promoted', 'Guest', '2011-08-01 23:08:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1132, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1133, 'User', 'Promoted', 'Guest', '2011-08-01 23:08:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1134, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1135, 'User', 'Promoted', 'Guest', '2011-08-01 23:08:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1136, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:08:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1137, 'User', 'Promoted', 'Guest', '2011-08-01 23:11:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1138, 'View', '/maximusbrood/members/promote/1/false', '', '2011-08-01 23:13:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1139, 'View', '/maximusbrood/members/promote/1/false', '', '2011-08-01 23:14:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1140, 'View', '/maximusbrood/members/promote/1/false', '', '2011-08-01 23:14:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1141, 'User', 'Promoted', 'Trialist', '2011-08-01 23:14:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1142, 'User', 'Promoted', 'Private', '2011-08-01 23:14:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1143, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:14:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1144, 'User', 'Promoted', 'Corporal', '2011-08-01 23:14:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1145, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:14:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1146, 'User', 'Promoted', 'Colonel', '2011-08-01 23:14:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1147, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:14:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1148, 'User', 'Demoted', 'Corporal', '2011-08-01 23:14:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 1);
INSERT INTO `mb_logs` VALUES(1149, 'View', '/maximusbrood/members/view/1', '', '2011-08-01 23:14:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', 1, 0);
INSERT INTO `mb_logs` VALUES(1150, 'View', '/MB/', '', '2011-08-02 19:33:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1151, 'View', '/MB/members/index', '', '2011-08-02 19:33:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1152, 'View', '/MB/members/exmembers', '', '2011-08-02 19:33:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1153, 'View', '/MB/members/show/Legend', '', '2011-08-02 19:33:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1154, 'View', '/MB/members/view/5', '', '2011-08-02 19:33:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1155, 'View', '/MB/users/1', '', '2011-08-02 19:33:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1156, 'View', '/MB/members/index', '', '2011-08-02 19:33:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1157, 'View', '/MB/members/view/6', '', '2011-08-02 19:33:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1158, 'User', 'Promoted', 'Trialist', '2011-08-02 19:33:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 6);
INSERT INTO `mb_logs` VALUES(1159, 'View', '/MB/members/view/6', '', '2011-08-02 19:33:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1160, 'User', 'Promoted', 'Private', '2011-08-02 19:33:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 6);
INSERT INTO `mb_logs` VALUES(1161, 'View', '/MB/members/view/6', '', '2011-08-02 19:33:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1162, 'User', 'Promoted', 'Corporal', '2011-08-02 19:33:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 6);
INSERT INTO `mb_logs` VALUES(1163, 'View', '/MB/members/view/6', '', '2011-08-02 19:33:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1164, 'View', '/MB/members/index', '', '2011-08-02 19:33:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1165, 'View', '/MB/members/view/6', '', '2011-08-02 19:33:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1166, 'View', '/MB/forum', '', '2011-08-02 19:34:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1167, 'View', '/MB/', '', '2011-08-02 19:48:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1168, 'View', '/MB/forum', '', '2011-08-02 19:48:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1169, 'View', '/MB/members/index', '', '2011-08-02 19:48:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1170, 'View', '/MB/members/exmembers', '', '2011-08-02 19:48:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1171, 'View', '/MB/members/index', '', '2011-08-02 19:49:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1172, 'View', '/MB/members/view/6', '', '2011-08-02 19:49:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1173, 'View', '/MB/permissions/edit/6', '', '2011-08-02 19:49:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1174, 'View', '/MB/articles/summary', '', '2011-08-02 19:49:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1175, 'View', '/MB/permissions/edit/6', '', '2011-08-02 19:50:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1176, 'View', '/MB/members/view/6', '', '2011-08-02 19:50:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1177, 'View', '/MB/members/stats/6', '', '2011-08-02 19:50:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1178, 'View', '/MB/forum', '', '2011-08-02 19:50:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1179, 'View', '/MB/members/index', '', '2011-08-02 19:50:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1180, 'View', '/MB/ranks', '', '2011-08-02 19:50:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1181, 'View', '/MB/ranks/exmembers', '', '2011-08-02 19:50:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1182, 'View', '/MB/', '', '2011-08-03 16:37:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1183, 'View', '/MB/articles/summary', '', '2011-08-03 16:37:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1184, 'View', '/MB/forum', '', '2011-08-03 16:37:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1185, 'View', '/MB/members/index', '', '2011-08-03 16:37:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1186, 'View', '/MB/members/view/6', '', '2011-08-03 16:37:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1187, 'View', '/MB/forum', '', '2011-08-03 16:38:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1188, 'View', '/MB/forum/view/39', '', '2011-08-03 16:38:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1189, 'View', '/MB/forum', '', '2011-08-03 16:38:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1190, 'View', '/MB/', '', '2011-08-03 16:38:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1191, 'View', '/MB/articles/view/1', '', '2011-08-03 16:38:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1192, 'View', '/MB/ranks', '', '2011-08-03 16:38:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1193, 'View', '/MB/members/index', '', '2011-08-03 16:38:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1194, 'View', '/MB/', '', '2011-08-03 17:03:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1195, 'View', '/MB/members/index', '', '2011-08-03 17:03:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1196, 'View', '/MB/members/exmembers', '', '2011-08-03 17:04:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1197, 'View', '/MB/', '', '2011-08-04 21:19:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1198, 'View', '/MB/forum', '', '2011-08-04 21:19:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1199, 'View', '/MB/members/index', '', '2011-08-04 21:19:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1200, 'View', '/MB/members/add', '', '2011-08-04 21:19:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1201, 'User', 'Add', '', '2011-08-04 21:20:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1202, 'View', '/MB/members/index', '', '2011-08-04 21:20:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1203, 'View', '/MB/members/view/7', '', '2011-08-04 21:20:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1204, 'View', '/MB/forum', '', '2011-08-04 21:23:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1205, 'View', '/MB/', '', '2011-08-04 21:32:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1206, 'View', '/MB/members/view/6', '', '2011-08-04 21:34:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1207, 'View', '/MB/members/view/6', '', '2011-08-04 21:35:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1208, 'View', '/MB/members/view/6', '', '2011-08-04 21:39:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1209, 'View', '/MB/members/view/6', '', '2011-08-04 21:41:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1210, 'View', '/MB/members/view/6', '', '2011-08-04 21:42:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1211, 'View', '/MB/members/view/6', '', '2011-08-04 22:01:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1212, 'View', '/MB/members/view/6', '', '2011-08-04 22:01:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1213, 'View', '/MB/members/view/6', '', '2011-08-04 22:02:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1214, 'View', '/MB/members/view/6', '', '2011-08-04 22:02:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1215, 'View', '/MB/members/view/6', '', '2011-08-04 22:02:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1216, 'View', '/MB/members/view/6', '', '2011-08-04 22:03:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1217, 'View', '/MB/members/view/6', '', '2011-08-04 22:05:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1218, 'View', '/MB/members/view/6', '', '2011-08-04 22:06:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1219, 'View', '/MB/members/view/6', '', '2011-08-04 22:07:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1220, 'View', '/MB/members/view/6', '', '2011-08-04 22:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1221, 'View', '/MB/members/view/6', '', '2011-08-04 22:08:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1222, 'View', '/MB/members/view/6', '', '2011-08-04 22:09:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1223, 'View', '/MB/members/view/6', '', '2011-08-04 22:09:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1224, 'View', '/MB/members/view/6', '', '2011-08-04 22:09:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1225, 'View', '/MB/members/view/6', '', '2011-08-04 22:10:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1226, 'View', '/MB/members/view/6', '', '2011-08-04 22:10:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1227, 'View', '/MB/members/view/6', '', '2011-08-04 22:10:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1228, 'View', '/MB/members/view/6', '', '2011-08-04 22:11:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1229, 'View', '/MB/members/view/6', '', '2011-08-04 22:12:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1230, 'View', '/MB/members/view/6', '', '2011-08-04 22:12:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1231, 'View', '/MB/members/view/6', '', '2011-08-04 22:12:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1232, 'View', '/MB/members/view/6', '', '2011-08-04 22:12:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1233, 'View', '/MB/members/view/6', '', '2011-08-04 22:13:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1234, 'View', '/MB/members/view/6', '', '2011-08-04 22:13:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1235, 'View', '/MB/members/view/6', '', '2011-08-04 22:19:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1236, 'View', '/MB/members/view/6', '', '2011-08-04 22:19:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1237, 'View', '/MB/forum', '', '2011-08-04 22:21:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1238, 'View', '/MB/forum', '', '2011-08-04 22:21:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1239, 'View', '/MB/forum/view/39', '', '2011-08-04 22:21:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1240, 'View', '/MB/forum/view/39', '', '2011-08-04 22:22:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1241, 'View', '/MB/forum', '', '2011-08-04 22:22:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1242, 'View', '/MB/forum/view/22', '', '2011-08-04 22:22:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1243, 'View', '/MB/forum', '', '2011-08-04 22:22:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1244, 'View', '/MB/forum', '', '2011-08-04 22:23:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1245, 'View', '/MB/forum/add', '', '2011-08-04 22:23:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1246, 'Forum', 'Add', '', '2011-08-04 22:23:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1247, 'View', '/MB/forum', '', '2011-08-04 22:23:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1248, 'View', '/MB/forum/view/40', '', '2011-08-04 22:23:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1249, 'View', '/MB/forum/view/40', '', '2011-08-04 22:24:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1250, 'View', '/MB/forum/reply/40', '', '2011-08-04 22:24:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1251, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-04 22:25:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1252, 'View', '/MB/forum/view/40', '', '2011-08-04 22:25:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1253, 'View', '/MB/forum/edit/40', '', '2011-08-04 22:25:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1254, 'Post', 'Edit', '', '2011-08-04 22:25:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1255, 'View', '/MB/forum/view/40', '', '2011-08-04 22:25:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1256, 'View', '/MB/forum/view/40', '', '2011-08-04 22:25:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1257, 'View', '/MB/forum/view/40', '', '2011-08-04 22:26:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1258, 'View', '/MB/forum', '', '2011-08-04 22:26:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1259, 'View', '/MB/forum/view/40', '', '2011-08-04 22:26:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1260, 'View', '/MB/forum/reply/40', '', '2011-08-04 22:26:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1261, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-04 22:28:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1262, 'View', '/MB/forum/view/40', '', '2011-08-04 22:28:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1263, 'View', '/MB/forum/view/<a href=', '', '2011-08-04 22:28:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1264, 'View', '/MB/forum/edit/42', '', '2011-08-04 22:28:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1265, 'View', '/MB/forum/view/40', '', '2011-08-04 22:29:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1266, 'View', '/MB/forum/view/40', '', '2011-08-04 22:29:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1267, 'View', '/MB/forum/view/<a href=', '', '2011-08-04 22:29:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1268, 'View', '/MB/forum/view/40', '', '2011-08-04 22:30:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1269, 'View', '/MB/forum/view/<a href=', '', '2011-08-04 22:30:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1270, 'View', '/MB/forum/view/40', '', '2011-08-04 22:30:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1271, 'View', '/MB/forum', '', '2011-08-04 22:31:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1272, 'View', '/MB/forum/view/40', '', '2011-08-04 22:31:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1273, 'View', '/MB/forum/reply/40', '', '2011-08-04 22:31:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1274, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-04 22:31:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1275, 'View', '/MB/forum/view/40', '', '2011-08-04 22:31:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1276, 'View', '/MB/forum/view/40', '', '2011-08-04 22:33:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1277, 'View', '/MB/members/view/6', '', '2011-08-04 22:34:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1278, 'View', '/MB/members/view/6', '', '2011-08-04 22:34:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1279, 'View', '/MB/forum', '', '2011-08-04 22:35:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1280, 'View', '/MB/forum/view/40', '', '2011-08-04 22:35:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1281, 'View', '/MB/forum/reply/40', '', '2011-08-04 22:45:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1282, 'View', '/MB/members/index', '', '2011-08-04 22:45:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1283, 'View', '/MB/forum', '', '2011-08-04 22:45:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1284, 'View', '/MB/forum/view/40', '', '2011-08-04 22:45:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1285, 'View', '/MB/forum/reply/40', '', '2011-08-04 22:45:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1286, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-04 22:45:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1287, 'View', '/MB/forum/view/40', '', '2011-08-04 22:45:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1288, 'View', '/MB/forum/view/40', '', '2011-08-04 22:49:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1289, 'View', '/MB/forum/view/40', '', '2011-08-04 22:50:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1290, 'View', '/MB/forum/view/40', '', '2011-08-04 22:52:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1291, 'View', '/MB/forum/view/40', '', '2011-08-04 22:55:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1292, 'View', '/MB/forum/view/40', '', '2011-08-04 22:58:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1293, 'View', '/MB/forum/view/40', '', '2011-08-04 22:58:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1294, 'View', '/MB/forum/view/40', '', '2011-08-04 22:58:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1295, 'View', '/MB/forum/view/40', '', '2011-08-04 22:59:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1296, 'View', '/MB/forum/view/40', '', '2011-08-04 22:59:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1297, 'View', '/MB/forum/view/40', '', '2011-08-04 22:59:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1298, 'View', '/MB/forum/view/40', '', '2011-08-04 23:00:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1299, 'View', '/MB/forum/view/40', '', '2011-08-04 23:02:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1300, 'View', '/MB/forum/view/40', '', '2011-08-04 23:02:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1301, 'View', '/MB/forum/view/40', '', '2011-08-04 23:02:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1302, 'View', '/MB/forum/edit/44', '', '2011-08-04 23:03:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1303, 'View', '/MB/forum/edit/44', '', '2011-08-04 23:03:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1304, 'View', '/MB/forum', '', '2011-08-04 23:03:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1305, 'View', '/MB/forum/view/40', '', '2011-08-04 23:03:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1306, 'View', '/MB/forum/reply/40', '', '2011-08-04 23:03:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1307, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-04 23:04:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1308, 'View', '/MB/forum/view/40', '', '2011-08-04 23:04:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1309, 'View', '/MB/forum/view/40', '', '2011-08-04 23:05:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1310, 'View', '/MB/forum/reply/40', '', '2011-08-04 23:05:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1311, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-04 23:06:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1312, 'View', '/MB/forum/view/40', '', '2011-08-04 23:06:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1313, 'View', '/MB/forum', '', '2011-08-04 23:07:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1314, 'View', '/MB/forum/view/40', '', '2011-08-04 23:07:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1315, 'View', '/MB/forum/edit/41', '', '2011-08-04 23:07:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1316, 'Post', 'Edit', '', '2011-08-04 23:08:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1317, 'View', '/MB/forum/view/40', '', '2011-08-04 23:08:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1318, 'View', '/MB/forum', '', '2011-08-04 23:10:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1319, 'View', '/MB/', '', '2011-08-09 01:01:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1320, 'View', '/MB/forum', '', '2011-08-09 01:02:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1321, 'View', '/MB/forum/view/40', '', '2011-08-09 01:02:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1322, 'View', '/MB/', '', '2011-08-09 15:44:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1323, 'View', '/MB/forum', '', '2011-08-09 15:44:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1324, 'View', '/MB/forum', '', '2011-08-09 15:44:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1325, 'View', '/MB/forum/view/40', '', '2011-08-09 15:47:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1326, 'View', '/MB/forum/edit/46', '', '2011-08-09 15:50:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1327, 'View', '/MB/forum', '', '2011-08-09 16:00:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1328, 'View', '/MB/ranks', '', '2011-08-09 16:00:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1329, 'View', '/MB/forum', '', '2011-08-09 16:00:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1330, 'View', '/MB/forum/view/40', '', '2011-08-09 16:00:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1331, 'View', '/MB/forum/view/40', '', '2011-08-09 16:06:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1332, 'View', '/MB/forum/view/40', '', '2011-08-09 16:06:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1333, 'View', '/MB/forum/reply/40', '', '2011-08-09 16:06:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1334, 'View', '/MB/forum/reply/40', '', '2011-08-09 16:06:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1335, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-09 16:07:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1336, 'View', '/MB/forum/view/40', '', '2011-08-09 16:07:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1337, 'View', '/MB/forum/edit/47', '', '2011-08-09 16:07:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1338, 'View', '/MB/forum/edit/47', '', '2011-08-09 16:07:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1339, 'Post', 'Edit', '', '2011-08-09 16:07:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1340, 'View', '/MB/forum/view/40', '', '2011-08-09 16:07:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1341, 'View', '/MB/forum/view/40', '', '2011-08-09 16:16:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1342, 'View', '/MB/forum/view/40', '', '2011-08-09 16:17:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1343, 'View', '/MB/forum/reply/40', '', '2011-08-09 16:17:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1344, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-09 16:18:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1345, 'View', '/MB/forum/view/40', '', '2011-08-09 16:18:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1346, 'View', '/MB/forum/view/40', '', '2011-08-09 16:19:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1347, 'View', '/MB/forum', '', '2011-08-09 16:24:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1348, 'View', '/MB/forum/view/40', '', '2011-08-09 16:24:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1349, 'View', '/MB/forum/reply/40', '', '2011-08-09 16:27:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1350, 'View', '/MB/forum', '', '2011-08-09 16:38:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1351, 'View', '/MB/forum/view/40', '', '2011-08-09 16:38:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1352, 'View', '/MB/forum/view/40', '', '2011-08-09 16:40:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1353, 'View', '/MB/forum/view/40', '', '2011-08-09 16:41:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1354, 'View', '/MB/forum/view/40', '', '2011-08-09 16:43:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1355, 'View', '/MB/forum/view/40', '', '2011-08-09 16:47:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1356, 'View', '/MB/forum/view/40', '', '2011-08-09 16:48:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1357, 'View', '/MB/forum/view/40', '', '2011-08-09 16:49:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1358, 'View', '/MB/forum/view/40', '', '2011-08-09 16:49:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1359, 'View', '/MB/forum/view/40', '', '2011-08-09 17:03:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1360, 'View', '/MB/forum/view/40', '', '2011-08-09 17:07:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1361, 'View', '/MB/forum/view/40', '', '2011-08-09 17:08:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1362, 'View', '/MB/forum/view/40', '', '2011-08-09 17:08:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1363, 'View', '/MB/forum', '', '2011-08-09 17:09:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1364, 'View', '/MB/forum', '', '2011-08-09 17:10:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1365, 'View', '/MB/forum/view/40', '', '2011-08-09 17:10:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1366, 'View', '/MB/forum/view/40', '', '2011-08-09 17:12:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1367, 'View', '/MB/forum/view/40', '', '2011-08-09 17:13:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1368, 'View', '/MB/forum/reply/40', '', '2011-08-09 17:13:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1369, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-09 17:13:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1370, 'View', '/MB/forum/view/40', '', '2011-08-09 17:13:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1371, 'View', '/MB/forum/view/40', '', '2011-08-09 17:14:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1372, 'View', '/MB/forum/view/40', '', '2011-08-09 17:18:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1373, 'View', '/MB/members/index', '', '2011-08-09 17:26:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1374, 'View', '/MB/forum', '', '2011-08-09 17:27:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1375, 'View', '/MB/forum/index/page:1/sort:title/direction:asc', '', '2011-08-09 17:27:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1376, 'View', '/MB/forum/view/40', '', '2011-08-09 17:27:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1377, 'View', '/MB/forum/edit/49', '', '2011-08-09 17:27:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1378, 'Post', 'Edit', '', '2011-08-09 17:27:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1379, 'View', '/MB/forum/view/40', '', '2011-08-09 17:27:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1380, 'View', '/MB/forum/view/40', '', '2011-08-09 17:28:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1381, 'View', '/MB/forum/view/40', '', '2011-08-09 17:35:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1382, 'View', '/MB/forum/view/40', '', '2011-08-09 17:36:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1383, 'View', '/MB/forum', '', '2011-08-09 19:56:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1384, 'View', '/MB/forum/view/40', '', '2011-08-09 19:56:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1385, 'View', '/MB/forum/view/40', '', '2011-08-09 20:05:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1386, 'View', '/MB/forum/view/40', '', '2011-08-09 20:05:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1387, 'View', '/MB/forum/index/page:1/sort:title/direction:asc', '', '2011-08-09 20:07:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1388, 'View', '/MB/members/index', '', '2011-08-09 20:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1389, 'View', '/MB/forum/view/40', '', '2011-08-09 20:09:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1390, 'View', '/MB/forum/view/40', '', '2011-08-09 20:14:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1391, 'View', '/MB/forum', '', '2011-08-09 20:24:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1392, 'View', '/MB/forum/view/40', '', '2011-08-09 20:24:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1393, 'View', '/MB/forum/view/40', '', '2011-08-09 20:26:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1394, 'View', '/MB/', '', '2011-08-09 20:30:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1395, 'View', '/MB/forum', '', '2011-08-09 20:31:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1396, 'View', '/MB/forum/view/40', '', '2011-08-09 20:31:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1397, 'View', '/MB/forum/view/40', '', '2011-08-09 20:31:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1398, 'View', '/MB/', '', '2011-08-09 20:37:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1399, 'View', '/MB/forum', '', '2011-08-09 20:37:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1400, 'View', '/MB/forum/view/40', '', '2011-08-09 20:37:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1401, 'View', '/MB/forum/reply/40', '', '2011-08-09 20:38:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1402, 'View', '/MB/forum', '', '2011-08-09 20:40:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1403, 'View', '/MB/forum/view/40', '', '2011-08-09 20:40:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1404, 'View', '/MB/forum/reply/40', '', '2011-08-09 20:40:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1405, 'View', '/MB/forum', '', '2011-08-09 20:46:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1406, 'View', '/MB/forum/view/39', '', '2011-08-09 20:46:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1407, 'View', '/MB/forum/reply/39', '', '2011-08-09 20:46:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1408, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-09 20:46:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1409, 'View', '/MB/forum/view/39', '', '2011-08-09 20:46:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1410, 'View', '/MB/forum', '', '2011-08-09 20:46:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1411, 'View', '/MB/forum/view/40', '', '2011-08-09 20:46:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1412, 'View', '/MB/forum/reply/40', '', '2011-08-09 20:46:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1413, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-09 20:46:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1414, 'View', '/MB/forum/view/40', '', '2011-08-09 20:46:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1415, 'View', '/MB/forum/reply/40', '', '2011-08-09 20:46:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1416, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-09 20:46:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1417, 'View', '/MB/forum/view/40', '', '2011-08-09 20:46:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1418, 'View', '/MB/forum/reply/40', '', '2011-08-09 20:47:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1419, 'View', '/MB/members/index', '', '2011-08-09 20:48:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1420, 'View', '/MB/forum', '', '2011-08-09 20:48:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1421, 'View', '/MB/forum/view/40/page:2', '', '2011-08-09 20:48:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1422, 'View', '/MB/forum', '', '2011-08-09 20:48:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1423, 'View', '/MB/forum/view/40/page:2', '', '2011-08-09 20:55:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1424, 'View', '/MB/forum/view/40/page:1', '', '2011-08-09 20:59:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1425, 'View', '/MB/forum/view/40/page:1', '', '2011-08-09 21:00:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1426, 'View', '/MB/', '', '2011-08-09 22:00:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1427, 'View', '/MB/forum', '', '2011-08-09 22:00:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1428, 'View', '/MB/forum/view/40', '', '2011-08-09 22:00:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1429, 'View', '/MB/forum/view/40', '', '2011-08-09 22:22:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1430, 'View', '/MB/forum/view/31', '', '2011-08-09 22:23:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1431, 'View', '/MB/forum/view/31', '', '2011-08-09 22:23:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1432, 'View', '/MB/', '', '2011-08-09 23:07:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1433, 'View', '/MB/forum', '', '2011-08-09 23:07:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1434, 'View', '/MB/forum/view/40', '', '2011-08-09 23:07:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1435, 'View', '/MB/forum/view/40', '', '2011-08-09 23:10:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1436, 'View', '/MB/forum/view/40', '', '2011-08-09 23:27:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1437, 'View', '/MB/forum/view/40', '', '2011-08-09 23:29:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1438, 'View', '/MB/forum/view/40', '', '2011-08-09 23:29:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1439, 'View', '/MB/forum/view/40', '', '2011-08-09 23:37:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1440, 'View', '/MB/forum/view/40', '', '2011-08-09 23:37:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1441, 'View', '/MB/forum/view/40', '', '2011-08-09 23:48:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1442, 'View', '/MB/forum/view/40', '', '2011-08-09 23:49:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1443, 'View', '/MB/forum/view/40', '', '2011-08-10 00:10:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1444, 'View', '/MB/forum/view/40', '', '2011-08-10 00:10:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1445, 'View', '/MB/forum/view/40', '', '2011-08-10 00:10:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1446, 'View', '/MB/forum', '', '2011-08-10 00:16:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1447, 'View', '/MB/forum/view/40', '', '2011-08-10 00:16:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1448, 'View', '/MB/forum/view/40', '', '2011-08-10 00:18:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1449, 'View', '/MB/forum/view/40', '', '2011-08-10 00:18:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1450, 'View', '/MB/forum/view/40', '', '2011-08-10 00:19:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1451, 'View', '/MB/forum/view/40', '', '2011-08-10 00:19:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1452, 'View', '/MB/forum/view/40', '', '2011-08-10 00:20:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1453, 'View', '/MB/forum/view/40', '', '2011-08-10 00:20:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1454, 'View', '/MB/forum/view/40', '', '2011-08-10 00:21:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1455, 'View', '/MB/forum/view/40', '', '2011-08-10 00:22:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1456, 'View', '/MB/forum/view/40', '', '2011-08-10 00:22:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1457, 'View', '/MB/forum/view/40', '', '2011-08-10 00:23:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1458, 'View', '/MB/forum/view/40', '', '2011-08-10 00:23:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1459, 'View', '/MB/forum/view/40', '', '2011-08-10 00:24:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1460, 'View', '/MB/forum/view/40', '', '2011-08-10 00:25:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1461, 'View', '/MB/forum/view/40', '', '2011-08-10 00:26:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1462, 'View', '/MB/forum/view/40', '', '2011-08-10 00:27:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1463, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:27:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1464, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:30:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1465, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:30:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1466, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:31:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1467, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 00:31:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1468, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 00:32:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1469, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 00:32:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1470, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 00:35:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1471, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 00:35:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1472, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 00:35:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1473, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:38:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1474, 'View', '/MB/', '', '2011-08-10 00:43:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1475, 'View', '/MB/forum', '', '2011-08-10 00:43:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1476, 'View', '/MB/forum/view/40', '', '2011-08-10 00:43:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1477, 'View', '/MB/forum/view/40', '', '2011-08-10 00:43:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1478, 'View', '/MB/forum/view/40', '', '2011-08-10 00:48:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1479, 'View', '/MB/forum/view/40', '', '2011-08-10 00:49:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1480, 'View', '/MB/forum/view/40', '', '2011-08-10 00:50:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1481, 'View', '/MB/forum/view/40', '', '2011-08-10 00:54:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1482, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:55:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1483, 'View', '/MB/forum/reply/40', '', '2011-08-10 00:55:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1484, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 00:55:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1485, 'View', '/MB/forum/view/40', '', '2011-08-10 00:55:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1486, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:55:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1487, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:55:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1488, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:56:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1489, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:56:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1490, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:56:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1491, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 00:59:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1492, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:00:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1493, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:00:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1494, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:00:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1495, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:00:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1496, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:00:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1497, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:01:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1498, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 01:01:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1499, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 01:02:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1500, 'View', '/MB/forum/view/40/www.yahoo.com', '', '2011-08-10 01:03:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1501, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:05:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1502, 'View', '/MB/forum/reply/40', '', '2011-08-10 01:05:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1503, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 01:07:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1504, 'View', '/MB/forum/view/40', '', '2011-08-10 01:07:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1505, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:07:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1506, 'View', '/MB/', '', '2011-08-10 01:08:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1507, 'View', '/MB/forum', '', '2011-08-10 01:08:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1508, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:08:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1509, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:08:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1510, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:08:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1511, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:09:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1512, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:09:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1513, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:10:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1514, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:10:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1515, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:10:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1516, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:13:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1517, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:13:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1518, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 01:13:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1519, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:13:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1520, 'View', '/MB/', '', '2011-08-10 01:13:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1521, 'View', '/MB/forum', '', '2011-08-10 01:13:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1522, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:13:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1523, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 01:15:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1524, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 01:17:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1525, 'View', '/MB/forum/edit/44', '', '2011-08-10 01:19:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1526, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:19:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1527, 'View', '/MB/forum/reply/40', '', '2011-08-10 01:19:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1528, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 01:20:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1529, 'View', '/MB/forum/view/40', '', '2011-08-10 01:20:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1530, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:20:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1531, 'View', '/MB/forum', '', '2011-08-10 01:21:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1532, 'View', '/MB/forum', '', '2011-08-10 01:24:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1533, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:24:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1534, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 01:26:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1535, 'View', '/MB/', '', '2011-08-10 01:26:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1536, 'View', '/MB/news/add', '', '2011-08-10 01:26:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1537, 'View', '/MB/forum', '', '2011-08-10 01:26:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1538, 'View', '/MB/forum/view/40', '', '2011-08-10 01:26:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1539, 'View', '/MB/', '', '2011-08-10 09:51:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1540, 'View', '/MB/forum', '', '2011-08-10 09:51:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1541, 'View', '/MB/forum/view/40', '', '2011-08-10 09:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1542, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 09:52:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1543, 'View', '/MB/forum', '', '2011-08-10 10:10:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1544, 'View', '/MB/forum/view/40', '', '2011-08-10 10:10:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1545, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:17:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1546, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 10:17:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1547, 'View', '/MB/forum/view/40', '', '2011-08-10 10:17:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1548, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:17:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1549, 'View', '/MB/forum', '', '2011-08-10 10:23:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1550, 'View', '/MB/forum/view/40', '', '2011-08-10 10:23:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1551, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:23:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1552, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:23:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1553, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 10:23:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1554, 'View', '/MB/forum/view/40', '', '2011-08-10 10:23:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1555, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:23:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1556, 'Post', 'Delete', '', '2011-08-10 10:23:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1557, 'View', '/MB/forum', '', '2011-08-10 10:23:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1558, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:23:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1559, 'Post', 'Delete', '', '2011-08-10 10:23:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1560, 'View', '/MB/forum', '', '2011-08-10 10:23:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1561, 'View', '/MB/', '', '2011-08-10 10:24:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1562, 'View', '/MB/forum', '', '2011-08-10 10:24:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1563, 'View', '/MB/forum/view/40', '', '2011-08-10 10:24:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1564, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:24:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1565, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:25:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1566, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:26:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1567, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:26:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1568, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:26:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1569, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:28:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1570, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:29:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1571, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:29:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1572, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:31:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1573, 'View', '/MB/forum/reply/smileys.php', '', '2011-08-10 10:32:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1574, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:33:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1575, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 10:34:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1576, 'View', '/MB/forum/view/40', '', '2011-08-10 10:34:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1577, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:34:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1578, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:35:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1579, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:36:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1580, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:36:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1581, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:37:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1582, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:37:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1583, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:37:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1584, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:38:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1585, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:38:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1586, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:38:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1587, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:39:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1588, 'View', '/MB/', '', '2011-08-10 10:45:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1589, 'View', '/MB/forum', '', '2011-08-10 10:45:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1590, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:45:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1591, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:46:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1592, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:46:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1593, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:47:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1594, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:47:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1595, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:48:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1596, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:48:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1597, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:48:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1598, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:48:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1599, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:48:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1600, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:50:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1601, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 10:50:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1602, 'View', '/MB/forum/view/40', '', '2011-08-10 10:50:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1603, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:50:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1604, 'Post', 'Delete', '', '2011-08-10 10:50:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1605, 'View', '/MB/forum', '', '2011-08-10 10:50:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1606, 'View', '/MB/forum', '', '2011-08-10 10:52:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1607, 'View', '/MB/forum/add', '', '2011-08-10 10:52:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1608, 'View', '/MB/forum', '', '2011-08-10 10:59:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1609, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 10:59:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1610, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:59:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1611, 'View', '/MB/forum/reply/40', '', '2011-08-10 10:59:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1612, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 10:59:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1613, 'View', '/MB/forum/view/40', '', '2011-08-10 10:59:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1614, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 10:59:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1615, 'Post', 'Delete', '', '2011-08-10 10:59:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1616, 'View', '/MB/forum', '', '2011-08-10 10:59:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1617, 'View', '/MB/forum', '', '2011-08-10 11:00:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1618, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 11:00:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1619, 'View', '/MB/forum/reply/40', '', '2011-08-10 11:00:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1620, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 11:00:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 40);
INSERT INTO `mb_logs` VALUES(1621, 'View', '/MB/forum/view/40', '', '2011-08-10 11:00:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1622, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 11:00:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1623, 'Post', 'Delete', '', '2011-08-10 11:00:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1624, 'View', '/MB/forum', '', '2011-08-10 11:00:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1625, 'View', '/MB/forum/view/39', '', '2011-08-10 11:00:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1626, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:00:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1627, 'View', '/MB/forum', '', '2011-08-10 11:02:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1628, 'View', '/MB/forum/view/39', '', '2011-08-10 11:02:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1629, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:02:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1630, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 11:02:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1631, 'View', '/MB/forum/view/39', '', '2011-08-10 11:02:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1632, 'Post', 'Delete', '', '2011-08-10 11:02:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1633, 'View', '/MB/forum', '', '2011-08-10 11:02:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1634, 'View', '/MB/forum/view/39', '', '2011-08-10 11:07:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1635, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1636, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:08:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1637, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:08:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1638, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:09:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1639, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 11:09:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1640, 'View', '/MB/forum/view/39', '', '2011-08-10 11:09:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1641, 'View', '/MB/forum', '', '2011-08-10 11:09:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1642, 'View', '/MB/forum/view/39', '', '2011-08-10 11:09:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1643, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:12:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1644, 'View', '/MB/forum', '', '2011-08-10 11:18:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1645, 'View', '/MB/forum/view/39', '', '2011-08-10 11:18:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1646, 'View', '/MB/', '', '2011-08-10 11:30:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1647, 'View', '/MB/', '', '2011-08-10 11:30:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1648, 'View', '/MB/forum', '', '2011-08-10 11:30:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1649, 'View', '/MB/forum/view/39', '', '2011-08-10 11:30:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1650, 'View', '/MB/forum/reply/39', '', '2011-08-10 11:30:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1651, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 11:32:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1652, 'View', '/MB/forum/view/39', '', '2011-08-10 11:32:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1653, 'View', '/MB/forum', '', '2011-08-10 11:33:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1654, 'View', '/MB/members/index', '', '2011-08-10 11:33:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1655, 'View', '/MB/members/view/7', '', '2011-08-10 11:33:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1656, 'View', '/MB/members/view/6', '', '2011-08-10 11:33:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1657, 'View', '/MB/members/exmembers', '', '2011-08-10 11:33:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1658, 'View', '/MB/members/show/Legend', '', '2011-08-10 11:33:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1659, 'View', '/MB/members/view/5', '', '2011-08-10 11:33:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1660, 'View', '/MB/users/1', '', '2011-08-10 11:33:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1661, 'View', '/MB/members/index', '', '2011-08-10 11:34:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1662, 'View', '/MB/members/exmembers', '', '2011-08-10 11:34:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1663, 'View', '/MB/members/show/Legend', '', '2011-08-10 11:34:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1664, 'View', '/MB/members/view/5', '', '2011-08-10 11:34:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1665, 'View', '/MB/forum', '', '2011-08-10 11:41:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1666, 'View', '/MB/members/view/6', '', '2011-08-10 11:41:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1667, 'View', '/MB/members/view/6', '', '2011-08-10 11:42:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1668, 'View', '/MB/members/view/6', '', '2011-08-10 11:42:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1669, 'View', '/MB/members/index', '', '2011-08-10 11:44:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1670, 'View', '/MB/members/view/6', '', '2011-08-10 11:44:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1671, 'View', '/MB/members/view/6', '', '2011-08-10 11:47:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1672, 'View', '/MB/members/view/6', '', '2011-08-10 11:48:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1673, 'View', '/MB/members/view/6', '', '2011-08-10 11:48:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1674, 'View', '/MB/members/edit/6', '', '2011-08-10 11:49:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1675, 'View', '/MB/forum', '', '2011-08-10 11:50:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1676, 'View', '/MB/members/view/6', '', '2011-08-10 11:50:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1677, 'View', '/MB/members/add', '', '2011-08-10 11:51:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1678, 'View', '/MB/members/view/6', '', '2011-08-10 11:53:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1679, 'View', '/MB/members/view/6', '', '2011-08-10 11:54:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1680, 'View', '/MB/members/view/6', '', '2011-08-10 11:55:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1681, 'View', '/MB/members/view/6', '', '2011-08-10 11:55:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1682, 'View', '/MB/', '', '2011-08-10 20:58:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1683, 'View', '/MB/forum', '', '2011-08-10 20:58:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1684, 'View', '/MB/forum/view/39', '', '2011-08-10 20:58:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1685, 'View', '/MB/forum/reply/39', '', '2011-08-10 20:58:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1686, 'View', '/MB/forum', '', '2011-08-10 21:01:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1687, 'View', '/MB/forum/add', '', '2011-08-10 21:01:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1688, 'View', '/MB/forum', '', '2011-08-10 21:04:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1689, 'View', '/MB/forum', '', '2011-08-10 21:04:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1690, 'View', '/MB/forum/view/39', '', '2011-08-10 21:05:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1691, 'View', '/MB/forum/reply/39', '', '2011-08-10 21:05:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1692, 'View', '/MB/forum/reply/39', '', '2011-08-10 21:06:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1693, 'View', '/MB/forum/reply/39', '', '2011-08-10 21:06:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1694, 'View', '/MB/posts/reply', '', '2011-08-10 21:06:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1695, 'View', '/MB/forum/reply/39', '', '2011-08-10 21:07:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1696, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 21:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1697, 'View', '/MB/forum/view/39', '', '2011-08-10 21:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1698, 'View', '/MB/forum/reply/39', '', '2011-08-10 21:07:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1699, 'View', '/MB/', '', '2011-08-10 21:30:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1700, 'View', '/MB/forum', '', '2011-08-10 21:30:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1701, 'View', '/MB/forum/add', '', '2011-08-10 21:30:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1702, 'View', '/MB/forum', '', '2011-08-10 21:46:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1703, 'View', '/MB/', '', '2011-08-10 21:46:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1704, 'View', '/MB/news/add', '', '2011-08-10 21:46:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1705, 'View', '/MB/forum', '', '2011-08-10 21:47:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1706, 'View', '/MB/forum/view/39', '', '2011-08-10 21:47:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1707, 'View', '/MB/forum/reply/39', '', '2011-08-10 21:47:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1708, 'View', '/MB/forum/reply/39', '', '2011-08-10 21:58:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1709, 'View', '/MB/posts/reply', '', '2011-08-10 22:00:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1710, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:03:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1711, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 22:03:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1712, 'View', '/MB/forum/view/39', '', '2011-08-10 22:03:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1713, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:04:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1714, 'View', '/MB/forum', '', '2011-08-10 22:05:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1715, 'View', '/MB/', '', '2011-08-10 22:05:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1716, 'View', '/MB/news/add', '', '2011-08-10 22:05:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1717, 'View', '/MB/forum', '', '2011-08-10 22:06:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1718, 'View', '/MB/members/index', '', '2011-08-10 22:06:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1719, 'View', '/MB/members/view/6', '', '2011-08-10 22:06:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1720, 'View', '/MB/members/edit/6', '', '2011-08-10 22:06:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1721, 'View', '/MB/forum', '', '2011-08-10 22:06:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1722, 'View', '/MB/forum/view/39', '', '2011-08-10 22:06:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1723, 'View', '/MB/', '', '2011-08-10 22:08:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1724, 'View', '/MB/forum/view/39', '', '2011-08-10 22:08:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1725, 'View', '/MB/news/edit/39', '', '2011-08-10 22:08:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1726, 'View', '/MB/forum', '', '2011-08-10 22:08:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1727, 'View', '/MB/forum/view/39', '', '2011-08-10 22:08:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1728, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:08:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1729, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:09:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1730, 'View', '/MB/forum', '', '2011-08-10 22:11:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1731, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:27:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1732, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 22:28:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1733, 'View', '/MB/forum/view/39', '', '2011-08-10 22:28:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1734, 'Post', 'Delete', '', '2011-08-10 22:28:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1735, 'View', '/MB/forum', '', '2011-08-10 22:28:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1736, 'View', '/MB/forum', '', '2011-08-10 22:28:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1737, 'View', '/MB/forum/view/39', '', '2011-08-10 22:28:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1738, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:28:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1739, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 22:28:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1740, 'View', '/MB/forum/view/39', '', '2011-08-10 22:28:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1741, 'Post', 'Delete', '', '2011-08-10 22:28:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1742, 'View', '/MB/forum', '', '2011-08-10 22:28:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1743, 'View', '/MB/forum', '', '2011-08-10 22:28:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1744, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:30:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1745, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 22:30:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1746, 'View', '/MB/forum/view/39', '', '2011-08-10 22:30:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1747, 'Post', 'Delete', '', '2011-08-10 22:30:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1748, 'View', '/MB/forum', '', '2011-08-10 22:30:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1749, 'View', '/MB/forum/view/39', '', '2011-08-10 22:30:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1750, 'View', '/MB/forum/reply/39', '', '2011-08-10 22:36:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1751, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 22:36:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(1752, 'View', '/MB/forum/view/39', '', '2011-08-10 22:36:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1753, 'View', '/MB/forum', '', '2011-08-10 22:40:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1754, 'View', '/MB/forum/add', '', '2011-08-10 22:40:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1755, 'View', '/MB/forum/add', '', '2011-08-10 22:40:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1756, 'Forum', 'Add', '', '2011-08-10 22:40:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 71);
INSERT INTO `mb_logs` VALUES(1757, 'View', '/MB/forum', '', '2011-08-10 22:40:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1758, 'View', '/MB/forum/view/71', '', '2011-08-10 22:40:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1759, 'View', '/MB/forum/edit/71', '', '2011-08-10 22:40:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1760, 'View', '/MB/forum', '', '2011-08-10 22:40:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1761, 'View', '/MB/forum', '', '2011-08-10 22:41:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1762, 'View', '/MB/forum/view/71', '', '2011-08-10 22:41:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1763, 'View', '/MB/forum/edit/71', '', '2011-08-10 22:41:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1764, 'View', '/MB/forum', '', '2011-08-10 22:43:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1765, 'View', '/MB/forum/view/71', '', '2011-08-10 22:43:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1766, 'View', '/MB/forum/edit/71', '', '2011-08-10 22:43:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1767, 'Post', 'Edit', '', '2011-08-10 22:43:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1768, 'View', '/MB/forum/view/71', '', '2011-08-10 22:43:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1769, 'View', '/MB/forum/reply/71', '', '2011-08-10 22:43:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1770, 'View', '/MB/forum', '', '2011-08-10 22:44:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1771, 'View', '/MB/forum/view/71', '', '2011-08-10 22:44:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1772, 'View', '/MB/forum/edit/71', '', '2011-08-10 22:44:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1773, 'Post', 'Edit', '', '2011-08-10 22:44:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1774, 'View', '/MB/forum/view/71', '', '2011-08-10 22:44:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1775, 'View', '/MB/forum/reply/71', '', '2011-08-10 22:44:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1776, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 22:44:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 71);
INSERT INTO `mb_logs` VALUES(1777, 'View', '/MB/forum/view/71', '', '2011-08-10 22:44:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1778, 'View', '/MB/forum/reply/71', '', '2011-08-10 22:44:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1779, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-10 22:44:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 71);
INSERT INTO `mb_logs` VALUES(1780, 'View', '/MB/forum/view/71', '', '2011-08-10 22:44:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1781, 'View', '/MB/forum/reply/71', '', '2011-08-10 22:45:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1782, 'View', '/MB/forum/add', '', '2011-08-10 22:45:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1783, 'View', '/MB/forum', '', '2011-08-10 22:45:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1784, 'View', '/MB/forum/view/71', '', '2011-08-10 22:45:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1785, 'View', '/MB/forum/reply/71', '', '2011-08-10 22:45:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1786, 'View', '/MB/forum/add', '', '2011-08-10 22:45:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1787, 'View', '/MB/forum', '', '2011-08-10 22:45:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1788, 'View', '/MB/', '', '2011-08-10 22:48:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1789, 'View', '/MB/news/add', '', '2011-08-10 22:48:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1790, 'News', 'Add', '', '2011-08-10 22:48:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 74);
INSERT INTO `mb_logs` VALUES(1791, 'View', '/MB/', '', '2011-08-10 22:48:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1792, 'View', '/MB/', '', '2011-08-10 22:49:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1793, 'View', '/MB/', '', '2011-08-10 22:50:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1794, 'View', '/MB/', '', '2011-08-10 22:50:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1795, 'View', '/MB/', '', '2011-08-10 22:50:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1796, 'View', '/MB/news/add', '', '2011-08-10 22:50:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1797, 'View', '/MB/news/edit/74', '', '2011-08-10 22:50:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1798, 'View', '/MB/forum', '', '2011-08-10 22:50:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1799, 'View', '/MB/forum/view/74', '', '2011-08-10 22:50:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1800, 'View', '/MB/forum', '', '2011-08-10 22:50:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1801, 'View', '/MB/forum/view/71', '', '2011-08-10 22:50:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1802, 'View', '/MB/forum', '', '2011-08-10 22:50:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1803, 'View', '/MB/forum/view/71', '', '2011-08-10 22:50:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1804, 'Post', 'Delete', '', '2011-08-10 22:50:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1805, 'View', '/MB/forum', '', '2011-08-10 22:50:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1806, 'View', '/MB/forum/view/71', '', '2011-08-10 22:50:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1807, 'Post', 'Delete', '', '2011-08-10 22:50:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1808, 'View', '/MB/forum', '', '2011-08-10 22:50:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1809, 'View', '/MB/forum', '', '2011-08-10 22:51:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1810, 'View', '/MB/forum/view/74', '', '2011-08-10 22:51:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1811, 'View', '/MB/forum/edit/74', '', '2011-08-10 22:51:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1812, 'Post', 'Edit', '', '2011-08-10 22:51:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1813, 'View', '/MB/forum/view/74', '', '2011-08-10 22:51:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1814, 'View', '/MB/', '', '2011-08-10 22:51:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1815, 'View', '/MB/news/edit/74', '', '2011-08-10 22:51:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1816, 'Post', 'Edit', '', '2011-08-10 22:51:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1817, 'View', '/MB/', '', '2011-08-10 22:51:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1818, 'View', '/MB/news/edit/74', '', '2011-08-10 22:52:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1819, 'Post', 'Edit', '', '2011-08-10 22:52:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1820, 'View', '/MB/', '', '2011-08-10 22:52:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1821, 'View', '/MB/forum', '', '2011-08-10 22:52:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1822, 'View', '/MB/forum/view/74', '', '2011-08-10 22:52:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1823, 'View', '/MB/forum', '', '2011-08-10 22:52:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1824, 'View', '/MB/forum', '', '2011-08-10 22:53:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1825, 'View', '/MB/articles/view/1', '', '2011-08-10 22:53:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1826, 'View', '/MB/articles/summary', '', '2011-08-10 22:54:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1827, 'View', '/MB/', '', '2011-08-10 22:54:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1828, 'View', '/MB/forum/view/39', '', '2011-08-10 22:54:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1829, 'View', '/MB/forum/view/39', '', '2011-08-10 22:55:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1830, 'View', '/MB/forum', '', '2011-08-10 22:55:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1831, 'View', '/MB/forum/view/39', '', '2011-08-10 22:55:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1832, 'Post', 'Edit', '', '2011-08-10 22:55:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1833, 'View', '/MB/forum/view/39', '', '2011-08-10 22:55:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1834, 'View', '/MB/forum', '', '2011-08-10 22:55:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1835, 'View', '/MB/forum/view/39', '', '2011-08-10 22:56:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1836, 'Post', 'Edit', '', '2011-08-10 22:56:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1837, 'View', '/MB/forum/view/39', '', '2011-08-10 22:56:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1838, 'View', '/MB/forum', '', '2011-08-10 22:56:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1839, 'View', '/MB/forum/view/39', '', '2011-08-10 22:56:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1840, 'Post', 'Edit', '', '2011-08-10 22:56:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1841, 'View', '/MB/forum/view/39', '', '2011-08-10 22:56:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1842, 'View', '/MB/forum', '', '2011-08-10 22:56:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1843, 'View', '/MB/forum/view/39', '', '2011-08-10 22:56:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1844, 'View', '/MB/forum', '', '2011-08-10 22:56:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1845, 'View', '/MB/forum', '', '2011-08-10 22:56:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1846, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 22:56:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1847, 'View', '/MB/forum', '', '2011-08-10 22:57:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1848, 'View', '/MB/forum', '', '2011-08-10 22:57:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1849, 'View', '/MB/forum', '', '2011-08-10 22:57:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1850, 'View', '/MB/forum', '', '2011-08-10 22:57:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1851, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 22:57:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1852, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 22:57:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1853, 'Post', 'Delete', '', '2011-08-10 22:58:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1854, 'View', '/MB/forum', '', '2011-08-10 22:58:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1855, 'View', '/MB/forum/view/74', '', '2011-08-10 22:58:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1856, 'View', '/MB/forum', '', '2011-08-10 22:58:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1857, 'View', '/MB/forum/view/39', '', '2011-08-10 22:58:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1858, 'View', '/MB/forum', '', '2011-08-10 22:58:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1859, 'View', '/MB/forum/view/39', '', '2011-08-10 22:58:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1860, 'View', '/MB/forum/info/39', '', '2011-08-10 22:58:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1861, 'View', '/MB/forum', '', '2011-08-10 22:59:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1862, 'View', '/MB/forum', '', '2011-08-10 23:00:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1863, 'View', '/MB/forum', '', '2011-08-10 23:00:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1864, 'View', '/MB/forum', '', '2011-08-10 23:00:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1865, 'View', '/MB/', '', '2011-08-10 23:00:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1866, 'View', '/MB/news/add', '', '2011-08-10 23:04:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1867, 'View', '/MB/forum', '', '2011-08-10 23:04:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1868, 'View', '/MB/forum', '', '2011-08-10 23:04:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1869, 'View', '/MB/forum/view/39', '', '2011-08-10 23:04:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1870, 'View', '/MB/forum', '', '2011-08-10 23:06:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1871, 'View', '/MB/members/index', '', '2011-08-10 23:06:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1872, 'View', '/MB/members/view/6', '', '2011-08-10 23:06:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1873, 'View', '/MB/members/add', '', '2011-08-10 23:06:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1874, 'User', 'Add', '', '2011-08-10 23:07:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1875, 'View', '/MB/members/index', '', '2011-08-10 23:07:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1876, 'View', '/MB/members/view/8', '', '2011-08-10 23:07:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1877, 'View', '/MB/members/edit/8', '', '2011-08-10 23:07:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1878, 'View', '/MB/members/add', '', '2011-08-10 23:07:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1879, 'View', '/MB/members/add', '', '2011-08-10 23:08:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1880, 'View', '/MB/forum', '', '2011-08-10 23:10:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1881, 'View', '/MB/forum/view/39', '', '2011-08-10 23:10:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1882, 'View', '/MB/forum/view/40', '', '2011-08-10 23:10:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1883, 'View', '/MB/forum/edit/40', '', '2011-08-10 23:10:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1884, 'View', '/MB/forum/edit/41', '', '2011-08-10 23:10:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1885, 'View', '/MB/forum/edit/40', '', '2011-08-10 23:10:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1886, 'View', '/MB/forum', '', '2011-08-10 23:10:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1887, 'View', '/MB/forum/view/74', '', '2011-08-10 23:10:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1888, 'View', '/MB/forum/edit/74', '', '2011-08-10 23:10:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1889, 'Post', 'Edit', '', '2011-08-10 23:10:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1890, 'View', '/MB/forum/view/74', '', '2011-08-10 23:10:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1891, 'View', '/MB/forum', '', '2011-08-10 23:10:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1892, 'View', '/MB/forum/view/40', '', '2011-08-10 23:10:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1893, 'View', '/MB/forum/edit/43', '', '2011-08-10 23:10:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1894, 'View', '/MB/forum/edit/43', '', '2011-08-10 23:11:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1895, 'Post', 'Edit', '', '2011-08-10 23:11:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1896, 'View', '/MB/forum/view/40', '', '2011-08-10 23:11:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1897, 'View', '/MB/forum/edit/41', '', '2011-08-10 23:11:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1898, 'View', '/MB/forum/edit/42', '', '2011-08-10 23:11:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1899, 'View', '/MB/forum/edit/43', '', '2011-08-10 23:11:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1900, 'View', '/MB/forum', '', '2011-08-10 23:12:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1901, 'View', '/MB/forum/view/40', '', '2011-08-10 23:12:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1902, 'View', '/MB/forum/edit/40', '', '2011-08-10 23:12:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1903, 'Post', 'Edit', '', '2011-08-10 23:12:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1904, 'View', '/MB/forum/view/40', '', '2011-08-10 23:12:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1905, 'View', '/MB/forum/edit/40', '', '2011-08-10 23:12:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1906, 'Post', 'Edit', '', '2011-08-10 23:12:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1907, 'View', '/MB/forum/view/40', '', '2011-08-10 23:12:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1908, 'View', '/MB/forum', '', '2011-08-10 23:16:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1909, 'View', '/MB/forum/view/39', '', '2011-08-10 23:16:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1910, 'View', '/MB/forum/index/page:1/sort:title/direction:asc', '', '2011-08-10 23:16:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1911, 'View', '/MB/forum/view/15', '', '2011-08-10 23:16:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1912, 'View', '/MB/forum', '', '2011-08-10 23:16:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1913, 'View', '/MB/forum/view/40', '', '2011-08-10 23:16:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1914, 'View', '/MB/forum/view/40', '', '2011-08-10 23:16:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1915, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:18:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1916, 'View', '/MB/', '', '2011-08-10 23:29:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1917, 'View', '/MB/forum', '', '2011-08-10 23:29:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1918, 'View', '/MB/forum/view/40', '', '2011-08-10 23:29:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1919, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:29:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1920, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:29:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1921, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:30:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1922, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:30:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1923, 'View', '/MB/forum', '', '2011-08-10 23:30:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1924, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:30:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1925, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:30:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1926, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:31:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1927, 'View', '/MB/forum', '', '2011-08-10 23:31:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1928, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:31:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1929, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:31:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1930, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:31:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1931, 'View', '/MB/forum', '', '2011-08-10 23:31:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1932, 'View', '/MB/forum/view/40', '', '2011-08-10 23:31:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1933, 'View', '/MB/forum/edit/41', '', '2011-08-10 23:31:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1934, 'Post', 'Edit', '', '2011-08-10 23:31:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1935, 'View', '/MB/forum/view/40', '', '2011-08-10 23:31:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1936, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:32:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1937, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:32:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1938, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:32:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1939, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:32:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1940, 'View', '/MB/forum', '', '2011-08-10 23:32:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1941, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:32:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1942, 'View', '/MB/forum/edit/55', '', '2011-08-10 23:32:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1943, 'View', '/MB/forum/edit/55', '', '2011-08-10 23:32:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1944, 'View', '/MB/forum/view/40/page:1', '', '2011-08-10 23:33:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1945, 'View', '/MB/forum/edit/41', '', '2011-08-10 23:33:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1946, 'View', '/MB/forum/edit/51', '', '2011-08-10 23:33:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1947, 'View', '/MB/forum/edit/51', '', '2011-08-10 23:33:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1948, 'View', '/MB/forum/edit/51', '', '2011-08-10 23:34:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1949, 'Post', 'Edit', '', '2011-08-10 23:34:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1950, 'View', '/MB/forum/view/40', '', '2011-08-10 23:34:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1951, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:35:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1952, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:35:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1953, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:35:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1954, 'Post', 'Edit', '', '2011-08-10 23:35:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1955, 'View', '/MB/forum/view/40', '', '2011-08-10 23:35:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1956, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:35:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1957, 'View', '/MB/forum/edit/58', '', '2011-08-10 23:35:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1958, 'Post', 'Edit', '', '2011-08-10 23:35:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1959, 'View', '/MB/forum/view/40', '', '2011-08-10 23:35:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1960, 'View', '/MB/forum/view/40/page:2', '', '2011-08-10 23:35:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1961, 'View', '/MB/', '', '2011-08-10 23:37:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1962, 'View', '/MB/news/add', '', '2011-08-10 23:37:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1963, 'View', '/MB/forum', '', '2011-08-10 23:37:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1964, 'View', '/MB/forum', '', '2011-08-10 23:41:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1965, 'View', '/MB/forum/view/39', '', '2011-08-10 23:41:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1966, 'View', '/MB/', '', '2011-08-11 13:34:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1967, 'View', '/MB/forum', '', '2011-08-11 13:34:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1968, 'View', '/MB/forum/view/39', '', '2011-08-11 13:34:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1969, 'View', '/MB/forum/view/40', '', '2011-08-11 13:57:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1970, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 13:57:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1971, 'View', '/MB/forum/edit/58', '', '2011-08-11 13:57:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1972, 'Post', 'Edit', '', '2011-08-11 13:57:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1973, 'View', '/MB/forum/view/40', '', '2011-08-11 13:57:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1974, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 13:57:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1975, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 13:57:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1976, 'View', '/MB/forum/edit/58', '', '2011-08-11 13:58:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1977, 'Post', 'Edit', '', '2011-08-11 13:58:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1978, 'View', '/MB/forum/view/40', '', '2011-08-11 13:58:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1979, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 13:58:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1980, 'View', '/MB/forum/edit/58', '', '2011-08-11 13:58:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1981, 'Post', 'Edit', '', '2011-08-11 13:58:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1982, 'View', '/MB/forum/view/40', '', '2011-08-11 13:58:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1983, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 13:58:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1984, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 14:00:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1985, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 14:00:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1986, 'View', '/MB/forum/edit/58', '', '2011-08-11 14:01:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1987, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 14:01:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1988, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 14:03:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1989, 'View', '/MB/forum/edit/55', '', '2011-08-11 14:03:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1990, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 14:05:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1991, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 14:06:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1992, 'View', '/MB/forum/edit/58', '', '2011-08-11 16:23:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1993, 'Post', 'Edit', '', '2011-08-11 16:24:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1994, 'View', '/MB/forum/view/40', '', '2011-08-11 16:24:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1995, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:24:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1996, 'View', '/MB/forum/edit/58', '', '2011-08-11 16:24:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1997, 'Post', 'Edit', '', '2011-08-11 16:24:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1998, 'View', '/MB/forum/view/40', '', '2011-08-11 16:24:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(1999, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:24:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2000, 'View', '/MB/forum/edit/58', '', '2011-08-11 16:24:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2001, 'View', '/MB/forum/view/40/page:1', '', '2011-08-11 16:24:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2002, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:24:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2003, 'Post', 'Edit', '', '2011-08-11 16:26:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2004, 'View', '/MB/forum/view/40', '', '2011-08-11 16:26:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2005, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:26:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2006, 'Post', 'Edit', '', '2011-08-11 16:26:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2007, 'View', '/MB/forum/view/40', '', '2011-08-11 16:26:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2008, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:26:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2009, 'Post', 'Edit', '', '2011-08-11 16:26:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2010, 'View', '/MB/forum/view/40', '', '2011-08-11 16:26:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2011, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:27:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2012, 'Post', 'Edit', '', '2011-08-11 16:27:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2013, 'View', '/MB/forum/view/40', '', '2011-08-11 16:27:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2014, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:27:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2015, 'Post', 'Edit', '', '2011-08-11 16:27:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2016, 'View', '/MB/forum/view/40', '', '2011-08-11 16:27:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2017, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:27:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2018, 'Post', 'Edit', '', '2011-08-11 16:27:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2019, 'View', '/MB/forum/view/40', '', '2011-08-11 16:27:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2020, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:28:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2021, 'Post', 'Edit', '', '2011-08-11 16:29:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2022, 'View', '/MB/forum/view/40', '', '2011-08-11 16:29:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2023, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:29:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2024, 'Post', 'Edit', '', '2011-08-11 16:29:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2025, 'View', '/MB/forum/view/40', '', '2011-08-11 16:29:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2026, 'View', '/MB/forum/edit/41', '', '2011-08-11 16:30:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2027, 'Post', 'Edit', '', '2011-08-11 16:30:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2028, 'View', '/MB/forum/view/40', '', '2011-08-11 16:30:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2029, 'View', '/MB/forum/reply/40', '', '2011-08-11 16:32:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2030, 'View', '/MB/forum/add', '', '2011-08-11 16:32:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2031, 'View', '/MB/forum', '', '2011-08-11 16:34:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2032, 'View', '/MB/forum/add', '', '2011-08-11 16:34:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2033, 'View', '/MB/forum', '', '2011-08-11 16:34:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2034, 'View', '/MB/forum/view/39', '', '2011-08-11 16:34:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2035, 'View', '/MB/forum/reply/39', '', '2011-08-11 16:34:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2036, 'Forum', 'Edit', 'Chewits[MB]', '2011-08-11 16:35:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 39);
INSERT INTO `mb_logs` VALUES(2037, 'View', '/MB/forum/view/39', '', '2011-08-11 16:35:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2038, 'Post', 'Delete', '', '2011-08-11 16:35:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2039, 'View', '/MB/forum', '', '2011-08-11 16:35:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2040, 'View', '/MB/forum/view/39', '', '2011-08-11 16:36:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2041, 'View', '/MB/forum/reply/39', '', '2011-08-11 16:36:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2042, 'View', '/MB/forum/reply/39', '', '2011-08-11 16:37:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2043, 'View', '/MB/forum/reply/39', '', '2011-08-11 16:38:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2044, 'View', '/MB/forum', '', '2011-08-11 16:38:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2045, 'View', '/MB/forum/view/39', '', '2011-08-11 16:38:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2046, 'View', '/MB/forum/edit/50', '', '2011-08-11 16:38:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2047, 'View', '/MB/forum/edit/50', '', '2011-08-11 16:38:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2048, 'View', '/MB/forum/edit/50', '', '2011-08-11 16:39:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2049, 'View', '/MB/forum', '', '2011-08-11 16:41:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2050, 'View', '/MB/forum/view/39', '', '2011-08-11 16:41:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2051, 'View', '/MB/forum/edit/65', '', '2011-08-11 16:41:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2052, 'View', '/MB/forum', '', '2011-08-11 16:42:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2053, 'View', '/MB/forum', '', '2011-08-11 16:42:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2054, 'View', '/MB/forum/view/39', '', '2011-08-11 16:42:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2055, 'View', '/MB/members/view/6', '', '2011-08-11 16:42:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2056, 'View', '/MB/members/edit/6', '', '2011-08-11 16:42:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2057, 'User', 'Edit', '', '2011-08-11 16:43:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2058, 'View', '/MB/members/index', '', '2011-08-11 16:43:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2059, 'View', '/MB/members/view/6', '', '2011-08-11 16:43:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2060, 'View', '/MB/members/view/6', '', '2011-08-11 16:43:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2061, 'View', '/MB/forum', '', '2011-08-11 16:43:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2062, 'View', '/MB/forum/view/39', '', '2011-08-11 16:43:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2063, 'View', '/MB/members/view/6', '', '2011-08-11 16:43:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2064, 'View', '/MB/members/edit/6', '', '2011-08-11 16:43:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2065, 'User', 'Edit', '', '2011-08-11 16:43:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2066, 'View', '/MB/members/index', '', '2011-08-11 16:43:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2067, 'View', '/MB/members/view/6', '', '2011-08-11 16:43:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2068, 'View', '/MB/members/view/6', '', '2011-08-11 16:46:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2069, 'View', '/MB/forum', '', '2011-08-11 16:50:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2070, 'View', '/MB/forum/view/39', '', '2011-08-11 16:50:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2071, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:50:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2072, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:52:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2073, 'View', '/MB/forum/edit/54', '', '2011-08-11 16:52:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2074, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:53:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2075, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:53:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2076, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:53:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2077, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 16:55:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2078, 'View', '/MB/members/view/6', '', '2011-08-11 16:55:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2079, 'View', '/MB/members/view/6', '', '2011-08-11 16:55:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2080, 'View', '/MB/', '', '2011-08-11 17:03:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2081, 'View', '/MB/members/index', '', '2011-08-11 17:03:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2082, 'View', '/MB/members/exmembers', '', '2011-08-11 17:03:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2083, 'View', '/MB/members/show/Legend', '', '2011-08-11 17:03:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2084, 'View', '/MB/members/index', '', '2011-08-11 17:03:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2085, 'View', '/MB/forum', '', '2011-08-11 19:55:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2086, 'View', '/MB/', '', '2011-08-11 23:33:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2087, 'View', '/MB/forum', '', '2011-08-11 23:33:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2088, 'View', '/MB/forum/view/40', '', '2011-08-11 23:33:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2089, 'View', '/MB/forum/view/40/page:2', '', '2011-08-11 23:33:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2090, 'View', '/MB/forum', '', '2011-08-11 23:33:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2091, 'View', '/MB/ranks', '', '2011-08-11 23:34:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2092, 'View', '/MB/articles/view/1', '', '2011-08-11 23:34:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2093, 'View', '/MB/articles/view/1', '', '2011-08-11 23:34:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2094, 'View', '/MB/articles/summary', '', '2011-08-11 23:34:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2095, 'View', '/MB/articles/view/1', '', '2011-08-11 23:35:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2096, 'View', '/MB/articles/summary', '', '2011-08-11 23:36:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2097, 'View', '/MB/articles/view/1', '', '2011-08-11 23:38:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2098, 'View', '/MB/articles/view/1', '', '2011-08-11 23:40:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2099, 'View', '/MB/articles/add', '', '2011-08-11 23:40:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2100, 'View', '/MB/categories/', '', '2011-08-11 23:41:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2101, 'View', '/MB/categories/add', '', '2011-08-11 23:42:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2102, 'View', '/MB/categories/add', '', '2011-08-11 23:42:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2103, 'View', '/MB/articles/add', '', '2011-08-11 23:42:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2104, 'View', '/MB/articles', '', '2011-08-11 23:42:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2105, 'View', '/MB/categories/add', '', '2011-08-11 23:42:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2106, 'View', '/MB/categories/view/1', '', '2011-08-11 23:42:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2107, 'View', '/MB/categories/view/2', '', '2011-08-11 23:42:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2108, 'View', '/MB/categories/view/1', '', '2011-08-11 23:42:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2109, 'View', '/MB/articles/add', '', '2011-08-11 23:43:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2110, 'Article', 'Edit', '', '2011-08-11 23:44:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2111, 'View', '/MB/articles', '', '2011-08-11 23:44:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2112, 'View', '/MB/articles/edit/9', '', '2011-08-11 23:44:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2113, 'Article', 'Edit', '', '2011-08-11 23:44:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2114, 'View', '/MB/articles/view/9', '', '2011-08-11 23:44:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2115, 'View', '/MB/members/view/1', '', '2011-08-11 23:45:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2116, 'View', '/MB/members/view/7', '', '2011-08-11 23:45:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2117, 'View', '/MB/articles', '', '2011-08-11 23:46:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2118, 'View', '/MB/categories/view/2', '', '2011-08-11 23:46:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2119, 'View', '/MB/categories/view/1', '', '2011-08-11 23:47:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2120, 'View', '/MB/articles/view/8', '', '2011-08-11 23:47:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2121, 'View', '/MB/articles/view/7', '', '2011-08-11 23:47:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2122, 'View', '/MB/articles/view/3', '', '2011-08-11 23:47:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2123, 'View', '/MB/', '', '2011-08-12 02:23:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2124, 'View', '/MB/members/index', '', '2011-08-12 02:24:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2125, 'View', '/MB/members/exmembers', '', '2011-08-12 02:24:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2126, 'View', '/MB/members/show/Legend', '', '2011-08-12 02:24:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2127, 'View', '/MB/members/view/5', '', '2011-08-12 02:24:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2128, 'View', '/MB/members/exmembers', '', '2011-08-12 02:24:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2129, 'View', '/MB/members/exmembers', '', '2011-08-12 02:24:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2130, 'View', '/MB/members/show/Legend', '', '2011-08-12 02:24:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2131, 'View', '/MB/members/view/5', '', '2011-08-12 02:24:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2132, 'View', '/MB/members/index', '', '2011-08-12 02:24:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2133, 'View', '/MB/members/view/6', '', '2011-08-12 02:24:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2134, 'View', '/MB/members/index', '', '2011-08-12 02:24:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2135, 'View', '/MB/members/view/8', '', '2011-08-12 02:24:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2136, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 02:24:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2137, 'View', '/MB/members/exmembers', '', '2011-08-12 02:24:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2138, 'View', '/MB/members/show/Legend', '', '2011-08-12 02:24:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2139, 'View', '/MB/members/view/5', '', '2011-08-12 02:24:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2140, 'View', '/MB/members/reinstate/5', '', '2011-08-12 02:24:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2141, 'View', '/MB/members/show/guest', '', '2011-08-12 02:25:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2142, 'View', '/MB/members/view/3', '', '2011-08-12 02:25:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2143, 'View', '/MB/forum', '', '2011-08-12 02:25:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2144, 'View', '/MB/members/index', '', '2011-08-12 02:25:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2145, 'View', '/MB/members/exmembers', '', '2011-08-12 02:25:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2146, 'View', '/MB/members/show/Legend', '', '2011-08-12 02:25:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2147, 'View', '/MB/members/exmembers', '', '2011-08-12 02:25:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2148, 'View', '/MB/members/show/Legend', '', '2011-08-12 02:25:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2149, 'View', '/MB/members/exmembers', '', '2011-08-12 02:25:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2150, 'View', '/MB/members/exmembers/index', '', '2011-08-12 02:26:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2151, 'View', '/MB/members/exmembers/add', '', '2011-08-12 02:26:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2152, 'View', '/MB/members/index', '', '2011-08-12 02:26:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2153, 'View', '/MB/members/exmembers', '', '2011-08-12 02:26:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2154, 'View', '/MB/members/index', '', '2011-08-12 02:30:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2155, 'View', '/MB/ranks', '', '2011-08-12 02:30:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2156, 'View', '/MB/ranks/exmembers', '', '2011-08-12 02:30:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2157, 'View', '/MB/ranks/exmembers', '', '2011-08-12 02:30:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2158, 'View', '/MB/', '', '2011-08-12 02:31:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2159, 'View', '/MB/ranks', '', '2011-08-12 02:32:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2160, 'View', '/MB/ranks/add', '', '2011-08-12 02:32:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2161, 'View', '/MB/ranks/exmembers', '', '2011-08-12 02:32:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2162, 'View', '/MB/ranks/add', '', '2011-08-12 02:33:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2163, 'View', '/MB/ranks/exmembers', '', '2011-08-12 02:33:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2164, 'View', '/MB/ranks/view/4', '', '2011-08-12 02:33:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2165, 'View', '/MB/ranks/view/5', '', '2011-08-12 02:33:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2166, 'View', '/MB/members/index', '', '2011-08-12 02:33:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2167, 'View', '/MB/members/exmembers', '', '2011-08-12 02:33:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2168, 'View', '/MB/members/show/Legend', '', '2011-08-12 02:33:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2169, 'View', '/MB/members/view/5', '', '2011-08-12 02:34:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2170, 'View', '/MB/', '', '2011-08-12 19:24:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2171, 'View', '/MB/news/edit/74', '', '2011-08-12 19:24:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2172, 'Post', 'Edit', '', '2011-08-12 19:24:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2173, 'View', '/MB/', '', '2011-08-12 19:24:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2174, 'View', '/MB/news/edit/74', '', '2011-08-12 19:26:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2175, 'Post', 'Edit', '', '2011-08-12 19:26:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2176, 'View', '/MB/', '', '2011-08-12 19:26:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2177, 'View', '/MB/news/edit/74', '', '2011-08-12 19:26:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2178, 'Post', 'Edit', '', '2011-08-12 19:26:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2179, 'View', '/MB/', '', '2011-08-12 19:26:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2180, 'View', '/MB/news/edit/74', '', '2011-08-12 19:26:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2181, 'Post', 'Edit', '', '2011-08-12 19:26:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2182, 'View', '/MB/', '', '2011-08-12 19:26:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2183, 'View', '/MB/news/edit/74', '', '2011-08-12 19:26:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2184, 'Post', 'Edit', '', '2011-08-12 19:26:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2185, 'View', '/MB/', '', '2011-08-12 19:26:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2186, 'View', '/MB/news/edit/74', '', '2011-08-12 19:26:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2187, 'Post', 'Edit', '', '2011-08-12 19:26:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2188, 'View', '/MB/', '', '2011-08-12 19:26:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2189, 'View', '/MB/forum', '', '2011-08-12 19:26:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2190, 'View', '/MB/forum/view/39', '', '2011-08-12 19:26:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2191, 'View', '/MB/forum/view/40/page:2', '', '2011-08-12 19:27:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2192, 'View', '/MB/forum/edit/58', '', '2011-08-12 19:27:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2193, 'View', '/MB/forum', '', '2011-08-12 19:27:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2194, 'View', '/MB/', '', '2011-08-12 19:27:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2195, 'View', '/MB/', '', '2011-08-12 19:27:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2196, 'View', '/MB/', '', '2011-08-12 19:27:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2197, 'View', '/MB/members/index', '', '2011-08-12 19:27:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2198, 'View', '/MB/ranks', '', '2011-08-12 19:27:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2199, 'View', '/MB/articles/view/1', '', '2011-08-12 19:28:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2200, 'View', '/MB/categories', '', '2011-08-12 19:28:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2201, 'View', '/MB/categories/view/2', '', '2011-08-12 19:28:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2202, 'View', '/MB/articles', '', '2011-08-12 19:28:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2203, 'View', '/MB/articles/view/7', '', '2011-08-12 19:28:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2204, 'View', '/MB/articles/edit/8', '', '2011-08-12 19:29:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2205, 'View', '/MB/categories/view/2', '', '2011-08-12 19:29:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2206, 'View', '/MB/articles/edit/8', '', '2011-08-12 19:29:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2207, 'View', '/MB/categories/view/2', '', '2011-08-12 19:30:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2208, 'View', '/MB/categories/edit/2', '', '2011-08-12 19:30:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2209, 'View', '/MB/categories', '', '2011-08-12 19:30:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2210, 'View', '/MB/categories/edit/2', '', '2011-08-12 19:30:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2211, 'View', '/MB/categories/view/2', '', '2011-08-12 19:30:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2212, 'View', '/MB/categories/add', '', '2011-08-12 19:30:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2213, 'View', '/MB/categories/add', '', '2011-08-12 19:30:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2214, 'View', '/MB/members/index', '', '2011-08-12 19:30:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2215, 'View', '/MB/members/exmembers', '', '2011-08-12 19:30:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2216, 'View', '/MB/', '', '2011-08-12 19:31:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2217, 'View', '/MB/forum', '', '2011-08-12 19:31:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2218, 'View', '/MB/forum/view/39', '', '2011-08-12 19:31:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2219, 'View', '/MB/', '', '2011-08-12 19:31:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2220, 'View', '/MB/members/view/6', '', '2011-08-12 19:31:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2221, 'View', '/MB/permissions/edit/6', '', '2011-08-12 19:32:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2222, 'View', '/MB/members/index', '', '2011-08-12 19:32:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2223, 'View', '/MB/forum', '', '2011-08-12 19:42:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2224, 'View', '/MB/', '', '2011-08-12 20:44:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2225, 'View', '/MB/members/index', '', '2011-08-12 20:44:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2226, 'View', '/MB/members/exmembers', '', '2011-08-12 20:44:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2227, 'View', '/MB/members/index', '', '2011-08-12 20:44:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2228, 'View', '/MB/members/exmembers', '', '2011-08-12 20:44:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2229, 'View', '/MB/members/exmembers/edit', '', '2011-08-12 20:45:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2230, 'View', '/MB/members/exmembers/add', '', '2011-08-12 20:45:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2231, 'View', '/MB/members/show/Legend', '', '2011-08-12 20:45:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2232, 'View', '/MB/members/view/5', '', '2011-08-12 20:45:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2233, 'View', '/MB/forum', '', '2011-08-12 20:47:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2234, 'View', '/MB/', '', '2011-08-12 22:20:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2235, 'View', '/MB/members/index', '', '2011-08-12 22:20:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2236, 'View', '/MB/members/view/8', '', '2011-08-12 22:21:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2237, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 22:21:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2238, 'View', '/MB/forum', '', '2011-08-12 22:25:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2239, 'View', '/MB/members/index', '', '2011-08-12 22:25:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2240, 'View', '/MB/members/view/8', '', '2011-08-12 22:25:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2241, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 22:25:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2242, 'View', '/MB/members/exmembers', '', '2011-08-12 22:25:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2243, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:25:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2244, 'View', '/MB/members/index', '', '2011-08-12 22:25:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2245, 'View', '/MB/members/view/8', '', '2011-08-12 22:25:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2246, 'View', '/MB/members/exmembers', '', '2011-08-12 22:25:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2247, 'View', '/MB/members/index', '', '2011-08-12 22:25:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2248, 'View', '/MB/members/view/8', '', '2011-08-12 22:25:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2249, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 22:25:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2250, 'User', 'Reinstate', 'Trialist', '2011-08-12 22:26:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2251, 'View', '/MB/members/exmembers', '', '2011-08-12 22:26:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2252, 'View', '/MB/members/exmembers', '', '2011-08-12 22:26:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2253, 'View', '/MB/members/index', '', '2011-08-12 22:26:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2254, 'View', '/MB/members/exmembers', '', '2011-08-12 22:26:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2255, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:26:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2256, 'View', '/MB/members/view/8', '', '2011-08-12 22:26:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2257, 'View', '/MB/members/reinstate/8', '', '2011-08-12 22:26:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2258, 'User', 'Reinstate', 'Legend', '2011-08-12 22:27:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2259, 'View', '/MB/members/index', '', '2011-08-12 22:27:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2260, 'View', '/MB/members/view/8', '', '2011-08-12 22:28:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2261, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 22:28:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2262, 'User', 'Reinstate', 'Private', '2011-08-12 22:28:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2263, 'View', '/MB/forum', '', '2011-08-12 22:28:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2264, 'View', '/MB/forum', '', '2011-08-12 22:29:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2265, 'View', '/MB/', '', '2011-08-12 22:40:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2266, 'View', '/MB/', '', '2011-08-12 22:40:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2267, 'View', '/MB/', '', '2011-08-12 22:52:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2268, 'View', '/MB/members/index', '', '2011-08-12 22:52:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2269, 'View', '/MB/members/exmembers', '', '2011-08-12 22:52:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2270, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:52:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2271, 'View', '/MB/members/view/8', '', '2011-08-12 22:52:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2272, 'View', '/MB/members/reinstate/8', '', '2011-08-12 22:52:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2273, 'User', 'Reinstate', 'Legend', '2011-08-12 22:52:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2274, 'View', '/MB/members/index', '', '2011-08-12 22:52:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2275, 'View', '/MB/members/view/8', '', '2011-08-12 22:52:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2276, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 22:52:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2277, 'User', 'Reinstate', 'Private', '2011-08-12 22:52:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2278, 'View', '/MB/members/index', '', '2011-08-12 22:52:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2279, 'View', '/MB/members/index', '', '2011-08-12 22:52:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2280, 'View', '/MB/members/exmembers', '', '2011-08-12 22:52:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2281, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:52:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2282, 'View', '/MB/members/view/8', '', '2011-08-12 22:53:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2283, 'View', '/MB/members/reinstate/8', '', '2011-08-12 22:53:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2284, 'User', 'Reinstate', 'Legend', '2011-08-12 22:53:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2285, 'View', '/MB/members/index', '', '2011-08-12 22:53:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2286, 'View', '/MB/members/index', '', '2011-08-12 22:53:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2287, 'View', '/MB/members/exmembers', '', '2011-08-12 22:53:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2288, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:53:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2289, 'View', '/MB/members/index', '', '2011-08-12 22:53:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2290, 'View', '/MB/members/view/8', '', '2011-08-12 22:53:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2291, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 22:53:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2292, 'User', 'Reinstate', 'Trialist', '2011-08-12 22:53:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2293, 'View', '/MB/members/index', '', '2011-08-12 22:53:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2294, 'View', '/MB/members/index', '', '2011-08-12 22:53:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2295, 'View', '/MB/members/exmembers', '', '2011-08-12 22:53:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2296, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:53:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2297, 'View', '/MB/members/view/8', '', '2011-08-12 22:53:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2298, 'View', '/MB/members/reinstate/8', '', '2011-08-12 22:53:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2299, 'User', 'Reinstate', 'Legend', '2011-08-12 22:53:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2300, 'View', '/MB/members/index', '', '2011-08-12 22:53:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2301, 'View', '/MB/members/index', '', '2011-08-12 22:54:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2302, 'View', '/MB/members/exmembers', '', '2011-08-12 22:54:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2303, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:54:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2304, 'View', '/MB/members/exmembers', '', '2011-08-12 22:54:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2305, 'View', '/MB/members/index', '', '2011-08-12 22:54:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2306, 'View', '/MB/members/exmembers', '', '2011-08-12 22:54:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2307, 'View', '/MB/members/show/guest', '', '2011-08-12 22:54:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2308, 'View', '/MB/members/exmembers', '', '2011-08-12 22:54:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2309, 'View', '/MB/members/show/guest', '', '2011-08-12 22:54:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2310, 'View', '/MB/members/view/3', '', '2011-08-12 22:54:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2311, 'View', '/MB/members/show/guest', '', '2011-08-12 22:54:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2312, 'View', '/MB/members/view/8', '', '2011-08-12 22:54:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2313, 'View', '/MB/members/reinstate/8/false', '', '2011-08-12 22:54:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2314, 'User', 'Reinstate', 'Guest', '2011-08-12 22:54:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2315, 'View', '/MB/members/index', '', '2011-08-12 22:54:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2316, 'View', '/MB/members/exmembers', '', '2011-08-12 22:54:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2317, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:54:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2318, 'View', '/MB/members/show/guest', '', '2011-08-12 22:54:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2319, 'View', '/MB/members/exmembers', '', '2011-08-12 22:54:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2320, 'View', '/MB/members/show/Legend', '', '2011-08-12 22:54:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2321, 'View', '/MB/members/view/8', '', '2011-08-12 22:54:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2322, 'View', '/MB/members/reinstate/8', '', '2011-08-12 22:54:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2323, 'User', 'Reinstate', 'Legend', '2011-08-12 22:55:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 8);
INSERT INTO `mb_logs` VALUES(2324, 'View', '/MB/members/index', '', '2011-08-12 22:55:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2325, 'View', '/MB/members/index', '', '2011-08-12 22:55:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2326, 'View', '/MB/ranks', '', '2011-08-12 22:55:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2327, 'View', '/MB/forum', '', '2011-08-12 22:55:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2328, 'View', '/MB/members/index', '', '2011-08-12 22:56:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2329, 'View', '/MB/categories', '', '2011-08-12 22:56:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2330, 'View', '/MB/members/logout', '', '2011-08-12 22:56:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2331, 'View', '/MB/categories', '', '2011-08-12 22:56:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2332, 'View', '/MB/articles', '', '2011-08-12 22:57:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2333, 'View', '/MB/articles/view/1', '', '2011-08-12 22:58:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2334, 'Article', 'Delete', '', '2011-08-12 22:58:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2335, 'View', '/MB/articles', '', '2011-08-12 22:58:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2336, 'View', '/MB/', '', '2011-08-13 11:05:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2337, 'View', '/MB/members/index', '', '2011-08-13 11:30:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2338, 'View', '/MB/members/exmembers', '', '2011-08-13 11:30:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2339, 'View', '/MB/members/show/Legend', '', '2011-08-13 11:30:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2340, 'View', '/MB/members/index', '', '2011-08-13 11:30:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2341, 'View', '/MB/', '', '2011-08-13 12:53:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2342, 'View', '/MB/categories', '', '2011-08-13 12:53:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2343, 'View', '/MB/categories/add', '', '2011-08-13 12:53:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2344, 'View', '/MB/categories/add', '', '2011-08-13 12:53:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2345, 'View', '/MB/articles/view/1', '', '2011-08-13 12:55:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2346, 'View', '/MB/ranks', '', '2011-08-13 12:55:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2347, 'View', '/MB/articles/summary', '', '2011-08-13 12:55:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2348, 'View', '/MB/ranks/add', '', '2011-08-13 12:55:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2349, 'View', '/MB/ranks/exmembers', '', '2011-08-13 12:56:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2350, 'View', '/MB/ranks/exmembers', '', '2011-08-13 12:58:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2351, 'View', '/MB/members/index', '', '2011-08-13 12:58:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2352, 'View', '/MB/members/exmembers', '', '2011-08-13 12:58:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2353, 'View', '/MB/members/exmembers', '', '2011-08-13 12:58:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2354, 'View', '/MB/members/show/Ex-Member', '', '2011-08-13 12:58:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2355, 'View', '/MB/members/show/Legend', '', '2011-08-13 12:58:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2356, 'View', '/MB/members/exmembers', '', '2011-08-13 12:58:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2357, 'View', '/MB/ranks', '', '2011-08-13 12:58:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2358, 'View', '/MB/ranks/exmembers', '', '2011-08-13 12:58:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2359, 'View', '/MB/members/index', '', '2011-08-13 12:59:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2360, 'View', '/MB/members/exmembers', '', '2011-08-13 12:59:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2361, 'View', '/MB/members/exmembers', '', '2011-08-13 12:59:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2362, 'View', '/MB/members/exmembers', '', '2011-08-13 13:00:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2363, 'View', '/MB/members/exmembers', '', '2011-08-13 13:01:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2364, 'View', '/MB/members/exmembers', '', '2011-08-13 13:01:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2365, 'View', '/MB/members/index', '', '2011-08-13 13:01:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2366, 'View', '/MB/members/exmembers', '', '2011-08-13 13:01:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2367, 'View', '/MB/members/show/Legend', '', '2011-08-13 13:01:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2368, 'View', '/MB/ranks', '', '2011-08-13 13:02:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2369, 'View', '/MB/ranks/add', '', '2011-08-13 13:02:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2370, 'Rank', 'Edit', '', '2011-08-13 13:02:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2371, 'View', '/MB/ranks', '', '2011-08-13 13:02:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2372, 'Rank', 'Move down', '', '2011-08-13 13:03:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2373, 'View', '/MB/ranks', '', '2011-08-13 13:03:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2374, 'Rank', 'Move down', '', '2011-08-13 13:03:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2375, 'View', '/MB/ranks', '', '2011-08-13 13:03:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2376, 'View', '/MB/ranks/add', '', '2011-08-13 13:03:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2377, 'Rank', 'Edit', '', '2011-08-13 13:03:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2378, 'View', '/MB/ranks', '', '2011-08-13 13:03:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2379, 'Rank', 'Move down', '', '2011-08-13 13:03:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2380, 'View', '/MB/ranks', '', '2011-08-13 13:03:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2381, 'Rank', 'Move down', '', '2011-08-13 13:03:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2382, 'View', '/MB/ranks', '', '2011-08-13 13:03:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2383, 'Rank', 'Move down', '', '2011-08-13 13:03:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2384, 'View', '/MB/ranks', '', '2011-08-13 13:03:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2385, 'View', '/MB/ranks/edit/8', '', '2011-08-13 13:04:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2386, 'View', '/MB/ranks/edit/8', '', '2011-08-13 13:04:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2387, 'Rank', 'Delete', '', '2011-08-13 13:04:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2388, 'View', '/MB/ranks', '', '2011-08-13 13:04:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2389, 'View', '/MB/ranks/add', '', '2011-08-13 13:04:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2390, 'Rank', 'Edit', '', '2011-08-13 13:04:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2391, 'View', '/MB/ranks', '', '2011-08-13 13:04:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2392, 'Rank', 'Move down', '', '2011-08-13 13:04:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2393, 'View', '/MB/ranks', '', '2011-08-13 13:04:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2394, 'Rank', 'Move down', '', '2011-08-13 13:04:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2395, 'View', '/MB/ranks', '', '2011-08-13 13:04:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2396, 'Rank', 'Move down', '', '2011-08-13 13:04:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2397, 'View', '/MB/ranks', '', '2011-08-13 13:04:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2398, 'Rank', 'Move down', '', '2011-08-13 13:05:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2399, 'View', '/MB/ranks', '', '2011-08-13 13:05:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2400, 'View', '/MB/ranks/add', '', '2011-08-13 13:05:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2401, 'Rank', 'Edit', '', '2011-08-13 13:05:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2402, 'View', '/MB/ranks', '', '2011-08-13 13:05:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2403, 'Rank', 'Move down', '', '2011-08-13 13:05:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2404, 'View', '/MB/ranks', '', '2011-08-13 13:05:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2405, 'Rank', 'Move down', '', '2011-08-13 13:05:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2406, 'View', '/MB/ranks', '', '2011-08-13 13:05:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2407, 'Rank', 'Move down', '', '2011-08-13 13:05:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2408, 'View', '/MB/ranks', '', '2011-08-13 13:05:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2409, 'Rank', 'Move down', '', '2011-08-13 13:05:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2410, 'View', '/MB/ranks', '', '2011-08-13 13:05:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2411, 'Rank', 'Move down', '', '2011-08-13 13:05:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2412, 'View', '/MB/ranks', '', '2011-08-13 13:05:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2413, 'View', '/MB/ranks/add', '', '2011-08-13 13:05:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2414, 'Rank', 'Edit', '', '2011-08-13 13:06:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2415, 'View', '/MB/ranks', '', '2011-08-13 13:06:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2416, 'Rank', 'Move down', '', '2011-08-13 13:06:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2417, 'View', '/MB/ranks', '', '2011-08-13 13:06:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2418, 'Rank', 'Move down', '', '2011-08-13 13:06:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2419, 'View', '/MB/ranks', '', '2011-08-13 13:06:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2420, 'Rank', 'Move down', '', '2011-08-13 13:06:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2421, 'View', '/MB/ranks', '', '2011-08-13 13:06:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2422, 'Rank', 'Move down', '', '2011-08-13 13:06:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2423, 'View', '/MB/ranks', '', '2011-08-13 13:06:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2424, 'Rank', 'Move down', '', '2011-08-13 13:06:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2425, 'View', '/MB/ranks', '', '2011-08-13 13:06:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2426, 'Rank', 'Move down', '', '2011-08-13 13:06:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2427, 'View', '/MB/ranks', '', '2011-08-13 13:06:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2428, 'View', '/MB/ranks/add', '', '2011-08-13 13:06:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2429, 'Rank', 'Edit', '', '2011-08-13 13:06:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2430, 'View', '/MB/ranks', '', '2011-08-13 13:06:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2431, 'Rank', 'Move down', '', '2011-08-13 13:06:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2432, 'View', '/MB/ranks', '', '2011-08-13 13:06:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2433, 'Rank', 'Move down', '', '2011-08-13 13:06:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2434, 'View', '/MB/ranks', '', '2011-08-13 13:06:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2435, 'Rank', 'Move down', '', '2011-08-13 13:06:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2436, 'View', '/MB/ranks', '', '2011-08-13 13:06:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2437, 'Rank', 'Move down', '', '2011-08-13 13:06:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2438, 'View', '/MB/ranks', '', '2011-08-13 13:06:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2439, 'Rank', 'Move down', '', '2011-08-13 13:06:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2440, 'View', '/MB/ranks', '', '2011-08-13 13:06:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2441, 'Rank', 'Move down', '', '2011-08-13 13:06:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2442, 'View', '/MB/ranks', '', '2011-08-13 13:06:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2443, 'Rank', 'Move down', '', '2011-08-13 13:07:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2444, 'View', '/MB/ranks', '', '2011-08-13 13:07:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2445, 'Rank', 'Delete', '', '2011-08-13 13:07:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2446, 'View', '/MB/ranks', '', '2011-08-13 13:07:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2447, 'View', '/MB/ranks/add', '', '2011-08-13 13:07:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2448, 'Rank', 'Edit', '', '2011-08-13 13:07:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2449, 'View', '/MB/ranks', '', '2011-08-13 13:07:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2450, 'Rank', 'Move down', '', '2011-08-13 13:07:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2451, 'View', '/MB/ranks', '', '2011-08-13 13:07:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2452, 'Rank', 'Move down', '', '2011-08-13 13:07:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2453, 'View', '/MB/ranks', '', '2011-08-13 13:07:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2454, 'Rank', 'Move down', '', '2011-08-13 13:07:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2455, 'View', '/MB/ranks', '', '2011-08-13 13:07:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2456, 'Rank', 'Move down', '', '2011-08-13 13:07:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2457, 'View', '/MB/ranks', '', '2011-08-13 13:07:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2458, 'Rank', 'Move down', '', '2011-08-13 13:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2459, 'View', '/MB/ranks', '', '2011-08-13 13:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2460, 'Rank', 'Move down', '', '2011-08-13 13:07:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2461, 'View', '/MB/ranks', '', '2011-08-13 13:07:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2462, 'Rank', 'Move down', '', '2011-08-13 13:07:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2463, 'View', '/MB/ranks', '', '2011-08-13 13:07:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2464, 'Rank', 'Move down', '', '2011-08-13 13:07:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2465, 'View', '/MB/ranks', '', '2011-08-13 13:07:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2466, 'View', '/MB/ranks/add', '', '2011-08-13 13:08:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2467, 'Rank', 'Edit', '', '2011-08-13 13:08:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2468, 'View', '/MB/ranks', '', '2011-08-13 13:08:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2469, 'Rank', 'Move down', '', '2011-08-13 13:08:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2470, 'View', '/MB/ranks', '', '2011-08-13 13:08:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2471, 'Rank', 'Move down', '', '2011-08-13 13:08:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2472, 'View', '/MB/ranks', '', '2011-08-13 13:08:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2473, 'Rank', 'Move down', '', '2011-08-13 13:08:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2474, 'View', '/MB/ranks', '', '2011-08-13 13:08:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2475, 'Rank', 'Move down', '', '2011-08-13 13:08:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2476, 'View', '/MB/ranks', '', '2011-08-13 13:08:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2477, 'Rank', 'Move down', '', '2011-08-13 13:08:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2478, 'View', '/MB/ranks', '', '2011-08-13 13:08:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2479, 'Rank', 'Move down', '', '2011-08-13 13:08:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2480, 'View', '/MB/ranks', '', '2011-08-13 13:08:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2481, 'Rank', 'Move down', '', '2011-08-13 13:08:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2482, 'View', '/MB/ranks', '', '2011-08-13 13:08:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2483, 'Rank', 'Move down', '', '2011-08-13 13:08:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2484, 'View', '/MB/ranks', '', '2011-08-13 13:08:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2485, 'Rank', 'Move down', '', '2011-08-13 13:08:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2486, 'View', '/MB/ranks', '', '2011-08-13 13:08:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2487, 'View', '/MB/ranks/add', '', '2011-08-13 13:09:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2488, 'Rank', 'Edit', '', '2011-08-13 13:09:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2489, 'View', '/MB/ranks', '', '2011-08-13 13:09:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2490, 'Rank', 'Move down', '', '2011-08-13 13:09:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2491, 'View', '/MB/ranks', '', '2011-08-13 13:09:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2492, 'Rank', 'Move down', '', '2011-08-13 13:09:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2493, 'View', '/MB/ranks', '', '2011-08-13 13:09:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2494, 'Rank', 'Move down', '', '2011-08-13 13:09:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2495, 'View', '/MB/ranks', '', '2011-08-13 13:09:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2496, 'Rank', 'Move down', '', '2011-08-13 13:09:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2497, 'View', '/MB/ranks', '', '2011-08-13 13:09:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2498, 'Rank', 'Move down', '', '2011-08-13 13:09:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2499, 'View', '/MB/ranks', '', '2011-08-13 13:09:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2500, 'Rank', 'Move down', '', '2011-08-13 13:09:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2501, 'View', '/MB/ranks', '', '2011-08-13 13:09:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2502, 'Rank', 'Move down', '', '2011-08-13 13:09:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2503, 'View', '/MB/ranks', '', '2011-08-13 13:09:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2504, 'Rank', 'Move down', '', '2011-08-13 13:09:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2505, 'View', '/MB/ranks', '', '2011-08-13 13:09:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2506, 'Rank', 'Move down', '', '2011-08-13 13:09:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2507, 'View', '/MB/ranks', '', '2011-08-13 13:09:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2508, 'Rank', 'Move down', '', '2011-08-13 13:09:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2509, 'View', '/MB/ranks', '', '2011-08-13 13:09:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2510, 'View', '/MB/ranks/add', '', '2011-08-13 13:09:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2511, 'Rank', 'Edit', '', '2011-08-13 13:10:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2512, 'View', '/MB/ranks', '', '2011-08-13 13:10:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2513, 'Rank', 'Move down', '', '2011-08-13 13:10:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2514, 'View', '/MB/ranks', '', '2011-08-13 13:10:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2515, 'Rank', 'Move down', '', '2011-08-13 13:10:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2516, 'View', '/MB/ranks', '', '2011-08-13 13:10:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2517, 'Rank', 'Move down', '', '2011-08-13 13:10:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2518, 'View', '/MB/ranks', '', '2011-08-13 13:10:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2519, 'Rank', 'Move down', '', '2011-08-13 13:10:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2520, 'View', '/MB/ranks', '', '2011-08-13 13:10:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2521, 'Rank', 'Move down', '', '2011-08-13 13:10:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2522, 'View', '/MB/ranks', '', '2011-08-13 13:10:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2523, 'Rank', 'Move down', '', '2011-08-13 13:10:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2524, 'View', '/MB/ranks', '', '2011-08-13 13:10:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2525, 'Rank', 'Move down', '', '2011-08-13 13:10:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2526, 'View', '/MB/ranks', '', '2011-08-13 13:10:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2527, 'Rank', 'Move down', '', '2011-08-13 13:10:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2528, 'View', '/MB/ranks', '', '2011-08-13 13:10:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2529, 'Rank', 'Move down', '', '2011-08-13 13:10:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2530, 'View', '/MB/ranks', '', '2011-08-13 13:10:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2531, 'Rank', 'Move down', '', '2011-08-13 13:10:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2532, 'View', '/MB/ranks', '', '2011-08-13 13:10:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2533, 'Rank', 'Move down', '', '2011-08-13 13:10:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2534, 'View', '/MB/ranks', '', '2011-08-13 13:10:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2535, 'View', '/MB/ranks/edit/7', '', '2011-08-13 13:11:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2536, 'View', '/MB/members/index', '', '2011-08-13 13:11:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2537, 'View', '/MB/members/show/guest', '', '2011-08-13 13:11:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2538, 'View', '/MB/members/view/8', '', '2011-08-13 13:11:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2539, 'View', '/MB/members/index', '', '2011-08-13 13:11:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2540, 'View', '/MB/members/index', '', '2011-08-13 13:11:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2541, 'View', '/MB/ranks', '', '2011-08-13 13:12:03', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2542, 'View', '/MB/ranks/exmembers', '', '2011-08-13 13:13:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2543, 'View', '/MB/ranks/exmembers', '', '2011-08-13 13:13:12', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2544, 'View', '/MB/members/index', '', '2011-08-13 13:13:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2545, 'View', '/MB/members/exmembers', '', '2011-08-13 13:13:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2546, 'View', '/MB/members/show/Ex-Members', '', '2011-08-13 13:13:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2547, 'View', '/MB/members/show/Legends', '', '2011-08-13 13:13:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2548, 'View', '/MB/members/show/Ex-Members', '', '2011-08-13 13:13:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2549, 'View', '/MB/members/show/Wash Outs', '', '2011-08-13 13:13:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2550, 'View', '/MB/members/show/Ex-Members', '', '2011-08-13 13:13:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2551, 'View', '/MB/members/show/Legends', '', '2011-08-13 13:13:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2552, 'View', '/MB/forum', '', '2011-08-13 13:14:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2553, 'View', '/MB/articles/summary', '', '2011-08-13 13:14:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2554, 'View', '/MB/forum', '', '2011-08-13 13:14:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2555, 'View', '/MB/members/index', '', '2011-08-13 13:14:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2556, 'View', '/MB/', '', '2011-08-13 13:14:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2557, 'View', '/MB/news/edit/74', '', '2011-08-13 13:14:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2558, 'Post', 'Edit', '', '2011-08-13 13:14:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2559, 'View', '/MB/', '', '2011-08-13 13:14:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2560, 'View', '/MB/news/edit/74', '', '2011-08-13 13:16:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2561, 'Post', 'Edit', '', '2011-08-13 13:16:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2562, 'View', '/MB/', '', '2011-08-13 13:16:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2563, 'View', '/MB/news/edit/74', '', '2011-08-13 13:16:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2564, 'Post', 'Edit', '', '2011-08-13 13:16:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2565, 'View', '/MB/', '', '2011-08-13 13:16:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2566, 'View', '/MB/news/edit/74', '', '2011-08-13 13:16:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2567, 'Post', 'Edit', '', '2011-08-13 13:17:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2568, 'View', '/MB/', '', '2011-08-13 13:17:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2569, 'View', '/MB/forum', '', '2011-08-13 13:47:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2570, 'View', '/MB/', '', '2011-08-13 13:47:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2571, 'View', '/MB/news/edit/74', '', '2011-08-13 13:48:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2572, 'Post', 'Edit', '', '2011-08-13 13:48:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2573, 'View', '/MB/', '', '2011-08-13 13:48:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2574, 'View', '/MB/news/edit/74', '', '2011-08-13 13:48:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2575, 'Post', 'Edit', '', '2011-08-13 13:48:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2576, 'View', '/MB/', '', '2011-08-13 13:48:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2577, 'View', '/MB/forum', '', '2011-08-13 13:48:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2578, 'View', '/MB/forum', '', '2011-08-13 13:48:45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2579, 'View', '/MB/members/index', '', '2011-08-13 14:15:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2580, 'View', '/MB/ranks', '', '2011-08-13 14:15:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2581, 'View', '/MB/', '', '2011-08-13 14:16:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2582, 'View', '/MB/forum', '', '2011-08-13 14:16:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2583, 'View', '/MB/articles/summary', '', '2011-08-13 14:16:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2584, 'View', '/MB/members/index', '', '2011-08-13 14:16:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2585, 'View', '/MB/members/exmembers', '', '2011-08-13 14:16:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2586, 'View', '/MB/members/show/Legends', '', '2011-08-13 14:16:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2587, 'View', '/MB/ranks', '', '2011-08-13 14:16:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2588, 'View', '/MB/articles/view/1', '', '2011-08-13 14:16:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2589, 'View', '/MB/ranks', '', '2011-08-13 14:16:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2590, 'View', '/MB/ranks/exmembers', '', '2011-08-13 14:16:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2591, 'View', '/MB/articles/summary', '', '2011-08-13 14:16:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2592, 'View', '/MB/members/index', '', '2011-08-13 14:16:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2593, 'View', '/MB/forum', '', '2011-08-13 14:16:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2594, 'View', '/MB/members/index', '', '2011-08-13 14:16:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2595, 'View', '/MB/members/show/guest', '', '2011-08-13 14:16:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2596, 'View', '/MB/members/exmembers', '', '2011-08-13 14:16:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2597, 'View', '/MB/members/index', '', '2011-08-13 14:16:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2598, 'View', '/MB/members/view/6', '', '2011-08-13 14:17:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2599, 'View', '/MB/members/view/6', '', '2011-08-13 14:17:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2600, 'View', '/MB/members/view/6', '', '2011-08-13 14:17:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2601, 'View', '/MB/members/edit', '', '2011-08-13 14:17:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2602, 'View', '/MB/members/index', '', '2011-08-13 14:17:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2603, 'View', '/MB/members/edit/6', '', '2011-08-13 14:17:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:5.0.1) Gecko/20100101 Firefox/5.0.1', 6, 0);
INSERT INTO `mb_logs` VALUES(2604, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 19:57:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2605, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 19:58:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2606, 'View', '/maximusbrood/links', '', '2011-08-13 20:00:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2607, 'View', '/maximusbrood/links/add', '', '2011-08-13 20:00:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2608, 'Link', 'Edit', '', '2011-08-13 20:02:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2609, 'View', '/maximusbrood/links', '', '2011-08-13 20:02:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2610, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:02:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2611, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 20:02:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2612, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 20:02:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2613, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 20:02:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2614, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 20:03:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2615, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 20:04:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2616, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 20:06:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2617, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 20:07:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2618, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:08:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2619, 'View', '/maximusbrood/', '', '2011-08-13 20:11:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2620, 'View', '/maximusbrood/news/edit/74', '', '2011-08-13 20:12:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2621, 'View', '/maximusbrood/news/add', '', '2011-08-13 20:12:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2622, 'View', '/maximusbrood/news/add', '', '2011-08-13 20:12:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2623, 'View', '/maximusbrood/forum', '', '2011-08-13 20:12:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2624, 'View', '/maximusbrood/forum/view/39', '', '2011-08-13 20:12:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2625, 'View', '/maximusbrood/', '', '2011-08-13 20:12:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2626, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:18:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2627, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:48:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2628, 'View', '/maximusbrood/', '', '2011-08-13 20:48:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2629, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:53:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2630, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:54:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2631, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:54:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2632, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:54:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2633, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 20:55:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2634, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:28:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2635, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:32:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2636, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:34:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2637, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:35:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2638, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:35:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2639, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:36:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2640, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:40:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2641, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:47:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2642, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:48:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2643, 'View', '/maximusbrood/articles/view/1', '', '2011-08-13 21:51:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2644, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:51:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2645, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:54:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2646, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:54:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2647, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:56:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2648, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:56:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2649, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:56:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);
INSERT INTO `mb_logs` VALUES(2650, 'View', '/maximusbrood/articles/summary', '', '2011-08-13 21:56:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_messages`
--

CREATE TABLE `mb_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `read` tinyint(1) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mb_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `mb_permissions`
--

CREATE TABLE `mb_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `mb_permissions`
--

INSERT INTO `mb_permissions` VALUES(1, 'View Logs', '', 0);
INSERT INTO `mb_permissions` VALUES(2, 'Add Article', '', 0);
INSERT INTO `mb_permissions` VALUES(3, 'Edit Article', '', 0);
INSERT INTO `mb_permissions` VALUES(4, 'Delete Article', '', 0);
INSERT INTO `mb_permissions` VALUES(5, 'Add Board', '', 0);
INSERT INTO `mb_permissions` VALUES(6, 'Edit Board', '', 0);
INSERT INTO `mb_permissions` VALUES(7, 'Delete Board', '', 0);
INSERT INTO `mb_permissions` VALUES(8, 'Add Category', '', 0);
INSERT INTO `mb_permissions` VALUES(9, 'Edit Category', '', 0);
INSERT INTO `mb_permissions` VALUES(10, 'Delete Category', '', 0);
INSERT INTO `mb_permissions` VALUES(11, 'Add Group', '', 0);
INSERT INTO `mb_permissions` VALUES(12, 'Edit Group', '', 0);
INSERT INTO `mb_permissions` VALUES(13, 'Delete Group', '', 0);
INSERT INTO `mb_permissions` VALUES(14, 'Add Link', '', 0);
INSERT INTO `mb_permissions` VALUES(15, 'Edit Link', '', 0);
INSERT INTO `mb_permissions` VALUES(16, 'Delete Link', '', 0);
INSERT INTO `mb_permissions` VALUES(17, 'Send Messages', '', 0);
INSERT INTO `mb_permissions` VALUES(18, 'Edit Permissions', '', 0);
INSERT INTO `mb_permissions` VALUES(19, 'Add Forum', '', 1);
INSERT INTO `mb_permissions` VALUES(20, 'Edit Forum', '', 0);
INSERT INTO `mb_permissions` VALUES(21, 'Delete Forum', '', 0);
INSERT INTO `mb_permissions` VALUES(22, 'Edit Profile', '', 0);
INSERT INTO `mb_permissions` VALUES(23, 'Add Rank', '', 0);
INSERT INTO `mb_permissions` VALUES(24, 'Edit Rank', '', 0);
INSERT INTO `mb_permissions` VALUES(25, 'Delete Rank', '', 0);
INSERT INTO `mb_permissions` VALUES(26, 'Add User', '', 0);
INSERT INTO `mb_permissions` VALUES(27, 'Edit User', '', 0);
INSERT INTO `mb_permissions` VALUES(28, 'Delete User', '', 0);
INSERT INTO `mb_permissions` VALUES(29, 'Allow Login', '', 1);
INSERT INTO `mb_permissions` VALUES(33, 'View Forum', '', 1);
INSERT INTO `mb_permissions` VALUES(34, 'Forum Info', '', 0);
INSERT INTO `mb_permissions` VALUES(35, 'Post Classified', '', 0);
INSERT INTO `mb_permissions` VALUES(36, 'Post Highlighted', '', 0);
INSERT INTO `mb_permissions` VALUES(43, 'View Permanent Record', '', 0);
INSERT INTO `mb_permissions` VALUES(40, 'Add News', '', 0);
INSERT INTO `mb_permissions` VALUES(41, 'Edit News', '', 0);
INSERT INTO `mb_permissions` VALUES(42, 'Delete News', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_permissions_users`
--

CREATE TABLE `mb_permissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=977 ;

--
-- Dumping data for table `mb_permissions_users`
--

INSERT INTO `mb_permissions_users` VALUES(887, 1, 1);
INSERT INTO `mb_permissions_users` VALUES(888, 2, 1);
INSERT INTO `mb_permissions_users` VALUES(889, 3, 1);
INSERT INTO `mb_permissions_users` VALUES(890, 4, 1);
INSERT INTO `mb_permissions_users` VALUES(891, 5, 1);
INSERT INTO `mb_permissions_users` VALUES(892, 6, 1);
INSERT INTO `mb_permissions_users` VALUES(893, 7, 1);
INSERT INTO `mb_permissions_users` VALUES(894, 8, 1);
INSERT INTO `mb_permissions_users` VALUES(895, 9, 1);
INSERT INTO `mb_permissions_users` VALUES(896, 10, 1);
INSERT INTO `mb_permissions_users` VALUES(897, 11, 1);
INSERT INTO `mb_permissions_users` VALUES(898, 12, 1);
INSERT INTO `mb_permissions_users` VALUES(899, 13, 1);
INSERT INTO `mb_permissions_users` VALUES(900, 14, 1);
INSERT INTO `mb_permissions_users` VALUES(901, 15, 1);
INSERT INTO `mb_permissions_users` VALUES(902, 16, 1);
INSERT INTO `mb_permissions_users` VALUES(903, 17, 1);
INSERT INTO `mb_permissions_users` VALUES(904, 18, 1);
INSERT INTO `mb_permissions_users` VALUES(905, 19, 1);
INSERT INTO `mb_permissions_users` VALUES(906, 20, 1);
INSERT INTO `mb_permissions_users` VALUES(907, 21, 1);
INSERT INTO `mb_permissions_users` VALUES(908, 22, 1);
INSERT INTO `mb_permissions_users` VALUES(909, 23, 1);
INSERT INTO `mb_permissions_users` VALUES(910, 24, 1);
INSERT INTO `mb_permissions_users` VALUES(911, 25, 1);
INSERT INTO `mb_permissions_users` VALUES(912, 26, 1);
INSERT INTO `mb_permissions_users` VALUES(913, 27, 1);
INSERT INTO `mb_permissions_users` VALUES(914, 28, 1);
INSERT INTO `mb_permissions_users` VALUES(915, 29, 1);
INSERT INTO `mb_permissions_users` VALUES(917, 33, 1);
INSERT INTO `mb_permissions_users` VALUES(918, 34, 1);
INSERT INTO `mb_permissions_users` VALUES(919, 35, 1);
INSERT INTO `mb_permissions_users` VALUES(920, 36, 1);
INSERT INTO `mb_permissions_users` VALUES(921, 43, 1);
INSERT INTO `mb_permissions_users` VALUES(922, 40, 1);
INSERT INTO `mb_permissions_users` VALUES(923, 41, 1);
INSERT INTO `mb_permissions_users` VALUES(924, 42, 1);
INSERT INTO `mb_permissions_users` VALUES(925, 19, 4);
INSERT INTO `mb_permissions_users` VALUES(926, 29, 4);
INSERT INTO `mb_permissions_users` VALUES(927, 33, 4);
INSERT INTO `mb_permissions_users` VALUES(928, 19, 5);
INSERT INTO `mb_permissions_users` VALUES(929, 29, 5);
INSERT INTO `mb_permissions_users` VALUES(930, 33, 5);
INSERT INTO `mb_permissions_users` VALUES(970, 42, 6);
INSERT INTO `mb_permissions_users` VALUES(969, 41, 6);
INSERT INTO `mb_permissions_users` VALUES(968, 40, 6);
INSERT INTO `mb_permissions_users` VALUES(967, 43, 6);
INSERT INTO `mb_permissions_users` VALUES(966, 36, 6);
INSERT INTO `mb_permissions_users` VALUES(965, 35, 6);
INSERT INTO `mb_permissions_users` VALUES(964, 34, 6);
INSERT INTO `mb_permissions_users` VALUES(963, 33, 6);
INSERT INTO `mb_permissions_users` VALUES(962, 29, 6);
INSERT INTO `mb_permissions_users` VALUES(961, 28, 6);
INSERT INTO `mb_permissions_users` VALUES(960, 27, 6);
INSERT INTO `mb_permissions_users` VALUES(959, 26, 6);
INSERT INTO `mb_permissions_users` VALUES(958, 25, 6);
INSERT INTO `mb_permissions_users` VALUES(957, 24, 6);
INSERT INTO `mb_permissions_users` VALUES(956, 23, 6);
INSERT INTO `mb_permissions_users` VALUES(955, 22, 6);
INSERT INTO `mb_permissions_users` VALUES(954, 21, 6);
INSERT INTO `mb_permissions_users` VALUES(953, 20, 6);
INSERT INTO `mb_permissions_users` VALUES(952, 19, 6);
INSERT INTO `mb_permissions_users` VALUES(951, 18, 6);
INSERT INTO `mb_permissions_users` VALUES(950, 17, 6);
INSERT INTO `mb_permissions_users` VALUES(949, 16, 6);
INSERT INTO `mb_permissions_users` VALUES(948, 15, 6);
INSERT INTO `mb_permissions_users` VALUES(947, 14, 6);
INSERT INTO `mb_permissions_users` VALUES(946, 13, 6);
INSERT INTO `mb_permissions_users` VALUES(945, 12, 6);
INSERT INTO `mb_permissions_users` VALUES(944, 11, 6);
INSERT INTO `mb_permissions_users` VALUES(943, 10, 6);
INSERT INTO `mb_permissions_users` VALUES(942, 9, 6);
INSERT INTO `mb_permissions_users` VALUES(941, 8, 6);
INSERT INTO `mb_permissions_users` VALUES(940, 7, 6);
INSERT INTO `mb_permissions_users` VALUES(939, 6, 6);
INSERT INTO `mb_permissions_users` VALUES(938, 5, 6);
INSERT INTO `mb_permissions_users` VALUES(937, 4, 6);
INSERT INTO `mb_permissions_users` VALUES(934, 1, 6);
INSERT INTO `mb_permissions_users` VALUES(935, 2, 6);
INSERT INTO `mb_permissions_users` VALUES(936, 3, 6);
INSERT INTO `mb_permissions_users` VALUES(971, 19, 7);
INSERT INTO `mb_permissions_users` VALUES(972, 29, 7);
INSERT INTO `mb_permissions_users` VALUES(973, 33, 7);
INSERT INTO `mb_permissions_users` VALUES(974, 19, 8);
INSERT INTO `mb_permissions_users` VALUES(975, 29, 8);
INSERT INTO `mb_permissions_users` VALUES(976, 33, 8);

-- --------------------------------------------------------

--
-- Table structure for table `mb_posts`
--

CREATE TABLE `mb_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `last_post` datetime NOT NULL,
  `last_user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `stuck` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `mb_posts`
--

INSERT INTO `mb_posts` VALUES(33, '', 'asdf', '2011-07-28 01:19:54', '0000-00-00 00:00:00', 0, 22, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(32, '', 'count test', '2011-07-24 20:32:31', '0000-00-00 00:00:00', 0, 22, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(4, 'Another Test', 'This is a test post 2.', '2011-02-01 16:07:54', '2011-02-03 19:41:34', 1, 0, 1, 1, 0, 0);
INSERT INTO `mb_posts` VALUES(11, 'Last POst test', 'This ia sfdasdkjfalwekjr', '2011-02-03 18:17:55', '2011-02-03 18:17:55', 1, 0, 1, 2, 0, 0);
INSERT INTO `mb_posts` VALUES(13, '', 'Classified post reply', '2011-02-03 19:41:34', '0000-00-00 00:00:00', 0, 4, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(14, 'Highlighted', 'sadfasdf', '2011-05-18 16:05:40', '2011-05-18 16:05:40', 1, 0, 1, 3, 0, 0);
INSERT INTO `mb_posts` VALUES(15, 'From ipas', 'Jfkeoemdmd', '2011-05-23 15:12:54', '2011-05-23 15:12:54', 1, 0, 1, 2, 0, 0);
INSERT INTO `mb_posts` VALUES(39, 'asdf', 'asdf', '2011-07-30 15:25:56', '2011-08-11 16:35:32', 6, 0, 1, 5, 0, 1);
INSERT INTO `mb_posts` VALUES(38, 'asdf', 'sadf', '2011-07-30 15:25:17', '2011-07-30 15:25:17', 1, 0, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(37, 'News', 'news', '2011-07-30 15:24:29', '2011-07-30 15:24:29', 1, 0, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(36, '', 'sdfg', '2011-07-30 15:24:21', '0000-00-00 00:00:00', 0, 31, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(30, 'Tour de France', 'Andre Greipel denied Britain''s Mark Cavendish in a thrilling sprint finish to win stage 10 of the Tour de France, a 158km run from Aurillac to Carmaux.\r\n\r\nGreipel withstood Cavendish''s challenge to win in three hours 31 minutes 21 seconds, as the Briton finished second.\r\n\r\nIt was the first time Cavendish has been beaten by his former HTC teammate in a head-to-head sprint.\r\n\r\nThomas Voeckler retained his race leader''s yellow jersey, one minute 49 seconds ahead of Luis Leon Sanchez.\r\n\r\nCavendish, who won stages five and seven last week, had worked his way into an excellent position coming into the final tight turns of the stage.\r\n\r\nBut Greipel, who left HTC in acrimonious fashion last year, surged back into contention in the final 20 metres to win his first stage at le Tour.a', '2011-07-13 00:46:56', '2011-07-13 00:46:56', 1, 0, 1, 5, 0, 0);
INSERT INTO `mb_posts` VALUES(22, 'Lipsum', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\r\n\r\nwww.google.co.uk', '2011-06-29 18:50:57', '2011-07-28 01:19:59', 1, 0, 1, 5, 0, 0);
INSERT INTO `mb_posts` VALUES(23, '', 'Good', '2011-06-29 18:53:50', '0000-00-00 00:00:00', 0, 22, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(35, '', 'sfwdfa', '2011-07-30 15:06:44', '0000-00-00 00:00:00', 0, 31, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(34, '', 'â‰ˆâˆšdcvz', '2011-07-28 01:19:59', '0000-00-00 00:00:00', 0, 22, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(26, 'Lipsum', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\r\n\r\nFinn is testing an edit', '2011-06-30 11:30:42', '2011-06-30 11:30:42', 1, 0, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(27, 'Lipsum', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally ', '2011-06-30 11:31:03', '2011-06-30 11:31:03', 1, 0, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(28, 'Lipsum', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2011-06-30 11:32:05', '2011-06-30 11:32:05', 1, 0, 1, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(29, 'Lipsum', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain \r\n\r\nthat produces no resultant pleasure?\r\n\r\nFinnedit', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(31, 'Test', 'test', '2011-07-13 15:15:38', '2011-07-30 15:24:21', 1, 0, 1, 1, 0, 0);
INSERT INTO `mb_posts` VALUES(40, 'bbcode test', 'testing some bbcode\r\n\r\n[b]this should be bold[/b]\r\n\r\n[i]italic[/i]\r\n\r\n[u] underlined [/u]', '2011-08-04 22:23:42', '2011-08-10 11:00:21', 6, 0, 6, 2, 0, 0);
INSERT INTO `mb_posts` VALUES(41, 'why', '[SIZE=9]small[/SIZE]\r\n\r\n[SIZE=13]normal[/SIZE]\r\n\r\n[SIZE=20]large[/SIZE]\r\n\r\n[SIZE=26]huge[/SIZE]\r\n\r\n[SIZE=36]massive[/SIZE]', '2011-08-04 22:25:04', '0000-00-00 00:00:00', 0, 40, 6, 2, 0, 0);
INSERT INTO `mb_posts` VALUES(42, '', '[img]http://images.wikia.com/starcraft/images/2/2c/Starcraft_SC1_Cover1.jpg[/img]\r\n\r\nThis is image test', '2011-08-04 22:28:11', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(43, 'not needed', 'does autolink still work? http://www.google.com', '2011-08-04 22:31:26', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(45, '', 'quoting bbcode\r\n\r\n[quote]\r\nThis is a quote\r\n[/quote]', '2011-08-04 23:04:17', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(46, '', 'adding a link\r\n\r\n[url]http://www.google.com[/url]\r\n\r\n[url]www.yahoo.com[/url]', '2011-08-04 23:06:27', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(47, '1', '[img]http://images.wikia.com/starcraft/images/2/2c/Starcraft_SC1_Cover1.jpg[/img]', '2011-08-09 16:07:08', '0000-00-00 00:00:00', 0, 40, 6, 2, 0, 0);
INSERT INTO `mb_posts` VALUES(48, '', '[youtube]http://www.youtube.com/watch?v=xLYiIBCN9ec[/youtube]', '2011-08-09 16:18:12', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(49, 't', '[color=red]Is this red text[/color]', '2011-08-09 17:13:50', '0000-00-00 00:00:00', 0, 40, 6, 2, 0, 0);
INSERT INTO `mb_posts` VALUES(50, '', 'test', '2011-08-09 20:46:40', '0000-00-00 00:00:00', 0, 39, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(51, 'test', 'testtest', '2011-08-09 20:46:48', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(52, '', '[b]test[/b]', '2011-08-09 20:46:56', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(53, '', '[quote=Chewits]\r\nThe forum is a place for talking away from Battle.NET. This is the port of call for all official clan announcements such as promotions, clan wars and any other events that happen to be taking place.\r\n[/quote]', '2011-08-10 00:55:29', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(54, '', '[img]http://eu.starcraft2.com/images/wallpapers/wall2/wall2-1920x1200.jpg[/img]\r\n\r\n\r\nThis is a very big image', '2011-08-10 01:07:34', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(55, '', 'http://www.google.com\r\n\r\n[font=verdana][color=blue][align=center]This is blue verdana center[/align][/color][/font]', '2011-08-10 01:20:56', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(58, 't', '[COLOR=#FF0000][SIZE=10][ALIGN=right]This is size 4 red text aligned right.[/ALIGN][/SIZE][/COLOR]\r\n\r\n[LIST=1]\r\n[*]apple[/*]\r\n[*]orange[/*]\r\n[*]bananna[/*]\r\n[/LIST=1]\r\n\r\n[S]strikethrough[/S]\r\n\r\n[EMAIL]mgillespie@hotmail.co.uk[/EMAIL]\r\n\r\n', '2011-08-10 10:34:31', '0000-00-00 00:00:00', 0, 40, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(63, '', '[COLOR=#FF4500]test[/COLOR]', '2011-08-10 11:09:41', '0000-00-00 00:00:00', 0, 39, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(64, '', '[youtube]http://www.youtube.com/watch?v=883yQqdOaLg&feature=player_embedded[/youtube]', '2011-08-10 11:32:04', '0000-00-00 00:00:00', 0, 39, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(65, '', 'test', '2011-08-10 21:07:43', '0000-00-00 00:00:00', 0, 39, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(66, '', 'test', '2011-08-10 22:03:39', '0000-00-00 00:00:00', 0, 39, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(70, '', '[IMG][IMG][EMAIL=][/EMAIL]', '2011-08-10 22:36:47', '0000-00-00 00:00:00', 0, 39, 6, 0, 0, 0);
INSERT INTO `mb_posts` VALUES(74, 'news test rename', 'bbcode test\r\n\r\n[COLOR=#008000]why are you putting lines here[/COLOR]', '2011-08-10 22:48:27', '2011-08-10 22:48:27', 6, 0, 6, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_profiles`
--

CREATE TABLE `mb_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `signature` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `akas` varchar(255) NOT NULL,
  `sc2` varchar(255) NOT NULL,
  `iccup` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `msn` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `private_description` text NOT NULL,
  `recruiter` varchar(255) NOT NULL,
  `sc2name` varchar(255) NOT NULL,
  `sc2code` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mb_profiles`
--

INSERT INTO `mb_profiles` VALUES(1, 'Soviet[MB]', 1, 'Finn', 'finn@fake.com', '2031-01-27', 'United Kingdom', 'Soviet[MB]', 'http://eu.battle.net/sc2/en/profile/1209066/1/Soviet/', '', 'fgrimwood', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'tJokkie[MB]', '', '');
INSERT INTO `mb_profiles` VALUES(2, '', 2, 'Simon', '', '2031-01-01', 'United Kingdom', '', 'http://www.google.co.uk', '', '', '', '', '', '', '', '', '');
INSERT INTO `mb_profiles` VALUES(4, '', 5, 'Andy', '', '1984-07-30', 'United Kingdom', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `mb_profiles` VALUES(5, '', 6, 'Matt', '', '2011-08-01', 'United Kingdom', '', '', '', '', '', '', '', '', '', 'Chewits', '957');
INSERT INTO `mb_profiles` VALUES(6, '', 7, 'testdate', '', '1929-08-04', 'Andorra', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `mb_profiles` VALUES(7, '', 8, 'test', '', '2011-08-10', 'United Kingdom', '', '', '', '', '', '', '', '', '', 'testname', '123');

-- --------------------------------------------------------

--
-- Table structure for table `mb_ranks`
--

CREATE TABLE `mb_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `exmember` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `mb_ranks`
--

INSERT INTO `mb_ranks` VALUES(4, 21, 'Commander', 'The Commander is the highest and most prestigious rank within the clan. It was introduced in 2002 following a change in leadership. The Commander supersedes the General as the person responsible for maintaining whole clan, both SC and SC2, and making the choices and decisions which will see it prosper. The Commander is personally responsible for sorting out arguments which get out of hand between members, and enforcing the rules as stated on the rules section of the site. Only long standing members with exemplary service records may be promoted to the position of Commander, and they must be aware of the responsibility it entails.', 0);
INSERT INTO `mb_ranks` VALUES(18, 13, 'Lieutenant', 'You''ve earned the respect and trust of the seniors by now, you must have been active to get here. You are expected to take some responsibility now for members in the lower ranks, helping them out and generally giving the clan a positive feel. Any minor squabbles between privates for example, you should be looking to sort out if you are the ranking officer on site. Continue to earn more respect and learn the value of patience, loyalty and commitment, and you will soon be rising up the rankings again.', 0);
INSERT INTO `mb_ranks` VALUES(2, 4, 'Private', 'Congratulations! You achieved it. You are a normal and functional member of our clan. Do you have what it takes to be more then "normal"? Loyalty and activity will help you to advance further from this position...\r\nUsually all members pass this rank, unless they are lured by the "dark side" and join another clan.\r\nAre you with us, or against us, young padawan?...', 0);
INSERT INTO `mb_ranks` VALUES(3, 3, 'Trialist', 'A person who is still on trial period for a full [MB] membership. Activity, manners, devotion, attitude and even skill sometimes are considered. This is a very vulnerable position to be in... \r\n', 0);
INSERT INTO `mb_ranks` VALUES(6, 20, 'General', 'The rank of General was originally the leading rank in the clan. The rank still holds a huge amount of importance and responsibility. Members can only get to this rank through because active on a very regular basis, and contributing much to the clan on battle.net and on the website forum. The general is expected to support his Commander(s), backing them up and helping to implement their decisions. Generals may also be expected to take on an additional task, such as running a tournament or league. They are also responsible for monitoring the progress of trialists and reporting to the Commander. It is extremely important that Generals are in place to help the Commander with the running of the clan, hence why they''re specific for either Starcraft or Starcraft II. For this reason, inactive Generals will not be tolerated and demoted very quickly. Getting to this rank is all about loyalty, ambition and activity.', 0);
INSERT INTO `mb_ranks` VALUES(7, 2, 'Guest', 'An official guest of the clan.', 0);
INSERT INTO `mb_ranks` VALUES(14, 17, 'Colonel', 'Greatness and sealing your place in the top cheese of the Maximus Brood are only a stone''s throw away here. Can you handle more responsibility? Taking on commitments, for example organising a miniature tournament, offering to help maintain member profiles, or just high levels of activity are ways to prove that you are indeed worthy of more responsibility and progressing higher up the rankings system. Keep the lower ranks in order, give advice to you fellow members and generally help out will make the Commanders sit down and realise a promotion is just what you need.', 0);
INSERT INTO `mb_ranks` VALUES(9, 1, 'Legends', 'These members served with distinction within the clan, and should be commended for their period of service. Most of these members made a significant impact on the Brood, and parted on good terms - or at least left stories and events well worth re-telling! This is our tribute to them.', 1);
INSERT INTO `mb_ranks` VALUES(10, 2, 'Ex-Members', 'Having served with the clan for a period, these members decided to part ways with the clan, to fade into the mists of time.. they are welcome to re-trial in the future should they wish to do so.', 1);
INSERT INTO `mb_ranks` VALUES(11, 3, 'Wash Outs', 'These ex-members took a stroll down wash-out lane after leaving the clan in anonymity or disgrace. Don''t call us wash-out, we''ll call you.', 1);
INSERT INTO `mb_ranks` VALUES(12, 19, 'Lieutenant General', 'The Lieutenant General is a major tier up in the ranking system. From this rank up, the responsibility grows enormously, and the new powers are more noticeable. Lieutenant Generals are expected to help maintain member profiles and generally keep their finger on the pulse, reporting to their Generals and Commanders on issues they think they should be aware of. A Lieutenant General is often a very long standing member, who has show loyalty and commitment. They also hold deputy positions in some of the squads, and for this reason it is essential that they are active in order to facilitate the process of organising squad matches.', 0);
INSERT INTO `mb_ranks` VALUES(13, 18, 'Brigadier', 'This rank normally holds the old school active players, everyone respects them cause they are in the clan for ages and are mannered and open to others. Take on some more responsibilities and in time you will get here!', 0);
INSERT INTO `mb_ranks` VALUES(15, 16, 'Lieutenant-Colonel', 'By now you know what the Maximus Brood is all about. You will be expected to fully support the decisions of senior Commanders and Generals, and generally help out with keeping the lower ranks in order in any way possible. Continue to respect the judgement of your long standing and senior members. Often, members at this stage will delay further progress by getting frustrated and starting to question the wisdom of higher rankings. This will see you crashing back down to a lower rank, so you must remember never to do this. Continue to earn respect, wisdom and loyalty and this will see you through up to the next ranking.', 0);
INSERT INTO `mb_ranks` VALUES(16, 15, 'Major', 'Hooah solider! You''re almost out of the middle phase of rankings now, but this rank is often a frustrating wait to make it into the big time. Your loyalty and commitment are to be tested to the full here, but that is not the only thing that you must prove in order to get a higher rank. You should have proven that you can handle minor responsibilities, and must show the ambition to take on more and help the clan to grow and expand.', 0);
INSERT INTO `mb_ranks` VALUES(17, 14, 'Captain', 'Captains should actively be looking to get involved in all aspects of clan life. You must be looking to extend your knowledge and respect to help out new recruits and guide them in the right direction. Your loyalty and commitment to get to this stage would have been tested, but you''re still not leadership material yet, soldier! Keep those lower rankings in line, keep the arguments at bay and the Commanders will be forced to take notice of you.', 0);
INSERT INTO `mb_ranks` VALUES(19, 12, 'Sergeant', 'Every army will say the same, the war was won by the guys on the ground. And the most important guy on the ground is the Sergeant. He must keep the troops going forward and be persistent in holding up the clans values! Your experience got you here, take it a step further by for example managing a team or event.\r\n', 0);
INSERT INTO `mb_ranks` VALUES(20, 8, 'Corporal', 'Corporals are very important for the clan they symbolize steady clan members who have stood out from the crowd. Big things may lie ahead if you just stick to it, take the initiative to go up the ranks!', 0);
INSERT INTO `mb_ranks` VALUES(21, 7, 'Lance-Corporal', 'Your first promotion, well done! You''re starting to be noticed for your loyalty or initiative. Try to be a help for the clan by participating in clan wars, league and squad wars.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_users`
--

CREATE TABLE `mb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `post_count` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mb_users`
--

INSERT INTO `mb_users` VALUES(1, 'Finn', 'd019471679ac7a9af5a536ac6c6b13f245832dc2', 20, 5);
INSERT INTO `mb_users` VALUES(2, 'Test', '88155109a8bb9f21f05c35991c41c70823d21f5a', 0, 4);
INSERT INTO `mb_users` VALUES(3, 'TestGuest', '13f67e1192bbfe5d1c06d688be40e036a4110ff0', 0, 7);
INSERT INTO `mb_users` VALUES(4, 'Perm', '13f67e1192bbfe5d1c06d688be40e036a4110ff0', 0, 7);
INSERT INTO `mb_users` VALUES(5, 'Artanis[MB]', 'd7cccb428dd88f37d2d9db584804a097839c62a2', 0, 9);
INSERT INTO `mb_users` VALUES(6, 'Chewits[MB]', 'a2ba06a24be2c9629a993d2ec23b0b182d4bb10a', 22, 5);
INSERT INTO `mb_users` VALUES(7, 'testdate', '13f67e1192bbfe5d1c06d688be40e036a4110ff0', 0, 3);
INSERT INTO `mb_users` VALUES(8, 'testtest', 'bce8533c16a368ab00fbb4891443afd2ec4ee7df', 0, 7);
