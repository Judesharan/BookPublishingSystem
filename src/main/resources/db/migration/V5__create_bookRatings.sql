CREATE TABLE book_ratings            
(
ratings_id INT AUTO_INCREMENT,
rating DECIMAL(2,1) NOT NULL,
isbn NUMERIC(13),
id INT NOT NULL,
CONSTRAINT ratings_id_pk PRIMARY KEY (ratings_id),
CONSTRAINT isbn_bookRatings_fk FOREIGN KEY (isbn) REFERENCES book(isbn),
CONSTRAINT id_bookRatings_fk FOREIGN KEY (id) REFERENCES user (id),
CONSTRAINT rating_cq CHECK ( rating BETWEEN 1 AND 5)
);