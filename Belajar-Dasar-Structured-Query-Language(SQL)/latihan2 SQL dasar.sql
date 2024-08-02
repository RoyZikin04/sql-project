#membuat database
CREATE DATABASE dbpemrog2;

#menggunakan database
USE dbpemrog2;

CREATE TABLE penumpang (
    id_penumpang CHAR(5) NOT NULL,
    nama_depan CHAR(50) NOT NULL,
    nama_belakang CHAR(50) NOT NULL,
    stasiun_keberangkatan CHAR(50) NOT NULL,
    stasiun_kedatangan CHAR(50) NOT NULL,
    waktu_boarding TIME NOT NULL,
    waktu_sampai TIME NOT NULL
);
#membuat insertan dari tabel penumpang
INSERT INTO penumpang 
(id_penumpang, nama_depan, nama_belakang, stasiun_keberangkatan, stasiun_kedatangan, waktu_boarding, waktu_sampai) 
VALUES
('P001', 'Andi', 'Saputra', 'Gambir', 'Surabaya', '08:00:00', '14:00:00'),
('P002', 'Budi', 'Santoso', 'Bandung', 'Yogyakarta', '09:00:00', '15:00:00'),
('P003', 'Citra', 'Maulani', 'Jakarta', 'Semarang', '10:00:00', '16:00:00'),
('P004', 'Dewi', 'Permata', 'Solo', 'Malang', '11:00:00', '17:00:00'),
('P005', 'Eko', 'Prasetyo', 'Surabaya', 'Banyuwangi', '12:00:00', '18:00:00'),
('P006', 'Fajar', 'Hidayat', 'Jogja', 'Solo', '13:00:00', '19:00:00'),
('P007', 'Gina', 'Sari', 'Malang', 'Bandung', '14:00:00', '20:00:00'),
('P008', 'Hana', 'Putri', 'Semarang', 'Jakarta', '15:00:00', '21:00:00');

SELECT * FROM penumpang;

#memilih view dari penumpang yang stasiun keberangkatannya bandung
SELECT * FROM Penumpang WHERE stasiun_keberangkatan = 'Bandung';

#memilih view nama depan dan belakanng dari penumpang dimana stasiun keberangkatannya bandung
SELECT nama_depan, nama_belakang, stasiun_keberangkatan FROM Penumpang WHERE stasiun_keberangkatan = 'Bandung'

#menghapus tabel dimana id penumpangnya p003
DELETE FROM penumpang WHERE id_penumpang = 'P003';


#mengupdate pada tabel penumpang dimana nama depannya budi dan memmpunyai id penumpang p002 akan diubah menjadi id penumpang p003
UPDATE penumpang SET id_penumpang = 'P003' WHERE nama_depan = 'budi' AND id_penumpang = 'P002'