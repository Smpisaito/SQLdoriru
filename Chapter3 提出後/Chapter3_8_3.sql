DELETE FROM
	sales
WHERE
	NOT EXISTS
	(
	SELECT
		s_id
	FROM
		shop
	WHERE
		shop.s_id = sales.s_id
	)
;