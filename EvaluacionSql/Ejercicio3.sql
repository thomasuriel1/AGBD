SELECT p.name, g.membership_start_date FROM person p LEFT JOIN get_fit_now_member g ON p.id = g.person_id
WHERE g.membership_start_date is null 