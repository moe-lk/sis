-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config_attachments`
--

DROP TABLE IF EXISTS `config_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `file_content` longblob NOT NULL,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_attachments`
--

LOCK TABLES `config_attachments` WRITE;
/*!40000 ALTER TABLE `config_attachments` DISABLE KEYS */;
INSERT INTO `config_attachments` VALUES (1,'Kord IT',' ','partner','kordit_logo.png',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0T\0\0b\0\0\0&Ó·R\0\0\0tEXtSoftware\0Adobe ImageReadyq\Ée<\0\0&IDATx\Ú\ì\İ\ëR\Z`]‰®O	xB#JUˆ§*/E½oÈ‹0¿“X!–*¦4\"\àqµ\Ô\Úogª¦Xº?zzF\çù‘Š:\Ó\Ó\İô\Û\ß\Û\Í\ì¾yó\æ.`\çù—]\0\Â?ğµ\ëÛ½{·½\0&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É??\àš0ù\á\Ô~À\ä„Pû“~@\íL~@øµ0ù\á\Ô~À\ä„Pû“~@\í“~@\íL~@øµ0ù\á„p\Í˜ü€ğj?`ò\Â¨ı€\É? ö&? ü€\Ú˜ü€ğƒ\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&?? ü€k~À\ä„Pû“~@\íL~@øµ0ù\á\Ô~À\ä„Pû“~@\íL~@øA\íWûÁ\ä„Pû“~@\íL~@ø\á\\ó&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&?? ö&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&? ü€\Ú˜ü€ğ\Â¸\æL~@øA\íWûÁ\ä„Pû“~@\íL~@øµ0ù\á\Ô~À\ä„Pû“~@\íL~@øµ0ù\áµ0ù\á\Ô~À\ä„~À5ÿö\Û}}\ß~ûmñc^¿~ıñ\ãÇ‚ü»!ùŠ±¨X`f\Åb\İúûû\ãGYı¯\Ë\Ë\Ëñß•••XTüñ\êµK—\èp\ïı§¡7/š\Üo¤{» y8^¾|¹ø1şùg3lKH\Óq\ÇÒŠs\âÄ‰\ãÇ¯Iû\Z\Ím=&Vonn\îÙ³gù\r)~‰¼\Èdœ†?^°—\êz\Ñüku\è\×_]XX(xÀ\è\è\è\Ø\ØX\ëñ\àxJ\Øk×®	ÿV)?ıôÓ¦’_0¾b\ÔG<ò%bõ¹ œ={vvvvS§€ºN ahh(999¹©.\Ğ\Ék\Å\Æv\ïpûöí‰‰‰\â®	ÿ­[·¶Mø\Õş\Ù	»\ÚşÓ•+Wšµ<“üñññ7oŞ´]Tó$òı÷\ßw²-qÖˆ…\Ä$Xz!Ğ¯~œ€®^½\Z›¹\Ñ	®\Æm\ï<y233³¥©–rÃ¯S‘´dòCA$\"ùq\á\Ğaò[b9±´\nõ¡®*t\éÒ¥\Î\ï&$Eˆ\ÓM\Ï^\î«!ü‰W\æ\É\Ç(.N~ş$’K\ëeÛ¶˜½\\l\ì/¿ü\â€Tû{Ôµ\"öş\äs\ïß¿???¿\ÑŞ®=ù­K€XòüñEvW´ıû÷wõ\âµÃ‡\Ï\Î\Îö²]¯¹Tûw„\È\ê?ş˜Oş\Ü\Ü\\A}\èFò[\ë™?C\Õ._‹jñ\Ã?toO~…“\ß.¨Ü¨kI~\ç8d“‹úøñ\ã›7oZƒ.ù¬S§N\Å\nT›Às\r\ë+}LõL°ó+Y—‘‘‘ññq‡¨\Ú_g‰j¼M}cojjª \í7\Ç~f9‘ùÇ/..®™«q\âØ·o_\é\å÷\Ğ\ĞĞƒ*\ì™÷\ïß¿|ùrıß¿xñ\"¶\ë\âÅ‹¥\×°•••¿şú«µòı\r±±™©§›^^k\ì\Ú\ÎwûMşM‹#>\Ù-#ù3¿yd÷\İw¥Ë‰˜E}h;–\ãt0::Z:`;V-ü\ÅW/şöD\é‰)SvV\Z>}\Zù?w\î\\\éi7šN\í›488xıúõ\â\ÇÜ¾}»øCc\rjÿ–\×ùu%W\ã–X\é¡\Ç}\Ûä·²111Qz>jõ5Å¡s\ÑG\êú\Şdò\Z$¶7Nv[\íZcuøoÜ¸Qü˜{÷î•†¿t!j¯kTô¡™Æ˜*nûù\Ã4N\"\Å\Ëùô\é\ÓÃ‡/\\¸PúZ\Ñ\Õ+ì™‚W/M~œ¹ª`=+6!–Y¼\ß\â<ø\Í7\ßTø¤Cµõ¬=A\İXf[\îögE\ìÏœ9“yd\Ä>Ò˜ydiøc´\ÆUw¦—>¬ö\Û\à\ÍKñ\Ò[µ!b÷f\Ö\Í+üu†?ó°8\ÜcV\'—YzIœŸÕ¥•¾\Æ2«\×\ŞW®\\Éœ•jÿBdö\ÉlşÛˆÚŸ­ıù`D®\ë\0}ùòer\İŞ¾}[ú˜õe¸t\áq\Ê[³1T÷\ìÙ“Y¥¸YZZZÿ›}\ç\ÌúÅ†\Òu\Ø^7Ş¿\ÈÊ›üõ\ËÜ‘N\Ê_¸f\nv…2\ç²Cÿ/™ü\×>]ºğn½\ÙÁ\äş­%“¼;\ĞùQ¾e\Í78\Ôş\ç\äÉ“G·w’{°ù±\í333¼V\ç\ëÙ›-u·Ÿ6†‡‡w\àV\Ç\Õø\ä\ä\äôô´`L~» K\âò8\æÿ?ÿü³C2¿²²ò\âÅ‹â·¯ öo9]\Ú	q\åÿüùónze^ôğ\á\Ãm\ßZ_mi>|\èÒ–\îÙ³§¯¯¯\Æ\åo‘ÚŸ|÷\×_¦\Ú\ßS1\âbÜ•F¢\às;¥O\ß\Õx[n¾h”>¦\Â[nb3\ïİ»7;;[ú\ÜX±±±(;=\Øù¥ß¶H1w8á¯˜ü™™™L¥\Ü(–™Û™H\'óP\í\Ív\ÍOõÅ–Ş¹s\'S\é\ãd›\Üİ²\Ú×—ÿv#j-+šüƒ\â)Ï=‹AWz ·> º~@\Çû\èÑ£\ÉMSzšxûöm…¯õ\ê;Ï±\Õ\Íoû?edd$ú‡³·`U3Ÿƒ¬¶±\Õ\Ö\Ó\İş\"ªGµz{\æ\'d8p\àô\é\Ó-­ø¹¶\Ì Ç”ƒji\Â\É3\Ñùó\ç»7œ2_&Çªğ×œü¸\0^}­}8s\é~\âÄ‰¶o\ãO\é\â \ßYhYZZªeDñ)}Xl\ìF\ç»Å,­\ï®jmµ?û‰‰‰ÏŸ?¯~pü1†ÿ\Ğ\ĞPñs›ù\\ÿŸw\ï\Ş\ÅaZüñx\î\Ø\ØXT\î¶\Ó,jEf\Ì\Æs\ÛŞŠ¯p\çùÉ“\'™\Ù)››k\Âj\ï\ímŒe–\î\ê\æuY/\ê\íû\Ş~\ß\ç\Ïzüøq\Û!áƒ²4~qõ#k}÷,EzK/.\\¸\ÇtL\ïXBóc-±´Xf&‡Í•¬k?Dc3!¬ü³\Ãö\îİ»zù±±ııı\Ìß”q¸\n/4¯ü3a8w\î\Üİ»w×œA\âH\çf~\Ü\Õ@C÷ºz^ò|k§‰\n\r<öFfn´n:¿\Úß»‚ı6†8¦O<yXó÷>üùçŸ»\ÚY*•\Û6ğ¸Ø‰M>u\êTfø\'®I]\'\â§OŸö¸ó»Û¿Ó‡\é\ëkŠÀ¬ò¯^½ŠC¶K\ëK\å×¾\Ø°>|È´•\Î†g\Ş\Ô\ÔT\æş+\Â_§˜\ç™04\ËÛ§w\ãJ5–¹¾h\Ôu¾K.9ÿ[	:£§9µ‡öùM•±˜±™Oò<xpppp}\Ô=zË¯ñ‡\áFùûï¿»÷&ù\Å\Å\Åhõ{÷\î-~ú‘#G:\Ô\ÕXÆ™(¶4\Ö\ç‹|\Ú{ûùß˜Mÿ3gÎ´½A³kzzºó\â\ZKˆ\åDz0l“;\İ[‡8­LNNº\Ã/ü_Xò\Ò=’¿Q–——\Ç\Ç\ÇchW;4\ïx\Åb9=\Ø\ŞW\r™²“ÿF]^lcÔ¥H¾÷óU¬ıvA½\Ã?R]Ú„w5~\Ó\Öüü|\ÛoJ5Kldø\èÑ£Ñ™#6™·\Ê.7,--õøW¬g\æWq\Çöv\Øüc»\"\ä\Íÿ&O:¸\æ/÷úõ\ë\ßÿ½–+±>Ã³\Ù~şüy±aW\ãM/ûö\íÛ¿ÿúOø6ßº·zôm\êZğ»€’L\îº\Õ\ËÉ¼\è¹*n{wv\ÍIm³kÒeVÜ‡¿ıö›ğƒk~@\íL~@øµ0ù\á\Ô~À\ä„Pû“~@\íL~@øµ0ù\á\Ô~À\ä„PûÁ\ä„Pû“~@\íL~@ø\á\\ó&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&?? ö&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&? ü€\Ú˜ü€ğ\Â¸\æL~@øµL~@øµ0ù\á\Ô~À\ä„Pû“~@\íL~@øµ0ù\á\Ô~À\ä„Pû“~Pû“~@\íL~@ø\á\\ó&? ü€\Ú˜ü€ğj?`ò\Â¨ı€\É? ö&? ü€\Ú;\Ş\0µ2F\Ò^\ë8\0\0\0\0IEND®B`‚',1,1,1,NULL,NULL,1,'2017-12-13 00:00:00');
/*!40000 ALTER TABLE `config_attachments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 12:35:25
