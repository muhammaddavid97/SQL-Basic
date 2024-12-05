/*
	- BEETWEEN merupakan operator yang berfungsi untuk menampilkan data berdasarkan rentang nilainya.
	- NOT BEETWEEN merupakan operator kebalikan dari BEETWEEN.
	- Berikut syntax operator BEETWEEN :

	  column | expression BETWEEN start_expression AND end_expression
	  
	  - column => menentukan column yang akan diuji rentang nilainya.
	  - start_ecpression => nilai awal dari rentang nilai yang akan dikembalikan.
	  - end_expression => nilai akhir dari rentang nilai yang akan dikembalikan.

*/

-- menemukan produk yang harga daftarnya berada antara 149,99 dan 199,99
SELECT list_price,  product_name
FROM production.products 
WHERE list_price BETWEEN 149.99 AND 199.99

-- mendapatkan produk yang harga daftarnya tidak berada dalam kisaran 149,99 dan 199,99
SELECT list_price,  product_name
FROM production.products 
WHERE list_price NOT BETWEEN 149.99 AND 199.99

-- mencari pesanan yang dilakukan pelanggan antara January 15, 2017dan January 17, 2017
SELECT *
FROM sales.orders 
WHERE order_date BETWEEN '2017-01-15' AND '2017-01-17'

