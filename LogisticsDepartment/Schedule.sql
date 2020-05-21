CREATE TABLE Schedule
(
  ID NUMERIC(6) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Event
(
  ID NUMERIC(6) NOT NULL,
  StartTime DATE NOT NULL,
  EndTime DATE NOT NULL,
  Location VARCHAR(100) NOT NULL,
  Description VARCHAR(200) NOT NULL,
  ScheduleID NUMERIC(6) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ScheduleID) REFERENCES Schedule(ID)
);