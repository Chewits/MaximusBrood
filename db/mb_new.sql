-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2011 at 03:45 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `mb_groups_users`
--

INSERT INTO `mb_groups_users` VALUES(28, 4, 1);
INSERT INTO `mb_groups_users` VALUES(29, 4, 2);
INSERT INTO `mb_groups_users` VALUES(27, 5, 1);

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
  `action` varchar(255) NOT NULL DEFAULT 'index',
  `url` text NOT NULL,
  `permission_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `mb_links`
--

INSERT INTO `mb_links` VALUES(3, 16, 'Add User', '', 'users', 'add', '', 26, 6);
INSERT INTO `mb_links` VALUES(6, 17, 'Members', '', 'users', 'index', '', 0, 0);
INSERT INTO `mb_links` VALUES(4, 12, 'Ranks', '', 'ranks', 'index', '', 0, 0);
INSERT INTO `mb_links` VALUES(5, 3, 'Log', '', 'logs', 'index', '', 1, 0);
INSERT INTO `mb_links` VALUES(16, 13, 'View Guests', '', 'users', 'show/guest', '', 0, 6);
INSERT INTO `mb_links` VALUES(7, 10, 'Add Rank', '', 'ranks', 'add', '', 23, 4);
INSERT INTO `mb_links` VALUES(10, 4, 'Add Link', '', 'links', 'add', '', 14, 9);
INSERT INTO `mb_links` VALUES(19, 21, 'News', '', 'news', '', '', 0, 0);
INSERT INTO `mb_links` VALUES(17, 19, 'Forum', '', 'forum', 'index', '', 0, 0);
INSERT INTO `mb_links` VALUES(18, 18, 'New Thread', '', 'forum', 'add', '', 19, 17);
INSERT INTO `mb_links` VALUES(20, 20, 'Add News', '', 'news', 'add', '', 40, 19);
INSERT INTO `mb_links` VALUES(21, 7, 'Rules', '', 'articles', 'view/1', '', 0, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=915 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=928 ;

--
-- Dumping data for table `mb_permissions_users`
--

INSERT INTO `mb_permissions_users` VALUES(924, 42, 1);
INSERT INTO `mb_permissions_users` VALUES(923, 41, 1);
INSERT INTO `mb_permissions_users` VALUES(922, 40, 1);
INSERT INTO `mb_permissions_users` VALUES(921, 43, 1);
INSERT INTO `mb_permissions_users` VALUES(920, 36, 1);
INSERT INTO `mb_permissions_users` VALUES(919, 35, 1);
INSERT INTO `mb_permissions_users` VALUES(918, 34, 1);
INSERT INTO `mb_permissions_users` VALUES(917, 33, 1);
INSERT INTO `mb_permissions_users` VALUES(916, 32, 1);
INSERT INTO `mb_permissions_users` VALUES(915, 29, 1);
INSERT INTO `mb_permissions_users` VALUES(914, 28, 1);
INSERT INTO `mb_permissions_users` VALUES(913, 27, 1);
INSERT INTO `mb_permissions_users` VALUES(912, 26, 1);
INSERT INTO `mb_permissions_users` VALUES(911, 25, 1);
INSERT INTO `mb_permissions_users` VALUES(910, 24, 1);
INSERT INTO `mb_permissions_users` VALUES(909, 23, 1);
INSERT INTO `mb_permissions_users` VALUES(908, 22, 1);
INSERT INTO `mb_permissions_users` VALUES(907, 21, 1);
INSERT INTO `mb_permissions_users` VALUES(906, 20, 1);
INSERT INTO `mb_permissions_users` VALUES(905, 19, 1);
INSERT INTO `mb_permissions_users` VALUES(904, 18, 1);
INSERT INTO `mb_permissions_users` VALUES(903, 17, 1);
INSERT INTO `mb_permissions_users` VALUES(902, 16, 1);
INSERT INTO `mb_permissions_users` VALUES(901, 15, 1);
INSERT INTO `mb_permissions_users` VALUES(900, 14, 1);
INSERT INTO `mb_permissions_users` VALUES(899, 13, 1);
INSERT INTO `mb_permissions_users` VALUES(898, 12, 1);
INSERT INTO `mb_permissions_users` VALUES(897, 11, 1);
INSERT INTO `mb_permissions_users` VALUES(896, 10, 1);
INSERT INTO `mb_permissions_users` VALUES(895, 9, 1);
INSERT INTO `mb_permissions_users` VALUES(894, 8, 1);
INSERT INTO `mb_permissions_users` VALUES(893, 7, 1);
INSERT INTO `mb_permissions_users` VALUES(892, 6, 1);
INSERT INTO `mb_permissions_users` VALUES(891, 5, 1);
INSERT INTO `mb_permissions_users` VALUES(890, 4, 1);
INSERT INTO `mb_permissions_users` VALUES(889, 3, 1);
INSERT INTO `mb_permissions_users` VALUES(888, 2, 1);
INSERT INTO `mb_permissions_users` VALUES(887, 1, 1);
INSERT INTO `mb_permissions_users` VALUES(925, 19, 4);
INSERT INTO `mb_permissions_users` VALUES(926, 29, 4);
INSERT INTO `mb_permissions_users` VALUES(927, 33, 4);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

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
INSERT INTO `mb_posts` VALUES(39, 'asdf', 'asdf', '2011-07-30 15:25:56', '2011-07-30 15:25:56', 1, 0, 1, 5, 0, 0);
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mb_profiles`
--

