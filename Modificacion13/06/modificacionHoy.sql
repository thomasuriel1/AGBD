INSERT INTO user(username,password)
VALUES ("thomas","123"),("uriel","456");

INSERT INTO post(author_id,title,body)
VALUES ((SELECT id FROM user WHERE username = "thomas"), "Primero","Uno"), 
    ((SELECT id FROM user WHERE username = "thomas"), "Segundo","Dos"),
    ((SELECT id FROM user WHERE username = "thomas"), "Tercero","Tres")
INSERT INTO post(author_id,title,body)
VALUES ((SELECT id FROM user WHERE username = "uriel"), "Cuarta","Cuatro"), 
    ((SELECT id FROM user WHERE username = "uriel"), "Quinto","Cinco"),
    ((SELECT id FROM user WHERE username = "uriel"), "Sexto","Seis")
 
INSERT INTO user(username,password)
VALUES ("lucas", (SELECT password FROM user WHERE username = "uriel"))

UPDATE post SET body = ""
	WHERE author_id = (SELECT id FROM user WHERE username = "thomas")

DELETE FROM post WHERE author_id = (SELECT id FROM user WHERE username = "thomas")
	
DELETE FROM user WHERE username = "thomas"