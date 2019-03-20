PROMPT SCRIPT: LOOKBOM SEMI-PROJECT 데이터 생성

-- 사용자 TABLE NOTICE----------------------------------------------------
DROP TABLE LOOKBOM_USER CASCADE CONSTRAINTS;

CREATE TABLE LOOKBOM_USER(
    USER_NO NUMBER NOT NULL,
    USER_ID VARCHAR2(15) NOT NULL,
    BIRTH DATE NOT NULL,
    USER_PWD VARCHAR2(50) NOT NULL,
    GENDER VARCHAR2(2) NOT NULL,
    USER_NAME VARCHAR2(20) NOT NULL,
    EMAIL VARCHAR2(100)  NOT NULL,
    PHONE VARCHAR2(15)  NOT NULL,
    CODE_POSTAL VARCHAR2(20)  NOT NULL,
    ADDRESS VARCHAR2(160)  NOT NULL,
    ADDRESS2 VARCHAR2(160)  NOT NULL,
    JOIN_DATE DATE DEFAULT SYSDATE NOT NULL,
    SMS_YN VARCHAR2(2),
    EMAIL_YN VARCHAR2(2),
    POINT NUMBER NOT NULL,
    
    CONSTRAINT PK_USERNO PRIMARY KEY(USER_NO)--기본키
);

COMMENT ON COLUMN LOOKBOM_USER.USER_NO IS '사용자번호';
COMMENT ON COLUMN LOOKBOM_USER.USER_ID IS '아이디';
COMMENT ON COLUMN LOOKBOM_USER.BIRTH IS '생년월일';
COMMENT ON COLUMN LOOKBOM_USER.USER_PWD IS '비밀번호';
COMMENT ON COLUMN LOOKBOM_USER.GENDER IS '성별';
COMMENT ON COLUMN LOOKBOM_USER.USER_NAME IS '이름';
COMMENT ON COLUMN LOOKBOM_USER.EMAIL IS '이메일';
COMMENT ON COLUMN LOOKBOM_USER.PHONE IS '전화번호';
COMMENT ON COLUMN LOOKBOM_USER.CODE_POSTAL IS '우편번호';
COMMENT ON COLUMN LOOKBOM_USER.ADDRESS IS '주소';
COMMENT ON COLUMN LOOKBOM_USER.ADDRESS2 IS '주소2';
COMMENT ON COLUMN LOOKBOM_USER.JOIN_DATE IS '가입일';
COMMENT ON COLUMN LOOKBOM_USER.SMS_YN IS 'SMS수신동의';
COMMENT ON COLUMN LOOKBOM_USER.EMAIL_YN IS '이메일수신동의';
COMMENT ON COLUMN LOOKBOM_USER.POINT IS '포인트';

--사용자번호 SEQUENCE USER_NO
DROP SEQUENCE SEQ_USER_NO;

CREATE SEQUENCE SEQ_USER_NO 
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;   

-- 사용자 SAMPLE INSERT
INSERT INTO LOOKBOM_USER VALUES(SEQ_USER_NO.NEXTVAL,'user01','1990-01-01','pass01','F','홍길동','hogildong@naver.com','010-9999-6777','475-765','강남구','kh정보교육원',DEFAULT,'N','N',0);



--사용자탈퇴 TABLE NOTICE---------------------------------------------------
DROP TABLE USER_FINKOUT CASCADE CONSTRAINTS;

CREATE TABLE USER_FINKOUT(
    FINKOUT_NO NUMBER NOT NULL,
    USER_ID VARCHAR2(15) NOT NULL,
    FINKOUT_REASON VARCHAR2(200),
    FINKOUT_DATE DATE DEFAULT SYSDATE NOT NULL,
    EMAIL VARCHAR2(100) NOT NULL,
    
    CONSTRAINT PK_FINKOUTNO PRIMARY KEY(FINKOUT_NO) --기본키
);

COMMENT ON COLUMN USER_FINKOUT.FINKOUT_NO IS '탈퇴번호';
COMMENT ON COLUMN USER_FINKOUT.USER_ID IS '아이디';
COMMENT ON COLUMN USER_FINKOUT.FINKOUT_REASON IS '탈퇴사유';
COMMENT ON COLUMN USER_FINKOUT.FINKOUT_DATE IS '탈퇴일';
COMMENT ON COLUMN USER_FINKOUT.EMAIL IS '이메일';

--탈퇴번호 SEQUENCE FINKOUT_NO
DROP SEQUENCE SEQ_FINKOUT_NO;

