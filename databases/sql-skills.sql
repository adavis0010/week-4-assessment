-- ARTIST --

insert into artist (name)
values ('POORSTACY');

insert into artist (name)
values ('Oliver Tree');

insert into artist (name)
values ('The Strokes');

select * from artist order by name limit 5

-- EMPLOYEE --

select (first_name), (last_name) from employee where city = 'Calgary'

select * from employee where reports_to = 2

select count(*) from employee where city = 'Lethbridge'

-- INVOICE --

select * from invoice where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select * from invoice where total > 5;

select * from invoice where total < 5;

select count(total) from invoice where total < 5;

select sum (total) from invoice;

-- JOIN QUERIES --

select *
from invoice_line join invoice
on invoice.invoice_id = invoice_line.invoice_id
where unit_price > .99;

select invoice_date, first_name, last_name
from customer join invoice
on invoice.customer_id = customer.customer_id;

select customer.first_name, customer.last_name, employee.first_name, employee.last_name
from customer join employee 
on customer.support_rep_id = employee.employee_id;

select album.title, artist.name
from album join artist
on album.artist_id = artist.artist_id;