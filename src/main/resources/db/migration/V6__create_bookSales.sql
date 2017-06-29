CREATE TABLE book_sales            
(
sales_id INT AUTO_INCREMENT,
id INT NOT NULL,
total_amount DOUBLE(7,2) NOT NULL,
order_date TIMESTAMP DEFAULT NOW(),
status VARCHAR(20) DEFAULT 'ordered',
CONSTRAINT sales_id_pk PRIMARY KEY ( sales_id ),
CONSTRAINT id_book_sales_fk FOREIGN KEY (id) REFERENCES user (id),
CONSTRAINT total_amount_cq CHECK (total_amount > 0),
CONSTRAINT status_cq CHECK(status IN ('ordered', 'cancelled', 'delivered'))
);