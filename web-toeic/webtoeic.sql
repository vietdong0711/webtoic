CREATE DATABASE  IF NOT EXISTS `webtoeic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webtoeic`;

DROP TABLE IF EXISTS `bai_grammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_grammar` (
  `baigrammarid` int NOT NULL AUTO_INCREMENT,
  `anhbaigrammar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_mark_down` text COLLATE utf8_unicode_ci,
  `tenbaigrammar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`baigrammarid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_grammar`
--

LOCK TABLES `bai_grammar` WRITE;
/*!40000 ALTER TABLE `bai_grammar` DISABLE KEYS */;
INSERT INTO `bai_grammar` VALUES (1,'1.14.cautrucusedto.jpg','<p>ABC</p>\r\n','ABC',''),(2,'2.bai-tap-ngu-phap-toeic-ve-danh-dong-tu-va-dong-tu-nguyen-the.jpg','<p>Danh động từ (Gerund) và Động từ nguyên mẫu (Infinitives) là 2 dạng của động từ nguyên thể. Chúng có thể được sử dụng nhằm thay thế danh từ cho câu, và thường được chỉ hành động hơn là dành cho chỉ người hoặc đối tượng. Dưới đây là bài tập ngữ pháp TOEIC ôn luyện về danh động từ và động từ nguyên thể:</p>\r\n','Danh động từ (Gerund) và Động từ nguyên mẫu (Infinitives) là 2 dạng của động từ nguyên thể. Chúng có thể được sử dụng nhằm thay thế danh từ cho câu, và thường được chỉ hành động hơn là dành cho chỉ người hoặc đối tượng. Dưới đây là bài tập ngữ pháp TOEIC ôn luyện về danh động từ và động từ nguyên thể:','Danh động từ và động từ nguyên thể');
/*!40000 ALTER TABLE `bai_grammar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bai_tap_doc`
--

DROP TABLE IF EXISTS `bai_tap_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_tap_doc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `do_kho` int NOT NULL,
  `part` int NOT NULL,
  `script` text COLLATE utf8_unicode_ci,
  `ten_bai_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_tap_doc`
--

LOCK TABLES `bai_tap_doc` WRITE;
/*!40000 ALTER TABLE `bai_tap_doc` DISABLE KEYS */;
INSERT INTO `bai_tap_doc` VALUES (1,1,5,'Cố lên\r\n','Reading1');
/*!40000 ALTER TABLE `bai_tap_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bai_tap_nghe`
--

DROP TABLE IF EXISTS `bai_tap_nghe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_tap_nghe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `do_kho` int NOT NULL,
  `part` int NOT NULL,
  `script` text COLLATE utf8_unicode_ci,
  `ten_bai_nghe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_tap_nghe`
--

LOCK TABLES `bai_tap_nghe` WRITE;
/*!40000 ALTER TABLE `bai_tap_nghe` DISABLE KEYS */;
INSERT INTO `bai_tap_nghe` VALUES (1,1,1,NULL,'Bài nghe 1');
/*!40000 ALTER TABLE `bai_tap_nghe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bai_tap_tu_vung`
--

DROP TABLE IF EXISTS `bai_tap_tu_vung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_tap_tu_vung` (
  `baitaptuvungid` int NOT NULL AUTO_INCREMENT,
  `anhbaituvung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaituvung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`baitaptuvungid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_tap_tu_vung`
--

LOCK TABLES `bai_tap_tu_vung` WRITE;
/*!40000 ALTER TABLE `bai_tap_tu_vung` DISABLE KEYS */;
INSERT INTO `bai_tap_tu_vung` VALUES (1,'1.2.demonstrate.jpg','Vocabulary 1');
/*!40000 ALTER TABLE `bai_tap_tu_vung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bai_thi_thu`
--

DROP TABLE IF EXISTS `bai_thi_thu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_thi_thu` (
  `baithithuid` int NOT NULL AUTO_INCREMENT,
  `anhbaithithu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaithithu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`baithithuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_thi_thu`
--

LOCK TABLES `bai_thi_thu` WRITE;
/*!40000 ALTER TABLE `bai_thi_thu` DISABLE KEYS */;
INSERT INTO `bai_thi_thu` VALUES (1,'1.exercise-listen.png','Đề 1');
/*!40000 ALTER TABLE `bai_thi_thu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baithi_cauhoi`
--

DROP TABLE IF EXISTS `baithi_cauhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baithi_cauhoi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_baithi` int DEFAULT NULL,
  `id_cauhoi` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `a_idx` (`id_baithi`),
  KEY `b_idx` (`id_cauhoi`),
  CONSTRAINT `a` FOREIGN KEY (`id_baithi`) REFERENCES `bai_thi_thu` (`baithithuid`),
  CONSTRAINT `b` FOREIGN KEY (`id_cauhoi`) REFERENCES `cau_hoi_bai_thi_thu` (`cauhoibaithithuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baithi_cauhoi`
--

LOCK TABLES `baithi_cauhoi` WRITE;
/*!40000 ALTER TABLE `baithi_cauhoi` DISABLE KEYS */;
/*!40000 ALTER TABLE `baithi_cauhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cau_hoi_bai_tap_doc`
--

DROP TABLE IF EXISTS `cau_hoi_bai_tap_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cau_hoi_bai_tap_doc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cau_hoi` text COLLATE utf8_unicode_ci,
  `dap_an_dung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giai_thich` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `so_thu_tu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bai_tap_doc_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKec05quu61nalb96kvo06m5lm4` (`bai_tap_doc_id`),
  CONSTRAINT `FKec05quu61nalb96kvo06m5lm4` FOREIGN KEY (`bai_tap_doc_id`) REFERENCES `bai_tap_doc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cau_hoi_bai_tap_doc`
--

LOCK TABLES `cau_hoi_bai_tap_doc` WRITE;
/*!40000 ALTER TABLE `cau_hoi_bai_tap_doc` DISABLE KEYS */;
INSERT INTO `cau_hoi_bai_tap_doc` VALUES (1,'Thailand .......... by some of the worst flooding in decades late last year.','A','was hit ',' was hitting ',' was being hit ',' hit ','giải thích','\n','1',1),(2,'In January 2012 Yahoo ........ Scott Thompson, the president of online payments firm Paypal, as its new head.\n','B','was naming  ',' named ','name ',' has named ','giải thích','','2',1),(3,'Before ....... Yahoo Mr Thompson served as president of online payments firm PayPal from 2008.','C','joined ','being joined',' joining ','was joined ','giải thích','','3',1),(4,'Yahoo\'s stock ........ since it passed up a $44bn takeover bid from Microsoft in 2008.\n','D','was languished ',' have languished \n',' languished ',' has languished \n','giải thích','','4',1),(5,'Last year, the Chinese government stopped ........ nationwide home price statistics, and now only reports data on specific cities.','B','providing','to provide',' provide ',' provides','giải thích','','5',1),(6,'At the same time, the recent drop in oil prices ......... to keep consumer price growth in check.','C',' has also helped ','have also helped ',' also helps ',' also help ','giải thích','','6',1),(7,'During the first quarter of 2012 the Chinese economy ....... at a pace of 8.1%.','A',' grown',' grew ','grows ','has grown ','giải thích','','7',1),(8,'For its part, the EU welcomed the G8 communiqué with its dual emphasis on ....... growth and jobs.\n','A','to boost ',' boosting ',' boost ','boosts ','giải thích','','8',1),(9,'The worry is that if property prices ......... further then it will hurt growth in the world\'s second-largest economy.','D',' falls ',' fell ',' fall ','have fallen \n','giải thích','','9',1),(10,'It has been noticeable that since last Wednesday, Number 10 .......... towards more evidence-based policy.','B','have been moving ',' have moved ',' has been moving ',' moved ','giải thích','','10',1),(11,'Yahoo ........ that Mr Thompson, who took up his post in January, does not have a computer science degree.','C','already acknowledging ',' already acknowledged ',' have already acknowledged ',' has already acknowledged \n','giải thích','','11',1),(12,'Investment firm Third Point discovered that Mr Thompson did not hold a degree in computer science as ..........\n','D','had been claimed ',' has been claimed ','been claimed ',' being claimed ','giải thích','','12',1),(13,'On Monday the Wall Street Journal reported that Mr Thompson, 54, told Yahoo\'s board late last week he ........... with thyroid cancer. ','D',' had been diagnosed','has been diagnosed ',' was diagnosed ','is diagnosed ','giải thích','','13',1),(14,'President Obama said leaders ......... good progress on a range of issues.\n','A',' having made ','had made ','have made ','was made ','giải thích','','14',1),(15,'Leaders ........ the summit addressed a number of issues, including energy security, climate change and the situation in Iran, Afghanistan and North Korea.\n','B',' attended ',' attending ',' attend ','attends ','giải thích','','15',1),(16,'He will also be able .......... two other new directors, while Yahoo has named Fred Amoroso as the new chairman of its board.\n','D','appoint ','to appoint ',' appointing ',' appoints ','giải thích','','16',1),(17,'Third Point believes that Yahoo shareholders and employees will be best served if the board .......... responsibility quickly for this latest debacle.\n','C','accepting',' accepts ',' accepted','is accepting ','giải thích','','17',1),(18,'In an earlier communiqué, G8 leaders committed themselves to promoting growth alongside fiscal responsibility and affirmed that they wanted Greece ........... in the eurozone.\n','B','stayed ',' to stay ',' stay ',' staying ','giải thích','','18',1),(19,'If it falls below that figure, they argue, the country may find it more difficult ........ domestic demand, boost infrastructure investment and accelerate job creation.','D',' maintain ','maintaining ',' to maintaining ',' to maintain ','giải thích','','19',1),(20,'China has been trying to boost domestic demand in an attempt ......... the fall in global demand for its exports.','A','to offset ',' to offset  offset ',' offsetting ',' offsets ','giải thích','','20',1);
/*!40000 ALTER TABLE `cau_hoi_bai_tap_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cau_hoi_bai_tap_nghe`
--

DROP TABLE IF EXISTS `cau_hoi_bai_tap_nghe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cau_hoi_bai_tap_nghe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cau_hoi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_dung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giai_thich` text COLLATE utf8_unicode_ci,
  `photo_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8_unicode_ci,
  `so_thu_tu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bai_tap_nghe_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK569ojxvjejlo12dd1x95yhwu5` (`bai_tap_nghe_id`),
  CONSTRAINT `FK569ojxvjejlo12dd1x95yhwu5` FOREIGN KEY (`bai_tap_nghe_id`) REFERENCES `bai_tap_nghe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cau_hoi_bai_tap_nghe`
--

LOCK TABLES `cau_hoi_bai_tap_nghe` WRITE;
/*!40000 ALTER TABLE `cau_hoi_bai_tap_nghe` DISABLE KEYS */;
INSERT INTO `cau_hoi_bai_tap_nghe` VALUES (1,'cau hoi 1','1','dap an 1','dap an 2','dap an  3 1','dap an  4 1','aaaa',NULL,'','1',1),(2,'cau hoi 2','2','dap an 1','dap an 2','dap an  3 2','dap an  4 2','bbbb',NULL,'','2',1),(3,'cau hoi 3','3','dap an 1','dap an 2','dap an  3 3','dap an  4 3','cccc',NULL,'','3',1);
/*!40000 ALTER TABLE `cau_hoi_bai_tap_nghe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cau_hoi_bai_thi_thu`
--

DROP TABLE IF EXISTS `cau_hoi_bai_thi_thu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cau_hoi_bai_thi_thu` (
  `cauhoibaithithuid` int NOT NULL AUTO_INCREMENT,
  `audiomp3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correctanswer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theloai` int DEFAULT NULL,
  PRIMARY KEY (`cauhoibaithithuid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cau_hoi_bai_thi_thu`
--

LOCK TABLES `cau_hoi_bai_thi_thu` WRITE;
/*!40000 ALTER TABLE `cau_hoi_bai_thi_thu` DISABLE KEYS */;
INSERT INTO `cau_hoi_bai_thi_thu` VALUES (1,'1.num1','D',NULL,'1.num1',1,'The man is finishing his meal','The customer is waiting for a table','The waiter is setting the table','The woman is looking at the menu','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','',1),(2,'1.num2','A',NULL,'1.num2',2,'He’s handling a tool','He’s cutting grass','He’s building a bookshelf','He’s walking up to the roof','','',1),(3,'1.num3','B',NULL,'1.num3',3,'She’s turning on the light','She’s holding up a booklet','She’s speaking to the audience','She’s rearranging the bookshelf','','',1),(4,'1.num4','B',NULL,'1.',4,'I came in early today','Because I had a question','By two o’clock at the earliest',NULL,'Listen to the question and the three responses. Choose the response that best answers the question:','Why did you come by yesterday?',1),(5,'1.num5','C',NULL,'1.',5,'Yes, I can lend it to you','The handle is in the front','Yes, that would be nice, thanks',NULL,'','Would you like a hand with your luggage?',1),(6,'1.num6','B',NULL,'1.',6,'No, it’s in Los Angeles','Yes, he is the boss there','He’s on a business trip',NULL,'','Mr. Robertson runs our San Francisco office, doesn’t he?',1),(7,'1.num7','C',NULL,'1.',7,'You will have to prove it','Sorry, I can’t change my schedule','I think Mr. Sutton did',NULL,'',' Who approved the new schedule?',1),(8,'1.num8','A',NULL,'1.',8,'He didn’t say much','Let’s go talk to him','Where is he now?',NULL,'','What did Mr. Chin say to you at the meeting?',1),(9,'1.num9','A',NULL,'1.',9,'No, I asked Rick to take it','At the post office','He is not the person',NULL,'','Did you deliver the package in person?',1),(10,'1.num10','B',NULL,'1.',10,'You shouldn’t run too fast','Let me see if I can do anything about it','No, I am not going to wear it',NULL,'','The software is not running properly',1),(11,'1.num11','A',NULL,'1.',11,'It’s on the second floor','Let’s meet in a short while','We have plenty of room',NULL,'','Where is the conference room?',1),(12,'1.num12','C',NULL,'1.',12,'Yes, I will ask him','Fifteen pages','Mr. Johnson did',NULL,'','Who asked for a copy of the report?',1),(13,'1.num13','B',NULL,'1.',13,'Yes, I liked it very much','Some tea would be nice','No, I didn’t get anything',NULL,'','Would you like anything to drink?',1),(14,'1.num14','A',NULL,'1.',14,'From gate','Yes, let’s go','In ten minutes',NULL,'','Where does the bus for Toronto leave?',1),(15,'1.num15-16-17','C',NULL,'1.',15,'100.0','200.0','300.0','400.0','Listen to the dialogue. Then read each question and choose the best answer:',' How many pens does the man need?',11),(16,'1.num15-16-17','D',NULL,'1.',16,'To write a book','For the office employees','To make a large drawing','To give away at a conference','','Why does he need the pens?',1),(17,'1.num15-16-17','C',NULL,'1.',17,'20.0','40.0','120.0','140.0','','How much will he pay for the pens?',1),(18,'1.num18-19-20','B',NULL,'1.',18,'Its shade is not right for her items','It is not solid enough to use','It is not convenient to apply','It is more expensive than other brands','','According to the woman, what is the problem with the cleaner?',1),(19,'1.num18-19-20','C',NULL,'1.',19,'From an advertisement','From a product catalog ','From some reviews','From her colleague','','How did the woman learn about the item?',1),(20,'1.num18-19-20','D',NULL,'1.',20,'To get the money back ','To change the color','To get a discounted item','To replace the item','','What does the woman say she would prefer?',1),(21,'1.num21-22-23','B',NULL,'1.',21,'To transfer her to another department','To offer her a full-time position','To discuss a future project','To talk about her promotion','','Why is the man meeting with Ronda?',1),(22,'1.num21-22-23','C',NULL,'1.',22,'One week','One month','Three months','Six months','','How long has Ronda been with the company?',1),(23,'1.num21-22-23','A',NULL,'1.',23,'Marketing','Planning','Accounting','Personnel','','In which department does Ronda work?',1),(24,'1.num24-25-26','A',NULL,'1.',24,'To have lunch','To talk to Mr. Wright','To see the general manager','To her office','','Where will the woman go next?',1),(25,'1.num24-25-26','B',NULL,'1.',25,'By lunch','By the end of the day','By tomorrow','By the end of the week','','When will the woman hand in her report?',1),(26,'1.num24-25-26','B',NULL,'1.',26,'Wendy','The general manager','Mr. Wright’s secretary','The receptionist','','Who wants to see the report?',1),(27,'1.num27-28-29','D',NULL,'1.',27,'Personnel','Accounting','Computer','Sales','','In which department will Jason most likely work?',1),(28,'1.num27-28-29','A',NULL,'1.',28,'His job experience','His education background','His work ethic','His confidence','','What impressed the man about Jason?',1),(29,'1.num27-28-29','A',NULL,'1.',29,'A person they have just interviewed','Company sales figures','A guy they both know in the sales department','The feedback they got from a recent survey','','What are the speakers discussing',1),(30,'1.num30-31-32','B',NULL,'1.',30,'To talk to his co-workers ','To buy a new car','To walk to his new job','To move closer to work','','What does the woman recommend?',1),(31,'1.num30-31-32','A',NULL,'1.',31,'The distance ','His co-workers','The work','The pay','','What does the man say he is worried about?',1),(32,'1.num30-31-32','B',NULL,'1.',32,'It is very difficult','His co-workers are friendly','It is very close to his place','He has to drive a lot','','What does the man say about his new job?',1),(33,'1.num33-34-35','D',NULL,'1.',33,'To catch a bus','To a local college','To a client’s office','To pick up someone','','Where are they going?',1),(34,'1.num33-34-35','C',NULL,'1.',34,'In a bus','At a college','In a car','On the highway','',' Where is the conversation taking place?',1),(35,'1.num33-34-35','A',NULL,'1.',35,'The highway is closed','They missed a bus','The road is congested ','They made a wrong turn','','What is the problem?',1),(36,'1.num36-37-38','B',NULL,'1.',36,'One day','One weekend','One week','One month','Listen to the talk. Then read each question and choose the best answer:','According to the speaker, how long will the special offer last?',1),(37,'1.num36-37-38','B',NULL,'1.',37,'100.0','200.0','300.0','400.0','','How much is the special offer?',1),(38,'1.num36-37-38','D',NULL,'1.',38,'People who want to travel overseas','Members who belong to the fitness club','Staff who work for the Travel Lodge Inn','Those who want to get away for the weekend','','Who would be most interested in this advertisement?',1),(39,'1.num39-40-41','A',NULL,'1.',39,'Treat them to a meal','Buy them a giftIntroduce a new project',NULL,'Announce the new manger','',' What does the speaker say she will do for the listeners?',1),(40,'1.num39-40-41','B',NULL,'1.',40,'He will receive a cash reward','His team won the campaign','He just got promoted','He opened up a new restaurant','','Why is the speaker excited?',1),(41,'1.num39-40-41','A',NULL,'1.',41,'A team manager','Sophie','A waiter','A sales representative','',' Who most likely is giving the talk?',1),(42,'1.num42-43-44','B',NULL,'1.',42,'Come into the office','Give him a call','Talk to the sales manager','Fax his resume','','What does the speaker ask Mr. Lee to do?',1),(43,'1.num42-43-44','A',NULL,'1.',43,'To set up an interview','To offer a position at the company','To seek information about a job','To respond to an earlier call','','What is the main purpose of the call?',1),(44,'1.num42-43-44','A',NULL,'1.',44,'Sales manager','Personnel manager','Accounting manager','Computer programming','',' What position did Mr. Lee apply for?',1),(45,'1.num45-46-47','C',NULL,'1.',45,'In five minutes','In fifteen minutes','In thirty minutes','In sixty minutes','','When will the next report air?',1),(46,'1.num45-46-47','A',NULL,'1.',46,'Two','Three','Four','Five','',' How many vehicles are involved in the accident?',1),(47,'1.num45-46-47','A',NULL,'1.',47,'Morning','Midday','Afternoon','Evening','',' In which part of the day is the report being aired?',1),(48,'1.num48-49-50','B',NULL,'1.',48,'1 hour before her appointment','2 hours before her appointment','6 hours before her appointment','24 hours before her appointment','','When is the receiver asked to call if she cannot make it to the dentist office?',1),(49,'1.num48-49-50','A',NULL,'1.',49,' To arrive for her appointment early','To pick up her appointment book','To clean the office by 10 o’clock','To call Helen later today','',' What does the speaker remind Ms. Kim to do?',1),(50,'1.num48-49-50','B',NULL,'1.',50,'Wednesday','Thursday','Friday','Saturday','','When is Mr. Kim’s appointment?',1),(51,'1.','B',NULL,'1.',51,'nearly','immediately','precisely','significantly','Choose the word that best completes the sentence:','Employees who have not yet registered on the new company website must do so ------',2),(52,'1.','C',NULL,'1.',52,'professional','profession','professionals','professionally','','Rosewater Medical Center employs healthcare -------- affiliated with Huron University.',2),(53,'1.','A',NULL,'1.',53,'indicates','commands','notices ','distributes','','Once you have detected a fatal virus on your computer, common sense -------- that you should have your hard drive reformatted by skilled professionals.',2),(54,'1.','C',NULL,'1.',54,'total','absolute','ready','actual','','The webpage for each course must be -------- before the students start their classes on January 7th.',2),(55,'1.','A',NULL,'1.',55,'probably','nearly','useful','safely','','The decline in sales was -------- due to the lack of innovation in the ideas of the marketing team.',2),(56,'1.','A',NULL,'1.',56,'but','however','also','and','','Ms. Fenwick not only composed the report -------- produced the visual aids which were so useful during then meeting.',2),(57,'1.','B',NULL,'1.',57,'detail','details','detailed','detailing','','In a television interview, the Traxton Ltd. CEO said that -------- of the merger with Bell Corporation would be announced soon.',2),(58,'1.','B',NULL,'1.',58,'sustained','held','supported','meet','','All future team meetings will be -------- in room 414 at noon on the first Wednesday of every month.',2),(59,'1.','A',NULL,'1.',59,'highly','high','highest','higher','','Andrew Hartwell is -------- regarded by his employees because of his dedication and experience.',2),(60,'1.','C',NULL,'1.',60,'Both','None','Each','Neither','','…...Mr. Fowler or Ms. Bloch will have to travel to London for the symposium on textile manufacturing.',2),(61,'1.','B',NULL,'1.',61,'bright','brightest','brightens','brightness','','The use of the -------- possible lighting in the laboratory has been beneficial to the research conducted by the botanists employed there.',2),(62,'1.','C',NULL,'1.',62,'on','for','from','in','','Any concerns regarding your natural gas appliances should be directed to the manufacturer-retailer -------- which you purchased the natural gas appliance',2),(63,'1.','C',NULL,'1.',63,'therefore','consequently','otherwise','yet','','Unless specified --------, contractors will be responsible for obtaining all necessary safety certification and permits applicable to their scope of work.',2),(64,'1.','A',NULL,'1.',64,'that','there ','any ','how','','The invoice -------- was received two days ago is inaccurate and a new one must be requested.',2),(65,'1.','B',NULL,'1.',65,'just ','once','such','likely','A long time ago, this part of the town used to be a place where people came to relax and get away from their stress. Although this was a shelter for people to escape, it has nowA long time ago, this part of the town used to be a place where people came to relax and get away from their stress. Although this was (65)........ a shelter for people to escape, it has now\n\nUp until a few years ago, it wasn\'t as bad as it is now. Although it is true that some people in the neighborhood supported the expansion of the market a few years ago, now most of them (66)........\n\nthat it has gotten out of control and created many serious problems for the area (67)........, it might have already gotten too far out of control. What we really need right now is not a\n\nmere intervention by civilians but strong action from the mayor\'s office.','Choose the word or phrase that best completes the blanks:',2),(66,'1.','B',NULL,'1.',66,'would have agreed','would agree','has agree',' were agreeing','','',2),(67,'1.','A',NULL,'1.',67,'In fact','In spite of','On the other hand','Even though','','',2),(68,'1.','B',NULL,'1.',68,'magnified','enhanced','selected','select','AirVoyage’s spokesperson Bob Lohman announced this morning that a short-term (68)........ of the company’s online reservation system was responsible for several delays yesterday.\n\nInternational air traffic was stalled as AirVoyage found alternate means of updating its customers with current flight information. Lohman stated that the network problem (69)........ by outages at the local communication company.\n\nLohman added that staff members have made significant changes to the reservation system, and the (70)........ system will increase customer satisfaction. In addition, AirVoyage has increased its telephone reservation system staff to boost customer support for last-minute reservations.','',2),(69,'1.','D',NULL,'1.',69,'is caused','has been caused','will be caused','was caused','','',2),(70,'1.','A',NULL,'1.',70,'failure','arrival','complaint','report','','',2),(71,'1.','A',NULL,'1.',71,'collect','correct','use','talk','To: All staff\nFrom: Daniel Barker\nDate: August 29\nSubject: Recycling\n\nI would like to advise all staff members that new policies will be going into effect office-wide regarding the consumption of paper. An environmentally-based company such as ours needs to be a leader in the use of disposable products. In order to conserve both finances and the environment, we will be considering our use of paper.\n\nOur Finance Department has advised me that we are spending $40,000 annually on copy paper. (71)........\n\nWe will be increasing company awareness of recycling in the coming months; please check your mailboxes soon for a list of paper products that can be recycled. When you throw away these products, make sure to use the correct bins. Our building maintenance staff will (72)........ the recycled paper products each evening and transport them to the local recycling facilities.\nI would like to thank you in advance for taking advantage of this new program.\n\nThank you,\nDaniel Barker','',2),(72,'1.','C',NULL,'1.',72,'environmentalist','environment','environmentally','environmental','','',2),(73,'1.','D',NULL,'1.',73,'In spite of','Due to ','In regard to','In fact','','',2),(74,'1.','B',NULL,'1.',74,'It specializes in computer software.','It distributes office supplies.','It repairs electronic devices.','It gives financial advice.','NanoMac Inc.\nFinance Department\nOffice #402\n26 Mountain Dr.\nSharonville, SC\n\nBrooks Brothers Marketing\n356 Brewster Rd.\nApplewood, TN\nAtt\'n: Paul O\'Reilly\n\nINVOICE FOR:\n1 desktop computer $590.75\n1laser jet printer $195.95\nNanoMac Inc.\n2 cartons glossy 8 x 11 inch copy paper $54.25\n100 blue Shic pens $103.96\n\nGST (Goods and Services Tax) $62.03\nTOTAL PAYABLE: $1006.94\nCustomer Registration No. 878-96854-632\nInvoice No. 856\nDate of Invoice: July 15, 2007\n\nTo be paid within 30 days of invoice date. Should customers fail to pay within 30 days, a charge of $50 will be added to the account each month that payment is overdue.\nNote: NanoMac Inc. is trying to improve its customer service. Since your company has been a loyal customer of ours, we invite you to fill out an online survey to assess our customer service. Fill out the survey at www.nanomac.com and you can enter to win a $500 coupon.\nIf you have any questions about the invoice, please contact our department by e-mail or phone.\n\n************\n\nTo: Michael Shoe \nFrom: Paul O\'Reilly \nSubject: Surcharge\nDate: September 25, 2007\n\nHi Michael,\n\nI recently received an invoice for the products we purchased from your company in July. I noticed that we were charged an additional $100 dollars because our payment was two months overdue. I would like to explain why we failed to make these payments, and hope that you will reverse the charges immediately.\nAt the end of July, our department underwent restructuring and Brian Davies, our Finance Manager, was asked to leave. Unfortunately, in the process of changing managers a few files were misplaced, including the one containing all of our office supplies invoices. I hope you will accept my request so that we continue doing business with your company in the future.\n\nSincerely,\nPaul O\'Reilly','What kind of service does NanoMac Technology provide?',2),(75,'1.','C',NULL,'1.',75,'It has several offices in Sharonville.','It is an electronics store.','It constantly works with NanoMac.','It is a start-up company.','','Which of the following is TRUE about Brooks Brothers Marketing?',2),(76,'1.','D',NULL,'1.',76,'To improve the volume of the order','To ask about an upcoming sale','To request an address change','To respond to a service charge','','What is the purpose of the e-mail?',2),(77,'1.','D',NULL,'1.',77,'To improve the volume of the order','To ask about an upcoming sale','To request an address change','To respond to a service charge','','What is the purpose of the e-mail?',2),(78,'1.','B',NULL,'1.',78,'It merged with another marketing company.','The management structure was changed.','A new marketing strategy was introduced.','It relocated its headquarters to a different place.','','What happened at Brooks Brothers Marketing in July?',2),(79,'1.','D',NULL,'1.',79,'A meeting agenda','A printing schedule','A contract document ','Photographs of furniture','Passage 1:\n\nTo: Ken Perez <kperez@megasupply.com>\nFrom: Emma Appleby <eappleby@megasupply.com>\nDate: July 2\nSubject: Fall Catalog Review\n \nHi Ken,\nPlease find attached sample pages from the fall catalog which will be released at the end of August. Please review them and give me your comments. Mr. Benson and I agreed that the pages with dining room furniture should be redone because the colors are not right. Let me know what you think.\n\nWe don’t have much time because we have to complete the catalog, send it for printing by July 30, and release it by the end of August. So please send me your comments as soon as possible. After I incorporate all the comments, I will obtain the management’s approval on the revised document and send it to ABC Printing.\n\nEmma\n *************\nPassage 2:\n\nTo: Emma Appleby <eappleby@megasupply.com>\nFrom: Ken Perez <kperez@megasupply.com>\nDate: July 3\nSubject: RE: Fall Catalog review\n \nEmma,\n\nMy e-mail system was down yesterday, and I did not have access to my messages until this morning. That’s why I was not able to address your concerns earlier.\n\nNow I can open your e-mail, but for some reason I cannot open the attachments. I can’t figure out what is wrong.\n\nCould you send me the attachment again? I have a marketing this afternoon at three, but will have some time to go over the pictures before that. I’ll try to send you my comments by the close of business today.\n\nKen',' What is the attachment referred to by Mr. Perez?',2),(80,'1.','A',NULL,'1.',80,'worries','suggestions','requests','involvements','','In the second e-mail, the word “concerns” in paragraph 1, line 2 is closest in meaning to',2),(81,'1.','C',NULL,'1.',81,'To invite her to a meeting','To give his comments on the catalog','To request her to resend the document','To ask about the printing deadline','','Why did Mr. Perez send Ms. Appleby an e-mail?',2),(82,'1.','C',NULL,'1.',82,'1.July','20.July','30.July','30.August','',' By when should the document be sent to ABC Printing?',2),(83,'1.','B',NULL,'1.',83,'To send her a notice regarding a marketing meeting','To review sample pages of a catalog','To put her photo in the new catalog','To fix her computer','',' What did Ms. Appleby request Mr. Perez to do?',2),(84,'1.','B',NULL,'1.',84,'influential','inexpensive ','kind','popular','Passage 1:\n\nTHEARTSTORE.COM\nAll-inclusive art resource for artists, students and lovers of exceptional design!\nYour source for Art Supplies, Painting Supplies, Craft Supplies, Drafting Supplies, Architecture Supplies, Digital Printing and Much More!\n\n* Weekend special! (Limited time offer while quantities last)\nReeves Ease! Painting Set – Watercolor, $25.99 - $16.99\nDecoColor Paint Markers – Assorted colors, $2.79 and up\nArt Alternatives Economy Sketchbooks (8.5’’x11’’), $9.65\n\nBuy a Coleman Watercolor Field Box Set and receive a six-color watercolor set free! (Regular price $60, Sale price $48) The Coleman Watercolor Field Box Set contains twelve Coleman half pans of moist watercolors, Sceptre pocket brush, artist sponge, water pot, white integral palette and thumb ring.\nFor consultation or questions, contact our customer service representatives at inquiry@thearstore.com.\n ************\nPassage 2:\n\nArt World\nInternational contemporary art and style magazine\nBaltimore’s best art supply store\nWhether you are a student, a hobbyist, or a serious artist, The Art Store has the best range of supplies at the consistently lowest price. If you need high-quality paper, paint, brushes, canvas, or more, The Art Store is the place to go. It is a national chain and carries its own brands of supplies, along with other brands. Since there is no middleman, The Art Store brand products are very affordable and high quality.\nAlso, there are always specials and sales on different items. Customers can sign up to get coupons and specials in the mail. The Art Store also has a preferred customer card that helps with getting the best price.\nThis weekend, The Art Store offers special discounts for watercolor paints, paint markers and sketchbooks. If you need to purchase back-to-school supplies for your child, you do not want to miss this opportunity to save. They also provide free USP ground shipping on orders over $100, although some supplies may take up to four weeks to arrive. For more details, check out their website, www.theartstore.com.','In the review, the word “affordable” in paragraph 1, line 5 is closest in meaning to',2),(85,'1.','C',NULL,'1.',85,'Convenient international shipping ','Excellent customer service','Low prices','Friendly staff and nice interior design','',' Why did the review choose The Art Store as the best art supply store?',2),(86,'1.','C',NULL,'1.',86,'Palette ','Sponge','Sketchbook','Watercolors','','Which of the following is not included in the Coleman Watercolor Field Box Set?',2),(87,'1.','A',NULL,'1.',87,'It has a good reputation as an art supply provider','It has recently moved to Baltimore.','It has recently moved to Baltimore.','It offers special sales through the website monthly','','What can be inferred about The Art Store?',2),(88,'1.','B',NULL,'1.',88,'Two sketchbooks for the price of one','A gift with the purchase of a watercolor set.','50% discount on shipping for all purchases','A free coupon with the purchase of an easel','','What is offered as a special discount item?',2),(89,'1.','D',NULL,'1.',89,'In Egypt','In Saudi Arabia','In Iran','In Qatar','Arabian Business Weekly\nOctober 8\n\nEli Finance Awarded the Best Financial Services Company in the UAE\n\nEli Finance, the largest real estate financier in the Middle East by market value and total assets, today proudly announced that it received the award for the “Best Financial Services Company in the UAE” during the 2008 Liquid Real Estate Awards ceremony organized by Euromoney. Euromoney Liquid Real Estate Awards honor the world’s leading institutions for their ability to innovate and develop new products and services to meet the market’s demand in today’s increasingly challenging financial environment, as well as make the most efficient use of the inherent strengths within their organization. Speaking on the occasion, Mr. Ismael Alharmi, Chief Executive Officer of Eli Finance said, “We are honored to receive this prestigious award and I would like to thank our staff at Eli for their efforts. This award will leverage our position as the largest real estate financier in the region”. Eli won this award from a highly competitive list of contenders for its excellent performance and business expansion over the last ten months. Its half yearly net profit saw an increase of 155 percent and total assets, as of June 2008, stood at an astounding AED14.2bn, a growth of 133% compared to AED6.1bn as of June 2007. Eli has also set its global footprint in various international markets such as Egypt and Saudi Arabia, and plans to commence operations in Jordan and Qatar.','Where does Eli Finance plan to begin operations?',2),(90,'1.','C',NULL,'1.',90,'It has overtaken its rival company Euromoney','Its main office will relocate to the Middle East region','It received the award because of excellent business performance.','It was disappointed with the award given by Euromoney','','What seem to be true about Eli Finance?',2),(91,'1.','B',NULL,'1.',91,'An investigation is being conducted for a financial company’s fraud scandal.','A firm has been recognized for its remarkable growth.','UAE firms are gaining more influence in the international market.','Eli Finance announces the appointment of a new CEO','',' What is the main point of this article?',2),(92,'1.','C',NULL,'1.',92,'Change the departure date from New York','Stop over in Amsterdam','Transfer in Barcelon','Upgrade his flight class','From: Rachel\nTo: Sophie\n\nAs per our telephone conversation yesterday, I’m sending you the schedule for Mr. John Lehman’s business trip. I would appreciate it if you could book the flights and hotels based on this itinerary. Since he has several meetings scheduled in each city he visits in Europe, please note that Mr. Lehman must take early flights for all of his departures except for the New York to Berlin flight. He has an important lunch reception in New York on May 10th, so the earliest time he can depart is 3 p.m.\n\nMay 10: New York to Berlin\nMay 13: Berlin to Barcelona\nMay 15: Barcelona to Madrid\nMay 17: Madrid to Firenze\nMay 20: Fienze to New York\n\nBased on the information you have given me, I informed Mr. Lehman that there is no direct flight from Firenze to New York that fits his schedule. Therefore, please make sure that he has at least three hours to transfer so as not to miss his connecting flight due to any possible delays. Also, Mr. Lehman would like to change planes in Barcelona, if possible.\n\nIf you have questions or concerns, please let me know right away. Thank you for your assistance.','What does Mr. Lehman want to do?',2),(93,'1.','A',NULL,'1.',93,'10.May','13.May','15.May','16.May','',' When does Mr. Lehman have to leave in the afternoon?',2),(94,'1.','C',NULL,'1.',94,'Books','Audio materials','Newspapers','Movies','Richview District Library\n\nNew Address\n1806 Islington Avenue\nRichview District\n(Next to Islington Junior High)\n\nHours\nMonday-Thursday      9:00 a.m.-8:30 p.m.\nFriday                          9:00 a.m.-6:00 p.m.\nSaturday                      9:00 a.m.-5:00 p.m.\nSunday                        1:30 p.m.-5:00 p.m. (Sep. to Jun.)\n(Closed on holidays)\n\nLoan period: Books and audio materials – 3 weeks; Movies – 1 week\n                      (One time renewal is allowed by e-mail)\n\nOverdue fines (per day per item): Books - $0.50; Audio materials and movies - $1.00\nNewspapers, reference materials, microfilm- For use in library only\n\nThe library carries a wide selection of books including current bestsellers for both fiction and nonfiction. There are also many audio books available in CD format. Movies are available in both DVD and VHS format.\n\nIf you have questions or suggestions regarding Circulation, Reserve, Shelving, or other Loan Services functions contact Jennifer Edwins, Loan Service Manager, by e-mail (jedwins@richview.net) or by phone at (507) 222-4259.','What is NOT allowed to be taken out of the library?',2),(95,'1.','C',NULL,'1.',95,'1:30 p.m.','5:00 p.m.','6:00 p.m.','8:30 p.m.','','What time is the library open till on Friday?',2),(96,'1.','A',NULL,'1.',96,'It serves certain types of customers only','It opens on weekends during certain months.','Its address has changed recently.','It is located next to a school','','What is NOT mentioned about the library in the notice?',2),(97,'1.','D',NULL,'1.',97,'It will soon provide train service to Everett','It provides free parking for monthly pass holders.','It provides free schedules for the ferry service.','Its business centers is only minutes from the ferry terminal','Exciting and Relaxing Waterborne Travel Option\nBlue Bridge Ferries – Relax and enjoy the scenery!\n \nForget about annoying and crowded traffic! Take a ferry ride across the Bay of Fundy in comfort, style, and with time to spare! Our high-speed Blue Bridge ferries provide a quick and convenient ride between Everett and Fundy Bay City, offering a great host of amenities including reserved seating, fax machine, and television. Friendly captains and crew will make your ride more enjoyable. With hourly departures, our ferries will take you to Fundy Bay terminal, only five minutes from the Fundy Bay City business district, in just 45 minutes. Monthly passes are available at $100. Parking is available in an adjacent parking lot with affordable rates ($5.00 per day, $3.00 on weekends, $75.00 for a monthly pass). It is a great way to start and finish your day! For more information on fares and ferry schedules, visit our website at www.bbferries.com, or call us at (555) 512-3342.','What seems to be true about Fundy Bay City?',2),(98,'1.','B',NULL,'1.',98,'Ferry employees','Commuters to Fundy Bay City','Travel agents ','Blue Bridge shareholders','','Who are the intended readers of this advertisement?',2),(99,'1.','D',NULL,'1.',99,'A room charge','A telephone fee ','A room service charge','A dinner at the hotel restaurant','Guest Name: Helen County\nReservation number: AX 1402652\nRoom: 333\nArrival: December 3    13:23\nDeparture: December 9\n \n\n \n\nDate Description Charge\nDec 3~9 Room Charge 840.00\nDec 3 Room Service 14.00\nDec 4 1900 Bar 20.00\nDec 6 Telephone call 10.00\nDec 7 Dinner: 1900 Bar & Grill 32.00*\nDec 7 Dry cleaning 5.00\nDec 8 Room Service 18.00\nDec 9 Shuttle Service 15.00\n                                                                                                Total: $954.00\n* 10% discount applied\nGuest signature: Helen County\nHotel manager: Jeff Benson',' To which item was the discount applied?',2),(100,'1.','D',NULL,'1.',100,'3.Dec','5.Dec','7.Dec','9.Dec','','When was Ms. County’s check-out date?',2);
/*!40000 ALTER TABLE `cau_hoi_bai_thi_thu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_grammar`
--

DROP TABLE IF EXISTS `comment_grammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_grammar` (
  `cmtgrammarid` int NOT NULL AUTO_INCREMENT,
  `cmtgrammarcontent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `baigrammarid` int NOT NULL,
  `id` bigint NOT NULL,
  PRIMARY KEY (`cmtgrammarid`),
  KEY `FKoqdhw1u7geuy8x02fteb4j8pg` (`baigrammarid`),
  KEY `FKfemqtykw679muo86sadwe7ec3` (`id`),
  CONSTRAINT `FKfemqtykw679muo86sadwe7ec3` FOREIGN KEY (`id`) REFERENCES `nguoi_dung` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKoqdhw1u7geuy8x02fteb4j8pg` FOREIGN KEY (`baigrammarid`) REFERENCES `bai_grammar` (`baigrammarid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_grammar`
--

LOCK TABLES `comment_grammar` WRITE;
/*!40000 ALTER TABLE `comment_grammar` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_grammar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_tu_vung`
--

DROP TABLE IF EXISTS `comment_tu_vung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_tu_vung` (
  `cmtvocabularyid` int NOT NULL AUTO_INCREMENT,
  `cmtvocabularycontent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `baitaptuvungid` int NOT NULL,
  `id` bigint NOT NULL,
  PRIMARY KEY (`cmtvocabularyid`),
  KEY `FKc318s9a1ynvshxfjj7rj14s7y` (`baitaptuvungid`),
  KEY `FK8tmjurh2c9w97cqvlim336wxa` (`id`),
  CONSTRAINT `FK8tmjurh2c9w97cqvlim336wxa` FOREIGN KEY (`id`) REFERENCES `nguoi_dung` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKc318s9a1ynvshxfjj7rj14s7y` FOREIGN KEY (`baitaptuvungid`) REFERENCES `bai_tap_tu_vung` (`baitaptuvungid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_tu_vung`
--

LOCK TABLES `comment_tu_vung` WRITE;
/*!40000 ALTER TABLE `comment_tu_vung` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_tu_vung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ket_qua`
--

DROP TABLE IF EXISTS `ket_qua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ket_qua` (
  `ketquaid` int NOT NULL AUTO_INCREMENT,
  `correctlisten` int DEFAULT NULL,
  `correctread` int DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `socaudung` int DEFAULT NULL,
  `socausai` int DEFAULT NULL,
  `baithithuid` int NOT NULL,
  `nguoidungid` bigint NOT NULL,
  PRIMARY KEY (`ketquaid`),
  KEY `FK7tu3h8lgrgirbano5u7khf8l7` (`baithithuid`),
  KEY `FKeiiibwj68arv48msgk6n2jky4` (`nguoidungid`),
  CONSTRAINT `FK7tu3h8lgrgirbano5u7khf8l7` FOREIGN KEY (`baithithuid`) REFERENCES `bai_thi_thu` (`baithithuid`) ON DELETE CASCADE,
  CONSTRAINT `FKeiiibwj68arv48msgk6n2jky4` FOREIGN KEY (`nguoidungid`) REFERENCES `nguoi_dung` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ket_qua`
--

LOCK TABLES `ket_qua` WRITE;
/*!40000 ALTER TABLE `ket_qua` DISABLE KEYS */;
INSERT INTO `ket_qua` VALUES (1,1,0,'2022-06-06 15:45:03',1,99,1,2),(2,0,0,'2022-06-06 17:09:01',0,100,1,2),(3,0,0,'2022-07-04 22:16:29',0,100,1,2),(4,0,0,'2022-07-09 08:40:49',0,100,1,2);
/*!40000 ALTER TABLE `ket_qua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_dung` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vai_tro` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES (1,'HN','admin@gmail.com','Admin','$2a$10$BChYExDZFbJjtl3Df4JRG.CPdfKk0BnJuHiXYSKzrzesxBGd7KLb6','123456789',2),(2,NULL,'member@gmail.com','Người dùng','$2a$10$BChYExDZFbJjtl3Df4JRG.CPdfKk0BnJuHiXYSKzrzesxBGd7KLb6','123456789',1),(3,'HN','nguyenvietdonge@gmail.com','Đồng','$2a$10$BChYExDZFbJjtl3Df4JRG.CPdfKk0BnJuHiXYSKzrzesxBGd7KLb6','01234556789',1);
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noi_dung_bai_tu_vung`
--

DROP TABLE IF EXISTS `noi_dung_bai_tu_vung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noi_dung_bai_tu_vung` (
  `noidungbaituvungid` int NOT NULL AUTO_INCREMENT,
  `audiomp3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meaning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `sentence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transcribe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baitaptuvungid` int NOT NULL,
  PRIMARY KEY (`noidungbaituvungid`),
  KEY `FK3xu0kv4p43fi7qa9mmj9em9oc` (`baitaptuvungid`),
  CONSTRAINT `FK3xu0kv4p43fi7qa9mmj9em9oc` FOREIGN KEY (`baitaptuvungid`) REFERENCES `bai_tap_tu_vung` (`baitaptuvungid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noi_dung_bai_tu_vung`
--

LOCK TABLES `noi_dung_bai_tu_vung` WRITE;
/*!40000 ALTER TABLE `noi_dung_bai_tu_vung` DISABLE KEYS */;
/*!40000 ALTER TABLE `noi_dung_bai_tu_vung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slidebanner`
--

DROP TABLE IF EXISTS `slidebanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slidebanner` (
  `slidebannerid` int NOT NULL AUTO_INCREMENT,
  `slidecontent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideimage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slidename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`slidebannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slidebanner`
--

LOCK TABLES `slidebanner` WRITE;
/*!40000 ALTER TABLE `slidebanner` DISABLE KEYS */;
/*!40000 ALTER TABLE `slidebanner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-12 18:04:17
