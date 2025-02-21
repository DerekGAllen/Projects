SELECT *
FROM electric_vehicle_population_data;

SELECT `Clean Alternative Fuel Vehicle (CAFV) Eligibility`
FROM electric_vehicle_population_data;

ALTER TABLE electric_vehicle_population_data
CHANGE COLUMN `Clean Alternative Fuel Vehicle (CAFV) Eligibility` `(CAFV) Eligibility`
VARCHAR(255);

SELECT *
FROM electric_vehicle_population_data;

ALTER TABLE electric_vehicle_population_data
CHANGE COLUMN `Electric Range` `Electric_Range`
VARCHAR(255);

SELECT *
FROM electric_vehicle_population_data;

SELECT Make, Model, Electric_Range
FROM electric_vehicle_population_data
WHERE Electric_Range = 0;



ALTER TABLE electric_vehicle_population_data
CHANGE COLUMN `(CAFV) Eligibility` 
`CAFV_Eligibility` TEXT;

SELECT *
FROM electric_vehicle_population_data;

SELECT Make, Model
FROM electric_vehicle_population_data
WHERE CAFV_Eligibility = 'Not eligible due to low battery range'
GROUP BY Make, Model;

SELECT Make, Model, COUNT(*) AS vehicle_count
FROM electric_vehicle_population_data
WHERE CAFV_Eligibility = 'Not eligible due to low battery range'
GROUP BY Make, Model;

SELECT Make, Model, SUM(Electric_Range) AS total_vehicle_count
FROM electric_vehicle_population_data
WHERE CAFV_Eligibility = 'Not eligible due to low battery range'
GROUP BY Make, Model;

SELECT Make, Model, `Electric Utility`
FROM electric_vehicle_population_data
WHERE `Electric Utility` LIKE '%PACIFICORP%';

SELECT *
FROM electric_vehicle_population_data;

SELECT `2020 Census Tract`, LENGTH(`2020 Census Tract`) AS tract_length
FROM electric_vehicle_population_data;

SELECT 'Electric Vehicle Type', AVG('Base MSRP') AS avg_msrp
FROM electric_vehicle_population_data
GROUP BY 'Electric Vehicle Type';

SELECT `Electric Vehicle Type`, MAX(`Base MSRP`) AS max_msrp
FROM electric_vehicle_population_data
GROUP BY `Electric Vehicle Type`;

SELECT `Electric Vehicle Type`, MIN(`Base MSRP`) AS min_msrp
FROM electric_vehicle_population_data
GROUP BY `Electric Vehicle Type`;

SELECT `2020 Census Tract`, TRIM(`2020 Census Tract`) AS tract_length
FROM electric_vehicle_population_data;
