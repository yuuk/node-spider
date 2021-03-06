/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : nodejs

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-16 16:37:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` text CHARACTER SET utf8 COMMENT '标题',
  `keywords` text CHARACTER SET utf8 COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '描述',
  `content` longtext CHARACTER SET utf8 COMMENT '文章内容',
  `updatetime` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('29', '薯香扣肉的家常做法_薯香扣肉怎么做好吃_热菜_做菜网', '薯香扣肉,薯香扣肉的家常做法,薯香扣肉怎么做好吃', '薯香扣肉食材介绍 腐乳汁(2勺) 芝麻酱(2勺) 生抽(3勺) 薯香扣肉的做法步骤: 1.选取三层五花肉，并用刀在肉皮上用力的刮一刮。 2.洗净的五花肉放入凉水中煮20分钟，期间用勺子打去浮沫', '<p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/dO3FGmpU.jpg\" alt=\"\"></p><p style=\"text-indent: 2em; text-align: left;\"><strong>薯香<a href=\"http://www.zuocai.tv/zt/kourou/\" target=\"_blank\"><u>扣肉</u></a><a href=\"http://www.zuocai.tv/shicai/\" target=\"_blank\"><u>食材</u></a>介绍</strong></p><p style=\"text-indent: 2em; text-align: left;\">腐乳汁(2勺) <a href=\"http://www.zuocai.tv/shicai/guopin/ZhiMa/\" target=\"_blank\"><u>芝麻</u></a>酱(2勺) <a href=\"http://www.zuocai.tv/shicai/rouqin/shengchou/\" target=\"_blank\"><u>生抽</u></a>(3勺)</p><p style=\"text-indent: 2em; text-align: left;\"><strong>薯香扣肉的做法步骤:</strong></p><p style=\"text-indent: 2em; text-align: left;\">1.选取三层<a href=\"http://www.zuocai.tv/shicai/rouqin/WuHuaRou/\" target=\"_blank\"><u>五花肉</u></a>，并用刀在肉皮上用力的刮一刮。</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/hcngbiqeo1d.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">2.洗净的五花肉放入凉水中煮20分钟，期间用勺子打去浮沫。</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/tbsnl0br31k.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">3.肉起锅后，趁热用叉子或牙签在肉皮上插出很多小孔，让肉中的部分油脂通过小孔排出。</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/1f43uqecgi0.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">4.将排出的油脂挂去。</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/m02p2pgpgjs.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">5.将五花肉肉皮朝下，放入无油的锅中煎至金黄色</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/waxjw1pyskg.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">6.调汁：<a href=\"http://www.zuocai.tv/shicai/diaoweipin/jiang/\" target=\"_blank\"><u>姜</u></a>、蒜切末，加入腐乳汁、芝麻酱、蚝油、生抽、<a href=\"http://www.zuocai.tv/shicai/diaoweipin/baitang/\" target=\"_blank\"><u>白糖</u></a>，调均备用</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/jbtqkwglvuq.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">7.将五花肉切成3~4毫米厚的肉片，放入之前调好的汁中，拌均</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/ingjilpgcfd.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">8.将<a href=\"http://www.zuocai.tv/shicai/shucai/HongShu/\" target=\"_blank\"><u>红薯</u></a>切块，在六成热的油锅中炸至表面微黄</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/m4vep1vyoyo.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">9.将拌好酱汁的五花肉肉皮朝碗底码好</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/k5h0sche23d.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">10.将<a href=\"http://www.zuocai.tv/shicai/shucai/NanGua/\" target=\"_blank\"><u>南瓜</u></a>切块，同红薯一起码入碗中</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/0tdsdqyteib.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\">11.放入锅中<a href=\"http://www.zuocai.tv/zt/zhengcai/\" target=\"_blank\"><u>蒸</u></a>半小时，倒扣在盘子里，周围铺上焯熟的<a href=\"http://www.zuocai.tv/shicai/shucai/XiLanHua/\" target=\"_blank\"><u>西兰花</u></a>即可。</p><p style=\"text-align: center;\"><img src=\"http://www.zuocai.tv/uploads/images/20170405/qguyyivccat.jpg\" alt=\"薯香扣肉的做法\"></p><p style=\"text-indent: 2em; text-align: left;\"><strong><a href=\"http://www.zuocai.tv/\" target=\"_blank\"><u>做菜网</u></a>小贴士</strong></p><p style=\"text-indent: 2em; text-align: left;\">1.煮过的五花肉趁热在肉皮上插些小孔，可以让部分油脂排出，成品达到肥而不腻的效果。<br>2.家里有<a href=\"http://www.zuocai.tv/shicai/shucai/ZiShu/\" target=\"_blank\"><u>紫薯</u></a>的话，用紫薯代替红薯效果更佳。<br></p>\n', '1494923859790');
