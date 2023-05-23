UPDATE
	books
SET
	books.category_id = 'XXXXX'
WHERE
	books.isbn
IN
	(
		SELECT
			rental.isbn
		FROM
			rental
		WHERE
			rental.returned = 9
	)
;