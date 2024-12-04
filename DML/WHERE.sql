/*
	- WHERE berfungsi untuk melakukan proses filterisasi terhadap data yang ingin ditampilkan.
	- WHERE hanya akan menampilkan data dengan kondisi yang bernilai TRUE saja.
	- Berikut syntax lengkap WHERE :
	   
	  SELECT
		select_list
	  FROM
		table_name
	  WHERE
		search_condition;

	- search_condition => kondisi yang akan mengembalikan nilai TRUE, FALSE, UNKNOWN.
*/

-- mengambil produk dengan ID kategori 1
SELECT * 
FROM production.products
WHERE category_id = 1

--  menemukan produk yang termasuk dalam id kategori 1 dan model 2018
SELECT * 
FROM production.products
WHERE category_id = 1 AND model_year = 2018

-- menemukan produk dengan harga daftar lebih dari 300 dan model tahun 2018
SELECT *
FROM production.products
WHERE list_price > 300 AND model_year = 2018

-- menemukan produk yang memenuhi salah satu kondisi harga daftar lebih dari 3.000 atau model tahun 2018
SELECT *
FROM production.products
WHERE list_price > 3000 OR model_year = 2018

-- menemukan produk dengan harga daftar antara 1.899 dan 1.999,99
SELECT *
FROM production.products 
WHERE list_price BETWEEN 1899 AND 1999.99

-- menemukan produk dengan harga daftar 299,99, 466,99, atau 489,99.
SELECT  *
FROM production.products 
WHERE list_price IN (299.99, 466.99,  489.99)

--  menemukan produk yang namanya mengandung string Cruiser
SELECT *
FROM production.products
WHERE product_name LIKE '%Cruiser%'