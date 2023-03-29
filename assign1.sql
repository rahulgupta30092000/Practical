use assignment1day2



--Employee EMPLOYEE_ID FIRST_NAME LAST_NAME SALARY JOINING_DATE DEPARTMENT
drop table Employee
create table Employee(
EMPLOYEE_ID INT NOT NULL UNIQUE,
FIRST_NAME VARCHAR(20) NOT NULL,
LAST_NAME VARCHAR(20) NOT NULL,
SALARY INT NOT NULL,
JOINING_DATE DATETIME NOT NULL,
DEPARTMENT VARCHAR(20) NOT NULL,
PHONE_NUMBER BIGINT NOT NULL,
DOB DATE
)
insert into Employee values(1 ,'John', 'Abraham',1000000 ,'01-JAN-13 12:00:00 ','Banking',7484842390,'20-JAN-2000')
insert into Employee values(2 ,'Michael', 'Clarke',800000 ,'01-JAN-13 7:00:00 AM', 'Insurance',7481240090,'20-SEP-1990')
insert into Employee values(3, 'Roy' ,'Thomas', 700000 ,'01-FEB-13 12:00:00 AM', 'Banking',7484900090 ,'20-FEB-1995')
insert into Employee values(4, 'Tom', 'Jose', 600000 ,'01-FEB-13 12:00:00 AM',' Insurance',7484670090 ,'30-DEC-1997')
insert into Employee values(5 ,'Jerry',' Pinto', 650000 ,'01-FEB-13 12:00:00 AM' ,'Insurance' ,7484840990,'10-JAN-1975')
insert into Employee values( 6, 'Philip',' Mathew', 750000 ,'01-JAN-13 12:00:00 AM','Services'  ,7484110090,'11-JAN-2000')
insert into Employee values(7 ,'TestName1','123', 650000 ,'01-JAN-13 12:00:00 AM','Services',7484812290,'1-JAN-1986')
insert into Employee values(8 ,'TestName2', 'Lname%', 600000 ,'01-FEB-13 12:00:00 AM', 'Insurance',9184840090,'4-JAN-1990')
insert into Employee values(9 ,'TestName3','1235', 650000 ,'07-MAY-1987 12:00:00 AM','Services',8984840090,'5-JAN-1991')
insert into Employee values(10 ,'TestName4', 'Lnamefg%', 600000 ,'01-JULY-13 5:00:00 AM','Banking',9987840090,'6-JAN-1990')
select * from Employee

select FIRST_NAME,LAST_NAME from Employee

select FIRST_NAME As Employee_NAME from Employee

select * from Employee where FIRST_NAME='John'

select * from Employee where FIRST_NAME in('John','Roy')

select * from Employee where FIRST_NAME not in('John','Roy')

select * from Employee where FIRST_NAME like 'J%'

select * from Employee where FIRST_NAME like '%o%'

select * from Employee where SALARY  between 500000 and 800000

select DISTINCT DEPARTMENT from Employee

select top 2 SALARY from Employee


with temp_Employee AS(select * from Employee where SALARY  between 500000 and 800000)

select AVG(SALARY) AS AvgSalary from temp_Employee


select * from Employee where SALARY  between 500000 and 800000

select * from Employee where LAST_NAME like '%[%]%'

select * from (select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,JOINING_DATE,DEPARTMENT ,SALARY,SALARY * 0.1 AS INCENTIVE from Employee ) As INCENTIVE_TABLE  where INCENTIVE>=100000