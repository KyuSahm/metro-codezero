-- Create tables for AI Project on Subway Crowdedness
DROP TABLE STATION_TIMETABLE;
DROP TABLE TRAIN;
DROP TABLE INDOOR_PICTURE;
DROP TABLE SUBWAY_LINE;
DROP TABLE SUBWAY_LINE_DETAIL;
DROP TABLE STATION;

-- 역 정보
CREATE TABLE STATION
(
    ID      NVARCHAR2(50) PRIMARY KEY,         -- 역ID(한글)
    ENAME   VARCHAR2(100),                     -- 영어 역명
    Phone   VARCHAR2(15),                      -- 전화번호
    ADDRESS NVARCHAR2(200)                     -- 주소   
);

-- 지하철 노선 상세 정보
CREATE TABLE SUBWAY_LINE_DETAIL
(
    LINE       NUMBER(2),
    SUBLINE    NUMBER(2),
    NAME       NVARCHAR2(12),
    CONSTRAINT SUBWAY_LINE_DETAIL_PK PRIMARY KEY(LINE, SUBLINE)
);

-- 지하철 노선
CREATE TABLE SUBWAY_LINE
(
    LINE            NUMBER(2),     -- 본선 Number(1, 2, 3, 4....  
    SUBLINE         NUMBER(2),     -- 지선 Number(1, 2).  	 
    STATION_ID      NVARCHAR2(50), -- 역 ID
    PREV_STATION_ID NVARCHAR2(50), -- 이전 역 ID
    NEXT_STATION_ID NVARCHAR2(50), -- 다음 역 ID
    EXTERNAL_CODE   VARCHAR(10),   -- 외부역 코드 
    CONSTRAINT SUBWAY_LINE_PK PRIMARY KEY(LINE, SUBLINE, STATION_ID),
    CONSTRAINT SUBWAY_LINE_FK_1 FOREIGN KEY(LINE, SUBLINE) REFERENCES SUBWAY_LINE_DETAIL(LINE, SUBLINE),
    CONSTRAINT SUBWAY_LINE_FK_2 FOREIGN KEY(STATION_ID) REFERENCES STATION(ID),
    CONSTRAINT SUBWAY_LINE_FK_3 FOREIGN KEY(PREV_STATION_ID) REFERENCES STATION(ID),
    CONSTRAINT SUBWAY_LINE_FK_4 FOREIGN KEY(NEXT_STATION_ID) REFERENCES STATION(ID)
);

-- 내부 사진 테이블
CREATE TABLE INDOOR_PICTURE
(
    ID      NUMBER(4),
    PICTURE BLOB,
    CONSTRAINT INDOOR_PICTURE_PK PRIMARY KEY(ID)
);

-- 지하철 Train 정보
CREATE TABLE TRAIN
(
    LINE       NUMBER(2),
    SUBLINE    NUMBER(2),
    ID         NUMBER(5),           -- TRAIN ID
    STATION_ID NVARCHAR2(50),       -- 현재 역 위치 정보
    START_STATION_ID NVARCHAR2(50), -- 출발역
    END_STATION_ID NVARCHAR2(50),   -- 종착역
    PICTURE_ID_1 NUMBER(4),
    PICTURE_ID_2 NUMBER(4),
    PICTURE_ID_3 NUMBER(4),
    PICTURE_ID_4 NUMBER(4),
    PICTURE_ID_5 NUMBER(4),
    PICTURE_ID_6 NUMBER(4),
    PICTURE_ID_7 NUMBER(4),
    PICTURE_ID_8 NUMBER(4),
    PICTURE_ID_9 NUMBER(4),
    PICTURE_ID_10 NUMBER(4),
    CROWDEDNESS_1 NUMBER(1),
    CROWDEDNESS_2 NUMBER(1),
    CROWDEDNESS_3 NUMBER(1),
    CROWDEDNESS_4 NUMBER(1),
    CROWDEDNESS_5 NUMBER(1),
    CROWDEDNESS_6 NUMBER(1),
    CROWDEDNESS_7 NUMBER(1),
    CROWDEDNESS_8 NUMBER(1),
    CROWDEDNESS_9 NUMBER(1),
    CROWDEDNESS_10 NUMBER(1),
    CONSTRAINT TRAIN_PK PRIMARY KEY(LINE, SUBLINE, ID),
    CONSTRAINT TRAIN_FK_1 FOREIGN KEY(LINE, SUBLINE) REFERENCES SUBWAY_LINE_DETAIL(LINE, SUBLINE),
    CONSTRAINT TRAIN_FK_2 FOREIGN KEY(STATION_ID) REFERENCES STATION(ID),
    CONSTRAINT TRAIN_FK_3 FOREIGN KEY(START_STATION_ID) REFERENCES STATION(ID),
    CONSTRAINT TRAIN_FK_4 FOREIGN KEY(END_STATION_ID) REFERENCES STATION(ID),
    CONSTRAINT TRAIN_FK_PICTURE_1 FOREIGN KEY(PICTURE_ID_1) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_2 FOREIGN KEY(PICTURE_ID_2) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_3 FOREIGN KEY(PICTURE_ID_3) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_4 FOREIGN KEY(PICTURE_ID_4) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_5 FOREIGN KEY(PICTURE_ID_5) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_6 FOREIGN KEY(PICTURE_ID_6) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_7 FOREIGN KEY(PICTURE_ID_7) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_8 FOREIGN KEY(PICTURE_ID_8) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_9 FOREIGN KEY(PICTURE_ID_9) REFERENCES INDOOR_PICTURE(ID),
    CONSTRAINT TRAIN_FK_PICTURE_10 FOREIGN KEY(PICTURE_ID_10) REFERENCES INDOOR_PICTURE(ID)
);

-- 지하철역 TIME TABLE
CREATE TABLE STATION_TIMETABLE
(
    LINE              NUMBER(2),     -- 본선 Number(1, 2, 3, 4....  
    SUBLINE           NUMBER(2),     -- 지선 Number(1, 2).  	 
    STATION_ID        NVARCHAR2(50), -- 역 ID
    DIRECTION         VARCHAR(10),   -- 방향(CW, CCW, UP, DOWN)
    ARRIVETIME        CHAR(8),       -- 도착시간
    LEFTTIME          CHAR(8),       -- 출발시간
    ORIG_STATION_ID   NVARCHAR2(50), -- 출발역 ID        
    DEST_STATION_ID   NVARCHAR2(50), -- 종착역 ID
    TRAIN_ID          NUMBER(5),     -- 열차 ID
    EXPRESS_YN        CHAR(1),       -- 고속 여부
    CONSTRAINT STATION_TIMETABLE_PK PRIMARY KEY(LINE, SUBLINE, STATION_ID, DIRECTION, ARRIVETIME),  
    CONSTRAINT STATION_TIMETABLE_FK FOREIGN KEY(LINE, SUBLINE, STATION_ID) REFERENCES SUBWAY_LINE(LINE, SUBLINE, STATION_ID)
);