CREATE SEQUENCE SEQ_FINKOUT_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;    

-- 사용자탈퇴 SAMPLE INSERT
INSERT INTO USER_FINKOUT VALUES(SEQ_FINKOUT_NO.NEXTVAL,'user02','재가입하기위해서',default,'gil@naver.com');



--상품 TABLE PRODUCT-----------------------------------------------------------------
DROP TABLE PRODUCT CASCADE CONSTRAINTS; 

CREATE TABLE PRODUCT (
   PRODUCT_NO   NUMBER   NOT NULL,
   PRODUCT_NAME   VARCHAR2(30) NOT NULL,
   PRODUCT_TYPE   VARCHAR2(20) NOT NULL,
   BRAND   VARCHAR2(30),
   BRAND_IMAGE   VARCHAR2(240),
   SEASON   VARCHAR2(20),
   SEX   VARCHAR2(10),
   PRODUCT_PRICE   NUMBER   NOT NULL,
   DISCOUNT_RATE   NUMBER DEFAULT 0,
   SIZE_CATEGORY   VARCHAR2(20) NOT NULL,
   SIZE_CONTENTS   VARCHAR2(200) NOT NULL,
   MORE_INFO   VARCHAR2(400),
   VIEW_COUNT   NUMBER  DEFAULT 0,
   RESITER   DATE    DEFAULT SYSDATE NOT NULL,
   PRODUCT_LIKE   NUMBER  DEFAULT 0,  
   
   CONSTRAINT PK_PRODUCTNO PRIMARY KEY (PRODUCT_NO) --기본키
);

COMMENT ON COLUMN PRODUCT.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN PRODUCT.PRODUCT_NAME IS '상품이름';
COMMENT ON COLUMN PRODUCT.PRODUCT_TYPE IS '상품분류';
COMMENT ON COLUMN PRODUCT.BRAND IS '브랜드';
COMMENT ON COLUMN PRODUCT.BRAND_IMAGE IS '브랜드이미지';
COMMENT ON COLUMN PRODUCT.SEASON IS '시즌';
COMMENT ON COLUMN PRODUCT.SEX IS '성별';
COMMENT ON COLUMN PRODUCT.PRODUCT_PRICE IS '판매가';
COMMENT ON COLUMN PRODUCT.DISCOUNT_RATE IS '할인률';
COMMENT ON COLUMN PRODUCT.SIZE_CATEGORY IS '사이즈분류';
COMMENT ON COLUMN PRODUCT.SIZE_CONTENTS IS '사이즈내용';
COMMENT ON COLUMN PRODUCT.MORE_INFO IS '추가정보';
COMMENT ON COLUMN PRODUCT.VIEW_COUNT IS '조회수';
COMMENT ON COLUMN PRODUCT.RESITER IS '등록일자';
COMMENT ON COLUMN PRODUCT.PRODUCT_LIKE IS '좋아요';

--상품번호 SEQUENCE PRODUCT_NO
DROP SEQUENCE SEQ_PRODUCT_NO;

CREATE SEQUENCE SEQ_PRODUCT_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;   

--상품 SAMPLE INSERT 
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 'T-shirt', 'SHIRTS', 'ADIDAS', 'C://RESOURCES/IMAGE.JPG', '가을', '남성', 32000, 0.5, 'M', '30/20/25', 'DRY CLEAN', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, '패딩', 'OUTER', 'NIKE', 'C://RESOURCES/IMAGE.JPG', '겨울', '남성', 133000, 0.5, 'L', '30/20/25', 'DRY CLEAN', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, '반바지', 'PANTS', 'GIODANO', 'C://RESOURCES/IMAGE.JPG', '여름', '남성', 35000, 0.5, 'M', '30/20/25', 'DRY CLEAN', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, '원피스', 'TOPS', '자체제작', 'C://RESOURCES/IMAGE.JPG', '봄', '여성', 72500, 0.5, 'S', '30/20/25', 'DRY CLEAN', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, '맨투맨', 'TOPS', 'ADIDAS', 'C://RESOURCES/IMAGE.JPG', '가을', '혼용', 50000, 0.5, 'M', '30/20/25', 'DRY CLEAN', DEFAULT, DEFAULT, DEFAULT);



--상품상세 TABLE PRODUCT_DETAIL----------------------------------------------------------
DROP TABLE PRODUCT_DETAIL CASCADE CONSTRAINTS;

