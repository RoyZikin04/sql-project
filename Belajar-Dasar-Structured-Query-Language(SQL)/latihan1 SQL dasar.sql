#membuat database
CREATE DATABASE dbpemrog;

#menggunakan database
USE dbpemrog;

#membuat table daftar bus
CREATE TABLE daftar_bus (
	kode_bus CHAR (10),
	tujuan_bus CHAR (10) NOT NULL,
	jadwal_bus TIME NOT NULL,
	harga_bus INT NOT NULL,
	nama_sopir CHAR (10) NOT NULL
);
#memasukan data 
INSERT INTO daftar_bus (kode_bus, tujuan_bus, jadwal_bus, harga_bus, nama_sopir) VALUES
('BUS001', 'Jakarta', '08:00:00', 100000, 'Sopir1'),
('BUS002', 'Bandung', '09:00:00', 120000, 'Sopir2'),
('BUS003', 'Surabaya', '10:00:00', 150000, 'Sopir3'),
('BUS004', 'Yogyakarta', '11:00:00', 130000, 'Sopir4'),
('BUS005', 'Semarang', '12:00:00', 110000, 'Sopir5');

#view tabel daftar bus	
SELECT * FROM daftar_bus;
SELECT * FROM daftar_bus WHERE tujuan_bus = 'Bandung';
 
#membuat table penumpang
CREATE TABLE t_penumpang (
	no_penumpang CHAR (10 )NOT NULL,
	nama_penumpang CHAR (10) NOT NULL,
	jenis_kelamin CHAR (1) NOT NULL,
	usia INT NOT NULL,
	riwayat_penyakit CHAR (100) NOT NULL
);
#memasukan data
INSERT INTO t_penumpang (no_penumpang, nama_penumpang, jenis_kelamin, usia, riwayat_penyakit) VALUES
('PNP000001', 'Roy', 'L', 21, 'Tidak ada'),
('PNP000002', 'Budi', 'L', 25, 'Asma'),
('PNP000003', 'Citra', 'P', 28, 'Diabetes'),
('PNP000004', 'Dewi', 'P', 32, 'Hipertensi'),
('PNP000005', 'Eko', 'L', 27, 'Tidak ada');

#view tabel t_penumpang
 SELECT * FROM t_penumpang;
 SELECT * FROM t_penumpang WHERE nama_penumpang = 'Roy';
 
 #menghapus table
 DROP TABLE daftar_bus
 DROP TABLE t_penumpang
 
 #membuat view
 CREATE VIEW Penumpang AS 
 SELECT no_penumpang, nama_penumpang 
 FROM t_penumpang WHERE riwayat_penyakit ='Tidak Ada';
 #memanggil Viewnya
 SELECT * FROM Penumpang 