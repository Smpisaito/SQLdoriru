SELECT
	depart_id,
	depart_name
FROM
	depart AS d
WHERE
	NOT EXISTS
	(
	SELECT
		*
	FROM
		employee AS e
	WHERE
		e.depart_id = d.depart_id
	)
;