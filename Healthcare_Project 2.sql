-- Healthcare_Project

use etl1;

select * from healthcare_sql;

-- Retrieve the names of all patients in the database

select name from healthcare_sql;

-- List the unique medical conditions present in the dataset

select distinct medical_condition from healthcare_sql;

-- Find the total number of doctors in the healthcare system

select count(distinct doctor) as total_doctors from healthcare_sql;

-- Retrieve the details of all female patients

select * from healthcare_sql where gender = 'female';

-- what is the average age of patients in the database

select avg(age) as average_age from healthcare_sql;

-- Identify the patients who have more than one medical condition

select name, count(distinct medical_condition) as condition_count from healthcare_sql group by name having condition_count>1;

-- List the names of all doctors

select distinct doctor from healthcare_sql;

-- Identify the most common medical condition among patients

select medical_condition, count(*) as condition_count from healthcare_sql group by medical_condition order by condition_count desc limit 1;

-- Find the patients who are older than 60 years and have diabetes

select name from healthcare_sql where age>60 and medical_condition='diabetes';

-- Calculate the total revenue generated by the healthcare system

select sum(billing_amount) as total_revenue from healthcare_sql;

-- Find the doctor with the oldest patient

SELECT Doctor FROM Healthcare_sql WHERE Age = (SELECT MAX(Age) FROM Healthcare_sql);

-- Calculate the average duration of medical visits

SELECT AVG(duration) AS Average_Duration FROM Healthcare_sql;

-- Give the names of patients whose name starts with A

select name from healthcare_sql where name like 'A%';

-- How many male and female patients are there in dataset

SELECT Gender, COUNT(*) AS Count FROM Healthcare_sql GROUP BY Gender;

-- how many patients are normal

SELECT COUNT(*) AS Normal_Patients FROM Healthcare_sql WHERE Test_Results = 'Normal';

-- how many patients are abnormal or Inconclusive

select count(*) as abnormal_Inconclusive_patients from healthcare_sql where test_results in ('abnormal','Inconclusive');

-- how many patients of blood group AB+ are there of age above 52

select count(*) as Patients_AB_Plus_Above_52 FROM Healthcare_sql where Blood_Type = 'AB+' AND Age > 52;

--  how many patients have paid the bill above 24890

Select count(*) as Patients_Bill_Above_24890 from Healthcare_sql where Billing_Amount > 24890;

-- what are the names of patients having Asthma

select name from healthcare_sql where medical_condition='Asthma';

-- how many patients have cancer

select count(*) as cancer_patients from healthcare_sql where medical_condition = 'Cancer';

-- what are the names and blood groups of patients admitted to room no. 292

select name, Blood_type from healthcare_sql where room_number=292;

-- how many males have Arthritis

select count(*) as males_with_arthritis from healthcare_sql where gender='male' and medical_condition='arthritis';

-- How many patients were admitted to Harris and Sons hospital.

select count(*) as Patients_Harris_and_sons from healthcare_sql where hospital ='Harris and sons';

-- what are the names of patients whose Insurance Provider are Cigna

select name from healthcare_sql where insurance_provider ='Cigna';

-- Name the Medical Condition having patients whose ages is greater than average age

select distinct medical_condition from healthcare_sql where age > (select avg(age) from healthcare_sql);


