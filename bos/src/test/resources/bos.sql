/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : bos

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-07-05 13:45:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_pass` varchar(255) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'aaa', 'aaa', '2018-07-05 13:15:16', '114@qq.com', '1');
INSERT INTO `t_admin` VALUES ('2', 'bbb', 'aaa', '2018-06-20 10:51:40', null, '1');

-- ----------------------------
-- Table structure for t_jinmei
-- ----------------------------
DROP TABLE IF EXISTS `t_jinmei`;
CREATE TABLE `t_jinmei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hui` double(11,2) DEFAULT NULL,
  `liu` double(11,2) DEFAULT NULL,
  `huifa` double(11,2) DEFAULT NULL,
  `zhishu` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jinmei
-- ----------------------------
INSERT INTO `t_jinmei` VALUES ('1', '最大值', '9.50', '1.28', '22.00', '78.00');
INSERT INTO `t_jinmei` VALUES ('2', '最小值', '8.00', '1.24', '20.00', '74.00');
INSERT INTO `t_jinmei` VALUES ('3', 'test', '12.00', '12.00', '123.00', '123.00');
INSERT INTO `t_jinmei` VALUES ('4', 'test', '12.00', '12.00', '123.00', '123.00');
INSERT INTO `t_jinmei` VALUES ('5', 'test', '12.00', '1.20', '24.00', '66.00');
INSERT INTO `t_jinmei` VALUES ('6', 'test', '10.00', '1.20', '23.00', '34.00');
INSERT INTO `t_jinmei` VALUES ('7', 'test', '12.00', '21.00', '123.00', '2.00');

-- ----------------------------
-- Table structure for t_log4j
-- ----------------------------
DROP TABLE IF EXISTS `t_log4j`;
CREATE TABLE `t_log4j` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `loglevel` varchar(255) DEFAULT NULL,
  `msg` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log4j
-- ----------------------------
INSERT INTO `t_log4j` VALUES ('1', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求路径/bos/login');
INSERT INTO `t_log4j` VALUES ('2', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求路径http://localhost:8080/bos/login');
INSERT INTO `t_log4j` VALUES ('3', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求方法POST');
INSERT INTO `t_log4j` VALUES ('4', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求ip0:0:0:0:0:0:0:1');
INSERT INTO `t_log4j` VALUES ('5', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求的控制器地址com.bonc.controller.AdminControllerlogin');
INSERT INTO `t_log4j` VALUES ('6', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求携带的参数[Ljava.lang.Object;@60f50fc6');
INSERT INTO `t_log4j` VALUES ('7', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求路径/bos/login');
INSERT INTO `t_log4j` VALUES ('8', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求路径http://localhost:8080/bos/login');
INSERT INTO `t_log4j` VALUES ('9', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求方法POST');
INSERT INTO `t_log4j` VALUES ('10', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求ip0:0:0:0:0:0:0:1');
INSERT INTO `t_log4j` VALUES ('11', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求的控制器地址com.bonc.controller.AdminControllerlogin');
INSERT INTO `t_log4j` VALUES ('12', 'com.bonc.controller.aspect.HttpAspect', 'beforeLog', null, 'ERROR', '请求携带的参数[Ljava.lang.Object;@3bc424f6');
INSERT INTO `t_log4j` VALUES ('13', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('14', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('15', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('16', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('17', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('18', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('19', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('20', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('21', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('22', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('23', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('24', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('25', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('26', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('27', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('28', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('29', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('30', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('31', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('32', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('33', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('34', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('35', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('36', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('37', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('38', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('39', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('40', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('41', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('42', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('43', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('44', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('45', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('46', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('47', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('48', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('49', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('50', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('51', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('52', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('53', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('54', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('55', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('56', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('57', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('58', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('59', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('60', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('61', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('62', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('63', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('64', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('65', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('66', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('67', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('68', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('69', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('70', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('71', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('72', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('73', 'com.alibaba.druid.pool.DruidDataSource$CreateConnectionThread', 'run', null, 'ERROR', 'create connection error');
INSERT INTO `t_log4j` VALUES ('74', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('75', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('76', 'org.springframework.web.servlet.HandlerExecutionChain', 'triggerAfterCompletion', null, 'ERROR', 'HandlerInterceptor.afterCompletion threw exception');
INSERT INTO `t_log4j` VALUES ('77', 'org.springframework.web.servlet.HandlerExecutionChain', 'triggerAfterCompletion', null, 'ERROR', 'HandlerInterceptor.afterCompletion threw exception');
INSERT INTO `t_log4j` VALUES ('78', 'org.springframework.web.servlet.HandlerExecutionChain', 'triggerAfterCompletion', null, 'ERROR', 'HandlerInterceptor.afterCompletion threw exception');
INSERT INTO `t_log4j` VALUES ('79', 'com.alibaba.druid.filter.logging.Log4jFilter', 'statementLogError', null, 'ERROR', '{conn-10003, pstmt-20002} execute error. insert into t_admin values (? ,?,?,?,?,?,\n        ? ,?,?,?)');
INSERT INTO `t_log4j` VALUES ('80', 'org.springframework.web.servlet.HandlerExecutionChain', 'triggerAfterCompletion', null, 'ERROR', 'HandlerInterceptor.afterCompletion threw exception');
INSERT INTO `t_log4j` VALUES ('81', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('82', 'com.alibaba.druid.filter.logging.Log4jFilter', 'statementLogError', null, 'ERROR', '{conn-10003, pstmt-20002} execute error. insert into t_logger values (? ,?,?,?,?,?,\n        ? ,?,?,?)');
INSERT INTO `t_log4j` VALUES ('83', 'org.springframework.web.servlet.HandlerExecutionChain', 'triggerAfterCompletion', null, 'ERROR', 'HandlerInterceptor.afterCompletion threw exception');
INSERT INTO `t_log4j` VALUES ('84', 'com.alibaba.druid.filter.logging.Log4jFilter', 'statementLogError', null, 'ERROR', '{conn-10003, pstmt-20006} execute error. insert into t_logger values (? ,?,?,?,?,?,\n        ? ,?,?,?)');
INSERT INTO `t_log4j` VALUES ('85', 'org.springframework.web.servlet.HandlerExecutionChain', 'triggerAfterCompletion', null, 'ERROR', 'HandlerInterceptor.afterCompletion threw exception');
INSERT INTO `t_log4j` VALUES ('86', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('87', 'com.alibaba.druid.filter.logging.Log4jFilter', 'statementLogError', null, 'ERROR', '{conn-10003, pstmt-20003} execute error. insert into t_logger values (? ,?,?,?,?,?,\n        ? ,?,?,?)');
INSERT INTO `t_log4j` VALUES ('88', 'org.springframework.web.servlet.HandlerExecutionChain', 'triggerAfterCompletion', null, 'ERROR', 'HandlerInterceptor.afterCompletion threw exception');
INSERT INTO `t_log4j` VALUES ('89', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('90', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('91', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('92', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('93', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('94', 'com.bonc.controller.aspect.HttpAspect', 'doAfter', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('95', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', 'username or pass not correct');
INSERT INTO `t_log4j` VALUES ('96', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('97', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('98', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('99', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('100', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('101', 'org.springframework.web.context.ContextLoader', 'initWebApplicationContext', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('102', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('103', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', null, 'ERROR', 'Context initialization failed');
INSERT INTO `t_log4j` VALUES ('104', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('105', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('106', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');
INSERT INTO `t_log4j` VALUES ('107', 'com.bonc.exception.handler.ExceptionHandle', 'Handle', null, 'ERROR', '系统错误:null');

-- ----------------------------
-- Table structure for t_logger
-- ----------------------------
DROP TABLE IF EXISTS `t_logger`;
CREATE TABLE `t_logger` (
  `sessionId` varchar(255) DEFAULT NULL,
  `clientIp` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `paramdata` varchar(255) DEFAULT NULL,
  `statusCode` smallint(6) DEFAULT NULL,
  `returnData` varchar(255) DEFAULT NULL,
  `timeConsuming` int(11) DEFAULT NULL,
  `begintime` datetime DEFAULT NULL,
  `returntime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logger
