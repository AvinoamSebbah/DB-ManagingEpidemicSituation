CREATE TABLE City

(

  name VARCHAR NOT NULL,

  city_id INT NOT NULL,

  number_of_residents NUMERIC NOT NULL,

  current_state INT NOT NULL,

  PRIMARY KEY (city_id)

);



CREATE TABLE Population_inspection_companies

(

  examination_type CHAR NOT NULL,

  capacity CHAR NOT NULL,

  id INT NOT NULL,

  city_id INT NOT NULL,

  PRIMARY KEY (id, city_id),

  FOREIGN KEY (city_id) REFERENCES City(city_id)

);



CREATE TABLE people

(

  id INT NOT NULL,

  first_name VARCHAR(20) NOT NULL,

  address VARCHAR(20) NOT NULL,

  last_name VARCHAR(20) NOT NULL,

  phone_number INT NOT NULL,

  Quarantined CHAR NOT NULL,

  waiting_examination CHAR NOT NULL,

  city_id INT NOT NULL,

  pic_id INT NOT NULL,

  id INT NOT NULL,

  PRIMARY KEY (id),

  FOREIGN KEY (city_id) REFERENCES City(city_id),

  FOREIGN KEY (pic_id, id) REFERENCES Population_inspection_companies(id, city_id)

);
