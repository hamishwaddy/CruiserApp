-- ************* CREATE DATABASE *************
-- CREATE DATABASE cruiserapp;
USE containerdb;

-- ************* CREATE TABLES *************
CREATE TABLE tbl_media (
    MEDIAID INT(10) NOT NULL AUTO_INCREMENT,
    MEDIAPATH VARCHAR(5000),
    PRIMARY KEY (MEDIAID)
) AUTO_INCREMENT=1;

CREATE TABLE tbl_page (
    PAGEID INT(5) NOT NULL AUTO_INCREMENT,
    PAGENAME VARCHAR(60) NOT NULL,
    HEADINGDESCRIPTION VARCHAR(100) NOT NULL,
    TEXTDESCRIPTION VARCHAR(5000) NOT NULL,
    MEDIAID INT(10),
    PRIMARY KEY (PAGEID)
) AUTO_INCREMENT=1;

CREATE TABLE tbl_contact (
    CONTACTID INT(10) NOT NULL AUTO_INCREMENT,
    PASSENGERNAME VARCHAR(250) NOT NULL,
    PASSENGEREMAIL VARCHAR(250),
    SUBJECTID VARCHAR(250),
    MESSAGE VARCHAR(2000),
    PRIMARY KEY (CONTACTID)
) AUTO_INCREMENT=1;

CREATE TABLE tbl_booktrip (
    BOOKTRIPID INT(10) NOT NULL AUTO_INCREMENT,
    TRIPID INT(10) NOT NULL,
    PASSENGERNAME VARCHAR(250) NOT NULL,
    PASSENGEREMAIL VARCHAR(250),
    CABINNUMBER VARCHAR (1000),
    PRIMARY KEY (BOOKTRIPID)
) AUTO_INCREMENT=1;

CREATE TABLE tbl_trips (
    TRIPID INT(10) NOT NULL AUTO_INCREMENT,
    TRIPNAME VARCHAR(250) NOT NULL,
    TRIPDESCRIPTION VARCHAR(2000),
    DEPARTURETIME VARCHAR(500),
    TRIPTYPE VARCHAR(100),
    PRIMARY KEY (TRIPID)
) AUTO_INCREMENT=1;

CREATE TABLE tbl_ratetrip (
    RATETRIPID INT(10) NOT NULL AUTO_INCREMENT,
    TRIPID INT(10),
    RATINGVALUE INT(10),
    RATINGCOMMENT VARCHAR(1000),
    PRIMARY KEY (RATETRIPID)
) AUTO_INCREMENT=1;

CREATE TABLE tbl_blogpost (
    BLOGPOSTID INT(10) NOT NULL AUTO_INCREMENT,
    PASSENGERNAME VARCHAR(250) NOT NULL,
    TRIPID INT (10),
    PASSENGERBLOGCOMMENT VARCHAR(2000),
    UPLOADIMAGEPATH VARCHAR(5000),
    PRIMARY KEY (BLOGPOSTID)
) AUTO_INCREMENT=1;



-- ************* INSERT TABLES *************
-- PAGE TABLE
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("index", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("daytrips", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("daytrip-hobbiton", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("daytrip-rotorua", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("daytrip-whiteisland", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("staylocal", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("stay-downtownmount", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("stay-mauao", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("stay-tgaart", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("about-tga", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");
INSERT INTO tbl_page (PAGENAME, HEADINGDESCRIPTION, TEXTDESCRIPTION) VALUES ("blog", "Lorem ipsum dolor sit amet.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae natus accusantium in labore blanditiis ratione quisquam quia tempore expedita aperiam consectetur eligendi eveniet molestias, dignissimos laborum pariatur hic et? Modi quaerat sequi, veniam reiciendis qui non. Et odit quo atque eaque possimus eius harum! Ullam consectetur tenetur voluptatibus repellendus nihil.");



-- MEDIA TABLE
-- HOME MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/mount-pano.jpeg');
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/kiaora.svg');
-- DAYTRIPS MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/tauranga-bay.jpg');
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/beach.jpg');
-- DAYTRIP-HOBBITON MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/pohutukawa.jpg');
-- DAYTRIP-ROTORUA MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/redwood.jpg');
-- DAYTRIP-WHITEISLAND MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/volcano.jpg');
-- STAYLOCAL MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/tauranga-bay.jpg');
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/beach.jpg');
-- STAY-DOWNTOWNMOUNT MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/tauranga-bay.jpg');
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/coffee.jpg');
-- STAY-MAUAO MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/tauranga-bay.jpg');
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/pohutukawa.jpg');
-- STAY-TGAART MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/tauranga-bay.jpg');
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/art-gallery.jpg');
-- ABOUT-TGA MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/tauranga-bay.jpg');
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/coffee.jpg');
-- BLOG MEDIA
INSERT INTO tbl_media (MEDIAPATH) VALUES ('./images/cruise-ship-trees.jpg');