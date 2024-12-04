/*
	- Order By merupakan salah satu perintah didalam SELECT yang berfungsi untuk mengurutkan data berdasarkan kolomnya

	- Jika terdapat lebih dari satu kolom yang akan diurutkan maka proses pengurutannya dilakukan oleh kolom  pertama
	  kemudian dilakukan  kolom kedua dan seterusnya.

	- Urutan kolom dibagi menjadi 2 :
	  - ASC => Urutan kolom dari atas ke bawah (Ascending)
	  - DESC => Urutan kolom dari bawah ke atas (Descending)
	
	- Perintah untuk ORDER BY :

		SELECT 
			nama_kolom
		FROM 
			nama_table
		ORDER BY kolom [ASC || DSC]
*/

--  mengurutkan pelanggan berdasarkan nama depan mereka dalam urutan menaik

SELECT first_name, last_name FROM sales.customers ORDER BY first_name

-- mengurutkan pelanggan berdasarkan nama depan mereka dalam urutan menurun

SELECT first_name, last_name FROM sales.customers ORDER BY first_name DESC

-- mengurutkan pelanggan berdasarkan kota terlebih dahulu, kemudian berdasarkan nama depan

SELECT city, first_name, last_name FROM sales.customers ORDER BY city, first_name

-- mengurutkan pelanggan berdasarkan kota dalam urutan menurun dan kemudian mengurutkan pelanggan berdasarkan nama depan mereka dalam urutan abjad

SELECT city, first_name, last_name FROM sales.customers ORDER BY city DESC , first_name ASC

-- mengurutkan pelanggan berdasarkan negara bagian

SELECT city, first_name, last_name FROM sales.customers ORDER BY state

-- mengurutkan pelanggan berdasarkan panjang nama depan mereka

SELECT first_name, last_name FROM sales.customers ORDER BY LEN(first_name)

