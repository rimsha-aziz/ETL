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

-- Select "Country" from consumption
ALTER TABLE consumption 
RENAME COLUMN "Country" TO Country;

ALTER TABLE consumption 
RENAME COLUMN "Year" TO Year;

ALTER TABLE consumption 
RENAME COLUMN "Oil_terrawatt_hours" TO Oil_terrawatt_hours;

ALTER TABLE consumption 
RENAME COLUMN "Coal_terrawatt_hours" TO Coal_terrawatt_hours;

ALTER TABLE consumption 
RENAME COLUMN "Gas_terrawatt_hours" TO Gas_terrawatt_hours;

ALTER TABLE consumption 
RENAME COLUMN "Hydropower_terrawatt_hours" TO Hydropower_terrawatt_hours;

ALTER TABLE consumption
RENAME COLUMN "Nuclear_terrawatt_hours" TO Nuclear_terrawatt_hours;

ALTER TABLE consumption 
RENAME COLUMN "Solar_terrawatt_hours" TO Solar_terrawatt_hours;

ALTER TABLE consumption
RENAME COLUMN "Wind_terrawatt_hours" TO Wind_terrawatt_hours

ALTER TABLE consumption
RENAME COLUMN "Other_renewables_terrawatt_hours" TO Other_renewables_terrawatt_hours

Select "Country" from emissions
ALTER TABLE emissions
RENAME COLUMN "Country" TO Country;

ALTER TABLE emissions
RENAME COLUMN "Element" TO Element;

ALTER TABLE emissions
RENAME COLUMN "Item" TO Item;

ALTER TABLE emissions
RENAME COLUMN "Year" TO Year;

ALTER TABLE emissions
RENAME COLUMN "Unit" TO Unit;

ALTER TABLE emissions
RENAME COLUMN "Value" TO Value;


