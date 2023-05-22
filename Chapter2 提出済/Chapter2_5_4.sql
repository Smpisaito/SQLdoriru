SELECT
	CONCAT(u.l_name, u.f_name)
FROM
	usr AS u
WHERE
	u.user_id
NOT IN
	(
	SELECT
		r.user_id
	FROM
		rental AS r
	GROUP BY
		r.user_id
	)
;