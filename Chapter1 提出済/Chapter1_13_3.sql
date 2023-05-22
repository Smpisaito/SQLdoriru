SELECT
	referer,
	COUNT(*),
	CASE
		WHEN COUNT(*) >= 50 THEN 'A'
		WHEN COUNT(*) >= 10 THEN 'B'
		ELSE 'C'
	END AS ランク
FROM
	access_log
GROUP BY
	referer
HAVING
	COUNT(*) >= 3
ORDER BY
	COUNT(*) DESC
;