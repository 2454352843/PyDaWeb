/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : pyda

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-07 22:51:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
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
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 用户', '7', 'add_user');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 用户', '7', 'change_user');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 用户', '7', 'delete_user');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 用户', '7', 'view_user');
INSERT INTO `auth_permission` VALUES ('29', 'Can add captcha store', '8', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('30', 'Can change captcha store', '8', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete captcha store', '8', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('32', 'Can view captcha store', '8', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('33', 'Can add question', '9', 'add_question');
INSERT INTO `auth_permission` VALUES ('34', 'Can change question', '9', 'change_question');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete question', '9', 'delete_question');
INSERT INTO `auth_permission` VALUES ('36', 'Can view question', '9', 'view_question');
INSERT INTO `auth_permission` VALUES ('37', 'Can add answer', '10', 'add_answer');
INSERT INTO `auth_permission` VALUES ('38', 'Can change answer', '10', 'change_answer');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete answer', '10', 'delete_answer');
INSERT INTO `auth_permission` VALUES ('40', 'Can view answer', '10', 'view_answer');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$120000$A7it8njMCZwc$HPQ4CVagEEccN0pBh33VrWAXJB7qRCnVjSR9XvFDpMM=', '2019-06-07 17:47:10.373659', '1', 'admin', '', '', '123456789@qq.com', '1', '1', '2019-06-07 09:58:19.507861');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `captcha_captchastore`
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-06-07 09:59:10.898274', '1', 'test1', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-06-07 09:59:21.660218', '2', 'test2', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-06-07 09:59:35.889061', '3', 'test3', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-06-07 12:39:52.643478', '1', '1+1', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-06-07 12:39:59.754981', '2', '2+2', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-06-07 12:40:14.329633', '3', '1+1', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-06-07 12:40:32.217802', '4', '6+6', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-06-07 12:56:16.209834', '4', '6+6', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-06-07 12:56:21.757569', '3', '1+1', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-06-07 12:56:24.981564', '1', '1+1', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-06-07 12:56:27.156509', '2', '2+2', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-06-07 12:56:44.677517', '1', '1+1', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-06-07 12:56:48.300783', '3', '1+1', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-06-07 13:11:54.458694', '4', '6+6', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-06-07 13:24:25.732295', '5', '该值为True时，Django在数据库用NULL保存空值。默认值为False。对于保存字符串类型数据的字段，请尽量避免将此参数设为True，那样会导致两种‘没有数据’的情况，一种是NULL，另一种是‘空字符串’。', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-06-07 13:24:42.486451', '6', 'True时，字段可以为空。默认False。和null参数不同的是，null是纯数据库层面的，而blank是验证相关的，它与表单验证是否允许输入框内为空有关，与数据库无关。所以要小心一个null为False，blank为True的字段接收到一个空值可能会出bug或异常。', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-06-07 13:48:28.706950', '1', '1+1', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-06-07 13:48:41.511409', '2', '2+2', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2019-06-07 13:48:55.919829', '1', '1+1', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2019-06-07 13:49:07.002238', '3', '1+1', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2019-06-07 14:36:07.031663', '7', '用于页面上的选择框标签，需要先提供一个二维的二元元组，第一个元素表示存在数据库内真实的值，第二个表示页面上显示的具体内容。在浏览器页面上将显示第二个元素的值。例如：', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2019-06-07 14:54:53.853354', '7', '用于页面上的选择框标签，需要先提供一个二维的二元元组，第一个元素表示存在数据库内真实的值，第二个表示页面上显示的具体内容。在浏览器页面上将显示第二个元素的值。例如：', '2', '[{\"changed\": {\"fields\": [\"question_a\", \"question_b\", \"question_c\", \"question_d\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2019-06-07 14:55:10.656758', '4', '6+6', '2', '[{\"changed\": {\"fields\": [\"question_a\", \"question_b\", \"question_c\", \"question_d\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2019-06-07 14:55:15.947929', '7', '用于页面上的选择框标签，需要先提供一个二维的二元元组，第一个元素表示存在数据库内真实的值，第二个表示页面上显示的具体内容。在浏览器页面上将显示第二个元素的值。例如：', '2', '[{\"changed\": {\"fields\": [\"question_type\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2019-06-07 14:57:22.522352', '5', '该值为True时，Django在数据库用NULL保存空值。默认值为False。对于保存字符串类型数据的字段，请尽量避免将此参数设为True，那样会导致两种‘没有数据’的情况，一种是NULL，另一种是‘空字符串’。', '2', '[{\"changed\": {\"fields\": [\"question_a\", \"question_b\", \"question_c\", \"question_d\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2019-06-07 16:32:30.458861', '1', '1+1', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2019-06-07 16:58:18.977949', '8', '李豪', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2019-06-07 16:58:36.727298', '9', '李豪', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2019-06-07 17:48:03.388589', '10', '1', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2019-06-07 17:48:09.293438', '11', '9', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2019-06-07 17:48:16.148796', '12', '8', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2019-06-07 17:48:36.833638', '13', '123', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2019-06-07 17:48:48.016810', '14', '456', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2019-06-07 17:48:59.054316', '15', '4444', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2019-06-07 17:49:07.864353', '16', 'QWERQ', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2019-06-07 17:49:14.411692', '17', 'sdfs', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2019-06-07 17:49:22.364825', '18', '1123123', '1', '[{\"added\": {}}]', '9', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('8', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('10', 'exam', 'answer');
INSERT INTO `django_content_type` VALUES ('9', 'exam', 'question');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'user', 'user');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-06-07 09:56:36.817452');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-06-07 09:56:37.523132');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-06-07 09:56:37.683740');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-06-07 09:56:37.693716');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-06-07 09:56:37.704708');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-06-07 09:56:37.803474');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-06-07 09:56:37.868259');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-06-07 09:56:37.925447');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-06-07 09:56:37.936421');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-06-07 09:56:37.990294');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-06-07 09:56:37.997219');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-06-07 09:56:38.008208');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-06-07 09:56:38.074048');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-06-07 09:56:38.130860');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2019-06-07 09:56:38.185228');
INSERT INTO `django_migrations` VALUES ('16', 'user', '0001_initial', '2019-06-07 09:56:38.228111');
INSERT INTO `django_migrations` VALUES ('17', 'captcha', '0001_initial', '2019-06-07 11:05:34.268650');
INSERT INTO `django_migrations` VALUES ('18', 'exam', '0001_initial', '2019-06-07 12:38:28.482629');
INSERT INTO `django_migrations` VALUES ('19', 'exam', '0002_auto_20190607_1255', '2019-06-07 12:55:53.827643');
INSERT INTO `django_migrations` VALUES ('20', 'exam', '0003_auto_20190607_1311', '2019-06-07 13:11:44.167007');
INSERT INTO `django_migrations` VALUES ('21', 'exam', '0004_auto_20190607_1453', '2019-06-07 14:53:49.073295');
INSERT INTO `django_migrations` VALUES ('22', 'exam', '0005_auto_20190607_1639', '2019-06-07 16:39:31.663005');
INSERT INTO `django_migrations` VALUES ('23', 'exam', '0006_auto_20190607_1657', '2019-06-07 16:57:57.565333');
INSERT INTO `django_migrations` VALUES ('24', 'user', '0002_auto_20190607_1723', '2019-06-07 17:23:12.016125');
INSERT INTO `django_migrations` VALUES ('25', 'user', '0003_user_is_exam', '2019-06-07 17:34:48.726322');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('06f26relwts8ikitpecyfutsovv0h7g0', 'MTIzY2VmYzQ3YTY2ZmNlZjBhNTY0M2FjMGFhZWU4NjE5NDg3ODM1NTp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyX2lkIjo1LCJ1c2VyX25hbWUiOiJsaWhhbyJ9', '2019-06-21 19:33:59.818676');

