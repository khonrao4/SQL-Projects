-- Titanic Project 3

use etl1;

-- Select all columns for all passengers in the Titanic dataset.

select * from titanic_sql;

-- Display the number of passengers in each class (1st, 2nd, 3rd).

select pclass, count(*) as numberofpassengers from titanic_sql group by pclass;

--  Find the number of male and female passengers.

select sex, count(*) as numberofpassengers from titanic_sql group by sex;

-- Display the names of passengers who survived.

select name from titanic_sql where survived='survived';

-- Find the average age of passengers.

select avg(age) as Average_age from titanic_sql;

-- List the names and ages of passengers who were younger than 18.

select name, age from titanic_sql where age<18;

--  Display the number of passengers in each embarkation port (C, Q, S).

select Embarked, count(*) as Numberofpassengers from titanic_sql group by Embarked;

-- Find the highest fare paid by any passenger.

select max(fare) as Highestfare from titanic_sql;

-- List the average age of passengers for each class.

select pclass, avg(age) as Average_age from titanic_sql group by pclass;

-- Display the passenger names and ages for those who survived and were in 1st class.

select name, age from titanic_sql where survived='survived' and pclass=1;

--  Find the number of passengers who paid more than 50 for their ticket.

select count(*) as Numberofpassengers from titanic_sql where fare>50;

-- List the names of passengers who did not survive and were in 3rd class. 

select name from titanic_sql where survived='Died' and pclass=3;

-- Find the number of passengers with missing values in the "Age" column. 

select count(*) as NumberofPassenger from titanic_sql where age is Null;

-- Display the passenger names and ages for those who embarked at port 'S' and survived.

select name,age from titanic_sql where Embarked='S' and survived='Survived';

-- Calculate the total number of passengers on board.

select count(*) as Totalpassengers from titanic_sql;

-- List the average fare for each class.

select pclass, avg(fare) as Averagefare from titanic_sql group by pclass;

--  Display the passenger names and ages for those with a known age and a fare greater than 100.

select name, age from titanic_sql where age is not null and fare>100;

-- Find the percentage of passengers who survived.

select (count(*) * 100.0/ (select count(*) from titanic_sql)) as SurvivalPercentage from titanic_sql where survived='survived';

-- List the names of passengers who were in 2nd class and had a fare less than 20.

select name from titanic_sql where pclass=2 and fare<20;

-- Display the passenger names and ages for those who did not survive and were in 1st class.

select name, age from titanic_sql where survived='Died' and pclass=1;

--  Find the number of passengers for each combination of class and gender.

select pclass, sex , count(*) as Numberofpassengers from titanic_sql group by pclass, sex;

-- List the names of passengers who survived and were in 3rd class with an age less than 20.

select name from titanic_sql where survived='survived' and pclass=3 and age<20;

-- Display the passenger names for those with the name starting with 'Mr.'

select name from titanic_sql where name like '%, Mr.%';

--  Find the average age of male and female passengers. 

select sex, avg(age) as Average_age from titanic_sql group by sex;

-- List the names of passengers who paid the highest fare.

select name from titanic_sql where fare= (select max(fare) from titanic_sql);

--  Find the number of passengers for each embarkation port and class.

select embarked, pclass, count(*) as Numberofpassengers from titanic_sql group by Embarked, Pclass;

-- Display the passenger names and ages for those who survived and paid more than 200 for their ticket.

select name, age from titanic_sql where survived='survived' and fare>200;

-- Find the average age of passengers who survived and those who did not.

select survived, avg(age) as AverageAge from titanic_sql group by survived;

-- List the names of passengers who were in 1st class and had an age greater than 50.

select name from titanic_sql where pclass = 1 and age>50;

-- Display the passenger names for those with the name ending with 'sson'

select name from titanic_sql where name like '%sson';


