-------------------------------DROP TABLES-------------------------------

DROP TABLE customer, purchase_order, product, payment, delivery, supplier, order_product, armour, clothing, supplier_product, weapon, discount, handled_weapon, sword, firearm, accessory, flintlock, matchlock

------------------------------CREATE SCHEMA------------------------------

CREATE SCHEMA AUTHORIZATION az_admin

------------------------------CREATE TABLES------------------------------
    
    CREATE TABLE customer (
        id                             NUMBER NOT NULL,
        first_name                     VARCHAR2(30),
        last_name                      VARCHAR2(30),
        username                       VARCHAR2(30) NOT NULL UNIQUE,
        password                       VARCHAR2(20) NOT NULL,
        email                          VARCHAR2(75) NOT NULL UNIQUE,
        CONSTRAINT customer_id_pk 
            PRIMARY KEY(id)
);

    CREATE TABLE purchase_order (
        id                             NUMBER NOT NULL,
        customer_id                    NUMBER NOT NULL,
        order_date                     DATE,

        order_products
        
        CONSTRAINT purchase_order_id_pk
            PRIMARY KEY(id),
        CONSTRAINT purchase_order_customer_id_fk
            FOREIGN KEY(customer_id)
            REFERENCES customer(id)
);

    CREATE TABLE product (
        id                             NUMBER NOT NULL,
        name                           VARCHAR2(255) NOT NULL,
        stock_code                     NUMBER NOT NULL,
        stock_amount                   NUMBER NOT NULL,
        CONSTRAINT product_id_pk 
            PRIMARY KEY(id),
        
        ###########
        CONSTRAINT supplier_id_fk 
            FOREIGN KEY(supplier_id) 
            REFERENCES book(isbn) ON DELETE CASCADE
        ###########
);

    CREATE TABLE payment (
        id                             NUMBER NOT NULL,
        amount                         NUMBER NOT NULL,
        CONSTRAINT payment_id_pk
            PRIMARY KEY(id)
);

    CREATE TABLE delivery (
        id                             NUMBER NOT NULL,
        CONSTRAINT delivery_id_pk
            PRIMARY KEY(id)
);

    CREATE TABLE supplier (
        id                             NUMBER NOT NULL,
        name                           VARCHAR2(255),
        address                        VARCHAR2(255),
        CONSTRAINT supplier_id_pk
            PRIMARY KEY(id)
);

    CREATE TABLE order_product (
        purchase_order_id               NUMBER NOT NULL,
        product_id                      NUMBER NOT NULL,
        CONSTRAINT order_id_fk
            FOREIGN KEY(purchase_order_id)
            REFERENCES purchase_order(id),
        CONSTRAINT product_id_fk
            FOREIGN KEY(product_id)
            REFERENCES product(id)
);

    CREATE TABLE armour (
       product_id                       NUMBER NOT NULL,
       CONSTRAINT product_id_fk
            FOREIGN KEY(product_id)
            REFERENCES product(id)
);

    CREATE TABLE clothing (
        product_id                     NUMBER NOT NULL,
        CONSTRAINT product_id_fk
            FOREIGN KEY(product_id)
            REFERENCES product(id)
);

    CREATE TABLE weapon (
        product_id                     NUMBER NOT NULL,
        CONSTRAINT product_id_fk
            FOREIGN KEY(product_id)
            REFERENCES product(id)
);

    CREATE TABLE supplier_product (
        id                             NUMBER NOT NULL,
        first_name                     VARCHAR2(255) NOT NULL,
        last_name                      VARCHAR2(255) NOT NULL,
        designation                    VARCHAR2(255) NOT NULL,
        CONSTRAINT admin_id_pk 
            PRIMARY KEY(id)
);

    CREATE TABLE reservation (
        id                             NUMBER NOT NULL,
        res_date                       DATE NOT NULL,
        users_id                       NUMBER,
        book_isbn                      NUMBER,
        CONSTRAINT reservation_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT reservation_users_id_fk
            FOREIGN KEY(users_id)
            REFERENCES users(id) ON DELETE CASCADE,
        CONSTRAINT reservation_book_isbn_fk
            FOREIGN KEY(book_isbn)
            REFERENCES book(isbn) ON DELETE CASCADE
);

    CREATE TABLE loan (
        id                             NUMBER NOT NULL,
        loan_given                     DATE NOT NULL,
        loan_return                    DATE NOT NULL,
        book_isbn                      NUMBER,
        users_id                       NUMBER,
        CONSTRAINT loan_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT loan_user_id_fk
            FOREIGN KEY(users_id)
            REFERENCES users(id) ON DELETE CASCADE,
        CONSTRAINT loan_book_isbn_fk
            FOREIGN KEY(book_isbn)
            REFERENCES book(isbn) ON DELETE CASCADE
);

    CREATE TABLE fine (
        id                             NUMBER NOT NULL,
        fine_date                      DATE NOT NULL,
        fine_total                     NUMBER,
        users_id                       NUMBER,
        loan_id                        NUMBER,
        CONSTRAINT fine_id_pk
            PRIMARY KEY(id),
        CONSTRAINT fine_users_id_fk
            FOREIGN KEY(users_id)
            REFERENCES users(id) ON DELETE CASCADE,
        CONSTRAINT fine_loan_id_fk
            FOREIGN KEY(loan_id)
            REFERENCES loan(id) ON DELETE CASCADE
);

    CREATE TABLE fine_payment (
        id                             NUMBER NOT NULL,
        users_id                       NUMBER,
        pay_date                       DATE,
        pay_amount                     NUMBER,
        CONSTRAINT fine_payment_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT fine_payment_users_id_fk
            FOREIGN KEY(users_id)  
            REFERENCES users(id) ON DELETE CASCADE
);

-------------------------------ALTER ENUM-------------------------------

ALTER TABLE payment 
    ADD (payment_status VARCHAR2(6),
    CONSTRAINT payment_status_enum
    CHECK (payment_status in('UNPAID','PAID'))
);

ALTER TABLE payment 
    ADD (payment_type VARCHAR2(6),
    CONSTRAINT payment_type_enum
    CHECK (payment_type in('CARD','CASH'))
);

ALTER TABLE delivery 
    ADD (delivery_status VARCHAR2(10),
    CONSTRAINT delivery_status_enum
    CHECK (delivery_status in('PROCESSING','SHIPPED','DELIVERED'))
);
