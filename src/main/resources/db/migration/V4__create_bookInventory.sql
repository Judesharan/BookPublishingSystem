CREATE TABLE book_inventory           
(
inventory_id INT AUTO_INCREMENT,
quantity INT NOT NULL,
isbn NUMERIC(13),
id INT NOT NULL,
CONSTRAINT inventory_id_pk PRIMARY KEY ( inventory_id ),
CONSTRAINT isbn_bookInventory_fk FOREIGN KEY (isbn) REFERENCES book(isbn),
CONSTRAINT id_bookInventory_fk FOREIGN KEY (id) REFERENCES user(id),
CONSTRAINT quantity_cq CHECK ( quantity >= 0)
);