/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ncd_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-09 09:30:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `co_office`
-- ----------------------------
DROP TABLE IF EXISTS `co_office`;
CREATE TABLE `co_office` (
  `off_id` char(5) NOT NULL,
  `off_id_new` char(9) DEFAULT NULL,
  `off_name` varchar(100) DEFAULT NULL,
  `off_type` char(2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `road` varchar(100) DEFAULT NULL,
  `provid` char(2) DEFAULT NULL,
  `distid` char(4) DEFAULT NULL,
  `subdistid` char(6) DEFAULT NULL,
  `villid` char(8) DEFAULT NULL,
  `villno` char(2) DEFAULT NULL,
  `postcode` char(5) DEFAULT NULL,
  `cup_code` char(5) DEFAULT NULL,
  `pcu_code` char(5) DEFAULT NULL,
  `pointx` varchar(50) DEFAULT NULL,
  `pointy` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `hasdata` char(1) DEFAULT NULL,
  `hasdataf12` char(1) DEFAULT 'N',
  `hasdatancd` char(1) DEFAULT 'Y',
  `hasdatarefer` char(1) DEFAULT 'Y',
  `refermember` char(1) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `updatedate` date DEFAULT NULL,
  PRIMARY KEY (`off_id`),
  KEY `provid` (`provid`,`distid`,`subdistid`,`villid`),
  KEY `refermember` (`refermember`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of co_office
-- ----------------------------
INSERT INTO `co_office` VALUES ('00049', null, 'สสจ.ตาก', '01', null, null, '63', '6301', '630106', '63010607', '07', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('00671', null, 'สสอ.เมืองตาก', '02', null, null, '63', '6301', '630102', '63010201', '01', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('00672', null, 'สสอ.บ้านตาก', '02', null, null, '63', '6302', '630201', '63020106', '06', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('00673', null, 'สสอ.สามเงา', '02', null, null, '63', '6303', '630301', '63030103', '03', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('00674', null, 'สสอ.แม่ระมาด', '02', null, null, '63', '6304', '630401', '63040103', '03', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('00675', null, 'สสอ.ท่าสองยาง', '02', null, null, '63', '6305', '630502', '63050202', '02', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('00676', null, 'สสอ.แม่สอด', '02', null, null, '63', '6306', '630601', '63060101', '01', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('00677', null, 'สสอ.พบพระ', '02', null, null, '63', '6307', '630702', '63070207', '07', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('00678', null, 'สสอ.อุ้มผาง', '02', null, null, '63', '6308', '630801', '63080101', '01', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('07266', null, 'รพ.สต.บ้านปากห้วยไม้งาม ตำบลหนองบัวเหนือ', '03', null, null, '63', '6301', '630105', '63010503', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07267', null, 'รพ.สต.ตำบลไม้งาม', '03', null, null, '63', '6301', '630106', '63010604', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07268', null, 'รพ.สต.บ้านลานห้วยเดื่อ ตำบลโป่งแดง', '03', null, null, '63', '6301', '630107', '63010713', '13', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07269', null, 'รพ.สต.บ้านโป่งแดง ตำบลโป่งแดง', '03', null, null, '63', '6301', '630107', '63010702', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07270', null, 'รพ.สต.บ้านหนองนกปีกกา ตำบลโป่งแดง', '03', null, null, '63', '6301', '630107', '63010703', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07271', null, 'รพ.สต.บ้านชะลาดระฆัง ตำบลโป่งแดง', '03', null, null, '63', '6301', '630107', '63010704', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07272', null, 'รพ.สต.บ้านคลองขยางโพรง ตำบลน้ำรึม', '03', null, null, '63', '6301', '630108', '63010806', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07273', null, 'รพ.สต.บ้านเกาะอ้ายด้วน ตำบลวังหิน', '03', null, null, '63', '6301', '630109', '63010901', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07274', null, 'รพ.สต.บ้านท่าไม้แดง ตำบลวังหิน', '03', null, null, '63', '6301', '630109', '63010903', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07275', null, 'รพ.สต.บ้านน้ำโจน ตำบลวังหิน', '03', null, null, '63', '6301', '630109', '63010906', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07276', null, 'รพ.สต.บ้านวังเจ้า ตำบลเชียงทอง', '03', null, null, '63', '6309', '630901', '63090101', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07277', null, 'รพ.สต.บ้านดงซ่อม ตำบลเชียงทอง', '03', null, null, '63', '6309', '630901', '63090103', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07278', null, 'รพ.สต.บ้านปากห้วยแม่ท้อ ตำบลแม่ท้อ', '03', null, null, '63', '6301', '630111', '63011101', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07279', null, 'รพ.สต.บ้านลางสาง ตำบลแม่ท้อ', '03', null, null, '63', '6301', '630111', '63011104', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07280', null, 'รพ.สต.บ้านมูเซอ ตำบลแม่ท้อ', '03', null, null, '63', '6301', '630111', '63011107', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07281', null, 'รพ.สต.บ้านหนองแขม ตำบลแม่ท้อ', '03', null, null, '63', '6301', '630111', '63011108', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07283', null, 'รพ.สต.บ้านหนองปรือ ตำบลหนองบัวใต้', '03', null, null, '63', '6301', '630113', '63011301', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07284', null, 'รพ.สต.ตำบลวังประจบ', '03', null, null, '63', '6301', '630114', '63011401', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07285', null, 'รพ.สต.บ้านลานสอ ตำบลวังประจบ', '03', null, null, '63', '6301', '630114', '63011404', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07286', null, 'รพ.สต.บ้านสระตลุง  ตำบลตลุกกลางทุ่ง', '03', null, null, '63', '6301', '630115', '63011501', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07287', null, 'รพ.สต.บ้านนาโบสถ์ ตำบลนาโบสถ์', '03', null, null, '63', '6309', '630902', '63090204', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07288', null, 'รพ.สต.บ้านประดาง ตำบลประดาง', '03', null, null, '63', '6309', '630903', '63090303', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07289', null, 'รพ.สต.บ้านแม่บอน ตำบลตากออก', '03', null, null, '63', '6302', '630201', '63020112', '12', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07290', null, 'รพ.สต.ตำบลสมอโคน', '03', null, null, '63', '6302', '630202', '63020205', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07291', null, 'รพ.สต.บ้านน้ำดิบ ตำบลสมอโคน', '03', null, null, '63', '6302', '630202', '63020207', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07292', null, 'รพ.สต.ตำบลแม่สลิด', '03', null, null, '63', '6302', '630203', '63020303', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07293', null, 'รพ.สต.บ้านยางโอง ตำบลแม่สลิด', '03', null, null, '63', '6302', '630203', '63020305', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07294', null, 'รพ.สต.บ้านยางโองนอก ตำบลแม่สลิด', '03', null, null, '63', '6302', '630203', '63020308', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07295', null, 'รพ.สต.บ้านเด่นไม้ซุง ตำบลแม่สลิด', '03', null, null, '63', '6302', '630203', '63020309', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07296', null, 'รพ.สต.บ้านหนองงิ้ว ตำบลตากตก', '03', null, null, '63', '6302', '630204', '63020403', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07297', null, 'รพ.สต.ตำบลตากตก', '03', null, null, '63', '6302', '630204', '63020409', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07298', null, 'รพ.สต.ตำบลเกาะตะเภา', '03', null, null, '63', '6302', '630205', '63020503', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07299', null, 'รพ.สต.บ้านแม่ยะ ตำบลเกาะตะเภา', '03', null, null, '63', '6302', '630205', '63020507', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07300', null, 'รพ.สต.ตำบลทุ่งกระเชาะ', '03', null, null, '63', '6302', '630206', '63020603', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07301', null, 'รพ.สต.บ้านใหม่ ตำบลท้องฟ้า', '03', null, null, '63', '6302', '630207', '63020701', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07302', null, 'รพ.สต.ตำบลท้องฟ้า', '03', null, null, '63', '6302', '630207', '63020703', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07304', null, 'รพ.สต.บ้านห้วยพลู ตำบลท้องฟ้า', '03', null, null, '63', '6302', '630207', '63020706', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07305', null, 'รพ.สต.บ้านป่ายางใต้ ตำบลสามเงา', '03', null, null, '63', '6303', '630301', '63030101', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07306', null, 'รพ.สต.บ้านปากทางเขื่อน ตำบลวังหมัน', '03', null, null, '63', '6303', '630302', '63030201', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07307', null, 'รพ.สต.บ้านวังหวาย ตำบลวังหมัน', '03', null, null, '63', '6303', '630302', '63030206', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07308', null, 'รพ.สต.บ้านท่าไผ่ ตำบลยกกระบัตร', '03', null, null, '63', '6303', '630303', '63030302', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07309', null, 'รพ.สต.บ้านแม่ระวาน ตำบลยกกระบัตร', '03', null, null, '63', '6303', '630303', '63030305', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07310', null, 'รพ.สต.บ้านหนองเชียงคา ตำบลยกกระบัตร', '03', null, null, '63', '6303', '630303', '63030306', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07311', null, 'รพ.สต.บ้านแม่เชียงราย ตำบลยกกระบัตร', '03', null, null, '63', '6303', '630303', '63030307', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07312', null, 'รพ.สต.บ้านใหม่สามัคคี ตำบลยกกระบัตร', '03', null, null, '63', '6303', '630303', '63030310', '10', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07313', null, 'รพ.สต.ตำบลย่านรี', '03', null, null, '63', '6303', '630304', '63030403', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07314', null, 'รพ.สต.บ้านหนองโสน ตำบลย่านรี', '03', null, null, '63', '6303', '630304', '63030404', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07315', null, 'รพ.สต.บ้านอูมวาบ ตำบลบ้านนา', '03', null, null, '63', '6303', '630305', '63030501', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07316', null, 'รพ.สต.บ้านโสมง ตำบลบ้านนา', '03', null, null, '63', '6303', '630305', '63030504', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07317', null, 'รพ.สต.บ้านสันป่าป๋วย ตำบลบ้านนา', '03', null, null, '63', '6303', '630305', '63030505', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07318', null, 'รพ.สต.บ้านวังจันทร์ ตำบลวังจันทร์', '03', null, null, '63', '6303', '630306', '63030601', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07319', null, 'รพ.สต.บ้านดงลาน ตำบลวังจันทร์', '03', null, null, '63', '6303', '630306', '63030605', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07320', null, 'รพ.สต.บ้านสันป่าไร่ ตำบลพระธาตุ', '03', null, null, '63', '6304', '630406', '63040605', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07321', null, 'รพ.สต.บ้านวังผา ตำบลแม่จะเรา', '03', null, null, '63', '6304', '630402', '63040204', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07322', null, 'รพ.สต.เฉลิมพระเกียรติ 60 พรรษา นวมินทราชินี จ.ตาก', '03', null, null, '63', '6304', '630402', '63040206', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07323', null, 'รพ.สต.บ้านห้วยบง ตำบลแม่จะเรา', '03', null, null, '63', '6304', '630402', '63040207', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07324', null, 'รพ.สต.บ้านขะเนจื้อ ตำบลขะเนจื้อ', '03', null, null, '63', '6304', '630403', '63040307', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07325', null, 'รพ.สต.บ้านแม่ระมาดน้อย ตำบลขะเนจื้อ', '03', null, null, '63', '6304', '630403', '63040308', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07326', null, 'รพ.สต.บ้านคำหวัน ตำบลแม่ตื่น', '03', null, null, '63', '6304', '630404', '63040405', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07327', null, 'รพ.สต.บ้านแสม ตำบลสามหมื่น', '03', null, null, '63', '6304', '630405', '63040504', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07328', null, 'รพ.สต.ตำบลท่าสองยาง', '03', null, null, '63', '6305', '630501', '63050101', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07329', null, 'รพ.สต.ตำบลแม่สอง', '03', null, null, '63', '6305', '630503', '63050302', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07330', null, 'รพ.สต.บ้านแม่ระเมิง ตำบลแม่สอง', '03', null, null, '63', '6305', '630503', '63050308', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07331', null, 'รพ.สต.ตำบลแม่หละ', '03', null, null, '63', '6305', '630504', '63050401', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07332', null, 'รพ.สต.ตำบลแม่วะหลวง', '03', null, null, '63', '6305', '630505', '63050503', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07333', null, 'รพ.สต.บ้านปูเตอร์ ตำบลแม่กุ', '03', null, null, '63', '6306', '630602', '63060204', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07334', null, 'รพ.สต.ตำบลแม่กุ', '03', null, null, '63', '6306', '630602', '63060207', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07335', null, 'รพ.สต.บ้านแม่กุเหนือ ตำบลแม่กุ', '03', null, null, '63', '6306', '630602', '63060208', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07336', null, 'รพ.สต.บ้านแม่กุใหม่ ตำบลแม่กุ', '03', null, null, '63', '6306', '630602', '63060209', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07337', null, 'รพ.สต.ตำบลพะวอ', '03', null, null, '63', '6306', '630603', '63060309', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07338', null, 'รพ.สต.บ้านปางส่างคำ ตำบลพะวอ', '03', null, null, '63', '6306', '630603', '63060305', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07339', null, 'รพ.สต.ตำบลแม่ตาว', '03', null, null, '63', '6306', '630604', '63060402', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07340', null, 'รพ.สต.บ้านแม่กื๊ดหลวง ตำบลแม่กาษา', '03', null, null, '63', '6306', '630605', '63060501', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07341', null, 'รพ.สต.บ้านแม่กาษา ตำบลแม่กาษา', '03', null, null, '63', '6306', '630605', '63060502', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07342', null, 'รพ.สต.บ้านโกกโก่ ตำบลแม่กาษา', '03', null, null, '63', '6306', '630605', '63060504', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07343', null, 'รพ.สต.บ้านแม่กื้ดสามท่า ตำบลแม่กาษา', '03', null, null, '63', '6306', '630605', '63060508', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07344', null, 'รพ.สต.ตำบลท่าสายลวด', '03', null, null, '63', '6306', '630606', '63060601', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07345', null, 'รพ.สต.บ้านวังตะเคียน ตำบลท่าสายลวด', '03', null, null, '63', '6306', '630606', '63060604', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07346', null, 'รพ.สต.ตำบลแม่ปะ', '03', null, null, '63', '6306', '630607', '63060702', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07347', null, 'รพ.สต.บ้านห้วยกระโหลก ตำบลแม่ปะ', '03', null, null, '63', '6306', '630607', '63060704', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07348', null, 'รพ.สต.บ้านห้วยหินฝน ตำบลแม่ปะ', '03', null, null, '63', '6306', '630607', '63060706', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07349', null, 'รพ.สต.ตำบลมหาวัน', '03', null, null, '63', '6306', '630608', '63060804', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07350', null, 'รพ.สต.บ้านเจดีย์โค๊ะ ตำบลมหาวัน', '03', null, null, '63', '6306', '630608', '63060806', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07351', null, 'รพ.สต.บ้านห้วยยะอุ ตำบลด่านแม่ละเมา', '03', null, null, '63', '6306', '630609', '63060901', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07352', null, 'รพ.สต.บ้านปางส้าน ตำบลด่านแม่ละเมา', '03', null, null, '63', '6306', '630609', '63060902', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07353', null, 'รพ.สต.ตำบลพระธาตุผาแดง', '03', null, null, '63', '6306', '630610', '63061001', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07354', null, 'รพ.สต.บ้านซอโอ ตำบลช่องแคบ', '03', null, null, '63', '6307', '630702', '63070207', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07355', null, 'รพ.สต.ตำบลช่องแคบ', '03', null, null, '63', '6307', '630702', '63070211', '11', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07356', null, 'รพ.สต.บ้านร่มเกล้า 4 ตำบลคีรีราษฎร์', '03', null, null, '63', '6307', '630703', '63070301', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07357', null, 'รพ.สต.บ้านชิบาโบ ตำบลคีรีราษฎร์', '03', null, null, '63', '6307', '630703', '63070308', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07358', null, 'รพ.สต.บ้านร่มเกล้า 1 ตำบลคีรีราษฎร์', '03', null, null, '63', '6307', '630703', '63070304', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07359', null, 'รพ.สต.บ้านวาเล่ย์ ตำบลวาเล่ย์', '03', null, null, '63', '6307', '630704', '63070403', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07360', null, 'รพ.สต.บ้านรวมไทยพัฒนาที่ 16 ตำบลวาเล่ย์', '03', null, null, '63', '6307', '630704', '63070407', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07361', null, 'รพ.สต.บ้านรวมไทยพัฒนาที่ 1 ตำบลรวมไทยพัฒนา', '03', null, null, '63', '6307', '630705', '63070510', '10', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07362', null, 'รพ.สต.บ้านรวมไทยพัฒนาที่ 6 ตำบลรวมไทยพัฒนา', '03', null, null, '63', '6307', '630705', '63070509', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07363', null, 'รพ.สต.บ้านแม่กลองใหม่ ตำบลแม่กลอง', '03', null, null, '63', '6308', '630806', '63080601', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07364', null, 'รพ.สต.บ้านหนองหลวง ตำบลหนองหลวง', '03', null, null, '63', '6308', '630802', '63080201', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07365', null, 'รพ.สต.ตำบลโมโกร', '03', null, null, '63', '6308', '630803', '63080301', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07366', null, 'รพ.สต.ตำบลแม่จัน', '03', null, null, '63', '6308', '630804', '63080402', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('07367', null, 'รพ.สต.ตำบลแม่ละมุ้ง', '03', null, null, '63', '6308', '630805', '63080501', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10558', null, 'รพ.สต.บ้านผาผึ้ง ตำบลเชียงทอง', '03', null, null, '63', '6309', '630901', '63090106', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10559', null, 'รพ.สต.บ้านห้วยเหลือง  ตำบลแม่ท้อ', '03', null, null, '63', '6301', '630111', '63011105', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10560', null, 'สสช.บ้านหินลาด ', '04', null, null, '63', '6303', '630305', '63030503', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10561', null, 'สสช.บ้านนุบอ ', '04', null, null, '63', '6304', '630403', '63040301', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10564', null, 'สสช.บ้านห้วยสินา ', '04', null, null, '63', '6304', '630404', '63040408', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10565', null, 'สสช.บ้านห้วยหมาบ้า ', '04', null, null, '63', '6304', '630404', '63040409', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10566', null, 'สสช.บ้านห้วยโป่ง ', '04', null, null, '63', '6304', '630404', '63040410', '10', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10567', null, 'สสช.บ้านห้วยมะพร้าว ', '04', null, null, '63', '6304', '630404', '63040411', '11', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10568', null, 'สสช.บ้านแพ่แฮ  ', '04', null, null, '63', '6304', '630405', '63040501', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10569', null, 'สสช.บ้านขุนห้วยแม่ท้อ ', '04', null, null, '63', '6304', '630405', '63040502', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10571', null, 'รพ.สต.แม่เหว่ย  ', '03', null, null, '63', '6305', '630501', '63050104', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10572', null, 'รพ.สต.บ้านเรกะติ ตำบลแม่อุสุ', '03', null, null, '63', '6305', '630506', '63050605', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10573', null, 'รพ.สต.บ้านหนองบัว  ตำบลแม่อุสุ', '03', null, null, '63', '6305', '630506', '63050606', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10574', null, 'สสช.บ้านแม่สองน้อย', '04', null, null, '63', '6305', '630506', '63050608', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10575', null, 'รพ.สต.เซหนะเดอลู่ ', '03', null, null, '63', '6305', '630506', '63050601', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10576', null, 'สสช.บ้านมอทีทะ ', '04', null, null, '63', '6305', '630506', '63050609', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10578', null, 'สสช.บ้านตะโป๊ะปู่  ', '04', null, null, '63', '6305', '630502', '63050204', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10580', null, 'สสช.บ้านทีคุคี ', '04', null, null, '63', '6305', '630503', '63050304', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10581', null, 'สสช.บ้านแม่นิล ', '04', null, null, '63', '6305', '630503', '63050306', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10582', null, 'สสช.บ้านตะพิเดอ ', '04', null, null, '63', '6305', '630503', '63050309', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10583', null, 'สสช.บ้านเคลอะเดอคี ', '04', null, null, '63', '6305', '630503', '63050310', '10', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10584', null, 'สสช.บ้านวะโดรโกร ', '04', null, null, '63', '6305', '630503', '63050312', '12', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10585', null, 'สสช.บ้านทีโบะคี ', '04', null, null, '63', '6305', '630503', '63050313', '13', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10586', null, 'รพ.สต.บ้านแม่ออกผารู  ตำบลแม่หละ', '03', null, null, '63', '6305', '630504', '63050403', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10587', null, 'รพ.สต.กาหม่าผาโด้ ', '03', null, null, '63', '6305', '630504', '63050405', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10588', null, 'สสช.บ้านทีจือหล่อคี ', '04', null, null, '63', '6305', '630504', '63050408', '08', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10589', null, 'สสช.บ้านซอแขระกา ', '04', null, null, '63', '6305', '630505', '63050501', '01', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10590', null, 'สสช.บ้านแม่สะเปา ', '04', null, null, '63', '6305', '630505', '63050502', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10591', null, 'สสช.บ้านเกร้คี ', '04', null, null, '63', '6305', '630505', '63050509', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10597', null, 'สสช.บ้านป่าคาใหม่ ', '04', null, null, '63', '6307', '630703', '63070306', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10598', null, 'สสช.บ้านป่าคาเก่า ', '04', null, null, '63', '6307', '630703', '63070307', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10599', null, 'รพ.สต.บ้านยะพอ  ตำบลวาเล่ย์', '03', null, null, '63', '6307', '630704', '63070405', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10600', null, 'สสช.บ้านกิ่วห้าง ', '04', null, null, '63', '6308', '630801', '63080103', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10601', null, 'รพ.สต.วะครึโค๊ะ  ตำบลโมโกร', '03', null, null, '63', '6308', '630803', '63080302', '02', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10602', null, 'สสช.บ้านแม่กลองคี ', '04', null, null, '63', '6308', '630803', '63080303', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10603', null, 'สสช.บ้านร่มเกล้า 5 ', '04', null, null, '63', '6308', '630803', '63080306', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10604', null, 'รพ.สต.บ้านนุโพ ', '03', null, null, '63', '6308', '630804', '63080404', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10605', null, 'รพ.สต.บ้านหม่องกั๊วะ ', '03', null, null, '63', '6308', '630804', '63080407', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10722', null, 'โรงพยาบาลสมเด็จพระเจ้าตากสินมหาราช', '06', null, null, '63', '6301', '630101', '630101', null, null, '10722', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('10723', null, 'โรงพยาบาลแม่สอด', '06', null, null, '63', '6306', '630601', '630601', null, null, '10723', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11238', null, 'โรงพยาบาลบ้านตาก', '07', null, null, '63', '6302', '630201', '63020107', '07', null, '11238', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11239', null, 'โรงพยาบาลสามเงา', '07', null, null, '63', '6303', '630301', '63030104', '04', null, '11239', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11240', null, 'โรงพยาบาลแม่ระมาด', '07', null, null, '63', '6304', '630401', '63040104', '04', null, '11240', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11241', null, 'โรงพยาบาลท่าสองยาง', '07', null, null, '63', '6305', '630502', '63050202', '02', null, '11241', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11242', null, 'โรงพยาบาลพบพระ', '07', null, null, '63', '6307', '630701', '63070102', '02', null, '11242', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11243', null, 'โรงพยาบาลอุ้มผาง', '07', null, null, '63', '6308', '630801', '63080101', '01', null, '11243', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11516', null, 'โรงพยาบาลค่ายวชิรปราการ', '12', null, null, '63', '6301', '630108', '63010800', '00', null, '10722', null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('11820', null, 'แผนกสุขภาพอนามัย เขื่อนภูมิพล', '13', null, null, '63', '6303', '630301', '630301', null, null, '10722', null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('11989', null, 'รพ.สต.บ้านชะลาด ตำบลป่ามะม่วง', '03', null, null, '63', '6301', '630112', '630112', null, null, '10722', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('11990', null, 'รพ.สต.บ้านโป่งแค ตำบลวังประจบ', '03', null, null, '63', '6301', '630114', '63011407', '07', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('12055', null, 'โรงพยาบาลพระวอ', '00', null, null, '63', '6306', '630603', '630603', null, null, '10722', null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('14042', null, 'รพ.สต.บ้านหนองหลวง ตำบลสามหมื่น', '03', null, null, '63', '6304', '630405', '63040503', '03', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14043', null, 'รพ.สต.บ้านทุ่งมะขามป้อม ตำบลพระธาตุ', '03', null, null, '63', '6304', '630406', '63040604', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14044', null, 'รพ.สต.บ้านห้วยนกกก  ตำบลแม่หละ', '03', null, null, '63', '6305', '630504', '63050404', '04', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14045', null, 'รพ.สต.บ้านร่มเกล้าสหมิตร ตำบลคีรีราษฎร์', '03', null, null, '63', '6307', '630703', '63070305', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14046', null, 'รพ.สต.บ้านเปิ่งเคลิ่ง  ตำบลแม่จัน', '03', null, null, '63', '6308', '630804', '63080409', '09', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14127', null, 'สสช.บ้านห้วยกระทิง ', '04', null, null, '63', '6304', '630406', '63040606', '06', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14128', null, 'สสช.บ้านใหม่สามยอดดอย', '04', null, null, '63', '6307', '630702', '63070214', '14', null, '10722', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14129', null, 'สสช.บ้านทรัพย์อนันต์ 18 ', '04', null, null, '63', '6307', '630702', '63070213', '13', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14130', null, 'สสช.บ้านกุยต๊ะ ', '04', null, null, '63', '6308', '630804', '63080405', '05', null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('14158', null, 'สสอ.วังเจ้า', '02', null, null, '63', '6309', '630901', '63090101', '01', null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('14440', null, 'เทศบาลเมืองตาก', '13', null, null, '63', '6301', '630101', '630101', null, null, '10722', null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('14929', null, 'คลินิคชุมชนอบอุ่นเทศบาลนครแม่สอด', '13', null, null, '63', '6306', '630601', '630601', null, null, '10723', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('15015', null, 'รพ.สต.บ้านห้วยไม้แป้น  ตำบลมหาวัน', '03', null, null, '63', '6306', '630608', '630608', null, null, '10723', null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('22194', null, 'สถานีกาชาดเทพรัตน์(สถานีกาชาดที่13จ.ตาก)', '13', null, null, '63', '6301', '630112', '63011203', null, null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('22769', null, 'สถานพยาบาลเรือนจำกลางตาก', '13', null, null, '63', '6301', '630109', '63010909', null, null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('22839', null, 'สถานพยาบาลเรือนจำอำเภอแม่สอด', '13', null, null, '63', '6306', '630601', '63060100', null, null, null, null, null, null, null, 'N', 'N', 'Y', 'Y', 'N', null, null);
INSERT INTO `co_office` VALUES ('27443', null, 'โรงพยาบาลวังเจ้า', '07', null, null, '63', '6309', '630902', null, null, null, null, null, null, null, null, 'Y', 'N', 'Y', 'Y', 'Y', null, null);
INSERT INTO `co_office` VALUES ('99922', null, 'ศูนย์สุขภาพชุมชนโรงพยาบาลแม่สอด', '08', null, null, '63', '6306', '630601', '630601', null, null, '10723', null, null, null, null, 'N', 'N', 'Y', 'Y', 'Y', null, null);

-- ----------------------------
-- Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) NOT NULL COMMENT 'ชื่อแผนก',
  `d_description` text COMMENT 'รายละเอียดเพิ่้มเติม',
  `d_type` tinyint(1) NOT NULL COMMENT 'ประเภท 0-งานบริการ 1-งานสนับสนุน',
  `d_status` tinyint(1) NOT NULL COMMENT 'สถานะ 0-ยกเลิก 1-ใช้งาน',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='ตารางแผนก';

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', 'IT', 'IT ทำทุกอย่างที่เสียบปลั๊กได้', '1', '1');
INSERT INTO `departments` VALUES ('3', 'อายุรกรรม', 'อายุรกรรม ตึก A', '0', '1');

-- ----------------------------
-- Table structure for `ncdscreenform`
-- ----------------------------
DROP TABLE IF EXISTS `ncdscreenform`;
CREATE TABLE `ncdscreenform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` char(13) DEFAULT NULL COMMENT 'เลข 13 หลัก',
  `name` varchar(100) DEFAULT NULL COMMENT 'ชื่อผู้รับประเมิณ',
  `lname` varchar(100) DEFAULT NULL COMMENT 'นามสกุล',
  `sex` char(1) DEFAULT NULL COMMENT 'M = ผู้ชาย F = ผู้หญิง',
  `privilege` int(1) DEFAULT NULL COMMENT 'สิทธิการรักษา 1 = ผู้ประกันตน 2 = ข้าราชการ 3 = สิทธิหลักประกันสุขภาพถ้วนหน้า',
  `mom_dm` varchar(100) DEFAULT NULL COMMENT 'ประวัติเบาหวาน แม่หรือพ่อ true = เป็น false = ไม่เป็น',
  `mom_ht` varchar(100) DEFAULT NULL COMMENT 'ประวัติความดัน แม่หรือพ่อ true = เป็น false = ไม่เป็น',
  `mom_gout` varchar(100) DEFAULT NULL COMMENT 'ประวัติเก้๊าท์ แม่หรือพ่อ true = เป็น false = ไม่เป็น',
  `mom_crf` varchar(100) DEFAULT NULL,
  `mom_mi` varchar(100) DEFAULT NULL COMMENT 'ประวัติกล้ามเนื้อหัวใจตาย แม่หรือพ่อ true = เป็น false = ไม่เป็น',
  `mom_stroke` varchar(100) DEFAULT NULL COMMENT 'ประวัติเส้นเลือกสมอง แม่หรือพ่อ true = เป็น false = ไม่เป็น ',
  `mom_copd` varchar(100) DEFAULT NULL COMMENT 'ประวัติถุงลมพอง แม่หรือพ่อ true = เป็น false = ไม่เป็น',
  `mom_none` varchar(100) DEFAULT NULL COMMENT 'ประวัติการเป็นโรคไม่ทราบ แม่หรือพ่อ true = เป็น false = ไม่เป็น',
  `mom_etc` longtext COMMENT 'ประวัติการเป็นโรค อื่น ๆ  แม่หรือพ่อ',
  `b_dm` varchar(100) DEFAULT NULL COMMENT 'ประวัติเบาหวาน พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น',
  `b_ht` varchar(100) DEFAULT NULL COMMENT 'ประวัติความดัน พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น',
  `b_gout` varchar(100) DEFAULT NULL COMMENT 'ประวัติเก้๊าท์ พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น',
  `b_crf` varchar(100) DEFAULT NULL COMMENT 'ประวัติไตวาย พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น',
  `b_mi` varchar(100) DEFAULT NULL COMMENT 'ประวัติกล้ามเนื้อหัวใจตาย พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น',
  `b_stroke` varchar(100) DEFAULT NULL COMMENT 'ประวัติเส้นเลือกสมอง พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น ',
  `b_copd` varchar(100) DEFAULT NULL COMMENT 'ประวัติถุงลมพอง พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น',
  `b_none` varchar(100) DEFAULT NULL COMMENT 'ประวัติการเป็นโรคไม่ทราบ พี่น้อง(สายตรง) true = เป็น false = ไม่เป็น',
  `b_etc` longtext COMMENT 'ประวัติการเป็นโรค อื่น ๆ  พี่น้อง(สายตรง)',
  `me_dm` int(1) DEFAULT NULL COMMENT 'ประวัติการเจ็บป่วยโรคเบาหวาน ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี 3 = ไม่เคยตรวจ',
  `me_ht` int(1) DEFAULT NULL COMMENT 'ประวัติการเจ็บป่วยโรคความดัน ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี 3 = ไม่เคยตรวจ',
  `me_cirrhosis` int(1) DEFAULT NULL COMMENT 'ประวัติการเจ็บป่วยโรคตับ ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี 3 = ไม่เคยตรวจ',
  `me_paralysis` int(1) DEFAULT NULL COMMENT 'ประวัติการเจ็บป่วยโรคอัมพาต ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี 3 = ไม่เคยตรวจ',
  `me_heart` int(1) DEFAULT NULL COMMENT 'ประวัติการเจ็บป่วยโรคหัวใจ ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี 3 = ไม่เคยตรวจ',
  `me_dyslipidemia` int(1) DEFAULT NULL COMMENT 'ประวัติการเจ็บป่วยโรคไขมันในเลือดผิดปกติ ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี 3 = ไม่เคยตรวจ',
  `me_foot` int(1) DEFAULT NULL COMMENT 'ประวัติการเจ็บป่วยโรคแผลที่เท้าตัดขา(จากเบาหวาน) ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_confined` int(1) DEFAULT NULL COMMENT 'คลอดบุตรน้ำหนักเกิน 4 กิโลกรม ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_water` int(1) DEFAULT NULL COMMENT 'ดื่มน้ำบ่อยและมาก ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_urine` int(1) DEFAULT NULL COMMENT 'ปัสสาวะกลางคืน 3 ครั้งขึ้นไป ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_eat` int(1) DEFAULT NULL COMMENT 'กินจุแต่ผอม ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_weight_loss` int(1) DEFAULT NULL COMMENT 'น้ำหนักลด / อ่อนเพลีย 1 = มี 2 = ไม่มี',
  `me_lesion_mouth` int(1) DEFAULT NULL COMMENT 'เป็นแผลริมฝีปากบ่อยและหายยาก ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_skin` int(1) DEFAULT NULL COMMENT 'คันตามผิดหนังและอวัยวะเพศสืบพันธ์ ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_eye` int(1) DEFAULT NULL COMMENT 'ตาพร่ามัว ต้องเปลี่ยนแว่นบ่อยผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `me_seared_foot_hand` int(1) DEFAULT NULL COMMENT 'ชาปลายมือ ปลายเท้า โดยไม่ทราบสาเหตุ ผู้ถูกประเมิณ 1 = มี 2 = ไม่มี',
  `service` int(1) DEFAULT NULL COMMENT 'การรักษา 1. รับการรักษาอยู่ / ปฏิบัติตามที่แพทย์แนะนำ 2. รับการรักษาแต่ไม่สม่ำเสมอ 3. เคยรักษา ขณะนี้ไม่รักษา / หายาทานเอง',
  `smokes` int(1) DEFAULT NULL COMMENT '1 = สูบ 2 = ไม่สูบ 3 = เคยสูบแต่เลิกแล้ว',
  `amountday` int(5) DEFAULT NULL COMMENT 'ถ้าสูบกรณีเลือกเป็น 1 จำนวน มวน/วัน',
  `pack` int(5) DEFAULT NULL,
  `typesmoke` varchar(255) DEFAULT NULL,
  `typesmokeold` varchar(255) DEFAULT NULL COMMENT 'ถ้าเลือกเป็น 3 ชนิดของบุหรี่ที่เคยสูบ',
  `amountyear` int(3) DEFAULT NULL COMMENT 'ถ้าเลือกเป็น 3 ระยะเวลา(ปี) ตั้งแต่เริ่มสูบบุหรี่ถึงปัจจุบัน',
  `drink` int(1) DEFAULT NULL COMMENT '1 = ดื่ม 2 = ไม่ดื่ม 3 = ดื่มแต่เลิกแล้ว',
  `amountdrinkweek` int(3) DEFAULT NULL COMMENT 'กรณีที่เลือกเป็น 1 กี่ครั้ง/สัปดาห์ (ดื่มเหล้า มากกว่า 45 ซีซี ต่อวัน / ดื่มเบียร์ มากกว่า 240 ซีซี ต่อวัน / ดื่มไวน์ มากกว่า 120 ซีซี ต่อวัน)',
  `exercise` int(1) DEFAULT NULL COMMENT '1 = ออกกำลังกาย ทุกวัน ครั้งละ 30 นาที 2 = ออกกำลังกาย สัปดาห์ละมากกว่า 3 ครั้ง ครั้งละ 30 นาที สม่ำเสมอ 3 = ออกกำลังกาย สัปดาห์ละ 3 ครั้งๆละ 30 นาที สม่ำเสมอ 4 = ออกกำลังกาย น้อยกว่าสัปดาห์ละ 3 ครั้ง 5 = ไม่ออกกำลังกายเลย',
  `sweet` int(1) DEFAULT NULL COMMENT 'อาหารรสหวาน 0 = ไม่ชอบ 1 = ชอบ',
  `salty` int(1) DEFAULT NULL COMMENT 'อาหารรสเค็ม 0 = ไม่ชอบ 1 = ชอบ',
  `creamy` int(1) DEFAULT NULL COMMENT 'อาหารรสมัน 0 = ไม่ชอบ 1 = ชอบ',
  `nonselect` int(1) DEFAULT NULL COMMENT 'ไม่ชอบเลย 0 = ไม่ชอบ 1 = ชอบ',
  `height` decimal(5,2) DEFAULT NULL COMMENT 'ส่วนสูง',
  `weight` decimal(5,2) DEFAULT NULL COMMENT 'น้ำหนัก',
  `bmi` decimal(5,2) DEFAULT NULL COMMENT 'ค่า BMI',
  `bp_s1_start` int(5) DEFAULT NULL COMMENT 'BP ครั้งที่ 1 ',
  `bp_s1_end` int(5) DEFAULT NULL COMMENT 'BP ครั้งที่ 1 ',
  `bp_s2_start` int(5) DEFAULT NULL COMMENT 'BP ครั้งที่ 2',
  `bp_s2_end` int(5) DEFAULT NULL COMMENT 'BP ครั้งที่ 2',
  `bp_avg_start` decimal(5,2) DEFAULT NULL COMMENT 'BP เฉลี่ย',
  `bp_avg_end` decimal(5,2) DEFAULT NULL COMMENT 'BP เฉลี่',
  `fbs` int(5) DEFAULT NULL COMMENT 'กรณีตรวจ FBS',
  `sugar` int(5) DEFAULT NULL,
  `food` int(5) DEFAULT NULL COMMENT 'หลังอาหาร',
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ncdscreenform
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_department` int(11) NOT NULL COMMENT 'เชื่อมตาราง departments',
  `username` varchar(20) NOT NULL COMMENT 'username',
  `passwords` varchar(100) NOT NULL COMMENT 'password',
  `first_name` varchar(255) NOT NULL COMMENT 'ชื่อ',
  `last_name` varchar(255) NOT NULL COMMENT 'สกุล',
  `hos_code` varchar(20) NOT NULL COMMENT 'รหัส รพ.',
  `phone` varchar(20) DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'สถานะ 0-ยกเลิก 1-ใช้งาน',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT 'ระดับ 0-admin 1-พัสดุ 2-user',
  PRIMARY KEY (`id`),
  KEY `users_id_department_foreign` (`id_department`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_department`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='ตารางผู้ใช้งาน';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '00049', '0821684717', '1', '0');
INSERT INTO `users` VALUES ('3', '1', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', 'user', '11242', '0800383930', '1', '2');
INSERT INTO `users` VALUES ('4', '1', 'test', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', '00673', '0800123456', '1', '2');
INSERT INTO `users` VALUES ('5', '1', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo', 'demo', '63060120', '0800260943', '1', '2');
