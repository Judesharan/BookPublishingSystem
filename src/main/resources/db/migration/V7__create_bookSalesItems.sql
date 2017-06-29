CREATE TABLE book_sales_items
(
items_id INT NOT NULL AUTO_INCREMENT,
book_sales_id INT NOT NULL,
book_isbn NUMERIC(13) NOT NULL,
quantity INT NOT NULL,
order_date TIMESTAMP DEFAULT NOW(),

CONSTRAINT items_id_pk PRIMARY KEY ( items_id ),
CONSTRAINT book_sales_items_id_fk FOREIGN KEY(book_sales_id) REFERENCES book_sales(sales_id),
CONSTRAINT book_isbn_fk FOREIGN KEY (book_isbn) REFERENCES book (isbn)
);
