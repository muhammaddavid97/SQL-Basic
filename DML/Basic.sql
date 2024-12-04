/*
 - SELECT adalah perintah yang digunakan untuk menampilkan hasil didalam SQL
 - SELECT juga dapat digunakan untuk menampilkan data dari suatu table.
 - Untuk mengambil suatu data di table perintahnya sebagai berikut : 

    SELECT nama_kolom FROM nama_table

	 - nama_kolom  => daftar nama kolom yang akan ditampilkan datanya kemudian dipisahkan oleh koma
	 - nama_table => nama table dari kolom yang ingin ditampilkan datanya.
*/

-- mengambil nama depan dan belakang semua pelanggan

SELECT first_name, last_name FROM sales.customers

-- mengambil nama depan, nama belakang, dan email semua pelanggan

SELECT first_name, last_name, email FROM sales.customers 

-- mengambil seluruh data dari semua pelanggan

SELECT * FROM sales.customers



