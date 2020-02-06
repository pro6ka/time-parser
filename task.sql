-- MySQL dump 10.17  Distrib 10.3.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 172.16.238.12    Database: time_parser
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-1~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` int(255) NOT NULL,
  `src` text NOT NULL,
  `time` float NOT NULL,
  `response` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`url`) REFERENCES `urls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (312,39,'/assets/images/uslugi/7.png',0.091228,'200 OK'),(313,39,'/assets/images/wall_4-5sm.jpg',0.0481942,'200 OK'),(314,39,'/assets/images/uslugi/15.png',0.0507131,'200 OK'),(315,39,'/assets/images/uslugi/11.png',0.0505421,'200 OK'),(316,39,'/assets/images/uslugi/16.png',0.087332,'200 OK'),(317,39,'/assets/images/camp-wiring.jpg',0.0473399,'200 OK'),(318,39,'/assets/images/newbuildings.jpg',0.0443559,'200 OK'),(319,39,'/assets/images/uslugi/9.png',0.0495641,'200 OK'),(320,39,'/assets/images/uslugi/10.png',0.0498919,'200 OK'),(321,39,'/assets/images/uslugi/14.png',0.049047,'200 OK'),(322,39,'/assets/images/stolby.png',0.0484979,'200 OK'),(323,39,'/assets/images/uslugi/6.png',0.0490808,'200 OK'),(324,39,'/assets/images/uslugi/17.png',0.049727,'200 OK'),(325,39,'/assets/images/uslugi/8.png',0.0478339,'200 OK'),(326,39,'/assets/images/uslugi/13.png',0.0502889,'200 OK'),(327,39,'/assets/images/uslugi/12.png',0.0486748,'200 OK'),(328,39,'/assets/images/zaokskii.jpg',0.0474579,'200 OK'),(329,39,'/assets/images/novomoskovsk.jpg',0.0507519,'200 OK'),(330,39,'/assets/images/Aleksin.png',0.0454159,'200 OK'),(331,39,'/assets/images/dubna.gif',0.045754,'200 OK'),(332,39,'/assets/images/schekino.gif',0.045022,'200 OK'),(333,39,'/assets/images/uzlovaja.gif',0.0477221,'200 OK'),(334,39,'/assets/images/gerb-yasn.jpg',0.0464349,'200 OK'),(335,39,'/assets/images/venev.gif',0.0458829,'200 OK'),(336,39,'/assets/images/leninskii.png',0.0450079,'200 OK'),(337,39,'https://informer.yandex.ru/informer/26536167/3_1_FFFFFFFF_EFEFEFFF_0_pageviews',0.0744951,'200 OK'),(338,39,'https://mc.yandex.ru/watch/26536167',0.0710979,'200 OK'),(339,40,'/assets/images/uslugi/7.png',0.0886168,'200 OK'),(340,40,'/assets/images/wall_4-5sm.jpg',0.0483959,'200 OK'),(341,40,'/assets/images/uslugi/15.png',0.0529881,'200 OK'),(342,40,'/assets/images/uslugi/11.png',0.0495081,'200 OK'),(343,40,'/assets/images/uslugi/16.png',0.0521369,'200 OK'),(344,40,'/assets/images/camp-wiring.jpg',0.0473082,'200 OK'),(345,40,'/assets/images/newbuildings.jpg',0.043793,'200 OK'),(346,40,'/assets/images/uslugi/9.png',0.048701,'200 OK'),(347,40,'/assets/images/uslugi/10.png',0.049124,'200 OK'),(348,40,'/assets/images/uslugi/14.png',0.0484471,'200 OK'),(349,40,'/assets/images/stolby.png',0.0474992,'200 OK'),(350,40,'/assets/images/uslugi/6.png',0.0486372,'200 OK'),(351,40,'/assets/images/uslugi/17.png',0.0489061,'200 OK'),(352,40,'/assets/images/uslugi/8.png',0.0471051,'200 OK'),(353,40,'/assets/images/uslugi/13.png',0.0496008,'200 OK'),(354,40,'/assets/images/uslugi/12.png',0.048095,'200 OK'),(355,40,'/assets/images/zaokskii.jpg',0.0456638,'200 OK'),(356,40,'/assets/images/novomoskovsk.jpg',0.0499971,'200 OK'),(357,40,'/assets/images/Aleksin.png',0.0444651,'200 OK'),(358,40,'/assets/images/dubna.gif',0.0439842,'200 OK'),(359,40,'/assets/images/schekino.gif',0.0451279,'200 OK'),(360,40,'/assets/images/uzlovaja.gif',0.0475121,'200 OK'),(361,40,'/assets/images/gerb-yasn.jpg',0.0449271,'200 OK'),(362,40,'/assets/images/venev.gif',0.043633,'200 OK'),(363,40,'/assets/images/leninskii.png',0.043705,'200 OK'),(364,40,'https://informer.yandex.ru/informer/26536167/3_1_FFFFFFFF_EFEFEFFF_0_pageviews',0.0560141,'200 OK'),(365,40,'https://mc.yandex.ru/watch/26536167',0.0835381,'200 OK');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` int(255) NOT NULL,
  `src` text NOT NULL,
  `time` float NOT NULL,
  `response` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  CONSTRAINT `links_ibfk_1` FOREIGN KEY (`url`) REFERENCES `urls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2010 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1800,39,'/',0.0570109,'200 OK'),(1801,39,'/',0.057018,'200 OK'),(1802,39,'http://otdelka.electric-tula.ru',0.543378,'200 OK'),(1803,39,'/uslugi/vysov-electrica.html',0.123753,'200 OK'),(1804,39,'/uslugi/shumoizoliatsia-kvartir.html',0.130948,'200 OK'),(1805,39,'/uslugi/podkluchenie-doma.html',0.0704,'200 OK'),(1806,39,'/uslugi/zamena-electroprovodki.html',0.079108,'200 OK'),(1807,39,'/uslugi/montazh-zazemlenia.html',0.100055,'200 OK'),(1808,39,'/uslugi/provodka-na-dache.html',0.137685,'200 OK'),(1809,39,'/uslugi/electroprovodka-v-novostroike.html',0.0652001,'200 OK'),(1810,39,'/uslugi/ustanovka-electroschjotchikov.html',0.0636179,'200 OK'),(1811,39,'/uslugi/ustanovka-lustr.html',0.0668662,'200 OK'),(1812,39,'/uslugi/montazh-sip.html',0.071393,'200 OK'),(1813,39,'/uslugi/ustanovka-stolbov.html',0.0668771,'200 OK'),(1814,39,'/uslugi/diagnostica.html',0.073077,'200 OK'),(1815,39,'/uslugi/montazh-electroschitov.html',0.0847881,'200 OK'),(1816,39,'/uslugi/ustanovka-bytovyh-priborov.html',0.0655999,'200 OK'),(1817,39,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.0638881,'200 OK'),(1818,39,'/uslugi/ustanovka-provodki-v-ofisah.html',0.064852,'200 OK'),(1819,39,'/price/actions.html',0.057343,'200 OK'),(1820,39,'/price/discount.html',0.057204,'200 OK'),(1821,39,'/our_work/vysov-electrica.html',0.069886,'200 OK'),(1822,39,'/our_work/podkluchenie-doma.html',0.134552,'200 OK'),(1823,39,'/our_work/zamena-ehlektroprovodki.html',0.193723,'200 OK'),(1824,39,'/our_work/podkluchenie-bytovyh-electropriborov.html',0.088948,'200 OK'),(1825,39,'/our_work/ustanovka-electroschjotchikov.html',0.084626,'200 OK'),(1826,39,'/our_work/montazh-osveshcheniya.html',0.101518,'200 OK'),(1827,39,'/our_work/montazh-provodki-v-ofisah.html',0.0726988,'200 OK'),(1828,39,'/our_work/montazh-ehlektroprovodki-v-tekhnicheskih-pomeshcheniyah.html',0.0720792,'200 OK'),(1829,39,'/our_work/montazh-sip.html',0.0700839,'200 OK'),(1830,39,'/our_work/ustanovka-stolbov.html',0.0808408,'200 OK'),(1831,39,'/our_work/montazh-zazemleniya.html',0.0725009,'200 OK'),(1832,39,'/our_work/montazh-ehlektroshchitov.html',0.096128,'200 OK'),(1833,39,'/our_work/oformlenie-documentov.html',0.0696092,'200 OK'),(1834,39,'/our_work/diagnostica-electrosetey.html',0.0678658,'200 OK'),(1835,39,'/our_work/electrica-na-dache.html',0.09325,'200 OK'),(1836,39,'/our_work/звукоизоляция-квартир.html',0.0707169,'200 OK'),(1837,39,'/article/uso.html',0.0602739,'200 OK'),(1838,39,'/article/systema-zazemlinija.html',0.0577371,'200 OK'),(1839,39,'/article/zamena-provodki.html',0.057097,'200 OK'),(1840,39,'/article/vvgng-ls-construction.html',0.0584788,'200 OK'),(1841,39,'/article/nym-cable.html',0.065985,'200 OK'),(1842,39,'/contacts/vakansii.html',0.058861,'200 OK'),(1843,39,'/uslugi.html',0.065892,'200 OK'),(1844,39,'/uslugi/vysov-electrica.html',0.062983,'200 OK'),(1845,39,'/uslugi/shumoizoliatsia-kvartir.html',0.0754051,'200 OK'),(1846,39,'/uslugi/podkluchenie-doma.html',0.0672901,'200 OK'),(1847,39,'/uslugi/zamena-electroprovodki.html',0.073252,'200 OK'),(1848,39,'/uslugi/montazh-zazemlenia.html',0.0685191,'200 OK'),(1849,39,'/uslugi/provodka-na-dache.html',0.0635879,'200 OK'),(1850,39,'/uslugi/electroprovodka-v-novostroike.html',0.0645349,'200 OK'),(1851,39,'/uslugi/ustanovka-electroschjotchikov.html',0.0613298,'200 OK'),(1852,39,'/uslugi/ustanovka-lustr.html',0.0905211,'200 OK'),(1853,39,'/uslugi/montazh-sip.html',0.0661039,'200 OK'),(1854,39,'/uslugi/ustanovka-stolbov.html',0.0652509,'200 OK'),(1855,39,'/uslugi/diagnostica.html',0.0624912,'200 OK'),(1856,39,'/uslugi/montazh-electroschitov.html',0.092627,'200 OK'),(1857,39,'/uslugi/ustanovka-bytovyh-priborov.html',0.065289,'200 OK'),(1858,39,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.062742,'200 OK'),(1859,39,'/uslugi/ustanovka-provodki-v-ofisah.html',0.0647819,'200 OK'),(1860,39,'/price/discount.html',0.0562451,'200 OK'),(1861,39,'/price/actions.html',0.05639,'200 OK'),(1862,39,'/uslugi/vysov-electrica.html',0.063339,'200 OK'),(1863,39,'/uslugi/shumoizoliatsia-kvartir.html',0.111192,'200 OK'),(1864,39,'/uslugi/podkluchenie-doma.html',0.070725,'200 OK'),(1865,39,'/uslugi/zamena-electroprovodki.html',0.076015,'200 OK'),(1866,39,'/uslugi/montazh-zazemlenia.html',0.0678649,'200 OK'),(1867,39,'/uslugi/provodka-na-dache.html',0.0662329,'200 OK'),(1868,39,'/uslugi/electroprovodka-v-novostroike.html',0.06376,'200 OK'),(1869,39,'/uslugi/ustanovka-electroschjotchikov.html',0.148452,'200 OK'),(1870,39,'/uslugi/ustanovka-lustr.html',0.0646961,'200 OK'),(1871,39,'/uslugi/montazh-sip.html',0.068409,'200 OK'),(1872,39,'/uslugi/ustanovka-stolbov.html',0.087811,'200 OK'),(1873,39,'/uslugi/diagnostica.html',0.0650592,'200 OK'),(1874,39,'/uslugi/montazh-electroschitov.html',0.069706,'200 OK'),(1875,39,'/uslugi/ustanovka-bytovyh-priborov.html',0.106448,'200 OK'),(1876,39,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.0633399,'200 OK'),(1877,39,'/uslugi/ustanovka-provodki-v-ofisah.html',0.0645869,'200 OK'),(1878,39,'/uslugi/regions/zaokskij.html',0.0645411,'200 OK'),(1879,39,'/uslugi/regions/novomoskovsk.html',0.068327,'200 OK'),(1880,39,'/uslugi/regions/alexin.html',0.0700049,'200 OK'),(1881,39,'/uslugi/regions/dubna.html',0.0671868,'200 OK'),(1882,39,'/uslugi/regions/sctchekino.html',0.072752,'200 OK'),(1883,39,'/uslugi/regions/uzlovaja.html',0.0658801,'200 OK'),(1884,39,'/uslugi/regions/jasnogorsk.html',0.066859,'200 OK'),(1885,39,'/uslugi/regions/venjov.html',0.0673158,'200 OK'),(1886,39,'/uslugi/regions/leninskii.html',0.0638561,'200 OK'),(1887,39,'http://otdelka.electric-tula.ru',0.260814,'200 OK'),(1888,39,'/article/uso.html',0.0979838,'200 OK'),(1889,39,'/article/systema-zazemlinija.html',0.0575349,'200 OK'),(1890,39,'/article/zamena-provodki.html',0.057164,'200 OK'),(1891,39,'/article/vvgng-ls-construction.html',0.128257,'200 OK'),(1892,39,'/article/nym-cable.html',0.0575268,'200 OK'),(1893,39,'/uslugi/vysov-electrica.html',0.0705988,'200 OK'),(1894,39,'/uslugi/zamena-electroprovodki.html',0.0742619,'200 OK'),(1895,39,'/uslugi/ustanovka-electroschjotchikov.html',0.0632398,'200 OK'),(1896,39,'/uslugi/diagnostica.html',0.064785,'200 OK'),(1897,39,'/uslugi/ustanovka-bytovyh-priborov.html',0.0654759,'200 OK'),(1898,39,'/uslugi/podkluchenie-doma.html',0.0689759,'200 OK'),(1899,39,'/uslugi/montazh-zazemlenia.html',0.294979,'200 OK'),(1900,39,'/uslugi/ustanovka-lustr.html',0.063796,'200 OK'),(1901,39,'/uslugi/montazh-sip.html',0.067759,'200 OK'),(1902,39,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.063153,'200 OK'),(1903,39,'/uslugi/ustanovka-provodki-v-ofisah.html',0.066154,'200 OK'),(1904,39,'https://metrika.yandex.ru/stat/?id=26536167&amp;from=informer',0.252825,'200 OK'),(1905,40,'/',0.0570369,'200 OK'),(1906,40,'/',0.055687,'200 OK'),(1907,40,'http://otdelka.electric-tula.ru',0.431098,'200 OK'),(1908,40,'/uslugi/vysov-electrica.html',0.141337,'200 OK'),(1909,40,'/uslugi/shumoizoliatsia-kvartir.html',0.11666,'200 OK'),(1910,40,'/uslugi/podkluchenie-doma.html',0.0850301,'200 OK'),(1911,40,'/uslugi/zamena-electroprovodki.html',0.102076,'200 OK'),(1912,40,'/uslugi/montazh-zazemlenia.html',0.0858312,'200 OK'),(1913,40,'/uslugi/provodka-na-dache.html',0.0751259,'200 OK'),(1914,40,'/uslugi/electroprovodka-v-novostroike.html',0.0663269,'200 OK'),(1915,40,'/uslugi/ustanovka-electroschjotchikov.html',0.069011,'200 OK'),(1916,40,'/uslugi/ustanovka-lustr.html',0.073859,'200 OK'),(1917,40,'/uslugi/montazh-sip.html',0.0802701,'200 OK'),(1918,40,'/uslugi/ustanovka-stolbov.html',0.0778859,'200 OK'),(1919,40,'/uslugi/diagnostica.html',0.0708501,'200 OK'),(1920,40,'/uslugi/montazh-electroschitov.html',0.0848489,'200 OK'),(1921,40,'/uslugi/ustanovka-bytovyh-priborov.html',0.075099,'200 OK'),(1922,40,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.111346,'200 OK'),(1923,40,'/uslugi/ustanovka-provodki-v-ofisah.html',0.075371,'200 OK'),(1924,40,'/price/actions.html',0.0596299,'200 OK'),(1925,40,'/price/discount.html',0.0585661,'200 OK'),(1926,40,'/our_work/vysov-electrica.html',0.0717831,'200 OK'),(1927,40,'/our_work/podkluchenie-doma.html',0.134858,'200 OK'),(1928,40,'/our_work/zamena-ehlektroprovodki.html',0.206548,'200 OK'),(1929,40,'/our_work/podkluchenie-bytovyh-electropriborov.html',0.117058,'200 OK'),(1930,40,'/our_work/ustanovka-electroschjotchikov.html',0.0637949,'200 OK'),(1931,40,'/our_work/montazh-osveshcheniya.html',0.154478,'200 OK'),(1932,40,'/our_work/montazh-provodki-v-ofisah.html',0.0805149,'200 OK'),(1933,40,'/our_work/montazh-ehlektroprovodki-v-tekhnicheskih-pomeshcheniyah.html',0.079355,'200 OK'),(1934,40,'/our_work/montazh-sip.html',0.070919,'200 OK'),(1935,40,'/our_work/ustanovka-stolbov.html',0.101569,'200 OK'),(1936,40,'/our_work/montazh-zazemleniya.html',0.0755351,'200 OK'),(1937,40,'/our_work/montazh-ehlektroshchitov.html',0.134042,'200 OK'),(1938,40,'/our_work/oformlenie-documentov.html',0.079694,'200 OK'),(1939,40,'/our_work/diagnostica-electrosetey.html',0.0708022,'200 OK'),(1940,40,'/our_work/electrica-na-dache.html',0.143515,'200 OK'),(1941,40,'/our_work/звукоизоляция-квартир.html',0.070493,'200 OK'),(1942,40,'/article/uso.html',0.059268,'200 OK'),(1943,40,'/article/systema-zazemlinija.html',0.0580511,'200 OK'),(1944,40,'/article/zamena-provodki.html',0.05738,'200 OK'),(1945,40,'/article/vvgng-ls-construction.html',0.057817,'200 OK'),(1946,40,'/article/nym-cable.html',0.058362,'200 OK'),(1947,40,'/contacts/vakansii.html',0.0585711,'200 OK'),(1948,40,'/uslugi.html',0.0664451,'200 OK'),(1949,40,'/uslugi/vysov-electrica.html',0.063411,'200 OK'),(1950,40,'/uslugi/shumoizoliatsia-kvartir.html',0.075954,'200 OK'),(1951,40,'/uslugi/podkluchenie-doma.html',0.066926,'200 OK'),(1952,40,'/uslugi/zamena-electroprovodki.html',0.0726302,'200 OK'),(1953,40,'/uslugi/montazh-zazemlenia.html',0.0666571,'200 OK'),(1954,40,'/uslugi/provodka-na-dache.html',0.0632932,'200 OK'),(1955,40,'/uslugi/electroprovodka-v-novostroike.html',0.0633559,'200 OK'),(1956,40,'/uslugi/ustanovka-electroschjotchikov.html',0.0622399,'200 OK'),(1957,40,'/uslugi/ustanovka-lustr.html',0.0622129,'200 OK'),(1958,40,'/uslugi/montazh-sip.html',0.0683889,'200 OK'),(1959,40,'/uslugi/ustanovka-stolbov.html',0.0646329,'200 OK'),(1960,40,'/uslugi/diagnostica.html',0.062923,'200 OK'),(1961,40,'/uslugi/montazh-electroschitov.html',0.0671101,'200 OK'),(1962,40,'/uslugi/ustanovka-bytovyh-priborov.html',0.064281,'200 OK'),(1963,40,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.0616951,'200 OK'),(1964,40,'/uslugi/ustanovka-provodki-v-ofisah.html',0.064476,'200 OK'),(1965,40,'/price/discount.html',0.0561521,'200 OK'),(1966,40,'/price/actions.html',0.0559151,'200 OK'),(1967,40,'/uslugi/vysov-electrica.html',0.0639009,'200 OK'),(1968,40,'/uslugi/shumoizoliatsia-kvartir.html',0.074789,'200 OK'),(1969,40,'/uslugi/podkluchenie-doma.html',0.066921,'200 OK'),(1970,40,'/uslugi/zamena-electroprovodki.html',0.0719581,'200 OK'),(1971,40,'/uslugi/montazh-zazemlenia.html',0.0680859,'200 OK'),(1972,40,'/uslugi/provodka-na-dache.html',0.0646391,'200 OK'),(1973,40,'/uslugi/electroprovodka-v-novostroike.html',0.06393,'200 OK'),(1974,40,'/uslugi/ustanovka-electroschjotchikov.html',0.150672,'200 OK'),(1975,40,'/uslugi/ustanovka-lustr.html',0.0664432,'200 OK'),(1976,40,'/uslugi/montazh-sip.html',0.0697951,'200 OK'),(1977,40,'/uslugi/ustanovka-stolbov.html',0.0663249,'200 OK'),(1978,40,'/uslugi/diagnostica.html',0.0648179,'200 OK'),(1979,40,'/uslugi/montazh-electroschitov.html',0.0688949,'200 OK'),(1980,40,'/uslugi/ustanovka-bytovyh-priborov.html',0.106753,'200 OK'),(1981,40,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.0635979,'200 OK'),(1982,40,'/uslugi/ustanovka-provodki-v-ofisah.html',0.0653229,'200 OK'),(1983,40,'/uslugi/regions/zaokskij.html',0.0640049,'200 OK'),(1984,40,'/uslugi/regions/novomoskovsk.html',0.0666771,'200 OK'),(1985,40,'/uslugi/regions/alexin.html',0.0694609,'200 OK'),(1986,40,'/uslugi/regions/dubna.html',0.0680349,'200 OK'),(1987,40,'/uslugi/regions/sctchekino.html',0.073143,'200 OK'),(1988,40,'/uslugi/regions/uzlovaja.html',0.0657892,'200 OK'),(1989,40,'/uslugi/regions/jasnogorsk.html',0.0701361,'200 OK'),(1990,40,'/uslugi/regions/venjov.html',0.0680449,'200 OK'),(1991,40,'/uslugi/regions/leninskii.html',0.065093,'200 OK'),(1992,40,'http://otdelka.electric-tula.ru',0.243424,'200 OK'),(1993,40,'/article/uso.html',0.100385,'200 OK'),(1994,40,'/article/systema-zazemlinija.html',0.058733,'200 OK'),(1995,40,'/article/zamena-provodki.html',0.0581992,'200 OK'),(1996,40,'/article/vvgng-ls-construction.html',0.0602491,'200 OK'),(1997,40,'/article/nym-cable.html',0.060113,'200 OK'),(1998,40,'/uslugi/vysov-electrica.html',0.0658221,'200 OK'),(1999,40,'/uslugi/zamena-electroprovodki.html',0.075902,'200 OK'),(2000,40,'/uslugi/ustanovka-electroschjotchikov.html',0.063396,'200 OK'),(2001,40,'/uslugi/diagnostica.html',0.065872,'200 OK'),(2002,40,'/uslugi/ustanovka-bytovyh-priborov.html',0.0659709,'200 OK'),(2003,40,'/uslugi/podkluchenie-doma.html',0.068897,'200 OK'),(2004,40,'/uslugi/montazh-zazemlenia.html',0.070226,'200 OK'),(2005,40,'/uslugi/ustanovka-lustr.html',0.0646319,'200 OK'),(2006,40,'/uslugi/montazh-sip.html',0.0693638,'200 OK'),(2007,40,'/uslugi/montash-provodki-v-tehnicheskih-pomescheniah.html',0.0634439,'200 OK'),(2008,40,'/uslugi/ustanovka-provodki-v-ofisah.html',0.0655391,'200 OK'),(2009,40,'https://metrika.yandex.ru/stat/?id=26536167&amp;from=informer',0.304088,'200 OK');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scripts`
--

DROP TABLE IF EXISTS `scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` int(255) NOT NULL,
  `time` float NOT NULL,
  `response` text NOT NULL,
  `src` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  CONSTRAINT `scripts_ibfk_1` FOREIGN KEY (`url`) REFERENCES `urls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scripts`
--

LOCK TABLES `scripts` WRITE;
/*!40000 ALTER TABLE `scripts` DISABLE KEYS */;
INSERT INTO `scripts` VALUES (183,39,0.17182,'200 OK','https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js'),(184,39,0.0460629,'200 OK','/site/js/orbit-1.2.3/jquery.orbit-1.2.3.min.js'),(185,39,0.131205,'200 OK','/site/js/highslide-4.1.13/highslide/highslide-with-gallery.js'),(186,39,0.046236,'200 OK','/site/js/jquery.maskedinput.min.js'),(187,39,0.0460889,'200 OK','/site/js/countdown.js'),(188,39,0.0481629,'200 OK','/site/js/slick/slick.min.js'),(189,39,0.110063,'404 Not Found','http://html5shim.googlecode.com/svn/trunk/html5.js'),(190,39,0.047138,'200 OK','/site/js/script.js'),(191,39,0.149521,'200 OK','//vk.com/js/api/openapi.js?142'),(192,40,0.140147,'200 OK','https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js'),(193,40,0.0440431,'200 OK','/site/js/orbit-1.2.3/jquery.orbit-1.2.3.min.js'),(194,40,0.12847,'200 OK','/site/js/highslide-4.1.13/highslide/highslide-with-gallery.js'),(195,40,0.044713,'200 OK','/site/js/jquery.maskedinput.min.js'),(196,40,0.0446749,'200 OK','/site/js/countdown.js'),(197,40,0.047075,'200 OK','/site/js/slick/slick.min.js'),(198,40,0.066416,'404 Not Found','http://html5shim.googlecode.com/svn/trunk/html5.js'),(199,40,0.0439248,'200 OK','/site/js/script.js'),(200,40,0.135417,'200 OK','//vk.com/js/api/openapi.js?142');
/*!40000 ALTER TABLE `scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styles`
--

DROP TABLE IF EXISTS `styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` int(255) NOT NULL,
  `src` text NOT NULL,
  `time` float NOT NULL,
  `response` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  CONSTRAINT `styles_ibfk_1` FOREIGN KEY (`url`) REFERENCES `urls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=579 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles`
--

LOCK TABLES `styles` WRITE;
/*!40000 ALTER TABLE `styles` DISABLE KEYS */;
INSERT INTO `styles` VALUES (571,39,'/site/js/orbit-1.2.3/orbit-1.2.3.css',0.0450501,'200 OK'),(572,39,'/site/js/highslide-4.1.13/highslide/highslide.css',0.08851,'200 OK'),(573,39,'/site/js/slick/slick.css',0.0458651,'200 OK'),(574,39,'/site/css/app.css',0.0463169,'200 OK'),(575,40,'/site/js/orbit-1.2.3/orbit-1.2.3.css',0.0455461,'200 OK'),(576,40,'/site/js/highslide-4.1.13/highslide/highslide.css',0.0895672,'200 OK'),(577,40,'/site/js/slick/slick.css',0.045763,'200 OK'),(578,40,'/site/css/app.css',0.047245,'200 OK');
/*!40000 ALTER TABLE `styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urls`
--

DROP TABLE IF EXISTS `urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urls` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urls`
--

LOCK TABLES `urls` WRITE;
/*!40000 ALTER TABLE `urls` DISABLE KEYS */;
INSERT INTO `urls` VALUES (39,'http://electric-tula.ru/uslugi.html','2020-02-06 01:21:31'),(40,'http://electric-tula.ru/uslugi.html','2020-02-06 05:16:47');
/*!40000 ALTER TABLE `urls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-06  7:43:19
