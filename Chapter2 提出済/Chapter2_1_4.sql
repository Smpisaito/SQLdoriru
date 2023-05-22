SELECT
	CONCAT(u.l_name,u.f_name),
	COUNT(*)
FROM
	rental AS r
INNER JOIN
	usr AS u
ON
	r.user_id = u.user_id
WHERE
	r.returned = 0
GROUP BY
	u.user_id
HAVING
	COUNT(*) > 0
ORDER BY
	COUNT(*) DESC
;