SELECT
	CONCAT(el.l_name, el.f_name) AS 社員氏名,
	CONCAT(er.l_name, el.f_name) AS 上司氏名
FROM
	employee AS el
LEFT JOIN
	employee AS er
ON
	el.b_id = er.s_id
ORDER BY
	el.s_id ASC
;