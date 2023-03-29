use assignment1day2
select * from Employee

--1. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column 
--an appropriate label. Sort the results by the employees' first names

select FIRST_NAME, len(FIRST_NAME) AS NAME_LENGTH from Employee where FIRST_NAME like '[AJM]%' order by FIRST_NAME

--2.Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY

select FIRST_NAME, SALARY ,CONCAT('$',RIGHT(REPLICATE('',10)+CAST(SALARY AS VARCHAR(10)),10)) AS SALARY_LABEL from Employee

--3. Write a query to display the employees with their code, first name, last name and hire date who hired either on seventh day of any month or seventh month in any year

select EMPLOYEE_ID, FIRST_NAME,LAST_NAME,JOINING_DATE from EMPLOYEE where DAY(JOINING_DATE)=7 or MONTH(JOINING_DATE)=7

--4. Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position. 

select FIRST_NAME ,LEN(FIRST_NAME) AS NAME_LENGTH from EMPLOYEE WHERE SUBSTRING(LAST_NAME,3,1)='c';

--5.Write a query to extract the last 4 character of phone numbers. 

select RIGHT(PHONE_NUMBER,4) AS LAST_4_DIGITS from EMPLOYEE  
--ANOTHER METHOD ---select SUBSTRING(CAST(PHONE_NUMBER AS VARChAR(20)),7,4) AS LAST_4_DIGITS from EMPLOYEE


--6. Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'.

update Employee set PHONE_NUMBER=REPLACE(PHONE_NUMBER,'124','999')
select * from Employee


--7. Write a query to calculate the age in year

select FIRST_NAME ,DATEDIFF(YEAR,DOB,GETDATE()) AS AGE FROM Employee

--8. Write a query to get the distinct Mondays from hire_date in employees tables. 

select * from Employee

--9.Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'

select FIRST_NAME , JOINING_DATE FROM EMPLOYEE   where JOINING_DATE between '1987-06-01' and '1987-07-30'

-- 10. Write a query to display the current date in the following format. 11. Sample output : 12:00 AM Sep 5, 2014 


select FORMAT(GETDATE(),'HH:MM tt MMM dd, yyyy') as CURR_DATE;

--12. Write a query to get the firstname, lastname who joined in the month of June

select FIRST_NAME , LAST_NAME from Employee where DATENAME(month,JOINING_DATE)='JANUARY';


--13.Write a query to get employee ID, last name, and date of first salary of the employees. 

select * from EMPLOYEE
select EMPLOYEE_ID,LAST_NAME,;


--14. Write a query to get first name, hire date and experience of the employees. 

select FIRST_NAME ,JOINING_DATE , year(GETDATE())-YEAR(JOINING_DATE) AS EXPERIENCE from EMPLOYEE
select * from EMPLOYEE

--15. Write a query to get first name of employees who joined in 1987.
select FIRST_NAME ,YEAR(JOINING_DATE) AS JOIN_YEAR FROM EMPLOYEE WHERE YEAR(JOINING_DATE)=1987

--Write a query to rank employees based on their salary for a month
select salary/12 as sal from EMployee

select FIRST_NAME,SALARY ,DENSE_RANK() OVER(ORDER BY SALARY/12  desc ) AS RANKfun FROM EMPLOYEE

--Select 4th Highest salary from employee table using ranking function


select FIRST_NAME from Employee