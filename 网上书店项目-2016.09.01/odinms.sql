/*
MySQL Data Transfer
Source Host: localhost
Source Database: odinms
Target Host: localhost
Target Database: odinms
Date: 2015/7/14 18:55:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for bookxinxi
-- ----------------------------
DROP TABLE IF EXISTS `bookxinxi`;
CREATE TABLE `bookxinxi` (
  `bookname` char(255) CHARACTER SET utf8 NOT NULL,
  `jiehsao` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `author` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `chubanshe` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `lujing` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `tupianlujing` char(255) CHARACTER SET gb2312 DEFAULT NULL,
  `shuming` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dingdan1
-- ----------------------------
DROP TABLE IF EXISTS `dingdan1`;
CREATE TABLE `dingdan1` (
  `dingdanhao` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `zhifubao` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `zhifubaomima` char(255) DEFAULT NULL,
  `address` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `shuming` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `tupianlujing` char(255) CHARACTER SET gb2312 DEFAULT NULL,
  `price` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `author` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for gouwuche
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `name` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guanliyuan
-- ----------------------------
DROP TABLE IF EXISTS `guanliyuan`;
CREATE TABLE `guanliyuan` (
  `name` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `mima` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `name` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `liuyan` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `bookname` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `pinglun` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `shuming` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `name` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `mima` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mima` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `bookxinxi` VALUES ('24jieqi', '24传统节气养生套装：节气时令吃什么+不可不知的24节气常识', '25.5', '张政', '华中农业大学', '2077年10月5日', '24jieqi.txt', '24jieqi.jpg', '24节气养生套装');
INSERT INTO `bookxinxi` VALUES ('daomubiji', '最好看的盗墓小说，完美青春纪念版', '17.10', '南派三叔', '浙江人民出版社', '2012年5月12日', 'daomubiji.txt', 'daomubiji.jpg', '盗墓笔记纪念版');
INSERT INTO `bookxinxi` VALUES ('ZFZDR', '快乐大本营高圆圆感动推荐，奥巴马送给女儿的新年礼物。全球两千万读者口耳相传，最想与友人分享的终身五星小说。为你，千千万万遍！', '20.30 （7.0折）', '美］卡勒德·胡赛尼 （Khaled Hosseini） 著,李继宏　译', '上海人民出版社', '2013-6-18', '追风筝的人.txt', '追风筝的人.jpg', '追风筝的人');
INSERT INTO `bookxinxi` VALUES ('NDGD', '刘同2014全新作品，谁的青春不迷茫系列 ，愿你比别人更不怕一个人独处，愿日后谈起时你会被自己感动。 第九届中国作家榜经典上榜作品！', '23.10 （5.8折）', '刘同', '中信出版社', '2014-7-1', '你的孤独，虽败犹荣.txt', '你的孤独，虽败犹荣.jpg', '你的孤独');
INSERT INTO `bookxinxi` VALUES ('GMMT', '上市6个月狂销80万册，“黄金左脸”珍藏版限量上线，随机发送！一个野生作家无意间点燃的星火，已然燎原。不要那么孤独，请相信世界上真的有人在过着你想要的生活', '24.80 （6.9折）', '大冰　著', '湖南文艺出版社', '2015年7月1日', '乖，摸摸头.txt', '乖，摸摸头.jpg', '乖，摸摸头');
INSERT INTO `bookxinxi` VALUES ('KJ', '雾霾调查纪录片《穹顶之下》制作人 柴静：十年个人成长的告白，中国社会变迁的备忘', '21.90 （5.5折）', '柴静 著', '广西师范大学出版社', '2013-1-1', '看见.txt', '看见.jpg', '看见');
INSERT INTO `dingdan1` VALUES ('20150713224403', '田苗', 'lo', 'l', 'l', 'daomubiji', '盗墓笔记纪念版', 'daomubiji.jpg', '17.10', '南派三叔');
INSERT INTO `dingdan1` VALUES ('20150714104343', '朱钢', '?/', '///', '、、、', 'ZFZDR', '追风筝的人', '追风筝的人.jpg', '20.30 （7.0折）', '美］卡勒德?胡赛尼 （Khaled Hosseini） 著,李继宏　译');
INSERT INTO `dingdan1` VALUES ('20150714104343', '田苗', 'as', 'as', 'as', 'NDGD', '你的孤独', '你的孤独，虽败犹荣.jpg', '23.10 （5.8折）', '刘同');
INSERT INTO `dingdan1` VALUES ('20150714104343', '田苗', 'sd', 'sd', 'sd', 'NDGD', '你的孤独', '你的孤独，虽败犹荣.jpg', '23.10 （5.8折）', '刘同');
INSERT INTO `dingdan1` VALUES ('20150714153647', '奥巴马', '3', '3', '3', 'KJ', '看见', '看见.jpg', '21.90 （5.5折）', '柴静 著');
INSERT INTO `dingdan1` VALUES ('Tue Jul 14 18:39:32 CST 2015', '1', '5', '5', '5', 'ZFZDR', '追风筝的人', '追风筝的人.jpg', '20.30 （7.0折）', '美］卡勒德?胡赛尼 （Khaled Hosseini） 著,李继宏　译');
INSERT INTO `gouwuche` VALUES ('田苗', 'ZFZDR');
INSERT INTO `gouwuche` VALUES ('田苗', 'daomubiji');
INSERT INTO `gouwuche` VALUES ('张政', 'NDGD');
INSERT INTO `gouwuche` VALUES ('张政', 'GMMT');
INSERT INTO `gouwuche` VALUES ('张政', 'KJ');
INSERT INTO `gouwuche` VALUES ('李四', 'NDGD');
INSERT INTO `gouwuche` VALUES ('李四', 'GMMT');
INSERT INTO `gouwuche` VALUES ('李四', 'daomubiji');
INSERT INTO `gouwuche` VALUES ('李四', 'KJ');
INSERT INTO `gouwuche` VALUES ('李四', 'ZFZDR');
INSERT INTO `gouwuche` VALUES ('朱钢', 'ZFZDR');
INSERT INTO `gouwuche` VALUES ('田苗', 'NDGD');
INSERT INTO `gouwuche` VALUES ('楚留香', 'NDGD');
INSERT INTO `gouwuche` VALUES ('奥巴马', 'daomubiji');
INSERT INTO `guanliyuan` VALUES ('tom', '123');
INSERT INTO `liuyan` VALUES ('奥巴马', '这家网站做的好，我喜欢。');
INSERT INTO `pinglun` VALUES ('NDGD', '这本书真的很好，孩子很喜欢，买了好几本，就这一本孩子爱不释手。', '夏雨荷', '你的孤独');
INSERT INTO `pinglun` VALUES ('NDGD', '上一本丢了，又买了一本，真本书很值得看。', '楚留香', '你的孤独');
INSERT INTO `pinglun` VALUES ('NDGD', '这本书真的很好，孩子很喜欢，买了好几本，就这一本孩子爱不释手。', '夏雨荷', '你的孤独');
INSERT INTO `student` VALUES ('a', 'a');
INSERT INTO `yonghu` VALUES ('李四', '123');
INSERT INTO `yonghu` VALUES ('1', '1');
INSERT INTO `yonghu` VALUES ('朱钢', 'zhugang');
INSERT INTO `yonghu` VALUES ('田苗', '123');
INSERT INTO `yonghu` VALUES ('夏雨荷', '1');
INSERT INTO `yonghu` VALUES ('楚留香', '1');
INSERT INTO `yonghu` VALUES ('奥巴马', '123');