CREATE TABLE PRODUCT_DETAIL (
   PRODUCT_DETAIL_NO   NUMBER   NOT NULL,
   PRODUCT_COLOR   VARCHAR2(20)  NOT NULL,
   PRODUCT_IMAGE1   VARCHAR2(240),
   PRODUCT_IMAGE2   VARCHAR2(240),
   PRODUCT_IMAGE3   VARCHAR2(240),
   PRODUCT_IMAGE4   VARCHAR2(240),
   PRODUCT_IMAGE5   VARCHAR2(240),
   SSIZE_QUANTITY   NUMBER  DEFAULT 0 NOT NULL,
   MSIZE_QUANTITY   NUMBER  DEFAULT 0 NOT NULL,
   LSIZE_QUANTITY   NUMBER  DEFAULT 0 NOT NULL,
   XLSIZE_QUANTITY   NUMBER DEFAULT 0 NOT NULL,
   TOTAL_ENTER_QUANTITY   NUMBER DEFAULT 0 NOT NULL,
   TOTAL_SALES_RATE   NUMBER DEFAULT 0,
   PRODUCT_NO   NUMBER   NOT NULL,
   
   CONSTRAINT PK_PRODUCTDETAILNO PRIMARY KEY (PRODUCT_DETAIL_NO), --기본키
   CONSTRAINT FK_PRODUCTNO FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT (PRODUCT_NO) --외래키
);

COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_DETAIL_NO IS '상품상세번호';
COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_COLOR IS '색상';
COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_IMAGE1 IS '상품이미지1';
COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_IMAGE2 IS '상품이미지2';
COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_IMAGE3 IS '상품이미지3';
COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_IMAGE4 IS '상품이미지4';
COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_IMAGE5 IS '상품이미지5';
COMMENT ON COLUMN PRODUCT_DETAIL.SSIZE_QUANTITY IS 'S사이즈수량';
COMMENT ON COLUMN PRODUCT_DETAIL.MSIZE_QUANTITY IS 'M사이즈수량';
COMMENT ON COLUMN PRODUCT_DETAIL.LSIZE_QUANTITY IS 'L사이즈수량';
COMMENT ON COLUMN PRODUCT_DETAIL.XLSIZE_QUANTITY IS 'XL사이즈수량';
COMMENT ON COLUMN PRODUCT_DETAIL.TOTAL_ENTER_QUANTITY IS '총입고수량';
COMMENT ON COLUMN PRODUCT_DETAIL.TOTAL_SALES_RATE IS '총판매량';
COMMENT ON COLUMN PRODUCT_DETAIL.PRODUCT_NO IS '상품번호';

--상품상세번호 SEQUENCE PRODUCT_DETAIL_NO
DROP SEQUENCE SEQ_PRODUCT_DETAIL_NO;

CREATE SEQUENCE SEQ_PRODUCT_DETAIL_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;  

--상품상세 SAMPLE INSERT 
INSERT INTO PRODUCT_DETAIL VALUES(SEQ_PRODUCT_DETAIL_NO.NEXTVAL, 'GREEN', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 100, 100, 100, 100, 400, 0, 1);
INSERT INTO PRODUCT_DETAIL VALUES(SEQ_PRODUCT_DETAIL_NO.NEXTVAL, 'RED', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 100, 100, 100, 100, 400, 0, 1);
INSERT INTO PRODUCT_DETAIL VALUES(SEQ_PRODUCT_DETAIL_NO.NEXTVAL, 'BLACK', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 100, 100, 100, 100, 400, 0, 2);
INSERT INTO PRODUCT_DETAIL VALUES(SEQ_PRODUCT_DETAIL_NO.NEXTVAL, 'PINK', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 100, 100, 100, 100, 400, 0, 3);
INSERT INTO PRODUCT_DETAIL VALUES(SEQ_PRODUCT_DETAIL_NO.NEXTVAL, 'YELLOW', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 'C://IMAGE.JPG', 100, 100, 100, 100, 400, 0, 4);



--주문 TABLE PRODUCT_ORDER-----------------------------------------------------------------------
DROP TABLE PRODUCT_ORDER CASCADE CONSTRAINTS;

