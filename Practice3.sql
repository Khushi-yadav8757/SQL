SELECT DISTINCT writer_id AS id
FROM postviews
WHERE writer_id = reader_id
ORDER BY id ASC;
