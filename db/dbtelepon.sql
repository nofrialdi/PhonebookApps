-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.5.27 - MySQL Community Server (GPL)
-- OS Server:                    Win32
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk telepon2
CREATE DATABASE IF NOT EXISTS `telepon2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `telepon2`;

-- membuang struktur untuk table telepon2.agama
CREATE TABLE IF NOT EXISTS `agama` (
  `Agama_id` int(10) NOT NULL AUTO_INCREMENT,
  `Agama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Agama_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel telepon2.agama: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
INSERT INTO `agama` (`Agama_id`, `Agama`) VALUES
	(1, 'Islam'),
	(2, 'Kristen'),
	(3, 'Hindu'),
	(4, 'Budha'),
	(5, 'Lainnya');
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;

-- membuang struktur untuk table telepon2.pengguna
CREATE TABLE IF NOT EXISTS `pengguna` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel telepon2.pengguna: 3 rows
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` (`ID`, `USERNAME`, `PASSWORD`) VALUES
	(1, 'admin1', '123'),
	(2, 'admin2', '456'),
	(4, 'admin4', '333');
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;

-- membuang struktur untuk table telepon2.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `ID` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` text NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel telepon2.tbl_user: 1 rows
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`ID`, `Username`, `Password`, `Email`) VALUES
	(1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'admin@gmail.com');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

-- membuang struktur untuk table telepon2.telepon
CREATE TABLE IF NOT EXISTS `telepon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Jabatan` varchar(200) DEFAULT NULL,
  `Foto` varchar(50) DEFAULT NULL,
  `Nama` varchar(250) DEFAULT NULL,
  `Pangkat_korps` varchar(50) DEFAULT NULL,
  `Agama` varchar(50) DEFAULT NULL,
  `Kesatuan` varchar(250) DEFAULT NULL,
  `Matra` varchar(50) DEFAULT NULL,
  `Alamat_kantor` varchar(300) DEFAULT NULL,
  `No_telepon_kantor_1` varchar(50) DEFAULT NULL,
  `No_telepon_kantor_2` varchar(50) DEFAULT NULL,
  `No_fax` varchar(50) DEFAULT NULL,
  `Alamat_Rumah` varchar(300) DEFAULT NULL,
  `No_telepon_rumah` varchar(50) DEFAULT NULL,
  `No_hp` varchar(50) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel telepon2.telepon: 20 rows
