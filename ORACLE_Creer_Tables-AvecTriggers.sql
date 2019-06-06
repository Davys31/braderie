/******************************************************************************* 
                                SUPPRESSION DES TABLES
*******************************************************************************/

DROP TABLE "T_ARTICLE" CASCADE CONSTRAINTS;
DROP TABLE "T_COMMANDE" CASCADE CONSTRAINTS;
DROP TABLE "T_LOT" CASCADE CONSTRAINTS;
DROP TABLE "T_USER" CASCADE CONSTRAINTS;

/******************************************************************************* 
                                CREATION DES SEQUENCES
*******************************************************************************/

/* CREATION DE LA SEQUENCE POUR TABLE T_USER */
DROP SEQUENCE SEQ_USER;
CREATE SEQUENCE SEQ_USER INCREMENT BY 1 START WITH 1;

/* CREATION DE LA SEQUENCE POUR TABLE T_ARTICLE */
DROP SEQUENCE SEQ_ARTICLE;
CREATE SEQUENCE SEQ_ARTICLE INCREMENT BY 1 START WITH 1;

/* CREATION DE LA SEQUENCE POUR TABLE T_LOT */
DROP SEQUENCE SEQ_LOT;
CREATE SEQUENCE SEQ_LOT INCREMENT BY 1 START WITH 1;

/* CREATION DE LA SEQUENCE POUR TABLE T_COMMANDE */
DROP SEQUENCE SEQ_COMMANDE;
CREATE SEQUENCE SEQ_COMMANDE INCREMENT BY 1 START WITH 1;

/******************************************************************************* 
                                CREATION DES TABLES
*******************************************************************************/
CREATE TABLE "T_ARTICLE" 
(	"IDARTICLE" NUMBER(12) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(25 BYTE) NOT NULL ENABLE, 
	"MARQUE" VARCHAR2(25 BYTE) NOT NULL ENABLE, 
	"PRIXUNITAIRE" NUMBER(5,2) NOT NULL ENABLE, 
	 CONSTRAINT "PK_CT_TARTICLE" PRIMARY KEY ("IDARTICLE")
);

CREATE TABLE "T_COMMANDE" 
(	"IDCOMMANDE" NUMBER(12) NOT NULL ENABLE, 
	"IDUSER" NUMBER(12) NOT NULL ENABLE, 
    "IDARTICLE" NUMBER(12) NOT NULL ENABLE, 
    "NUMCOMMANDE" NUMBER(12) NOT NULL ENABLE,
	 CONSTRAINT "PK_TCOMMANDE" PRIMARY KEY ("IDCOMMANDE")
);

CREATE TABLE "T_LOT" 
(	"IDLOT" NUMBER(12) NOT NULL ENABLE, 
    "IDARTICLE" NUMBER(12) NOT NULL ENABLE,
    "NOMLOT" VARCHAR2(25 BYTE) NOT NULL ENABLE, 
	"QUANTITE" NUMBER(12) NOT NULL ENABLE, 
	 CONSTRAINT "PK_TLOT" PRIMARY KEY ("IDLOT")
);

CREATE TABLE "T_USER" 
(	"IDUSER" NUMBER(12) NOT NULL ENABLE, 
	"LOGIN" VARCHAR2(25 BYTE) NOT NULL ENABLE, 
    "PASS" VARCHAR2(25 BYTE) NOT NULL ENABLE,
    "NBCONNEXION" NUMBER(12) DEFAULT 0, 
	 CONSTRAINT "PK_TUSER" PRIMARY KEY ("IDUSER")
);

/******************************************************************************* 
                                CREATION DES TRIGGERS
*******************************************************************************/

-- Trigger permettant d'insérer automatiquement la 
-- clé primaire sur une requête insert 
-- Trigger de type BEFORE qui utilise la séquence SEQ_USER
CREATE OR REPLACE trigger TR_USER
  -- Vous devez utiliser BEFORE car il y a une modification de new.IDUSER
  -- Pas possible de modifier new.IDUSER avec AFTER
	BEFORE INSERT ON T_USER
	FOR EACH ROW
	BEGIN
    -- Affecter à IDUSER (clé primaire) la prochaine valeur de la séquence
    -- SEQ_USER
		SELECT SEQ_USER.nextval INTO :new.IDUSER 
		FROM dual;
