/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : newrecord

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-07-17 22:01:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 轮播图', '8', 'add_banner');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 轮播图', '8', 'change_banner');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 轮播图', '8', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 邮箱验证码', '9', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 邮箱验证码', '9', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 邮箱验证码', '9', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('28', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('29', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('30', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('31', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('32', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('33', 'Can view 轮播图', '8', 'view_banner');
INSERT INTO `auth_permission` VALUES ('34', 'Can view 邮箱验证码', '9', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('35', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('36', 'Can add 标签', '10', 'add_tag');
INSERT INTO `auth_permission` VALUES ('37', 'Can change 标签', '10', 'change_tag');
INSERT INTO `auth_permission` VALUES ('38', 'Can delete 标签', '10', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('39', 'Can add 分类', '11', 'add_category');
INSERT INTO `auth_permission` VALUES ('40', 'Can change 分类', '11', 'change_category');
INSERT INTO `auth_permission` VALUES ('41', 'Can delete 分类', '11', 'delete_category');
INSERT INTO `auth_permission` VALUES ('42', 'Can add 笔记', '12', 'add_notes');
INSERT INTO `auth_permission` VALUES ('43', 'Can change 笔记', '12', 'change_notes');
INSERT INTO `auth_permission` VALUES ('44', 'Can delete 笔记', '12', 'delete_notes');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 未公开的笔记', '12', 'add_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 未公开的笔记', '12', 'change_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 未公开的笔记', '12', 'delete_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 分类', '11', 'view_category');
INSERT INTO `auth_permission` VALUES ('49', 'Can view 未公开的笔记', '13', 'view_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('50', 'Can view 笔记', '12', 'view_notes');
INSERT INTO `auth_permission` VALUES ('51', 'Can view 标签', '10', 'view_tag');
INSERT INTO `auth_permission` VALUES ('52', 'Can add Bookmark', '14', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('53', 'Can change Bookmark', '14', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete Bookmark', '14', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('55', 'Can add User Setting', '15', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('56', 'Can change User Setting', '15', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete User Setting', '15', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('58', 'Can add User Widget', '16', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('59', 'Can change User Widget', '16', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete User Widget', '16', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('61', 'Can add log entry', '17', 'add_log');
INSERT INTO `auth_permission` VALUES ('62', 'Can change log entry', '17', 'change_log');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete log entry', '17', 'delete_log');
INSERT INTO `auth_permission` VALUES ('64', 'Can view Bookmark', '14', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('65', 'Can view log entry', '17', 'view_log');
INSERT INTO `auth_permission` VALUES ('66', 'Can view User Setting', '15', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('67', 'Can view User Widget', '16', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('68', 'Can add captcha store', '18', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('69', 'Can change captcha store', '18', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('70', 'Can delete captcha store', '18', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('71', 'Can view captcha store', '18', 'view_captchastore');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('18', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('11', 'notes', 'category');
INSERT INTO `django_content_type` VALUES ('13', 'notes', 'nopublicnotes');
INSERT INTO `django_content_type` VALUES ('12', 'notes', 'notes');
INSERT INTO `django_content_type` VALUES ('10', 'notes', 'tag');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('14', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('17', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('15', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('16', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-07-17 21:37:46.916000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-07-17 21:37:54.692000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-07-17 21:37:56.406000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-07-17 21:37:56.520000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-07-17 21:37:57.666000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-07-17 21:37:58.413000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-07-17 21:37:59.164000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-07-17 21:37:59.213000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-07-17 21:37:59.732000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-07-17 21:37:59.772000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-07-17 21:37:59.823000');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2017-07-17 21:38:00.324000');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2017-07-17 21:38:50.787000');
INSERT INTO `django_migrations` VALUES ('14', 'captcha', '0001_initial', '2017-07-17 21:40:07.829000');
INSERT INTO `django_migrations` VALUES ('15', 'notes', '0001_initial', '2017-07-17 21:40:11.928000');
INSERT INTO `django_migrations` VALUES ('16', 'xadmin', '0001_initial', '2017-07-17 21:40:17.047000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('779kmyr29d44xi13rlzh6p1x6r3lem6a', 'MTQ2YjgyY2QxZGZhMzUwZjYzMTA4Y2EyZmM0MDMyN2M4N2M3ZDg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1sibm90ZXMiLCJub3RlcyJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNmM1MGU5ZjQwODBiMDM4MWUwZDQ3NjEwYzViYTFmYTNhNjk5YmRlNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-07-31 21:59:48.482000');
INSERT INTO `django_session` VALUES ('vwckr5fj410gnzwwbwm5k3f1uja7ingx', 'MTQ2YjgyY2QxZGZhMzUwZjYzMTA4Y2EyZmM0MDMyN2M4N2M3ZDg0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1sibm90ZXMiLCJub3RlcyJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNmM1MGU5ZjQwODBiMDM4MWUwZDQ3NjEwYzViYTFmYTNhNjk5YmRlNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-07-31 21:47:33.455000');

-- ----------------------------
-- Table structure for notes_category
-- ----------------------------
DROP TABLE IF EXISTS `notes_category`;
CREATE TABLE `notes_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes_category
-- ----------------------------
INSERT INTO `notes_category` VALUES ('1', '篮球');

-- ----------------------------
-- Table structure for notes_notes
-- ----------------------------
DROP TABLE IF EXISTS `notes_notes`;
CREATE TABLE `notes_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_notes_author_id_956b8ae9_fk_users_userprofile_id` (`author_id`),
  KEY `notes_notes_category_id_76349cee_fk_notes_category_id` (`category_id`),
  CONSTRAINT `notes_notes_author_id_956b8ae9_fk_users_userprofile_id` FOREIGN KEY (`author_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `notes_notes_category_id_76349cee_fk_notes_category_id` FOREIGN KEY (`category_id`) REFERENCES `notes_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes_notes
-- ----------------------------
INSERT INTO `notes_notes` VALUES ('1', '111111111111111', '<p>11111111111111111111111111111111111</p>', '0', 'notes/2017/07/4610b912c8fcc3ce915889509145d688d43f203c.jpg', '0', '1', '2017-07-17 21:43:00.000000', '1', '1');
INSERT INTO `notes_notes` VALUES ('2', '2', '<p>22222222222222222222222222</p>', '0', 'notes/2017/07/2e1c79babe2a193b90338211d9176a3c.jpg', '0', '1', '2017-07-17 21:46:00.000000', '1', '1');
INSERT INTO `notes_notes` VALUES ('4', '33333333', '<p>333333333333333333333333333</p>', '0', 'notes/2017/07/1c3193b341d598068312e735d6247e7b_Rxg6toX.jpg', '0', '1', '2017-07-17 21:56:19.106000', '1', '1');

-- ----------------------------
-- Table structure for notes_notes_tag
-- ----------------------------
DROP TABLE IF EXISTS `notes_notes_tag`;
CREATE TABLE `notes_notes_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notes_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notes_notes_tag_notes_id_c739c82a_uniq` (`notes_id`,`tag_id`),
  KEY `notes_notes_tag_tag_id_04cfcd8a_fk_notes_tag_id` (`tag_id`),
  CONSTRAINT `notes_notes_tag_notes_id_5ca07bc8_fk_notes_notes_id` FOREIGN KEY (`notes_id`) REFERENCES `notes_notes` (`id`),
  CONSTRAINT `notes_notes_tag_tag_id_04cfcd8a_fk_notes_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `notes_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes_notes_tag
-- ----------------------------
INSERT INTO `notes_notes_tag` VALUES ('1', '1', '1');
INSERT INTO `notes_notes_tag` VALUES ('2', '2', '1');

-- ----------------------------
-- Table structure for notes_tag
-- ----------------------------
DROP TABLE IF EXISTS `notes_tag`;
CREATE TABLE `notes_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes_tag
-- ----------------------------
INSERT INTO `notes_tag` VALUES ('1', '篮球');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$UYgLYhEMU3ET$KJaaDEDgv4mg/OqBKzxGPGiZl2wvfLmJFk3qwhSDSh4=', '2017-07-17 21:55:59.611000', '1', 'liuyc', '', '', '2@qq.com', '1', '1', '2017-07-17 21:39:24.396000', '', null, 'female', '', null, 'images/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-07-17 21:41:23.725000', '127.0.0.1', '1', '篮球', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-07-17 21:43:03.231000', '127.0.0.1', '1', '篮球', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-07-17 21:43:38.535000', '127.0.0.1', '1', '111111111111111', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-07-17 21:47:32.627000', '127.0.0.1', '2', '2', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-07-17 21:59:47.856000', '127.0.0.1', null, '', 'delete', '批量删除 1 个 笔记', null, '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