-- ----------------------------
-- Table structure for `exam_answer`
-- ----------------------------
DROP TABLE IF EXISTS `exam_answer`;
CREATE TABLE `exam_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(128) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_answer_question_id_df7a0005_fk_exam_question_id` (`question_id`),
  CONSTRAINT `exam_answer_question_id_df7a0005_fk_exam_question_id` FOREIGN KEY (`question_id`) REFERENCES `exam_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_answer
-- ----------------------------

-- ----------------------------
-- Table structure for `exam_question`
-- ----------------------------
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(32) NOT NULL,
  `question_text` varchar(512) NOT NULL,
  `question_answer` varchar(128) NOT NULL,
  `question_a` varchar(64) NOT NULL,
  `question_b` varchar(64) NOT NULL,
  `question_c` varchar(64) NOT NULL,
  `question_d` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_question
-- ----------------------------
INSERT INTO `exam_question` VALUES ('2', 'J', '2+2', '4', '', '', '', '');
INSERT INTO `exam_question` VALUES ('3', 'J', '1+1', '2', '', '', '', '');
INSERT INTO `exam_question` VALUES ('4', 'C', '6+6', '12', 'aa', 'bb', 'cc', 'dd');
INSERT INTO `exam_question` VALUES ('5', 'C', '该值为True时，Django在数据库用NULL保存空值。默认值为False。对于保存字符串类型数据的字段，请尽量避免将此参数设为True，那样会导致两种‘没有数据’的情况，一种是NULL，另一种是‘空字符串’。', 'F', '李豪', '赵哲', '魏永康', '呦呦呦');
INSERT INTO `exam_question` VALUES ('6', 'F', 'True时，字段可以为空。默认False。和null参数不同的是，null是纯数据库层面的，而blank是验证相关的，它与表单验证是否允许输入框内为空有关，与数据库无关。所以要小心一个null为False，blank为True的字段接收到一个空值可能会出bug或异常。', 'yes', '', '', '', '');
INSERT INTO `exam_question` VALUES ('7', 'C', '用于页面上的选择框标签，需要先提供一个二维的二元元组，第一个元素表示存在数据库内真实的值，第二个表示页面上显示的具体内容。在浏览器页面上将显示第二个元素的值。例如：', '123', 'aa', 'bb', 'cc', 'dd');
INSERT INTO `exam_question` VALUES ('8', 'F', '李豪', '1', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('9', 'J', '李豪', 'F', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('10', 'F', '1', '1', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('11', 'F', '9', '9', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('12', 'F', '8', '8', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('13', 'C', '123', 'A', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('14', 'C', '456', 'D', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('15', 'C', '4444', 'B', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('16', 'J', 'QWERQ', 'T', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('17', 'J', 'sdfs', 'T', '无', '无', '无', '无');
INSERT INTO `exam_question` VALUES ('18', 'J', '1123123', 'T', '无', '无', '无', '无');

-- ----------------------------
-- Table structure for `user_user`
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(254) NOT NULL,
  `sex` varchar(32) NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `is_work` int(11) NOT NULL,
  `not_solve` int(11) NOT NULL,
  `is_exam` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user` VALUES ('1', 'test1', '123', '123@qq.com', 'male', '2019-06-07 09:59:10.897295', '0', '0', '0');
INSERT INTO `user_user` VALUES ('2', 'test2', '456', '456@qq.com', 'male', '2019-06-07 09:59:21.659220', '0', '0', '0');
INSERT INTO `user_user` VALUES ('3', 'test3', '789', '789@qq.com', 'female', '2019-06-07 09:59:35.888064', '0', '0', '0');
INSERT INTO `user_user` VALUES ('4', 'zhaozhe', 'edcad1523af80bc4b96cb547725f65a6d3a755c59a9d9000c8b376a97bdd2f7e', '88888888@qq.com', 'male', '2019-06-07 11:26:22.418236', '0', '0', '0');
INSERT INTO `user_user` VALUES ('5', 'lihao', 'edcad1523af80bc4b96cb547725f65a6d3a755c59a9d9000c8b376a97bdd2f7e', '44444444@qq.com', 'female', '2019-06-07 17:27:11.452903', '199', '186', '1');
