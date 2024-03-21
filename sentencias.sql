SELECT * FROM INHABITANT WHERE state ="friendly"
SELECT * FROM INHABITANT WHERE job LIKE '%smith' AND state = 'friendly'
SELECT personid FROM INHABITANT WHERE name='Stranger' 
SELECT * FROM item WHERE owner IS NULL
update item set owner = 20 WHERE owner is null
SELECT * FROM item WHERE owner = 20