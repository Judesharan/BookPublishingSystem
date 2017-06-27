CREATE TABLE book_sales            
(
sales_id INT AUTO_INCREMENT,
id INT NOT NULL,
isbn NUMERIC(13) NOT NULL,
price DOUBLE(6,2) NOT NULL,
quantity INT NOT NULL,
total_amount DOUBLE(7,2) NOT NULL,
order_date DATE NOT NULL,
status VARCHAR(10) NOT NULL,
CONSTRAINT sales_id_pk PRIMARY KEY ( sales_id ),
CONSTRAINT id_book_sales_fk FOREIGN KEY (id) REFERENCES user (id),
CONSTRAINT isbn_book_sales_fk FOREIGN KEY (isbn) REFERENCES book (isbn),
CONSTRAINT quantity_cq CHECK ( quantity >= 0),
CONSTRAINT total_amount_cq CHECK (total_amount > 0),
CONSTRAINT status_cq CHECK(status IN ('booked', 'cancelled', 'delivered'))
);