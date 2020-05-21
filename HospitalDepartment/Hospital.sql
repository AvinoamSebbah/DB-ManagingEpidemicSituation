CREATE TABLE hospital
(
  name VARCHAR(30) NOT NULL,
  hospital_code INT NOT NULL,
  city INT NOT NULL,
  capcity NUMERIC(1) NOT NULL,
  stock INT NOT NULL,
  PRIMARY KEY (hospital_code)
);

CREATE TABLE department
(
  name VARCHAR(20) NOT NULL,
  dep_num INT NOT NULL,
  hospital_code INT NOT NULL,
  PRIMARY KEY (dep_num),
  FOREIGN KEY (hospital_code) REFERENCES hospital(hospital_code)
);

CREATE TABLE room
(
  type VARCHAR(20) NOT NULL,
  room_num INT NOT NULL,
  capcity NUMERIC(1) NOT NULL,
  dep_num INT NOT NULL,
  PRIMARY KEY (room_num),
  FOREIGN KEY (dep_num) REFERENCES department(dep_num)
);

CREATE TABLE patient
(
  condition INT NOT NULL,
  id INT NOT NULL,
  age INT NOT NULL,
  address INT NOT NULL,
  contact INT NOT NULL,
  phone_num INT NOT NULL,
  room_num INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (room_num) REFERENCES room(room_num)
);
