<<<<<<< HEAD

DROP TABLE emissions;
CREATE TABLE emissions (
  country VARCHAR,
  element VARCHAR NOT NULL,
  item VARCHAR NOT NULL,
  year INT,
  unit VARCHAR,
  value FLOAT);
  
SELECT * FROM emissions;


DROP TABLE consumption;
CREATE TABLE consumption (
	country VARCHAR ,
	year INT,
	oil_terrawatt_hours FLOAT, 
	coal_terrawatt_hours FLOAT,
	gas_terrawatt_hours FLOAT,
	hydropower_terrawatt_hours FLOAT,
	nuclear_terrawatt_hours FLOAT,
	solar_terrawatt_hours FLOAT,
	wind_terrawatt_hours FLOAT,
	other_renewables_terawatt_hours FLOAT);

SELECT * FROM consumption c;

SELECT e."country",e."year",e."item",e."element",e."unit",e."value",c."oil_terrawatt_hours",c."coal_terrawatt_hours",
c."gas_terrawatt_hours",c."hydropower_terrawatt_hours",c."nuclear_terrawatt_hours",
c."solar_terrawatt_hours",c."wind_terrawatt_hours",c."other_renewables_terawatt_hours"
FROM emissions e
LEFT JOIN consumption c ON c."country" = e."country"
WHERE e."country" = 'Canada';

SELECT * FROM Emissions
WHERE "country" = 'Canada';




=======
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
>>>>>>> 49464f1d3dc8ccc76419452d2035b4cf76a4f315
