SELECT COUNT(*) 
FROM artists a;

SELECT a.Name, a2.Title 
FROM artists a 
INNER JOIN albums a2 ON a.ArtistId = a2.ArtistId
WHERE a2.Title = "Voodoo Lounge";

SELECT a.Name, a2.Title 
FROM artists a 
INNER JOIN albums a2 ON a.ArtistId = a2.ArtistId
WHERE a.Name = "Ozzy Osbourne";

SELECT COUNT(*) 
FROM artists a 
INNER JOIN albums a2 ON a.ArtistId = a2.ArtistId  
INNER JOIN tracks t ON a2.AlbumId = t.AlbumId 
WHERE a.Name = "Red Hot Chili Peppers";

SELECT t.Name, t.Milliseconds 
FROM tracks t
ORDER BY t.Milliseconds ASC 
LIMIT 3;

SELECT *
FROM tracks t 
INNER JOIN genres g on t.GenreId = g.GenreId 
ORDER BY t.Bytes DESC 
LIMIT 1;

SELECT g.name, COUNT(t.GenreId)
FROM tracks t 
INNER JOIN genres g ON g.GenreId = t.GenreId 
GROUP BY g.Name
ORDER BY g.GenreId ASC
LIMIT 1;

SELECT a2.Name, COUNT(t.AlbumId) AS Cantidad_Canciones
FROM artists a2 
INNER JOIN albums a ON a2.ArtistId = a.ArtistId 
INNER JOIN tracks t ON t.AlbumId = a.AlbumId 
GROUP BY a.ArtistId  
ORDER BY Cantidad_Canciones DESC 
LIMIT 10;

SELECT CustomerId, COUNT(CustomerId) AS Cantidad_invoices
FROM invoices i 
GROUP BY CustomerId
ORDER BY Cantidad_invoices DESC;

SELECT t.Name, COUNT(t.Name) AS Cancion_repetida
FROM tracks t
GROUP BY t.Name 
ORDER BY Cancion_repetida DESC
LIMIT 6;
















 






