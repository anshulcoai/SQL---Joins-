create database publisher;
use publisher;
create table book(ID char(4),
					Title varchar(20), 
                    Publisher varchar(10));

create table Price(ID char(5), Price float);                    

describe book;

Insert into book values('A1','DBMS','BPB');
Insert into book values('A2','DS','BPB');
Insert into book values('A3','SAD','BPB');
Insert into book values('A4','IOT','BPB');

Insert into Price values('A1',540);
Insert into Price values('A2',350);
Insert into Price values('A3',380);
Insert into Price values('A4',440);
# ---------- INNER JOIN ------------------------
/* Returns records that have matching values in both table.
That is, value of the common field will be same.
*/

select book.title,price.Price
		from book Inner Join Price 
        on book.Id=Price.ID;
        
#----- Eqi Join --------
/*
When two tables are joined together using equality of values in one
 or more columns, it is equi join. The equality condition is
 put on the common column of the tables
 */
 select * from book, Price where book.ID=Price.ID;

# ----------- Natural Join -------------
/*
In this type of join, the comparison operator is always the
equality operator =, but only the equi join contains 2
identical columnsfrom the relation being joined. It is possible
to eliminate one of those 2 columns.An equi join with one of 2
identical columns eliminated is called a natural join
*/
select title, publisher, B.ID, Price
	from book B, Price P where B.ID = P.ID
    
# -------- Cross Join ------------------
/*
It returns all rows for all possible combinations of 2 tables.
It generates all the rows from the left table, which is then combined
with all the rows from the right table. This type of join
is also called as Cartesian Product(A*B)
*?
select * from book cross join Price;
# -------- Outer Join -----------------
# Left Outer Join(Left Join)
/*
Returns all records from the left table, and the matched 
records from the right table
The rows for which there is no matching row
 on right side, the result set will contain null
*/
select  book.title, Price.price from book Left Outer Join Price ON book.ID=Price.ID;
//-------------------- Right Outer Join ---------------------
/*
Returns all records from the left table, and the matched 
records from the right table

select book.title, Price.price from book
	right Outer Join Price
    ON book.ID=Price.ID;
// -------- Full Outer Join --------------
/*
Returns all records when there is a match in either left or
right table
*/