CREATE TABLE PRODUCT_ORDER(
    ORDER_NO NUMBER NOT NULL,
    ORDER_DATE DATE DEFAULT SYSDATE NOT NULL,
    SHIPPING_ADDRESS_NAME VARCHAR2(20) NOT NULL,
    RECIPIENT VARCHAR2(20) NOT NULL,
    CODE_POSTAL VARCHAR2(20)  NOT NULL,
    ADDRESS VARCHAR2(500)  NOT NULL,
    ADDRESS2 VARCHAR2(500)  NOT NULL,
    RECIPIENT_PHONE VARCHAR2(20)  NOT NULL,
    REQUEST VARCHAR2(500),
    SHIPPING_CHARGE NUMBER DEFAULT 0,
    ORDER_PRODUCT_QUANTITY NUMBER DEFAULT 1 NOT NULL,
    ORDER_PRODUCT_SIZE VARCHAR2(20) NOT NULL,
    ORDER_TOTAL_PRICE NUMBER DEFAULT 0,
    PAYMENT_TYPE VARCHAR2(50) NOT NULL,
    ORDER_PROGRESS VARCHAR2(50) NOT NULL,
    ORDER_DECISION VARCHAR2(50) DEFAULT '선택대기',
    REVIEW_YN VARCHAR2(2) DEFAULT 'N',
    ORDER_PRODUCT_BUNDLE NUMBER,
    USER_NO NUMBER,
    PRODUCT_DETAIL_NO NUMBER,
    
    CONSTRAINT PK_ORDERNO PRIMARY KEY(ORDER_NO), --기본키
    CONSTRAINT CHK_REVIEWYN CHECK (REVIEW_YN IN ('Y','N')), 
    CONSTRAINT FK_POUSERNO FOREIGN KEY(USER_NO) REFERENCES LOOKBOM_USER(USER_NO), --외래키
    CONSTRAINT FK_POPRODUCTDETAILNO FOREIGN KEY(PRODUCT_DETAIL_NO) REFERENCES PRODUCT_DETAIL(PRODUCT_DETAIL_NO) --외래키
);

COMMENT ON COLUMN PRODUCT_ORDER.ORDER_NO IS '주문번호';
COMMENT ON COLUMN PRODUCT_ORDER.ORDER_DATE IS '주문일';
COMMENT ON COLUMN PRODUCT_ORDER.SHIPPING_ADDRESS_NAME IS '배송지명';
COMMENT ON COLUMN PRODUCT_ORDER.RECIPIENT IS '수령인';
COMMENT ON COLUMN PRODUCT_ORDER.CODE_POSTAL IS '우편번호';
COMMENT ON COLUMN PRODUCT_ORDER.ADDRESS IS '배송지주소1';
COMMENT ON COLUMN PRODUCT_ORDER.ADDRESS2 IS '배송지주소2';
COMMENT ON COLUMN PRODUCT_ORDER.RECIPIENT_PHONE IS '연락처';
COMMENT ON COLUMN PRODUCT_ORDER.REQUEST IS '배송지 요청사항';
COMMENT ON COLUMN PRODUCT_ORDER.SHIPPING_CHARGE IS '배송비';
COMMENT ON COLUMN PRODUCT_ORDER.ORDER_PRODUCT_QUANTITY IS '상품수량';
COMMENT ON COLUMN PRODUCT_ORDER.ORDER_PRODUCT_SIZE IS '상품사이즈';
COMMENT ON COLUMN PRODUCT_ORDER.ORDER_TOTAL_PRICE IS '총결제금액';
COMMENT ON COLUMN PRODUCT_ORDER.PAYMENT_TYPE IS '결제방식';
COMMENT ON COLUMN PRODUCT_ORDER.ORDER_PROGRESS IS '주문진행상태';
COMMENT ON COLUMN PRODUCT_ORDER.ORDER_DECISION IS '구매결정';
COMMENT ON COLUMN PRODUCT_ORDER.REVIEW_YN IS '리뷰여부';
COMMENT ON COLUMN PRODUCT_ORDER.ORDER_PRODUCT_BUNDLE IS '주문상품묶음';
COMMENT ON COLUMN PRODUCT_ORDER.USER_NO IS '사용자번호';
COMMENT ON COLUMN PRODUCT_ORDER.PRODUCT_DETAIL_NO IS '상품상세번호';

--주문번호 SEQUENCE ORDER_NO
DROP SEQUENCE SEQ_ORDER_NO;

CREATE SEQUENCE SEQ_ORDER_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE; 

-- 주문 SAMPLE INSERT
INSERT INTO PRODUCT_ORDER 
VALUES(SEQ_ORDER_NO.NEXTVAL, DEFAULT, '집', '김성현', '130-277', '서울특별시 강남구 강남구 테헤란로14길 6', '4층 s클라스', '01012345678', '깨지지 않게 가져다 주세요', 3000, 1, 'M', 35000, '신용카드', '배송완료', '구매확정', 'Y', 1, 1, 1);



