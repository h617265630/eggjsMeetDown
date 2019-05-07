/*
 Navicat Premium Data Transfer

 Source Server         : egg
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : burn

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 07/05/2019 18:05:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `companyDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '好公司', '123');
INSERT INTO `company` VALUES ('2', '很好公司', '1234');
INSERT INTO `company` VALUES ('3', '非常好公司', '12345');

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract`  (
  `id` int(4) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contract
-- ----------------------------
INSERT INTO `contract` VALUES (1, 'c1');
INSERT INTO `contract` VALUES (2, 'c2');
INSERT INTO `contract` VALUES (3, 'c3');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `pinyin_short` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pinyin_full` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (290, '北京', 120, 'bj', 'Beijing', NULL, NULL);
INSERT INTO `location` VALUES (291, '重庆', 78, 'cq', 'Chongqing', NULL, NULL);
INSERT INTO `location` VALUES (292, '上海', 119, 'sh', 'Shanghai', NULL, NULL);
INSERT INTO `location` VALUES (293, '天津', 44, 'tj', 'Tianjin', NULL, NULL);
INSERT INTO `location` VALUES (295, '合肥', 33, 'hf', 'Hefei', NULL, NULL);
INSERT INTO `location` VALUES (296, '安庆', 7, 'aq', 'Anqing', NULL, NULL);
INSERT INTO `location` VALUES (297, '蚌埠', 4, 'bb', 'Bengbu', NULL, NULL);
INSERT INTO `location` VALUES (298, '巢湖', 2, 'ch', 'Chaohu', NULL, NULL);
INSERT INTO `location` VALUES (299, '池州', 1, 'cz', 'Chizhou', NULL, NULL);
INSERT INTO `location` VALUES (300, '滁州', 6, 'cz', 'Chuzhou', NULL, NULL);
INSERT INTO `location` VALUES (301, '阜阳', 2, 'fy', 'Fuyang', NULL, NULL);
INSERT INTO `location` VALUES (302, '亳州', 3, 'bz', 'Bozhou', NULL, NULL);
INSERT INTO `location` VALUES (303, '淮北', 2, 'hb', 'Huaibei', NULL, NULL);
INSERT INTO `location` VALUES (304, '淮南', 3, 'hn', 'Huainan', NULL, NULL);
INSERT INTO `location` VALUES (305, '黄山', 3, 'hs', 'Huangshan', NULL, NULL);
INSERT INTO `location` VALUES (311, '界首', 1, 'js', 'Jieshou', NULL, NULL);
INSERT INTO `location` VALUES (312, '六安', 5, 'la', 'Liuan', NULL, NULL);
INSERT INTO `location` VALUES (313, '马鞍山', 10, 'mas', 'Maanshan', NULL, NULL);
INSERT INTO `location` VALUES (315, '宁国', 1, 'ng', 'Ningguo', NULL, NULL);
INSERT INTO `location` VALUES (316, '桐城', 1, 'tc', 'Tongcheng', NULL, NULL);
INSERT INTO `location` VALUES (317, '铜陵', 2, 'tl', 'Tongling', NULL, NULL);
INSERT INTO `location` VALUES (318, '宿州', 2, 'sz', 'Suzhou', NULL, NULL);
INSERT INTO `location` VALUES (320, '芜湖', 9, 'wh', 'Wuhu', NULL, NULL);
INSERT INTO `location` VALUES (321, '宣城', 4, 'xc', 'Xuancheng', NULL, NULL);
INSERT INTO `location` VALUES (323, '厦门', 23, 'xm', 'Xiamen', NULL, NULL);
INSERT INTO `location` VALUES (324, '长乐', 1, 'cl', 'Changle', NULL, NULL);
INSERT INTO `location` VALUES (327, '福清', 2, 'fq', 'Fuqing', NULL, NULL);
INSERT INTO `location` VALUES (328, '福州', 20, 'fz', 'Fuzhou', NULL, NULL);
INSERT INTO `location` VALUES (330, '建阳', 1, 'jy', 'Jianyang', NULL, NULL);
INSERT INTO `location` VALUES (331, '晋江', 5, 'jj', 'Jinjiang', NULL, NULL);
INSERT INTO `location` VALUES (333, '龙岩', 6, 'ly', 'Longyan', NULL, NULL);
INSERT INTO `location` VALUES (334, '南安', 1, 'na', 'Nanan', NULL, NULL);
INSERT INTO `location` VALUES (335, '南平', 2, 'np', 'Nanping', NULL, NULL);
INSERT INTO `location` VALUES (336, '宁德', 3, 'nd', 'Ningde', NULL, NULL);
INSERT INTO `location` VALUES (337, '莆田', 4, 'pt', 'Putian', NULL, NULL);
INSERT INTO `location` VALUES (338, '泉州', 9, 'qz', 'Quanzhou', NULL, NULL);
INSERT INTO `location` VALUES (339, '三明', 6, 'sm', 'Sanming', NULL, NULL);
INSERT INTO `location` VALUES (340, '邵武', 1, 'sw', 'Shaowu', NULL, NULL);
INSERT INTO `location` VALUES (341, '石狮', 1, 'ss', 'Shishi', NULL, NULL);
INSERT INTO `location` VALUES (343, '永安', 2, 'ya', 'Yongan', NULL, NULL);
INSERT INTO `location` VALUES (344, '漳平', 1, 'zp', 'Zhangping', NULL, NULL);
INSERT INTO `location` VALUES (345, '漳州', 7, 'zz', 'Zhangzhou', NULL, NULL);
INSERT INTO `location` VALUES (347, '兰州', 16, 'lz', 'Lanzhou', NULL, NULL);
INSERT INTO `location` VALUES (348, '敦煌', 1, 'dh', 'Dunhuang', NULL, NULL);
INSERT INTO `location` VALUES (349, '白银', 1, 'by', 'Baiyin', NULL, NULL);
INSERT INTO `location` VALUES (350, '定西', 1, 'dx', 'Dingxi', NULL, NULL);
INSERT INTO `location` VALUES (352, '嘉峪关', 2, 'jyg', 'Jiayuguan', NULL, NULL);
INSERT INTO `location` VALUES (354, '酒泉', 1, 'jq', 'Jiuquan', NULL, NULL);
INSERT INTO `location` VALUES (355, '陇南', 3, 'ln', 'Longnan', NULL, NULL);
INSERT INTO `location` VALUES (358, '平凉', 1, 'pl', 'Pingliang', NULL, NULL);
INSERT INTO `location` VALUES (359, '庆阳', 1, 'qy', 'Qingyang', NULL, NULL);
INSERT INTO `location` VALUES (360, '天水', 2, 'ts', 'Tianshui', NULL, NULL);
INSERT INTO `location` VALUES (361, '武威', 1, 'ww', 'Wuwei', NULL, NULL);
INSERT INTO `location` VALUES (363, '张掖', 2, 'zy', 'Zhangye', NULL, NULL);
INSERT INTO `location` VALUES (365, '广州', 64, 'gz', 'Guangzhou', NULL, NULL);
INSERT INTO `location` VALUES (366, '深圳', 84, 'sz', 'Shenzhen', NULL, NULL);
INSERT INTO `location` VALUES (367, '汕头', 6, 'st', 'Shantou', NULL, NULL);
INSERT INTO `location` VALUES (368, '珠海', 7, 'zh', 'Zhuhai', NULL, NULL);
INSERT INTO `location` VALUES (369, '潮州', 4, 'cz', 'Chaozhou', NULL, NULL);
INSERT INTO `location` VALUES (370, '从化', 1, 'ch', 'Conghua', NULL, NULL);
INSERT INTO `location` VALUES (371, '东莞', 45, 'dg', 'Dongguan', NULL, NULL);
INSERT INTO `location` VALUES (373, '佛山', 35, 'fs', 'Foshan', NULL, NULL);
INSERT INTO `location` VALUES (376, '鹤山', 1, 'hs', 'Heshan', NULL, NULL);
INSERT INTO `location` VALUES (377, '河源', 4, 'hy', 'Heyuan', NULL, NULL);
INSERT INTO `location` VALUES (378, '化州', 1, 'hz', 'Huazhou', NULL, NULL);
INSERT INTO `location` VALUES (379, '惠州', 16, 'hz', 'Huizhou', NULL, NULL);
INSERT INTO `location` VALUES (380, '江门', 14, 'jm', 'Jiangmen', NULL, NULL);
INSERT INTO `location` VALUES (381, '揭阳', 4, 'jy', 'Jieyang', NULL, NULL);
INSERT INTO `location` VALUES (382, '开平', 1, 'kp', 'Kaiping', NULL, NULL);
INSERT INTO `location` VALUES (385, '廉江', 2, 'lj', 'Lianjiang', NULL, NULL);
INSERT INTO `location` VALUES (389, '茂名', 5, 'mm', 'Maoming', NULL, NULL);
INSERT INTO `location` VALUES (390, '梅州', 6, 'mz', 'Meizhou', NULL, NULL);
INSERT INTO `location` VALUES (394, '清远', 4, 'qy', 'Qingyuan', NULL, NULL);
INSERT INTO `location` VALUES (395, '汕尾', 2, 'sw', 'Shanwei', NULL, NULL);
INSERT INTO `location` VALUES (396, '韶关', 4, 'sg', 'Shaoguan', NULL, NULL);
INSERT INTO `location` VALUES (397, '四会', 1, 'sh', 'Sihui', NULL, NULL);
INSERT INTO `location` VALUES (399, '吴川', 1, 'wc', 'Wuchuan', NULL, NULL);
INSERT INTO `location` VALUES (400, '兴宁', 1, 'xn', 'Xingning', NULL, NULL);
INSERT INTO `location` VALUES (403, '阳江', 3, 'yj', 'Yangjiang', NULL, NULL);
INSERT INTO `location` VALUES (404, '英德', 1, 'yd', 'Yingde', NULL, NULL);
INSERT INTO `location` VALUES (405, '云浮', 2, 'yf', 'Yunfu', NULL, NULL);
INSERT INTO `location` VALUES (407, '湛江', 8, 'zj', 'Zhanjiang', NULL, NULL);
INSERT INTO `location` VALUES (408, '肇庆', 6, 'zq', 'Zhaoqing', NULL, NULL);
INSERT INTO `location` VALUES (409, '中山', 14, 'zs', 'Zhongshan', NULL, NULL);
INSERT INTO `location` VALUES (411, '南宁', 17, 'nn', 'Nanning', NULL, NULL);
INSERT INTO `location` VALUES (412, '百色', 1, 'bs', 'Baise', NULL, NULL);
INSERT INTO `location` VALUES (413, '北海', 4, 'bh', 'Beihai', NULL, NULL);
INSERT INTO `location` VALUES (418, '防城港', 2, 'fcg', 'Fangchenggang', NULL, NULL);
INSERT INTO `location` VALUES (419, '贵港', 1, 'gg', 'Guigang', NULL, NULL);
INSERT INTO `location` VALUES (420, '桂林', 7, 'gl', 'Guilin', NULL, NULL);
INSERT INTO `location` VALUES (422, '贺州', 2, 'hz', 'Hezhou', NULL, NULL);
INSERT INTO `location` VALUES (423, '河池', 1, 'hc', 'Hechi', NULL, NULL);
INSERT INTO `location` VALUES (425, '柳州', 5, 'lz', 'Liuzhou', NULL, NULL);
INSERT INTO `location` VALUES (426, '钦州', 3, 'qz', 'Qinzhou', NULL, NULL);
INSERT INTO `location` VALUES (428, '梧州', 2, 'wz', 'Wuzhou', NULL, NULL);
INSERT INTO `location` VALUES (431, '玉林', 2, 'yl', 'Yulin', NULL, NULL);
INSERT INTO `location` VALUES (433, '贵阳', 15, 'gy', 'Guiyang', NULL, NULL);
INSERT INTO `location` VALUES (434, '安顺', 2, 'as', 'Anshun', NULL, NULL);
INSERT INTO `location` VALUES (435, '毕节', 1, 'bj', 'Bijie', NULL, NULL);
INSERT INTO `location` VALUES (437, '都匀', 1, 'dy', 'Duyun', NULL, NULL);
INSERT INTO `location` VALUES (439, '凯里', 1, 'kl', 'Kaili', NULL, NULL);
INSERT INTO `location` VALUES (440, '六盘水', 5, 'lps', 'Liupanshui', NULL, NULL);
INSERT INTO `location` VALUES (444, '仁怀', 1, 'rh', 'Renhuai', NULL, NULL);
INSERT INTO `location` VALUES (445, '铜仁', 3, 'tr', 'Tongren', NULL, NULL);
INSERT INTO `location` VALUES (447, '兴义', 1, 'xy', 'Xingyi', NULL, NULL);
INSERT INTO `location` VALUES (448, '遵义', 6, 'zy', 'Zunyi', NULL, NULL);
INSERT INTO `location` VALUES (450, '海口', 8, 'hk', 'Haikou', NULL, NULL);
INSERT INTO `location` VALUES (451, '三亚', 3, 'sy', 'Sanya', NULL, NULL);
INSERT INTO `location` VALUES (453, '石家庄', 18, 'sjz', 'Shijiazhuang', NULL, NULL);
INSERT INTO `location` VALUES (455, '保定', 7, 'bd', 'Baoding', NULL, NULL);
INSERT INTO `location` VALUES (456, '霸州', 1, 'bz', 'Bazhou', NULL, NULL);
INSERT INTO `location` VALUES (457, '泊头', 1, 'bt', 'Botou', NULL, NULL);
INSERT INTO `location` VALUES (458, '沧州', 5, 'cz', 'Cangzhou', NULL, NULL);
INSERT INTO `location` VALUES (459, '承德', 3, 'cd', 'Chengde', NULL, NULL);
INSERT INTO `location` VALUES (464, '邯郸', 11, 'hd', 'Handan', NULL, NULL);
INSERT INTO `location` VALUES (466, '衡水', 1, 'hs', 'Hengshui', NULL, NULL);
INSERT INTO `location` VALUES (470, '廊坊', 2, 'lf', 'Langfang', NULL, NULL);
INSERT INTO `location` VALUES (474, '迁安', 3, 'qa', 'Qianan', NULL, NULL);
INSERT INTO `location` VALUES (475, '秦皇岛', 3, 'qhd', 'Qinhuangdao', NULL, NULL);
INSERT INTO `location` VALUES (477, '三河', 1, 'sh', 'Sanhe', NULL, NULL);
INSERT INTO `location` VALUES (478, '沙河', 2, 'sh', 'Shahe', NULL, NULL);
INSERT INTO `location` VALUES (480, '唐山', 8, 'ts', 'Tangshan', NULL, NULL);
INSERT INTO `location` VALUES (482, '邢台', 3, 'gt', 'Xingtai', NULL, NULL);
INSERT INTO `location` VALUES (485, '张家口', 8, 'zjk', 'Zhangjiakou', NULL, NULL);
INSERT INTO `location` VALUES (486, '涿州', 1, 'zz', 'Zhuozhou', NULL, NULL);
INSERT INTO `location` VALUES (489, '郑州', 28, 'zz', 'Zhengzhou', NULL, NULL);
INSERT INTO `location` VALUES (490, '安阳', 8, 'ay', 'Anyang', NULL, NULL);
INSERT INTO `location` VALUES (491, '长葛', 1, 'cg', 'Changge', NULL, NULL);
INSERT INTO `location` VALUES (492, '登封', 1, 'df', 'Dengfeng', NULL, NULL);
INSERT INTO `location` VALUES (495, '鹤壁', 2, 'hb', 'Hebi', NULL, NULL);
INSERT INTO `location` VALUES (497, '焦作', 4, 'jz', 'Jiaozuo', NULL, NULL);
INSERT INTO `location` VALUES (498, '济源', 4, 'jy', 'Jiyuan', NULL, NULL);
INSERT INTO `location` VALUES (499, '开封', 5, 'kf', 'Kaifeng', NULL, NULL);
INSERT INTO `location` VALUES (502, '漯河', 1, 'lh', 'Luohe', NULL, NULL);
INSERT INTO `location` VALUES (503, '洛阳', 11, 'ly', 'Luoyang', NULL, NULL);
INSERT INTO `location` VALUES (504, '孟州', 1, 'mz', 'Mengzhou', NULL, NULL);
INSERT INTO `location` VALUES (505, '南阳', 5, 'ny', 'Nanyang', NULL, NULL);
INSERT INTO `location` VALUES (506, '平顶山', 3, 'pds', 'Pingdingshan', NULL, NULL);
INSERT INTO `location` VALUES (507, '濮阳', 3, 'py', 'Puyang', NULL, NULL);
INSERT INTO `location` VALUES (510, '三门峡', 2, 'smx', 'Sanmenxia', NULL, NULL);
INSERT INTO `location` VALUES (511, '商丘', 5, 'sq', 'Shangqiu', NULL, NULL);
INSERT INTO `location` VALUES (514, '项城', 1, 'xc', 'Xiangcheng', NULL, NULL);
INSERT INTO `location` VALUES (515, '信阳', 7, 'xy', 'Xinyang', NULL, NULL);
INSERT INTO `location` VALUES (517, '新乡', 11, 'xx', 'Xinxiang', NULL, NULL);
INSERT INTO `location` VALUES (520, '许昌', 2, 'xc', 'Xuchang', NULL, NULL);
INSERT INTO `location` VALUES (524, '禹州', 2, 'yz', 'Yuzhou', NULL, NULL);
INSERT INTO `location` VALUES (525, '周口', 5, 'zk', 'Zhoukou', NULL, NULL);
INSERT INTO `location` VALUES (526, '驻马店', 2, 'zmd', 'Zhumadian', NULL, NULL);
INSERT INTO `location` VALUES (528, '哈尔滨', 12, 'heb', 'Harbin', NULL, NULL);
INSERT INTO `location` VALUES (530, '安达', 1, 'ad', 'Anda', NULL, NULL);
INSERT INTO `location` VALUES (533, '大庆', 10, 'dq', 'Daqing', NULL, NULL);
INSERT INTO `location` VALUES (536, '鹤岗', 1, 'hg', 'Hegang', NULL, NULL);
INSERT INTO `location` VALUES (539, '虎林', 1, 'hl', 'Hulin', NULL, NULL);
INSERT INTO `location` VALUES (540, '佳木斯', 1, 'jms', 'Jiamusi', NULL, NULL);
INSERT INTO `location` VALUES (541, '鸡西', 1, 'jx', 'Jixi', NULL, NULL);
INSERT INTO `location` VALUES (544, '牡丹江', 2, 'mdj', 'Mudanjiang', NULL, NULL);
INSERT INTO `location` VALUES (545, '讷河', 1, 'nh', 'Nehe', NULL, NULL);
INSERT INTO `location` VALUES (547, '齐齐哈尔', 4, 'qqhe', 'Qiqihar', NULL, NULL);
INSERT INTO `location` VALUES (549, '尚志', 1, 'sz', 'Shangzhi', NULL, NULL);
INSERT INTO `location` VALUES (550, '双城', 1, 'sc', 'Shuangcheng', NULL, NULL);
INSERT INTO `location` VALUES (551, '双鸭山', 1, 'sys', 'Shuangyashan', NULL, NULL);
INSERT INTO `location` VALUES (553, '绥化', 3, 'sh', 'Suihua', NULL, NULL);
INSERT INTO `location` VALUES (554, '铁力', 1, 'tl', 'Tieli', NULL, NULL);
INSERT INTO `location` VALUES (561, '武汉', 45, 'wh', 'Wuhan', NULL, NULL);
INSERT INTO `location` VALUES (562, '安陆', 1, 'al', 'Anlu', NULL, NULL);
INSERT INTO `location` VALUES (563, '赤壁', 2, 'cb', 'Chibi', NULL, NULL);
INSERT INTO `location` VALUES (564, '丹江口', 1, 'djk', 'Danjiangkou', NULL, NULL);
INSERT INTO `location` VALUES (567, '恩施', 4, 'es', 'Enshi', NULL, NULL);
INSERT INTO `location` VALUES (568, '鄂州', 2, 'ez', 'Ezhou', NULL, NULL);
INSERT INTO `location` VALUES (570, '汉川', 1, 'hc', 'Hanchuan', NULL, NULL);
INSERT INTO `location` VALUES (571, '洪湖', 1, 'hh', 'Honghu', NULL, NULL);
INSERT INTO `location` VALUES (572, '黄冈', 3, 'hg', 'Huanggang', NULL, NULL);
INSERT INTO `location` VALUES (573, '黄石', 6, 'hs', 'Huangshi', NULL, NULL);
INSERT INTO `location` VALUES (574, '荆门', 5, 'jm', 'Jingmen', NULL, NULL);
INSERT INTO `location` VALUES (575, '荆州', 5, 'jz', 'Jingzhou', NULL, NULL);
INSERT INTO `location` VALUES (577, '利川', 2, 'lc', 'Lichuan', NULL, NULL);
INSERT INTO `location` VALUES (578, '麻城', 1, 'mc', 'Macheng', NULL, NULL);
INSERT INTO `location` VALUES (579, '潜江', 1, 'qj', 'Qianjiang', NULL, NULL);
INSERT INTO `location` VALUES (581, '十堰', 9, 'sy', 'Shiyan', NULL, NULL);
INSERT INTO `location` VALUES (582, '松滋', 1, 'sz', 'Songzi', NULL, NULL);
INSERT INTO `location` VALUES (583, '随州', 2, 'sz', 'Suizhou', NULL, NULL);
INSERT INTO `location` VALUES (584, '天门', 1, 'tm', 'Tianmen', NULL, NULL);
INSERT INTO `location` VALUES (586, '襄阳', 4, 'xy', 'Xiangyang', NULL, NULL);
INSERT INTO `location` VALUES (587, '咸宁', 6, 'xn', 'Xianning', NULL, NULL);
INSERT INTO `location` VALUES (588, '仙桃', 2, 'xt', 'Xiantao', NULL, NULL);
INSERT INTO `location` VALUES (589, '孝感', 2, 'xg', 'Xiaogan', NULL, NULL);
INSERT INTO `location` VALUES (590, '宜昌', 5, 'yc', 'Yichang', NULL, NULL);
INSERT INTO `location` VALUES (592, '宜都', 1, 'yd', 'Yidu', NULL, NULL);
INSERT INTO `location` VALUES (593, '应城', 1, 'yc', 'Yingcheng', NULL, NULL);
INSERT INTO `location` VALUES (595, '枝江', 1, 'zj', 'Zhijiang', NULL, NULL);
INSERT INTO `location` VALUES (598, '长沙', 28, 'cs', 'Changsha', NULL, NULL);
INSERT INTO `location` VALUES (599, '郴州', 5, 'cz', 'Chenzhou', NULL, NULL);
INSERT INTO `location` VALUES (600, '常德', 6, 'cd', 'Changde', NULL, NULL);
INSERT INTO `location` VALUES (602, '衡阳', 10, 'hy', 'Hengyang', NULL, NULL);
INSERT INTO `location` VALUES (604, '怀化', 4, 'hh', 'Huaihua', NULL, NULL);
INSERT INTO `location` VALUES (607, '耒阳', 3, 'ly', 'Leiyang', NULL, NULL);
INSERT INTO `location` VALUES (608, '冷水江', 1, 'lsj', 'Lengshuijiang', NULL, NULL);
INSERT INTO `location` VALUES (609, '涟源', 1, 'ly', 'Lianyuan', NULL, NULL);
INSERT INTO `location` VALUES (610, '醴陵', 1, 'll', 'Liling', NULL, NULL);
INSERT INTO `location` VALUES (612, '浏阳', 5, 'ly', 'Liuyang', NULL, NULL);
INSERT INTO `location` VALUES (613, '娄底', 6, 'ld', 'Loudi', NULL, NULL);
INSERT INTO `location` VALUES (617, '邵阳', 5, 'sy', 'Shaoyang', NULL, NULL);
INSERT INTO `location` VALUES (618, '湘潭', 7, 'xt', 'Xiangtan', NULL, NULL);
INSERT INTO `location` VALUES (619, '湘西', 1, 'xx', 'Xiangxi', NULL, NULL);
INSERT INTO `location` VALUES (620, '湘乡', 1, 'xx', 'Xiangxiang', NULL, NULL);
INSERT INTO `location` VALUES (621, '益阳', 5, 'yy', 'Yiyang', NULL, NULL);
INSERT INTO `location` VALUES (622, '永州', 3, 'yz', 'Yongzhou', NULL, NULL);
INSERT INTO `location` VALUES (623, '岳阳', 8, 'yy', 'Yueyang', NULL, NULL);
INSERT INTO `location` VALUES (624, '张家界', 2, 'zgj', 'Zhangjiajie', NULL, NULL);
INSERT INTO `location` VALUES (625, '株洲', 10, 'zz', 'Zhuzhou', NULL, NULL);
INSERT INTO `location` VALUES (628, '南京', 32, 'nj', 'Nanjing', NULL, NULL);
INSERT INTO `location` VALUES (629, '常熟', 5, 'cs', 'Changshu', NULL, NULL);
INSERT INTO `location` VALUES (630, '常州', 16, 'cz', 'Changzhou', NULL, NULL);
INSERT INTO `location` VALUES (631, '大丰', 1, 'df', 'Dafeng', NULL, NULL);
INSERT INTO `location` VALUES (632, '丹阳', 2, 'dy', 'Danyang', NULL, NULL);
INSERT INTO `location` VALUES (633, '东台', 1, 'dt', 'Dongtai', NULL, NULL);
INSERT INTO `location` VALUES (634, '高邮', 2, 'gy', 'Gaoyou', NULL, NULL);
INSERT INTO `location` VALUES (635, '海门', 4, 'hm', 'Haimen', NULL, NULL);
INSERT INTO `location` VALUES (636, '淮安', 12, 'ha', 'Huaian', NULL, NULL);
INSERT INTO `location` VALUES (639, '江都', 2, 'jd', 'Jiangdu', NULL, NULL);
INSERT INTO `location` VALUES (640, '姜堰', 2, 'jy', 'Jiangyan', NULL, NULL);
INSERT INTO `location` VALUES (641, '江阴', 5, 'jy', 'Jiangyin', NULL, NULL);
INSERT INTO `location` VALUES (642, '靖江', 4, 'jj', 'Jingjiang', NULL, NULL);
INSERT INTO `location` VALUES (643, '金坛', 2, 'jt', 'Jintan', NULL, NULL);
INSERT INTO `location` VALUES (644, '句容', 2, 'jr', 'Jurong', NULL, NULL);
INSERT INTO `location` VALUES (645, '昆山', 9, 'ks', 'Kunshan', NULL, NULL);
INSERT INTO `location` VALUES (646, '连云港', 5, 'lyg', 'Lianyungang', NULL, NULL);
INSERT INTO `location` VALUES (647, '溧阳', 3, 'ly', 'Liyang', NULL, NULL);
INSERT INTO `location` VALUES (649, '南通', 14, 'nt', 'Nantong', NULL, NULL);
INSERT INTO `location` VALUES (651, '邳州', 1, 'pz', 'Pizhou', NULL, NULL);
INSERT INTO `location` VALUES (652, '启东', 2, 'qd', 'Qidong', NULL, NULL);
INSERT INTO `location` VALUES (653, '如皋', 4, 'rg', 'Rugao', NULL, NULL);
INSERT INTO `location` VALUES (654, '宿迁', 6, 'sq', 'Suqian', NULL, NULL);
INSERT INTO `location` VALUES (655, '太仓', 4, 'tc', 'Taicang', NULL, NULL);
INSERT INTO `location` VALUES (656, '泰兴', 3, 'tx', 'Taixing', NULL, NULL);
INSERT INTO `location` VALUES (657, '泰州', 6, 'tz', 'Taizhou', NULL, NULL);
INSERT INTO `location` VALUES (660, '吴江', 4, 'wj', 'Wujiang', NULL, NULL);
INSERT INTO `location` VALUES (662, '无锡', 20, 'wx', 'Wuxi', NULL, NULL);
INSERT INTO `location` VALUES (663, '兴化', 2, 'xh', 'Xinghua', NULL, NULL);
INSERT INTO `location` VALUES (664, '徐州', 10, 'xz', 'Xuzhou', NULL, NULL);
INSERT INTO `location` VALUES (665, '盐城', 13, 'yc', 'Yancheng', NULL, NULL);
INSERT INTO `location` VALUES (666, '扬中', 2, 'yz', 'Yangzhong', NULL, NULL);
INSERT INTO `location` VALUES (667, '扬州', 8, 'yz', 'Yangzhou', NULL, NULL);
INSERT INTO `location` VALUES (668, '宜兴', 6, 'yx', 'Yixing', NULL, NULL);
INSERT INTO `location` VALUES (669, '仪征', 3, 'yz', 'Yizheng', NULL, NULL);
INSERT INTO `location` VALUES (670, '张家港', 3, 'zjg', 'Zhangjiagang', NULL, NULL);
INSERT INTO `location` VALUES (671, '镇江', 7, 'zj', 'Zhenjiang', NULL, NULL);
INSERT INTO `location` VALUES (674, '南昌', 17, 'nc', 'Nanchang', NULL, NULL);
INSERT INTO `location` VALUES (676, '丰城', 1, 'fc', 'Fengcheng', NULL, NULL);
INSERT INTO `location` VALUES (677, '赣州', 11, 'gz', 'Ganzhou', NULL, NULL);
INSERT INTO `location` VALUES (678, '高安', 1, 'ga', 'Gaoan', NULL, NULL);
INSERT INTO `location` VALUES (679, '贵溪', 1, 'gx', 'Guixi', NULL, NULL);
INSERT INTO `location` VALUES (680, '九江', 7, 'jj', 'Jiujiang', NULL, NULL);
INSERT INTO `location` VALUES (681, '景德镇', 3, 'jdz', 'Jingdezhen', NULL, NULL);
INSERT INTO `location` VALUES (682, '吉安', 1, 'ja', 'Jian', NULL, NULL);
INSERT INTO `location` VALUES (684, '乐平', 1, 'lp', 'Leping', NULL, NULL);
INSERT INTO `location` VALUES (686, '瑞昌', 1, 'rc', 'Ruichang', NULL, NULL);
INSERT INTO `location` VALUES (688, '上饶', 8, 'sr', 'Shangrao', NULL, NULL);
INSERT INTO `location` VALUES (689, '新余', 7, 'xy', 'Xinyu', NULL, NULL);
INSERT INTO `location` VALUES (690, '鹰潭', 2, 'yt', 'Yingtan', NULL, NULL);
INSERT INTO `location` VALUES (691, '樟树', 1, 'zs', 'Zhangshu', NULL, NULL);
INSERT INTO `location` VALUES (693, '长春', 13, 'cc', 'Changchun', NULL, NULL);
INSERT INTO `location` VALUES (695, '白山', 1, 'bs', 'Baishan', NULL, NULL);
INSERT INTO `location` VALUES (703, '吉林市', 4, 'jls', 'Jilin', NULL, NULL);
INSERT INTO `location` VALUES (706, '辽源', 2, 'ly', 'Liaoyuan', NULL, NULL);
INSERT INTO `location` VALUES (709, '梅河口', 1, 'mhk', 'Meihekou', NULL, NULL);
INSERT INTO `location` VALUES (713, '四平', 2, 'sp', 'Siping', NULL, NULL);
INSERT INTO `location` VALUES (714, '松原', 1, 'sy', 'Songyuan', NULL, NULL);
INSERT INTO `location` VALUES (716, '通化', 3, 'th', 'Tonghua', NULL, NULL);
INSERT INTO `location` VALUES (718, '延边', 3, 'yb', 'Yanbian', NULL, NULL);
INSERT INTO `location` VALUES (722, '沈阳', 40, 'sy', 'Shenyang', NULL, NULL);
INSERT INTO `location` VALUES (724, '鞍山', 5, 'as', 'Anshan', NULL, NULL);
INSERT INTO `location` VALUES (727, '本溪', 2, 'bx', 'Benxi', NULL, NULL);
INSERT INTO `location` VALUES (729, '大连', 26, 'dl', 'Dalian', NULL, NULL);
INSERT INTO `location` VALUES (730, '丹东', 1, 'dd', 'Dandong', NULL, NULL);
INSERT INTO `location` VALUES (731, '大石桥', 1, 'ddq', 'Dashiqiao', NULL, NULL);
INSERT INTO `location` VALUES (734, '东港', 2, 'dg', 'Donggang', NULL, NULL);
INSERT INTO `location` VALUES (735, '抚顺', 5, 'fs', 'Fushun', NULL, NULL);
INSERT INTO `location` VALUES (736, '阜新', 1, 'fx', 'Fuxin', NULL, NULL);
INSERT INTO `location` VALUES (737, '盖州', 2, 'gz', 'Gaizhou', NULL, NULL);
INSERT INTO `location` VALUES (739, '葫芦岛', 3, 'hld', 'Huludao', NULL, NULL);
INSERT INTO `location` VALUES (740, '开原', 1, 'ky', 'Kaiyuan', NULL, NULL);
INSERT INTO `location` VALUES (741, '辽阳', 2, 'ly', 'Liaoyang', NULL, NULL);
INSERT INTO `location` VALUES (744, '盘锦', 6, 'pj', 'Panjin', NULL, NULL);
INSERT INTO `location` VALUES (746, '铁岭', 2, 'tl', 'Tieling', NULL, NULL);
INSERT INTO `location` VALUES (747, '瓦房店', 1, 'wfd', 'Wafangdian', NULL, NULL);
INSERT INTO `location` VALUES (749, '兴城', 1, 'xc', 'Xingcheng', NULL, NULL);
INSERT INTO `location` VALUES (750, '营口', 3, 'yk', 'Yingkou', NULL, NULL);
INSERT INTO `location` VALUES (753, '呼和浩特', 9, 'hhht', 'Hohhot', NULL, NULL);
INSERT INTO `location` VALUES (756, '包头', 7, 'bt', 'Baotou', NULL, NULL);
INSERT INTO `location` VALUES (757, '巴彦淖尔', 4, 'byze', 'Bayannaoer', NULL, NULL);
INSERT INTO `location` VALUES (758, '赤峰', 4, 'cf', 'Chifeng', NULL, NULL);
INSERT INTO `location` VALUES (759, '鄂尔多斯', 4, 'eeds', 'Eerduosi', NULL, NULL);
INSERT INTO `location` VALUES (764, '呼伦贝尔', 4, 'hlbe', 'Hulun Buir', NULL, NULL);
INSERT INTO `location` VALUES (766, '满洲里', 2, 'mzl', 'Manzhouli', NULL, NULL);
INSERT INTO `location` VALUES (767, '通辽', 2, 'tl', 'Tongliao', NULL, NULL);
INSERT INTO `location` VALUES (768, '乌海', 1, 'wh', 'Wuhai', NULL, NULL);
INSERT INTO `location` VALUES (770, '乌兰浩特', 1, 'wlht', 'Wulanhot', NULL, NULL);
INSERT INTO `location` VALUES (777, '银川', 12, 'yc', 'Yinchuan', NULL, NULL);
INSERT INTO `location` VALUES (778, '固原', 2, 'gy', 'Guyuan', NULL, NULL);
INSERT INTO `location` VALUES (781, '石嘴山', 2, 'szs', 'Shizuishan', NULL, NULL);
INSERT INTO `location` VALUES (783, '中卫', 1, 'zw', 'Zhongwei', NULL, NULL);
INSERT INTO `location` VALUES (785, '西宁', 5, 'xn', 'Xining', NULL, NULL);
INSERT INTO `location` VALUES (787, '格尔木', 1, 'gem', 'Geermu', NULL, NULL);
INSERT INTO `location` VALUES (791, '西安', 30, 'xa', 'Xian', NULL, NULL);
INSERT INTO `location` VALUES (792, '安康', 1, 'ak', 'Ankang', NULL, NULL);
INSERT INTO `location` VALUES (793, '宝鸡', 5, 'bj', 'Baoji', NULL, NULL);
INSERT INTO `location` VALUES (795, '韩城', 1, 'hc', 'Hancheng', NULL, NULL);
INSERT INTO `location` VALUES (796, '汉中', 3, 'hz', 'Hanzhong', NULL, NULL);
INSERT INTO `location` VALUES (798, '商洛', 1, 'sl', 'Shangluo', NULL, NULL);
INSERT INTO `location` VALUES (799, '铜川', 1, 'tc', 'Tongchuan', NULL, NULL);
INSERT INTO `location` VALUES (800, '渭南', 3, 'wn', 'Weinan', NULL, NULL);
INSERT INTO `location` VALUES (801, '咸阳', 5, 'xy', 'Xianyang', NULL, NULL);
INSERT INTO `location` VALUES (802, '兴平', 1, 'xp', 'Xingping', NULL, NULL);
INSERT INTO `location` VALUES (803, '延安', 3, 'ya', 'Yanan', NULL, NULL);
INSERT INTO `location` VALUES (805, '济南', 17, 'jn', 'Jinan', NULL, NULL);
INSERT INTO `location` VALUES (808, '德州', 3, 'dz', 'Dezhou', NULL, NULL);
INSERT INTO `location` VALUES (809, '东营', 9, 'dy', 'Dongying', NULL, NULL);
INSERT INTO `location` VALUES (810, '肥城', 2, 'fc', 'Feicheng', NULL, NULL);
INSERT INTO `location` VALUES (813, '菏泽', 8, 'hz', 'Heze', NULL, NULL);
INSERT INTO `location` VALUES (816, '胶州', 3, 'jz', 'Jiaozhou', NULL, NULL);
INSERT INTO `location` VALUES (817, '即墨', 3, 'jm', 'Jimo', NULL, NULL);
INSERT INTO `location` VALUES (818, '济宁', 6, 'jn', 'Jining', NULL, NULL);
INSERT INTO `location` VALUES (820, '莱芜', 3, 'lw', 'Laiwu', NULL, NULL);
INSERT INTO `location` VALUES (821, '莱阳', 2, 'ly', 'Laiyang', NULL, NULL);
INSERT INTO `location` VALUES (822, '莱州', 1, 'lz', 'Laizhou', NULL, NULL);
INSERT INTO `location` VALUES (823, '聊城', 6, 'lc', 'Liaocheng', NULL, NULL);
INSERT INTO `location` VALUES (824, '临清', 1, 'lq', 'Linqing', NULL, NULL);
INSERT INTO `location` VALUES (826, '龙口', 2, 'lk', 'Longkou', NULL, NULL);
INSERT INTO `location` VALUES (827, '蓬莱', 1, 'pl', 'Penglai', NULL, NULL);
INSERT INTO `location` VALUES (828, '平度', 1, 'pd', 'Pingdu', NULL, NULL);
INSERT INTO `location` VALUES (829, '青岛', 27, 'qd', 'QingDao', NULL, NULL);
INSERT INTO `location` VALUES (830, '青州', 2, 'qz', 'Qingzhou', NULL, NULL);
INSERT INTO `location` VALUES (832, '曲阜', 1, 'qf', 'Qufu', NULL, NULL);
INSERT INTO `location` VALUES (833, '日照', 6, 'rz', 'Rizhao', NULL, NULL);
INSERT INTO `location` VALUES (836, '寿光', 5, 'sg', 'Shouguang', NULL, NULL);
INSERT INTO `location` VALUES (837, '泰安', 7, 'ta', 'Taian', NULL, NULL);
INSERT INTO `location` VALUES (838, '滕州', 2, 'tz', 'Tengzhou', NULL, NULL);
INSERT INTO `location` VALUES (839, '潍坊', 12, 'wf', 'Weifang', NULL, NULL);
INSERT INTO `location` VALUES (840, '威海', 9, 'wh', 'Weihai', NULL, NULL);
INSERT INTO `location` VALUES (843, '烟台', 16, 'yt', 'Yantai', NULL, NULL);
INSERT INTO `location` VALUES (844, '兖州', 2, 'yz', 'Yanzhou', NULL, NULL);
INSERT INTO `location` VALUES (847, '枣庄', 5, 'zz', 'Zaozhuang', NULL, NULL);
INSERT INTO `location` VALUES (849, '招远', 1, 'zy', 'Zhaoyuan', NULL, NULL);
INSERT INTO `location` VALUES (850, '诸城', 2, 'zc', 'Zhucheng', NULL, NULL);
INSERT INTO `location` VALUES (851, '淄博', 10, 'zb', 'Zibo', NULL, NULL);
INSERT INTO `location` VALUES (852, '邹城', 2, 'zc', 'Zoucheng', NULL, NULL);
INSERT INTO `location` VALUES (854, '太原', 16, 'ty', 'Taiyuan', NULL, NULL);
INSERT INTO `location` VALUES (855, '长治', 2, 'cz', 'Changzhi', NULL, NULL);
INSERT INTO `location` VALUES (857, '大同', 5, 'dt', 'Datong', NULL, NULL);
INSERT INTO `location` VALUES (858, '汾阳', 1, 'fy', 'Fenyang', NULL, NULL);
INSERT INTO `location` VALUES (859, '高平', 2, 'gp', 'Gaoping', NULL, NULL);
INSERT INTO `location` VALUES (862, '侯马', 2, 'hm', 'Houma', NULL, NULL);
INSERT INTO `location` VALUES (865, '晋城', 4, 'jc', 'Jincheng', NULL, NULL);
INSERT INTO `location` VALUES (866, '晋中', 1, 'jz', 'Jinzhong', NULL, NULL);
INSERT INTO `location` VALUES (867, '临汾', 1, 'lf', 'Linfen', NULL, NULL);
INSERT INTO `location` VALUES (869, '吕梁', 1, 'll', 'Lvliang', NULL, NULL);
INSERT INTO `location` VALUES (871, '朔州', 1, 'sz', 'Shuozhou', NULL, NULL);
INSERT INTO `location` VALUES (872, '孝义', 1, 'xy', 'Xiaoyi', NULL, NULL);
INSERT INTO `location` VALUES (874, '阳泉', 2, 'yq', 'Yangquan', NULL, NULL);
INSERT INTO `location` VALUES (878, '运城', 10, 'yc', 'Yuncheng', NULL, NULL);
INSERT INTO `location` VALUES (880, '成都', 65, 'cd', 'Chengdu', NULL, NULL);
INSERT INTO `location` VALUES (882, '巴中', 1, 'bz', 'Bazhong', NULL, NULL);
INSERT INTO `location` VALUES (884, '崇州', 1, 'cz', 'Chongzhou', NULL, NULL);
INSERT INTO `location` VALUES (885, '达州', 2, 'dz', 'Dazhou', NULL, NULL);
INSERT INTO `location` VALUES (886, '德阳', 3, 'dy', 'Deyang', NULL, NULL);
INSERT INTO `location` VALUES (887, '都江堰', 2, 'djy', 'Dujiangyan', NULL, NULL);
INSERT INTO `location` VALUES (888, '峨眉山', 1, 'ems', 'Emeishan', NULL, NULL);
INSERT INTO `location` VALUES (892, '广汉', 1, 'gh', 'Guanghan', NULL, NULL);
INSERT INTO `location` VALUES (894, '华蓥', 1, 'hy', 'Huaying', NULL, NULL);
INSERT INTO `location` VALUES (895, '江油', 2, 'jy', 'Jiangyou', NULL, NULL);
INSERT INTO `location` VALUES (898, '乐山', 6, 'ls', 'Leshan', NULL, NULL);
INSERT INTO `location` VALUES (900, '泸州', 4, 'lz', 'Luzhou', NULL, NULL);
INSERT INTO `location` VALUES (901, '绵阳', 7, 'my', 'Mianyang', NULL, NULL);
INSERT INTO `location` VALUES (902, '绵竹', 1, 'mz', 'Mianzhu', NULL, NULL);
INSERT INTO `location` VALUES (903, '眉山', 3, 'ms', 'Meishan', NULL, NULL);
INSERT INTO `location` VALUES (904, '南充', 6, 'nc', 'Nanchong', NULL, NULL);
INSERT INTO `location` VALUES (905, '内江', 2, 'nj', 'Neijiang', NULL, NULL);
INSERT INTO `location` VALUES (906, '攀枝花', 3, 'pzh', 'Panzhihua', NULL, NULL);
INSERT INTO `location` VALUES (908, '邛崃', 1, 'ql', 'Qionglai', NULL, NULL);
INSERT INTO `location` VALUES (909, '什邡', 1, 'sf', 'Shifang', NULL, NULL);
INSERT INTO `location` VALUES (910, '遂宁', 5, 'sn', 'Suining', NULL, NULL);
INSERT INTO `location` VALUES (912, '西昌', 1, 'xc', 'Xichang', NULL, NULL);
INSERT INTO `location` VALUES (913, '雅安', 2, 'ya', 'Yaan', NULL, NULL);
INSERT INTO `location` VALUES (914, '宜宾', 3, 'yb', 'Yibin', NULL, NULL);
INSERT INTO `location` VALUES (915, '自贡', 4, 'zg', 'Zigong', NULL, NULL);
INSERT INTO `location` VALUES (916, '资阳', 2, 'zy', 'Ziyang', NULL, NULL);
INSERT INTO `location` VALUES (918, '拉萨', 1, 'ls', 'Lhasa', NULL, NULL);
INSERT INTO `location` VALUES (926, '乌鲁木齐', 12, 'wlmq', 'Wulumuqi', NULL, NULL);
INSERT INTO `location` VALUES (927, '阿克苏', 1, 'aks', 'Akesu', NULL, NULL);
INSERT INTO `location` VALUES (932, '昌吉', 1, 'cj', 'Changji', NULL, NULL);
INSERT INTO `location` VALUES (936, '伊犁', 2, 'yl', 'Yili', NULL, NULL);
INSERT INTO `location` VALUES (938, '喀什', 1, 'ks', 'Kashgar', NULL, NULL);
INSERT INTO `location` VALUES (942, '石河子', 1, 'dhz', 'Shihezi', NULL, NULL);
INSERT INTO `location` VALUES (950, '昆明', 20, 'km', 'Kunming', NULL, NULL);
INSERT INTO `location` VALUES (951, '安宁', 1, 'an', 'Anning', NULL, NULL);
INSERT INTO `location` VALUES (952, '保山', 2, 'bs', 'Baoshan', NULL, NULL);
INSERT INTO `location` VALUES (953, '楚雄', 1, 'cx', 'Chuxiong', NULL, NULL);
INSERT INTO `location` VALUES (954, '大理', 3, 'dl', 'Dali', NULL, NULL);
INSERT INTO `location` VALUES (956, '迪庆', 1, 'dq', 'Diqing', NULL, NULL);
INSERT INTO `location` VALUES (958, '红河', 9, 'hh', 'Honghe', NULL, NULL);
INSERT INTO `location` VALUES (960, '临沧', 1, 'lc', 'Lincang', NULL, NULL);
INSERT INTO `location` VALUES (961, '丽江', 1, 'lj', 'Lijiang', NULL, NULL);
INSERT INTO `location` VALUES (964, '曲靖', 3, 'qj', 'Qujing', NULL, NULL);
INSERT INTO `location` VALUES (966, '思茅', 2, 'sm', 'Simao', NULL, NULL);
INSERT INTO `location` VALUES (968, '文山', 1, 'ws', 'Wenshan', NULL, NULL);
INSERT INTO `location` VALUES (969, '西双版纳', 2, 'xsbn', 'Xishuangbanna', NULL, NULL);
INSERT INTO `location` VALUES (970, '宣威', 1, 'xw', 'Xuanwei', NULL, NULL);
INSERT INTO `location` VALUES (971, '玉溪', 3, 'yx', 'Yuxi', NULL, NULL);
INSERT INTO `location` VALUES (974, '杭州', 34, 'hz', 'Hangzhou', NULL, NULL);
INSERT INTO `location` VALUES (975, '慈溪', 6, 'cx', 'Cixi', NULL, NULL);
INSERT INTO `location` VALUES (976, '东阳', 3, 'dy', 'Dongyang', NULL, NULL);
INSERT INTO `location` VALUES (977, '奉化', 2, 'fh', 'Fenghua', NULL, NULL);
INSERT INTO `location` VALUES (978, '富阳', 2, 'fy', 'Fuyang', NULL, NULL);
INSERT INTO `location` VALUES (979, '海宁', 4, 'hn', 'Haining', NULL, NULL);
INSERT INTO `location` VALUES (980, '湖州', 11, 'hz', 'Huzhou', NULL, NULL);
INSERT INTO `location` VALUES (981, '嘉兴', 8, 'jx', 'Jiaxing', NULL, NULL);
INSERT INTO `location` VALUES (982, '建德', 1, 'jd', 'Jiande', NULL, NULL);
INSERT INTO `location` VALUES (983, '江山', 1, 'js', 'Jiangshan', NULL, NULL);
INSERT INTO `location` VALUES (984, '金华', 6, 'jh', 'Jinhua', NULL, NULL);
INSERT INTO `location` VALUES (986, '兰溪', 1, 'lx', 'Lanxi', NULL, NULL);
INSERT INTO `location` VALUES (988, '临海', 2, 'lh', 'Linhai', NULL, NULL);
INSERT INTO `location` VALUES (989, '临安', 2, 'la', 'Linan', NULL, NULL);
INSERT INTO `location` VALUES (990, '丽水', 11, 'ls', 'Lishui', NULL, NULL);
INSERT INTO `location` VALUES (991, '龙泉', 1, 'lq', 'Longquan', NULL, NULL);
INSERT INTO `location` VALUES (992, '宁波', 27, 'nb', 'Ningbo', NULL, NULL);
INSERT INTO `location` VALUES (993, '平湖', 2, 'ph', 'Pinghu', NULL, NULL);
INSERT INTO `location` VALUES (994, '衢州', 11, 'qz', 'Quzhou', NULL, NULL);
INSERT INTO `location` VALUES (995, '瑞安', 4, 'ra', 'Ruian', NULL, NULL);
INSERT INTO `location` VALUES (996, '上虞', 3, 'sy', 'Shangyu', NULL, NULL);
INSERT INTO `location` VALUES (997, '绍兴', 8, 'sx', 'Shaoxing', NULL, NULL);
INSERT INTO `location` VALUES (998, '嵊州', 1, 'sz', 'Shengzhou', NULL, NULL);
INSERT INTO `location` VALUES (999, '桐乡', 4, 'tx', 'Tongxiang', NULL, NULL);
INSERT INTO `location` VALUES (1000, '温岭', 2, 'wl', 'Wenling', NULL, NULL);
INSERT INTO `location` VALUES (1001, '温州', 21, 'wz', 'Wenzhou', NULL, NULL);
INSERT INTO `location` VALUES (1003, '义乌', 5, 'yw', 'Yiwu', NULL, NULL);
INSERT INTO `location` VALUES (1004, '永康', 2, 'yk', 'Yongkang', NULL, NULL);
INSERT INTO `location` VALUES (1005, '余姚', 6, 'yy', 'Yuyao', NULL, NULL);
INSERT INTO `location` VALUES (1006, '舟山', 4, 'zs', 'Zhoushan', NULL, NULL);
INSERT INTO `location` VALUES (1007, '诸暨', 4, 'zj', 'Zhuji', NULL, NULL);
INSERT INTO `location` VALUES (1332, '苏州', 19, 'sz', 'Suzhou', NULL, NULL);
INSERT INTO `location` VALUES (1342, '滨州', 7, 'bz', 'Binzhou', NULL, NULL);
INSERT INTO `location` VALUES (1344, '海安', 3, 'ha', 'Haian', NULL, NULL);
INSERT INTO `location` VALUES (1345, '锦州', 2, 'jz', 'Jinzhou', NULL, NULL);
INSERT INTO `location` VALUES (1349, '萍乡', 4, 'px', 'Pingxiang', NULL, NULL);
INSERT INTO `location` VALUES (1355, '台州', 15, 'tz', 'Taizhou', NULL, NULL);
INSERT INTO `location` VALUES (1687, '临沂', 9, 'ly', 'Linyi', NULL, NULL);
INSERT INTO `location` VALUES (1744, '宜春', 7, 'yc', 'Yichun', NULL, NULL);
INSERT INTO `location` VALUES (1745, '抚州', 3, 'fz', 'Fuzhou', NULL, NULL);
INSERT INTO `location` VALUES (1746, '神农架', 1, 'snjlo', 'Shennongjia', NULL, NULL);
INSERT INTO `location` VALUES (1748, '琼海', 1, 'qh', 'Qionghai', NULL, NULL);
INSERT INTO `location` VALUES (1755, '澄迈县', 1, 'cmx', 'Chengmaixian', NULL, NULL);
INSERT INTO `location` VALUES (1763, '榆林', 11, 'yl', 'Yulin', NULL, NULL);
INSERT INTO `location` VALUES (4732, '儋州市', 1, 'dz', 'danzhoush', NULL, NULL);
INSERT INTO `location` VALUES (4914, '海盐', 3, 'hy', 'Haiyan', NULL, NULL);
INSERT INTO `location` VALUES (4954, '射阳', 1, 'sys', 'Sheyangshi', NULL, NULL);
INSERT INTO `location` VALUES (4966, '芒市', 1, 'ms', 'Mangshi', NULL, NULL);
INSERT INTO `location` VALUES (5005, '洋浦市', 1, 'xps', 'yangpushi', NULL, NULL);
INSERT INTO `location` VALUES (5018, '上高市', 1, 'sgs', 'Shanggaoshi', NULL, NULL);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(4) NOT NULL,
  `area` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 40);
INSERT INTO `room` VALUES (2, 50);
INSERT INTO `room` VALUES (3, 60);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `updated_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
