CREATE TABLE MEMBER (
	  MEMEMAIL VARCHAR(100) primary key
    , MEMPASSWORD VARCHAR(16)
    , MEMNAME VARCHAR(5)
    , MEMNICKNAME VARCHAR(13)
    , MEMBIRTHDAY VARCHAR(12)
    , MEMIP VARCHAR(30)
    , MEMCLASS VARCHAR(4)
    , MEMDATE DATE
    , MEMNEXTPASSWORD VARCHAR(15)
);

CREATE TABLE GUILD_JOIN (
      JOINNUM INT(4)
	, JOINNAME VARCHAR(5)
	, JOINNICKNAME VARCHAR(13)
    , JOINAGE INT(3)
    , JOINSEX VARCHAR(3)
    , JOINRECOMMEND VARCHAR(13)
    , JOINLASTGUILD VARCHAR(21)
    , JOINIP VARCHAR(30)
    , JOINDATE DATE
    , JOINSTATUS VARCHAR(10)
    , JOINRETESTDAY VARCHAR(20)
);

CREATE TABLE MEMBER_NOTICE(
	  NOTICENUMBER INT(4) primary key
    , NOTICETITLE VARCHAR(100)
    , NOTICENICKNAME VARCHAR(13)
    , NOTICEWRITEDATE DATE
    , NOTICEVIEWCOUNT INT(4)
    , NOTICECONTENT VARCHAR(2000)
    , NOTICEIP VARCHAR(30)
);

CREATE TABLE MEMBER_INFO(
      INFONUMBER INT(4) primary key
    , INFOTEL VARCHAR(14) 
	, INFONAME VARCHAR(5)
	, INFONICKNAME VARCHAR(13)
    , INFOAGE INT(3)
    , INFOSEX VARCHAR(3)
    , INFORECOMMEND VARCHAR(13)
    , INFOLASTGUILD VARCHAR(20)
    , INFOWRITEDATE DATE
    , INFOVIEWCOUNT INT(4)
);

CREATE TABLE MEMBER_FREE(
	  FREENUMBER INT(4) primary key
    , FREETITLE VARCHAR(100)
    , FREENICKNAME VARCHAR(13)
    , FREEWRITEDATE DATE
    , FREEVIEWCOUNT INT(4)
    , FREECONTENT VARCHAR(9999)
);

CREATE TABLE MEMBER_ATTACKMOVIE(
	  ATMOVIENUMBER INT(4) primary key
    , ATMOVIENICKNAME VARCHAR(13)
    , ATMOVIEWRITEDATE DATE
    , ATMOVIEVIEWCOUNT INT(4)
    , ATMOVIETHEMES VARCHAR(20)
    , ATMOVIEMAP VARCHAR(20)
    , ATMOVIERIDER VARCHAR(13)
    , ATMOVIETIME VARCHAR(15)
    , ATMOVIEEXPLANATION VARCHAR(41)
    , ATMOVIEVIDE VARCHAR(150)
);

CREATE TABLE MEMBER_ATTACKPHOTO(
	  ATPHOTONUMBER INT(4) primary key
    , ATPHOTONICKNAME VARCHAR(13)
    , ATPHOTOWRITEDATE DATE
    , ATPHOTOVIEWCOUNT VARCHAR(4)
    , ATPHOTOTHEMES VARCHAR(20)
    , ATPHOTOMAP VARCHAR(20)
    , ATPHOTORIDER VARCHAR(13)
    , ATPHOTOTIME VARCHAR(15)
    , ATPHOTOEXPLANATION VARCHAR(41)
    , ATPHOTOPHOTO VARCHAR(150)
);

CREATE TABLE MEMBER_PHOTO(
	  MBPHOTONUMBER INT(4) primary key
    , MBPHOTOTITLE VARCHAR(100)
    , MBPHOTONICKNAME VARCHAR(13)
    , MBPHOTOWRITEDATE DATE
    , MBPHOTOVIEWCOUNT VARCHAR(4)
    , MBPHOTOCONTENT VARCHAR(9999)
);