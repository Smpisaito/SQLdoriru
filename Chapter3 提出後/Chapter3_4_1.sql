UPDATE
	books
SET
	isbn = CONCAT('ISBN',isbn),
	price = price * 10 / 11
;