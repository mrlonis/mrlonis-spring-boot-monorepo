CREATE TABLE Customer (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Sales_Order (
    id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    item_id INT NOT NULL,
    order_number varchar(255) NOT NULL,
    quantity INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

INSERT INTO Customer (name, street, city, state)
VALUES ('Martin Bros', '406 Viking Rd', 'Cedar Falls', 'IO'),
       ('Martin Mart', '408 Viking Rd', 'Cedar Falls', 'IO');

INSERT INTO Sales_Order (customer_id, item_id, order_number, quantity, amount)
VALUES (1, 1, 'B201901011135101231', 1, 20.00),
       (1, 2, 'M201901021137103231', 1, 15.00);