/*!40000 ALTER TABLE `telepon` DISABLE KEYS */;
INSERT INTO `telepon` (`id`, `Jabatan`, `Foto`, `Nama`, `Pangkat_korps`, `Agama`, `Kesatuan`, `Matra`, `Alamat_kantor`, `No_telepon_kantor_1`, `No_telepon_kantor_2`, `No_fax`, `Alamat_Rumah`, `No_telepon_rumah`, `No_hp`, `Email`) VALUES
	(1, 'Panglima TNI', 'upload/images/2941-2019-10-21.jpg', 'Hadi Tjahjanto    S.I.P', 'Marsekal TNI', 'Islam', 'Mabes TNI', 'TNI AU', 'Cilangkap', '081315416108', '081241315851', '0218456805', 'JL.Taman Suropati No. 10 Menteng Jakarta Pusat', '089648730190', '081382264131', 'widi2406@gmail.com'),
	(3, 'Irjen TNI', 'upload/images/irjen_tni.jpg', 'Muhamad Herindra   M.A. M.Sc', 'Letjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '02184591240', '-', '-', 'Jl.Garuda Mas Blok D 5 No.3 Tanjung Barat Jakarta Selatan', '-', '-', '-'),
	(4, 'Asintel Panglima TNI', 'upload/images/asintel_panglima_tni.jpg', 'Andjar Wiratma', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '02184595420', '02184595440', '02184591647', 'Perumahan Bukit Permai Jl.Tidar No.8 B-2 Cibubur - Ciracas Jakarta-Timur', '-', '-', '-'),
	(5, 'Asrenum Panglima TNI', 'upload/images/5368-2019-10-21.jpg', 'Agung Prasetiawan   M.A.P', 'Laksda TNI', 'Islam', 'Mabes TNI', 'TNI AL', 'Cilangkap', '02184595057', '-', '0218700165', 'Perumahan Sakura Regency J.16 Jati Asih Bekasi', '-', '081330098814', '-'),
	(6, 'Asops Panglima TNI', 'upload/images/4798-2019-10-21.jpg', 'Ganip Warsito     S.E.  M.M.', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '02184595068', '-', '0218700163', 'Jl.Otista III Komp.I 17-17 RT.2 Cipinang-Cempedak Jatinegara', '-', '-', '-'),
	(7, 'Aspers Panglima TNI', 'upload/images/6009-2019-10-21.jpg', 'Dedy Permadi', 'Marsda TNI', 'Islam', 'Mabes TNI', 'TNI AU', 'Cilangkap', '02184591240', '-', '0218718801', 'Jl.Suhandi No.1 Komplek Trikora Halim PK Jakarta Timur', '-', '081319941985', '-'),
	(8, 'Aster Panglima TNI', 'upload/images/3569-2019-10-21.jpg', 'Geoge Elnadus Supit     S.Sos', 'Mayjen TNI', 'Kristen', 'Mabes TNI', 'TNI AD', 'Cilangkap', '02184595075', '02184595077', '-', 'Jl.Otista III Blok G1 no.331 Cimpedak Jakarta Timur', '-', '0811459696', '-'),
	(10, 'Danjen Akademi TNI', 'upload/images/3151-2019-10-21.jpg', 'Aan Kurnia    S.Sos', 'Laksdya TNI', 'Islam', 'Mabes TNI', 'TNI AL', 'Cilangkap', '0218718640', '0218718648', '-', 'Kebayoran Garden. Jl. Gandaria II Blok C No.18 Pondok Aren Kota Tangerang Selatan-Banten', '-', '-', '-'),
	(11, 'Komandan Kodiklat TNI', 'upload/images/4648-2019-10-21.jpg', 'Benny Indra Pujihastono    S.I.P', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Tangerang Selatan', '02175884584', '0217563995', '-', 'Jl.Jatiluhur II.Perumahan Baranangsiang Indah Blok D2 No.25 Bogor', '-', '-', '-'),
	(12, 'Kabais TNI', 'upload/images/9239-2019-10-21.jpg', 'Kisenda Wiranatakusumah    M.A', 'Marsda TNI', 'Islam', 'Mabes TNI', 'TNI AU', 'Kalibata', '0217983145', '-', '-', 'Komplek TNI AU Jl.Triloka VI Blok H-5 Pancoran Jakarta Selatan', '-', '08121055354', '-'),
	(13, 'Kapuspen TNI ', 'upload/images/3575-2019-10-21.jpg', 'Sisriadi', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '0218451273', '-', '-', 'Komplek Pati Jl.Melati Raya III No.24 Jatikarya Bekasi', '-', '0818820113', '-'),
	(14, 'Danpom TNI', 'upload/images/2084-2019-10-21.jpg', 'Dedy Iswanto   S.E.   S.H.', 'Mayjen TNI', 'Kristen', 'Mabes TNI', 'TNI AD', 'Cilangkap', '02184591185', '-', '-', 'Komplek Perumahan Puspomad Jl.Raya Ceger No.F1 Cipayung Jakarta Timur', '-', '08122007822', '-'),
	(15, 'Kapusku TNI', 'upload/images/8760-2019-10-21.jpg', 'Drs.Imam Baidhowi   M.M.', 'Brigjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '02184595551', '-', '-', 'Perum Raffles Hills M1 No.10 Jl.Alternatif Cibubur', '0218010725', '081295513578', '-'),
	(16, 'Kapusinfolahta TNI ', 'upload/images/4495-2019-10-18.jpg', 'Pujiyanto S.   S.I.P', 'Marsma TNI', 'Islam', 'Mabes TNI', 'TNI AU', 'Cilangkap', '02184595416', '-', '-', 'Komplek TNI AU Rajawali Jl.Cendrawasih Baru D10 Halim PK Jaktim', '-', '08129066302', '-'),
	(17, 'Kapuskersin TNI ', 'upload/images/4764-2019-10-18.jpg', 'Didik Kurniawan     S.T.  M.Si', 'Laksma TNI', 'Islam', 'Mabes TNI', 'TNI AL', 'Cilangkap', '0218452734', '-', '0218455169', 'Green Malaka Residence - Jl.Malaka No.27 Blok B-16 Munjul.Cipayung Jakarta Timur 13850', '-', '081932837919', '-'),
	(18, 'Dansatsiber TNI', 'upload/images/2686-2019-10-21.jpg', 'Markos', 'Brigjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '0218459913', '-', '-', 'Jl.Branjangan II No. 27 RT.011/010 Kel.Halim PK Makasar- Jakarta Timur', '-', '081360672006', '-'),
	(19, 'Kasetum TNI', 'upload/images/7848-2019-10-17.jpg', 'Kukuh Surya   S.S.   M.Tr.(Han)', 'Brigjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '02184591272', '0218457556', '-', 'Jl.Kiajang No.38 A Rt. 003 Rw.009 Gandaria Utara  Kebayoran Baru', '-', '-', '-'),
	(20, 'Koorsahli Panglima TNI', 'upload/images/koorsahli_panglima_tni.jpg', 'Nono Suharsono', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '02184595044', '02184595097', '02184595097', 'Perumahan Permata Palem Blok F No. 22-23 - Jl.Kayu Manis Kel.Cirimekar Cibinong-Bogor', '-', '-', '-'),
	(2, 'Kasum TNI', 'upload/images/kasum_tni.jpg', 'Joni Supriyanto', 'Letjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '0213813227', '0213813227', '-', 'Kelapa Dua Wetan Rt.05/08 Ciracas Jakarta Timur', '-', '-', '-'),
	(9, 'Aslog Panglima TNI', 'upload/images/aslog_panglima_tni.jpg', 'Kukuh Sudibyanto', 'Marsda TNI', 'Islam', 'Mabes TNI', 'TNI AU', 'Cilangkap', '021-84591270', '-', '-', 'Komplek Pati Jl.Mawar 3 No.3 Jatikarya Jatisampurna Bekasi', '-', '-', '-');
/*!40000 ALTER TABLE `telepon` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
