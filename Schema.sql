DROP TABLE Emissions;
CREATE TABLE Emissions (
  Index INT NOT NULL,
  Country VARCHAR PRIMARY KEY NOT NULL ,
  Element VARCHAR NOT NULL,
  Item VARCHAR NOT NULL,
  Year INT,
  Unit VARCHAR,
  Value FLOAT);

DROP TABLE Consumption;
CREATE TABLE Consumption (
	Country VARCHAR PRIMARY KEY NOT NULL,
	Year INT,
	Oil_terrawatt_hours FLOAT, 
	Coal_terrawatt_hours FLOAT,
	Gas_terrawatt_hours FLOAT,
	Hydropower_terrawatt_hours FLOAT,
	Nuclear_terrawatt_hours FLOAT,
	Solar_terrawatt_hours FLOAT,
	Wind_terrawatt_hours FLOAT,
	Other_renewables_terawatt_hours FLOAT);