-------------------------------DROP TABLES-------------------------------

DROP TABLE book;
DROP TABLE catagory;
DROP TABLE copy;
DROP TABLE author;
DROP TABLE publisher;
DROP TABLE book_author;
DROP TABLE book_publisher;
DROP TABLE users;
DROP TABLE reservation;
DROP TABLE reservation_status;
DROP TABLE loan;
DROP TABLE fine;
DROP TABLE fine_payment;

------------------------------CREATE SCHEMA------------------------------

CREATE SCHEMA AUTHORIZATION library_admin

------------------------------CREATE TABLES------------------------------
    
    CREATE TABLE catagory (
        id                             NUMBER NOT NULL,
        cat_name                       VARCHAR2(30),
        CONSTRAINT catagory_id_pk 
            PRIMARY KEY(id),
);

    CREATE TABLE book (
        isbn                           NUMBER NOT NULL,
        title                          VARCHAR2(255) NOT NULL,
        location_code                  VARCHAR2(10) NOT NULL,
        publication_date               DATE,
        stock                          NUMBER,
        catagory_id                    NUMBER,
        CONSTRAINT book_isbn_pk
            PRIMARY KEY(isbn),
        CONSTRAINT book_catagory_id_fk
            FOREIGN KEY(catagory_id)
            REFERENCES catagory(id)
);

    CREATE TABLE copy (
        id                             NUMBER NOT NULL,
        book_isbn                      NUMBER,
        date_aquired                   DATE NOT NULL,
        date_removed                   DATE,
        CONSTRAINT copy_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT copy_book_isbn_fk 
            FOREIGN KEY(book_isbn) 
            REFERENCES book(isbn) ON DELETE CASCADE
);

    CREATE TABLE author (
        id                             NUMBER NOT NULL,
        first_name                     VARCHAR2(255),
        last_name                      VARCHAR2(255),
        CONSTRAINT author_id_pk
            PRIMARY KEY(id)
);

    CREATE TABLE publisher (
        id                             NUMBER NOT NULL,
        book_publisher_id              NUMBER,
        pub_name                       VARCHAR2(255),
        CONSTRAINT publisher_id_pk
            PRIMARY KEY(id)
);

    CREATE TABLE book_author (
        book_isbn                      NUMBER,
        author_id                      NUMBER,
        CONSTRAINT book_author_book_isbn_fk
            FOREIGN KEY(book_isbn)
            REFERENCES book(isbn),
        CONSTRAINT book_author_author_id_fk
            FOREIGN KEY(author_id)
            REFERENCES author(id)
);

    CREATE TABLE book_publisher (
        book_isbn                      NUMBER,
        pub_id                         NUMBER,
        CONSTRAINT book_publisher_book_isbn_fk
            FOREIGN KEY(book_isbn)
            REFERENCES book(isbn),
        CONSTRAINT book_publisher_publisher_id_fk
            FOREIGN KEY(pub_id)
            REFERENCES publisher(id)
);        

    CREATE TABLE users (
        id                             NUMBER NOT NULL,
        first_name                     VARCHAR2(255) NOT NULL,
        last_name                      VARCHAR2(255) NOT NULL,
        CONSTRAINT users_student_id_pk 
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

ALTER TABLE reservation 
    ADD (res_status VARCHAR2(6),
    CONSTRAINT status_type
    CHECK (res_status in('AVAILABLE','RESERVED'))
);

------------------------------ALTER TABLE------------------------------

ALTER TABLE book  
    ADD CONSTRAINT book_catagory_id_fk
        FOREIGN KEY (catagory_id)
        REFERENCES catagory(id)
