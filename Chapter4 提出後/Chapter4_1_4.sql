CREATE TABLE
	books
	(
		isbn CHAR(17) NOT NULL,
		title VARCHAR(225) NOT NULL,
		price INT,
		publish VARCHAR(30),
		publish_date DATE,
		category_id CHAR(5) NOT NULL,
		PRIMARY KEY (isbn)
	)
;