--최소교환반품내역 TABLE CER_LIST------------------------------------------------------------------------
DROP TABLE CER_LIST CASCADE CONSTRAINTS;

CREATE TABLE CER_LIST(
    RECEPTION_NO NUMBER,
    RECEPTION_DATE DATE DEFAULT SYSDATE,
    RECEPTION_TYPE VARCHAR2(20),
    RECEPTION_PROGRESS VARCHAR2(20) DEFAULT '승인대기',
    RECEPTION_TITLE VARCHAR2(200) NOT NULL,
    RECEPTION_CONTENT VARCHAR2(3000),
    ORDER_NO NUMBER,
    
    CONSTRAINT PK_RECEPTIONNO PRIMARY KEY(RECEPTION_NO), --기본키
    CONSTRAINT FK_CLORDERNO FOREIGN KEY(ORDER_NO) REFERENCES PRODUCT_ORDER(ORDER_NO) --외래키
);

COMMENT ON COLUMN CER_LIST.RECEPTION_NO IS '접수번호';
COMMENT ON COLUMN CER_LIST.RECEPTION_DATE IS '접수일';
COMMENT ON COLUMN CER_LIST.RECEPTION_TYPE IS '접수종류';
COMMENT ON COLUMN CER_LIST.RECEPTION_PROGRESS IS '접수진행상태';
COMMENT ON COLUMN CER_LIST.RECEPTION_TITLE IS '접수제목';
COMMENT ON COLUMN CER_LIST.RECEPTION_CONTENT IS '접수내용';
COMMENT ON COLUMN CER_LIST.ORDER_NO IS '주문번호';

--접수번호 SEQUENCE RECEPTION_NO
DROP SEQUENCE SEQ_RECEPTION_NO;

CREATE SEQUENCE SEQ_RECEPTION_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;  

--최소교환반품내역 SAMPLE INSERT
INSERT INTO CER_LIST VALUES(SEQ_RECEPTION_NO.NEXTVAL, DEFAULT, '환불', DEFAULT, '환불해주세요', '상품의 문제가 있습니다.', 1);



--장바구니 TABLE SHOPPING BAG------------------------------------------------------------------------
DROP TABLE SHOPPING_BAG CASCADE CONSTRAINTS;

CREATE TABLE SHOPPING_BAG(
    SB_NO NUMBER,
    SB_PRODUCT_QUANTITY NUMBER NOT NULL,
    SB_PRODUCT_SIZE VARCHAR2(20) NOT NULL,
    SB_PRODUCT_BUNDLE NUMBER,
    USER_NO NUMBER,
    PRODUCT_DETAIL_NO NUMBER,
    
    CONSTRAINT PK_SBNO PRIMARY KEY(SB_NO), --기본키
    CONSTRAINT FK_SBUSERNO FOREIGN KEY(USER_NO) REFERENCES LOOKBOM_USER(USER_NO), --외래키
    CONSTRAINT FK_SBPRODUCTDETAILNO FOREIGN KEY(PRODUCT_DETAIL_NO) REFERENCES PRODUCT_DETAIL(PRODUCT_DETAIL_NO) --외래키
);

COMMENT ON COLUMN SHOPPING_BAG.SB_NO IS '장바구니번호';
COMMENT ON COLUMN SHOPPING_BAG.SB_PRODUCT_QUANTITY IS '상품별수량';
COMMENT ON COLUMN SHOPPING_BAG.SB_PRODUCT_SIZE IS '상품별사이즈';
COMMENT ON COLUMN SHOPPING_BAG.SB_PRODUCT_BUNDLE IS '장바구니상품묶음';
COMMENT ON COLUMN SHOPPING_BAG.USER_NO IS '사용자번호';
COMMENT ON COLUMN SHOPPING_BAG.PRODUCT_DETAIL_NO IS '상품상세번호';

--장바구니번호 SEQUENCE SB_NO
DROP SEQUENCE SEQ_SB_NO;

CREATE SEQUENCE SEQ_SB_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;  

--장바구니 SAMPLE INSERT
INSERT INTO SHOPPING_BAG VALUES(SEQ_SB_NO.nextval, 2, 'M', 1, 1, 1);



--화면배너 TABLE SCREEN_BANNER------------------------------------------------------
DROP TABLE SCREEN_BANNER CASCADE CONSTRAINTS;

