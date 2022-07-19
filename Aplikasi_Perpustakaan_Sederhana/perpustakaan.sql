/*
Navicat MySQL Data Transfer

Source Server         : aslam
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : perpustakaan

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-07-19 20:55:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_buku`
-- ----------------------------
DROP TABLE IF EXISTS `tb_buku`;
CREATE TABLE `tb_buku` (
  `kode_buku` varchar(15) NOT NULL,
  `judul_buku` varchar(40) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_buku`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_buku
-- ----------------------------
INSERT INTO `tb_buku` VALUES ('001', 'Kualitas I', '2016-01-09', 'silamin');

-- ----------------------------
-- Table structure for `tb_mahasiswa`
-- ----------------------------
DROP TABLE IF EXISTS `tb_mahasiswa`;
CREATE TABLE `tb_mahasiswa` (
  `no_bp` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  PRIMARY KEY (`no_bp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_mahasiswa
-- ----------------------------
INSERT INTO `tb_mahasiswa` VALUES ('141400002', 'Faisal', 'Jepang', '1993-02-06', 'Sistem Informasi', '2016-01-02');
INSERT INTO `tb_mahasiswa` VALUES ('141400004', 'aslam', 'Amerika', '2002-08-18', 'Teknik Informatika', '2021-04-21');
INSERT INTO `tb_mahasiswa` VALUES ('141400009', 'Mia Bi', 'Jepang', '2016-01-16', 'Teknik Informasi', '2019-01-11');
INSERT INTO `tb_mahasiswa` VALUES ('141400013', 'Fadhil', 'Sui Nyoh', '1990-01-05', 'Sistem Informatika', '2016-01-02');

-- ----------------------------
-- Table structure for `tb_peminjaman`
-- ----------------------------
DROP TABLE IF EXISTS `tb_peminjaman`;
CREATE TABLE `tb_peminjaman` (
  `no_bp` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `kode_buku` varchar(15) NOT NULL,
  `judul_buku` varchar(40) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  PRIMARY KEY (`no_bp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_peminjaman
-- ----------------------------
INSERT INTO `tb_peminjaman` VALUES ('141400009', 'Mia Bi', 'Teknik Informasi', '001', 'Kualitas I', '2016-01-09', '2016-01-22');
