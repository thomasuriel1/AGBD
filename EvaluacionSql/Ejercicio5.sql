SELECT gender, MIN(age),MAX(age), AVG(age) FROM person p JOIN drivers_license d ON p.license_id = d.id
WHERE gender = "male" 