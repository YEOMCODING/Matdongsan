DROP TABLE "REALESTATE_SELL";
DROP TABLE "REALESTATE_RENT";
DROP TABLE "MEMBER";
DROP TABLE "INTEREST";
DROP TABLE "RESTAURANT";
DROP TABLE "RES_IMG";
DROP TABLE "REVIEW";
DROP TABLE "REPLY";
DROP TABLE "HASHTAG";
DROP TABLE "RES_HASHTAG";
DROP TABLE "CHAT_MESSAGE";
DROP TABLE "CHAT_ROOM";
DROP TABLE "CHAT_ROOM_JOIN";
DROP TABLE "FREE_BOARD";
DROP TABLE "QNA_BOARD";
DROP TABLE "HOTWEEK";
DROP TABLE "REPORT";

-- DROP TABLE "REALESTATE_SELL";

CREATE TABLE REALESTATE_SELL
(
    "SELL_NO"    VARCHAR(255)  NOT NULL,
    "ACC_YEAR"   VARCHAR(255)  NULL,
    "SGG_CD"     VARCHAR(255)  NULL,
    "SGG_NM"     VARCHAR(255)  NULL,
    "BJDONG_CD"  VARCHAR(255)  NULL,
    "BJDONG_NM"  VARCHAR2(255) NULL,
    "BONBEON"    VARCHAR(255)  NULL,
    "BUBEON"     VARCHAR(255)  NULL,
    "BLDG_NM"    VARCHAR(255)  NULL,
    "DEAL_YMD"   VARCHAR(255)  NULL,
    "OBJ_AMT"    VARCHAR(255)  NULL,
    "BLDG_AREA"  VARCHAR(255)  NULL,
    "BUILD_YEAR" VARCHAR(255)  NULL,
    "HOUSE_TYPE" VARCHAR(255)  NULL
);

COMMENT
    ON COLUMN REALESTATE_SELL."SELL_NO" IS '매매번호';

COMMENT
    ON COLUMN REALESTATE_SELL."ACC_YEAR" IS '접수년도';

COMMENT
    ON COLUMN REALESTATE_SELL."SGG_CD" IS '자치구코드';

COMMENT
    ON COLUMN REALESTATE_SELL."SGG_NM" IS '자치구명';

COMMENT
    ON COLUMN REALESTATE_SELL."BJDONG_CD" IS '법정동코드';

COMMENT
    ON COLUMN REALESTATE_SELL."BJDONG_NM" IS '법적동명';

COMMENT
    ON COLUMN REALESTATE_SELL."BONBEON" IS '본번';

COMMENT
    ON COLUMN REALESTATE_SELL."BUBEON" IS '부번';

COMMENT
    ON COLUMN REALESTATE_SELL."BLDG_NM" IS '건물명';

COMMENT
    ON COLUMN REALESTATE_SELL."DEAL_YMD" IS '계약일';

COMMENT
    ON COLUMN REALESTATE_SELL."OBJ_AMT" IS '물건금액';

COMMENT
    ON COLUMN REALESTATE_SELL."BLDG_AREA" IS '건축면적';

COMMENT
    ON COLUMN REALESTATE_SELL."BUILD_YEAR" IS '건축년도';

COMMENT
    ON COLUMN REALESTATE_SELL."HOUSE_TYPE" IS '건물용도';

-- DROP TABLE "REALESTATE_RENT";

CREATE TABLE "REALESTATE_RENT"
(
    "RENT_NO"      VARCHAR(255) NOT NULL,
    "ACC_YEAR"     VARCHAR(255) NULL,
    "SGG_CD"       VARCHAR(255) NULL,
    "SGG_NM"       VARCHAR(255) NULL,
    "BJDONG_CD"    VARCHAR(255) NULL,
    "BJDONG_NM"    VARCHAR(255) NULL,
    "BOBN"         VARCHAR(255) NULL,
    "BUBN"         VARCHAR(255) NULL,
    "DEAL_YMD"     VARCHAR(255) NULL,
    "RENT_GBN"     VARCHAR(255) NULL,
    "RENT_AREA"    VARCHAR(255) NULL,
    "RENT_GTN"     VARCHAR(255) NULL,
    "RENT_FEE"     VARCHAR(255) NULL,
    "BLDG_NM"      VARCHAR(255) NULL,
    "HOUSE_GBN_NM" VARCHAR(255) NULL
);