END;
/

CREATE OR REPLACE trigger TR_ARTICLE
	BEFORE INSERT ON T_ARTICLE
	FOR EACH ROW
	BEGIN
		SELECT SEQ_ARTICLE.nextval INTO :new.IDARTICLE 
		FROM dual;
END;
/

CREATE OR REPLACE trigger TR_LOT
	BEFORE INSERT ON T_LOT
	FOR EACH ROW
	BEGIN
		SELECT SEQ_LOT.nextval INTO :new.IDLOT 
		FROM dual;
END;
/

CREATE OR REPLACE trigger TR_COMMANDE
	BEFORE INSERT ON T_COMMANDE
	FOR EACH ROW
	BEGIN
		SELECT SEQ_COMMANDE.nextval INTO :new.IDCOMMANDE 
		FROM dual;
END;
/

/******************************************************************************* 
                               CREATION DES PROCEDURES
*******************************************************************************/

CREATE or REPLACE PROCEDURE SelectUser (v_iduser NUMBER)
IS
 v_user t_user%ROWTYPE;
BEGIN
  SELECT * INTO v_user FROM T_USER WHERE IDUSER = v_iduser;
END;
/

CREATE or REPLACE PROCEDURE SelectArticle (v_idarticle NUMBER)
IS
 v_article T_ARTICLE%ROWTYPE;
BEGIN
  SELECT * INTO v_article FROM T_ARTICLE WHERE IDARTICLE = v_idarticle;
END;
/

CREATE or REPLACE FUNCTION IsValidLogon (p_login VARCHAR2 , p_motdepasse VARCHAR2)
RETURN NUMBER
IS
	iduser NUMBER;	
BEGIN
	SELECT IDUSER into iduser FROM T_USER WHERE Login=p_login AND Pass=p_motdepasse;
  RETURN iduser;
EXCEPTION
WHEN NO_DATA_FOUND THEN
  return -1;
END;
/

/******************************************************************************* 
                               INSERTION DES DONNEES
*******************************************************************************/ 
  
INSERT INTO T_USER (LOGIN,PASS,NBCONNEXION) VALUES ('Marleyb', 'marleyb123', 0);
INSERT INTO T_USER (LOGIN,PASS,NBCONNEXION) VALUES ('Charliep', 'charliep123', 0);
INSERT INTO T_USER (LOGIN,PASS,NBCONNEXION) VALUES ('Milesd', 'milesd123', 0);
INSERT INTO T_USER (LOGIN,PASS,NBCONNEXION) VALUES ('Keithj', 'keithj123', 0);
    
INSERT INTO T_ARTICLE (DESCRIPTION, MARQUE, PRIXUNITAIRE) VALUES ('Bonbon', 'Haribo', 0.2);
INSERT INTO T_ARTICLE (DESCRIPTION, MARQUE, PRIXUNITAIRE) VALUES ('Stylo Bleu', 'Bic', 1);
INSERT INTO T_ARTICLE (DESCRIPTION, MARQUE, PRIXUNITAIRE) VALUES ('Ramette 80 grs', 'ClaireFontaine', 5);
INSERT INTO T_ARTICLE (DESCRIPTION, MARQUE, PRIXUNITAIRE) VALUES ('Equerre', 'Castorama', 2);
INSERT INTO T_ARTICLE (DESCRIPTION, MARQUE, PRIXUNITAIRE) VALUES ('Montre', 'Rolex', 200);
INSERT INTO T_ARTICLE (DESCRIPTION, MARQUE, PRIXUNITAIRE) VALUES ('Velo', 'Decathlon', 190);
INSERT INTO T_ARTICLE (DESCRIPTION, MARQUE, PRIXUNITAIRE) VALUES ('Rameur', 'Decathlon', 290);

INSERT INTO T_LOT (IDARTICLE, NOMLOT, QUANTITE) VALUES (1, 'Lot de paquets de bonbons', 10);
INSERT INTO T_LOT (IDARTICLE, NOMLOT, QUANTITE) VALUES (2, 'Lot de stylos bleus', 15);