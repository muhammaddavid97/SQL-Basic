/*
	- TOP berfungsi untuk membatasi jumlah atau persentasi dari record yang dikembalikan oleh suatu kueri.
	- Query TOP dapat digunakan dengan ORDER BY hal ini untuk memastikan data yang ditampilkan akurat.
	- Berikut syntax dari TOP :

		SELECT TOP (expression) [PERCENT]
        [WITH TIES]
        FROM 
         table_name
       ORDER BY 
        column_name;

	  - expression => menunjukan jumlah bilangan untuk menentukan jumlah record yang dibatasi, bilangan dapat berupa float untuk percent dan bilangan bulat.
	  - PERCENT => mengembalikan expression persen di baris pertama.
	  - WITH TIES => mengembalikan baris tambahan dengan nilai yang sesuai dengan baris terakhir dalam set hasil terbatas.
*/

-- mengembalikan 10 produk termahal dari production.productstabel
SELECT TOP 10 * 
FROM production.products
ORDER BY list_price DESC

-- menampilkan 5 jumlah data berdasarkan persentasi 
-- (5 * jumlah semua record / 100)
SELECT TOP 5 PERCENT * 
FROM production.products
ORDER BY list_price DESC

-- mengembalikan 10 produk termahal dari production.productstabel dengan WITH TIES
SELECT TOP 3 WITH TIES * 
FROM production.products
ORDER BY list_price DESC