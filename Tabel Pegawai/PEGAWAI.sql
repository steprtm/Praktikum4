USE bisnis;

CREATE TABLE pegawai (
  idpegawai VARCHAR(20) NOT NULL,
  nama_depan VARCHAR(50) NOT NULL,
  nama_belakang VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telepon VARCHAR(20) NOT NULL,
  tgl_kontrak DATE NOT NULL,
  id_job VARCHAR(20) NOT NULL,
  gaji VARCHAR(20) NOT NULL,
  tunjangan VARCHAR(20),
  PRIMARY KEY (idpegawai)
);
-- Memasukan Data dalam tabel
INSERT INTO `bisnis`.`pegawai` (`idpegawai`, `nama_depan`, `nama_belakang`, `email`, `telepon`, `tgl_kontrak`, `id_job`, `gaji`, `tunjangan`) VALUES ('E001', 'Ferry', 'Gustiawan', 'ferry@yahoo.com', '07117059004', '2005-09-01', 'L0001', '2000000', '500000');
INSERT INTO `bisnis`.`pegawai` (`idpegawai`, `nama_depan`, `nama_belakang`, `email`, `telepon`, `tgl_kontrak`, `id_job`, `gaji`, `tunjangan`) VALUES ('E002', 'Aris', 'Gianardi', 'aris@yahoo.com', '081312345678', '2006-09-01', 'L0002', '2000000', '200000');
INSERT INTO `bisnis`.`pegawai` (`idpegawai`, `nama_depan`, `nama_belakang`, `email`, `telepon`, `tgl_kontrak`, `id_job`, `gaji`, `tunjangan`) VALUES ('E003', 'Faiz', 'Ahnad', 'faiz@gmail.com', '081367384322', '2006-10-01', 'L0003', '1500000', '');
INSERT INTO `bisnis`.`pegawai` (`idpegawai`, `nama_depan`, `nama_belakang`, `email`, `telepon`, `tgl_kontrak`, `id_job`, `gaji`, `tunjangan`) VALUES ('E004', 'Emna', 'Bunton', 'emna@gmail.com', '081363484382', '2006-10-01', 'L0004', '1500000', '9');
INSERT INTO `bisnis`.`pegawai` (`idpegawai`, `nama_depan`, `nama_belakang`, `email`, `telepon`, `tgl_kontrak`, `id_job`, `gaji`, `tunjangan`) VALUES ('E005', 'Mike', 'Scoff', 'mike@plasa.com', '08163454555', '2007-09-01', 'L0005', '1250000', '9');
INSERT INTO `bisnis`.`pegawai` (`idpegawai`, `nama_depan`, `nama_belakang`, `email`, `telepon`, `tgl_kontrak`, `id_job`, `gaji`) VALUES ('E006', 'Lincoln', 'Burrows', 'linc@yahoo.com', '08527388432', '2008-09-01', 'L0006', '1750000');

-- Menampilkan pegawai yang gajinya bukan 2.000.000 dan 1.250.000
SELECT *
FROM pegawai
WHERE gaji <> 2000000 AND gaji <> 1250000;

-- Menampilkan pegawai yang tunjangannya NULL
SELECT *
FROM pegawai
WHERE tunjangan IS NULL;

-- Menampilkan jumlah record dalam tabel pegawai
SELECT COUNT(*) AS jumlah_record
FROM pegawai;

-- Menampilkan jumlah total gaji pegawai
SELECT SUM(gaji) AS total_gaji
FROM pegawai;

-- Menampilkan rata-rata gaji pegawai
SELECT AVG(gaji) AS rata_gaji
FROM pegawai;

-- Menampilkan gaji terkecil
SELECT MIN(gaji) AS gaji_terkecil
FROM pegawai;

-- Menampilkan gaji terbesar
SELECT MAX(gaji) AS gaji_terbesar
FROM pegawai;

