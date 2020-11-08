--
-- Base de données :  ebm_ars_entree
--

CREATE TABLE ebm_ecran (
  pk_ecran		int(10)		NOT NULL AUTO_INCREMENT,
  libelle		varchar(20) NOT NULL,
  fk_grille		int(10) NOT NULL,
  PRIMARY KEY (pk_ecran),
  KEY fk_grille (fk_grille)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ebm_grille (
  pk_grille 		int(10) NOT NULL,
  libelle varchar(50) NOT NULL,
  PRIMARY KEY (pk_grille)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ebm_item (
  pk_item 		int(10) NOT NULL AUTO_INCREMENT,
  fk_parent 	int(10) NOT NULL,
  fk_ecran 		int(10) NOT NULL,
  ordre 		int(5) NOT NULL,
  type			varchar(30) NOT NULL,
  libelle varchar(50) NOT NULL,
  champ_exporte varchar(50) NOT NULL,
  PRIMARY KEY (pk_item),
  KEY fk_ecran (fk_ecran)
) ENGINE=InnoDB AUTO_INCREMENT=7726 DEFAULT CHARSET=utf8;

CREATE TABLE ebm_item_detail (
  pk_item_detail 		int(10) NOT NULL AUTO_INCREMENT,
  fk_item 				int(10) NOT NULL,
  valeur_liste 			int(10) NOT NULL,
  libelle				varchar(100) NOT NULL,
  PRIMARY KEY (pk_item_detail),
  KEY fk_item (fk_item)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8;

CREATE TABLE ebm_saisie (
  pk_saisie int(10) NOT NULL AUTO_INCREMENT,
  Numid int(10) NOT NULL,
  interven int(10) NOT NULL,
  dateheure datetime NOT NULL,
  fk_grille int(10) NOT NULL,
  date_releve date NOT NULL,
  PRIMARY KEY (pk_saisie),
  KEY fk_grille (fk_grille)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ebm_valeurs (
  pk_valeur int(10) NOT NULL AUTO_INCREMENT,
  fk_saisie int(10) NOT NULL,
  fk_grille int(10) NOT NULL,
  fk_item int(10) NOT NULL,
  valeur varchar(100) DEFAULT NULL,
  valeur1 varchar(100) DEFAULT NULL,
  valeur2 varchar(50) DEFAULT NULL,
  valeur3 varchar(50) DEFAULT NULL,
  valeur4 varchar(50) DEFAULT NULL,
  PRIMARY KEY (pk_valeur),
  KEY fk_saisie (fk_saisie),
  KEY fk_grille (fk_grille),
  KEY fk_item (fk_item)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
