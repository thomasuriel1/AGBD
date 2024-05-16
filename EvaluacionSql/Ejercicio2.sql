SELECT name, gender, p.id, car_make, car_model, plate_number, age FROM person p JOIN drivers_license d ON p.license_id = d.id
WHERE gender = "female" and age < "40"