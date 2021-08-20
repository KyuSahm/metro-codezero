-- create tables for ai project on subway crowdedness
drop table station_timetable;
drop table train;
drop table indoor_picture;
drop table subway_line;
drop table subway_line_detail;
drop table station;

-- station with detailed information
create table station
(
    id      NVARCHAR(50) NOT NULL,            -- station id
    ename   VARCHAR(100) NULL,                -- english name
    phone   VARCHAR(15) NULL,                 -- phone number
    address NVARCHAR(200)  NULL,              -- address
    x_coord INT NULL,                         -- x coord of station in subway map
    y_coord INT NULL,                         -- y coord of station in subway map
    PRIMARY KEY(id))
ENGINE = InnoDB;

-- subway line with detailed information
create table subway_line_detail
(
    line       INT NOT NULL,
    subline    INT NOT NULL,
    name       NVARCHAR(12) NOT NULL,
    PRIMARY KEY(line, subline))
ENGINE = InnoDB;

-- subway line circuit information
create table subway_line
(
    line            INT NOT NULL,     -- main line number(1, 2, 3, 4....  
    subline         INT NOT NULL,     -- sub line number(0, 1, 2).  	 
    station_id      NVARCHAR(50) NOT NULL, -- station id
    seq             INT NOT NULL,          -- sequence 
    prev_station_id NVARCHAR(50) NULL, -- previous station id
    next_station_id NVARCHAR(50) NULL, -- next station id
    external_code   VARCHAR(10) NOT NULL,   -- external station code to find information with open api
    PRIMARY KEY(line, subline, station_id),
    FOREIGN KEY(line, subline) REFERENCES subway_line_detail(line, subline) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(station_id) REFERENCES station(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(prev_station_id) REFERENCES station(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(next_station_id) REFERENCES station(id) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- indoor picture data
create table indoor_picture
(
    id INT NOT NULL,
    picture MEDIUMBLOB NULL,
    PRIMARY KEY(id))
ENGINE = InnoDB;

-- train with detailed information
create table train
(
    line       INT NOT NULL,
    subline    INT NOT NULL,
    id         INT NOT NULL,            -- train id
    station_id NVARCHAR(50) NULL,       -- current station id
    start_station_id NVARCHAR(50) NULL, -- start station id
    end_station_id NVARCHAR(50) NULL,   -- end
    picture_id1 INT NULL,
    picture_id2 INT NULL,
    picture_id3 INT NULL,
    picture_id4 INT NULL,
    picture_id5 INT NULL,
    picture_id6 INT NULL,
    picture_id7 INT NULL,
    picture_id8 INT NULL,
    picture_id9 INT NULL,
    picture_id10 INT NULL,
    updated CHAR(1),         -- 'y' or 'n'
    crowdedness1 INT NULL,
    crowdedness2 INT NULL,
    crowdedness3 INT NULL,
    crowdedness4 INT NULL,
    crowdedness5 INT NULL,
    crowdedness6 INT NULL,
    crowdedness7 INT NULL,
    crowdedness8 INT NULL,
    crowdedness9 INT NULL,
    crowdedness10 INT NULL,
    PRIMARY KEY(line, subline, id),
    FOREIGN KEY(line, subline) REFERENCES subway_line_detail(line, subline) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(station_id) REFERENCES station(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(start_station_id) REFERENCES station(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(end_station_id) REFERENCES station(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id1) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id2) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id3) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id4) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id5) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id6) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id7) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id8) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id9) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(picture_id10) REFERENCES indoor_picture(id) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- station time table
create table station_timetable
(
    line             INT NOT NULL,          -- main line number(1, 2, 3, 4....  
    subline          INT NOT NULL,          -- sub line number(0, 1, 2).  	 
    station_id       NVARCHAR(50) NOT NULL, -- station id
    direction        VARCHAR(10) NOT NULL,  -- dirction (cw, ccw, up, down)
    arrivetime       CHAR(8) NOT NULL,      -- arrval time
    lefttime         CHAR(8) NULL,          -- left time
    orig_station_id  NVARCHAR(50) NULL,     -- orig station id
    dest_station_id  NVARCHAR(50) NULL,     -- dest station id
    train_id         INT NOT NULL,          -- train id
    express_yn       CHAR(1) NULL,          -- express 'G' or 'N'
    daytype          CHAR(1) NOT NULL,      -- '1': Normal Day, '2': Saturday '3": Holiday or Sunday
    PRIMARY KEY(line, subline, station_id, direction, arrivetime),
    FOREIGN KEY(line, subline, station_id) REFERENCES subway_line(line, subline, station_id) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE = InnoDB;