COMMENT
    ON COLUMN "REALESTATE_RENT"."RENT_NO" IS '전월세 번호';

COMMENT
    ON COLUMN "REALESTATE_RENT"."ACC_YEAR" IS '접수년도';

COMMENT
    ON COLUMN "REALESTATE_RENT"."SGG_NM" IS '자치구명';

COMMENT
    ON COLUMN "REALESTATE_RENT"."BJDONG_NM" IS '법정동명';

COMMENT
    ON COLUMN "REALESTATE_RENT"."DEAL_YMD" IS '계약일';

COMMENT
    ON COLUMN "REALESTATE_RENT"."RENT_GBN" IS '전월세구분';

COMMENT
    ON COLUMN "REALESTATE_RENT"."RENT_AREA" IS '임대면적';

COMMENT
    ON COLUMN "REALESTATE_RENT"."RENT_GTN" IS '보증금';

COMMENT
    ON COLUMN "REALESTATE_RENT"."RENT_FEE" IS '임대료';

COMMENT
    ON COLUMN "REALESTATE_RENT"."BLDG_NM" IS '건물명';

COMMENT
    ON COLUMN "REALESTATE_RENT"."HOUSE_GBN_NM" IS '건물용도';





-- DROP TABLE "MEMBER";

CREATE TABLE "MEMBER"
(
    "MEMBER_NO"     NUMBER                   NOT NULL,
    "PROVIDER"      VARCHAR(255)             NOT NULL,
    "PROVIDER_ID"   VARCHAR(255)             NOT NULL,
    "MEMBER_NAME"   VARCHAR(255)             NOT NULL,
    "PROFILE_IMAGE" VARCHAR(255)             NOT NULL,
    "EMAIL"         VARCHAR(255)             NULL,
    "NICKNAME"      VARCHAR(255)             NULL,
    "PHONE"         VARCHAR(255)             NULL,
    "ADDRESS"       VARCHAR(255)             NULL,
    "STATUS"        VARCHAR(255) DEFAULT 'Y' NULL,
    "GRADE"         VARCHAR(255) DEFAULT 1   NULL,
    "RECENT_ACCESS" VARCHAR2(255)            NULL

);

COMMENT
    ON COLUMN "MEMBER"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "MEMBER"."PROVIDER" IS '소셜사';

COMMENT
    ON COLUMN "MEMBER"."PROVIDER_ID" IS '소셜ID';

COMMENT
    ON COLUMN "MEMBER"."MEMBER_NAME" IS '소셜회원이름';

COMMENT
    ON COLUMN "MEMBER"."PROFILE_IMAGE" IS '프로필이미지URL';

COMMENT
    ON COLUMN "MEMBER"."EMAIL" IS '이메일';

COMMENT
    ON COLUMN "MEMBER"."NICKNAME" IS '닉네임';

COMMENT
    ON COLUMN "MEMBER"."PHONE" IS '휴대폰번호';

COMMENT
    ON COLUMN "MEMBER"."ADDRESS" IS '주소';

COMMENT
    ON COLUMN "MEMBER"."STATUS" IS '활동상태';

COMMENT
    ON COLUMN "MEMBER"."GRADE" IS '등급';

COMMENT
    ON COLUMN "MEMBER"."RECENT_ACCESS" IS '최근접속기록';


-- DROP TABLE "INTEREST";

CREATE TABLE "INTEREST"
(
    "SELL_NO"    VARCHAR(255) NOT NULL,
    "GROUP_PORD" VARCHAR(255) NOT NULL,
    "MEMBER_NO"  VARCHAR(255) NOT NULL
);

COMMENT
    ON COLUMN "INTEREST"."SELL_NO" IS '실거래가번호';

