SELECT 
    k.name AS nama_kategori,
    COUNT(a.article_id) AS total_artikel_terbit
FROM 
    kategori k
JOIN 
    artikel a ON k.category_id = a.category_id
WHERE 
    a.status = 'published'
GROUP BY 
    k.name;
