
INSERT INTO kendaraan (plat_nomor, jenis_kendaraan, kapasitas, tarif_per_km, tipe_energi) VALUES
('N 1234 AB', 'Bus Listrik', 35, 5000.00, 'Listrik'),
('N 5678 CD', 'Angkot Tipe-A', 12, 3000.00, 'Hibrida'),
('N 9012 EF', 'Sepeda Motor Listrik', 2, 2000.00, 'Listrik');

INSERT INTO pengguna (nama_lengkap, email, no_telepon, status_akun, peran) VALUES 
('Budi Santoso', 'budi@gmail.com', '081234567890', 'Aktif', 'penumpang'),
('Siti Aminah', 'siti@gmail.com', '089876543210', 'Aktif', 'penumpang'),
('Ahmad Dani', 'ahmad@gmail.com', '085678901234', 'Aktif', 'penumpang');

INSERT INTO perjalanan (id_pengguna, id_kendaraan, stasiun_asal, stasiun_tujuan, jarak_km, biaya) VALUES 
(1, 1, 'Stasiun A', 'Stasiun B', 12.50, 62500.00),
(2, 2, 'Stasiun C', 'Stasiun D', 8.00, 24000.00),
(1, 3, 'Stasiun E', 'Stasiun F', 4.50, 9000.00);

SELECT * FROM pengguna;

UPDATE perjalanan 
SET biaya = 70000.00 
WHERE id_perjalanan = 1;

DELETE FROM perjalanan 
WHERE id_perjalanan = 3;
