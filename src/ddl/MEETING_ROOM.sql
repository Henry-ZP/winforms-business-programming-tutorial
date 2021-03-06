CREATE TABLE MEETING_ROOM
(
    ID                             NUMBER NOT NULL,
    LOCATION_ID                    NUMBER NOT NULL,
    NAME                           NVARCHAR2(20) NOT NULL,
    CONSTRAINT PK_MEETING_ROOM PRIMARY KEY (ID),
    CONSTRAINT FK_MEETING_ROOM_LOCATION FOREIGN KEY (LOCATION_ID) REFERENCES LOCATION (ID),
    CONSTRAINT UK_MEETING_ROOM UNIQUE (LOCATION_ID, NAME)
)
/
COMMENT ON TABLE MEETING_ROOM IS '会議室'
/
COMMENT ON COLUMN MEETING_ROOM.ID IS 'ID'
/
COMMENT ON COLUMN MEETING_ROOM.LOCATION_ID IS '場所ID'
/
COMMENT ON COLUMN MEETING_ROOM.NAME IS '名称'
/
