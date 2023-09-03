-- Query 1: Rata-rata umur customer jika dilihat dari marital statusnya
select "Marital Status", avg(age) as average_age
from customer c
where  trim ("Marital Status") <> ''
group by "Marital Status";

-- Query 2: Rata-rata umur customer berdasarkan gender nya
select "gender", avg(age) as average_age
from customer c
group by "gender";

-- Query 3: Store dengan total quantity terbanyak
select s.storename, sum(t.qty) as total_quantity
from store as s
join transaction as t on s.storeid = t.storeid
group by s.storename
order by total_quantity desc;

-- Query 4: Nama produk terlaris dengan total amount terbanyak
select p."Product Name", sum(t.totalamount) as total_amount
from product as p
join transaction as t on p.productid = t.productid
group by p."Product Name"
order by total_amount desc;


