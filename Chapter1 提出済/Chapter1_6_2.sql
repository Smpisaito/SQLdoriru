SELECT
	l_name,
	f_name,
	email
FROM
	usr
WHERE
		prefecture = '東京都'
	AND
		email LIKE '%examples.com'
;