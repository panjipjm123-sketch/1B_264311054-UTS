INSERT INTO kategori (name) VALUES
('Ekonomi'),
('Pemerintahan'),
('Layanan Publik');

INSERT INTO users (name, email, role) VALUES
('Fatir', 'patirstuvw@gmail.com', 'penulis'),
('Jadid', 'justdid@gmail.com', 'penulis'),
('Heksa', 'hexaa@gmail.com', 'penulis');


INSERT INTO artikel (category_id, title, published_at, status) VALUES
(1, 'Harga Cabai Naik Jelang Akhir Pekan', '2026-10-01 00:00:00', 'published'),
(2, 'Pemkot Resmikan Taman Kota Baru', '2026-10-02 00:00:00', 'published'),
(3, 'Jadwal Pemadaman Listrik Pekan Ini', '2026-10-03 00:00:00', 'draft'),
(1, 'UMKM Madiun Ikuti Pameran Daerah', '2026-10-04 00:00:00', 'published');

INSERT INTO artikel_penulis (article_id, user_id, peran_penulis) VALUES
(1, 1, 'Reporter'),
(1, 2, 'Editor'),
(2, 2, 'Reporter'),
(3, 1, 'Reporter'),
(3, 3, 'Editor'),
(4, 3, 'Reporter');


SELECT * FROM kategori;


UPDATE artikel 
SET status = 'published' 
WHERE article_id = 3;


DELETE FROM artikel_penulis 
WHERE article_id = 4 AND user_id = 3;
