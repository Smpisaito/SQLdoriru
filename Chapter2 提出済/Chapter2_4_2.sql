SELECT
	cp.c_title AS 前コンテンツ名,
	cc.c_title AS 現コンテンツ名,
	cn.c_title AS 次コンテンツ名
FROM
	(
		contents AS cp
	RIGHT JOIN
		contents AS cc
	ON
		cp.next_id = cc.c_id
	)
LEFT JOIN
	contents AS cn
ON
	cc.next_id = cn.c_id
ORDER BY
	cc.c_id ASC
;