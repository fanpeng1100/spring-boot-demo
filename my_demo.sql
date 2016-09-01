

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '班级ID',
  `NAME` varchar(100) NOT NULL COMMENT '班级名称',
  `AVAILABLE` tinyint(1) DEFAULT '1' COMMENT '是否有效（0：无效 1：有效）',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `NAME` varchar(100) NOT NULL COMMENT '学生姓名',
  `C_ID` bigint(20) NOT NULL COMMENT '所属班级ID',
  `AVAILABLE` tinyint(1) DEFAULT '1' COMMENT '是否有效（0：无效 1：有效）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='学生表';