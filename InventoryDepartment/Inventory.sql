CREATE TABLE Medical_Inventory
(
  Name_Of_Product VARCHAR(20) NOT NULL,
  Inventory INT NOT NULL,
  Importer VARCHAR(20) NOT NULL,
  Product_ID VARCHAR(20) NOT NULL,
  PRIMARY KEY (Name_Of_Product)
);

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

CREATE TABLE Hospital
(
  Hospital_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Hospital_Name)
);

CREATE TABLE Manufacture_to-
(
  Company_Name VARCHAR(20) NOT NULL,
  Name_Of_Product VARCHAR(20) NOT NULL,
  PRIMARY KEY (Company_Name, Name_Of_Product),
  FOREIGN KEY (Company_Name) REFERENCES Medical_equipment_manufacturing_companies(Company_Name),
  FOREIGN KEY (Name_Of_Product) REFERENCES Medical_Inventory(Name_Of_Product)
);

CREATE TABLE Delivered_to-
(
  Company_Name VARCHAR(20) NOT NULL,
  Hospital_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Company_Name, Hospital_Name),
  FOREIGN KEY (Company_Name) REFERENCES Courier(Company_Name),
  FOREIGN KEY (Hospital_Name) REFERENCES Hospital(Hospital_Name)
);
