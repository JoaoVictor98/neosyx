/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Itenspedido` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valoritem` double DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `Itenspedido_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datarealizado` date DEFAULT NULL,
  `valoredido` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Statuspedido` (
  `id` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `Statuspedido_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tipopagamento` (
  `id` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `Tipopagamento_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
SELECT * FROM `Pedido`;
