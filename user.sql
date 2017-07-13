-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-01 12:18:36
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abcd`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pinyin` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `pinyin`) VALUES
(54, '王泽敏', '18335166383', 'wangzemin'),
(55, '张皓1', '18434309217', 'zhanghao1'),
(57, '卢海云1', '18335014036', 'luhaiyun1'),
(58, '裴树王1', '15135170296', 'peishuwang1'),
(59, '郝雅婷1', '13453449330', 'haoyating1'),
(60, '梁春青1', '18435139244', 'liangchunqing1'),
(61, '崔星丽1', '13753857244', 'cuixingli1'),
(62, '张慧1', '18435121925', 'zhanghui1'),
(63, '贾震宇1', '1593456898', 'guzhenyu1'),
(64, '杨红玲1', '15735183549', 'yanghongling1'),
(65, '邓玲英1', '18435121395', 'denglingying1'),
(66, '郭佳炜1', '18734869369', 'guojiawei1'),
(67, '石晓蕾1', '15034157909', 'shixiaolei1'),
(68, '杨亚宁1', '18335834527', 'yangyaning1'),
(69, '郭亚芳1', '15735183800', 'guoyafang1'),
(70, '王伟1', '18551690463', 'wangwei1'),
(71, '那颖相1', '15035810607', 'nayingxiang1'),
(72, '马楠1', '15003403630', 'manan1'),
(73, '陈璐瑶1', '15735182699', 'chenluyao1'),
(74, '王姣姣1', '18435121895', 'wangjiaojiao1'),
(75, '刘琛1', '18634845508', 'liuchen1'),
(76, '翟晨1', '18435139219', 'dichen1'),
(77, '刘坤龙1', '18235442461', 'liukunlong1'),
(78, '李星亮1', '18334774124', 'lixingliang1'),
(79, '王乐1', '18335830635', 'wangle1'),
(80, '刘鹏辉1', '18435139247', 'liupenghui1'),
(81, '陈晋学1', '13033470236', 'chenjinxue1'),
(82, '罗富强11', '18335101846', 'luofuqiang11'),
(83, '周煦杰11', '18335833462', 'zhouxujie11'),
(84, '曹小燕1', '18911018857', 'caoxiaoyan1'),
(85, '王灶惠1', '15735184800', 'wangzaohui1'),
(86, '张炼1', '15935828716', 'zhanglian1'),
(87, '王长期11', '18203418190', 'wangchangqi11'),
(88, '石岩青1', '15834058145', 'shiyanqing1'),
(89, '高艳鹏1', '15034164080', 'gaoyanpeng1'),
(90, '李佳素1', '15383464335', 'lijiasu1'),
(91, '王玲1', '18435139225', 'wangling1'),
(92, '李昱辉1', '15735165381', 'liyuhui1'),
(93, '顾英1', '18334740047', 'guying1'),
(94, '宋佳恒1', '18435122899', 'songjiaheng1'),
(95, '张然1', '15735921562', 'zhangran1'),
(96, '焦国焘1', '15735183010', 'jiaoguodao1'),
(97, '令狐旭1', '18295723476', 'linghuxu1'),
(98, '李余鑫1', '15735183121', 'liyuxin1'),
(99, '王倩1', '15935501773', 'wangqian1'),
(100, '谢丽娜1', '18734886815', 'xielina1'),
(101, '许清宇1', '18335834553', 'xuqingyu1'),
(102, '孙娜1', '15735109918', 'sunna1'),
(103, '闫晨嘉1', '15135121529', 'yanchenjia1'),
(104, '韩万文1', '13321131251', 'hanwanwen1'),
(105, '王杰霞1', '15735109913', 'wangjiexia1'),
(107, '边强1', '15735183827', 'bianqiang1'),
(108, '张策策1', '18434390012', 'zhangcece1'),
(112, '寇世林1', '15235418583', 'koushilin1'),
(113, '马豪豪1', '15735183320', 'mahaohao1'),
(115, '武小涛1', '15735184959', 'wuxiaotao1'),
(116, '宋彦彦1', '18035189975', 'songyanyan1'),
(117, '高捷1', '18734901629', 'gaojie1'),
(118, '胡晓宇1', '18404984585', 'huxiaoyu1'),
(122, '柳志伟1', '18613562996', 'liuzhiwei1'),
(124, '安德1', '15513252677', 'ande1'),
(126, '顼慧文1', '15735183381', 'xuhuiwen1'),
(129, '胡耀鹏1', '18035189975', 'huyaopeng1'),
(130, '崔亚波1', '13620633554', 'cuiyabo1'),
(144, '宋彦彦1', '13834666160', 'songyanyan1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
