/*
	- IN adalah operator yang berfungsi untuk memeriksa berdasarkan nilai himpunan yaitu sekumpulan nilai dalam daftar.
	- IN akan memeriksa apakah nilai kolom yang difilter cocok dengan nilai himpunan.
	- NOT IN adalah kebalikan dari operator IN
	- Berikut syntax operator IN :

	   column | expression IN ( v1, v2, v3, ...)

	   - column => merepresentasikan nilai kolom yang akan diuji.
	   - daftar himpunan yang akan memeriksa nilai kolom, dimana nilai himpunan harus setipe dengan nilai kolom.

	- Menggunakan subquery untuk menampilkan nilai himpunan.
	- subquery akan dieksekusi terlebih dahulu kemudian mengeksekusi query luarnya.
		
		column | expression IN (subquery)
*/


-- menemukan produk yang harga daftarnya adalah salah satu nilai berikut: 89,99, 109,99, dan 159,99

SELECT product_name, list_price
FROM production.products 
WHERE list_price IN (89.99, 109.99, 159.99)

--  menemukan produk yang daftar harganya bukan salah satu dari harga 89,99, 109,99, dan 159,99

SELECT product_name, list_price
FROM production.products 
WHERE list_price NOT IN (89.99, 109.99, 159.99)

-- mengembalikan daftar nomor identifikasi produk dari produk yang terletak di ID toko 1 dan memiliki kuantitas lebih besar atau sama dengan 30

SELECT list_price, product_name
FROM production.products 
WHERE product_id IN (
	SELECT product_id
	FROM production.stocks
	WHERE store_id = 1 AND quantity >= 30
)