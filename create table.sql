CREATE TABLE `projeto_atividade` (
  `CD_PROJ` char(6) NOT NULL,
  `CD_ATIV` int(3) NOT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIM` date DEFAULT NULL,
  PRIMARY KEY (`CD_PROJ`,`CD_ATIV`),
  KEY `CD_ATIV` (`CD_ATIV`),
  CONSTRAINT `projeto_atividade_ibfk_1` FOREIGN KEY (`CD_PROJ`) REFERENCES `proj` (`CD_PROJ`),
  CONSTRAINT `projeto_atividade_ibfk_2` FOREIGN KEY (`CD_ATIV`) REFERENCES `ativ` (`CD_ATIV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `hst_promo` (
  `CD_MAT` int(5) DEFAULT NULL,
  `CD_DEPTO` char(3) DEFAULT NULL,
  `DT_PROMOCAO` date DEFAULT NULL,
  `VL_SAL` decimal(9,2) DEFAULT NULL,
  `NR_CARGO` int(3) DEFAULT NULL,
  `TX_MOTIVO` varchar(200) DEFAULT NULL,
  KEY `CD_MAT` (`CD_MAT`),
  KEY `CD_DEPTO` (`CD_DEPTO`),
  CONSTRAINT `hst_promo_ibfk_1` FOREIGN KEY (`CD_MAT`) REFERENCES `func` (`CD_MAT`),
  CONSTRAINT `hst_promo_ibfk_2` FOREIGN KEY (`CD_DEPTO`) REFERENCES `depto` (`CD_DEPTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `proj` (
  `CD_PROJ` char(6) NOT NULL,
  `NM_PROJ` varchar(30) DEFAULT NULL,
  `CD_DEPTO` char(3) DEFAULT NULL,
  `QT_EQP` int(11) DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIM` date DEFAULT NULL,
  PRIMARY KEY (`CD_PROJ`),
  KEY `CD_DEPTO` (`CD_DEPTO`),
  CONSTRAINT `proj_ibfk_1` FOREIGN KEY (`CD_DEPTO`) REFERENCES `depto` (`CD_DEPTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `func` (
  `CD_MAT` int(5) NOT NULL,
  `NM_FUNC` varchar(12) DEFAULT NULL,
  `NM_SOBRENOME` varchar(12) DEFAULT NULL,
  `CD_DEPTO` char(3) DEFAULT NULL,
  `NR_RAMAL` int(4) DEFAULT NULL,
  `DT_ADM` date DEFAULT NULL,
  `NR_CARGO` int(3) DEFAULT NULL,
  `NR_RG` int(2) DEFAULT NULL,
  `IN_SEXO` char(1) DEFAULT NULL,
  `DT_NASC` date DEFAULT NULL,
  `VL_SAL` decimal(9,2) DEFAULT NULL,
  `NM_FOTO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CD_MAT`),
  KEY `CD_DEPTO` (`CD_DEPTO`),
  CONSTRAINT `func_ibfk_1` FOREIGN KEY (`CD_DEPTO`) REFERENCES `depto` (`CD_DEPTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `depto` (
  `CD_DEPTO` char(3) NOT NULL,
  `NM_DEPTO` varchar(40) DEFAULT NULL,
  `CD_GERENTE` int(11) DEFAULT NULL,
  `CD_DEPTO_CTB` char(3) DEFAULT NULL,
  PRIMARY KEY (`CD_DEPTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `ativ` (
  `CD_ATIV` int(3) NOT NULL,
  `NM_SIGLA` varchar(12) DEFAULT NULL,
  `TX_DESCRICAO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CD_ATIV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1