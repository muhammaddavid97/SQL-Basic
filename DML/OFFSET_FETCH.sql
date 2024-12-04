/*
	- OFFSET and FETCH merupakan klausa Order By yang  memungkinkan kita untuk membatasi jumlah baris
	  yang ditampilkan.

	- Syntax perintah tersebut sebagai berikut :

	  ORDER BY column_list [ASC |DESC]
	  OFFSET offset_row_count {ROW | ROWS}
	  FETCH {FIRST | NEXT} fetch_row_count {ROW | ROWS} ONLY

	   - OFFSET => Perintah untuk menentukan jumlah baris yang dilewati 
	   - offset_row_count => Nilai yang bissa berupa variable, Konstanta, Parameter yang lebih besar atau sama dengan nol
	   - FETCH => Menentukan jumlah baris yang akan dikembalikan setelah perintah OFFSET diproses
	   - fetch_row_count => Nilai yang bisa berupa variable, Konstanta, Parameter yang lebih besar atau sama dengan satu

*/

-- mengambil semua baris dari products tabel dan mengurutkannya berdasarkan harga dan nama daftar

SELECT * 
FROM 
production.products 
ORDER BY list_price, product_name 
OFFSET 10 ROWS  
FETCH NEXT 10 ROWS ONLY 

-- mengambil 10 produk termahal dari productstabel
SELECT *
FROM production.products
ORDER BY list_price DESC
OFFSET 10 ROW
FETCH NEXT 10 ROWS ONLY
