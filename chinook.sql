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


insert into customer values(123, 'Toto', 'peanut', 'revature', null,null,null,null,null,null, null,'totopeanut@yahoo.com',null); 

insert into customer values(143, 'Toto', 'jellyfish', 'revature', null,null,null,null,null,null, null,'totojellyfish@yahoo.com',null); 


/* Update Aaron Mitchell in Customer table to Robert Walter Task – Update name of artist in the Artist table 
“Creedence Clearwater Revival” to “CCR”*/

update customer set firstname = 'Robert', lastname = 'Walter'  where firstname = 'Aaron' and lastname ='Mitchell';

update artist set name = 'CCR'  where name = 'Creedence Clearwater Revival';

/* Task – Select all invoices with a billing address like “T%”*/

select * from invoice where billingaddress like 'T%';

/* Select all invoices that have a total between 15 and 50 Task – Select all employees hired between 1st of June 2003 and 1st of March 2004 */

select * from invoice where total between 15 and 50;

select * from employee where hiredate between to_date('06/01/2003', 'mm/dd/yyyy') and to_date('03/01/2004', 'mm/dd/yyyy');

/*Task – Delete a record in Customer table where the name is Robert Walter (There may be constraints that rely on this, find out how to resolve them). */

alter table invoiceline drop constraint fk_invoicelineinvoiceid;
alter table invoiceline add constraint fk_invoicelineinvoiceid
 foreign key (invoiceid) references invoice(invoiceid) on delete cascade;
 
 alter table invoice drop constraint fk_invoicecustomerid;
alter table invoice add constraint fk_invoicecustomerid
 foreign key (customerid) references customer(customerid) on delete cascade;
 
 delete from customer where firstname='Robert' and lastname='Walter';
 
 
 /*  – Create a function that returns the current time. Task – 
 create a function that returns the length of a mediatype from the mediatype table*/


