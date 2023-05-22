SELECT
	s_id,
	SUM(s_Value)
FROM
	sales
GROUP BY
	s_id
;