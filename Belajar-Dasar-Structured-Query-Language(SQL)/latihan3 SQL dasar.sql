CREATE DATABASE dbpemrog3;

USE dbpemrog3

CREATE TABLE info_bus (
    kode_bus CHAR(6) UNIQUE,
    nama_sopir CHAR(10) NOT NULL,
    terakhir_dilihat CHAR(100) NOT NULL,
    warna_bus CHAR(6) NOT NULL,
    aktivitas_bus CHAR(6) NOT NULL,
    PRIMARY KEY(kode_bus)
);

DROP TABLE info_bus;

INSERT INTO info_bus (kode_bus, nama_sopir, terakhir_dilihat, warna_bus, aktivitas_bus)VALUES
('B001', 'Sopir1', 'Bandung', 'Merah', 'Aktif'),
('B002', 'Sopir2', 'Cirebon', 'Biru', 'Aktif'),
('B003', 'Sopir3', 'Majalengka', 'Hijau', 'Aktif'),
('B004', 'Sopir4', 'Cikarang', 'Kuning', 'Tidak'),
('B005', 'Sopir5', 'Bandung', 'Putih', 'Tidak'),
('B006', 'Sopir6', 'Cirebon', 'Hitam', 'Aktif'),
('B007', 'Sopir7', 'Majalengka', 'Abu', 'Aktif');

#menghapus tabel
DROP TABLE info_bus;

#modify tabel 
ALTER TABLE info_bus MODIFY kode_bus CHAR(6) NOT NULL UNIQUE;
SELECT * FROM info_bus;

#membuat index
CREATE INDEX info_bus_terakhir_dilihat_idx ON info_bus(terakhir_dilihat);

#membuat index unique
CREATE UNIQUE INDEX idx_unique_kode_bus ON info_bus(kode_bus);

#menampilkan index yang ada pada tabel infobus
SHOW INDEX FROM info_bus;

SELECT (*) FROM info_bus WHERE terakhir_dilihat = 'Bandung';
