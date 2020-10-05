-- Generation time: Tue, 29 Sep 2020 08:31:53 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `deathnote`;
CREATE TABLE `deathnote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `deathday` date NOT NULL,
  `time_lived` int(2) NOT NULL,
  `badguy` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `deathnote` VALUES ('1','Tara Crist DDS','1980-03-02','17','1'),
('2','Prof. Javonte O\'Connell','2014-05-08','26','1'),
('3','Gus Pagac','1980-02-10','11','1'),
('4','Abbie Schneider','1995-03-03','10','0'),
('5','Anais Ledner','2007-06-25','44','1'),
('6','Tanya Harris','1983-07-14','31','1'),
('7','Ms. Kristina Bernhard','1980-05-28','30','1'),
('8','Dr. Loyce Pollich Sr.','2002-07-03','46','1'),
('9','Prof. Otis Hauck Jr.','1996-03-13','42','1'),
('10','Prof. Tevin Kulas','2011-02-01','49','1'),
('11','Ms. Winona Breitenberg','1976-07-18','28','1'),
('12','Mr. Garland Gutkowski','1993-03-08','17','0'),
('13','Shirley Bogan Sr.','2019-07-02','23','1'),
('14','Mr. Sylvan Smitham III','1970-05-17','33','0'),
('15','Friedrich Kohler','2018-12-13','27','1'),
('16','Mariano Zieme Jr.','2004-01-13','15','0'),
('17','Raphael Aufderhar','1980-05-15','41','1'),
('18','Jazmyn Bosco','2011-07-06','31','0'),
('19','Miss Katharina Leffler','1975-02-02','11','0'),
('20','Miss Emmie Macejkovic','1975-09-27','45','1'),
('21','Prof. Jillian Ryan III','1996-01-21','14','0'),
('22','Hunter Bechtelar PhD','2007-10-18','29','0'),
('23','Leonora Schmeler','2004-02-11','44','1'),
('24','Hobart Champlin','1979-03-26','46','0'),
('25','Eugene Heidenreich','1997-02-27','13','0'),
('26','Taryn Schaefer','2006-08-23','13','0'),
('27','Kaia Schumm PhD','1977-08-20','33','1'),
('28','Alexis Simonis','1982-03-01','29','0'),
('29','Columbus Langosh','1992-11-13','29','0'),
('30','Lionel Mante','1975-07-17','50','0'),
('31','Johnathon Lockman','1995-05-01','37','0'),
('32','Miss Destini Wiegand V','2020-03-08','39','0'),
('33','Eusebio Blick','1995-11-19','28','0'),
('34','Virgie Wolff III','2017-11-03','11','1'),
('35','Mario Pollich','2001-03-22','15','1'),
('36','Charity Doyle','2002-07-28','13','0'),
('37','Mrs. Breanna Kunde','1993-11-21','12','0'),
('38','Prof. Imani Renner','1970-03-10','11','0'),
('39','Mrs. Abbie Kris Sr.','1998-12-22','11','0'),
('40','Jevon Kessler','2014-07-26','22','1'),
('41','Charlie Wilderman','1999-12-19','38','1'),
('42','Dell Bruen','2005-09-02','35','0'),
('43','Ms. Kiera Rogahn MD','2015-12-15','10','0'),
('44','Mariano Hamill','2007-01-26','43','0'),
('45','Dr. Leonora Braun','2004-04-10','33','0'),
('46','Miss Emmanuelle Will','2010-03-28','44','1'),
('47','Mr. Cortez Daniel','2000-12-07','27','0'),
('48','Joesph Bosco I','1976-11-12','21','0'),
('49','Daniella O\'Reilly','2007-03-31','50','0'),
('50','Kendrick Emmerich PhD','2015-03-28','33','1'),
('51','Angelita Predovic DVM','2010-02-13','41','1'),
('52','Florian Reichert II','1987-04-22','11','1'),
('53','Prof. Lonie Jast III','1991-04-30','26','0'),
('54','Brandi Balistreri','1997-02-18','17','0'),
('55','Marvin Jacobi','2011-10-21','11','0'),
('56','Ms. Susan Pouros DDS','2014-11-17','42','0'),
('57','Ruby Cassin IV','1981-01-11','14','0'),
('58','Adell Wuckert V','1990-11-28','45','1'),
('59','Euna Mitchell','2000-01-29','26','0'),
('60','Foster Ruecker','1987-07-23','21','0'),
('61','Itzel Altenwerth','2003-07-16','23','0'),
('62','Prof. Maryse Hauck','1971-02-27','19','0'),
('63','Ursula Botsford','1990-03-24','32','1'),
('64','Delilah Pollich','2004-03-05','32','1'),
('65','Brittany Fahey','1988-11-30','46','0'),
('66','Remington Paucek','2004-03-20','13','1'),
('67','Elna Waelchi','1976-06-08','34','1'),
('68','Prof. Wilburn Abernathy','1996-08-06','44','0'),
('69','Rosemarie Smith','1973-06-20','26','1'),
('70','Jayme Crona','1978-04-03','41','1'),
('71','Mr. Demarco Kassulke V','2012-04-01','31','1'),
('72','Greyson Thiel','2019-09-05','35','1'),
('73','Mr. Kris McDermott','2003-03-21','15','0'),
('74','Tomas Schaefer','2017-12-18','42','1'),
('75','Dr. Roberta Cassin','2018-10-01','30','0'),
('76','Alia Bashirian','2010-10-15','19','0'),
('77','Prof. Floyd Aufderhar','2007-05-11','17','0'),
('78','Lottie Bechtelar III','1988-03-19','42','1'),
('79','Joany Lynch','1985-02-18','26','1'),
('80','Lawrence Koss','2013-02-04','18','1'),
('81','Ruth Hills','1973-01-13','37','1'),
('82','Cyril Moore Jr.','2004-05-20','29','1'),
('83','Omari Runolfsdottir Sr.','2003-10-26','24','1'),
('84','Ruth Gerhold','1980-06-30','12','1'),
('85','Miss Hilda Ullrich DVM','1970-08-20','23','0'),
('86','Bell Effertz','2000-02-11','46','1'),
('87','Prof. Eloy Bailey','2011-04-17','48','1'),
('88','Prof. Juliana Rodriguez','1987-09-04','42','1'),
('89','Vladimir O\'Reilly','2012-09-13','30','1'),
('90','Brooklyn Schneider IV','2016-05-05','48','0'),
('91','Griffin Schaefer','2007-04-10','17','1'),
('92','Shayna Bashirian DVM','1970-12-27','47','0'),
('93','Floy Buckridge','2015-11-20','40','1'),
('94','Dr. Glennie Stehr DVM','1999-05-15','11','1'),
('95','Remington Anderson V','2009-03-16','48','1'),
('96','Lilly Abshire','2004-01-25','34','0'),
('97','Madelyn O\'Reilly','1982-07-12','18','0'),
('98','Deion Skiles','2011-07-19','37','1'),
('99','Dr. Carroll Braun PhD','1981-09-25','11','1'),
('100','Joana Morar III','1978-07-20','31','1'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

