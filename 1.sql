CREATE TABLE pengguna (
    id_pengguna INT AUTO_INCREMENT PRIMARY KEY,
    nama_lengkap VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    no_telepon VARCHAR(20),
    status_akun ENUM('Aktif', 'Nonaktif', 'Suspended') NOT NULL DEFAULT 'Aktif',
    peran VARCHAR(20) DEFAULT 'penumpang'
);

CREATE TABLE kendaraan (
    id_kendaraan INT AUTO_INCREMENT PRIMARY KEY,
    plat_nomor VARCHAR(15) NOT NULL UNIQUE,
    jenis_kendaraan VARCHAR(50) NOT NULL,
    kapasitas INT NOT NULL,
    tarif_per_km DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    tipe_energi ENUM('Listrik', 'Hibrida', 'Biofuel', 'Surya', 'Manual') NOT NULL DEFAULT 'Listrik'
);

CREATE TABLE perjalanan (
    id_perjalanan INT AUTO_INCREMENT PRIMARY KEY,
    id_pengguna INT NOT NULL,
    id_kendaraan INT NOT NULL,
    stasiun_asal VARCHAR(100) NOT NULL,
    stasiun_tujuan VARCHAR(100) NOT NULL,
    jarak_km DECIMAL(5, 2) NOT NULL,
    biaya DECIMAL(10, 2) NOT NULL,
    tgl_perjalanan DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_jarak CHECK (jarak_km > 0),
    CONSTRAINT chk_biaya CHECK (biaya >= 0),


    CONSTRAINT fk_perjalanan_pengguna
        FOREIGN KEY (id_pengguna) REFERENCES pengguna(id_pengguna)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT fk_perjalanan_kendaraan
        FOREIGN KEY (id_kendaraan) REFERENCES kendaraan(id_kendaraan)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