INSERT INTO `mb_profiles` VALUES(1, 'Soviet[MB]', 1, 'Finn', 'finn@fake.com', '2031-01-27', 'United Kingdom', 'Soviet[MB]', 'http://eu.battle.net/sc2/en/profile/1209066/1/Soviet/', '', 'fgrimwood', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'tJokkie[MB]');
INSERT INTO `mb_profiles` VALUES(2, '', 2, 'Simon', '', '2031-01-01', 'United Kingdom', '', 'http://www.google.co.uk', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mb_ranks`
--

CREATE TABLE `mb_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `exmember` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mb_ranks`
--

INSERT INTO `mb_ranks` VALUES(4, 8, 'Commander', 'The Commander is the highest and most prestigious rank within the clan. It was introduced in 2002 following a change in leadership. The Commander supersedes the General as the person responsible for maintaining whole clan, both SC and SC2, and making the choices and decisions which will see it prosper. The Commander is personally responsible for sorting out arguments which get out of hand between members, and enforcing the rules as stated on the rules section of the site. Only long standing members with exemplary service records may be promoted to the position of Commander, and they must be aware of the responsibility it entails.', 0);
INSERT INTO `mb_ranks` VALUES(5, 5, 'Corporal', 'Corporals are very important for the clan they symbolize steady clan members who have stood out from the crowd. Big things may lie ahead if you just stick to it, take the initiative to go up the ranks!\r\n', 0);
INSERT INTO `mb_ranks` VALUES(2, 4, 'Private', 'Congratulations! You achieved it. You are a normal and functional member of our clan. Do you have what it takes to be more then "normal"? Loyalty and activity will help you to advance further from this position...\r\nUsually all members pass this rank, unless they are lured by the "dark side" and join another clan.\r\nAre you with us, or against us, young padawan?...', 0);
INSERT INTO `mb_ranks` VALUES(3, 3, 'Trialist', 'A person who is still on trial period for a full [MB] membership. Activity, manners, devotion, attitude and even skill sometimes are considered. This is a very vulnerable position to be in... \r\n', 0);
INSERT INTO `mb_ranks` VALUES(6, 7, 'General', 'The rank of General was originally the leading rank in the clan. The rank still holds a huge amount of importance and responsibility. Members can only get to this rank through because active on a very regular basis, and contributing much to the clan on battle.net and on the website forum. The general is expected to support his Commander(s), backing them up and helping to implement their decisions. Generals may also be expected to take on an additional task, such as running a tournament or league. They are also responsible for monitoring the progress of trialists and reporting to the Commander. It is extremely important that Generals are in place to help the Commander with the running of the clan, hence why they''re specific for either Starcraft or Starcraft II. For this reason, inactive Generals will not be tolerated and demoted very quickly. Getting to this rank is all about loyalty, ambition and activity.', 0);
INSERT INTO `mb_ranks` VALUES(7, 2, 'Guest', 'an official guest of the clan', 0);
INSERT INTO `mb_ranks` VALUES(8, 6, 'Colonel', 'sdfaasdf', 0);
INSERT INTO `mb_ranks` VALUES(9, 0, 'Legend', 'Legend of the clan', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mb_users`
--

INSERT INTO `mb_users` VALUES(1, 'Finn', 'd019471679ac7a9af5a536ac6c6b13f245832dc2', 20, 6);
INSERT INTO `mb_users` VALUES(2, 'Test', '88155109a8bb9f21f05c35991c41c70823d21f5a', 0, 4);
INSERT INTO `mb_users` VALUES(3, 'TestGuest', '13f67e1192bbfe5d1c06d688be40e036a4110ff0', 0, 7);
INSERT INTO `mb_users` VALUES(4, 'Perm', '13f67e1192bbfe5d1c06d688be40e036a4110ff0', 0, 7);
