
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




