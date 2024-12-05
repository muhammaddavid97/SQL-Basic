/*
	- LIKE adalah operator logika yang memeriksa suatu karakter string berdasarkan pola (pattern matching).
	- Operator LIKE selain di SELECT dapat dipakai didalam klausa DELETE, INSERT, UPDATE.
	- Pola merepresentasikan karakter dalam nilai kolom atau ekspresi.
	- Jenis pola dalam klausa LIKE 

	 - Persentase wildcard (%): string apa pun yang berisi nol karakter atau lebih.
	 - Karakter pengganti garis bawah (_): karakter tunggal apa pun.
	 - Karakter pengganti [daftar karakter]: karakter tunggal apa pun dalam set yang ditentukan.
	 - [Karakter-karakter]: karakter tunggal apa pun dalam rentang yang ditentukan.
	 - [^]: karakter apa pun yang tidak berada dalam daftar atau rentang.
*/

-- menemukan pelanggan yang nama belakangnya dimulai dengan huruf z
SELECT *
FROM sales.customers
WHERE last_name LIKE 'z%'

-- mengembalikan pelanggan yang nama belakangnya diakhiri dengan string er
SELECT *
FROM sales.customers
WHERE last_name LIKE 'er%'

-- mengambil pelanggan yang nama belakangnya dimulai dengan huruf t dan diakhiri dengan huruf s
SELECT *
FROM sales.customers 
WHERE last_name LIKE 't%s'

-- mencari pelanggan yang karakter pertama pada nama belakangnya adalah huruf dalam rentang A melalui C
SELECT *
FROM 
sales.customers 
WHERE last_name LIKE '[A-C]%'