COMMENT
    ON COLUMN "INTEREST"."GROUP_PORD" IS '전월세가번호';

COMMENT
    ON COLUMN "INTEREST"."MEMBER_NO" IS '회원번호';



-- DROP TABLE "RESTAURANT";

CREATE TABLE "RESTAURANT"
(
    "RES_NO"     VARCHAR(255)  NOT NULL,
    "RES_NAME"   VARCHAR(255)  NOT NULL,
    "STATE"      VARCHAR(255)  NOT NULL,
    "ADDRESS"    VARCHAR(255)  NULL,
    "RES_PHONE"  VARCHAR(255)  NULL,
    "WEBSITE"    VARCHAR(255)  NULL,
    "RES_TIME"   VARCHAR(255)  NULL,
    "TRANSPORT"  VARCHAR(255)  NULL,
    "RES_FOOD"   VARCHAR(255)  NULL,
    "RES_IMGURL" VARCHAR2(2056) NULL
);

COMMENT
    ON COLUMN "RESTAURANT"."RES_NO" IS '맛집번호';

COMMENT
    ON COLUMN "RESTAURANT"."RES_NAME" IS '상호명';

COMMENT
    ON COLUMN "RESTAURANT"."STATE" IS '구이름';

COMMENT
    ON COLUMN "RESTAURANT"."ADDRESS" IS '도로명주소';

COMMENT
    ON COLUMN "RESTAURANT"."RES_PHONE" IS '전화번호';

COMMENT
    ON COLUMN "RESTAURANT"."WEBSITE" IS '웹사이트';

COMMENT
    ON COLUMN "RESTAURANT"."RES_TIME" IS '운영시간';

COMMENT
    ON COLUMN "RESTAURANT"."TRANSPORT" IS '교통정보';

COMMENT
    ON COLUMN "RESTAURANT"."RES_FOOD" IS '대표메뉴';

COMMENT
    ON COLUMN "RESTAURANT"."RES_IMGURL" IS '레스토랑이미지경로';




-- DROP TABLE "REVIEW";

CREATE TABLE "REVIEW"
(
    "REV_NO"         VARCHAR(255)             NOT NULL,
    "MEMBER_NO"      VARCHAR(255)             NOT NULL,
    "RES_NO"         VARCHAR(255)             NOT NULL,
    "STAR_RATING"    VARCHAR(255)             NULL,
    "REVIEW_CONTENT" VARCHAR(255)             NULL,
    "CREATE_DATE"    VARCHAR(255)             NULL,
    "STATUS"         VARCHAR(255) DEFAULT 'Y' NULL
);

COMMENT
    ON COLUMN "REVIEW"."REV_NO" IS '리뷰번호';

COMMENT
    ON COLUMN "REVIEW"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "REVIEW"."RES_NO" IS '맛집번호';

COMMENT
    ON COLUMN "REVIEW"."STAR_RATING" IS '별점';

COMMENT
    ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '내용';

COMMENT
    ON COLUMN "REVIEW"."CREATE_DATE" IS '리뷰작성일';

COMMENT
    ON COLUMN "REVIEW"."STATUS" IS '리뷰상태';

-- DROP TABLE "REPLY";

CREATE TABLE "REPLY"
(
    "REPLY_NO"      VARCHAR(255)                 NOT NULL,
    "MEMBER_NO"     VARCHAR(255)                 NOT NULL,
    "FREE_BNO"      VARCHAR(255)                 NOT NULL,
    "REPLY_CONTENT" VARCHAR(255)                 NULL,
    "REF_BNO"       VARCHAR(255)                 NULL,
    "REPLY_DATE"    VARCHAR(255) DEFAULT SYSDATE NULL,
    "STATUS"        VARCHAR(255) DEFAULT 'Y'     NULL
);

COMMENT
    ON COLUMN "REPLY"."REPLY_NO" IS '댓글번호';

COMMENT
    ON COLUMN "REPLY"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "REPLY"."FREE_BNO" IS '게시글번호';

