SELECT
	om.order_date AS 発注日,
	od.po_id AS 注文コード,
	CONCAT(u.l_name,u.f_name) AS 利用者氏名,
	p.p_name AS 商品名,
	p.price AS 商品単価,
	od.quantity AS 購入数
FROM
	(
		(
			order_main AS om
		INNER JOIN
			order_desc AS od
		ON
			om.po_id = od.po_id
		)
	INNER JOIN
		usr AS u
	ON
		om.user_id = u.user_id
	)
INNER JOIN
	product AS p
ON
	od.p_id = p.p_id
WHERE
	om.delivery_date IS NULL
ORDER BY
	om.order_date ASC,
	od.po_id ASC,
	p.p_id ASC
;