CREATE TABLE SCREEN_BANNER(
BANNER_NO NUMBER NOT NULL,
BANNER_URL VARCHAR2(240) NOT NULL,
BANNER_IMG VARCHAR2(240) NOT NULL,
BANNER_DIVISION NUMBER NOT NULL, 
AD_CONTENTS VARCHAR2(1000) ,

CONSTRAINT PK_BANNERNO PRIMARY KEY (BANNER_NO) --기본키
);


COMMENT ON COLUMN SCREEN_BANNER.BANNER_NO IS '배너번호';
COMMENT ON COLUMN SCREEN_BANNER.BANNER_URL IS 'URL';
COMMENT ON COLUMN SCREEN_BANNER.BANNER_IMG IS '이미지';
COMMENT ON COLUMN SCREEN_BANNER.BANNER_DIVISION IS '배너구분';
COMMENT ON COLUMN SCREEN_BANNER.AD_CONTENTS IS '광고내용';

--배너번호 SEQUENCE BANNER_NO
DROP SEQUENCE SEQ_BANNER_NO;

CREATE SEQUENCE SEQ_BANNER_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE; 

--화면번호 SAMPLE INSERT
INSERT INTO SCREEN_BANNER VALUES(SEQ_BANNER_NO.NEXTVAL,'http://127.0.0.1:8888/lb/','http://127.0.0.1:8888/lb/',1,'봄 신상 40% 세일');



--인기검색어 TABLE SEARCH-------------------------------------------------------------
DROP TABLE SEARCH CASCADE CONSTRAINTS;

CREATE TABLE SEARCH( 
SEARCH_NO NUMBER NOT NULL,
SEARCH_TITLE VARCHAR2(30),
SC_COUNT NUMBER DEFAULT 1,

CONSTRAINT PK_SEARCHNO PRIMARY KEY (SEARCH_NO) --기본키
);

COMMENT ON COLUMN SEARCH.SEARCH_NO IS '검색번호'; 
COMMENT ON COLUMN SEARCH.SEARCH_TITLE IS '검색어';
COMMENT ON COLUMN SEARCH.SC_COUNT IS '검색수';

--검색번호 SEQUENCE SEARCH_NO
DROP SEQUENCE SEQ_SEARCH_NO;

CREATE SEQUENCE SEQ_SEARCH_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;

--인기검색어 SAMPLE INSERT
INSERT INTO SEARCH VALUES(SEQ_SEARCH_NO.NEXTVAL,'비바스튜디오맨투맨',DEFAULT);



-- 리뷰 TABLE REVIEW ---------------------------------------------
DROP TABLE REVIEW CASCADE CONSTRAINTS;

CREATE TABLE REVIEW(
REVIEW_NO NUMBER, 
REVIEW_WRITE_DATE DATE DEFAULT SYSDATE NOT NULL,
REVIEW_CONTENTS VARCHAR2(3000),
REVIEW_HEIGHT NUMBER NOT NULL,
REVIEW_WEIGHT NUMBER NOT NULL,
REVIEW_LIKE NUMBER DEFAULT 0  NOT NULL,
REVIEW_VIEWS NUMBER DEFAULT 0 NOT NULL,
REVIEW_IMAGE1 VARCHAR2(240),
REVIEW_IMAGE2 VARCHAR2(240),
REVIEW_IMAGE3 VARCHAR2(240),
USER_NO NUMBER,
PRODUCT_DETAIL_NO NUMBER, 

CONSTRAINT PK_REVIEWNO PRIMARY KEY(REVIEW_NO), --기본키
CONSTRAINT FK_RUSERNO FOREIGN KEY(USER_NO) REFERENCES LOOKBOM_USER(USER_NO), --외래키
CONSTRAINT FK_RPRODUCTDETAILNO FOREIGN KEY(PRODUCT_DETAIL_NO) REFERENCES PRODUCT_DETAIL(PRODUCT_DETAIL_NO) --외래키
);