COMMENT
    ON COLUMN "REPLY"."REPLY_CONTENT" IS '댓글내용';

COMMENT
    ON COLUMN "REPLY"."REF_BNO" IS '참조번호';

COMMENT
    ON COLUMN "REPLY"."REPLY_DATE" IS '댓글작성일';

COMMENT
    ON COLUMN "REPLY"."STATUS" IS '상태값';


-- DROP TABLE "HASHTAG";

CREATE TABLE "HASHTAG"
(
    "HASHTAG_ID" VARCHAR(255) NOT NULL,
    "HASHTAG"    VARCHAR(255) NULL
);

COMMENT
    ON COLUMN "HASHTAG"."HASHTAG_ID" IS '해시태그ID';

COMMENT
    ON COLUMN "HASHTAG"."HASHTAG" IS '해시태그';


-- DROP TABLE "HOTWEEK";

CREATE TABLE "HOTWEEK"
(
    "FREE_BNO"  VARCHAR(255) NOT NULL,
    "MEMBER_NO" VARCHAR(255) NOT NULL,
    "DATE"      VARCHAR(255) NOT NULL
);

COMMENT
    ON COLUMN "HOTWEEK"."FREE_BNO" IS '게시글 번호';

COMMENT
    ON COLUMN "HOTWEEK"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "HOTWEEK"."DATE" IS '조회일';


-- DROP TABLE "CHAT_MESSAGE";

CREATE TABLE "CHAT_MESSAGE"
(
    "CM_NO"        VARCHAR(255)                 NOT NULL,
    "CHAT_ROOM_NO" VARCHAR(255)                 NOT NULL,
    "RECEIVER_NO"  VARCHAR(255)                 NOT NULL,
    "SEND_NO"      VARCHAR(255)                 NOT NULL,
    "CREATE_DATE"  VARCHAR(255) DEFAULT SYSDATE NULL,
    "READ"         VARCHAR(255) DEFAULT 'Y'     NULL,
    "MS_CONTENT"   VARCHAR(255)                 NULL
);

COMMENT
    ON COLUMN "CHAT_MESSAGE"."CM_NO" IS '메세지번호';

COMMENT
    ON COLUMN "CHAT_MESSAGE"."CHAT_ROOM_NO" IS '채팅방번호';

COMMENT
    ON COLUMN "CHAT_MESSAGE"."RECEIVER_NO" IS '받은사람';

COMMENT
    ON COLUMN "CHAT_MESSAGE"."CREATE_DATE" IS '메세지 생성일자';

COMMENT
    ON COLUMN "CHAT_MESSAGE"."READ" IS '일음 여부';

COMMENT
    ON COLUMN "CHAT_MESSAGE"."MS_CONTENT" IS '메세지내용';


-- DROP TABLE "CHAT_ROOM";

CREATE TABLE "CHAT_ROOM"
(
    "CHAT_ROOM_NO" VARCHAR(255)                 NOT NULL,
    "MEMBER_NO"    VARCHAR(255)                 NOT NULL,
    "STATUS"       VARCHAR(255) DEFAULT 'Y'     NULL,
    "CREATE_DATE"  VARCHAR(255) DEFAULT SYSDATE NULL
);

COMMENT
    ON COLUMN "CHAT_ROOM"."CHAT_ROOM_NO" IS '채팅방번호';

COMMENT
    ON COLUMN "CHAT_ROOM"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "CHAT_ROOM"."STATUS" IS '채팅방상태';

COMMENT
    ON COLUMN "CHAT_ROOM"."CREATE_DATE" IS '생성일자';



-- DROP TABLE "CHAT_ROOM_JOIN";

CREATE TABLE "CHAT_ROOM_JOIN"
(
    "CHAT_ROOM_NO" VARCHAR(255) NOT NULL,
    "MEMBER_NO"    VARCHAR(255) NOT NULL
);

COMMENT
    ON COLUMN "CHAT_ROOM_JOIN"."CHAT_ROOM_NO" IS '채팅방번호';

COMMENT
    ON COLUMN "CHAT_ROOM_JOIN"."MEMBER_NO" IS '회원번호';


