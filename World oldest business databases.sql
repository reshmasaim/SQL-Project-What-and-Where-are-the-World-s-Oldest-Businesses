use [World's Oldest Business];

select business as " Name oldest companies in the world" from businesses where year_founded in (select MIN(year_founded) from businesses);

--The oldest company in the world and the industry it belongs to
select business as "Oldest company" from businesses where 

--How many businesses were founded before 1000?
 select count(business) as "Business found before 1000" from businesses where year_founded<1000;

 --Which businesses were founded before 1000?
 select business as " Business name found before 1000" from businesses where year_founded<1000;

--Exploring the categories
select * from categories;

--Counting the categories
select COUNT(category) 
as "categories count" 
from categories;


--Oldest business by continent
select continent,year_founded
from countries inner join businesses
on countries.country_code=businesses.country_code
order by year_founded;

--Joining everything for further analysis

select * from businesses;
select * from categories;
select * from countries;

select [business],[year_founded],b.[category_code],co.[country_code],c.[category],[country],[continent]
from ((businesses b
inner join categories c on b.category_code=c.category_code)
inner join countries co on b.country_code=co.country_code);

--Counting categories by continent



--Filtering counts by continent and category



