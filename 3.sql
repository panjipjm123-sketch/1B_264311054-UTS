SELECT 
    p.nama_lengkap, 
    COUNT(pr.id_perjalanan) AS total_perjalanan_dilakukan,
    SUM(pr.biaya) AS total_akumulasi_biaya
FROM 
    pengguna p
JOIN 
    perjalanan pr ON p.id_pengguna = pr.id_pengguna
WHERE 
    pr.jarak_km > 5.00
GROUP BY 
    p.nama_lengkap;