-- DROP TABLE "RES_IMG";

CREATE TABLE "RES_IMG"
(
    "IMG_NO"       VARCHAR(255) NOT NULL,
    "REVIEW_NO"    VARCHAR(255) NOT NULL,
    "MEMBER_NO"    VARCHAR(255) NOT NULL,
    "RES_NO"       VARCHAR(255) NOT NULL,
    "IMGAGE_LEVEL" VARCHAR(255) NULL,
    "ORIGIN_NAME"  VARCHAR(255) NULL,
    "CHANGE_NAME"  VARCHAR(255) NULL
);

COMMENT
    ON COLUMN "RES_IMG"."IMG_NO" IS '이미지 번호';

COMMENT
    ON COLUMN "RES_IMG"."REVIEW_NO" IS '리뷰번호';

COMMENT
    ON COLUMN "RES_IMG"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "RES_IMG"."RES_NO" IS '맛집번호';

COMMENT
    ON COLUMN "RES_IMG"."IMGAGE_LEVEL" IS '이미지레벨';

COMMENT
    ON COLUMN "RES_IMG"."ORIGIN_NAME" IS '원본파일이름';

COMMENT
    ON COLUMN "RES_IMG"."CHANGE_NAME" IS '저장파일이름';


-- DROP TABLE "RES_HASHTAG";

CREATE TABLE "RES_HASHTAG"
(
    "RES_NO"     VARCHAR(255) NULL,
    "HASHTAG_ID" VARCHAR(255) NULL,
    "REV_NO"     VARCHAR(255) NULL,
    "MEMBER_NO"  VARCHAR(255) NULL
);

COMMENT
    ON COLUMN "RES_HASHTAG"."RES_NO" IS '맛집번호';

COMMENT
    ON COLUMN "RES_HASHTAG"."HASHTAG_ID" IS '해시태그 아이디';

COMMENT
    ON COLUMN "RES_HASHTAG"."REV_NO" IS '리뷰번호';

COMMENT
    ON COLUMN "RES_HASHTAG"."MEMBER_NO" IS '회원번호';


-- DROP TABLE "FREE_BOARD";

CREATE TABLE "FREE_BOARD"
(
    "FREE_BNO"      VARCHAR(255)                 NOT NULL,
    "MEMBER_NO"     VARCHAR(255)                 NOT NULL,
    "BOARD_TITLE"   VARCHAR(255)                 NOT NULL,
    "BOARD_WRITER"  VARCHAR(255)                 NOT NULL,
    "BOARD_CONTENT" VARCHAR(255)                 NULL,
    "BOARD_DATE"    VARCHAR(255) DEFAULT SYSDATE NULL,
    "BOARD_AREA"    VARCHAR(255)                 NULL,
    "STATUS"        VARCHAR(255) DEFAULT 'Y'     NULL
);

COMMENT
    ON COLUMN "FREE_BOARD"."FREE_BNO" IS '게시글번호';

COMMENT
    ON COLUMN "FREE_BOARD"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "FREE_BOARD"."BOARD_TITLE" IS '글제목';

COMMENT
    ON COLUMN "FREE_BOARD"."BOARD_WRITER" IS '작성자';

COMMENT
    ON COLUMN "FREE_BOARD"."BOARD_CONTENT" IS '글내용';

COMMENT
    ON COLUMN "FREE_BOARD"."BOARD_DATE" IS '작성일';

COMMENT
    ON COLUMN "FREE_BOARD"."BOARD_AREA" IS '지역';

COMMENT
    ON COLUMN "FREE_BOARD"."STATUS" IS '상태';


-- DROP TABLE "REPORT";

CREATE TABLE "REPORT"
(
    "REPORT_NO"      VARCHAR(255) NULL,
    "FREE_BNO"       VARCHAR(255) NULL,
    "MEMBER_NO"      VARCHAR(255) NULL,
    "REPORT_REASON"  VARCHAR(255) NULL,
    "REPORT_USER"    VARCHAR(255) NULL,
    "REPORT_CONTENT" VARCHAR(255) NULL
);

