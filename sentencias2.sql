1
INSERT INTO artists(name)
VALUES ("jorge");
2
INSERT INTO albums(Title,ArtistId)
VALUES ("Sale el sol",276);
3
INSERT INTO tracks(name,AlbumId,MediaTypeId,Milliseconds,UnitPrice)
VALUES ("Loca",349,1,103213,0.34),
	   ("Sale el sol",349,1,123435,2),
	   ("Rabiosa",349,1,789721,0.85);
4
UPDATE tracks SET Composer = "Shakira", Bytes = "141428"
WHERE TrackId = 3506 or TrackId =3505 or TrackId =3504;
5
DELETE FROM tracks WHERE AlbumId = 349;
6
DELETE FROM albums WHERE AlbumId = 349;
7
DELETE FROM artists WHERE name = "jorge";