COMMENT ON COLUMN REVIEW.REVIEW_NO IS '리뷰번호';
COMMENT ON COLUMN REVIEW.REVIEW_WRITE_DATE IS '등록일';
COMMENT ON COLUMN REVIEW.REVIEW_CONTENTS IS '내용';
COMMENT ON COLUMN REVIEW.REVIEW_HEIGHT IS '키';
COMMENT ON COLUMN REVIEW.REVIEW_WEIGHT IS '몸무게';
COMMENT ON COLUMN REVIEW.REVIEW_LIKE IS '좋아요';
COMMENT ON COLUMN REVIEW.REVIEW_VIEWS IS '조회수';
COMMENT ON COLUMN REVIEW.REVIEW_IMAGE1 IS '리뷰이미지1';
COMMENT ON COLUMN REVIEW.REVIEW_IMAGE2 IS '리뷰이미지2';
COMMENT ON COLUMN REVIEW.REVIEW_IMAGE3 IS '리뷰이미지3';
COMMENT ON COLUMN REVIEW.USER_NO IS '사용자번호';
COMMENT ON COLUMN REVIEW.PRODUCT_DETAIL_NO IS '상품상세번호';

--리뷰번호 SEQUENCE REVIEW_NO
DROP SEQUENCE SEQ_REVIEW_NO;

CREATE SEQUENCE SEQ_REVIEW_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;

-- 리뷰 SAMPLE INSERT
INSERT INTO REVIEW VALUES(SEQ_REVIEW_NO.NEXTVAL,default,'리뷰내용입니다',178,75,default,default,'C://RESOURCES/IMAGE1.JPG','C://RESOURCES/IMAGE2.JPG','C://RESOURCES/IMAGE3.JPG',1,1);



-- Q&A TABLE QNA ------------------------------------------------
DROP TABLE QNA CASCADE CONSTRAINTS;

CREATE TABLE QNA (
QNA_NO NUMBER,
QNA_CATEGORY VARCHAR2(20) NOT NULL,
QNA_TITLE VARCHAR2(200) NOT NULL,
QNA_CONTENTS VARCHAR2(3000),
QNA_WRITE_DATE DATE DEFAULT SYSDATE NOT NULL,
QNA_SECRET VARCHAR2(5) DEFAULT 'N',
QNA_REPLY_CONTENTS VARCHAR2(1000),
USER_NO NUMBER, 
PRODUCT_DETAIL_NO NUMBER, 

CONSTRAINT PK_QNANO PRIMARY KEY(QNA_NO), --기본키
CONSTRAINT CK_QNASECRET CHECK (QNA_SECRET IN ('Y', 'N')),
CONSTRAINT FK_QUSERNO FOREIGN KEY(USER_NO) REFERENCES LOOKBOM_USER(USER_NO), --외래키
CONSTRAINT FK_QPRODUCTDETAILNO FOREIGN KEY(PRODUCT_DETAIL_NO) REFERENCES PRODUCT_DETAIL(PRODUCT_DETAIL_NO) --외래키
);

COMMENT ON COLUMN QNA.QNA_NO IS 'QNA번호';
COMMENT ON COLUMN QNA.QNA_CATEGORY IS '게시글분류';
COMMENT ON COLUMN QNA.QNA_TITLE IS '제목';
COMMENT ON COLUMN QNA.QNA_CONTENTS IS '내용';
COMMENT ON COLUMN QNA.QNA_WRITE_DATE IS '등록일';
COMMENT ON COLUMN QNA.QNA_SECRET IS '공개여부';
COMMENT ON COLUMN QNA.QNA_REPLY_CONTENTS IS '답변내용';
COMMENT ON COLUMN QNA.USER_NO IS '사용자번호'; 
COMMENT ON COLUMN QNA.PRODUCT_DETAIL_NO IS '상품상세번호';

--Q&A번호 SEQUENCE QNA_NO
DROP SEQUENCE SEQ_QNA_NO;

CREATE SEQUENCE SEQ_QNA_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;

-- Q&A SAMPLE INSERT
INSERT INTO QNA VALUES(SEQ_QNA_NO.NEXTVAL,'재입고','재입고언제쯤하나요','알고싶습니다',default,default,'내일입고입니다',1,1);



--1대1문의 TABLE QUESTION ----------------------------------------------
DROP TABLE QUESTION CASCADE CONSTRAINTS;

