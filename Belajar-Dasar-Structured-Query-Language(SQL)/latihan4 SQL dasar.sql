CREATE DATABASE dbpemrog4;
USE dbpemrog4;

#membuat tabel shinkansen
CREATE TABLE shinkansen (
    Station_Name VARCHAR(50) NOT NULL,
    Shinkansen_Line VARCHAR(50) NOT NULL,
    YEAR INT NOT NULL,
    Prefecture VARCHAR(50) NOT NULL,
    Distance_from_Tokyo_st FLOAT NOT NULL,
    Company VARCHAR(50) NOT NULL,
    PRIMARY KEY (Station_Name, Shinkansen_Line, YEAR)
);

#membuat insert data tabel shinkansen
INSERT INTO shinkansen (Station_Name, Shinkansen_Line, YEAR, Prefecture, Distance_from_Tokyo_st, Company) VALUES
('Tokyo', 'Tokaido_Shinkansen', 1964, 'Tokyo', 0, 'JR_Central'),
('Shinagawa', 'Tokaido_Shinkansen', 2003, 'Tokyo', 6.8, 'JR_Central'),
('Shin-Yokohama', 'Tokaido_Shinkansen', 1964, 'Kanagawa', 28.8, 'JR_Central'),
('Odawara', 'Tokaido_Shinkansen', 1964, 'Kanagawa', 83.9, 'JR_Central'),
('Atami', 'Tokaido_Shinkansen', 1964, 'Shizuoka', 104.6, 'JR_Central'),
('Mishima', 'Tokaido_Shinkansen', 1969, 'Shizuoka', 120.7, 'JR_Central'),
('Shin-Fuji', 'Tokaido_Shinkansen', 1988, 'Shizuoka', 146.2, 'JR_Central'),
('Shizuoka', 'Tokaido_Shinkansen', 1964, 'Shizuoka', 180.2, 'JR_Central'),
('Kakegawa', 'Tokaido_Shinkansen', 1988, 'Shizuoka', 229.3, 'JR_Central'),
('Hamamatsu', 'Tokaido_Shinkansen', 1964, 'Shizuoka', 257.1, 'JR_Central'),
('Toyohashi', 'Tokaido_Shinkansen', 1964, 'Aichi', 293.6, 'JR_Central');

#latihan select dan from
SELECT * FROM Shinkansen;

SELECT Station_name FROM shinkansen;

#latihan where 
SELECT * FROM shinkansen WHERE Prefecture = 'Shizuoka';

SELECT * FROM shinkansen WHERE Distance_from_Tokyo_st = 0;

SELECT Distance_from_Tokyo_st FROM shinkansen WHERE Distance_from_Tokyo_st BETWEEN 104 AND 105;

SELECT * FROM shinkansen WHERE Distance_from_Tokyo_st >= 104.599 AND Distance_from_Tokyo_st <= 104.601;

SELECT * FROM shinkansen WHERE Distance_from_Tokyo_st = 104.6;

#latihan where and
SELECT * FROM shinkansen WHERE YEAR = 1964 AND Prefecture = 'Shizuoka';

#latihan where or 
SELECT * FROM shinkansen WHERE Prefecture = 'Tokyo' OR Prefecture = 'Shizuoka';

#latihan where not
SELECT * FROM shinkansen WHERE NOT YEAR = 1964;


#latihan like dimana mencari prefektur mempunyai huruf awal t
SELECT * FROM shinkansen WHERE Prefecture LIKE 't%';

#latihan like dimana mencari prefektur mempunyai huruf awal s
SELECT * FROM shinkansen WHERE Prefecture LIKE 's%';

#latihan alias, mengubah sementara nama prefektur menjadi wilayah
SELECT Prefecture AS wilayah FROM shinkansen;

#latihan alias, mengubah sementara nama tabel menjadi wilayah
SELECT Prefecture FROM shinkansen AS wilayah ;

#latihan alias dengan mengubah nama beberapa tabel 
SELECT Station_Name AS nama_stasiun, YEAR AS tahun, Distance_from_Tokyo_st AS jarak_dari_tokyo FROM shinkansen;

#latihan update mengubah nilai 0 menjadi bernilai selain nol
UPDATE shinkansen
SET Distance_from_Tokyo_st = 29.05
WHERE Distance_from_Tokyo_st = 0;

#latihan update mengubah nama stasiun atami menjadi bandung
UPDATE shinkansen
SET Station_Name = 'Bandung'
WHERE Station_Name = 'Atami';

SELECT * FROM shinkansen;

#latihan order by dengan menggunakan ASCENDING/ASC dari kecil ke besar 
SELECT * FROM shinkansen ORDER BY Distance_from_Tokyo_st ASC;

#latihan order by dengan menggunakan DESCENDING/DESC dari besar ke kecil
SELECT * FROM shinkansen ORDER BY Distance_from_Tokyo_st DESC;


#latihan limit, membatasi tabel yang di tampikan menjadi 10
SELECT * FROM shinkansen LIMIT 10;

SELECT * FROM shinkansen LIMIT 5;

SELECT * FROM shinkansen LIMIT 7;

#latihan offset 
SELECT * FROM shinkansen LIMIT 5 OFFSET 1;
SELECT * FROM shinkansen LIMIT 7 OFFSET 2;

#latihan delete 
DELETE FROM shinkansen WHERE Prefecture = 'Aichi';


#LATIHAN BASIC QUERY
CREATE TABLE traveler (
    trip_id INT AUTO_INCREMENT PRIMARY KEY,
    tujuan VARCHAR(100) NOT NULL,
    durasi_liburan INT NOT NULL,  -- durasi dalam hari
    nama_traveler VARCHAR(100) NOT NULL,
    jenis_kelamin ENUM('Pria', 'Wanita') NOT NULL,
    kewarganegaraan VARCHAR(50) NOT NULL
);

INSERT INTO traveler (tujuan, durasi_liburan, nama_traveler, jenis_kelamin, kewarganegaraan) VALUES
('Bali', 7, 'John Doe', 'Pria', 'Amerika Serikat'),
('Tokyo', 5, 'Jane Smith', 'Wanita', 'Inggris'),
('Paris', 10, 'Michael Brown', 'Pria', 'Perancis'),
('Seoul', 6, 'Emily Davis', 'Wanita', 'Korea Selatan'),
('Sydney', 8, 'Chris Johnson', 'Pria', 'Australia'),
('New York', 4, 'Sarah Wilson', 'Wanita', 'Amerika Serikat'),
('Rio de Janeiro', 12, 'David Lee', 'Pria', 'Brasil'),
('Amsterdam', 9, 'Anna White', 'Wanita', 'Belanda'),
('Bangkok', 7, 'Mark Harris', 'Pria', 'Thailand'),
('Singapore', 5, 'Laura Martinez', 'Wanita', 'Singapura');

SELECT * FROM traveler;

#membatasi agar hanya 5 baris pertama saja 
SELECT * FROM traveler LIMIT 5 ;