-- ----------------------------
INSERT INTO `t_logger` VALUES ('052B509247E6242ABBD85FEA68E3FFD5', '0:0:0:0:0:0:0:1', '/bos/toLogin', 'GET', '{}', '0', 'null', '110', '2018-07-04 12:41:43', '2018-07-04 12:41:43');
INSERT INTO `t_logger` VALUES ('0712A8A45B5DA787CDF8A047CC26637A', null, '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '515', '2018-07-04 12:33:28', '2018-07-04 12:33:29');
INSERT INTO `t_logger` VALUES ('B2763B62B41CD335E4C20493A5DCC4B0', '0:0:0:0:0:0:0:1', '/bos/toLogin', 'GET', '{}', '0', 'null', '46', '2018-07-04 12:38:18', '2018-07-04 12:38:18');
INSERT INTO `t_logger` VALUES ('052B509247E6242ABBD85FEA68E3FFD5', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '54', '2018-07-04 12:43:41', '2018-07-04 12:43:41');
INSERT INTO `t_logger` VALUES ('052B509247E6242ABBD85FEA68E3FFD5', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '289541', '2018-07-04 12:51:49', '2018-07-04 12:56:39');
INSERT INTO `t_logger` VALUES ('052B509247E6242ABBD85FEA68E3FFD5', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"ccc\"]}', '0', 'null', '350', '2018-07-04 13:00:35', '2018-07-04 13:00:35');
INSERT INTO `t_logger` VALUES ('052B509247E6242ABBD85FEA68E3FFD5', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"ccc\"]}', '200', 'null', '384', '2018-07-04 13:01:45', '2018-07-04 13:01:45');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/ztree/jquery.ztree.all-3.5.js', 'GET', '{}', '200', 'null', '27', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/ztree/zTreeStyle.css', 'GET', '{}', '200', 'null', '22', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icon.css', 'GET', '{}', '200', 'null', '20', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/jquery.min.js', 'GET', '{}', '200', 'null', '18', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/easyui.css', 'GET', '{}', '200', 'null', '16', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/jquery.easyui.min.js', 'GET', '{}', '200', 'null', '43', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/tabs_icons.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/layout_arrows.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/blank.gif', 'GET', '{}', '200', 'null', '1', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/cut.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/reload.png', 'GET', '{}', '200', 'null', '0', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/accordion_arrows.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/panel_tools.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 13:58:16', '2018-07-04 13:58:16');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/ztree/img/zTreeStandard.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 13:58:20', '2018-07-04 13:58:20');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/ztree/img/line_conn.gif', 'GET', '{}', '200', 'null', '2', '2018-07-04 13:58:22', '2018-07-04 13:58:22');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/pencil.png', 'GET', '{}', '200', 'null', '4', '2018-07-04 13:58:32', '2018-07-04 13:58:32');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/locale/easyui-lang-zh_CN.js', 'GET', '{}', '200', 'null', '0', '2018-07-04 14:26:07', '2018-07-04 14:26:07');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/messager_icons.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 14:27:28', '2018-07-04 14:27:28');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'POST', '{}', '405', 'null', '18', '2018-07-04 14:29:21', '2018-07-04 14:29:21');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '5', '2018-07-04 14:29:56', '2018-07-04 14:29:56');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 14:33:52', '2018-07-04 14:33:52');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '14', '2018-07-04 14:40:14', '2018-07-04 14:40:14');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/toLogin', 'GET', '{}', '0', 'null', '127', '2018-07-04 14:40:25', '2018-07-04 14:40:25');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '270', '2018-07-04 14:40:29', '2018-07-04 14:40:30');
INSERT INTO `t_logger` VALUES ('0316637F8EEE670AACCFF37E2B8242FB', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 14:40:30', '2018-07-04 14:40:30');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '160', '2018-07-04 16:18:53', '2018-07-04 16:18:53');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '2', '2018-07-04 16:18:53', '2018-07-04 16:18:53');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '816', '2018-07-04 16:31:17', '2018-07-04 16:31:18');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/menu_arrows.png', 'GET', '{}', '200', 'null', '9', '2018-07-04 16:31:18', '2018-07-04 16:31:18');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 16:31:18', '2018-07-04 16:31:18');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '167', '2018-07-04 16:32:36', '2018-07-04 16:32:36');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/help.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 16:32:36', '2018-07-04 16:32:36');
INSERT INTO `t_logger` VALUES ('B2E18B973E7217F76CDE771A1B3971E7', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 16:32:36', '2018-07-04 16:32:36');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '192', '2018-07-04 17:07:01', '2018-07-04 17:07:01');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 17:07:01', '2018-07-04 17:07:01');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '181', '2018-07-04 17:07:49', '2018-07-04 17:07:49');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 17:07:49', '2018-07-04 17:07:49');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/gray/easyui.css', 'GET', '{}', '200', 'null', '3', '2018-07-04 17:07:51', '2018-07-04 17:07:51');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/bootstrap/easyui.css', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:07:57', '2018-07-04 17:07:57');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/metro/easyui.css', 'GET', '{}', '200', 'null', '2', '2018-07-04 17:08:00', '2018-07-04 17:08:00');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '158', '2018-07-04 17:08:28', '2018-07-04 17:08:28');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 17:08:28', '2018-07-04 17:08:28');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/gray/images/panel_tools.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:30', '2018-07-04 17:08:30');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/gray/images/blank.gif', 'GET', '{}', '200', 'null', '0', '2018-07-04 17:08:30', '2018-07-04 17:08:30');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/gray/images/layout_arrows.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:30', '2018-07-04 17:08:30');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/gray/images/accordion_arrows.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:30', '2018-07-04 17:08:30');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/gray/images/menu_arrows.png', 'GET', '{}', '200', 'null', '0', '2018-07-04 17:08:30', '2018-07-04 17:08:30');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/gray/images/tabs_icons.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:30', '2018-07-04 17:08:30');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/black/easyui.css', 'GET', '{}', '200', 'null', '2', '2018-07-04 17:08:32', '2018-07-04 17:08:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/black/images/tabs_icons.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:32', '2018-07-04 17:08:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/black/images/layout_arrows.png', 'GET', '{}', '200', 'null', '3', '2018-07-04 17:08:32', '2018-07-04 17:08:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/black/images/blank.gif', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:32', '2018-07-04 17:08:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/black/images/menu_arrows.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:32', '2018-07-04 17:08:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/black/images/accordion_arrows.png', 'GET', '{}', '200', 'null', '6', '2018-07-04 17:08:32', '2018-07-04 17:08:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/black/images/panel_tools.png', 'GET', '{}', '200', 'null', '8', '2018-07-04 17:08:32', '2018-07-04 17:08:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/bootstrap/images/panel_tools.png', 'GET', '{}', '200', 'null', '3', '2018-07-04 17:08:34', '2018-07-04 17:08:34');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/bootstrap/images/tabs_icons.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:34', '2018-07-04 17:08:34');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/bootstrap/images/blank.gif', 'GET', '{}', '200', 'null', '8', '2018-07-04 17:08:34', '2018-07-04 17:08:34');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/bootstrap/images/accordion_arrows.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:34', '2018-07-04 17:08:34');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/bootstrap/images/layout_arrows.png', 'GET', '{}', '200', 'null', '0', '2018-07-04 17:08:34', '2018-07-04 17:08:34');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/bootstrap/images/menu_arrows.png', 'GET', '{}', '200', 'null', '0', '2018-07-04 17:08:34', '2018-07-04 17:08:34');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/metro/images/layout_arrows.png', 'GET', '{}', '200', 'null', '0', '2018-07-04 17:08:37', '2018-07-04 17:08:37');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/metro/images/blank.gif', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:37', '2018-07-04 17:08:37');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/metro/images/panel_tools.png', 'GET', '{}', '200', 'null', '7', '2018-07-04 17:08:37', '2018-07-04 17:08:37');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/metro/images/menu_arrows.png', 'GET', '{}', '200', 'null', '0', '2018-07-04 17:08:37', '2018-07-04 17:08:37');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/metro/images/accordion_arrows.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:08:37', '2018-07-04 17:08:37');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/metro/images/tabs_icons.png', 'GET', '{}', '200', 'null', '8', '2018-07-04 17:08:37', '2018-07-04 17:08:37');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '94', '2018-07-04 17:13:17', '2018-07-04 17:13:17');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/ok.png', 'GET', '{}', '200', 'null', '2', '2018-07-04 17:13:17', '2018-07-04 17:13:17');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '6', '2018-07-04 17:13:17', '2018-07-04 17:13:18');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '341', '2018-07-04 17:24:31', '2018-07-04 17:24:31');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '8', '2018-07-04 17:24:32', '2018-07-04 17:24:32');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '155', '2018-07-04 17:29:20', '2018-07-04 17:29:20');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/cancel.png', 'GET', '{}', '200', 'null', '1', '2018-07-04 17:29:20', '2018-07-04 17:29:20');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '1', '2018-07-04 17:29:20', '2018-07-04 17:29:20');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '122', '2018-07-04 17:29:49', '2018-07-04 17:29:49');
INSERT INTO `t_logger` VALUES ('AF0B52BF9A168448F994565462705D03', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '0', 'null', '0', '2018-07-04 17:29:49', '2018-07-04 17:29:49');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/toLogin', 'GET', '{}', '0', 'null', '212', '2018-07-05 08:44:31', '2018-07-05 08:44:32');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '912', '2018-07-05 08:44:46', '2018-07-05 08:44:47');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '200', 'null', '4', '2018-07-05 08:44:48', '2018-07-05 08:44:48');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/toZhiBao', 'GET', '{}', '0', 'null', '139', '2018-07-05 08:44:53', '2018-07-05 08:44:53');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/pagination_icons.png', 'GET', '{}', '200', 'null', '1', '2018-07-05 08:44:53', '2018-07-05 08:44:53');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/default/images/loading.gif', 'GET', '{}', '200', 'null', '0', '2018-07-05 08:44:53', '2018-07-05 08:44:53');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/jinMeiList', 'POST', '{\"page\":[\"1\"],\"rows\":[\"NaN\"]}', '0', 'null', '191', '2018-07-05 08:44:53', '2018-07-05 08:44:53');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '68', '2018-07-05 08:45:42', '2018-07-05 08:45:42');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '304', 'null', '6', '2018-07-05 08:45:43', '2018-07-05 08:45:43');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '54', '2018-07-05 08:47:11', '2018-07-05 08:47:11');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '304', 'null', '0', '2018-07-05 08:47:12', '2018-07-05 08:47:12');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/loginOut', 'GET', '{}', '0', 'null', '5', '2018-07-05 08:47:29', '2018-07-05 08:47:29');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '148', '2018-07-05 08:48:32', '2018-07-05 08:48:33');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '304', 'null', '1', '2018-07-05 08:48:33', '2018-07-05 08:48:33');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '831', '2018-07-05 08:52:01', '2018-07-05 08:52:02');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '304', 'null', '6', '2018-07-05 08:52:02', '2018-07-05 08:52:02');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/toZhiBao', 'GET', '{}', '0', 'null', '13', '2018-07-05 08:58:28', '2018-07-05 08:58:28');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/jinMeiList', 'POST', '{\"page\":[\"1\"],\"rows\":[\"NaN\"]}', '0', 'null', '183', '2018-07-05 08:58:28', '2018-07-05 08:58:28');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/login', 'POST', '{\"adminName\":[\"aaa\"],\"adminPass\":[\"aaa\"]}', '0', 'null', '89', '2018-07-05 09:00:00', '2018-07-05 09:00:00');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/json/menu.json', 'GET', '{}', '304', 'null', '0', '2018-07-05 09:00:01', '2018-07-05 09:00:01');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/toZhiBao', 'GET', '{}', '0', 'null', '141', '2018-07-05 09:00:03', '2018-07-05 09:00:03');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/filesave.png', 'GET', '{}', '200', 'null', '10', '2018-07-05 09:00:03', '2018-07-05 09:00:03');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/search.png', 'GET', '{}', '200', 'null', '2', '2018-07-05 09:00:03', '2018-07-05 09:00:03');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/js/easyui/themes/icons/edit_add.png', 'GET', '{}', '200', 'null', '1', '2018-07-05 09:00:03', '2018-07-05 09:00:03');
INSERT INTO `t_logger` VALUES ('4578871E476FBF2D34912615C671F318', '0:0:0:0:0:0:0:1', '/bos/jinMeiList', 'POST', '{\"page\":[\"1\"],\"rows\":[\"NaN\"]}', '0', 'null', '35', '2018-07-05 09:00:03', '2018-07-05 09:00:03');

-- ----------------------------
-- Table structure for t_yuanmei
-- ----------------------------
DROP TABLE IF EXISTS `t_yuanmei`;
CREATE TABLE `t_yuanmei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hui` double(11,2) DEFAULT NULL,
  `liu` double(11,2) DEFAULT NULL,
  `huifa` double(11,2) DEFAULT NULL,
  `zhishu` int(11) DEFAULT NULL,
  `huishou` double(11,2) DEFAULT NULL,
  `chengben` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yuanmei
-- ----------------------------
INSERT INTO `t_yuanmei` VALUES ('1', '中阳', '8.80', '1.22', '20.00', '85', '68.00', '800');
INSERT INTO `t_yuanmei` VALUES ('2', '韩家沿焦1', '2.30', '1.52', '28.29', '95', '92.00', '900');
INSERT INTO `t_yuanmei` VALUES ('3', '韩家沿焦2', '10.50', '1.56', '23.50', '50', '70.00', '800');
INSERT INTO `t_yuanmei` VALUES ('4', '古交平定', '11.41', '0.50', '21.96', '83', '63.00', '1000');
INSERT INTO `t_yuanmei` VALUES ('5', '刘义配焦1', '10.20', '1.25', '26.76', '0', '56.00', '1000');
INSERT INTO `t_yuanmei` VALUES ('6', '刘义配焦2', '13.63', '1.83', '26.56', '0', '49.20', '700');
INSERT INTO `t_yuanmei` VALUES ('8', '槐安', '9.00', '1.45', '15.00', '15', '55.00', '600');
INSERT INTO `t_yuanmei` VALUES ('9', '宜管配焦展', '3.70', '0.97', '29.38', '31', '86.00', '86');
INSERT INTO `t_yuanmei` VALUES ('10', '辞凡沟9', '7.20', '1.60', '27.25', '96', '85.00', '1000');
INSERT INTO `t_yuanmei` VALUES ('11', '辞凡沟10', '7.80', '1.58', '25.00', '91', '78.00', '900');
INSERT INTO `t_yuanmei` VALUES ('12', '辞凡沟11', '9.62', '1.30', '23.00', '84', '75.00', '910');
INSERT INTO `t_yuanmei` VALUES ('13', '辞凡沟11+', '13.52', '1.10', '22.71', '77', '67.08', '880');
INSERT INTO `t_yuanmei` VALUES ('14', '高焦1A', '7.80', '1.73', '25.70', '97', '83.00', '1000');
INSERT INTO `t_yuanmei` VALUES ('15', '韩家沿配焦', '6.68', '1.45', '27.56', '0', '82.00', '950');
INSERT INTO `t_yuanmei` VALUES ('16', '店坪', '12.38', '0.72', '16.36', '60', '66.90', '980');
INSERT INTO `t_yuanmei` VALUES ('17', '宜管武焦二', '9.41', '1.35', '24.05', '91', '75.00', '1000');
INSERT INTO `t_yuanmei` VALUES ('18', '水峪矿', '8.74', '2.32', '18.21', '75', '54.00', '880');
INSERT INTO `t_yuanmei` VALUES ('19', '七虎焦二1', '8.16', '1.36', '26.01', '56', '0.00', '970');
INSERT INTO `t_yuanmei` VALUES ('20', '七虎焦二2', '11.84', '1.20', '22.00', '69', '75.00', '990');
INSERT INTO `t_yuanmei` VALUES ('21', '东庄低硫', '9.28', '0.47', '15.08', '74', '52.48', '1000');
INSERT INTO `t_yuanmei` VALUES ('22', '东罗水洗', '8.25', '1.42', '29.20', '94', '88.00', '900');