CREATE TABLE QUESTION (
QUESTION_NO NUMBER, 
QUESTION_CATEGORY VARCHAR2(20) NOT NULL,
QUESTION_TITLE VARCHAR2(200) NOT NULL,
QUESTION_CONTENTS VARCHAR2(3000),
QUESTION_WRITE_DATE DATE DEFAULT SYSDATE NOT NULL,
QUESTION_REPLY_CONTENTS VARCHAR2(1000),
QUESTION_IMAGE1 VARCHAR2(240),
QUESTION_IMAGE2 VARCHAR2(240),
QUESTION_IMAGE3 VARCHAR2(240),
USER_NO NUMBER, 
ORDER_NO NUMBER,

CONSTRAINT PK_QUESTIONNO PRIMARY KEY(QUESTION_NO), --기본키
CONSTRAINT FK_QSUSERNO FOREIGN KEY(USER_NO) REFERENCES LOOKBOM_USER(USER_NO), --외래키
CONSTRAINT FK_QSORDERNO FOREIGN KEY(ORDER_NO) REFERENCES PRODUCT_ORDER(ORDER_NO) --외래키
);

COMMENT ON COLUMN QUESTION.QUESTION_NO IS '1대1문의번호';
COMMENT ON COLUMN QUESTION.QUESTION_CATEGORY IS '게시글분류';
COMMENT ON COLUMN QUESTION.QUESTION_TITLE IS '제목';
COMMENT ON COLUMN QUESTION.QUESTION_CONTENTS IS '내용';
COMMENT ON COLUMN QUESTION.QUESTION_WRITE_DATE IS '등록일';
COMMENT ON COLUMN QUESTION.QUESTION_REPLY_CONTENTS IS '답변내용';
COMMENT ON COLUMN QUESTION.QUESTION_IMAGE1 IS '1대1문의이미지1';
COMMENT ON COLUMN QUESTION.QUESTION_IMAGE2 IS '1대1문의이미지2';
COMMENT ON COLUMN QUESTION.QUESTION_IMAGE3 IS '1대1문의이미지3';
COMMENT ON COLUMN QUESTION.USER_NO IS '사용자번호'; 
COMMENT ON COLUMN QUESTION.ORDER_NO IS '주문번호';

--1대1문의번호 SEQUENCE QUESTION_NO
DROP SEQUENCE SEQ_QUESTION_NO;

CREATE SEQUENCE SEQ_QUESTION_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;

-- 1대1문의 SAMPLE INSERT
INSERT INTO QUESTION VALUES(SEQ_QUESTION_NO.NEXTVAL,'반품문의','반품한이후로 반품비가 안들어오네요 확인부탁드려요','부탁드립니다',default,'확인후에 넣어드릴게요','C://RESOURCES/IMAGE1.JPG','C://RESOURCES/IMAGE2.JPG','C://RESOURCES/IMAGE3.JPG',1,1);



-- 공지사항 TABLE NOTICE-----------------------------------------------
DROP TABLE NOTICE CASCADE CONSTRAINTS;

CREATE TABLE NOTICE (
NOTICE_NO NUMBER, --기본키
NOTICE_TITLE VARCHAR2(200) NOT NULL,
NOTICE_CONTENTS VARCHAR2(3000),
NOTICE_WRITE_DATE DATE DEFAULT SYSDATE NOT NULL,
NOTICE_VIEWS NUMBER DEFAULT 0 NOT NULL,
NOTICE_IMAGE1 VARCHAR2(240),
NOTICE_IMAGE2 VARCHAR2(240),
NOTICE_IMAGE3 VARCHAR2(240),

CONSTRAINT PK_NOTICENO PRIMARY KEY(NOTICE_NO) --기본키
);

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '공지사항번호';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '제목';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENTS IS '내용';
COMMENT ON COLUMN NOTICE.NOTICE_WRITE_DATE IS '등록일';
COMMENT ON COLUMN NOTICE.NOTICE_VIEWS IS '조회수';
COMMENT ON COLUMN NOTICE.NOTICE_IMAGE1 IS '공지사항이미지1';
COMMENT ON COLUMN NOTICE.NOTICE_IMAGE2 IS '공지사항이미지2';
COMMENT ON COLUMN NOTICE.NOTICE_IMAGE3 IS '공지사항이미지3';

--공지사항번호 SEQUENCE NOTICE_NO
DROP SEQUENCE SEQ_NOTICE_NO;

CREATE SEQUENCE SEQ_NOTICE_NO
START WITH 1
INCREMENT BY 1
NOCYCLE     
NOCACHE;

-- 공지사항 SAMPLE INSERT
INSERT INTO NOTICE VALUES(SEQ_NOTICE_NO.NEXTVAL,'공지사항제목입니당','공지사항내용입니다',default,default,'C://RESOURCES/IMAGE1.JPG','C://RESOURCES/IMAGE2.JPG','C://RESOURCES/IMAGE3.JPG');



--저장---------------------------------------------------------------------------------------
COMMIT;