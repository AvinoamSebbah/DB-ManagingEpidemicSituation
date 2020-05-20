CREATE TABLE Courier
(
  Company_Name VARCHAR(20) NOT NULL,
  Area VARCHAR(20) NOT NULL,
  Inventory INT NOT NULL,
  PRIMARY KEY (Company_Name)
);

CREATE TABLE Medical_equipment_manufacturing_companies
(
  Manufacturing_date DATE NOT NULL,
  Product_Name VARCHAR(20) NOT NULL,
  Company_Name VARCHAR(20) NOT NULL,
  Company_address VARCHAR(20) NOT NULL,
  PRIMARY KEY (Company_Name),
  UNIQUE (Company_address)
);

CREATE TABLE Public
(
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Name)
);

CREATE TABLE supermarket_chain
(
  Inventory INT NOT NULL,
  Area INT NOT NULL,
  Company_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Company_Name)
);

CREATE TABLE Hospital
(
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Name)
);

CREATE TABLE Delivered_to-
(
  Company_Name VARCHAR(20) NOT NULL,
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Company_Name, Name),
  FOREIGN KEY (Company_Name) REFERENCES Courier(Company_Name),
  FOREIGN KEY (Name) REFERENCES Public(Name)
);

CREATE TABLE Transferred_to-
(
  Company_Name VARCHAR(20) NOT NULL,
  Company_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Company_Name, Company_Name),
  FOREIGN KEY (Company_Name) REFERENCES Courier(Company_Name),
  FOREIGN KEY (Company_Name) REFERENCES supermarket_chain(Company_Name)
);

CREATE TABLE Medical_Inventory
(
  Name VARCHAR(20) NOT NULL,
  Inventory INT NOT NULL,
  Importer VARCHAR(20) NOT NULL,
  Product_ID VARCHAR(20) NOT NULL,
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Name),
  FOREIGN KEY (Name) REFERENCES Hospital(Name)
);

CREATE TABLE Manufacture_to-
(
  Company_Name VARCHAR(20) NOT NULL,
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Company_Name, Name),
  FOREIGN KEY (Company_Name) REFERENCES Medical_equipment_manufacturing_companies(Company_Name),
  FOREIGN KEY (Name) REFERENCES Medical_Inventory(Name)
);