COMMENT
    ON COLUMN "REPORT"."REPORT_NO" IS '신고번호';

COMMENT
    ON COLUMN "REPORT"."FREE_BNO" IS '게시글번호';

COMMENT
    ON COLUMN "REPORT"."MEMBER_NO" IS '피신고회원번호';

COMMENT
    ON COLUMN "REPORT"."REPORT_REASON" IS '신고사유';

COMMENT
    ON COLUMN "REPORT"."REPORT_USER" IS '신고회원번호';

COMMENT
    ON COLUMN "REPORT"."REPORT_CONTENT" IS '상세사유';


-- DROP TABLE "QNA_BOARD";

CREATE TABLE "QNA_BOARD"
(
    "QNA_BNO"     VARCHAR(255)                 NOT NULL,
    "MEMBER_NO"   VARCHAR(255)                 NOT NULL,
    "P_BNO"       VARCHAR(255)                 NOT NULL,
    "QNA_TITLE"   VARCHAR(255)                 NOT NULL,
    "QNA_CONTENT" VARCHAR(255)                 NOT NULL,
    "QNA_DATE"    VARCHAR(255) DEFAULT SYSDATE NULL,
    "COUNT"       VARCHAR(255) DEFAULT 0       NULL,
    "STATUS"      VARCHAR(255) DEFAULT 'Y'     NULL,
    "QNA_AREA"    VARCHAR(255)                 NOT NULL,
    "BOARD_CD"    CHAR(1)      DEFAULT 'C'     NULL
);

COMMENT
    ON COLUMN "QNA_BOARD"."QNA_BNO" IS '글번호';

COMMENT
    ON COLUMN "QNA_BOARD"."MEMBER_NO" IS '회원번호';

COMMENT
    ON COLUMN "QNA_BOARD"."P_BNO" IS '부모글번호';

COMMENT
    ON COLUMN "QNA_BOARD"."QNA_TITLE" IS '글제목';

COMMENT
    ON COLUMN "QNA_BOARD"."QNA_CONTENT" IS '글내용';

COMMENT
    ON COLUMN "QNA_BOARD"."QNA_DATE" IS '작성일';

COMMENT
    ON COLUMN "QNA_BOARD"."COUNT" IS '조회수';

COMMENT
    ON COLUMN "QNA_BOARD"."STATUS" IS '상태값';

COMMENT
    ON COLUMN "QNA_BOARD"."QNA_AREA" IS '지역';

COMMENT
    ON COLUMN "QNA_BOARD"."BOARD_CD" IS '보드타입';

CREATE TABLE "BOARD_TYPE"
(
    "BOARD_CD"    VARCHAR2(20)                 NOT NULL,
    "BOARD_NAME"  CHAR(1)                      NOT NULL
);

COMMENT
    ON COLUMN "BOARD_TYPE"."BOARD_CD" IS '게시판 타입 C: 질문 게시판 , F:자유 게시판';

COMMENT
    ON COLUMN "BOARD_TYPE"."BOARD_NAME" IS '게시판 이름';







DROP SEQUENCE SEQ_SELL_NO;
CREATE SEQUENCE SEQ_SELL_NO START WITH 10000 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_RENT_NO;
CREATE SEQUENCE SEQ_RENT_NO START WITH 50000 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_RES_NO;
CREATE SEQUENCE SEQ_RES_NO START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_REV_NO;
CREATE SEQUENCE SEQ_REV_NO START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_MEMBER_NO;
CREATE SEQUENCE SEQ_MEMBER_NO START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_QNA_BNO;
CREATE SEQUENCE SEQ_QNA_BNO START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_FREE_BNO;
CREATE SEQUENCE SEQ_FREE_BNO START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_REPORT_NO;
CREATE SEQUENCE SEQ_REPORT_NO START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;

DROP SEQUENCE SEQ_IMG_NO;
CREATE SEQUENCE SEQ_IMG_NO START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 NOCYCLE NOCACHE;





