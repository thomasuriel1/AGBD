SELECT name,Composer,Milliseconds from tracks

SELECT FirstName,LastName,Address,City from employees

SELECT name,Milliseconds,Composer from tracks
WHERE Composer is null and Milliseconds > 2900000

SELECT LastName,FirstName,Company from customers
WHERE Company not null

SELECT DISTINCT BillingCity from invoices
WHERE BillingState IS NOT NULL
ORDER BY BillingState DESC

SELECT Title from albums
WHERE Title LIKE "%OF%"
ORDER BY Title ASC

SELECT t.name, g.Name from tracks t
JOIN genres g ON t.GenreId = g.GenreId

SELECT t.name, a.Title from tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
ORDER BY a.Title DESC

