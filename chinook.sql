/* select all records from employee table*/
SELECT * FROM Employee;

/* select all records from  employee where last name is King*/

SELECT * FROM Employee WHERE LASTNAME = 'King';

/*select all records where employee first is Andrew and reportsto is null*/

SELECT * FROM EMPLOYEE WHERE FIRSTNAME = 'Andrew' AND REPORTSTO  IS null;

/* select all albums in album table and sort result set in descending order by title */

select * from album order by title desc;


/* select first name from customer and sort result set in ascending order by city*/

select firstname from customer order by city asc;

/*  Insert two new records into Genre table Task – Insert two new records 
into Employee table Task – Insert two new records into Customer table*/

insert into genre values (12345, 'Nemar');

insert into genre values (21345, 'Ronaldo');

insert into employee values(123456, 'Amadou', 'Amir', 'software engineer', null, TO_DATE('10/10/1978','mm/dd/yyyy'), TO_DATE('7/2/2018', 'mm/dd/yyyy'),'6131 melody lane','dallas','tx','us','75231', null,null,null); 

insert into employee values(123457, 'Amadou', 'Hamid', 'software engineer', null, TO_DATE('10/10/1980', 'mm/dd/yyyy'), TO_DATE('7/2/2018', 'mm/dd/yyyy'),'6121 melody lane','dallas','tx','us','75231', null,null,null); 

