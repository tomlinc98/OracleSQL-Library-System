-------------------------------DROP TABLES-------------------------------

DROP TABLE book;
DROP TABLE catagory;
DROP TABLE copy;
DROP TABLE author;
DROP TABLE publisher;
DROP TABLE users;
DROP TABLE reservation;
DROP TABLE reservation_status;
DROP TABLE loan;
DROP TABLE fine;
DROP TABLE fine_payment;

------------------------------CREATE SCHEMA------------------------------

CREATE SCHEMA AUTHORIZATION library_admin

------------------------------CREATE TABLES------------------------------

    CREATE TABLE book (
        isbn                           NUMBER NOT NULL,
        title                          VARCHAR2(255) NOT NULL,
        location_code                  VARCHAR2(10) NOT NULL,
        publication_date               DATE,
        stock                          INTEGER,
        CONSTRAINT book_isbn_pk
            PRIMARY KEY(isbn)
)

    CREATE TABLE catagory (
        id                             NUMBER NOT NULL,
        book_isbn                      NUMBER,
        cat_name                       VARCHAR2(30),
        CONSTRAINT catagory_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT catagory_book_isbn_fk
            FOREIGN KEY(isbn) REFERENCES book(isbn) ON DELETE CASCADE
)

    CREATE TABLE copy (
        id                             NUMBER NOT NULL,
        book_id                        NUMBER,
        date_aquired                   DATE NOT NULL,
        date_removed                   DATE,
        CONSTRAINT copy_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT copy_book_isbn_fk 
            FOREIGN KEY(isbn) 
            REFERENCES book(isbn) ON DELETE CASCADE
)

    CREATE TABLE author (
        id                             NUMBER NOT NULL,
        book_author_id                 NUMBER,
        first_name                     VARCHAR2(50),
        last_name                      VARCHAR2(50),
        CONSTRAINT author_id_pk
            PRIMARY KEY(id)
)

    CREATE TABLE publisher (
        id                             NUMBER NOT NULL,
        book_publisher_id              NUMBER,
        pub_name                       VARCHAR2(255),
        CONSTRAINT publisher_id_pk
            PRIMARY KEY(id)
)

    CREATE TABLE users (
        id                             NUMBER NOT NULL,
        first_name                     VARCHAR2(50) NOT NULL,
        last_name                      VARCHAR2(50) NOT NULL,
        CONSTRAINT users_student_id_pk 
            PRIMARY KEY(id)
)

    CREATE TABLE reservation (
        id                             NUMBER NOT NULL,
        res_date                       DATE NOT NULL,
        users_id                       NUMBER,
        book_isbn                      NUMBER,
        CONSTRAINT reservation_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT reservation_users_id_fk
            FOREIGN KEY(users_id)
            REFERENCES users (id) ON DELETE CASCADE,
        CONSTRAINT reservation_book_isbn_fk
            FOREIGN KEY(book_isbn)
            REFERENCES book(isbn) ON DELETE CASCADE
)

    CREATE TABLE reservation_status (
        id                             NUMBER NOT NULL,
        reservation_id                 NUMBER,
        CONSTRAINT reservation_status_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT res_status_res_id_fk
            FOREIGN KEY(reservation_id)
            REFERENCES reservation(id) ON DELETE CASCADE
)
    CREATE TABLE loan (
        id                             NUMBER NOT NULL,
        users_id                       NUMBER,
        loan_given                     DATE NOT NULL,
        loan_return                    DATE NOT NULL,
        book_isbn                      NUMBER
        CONSTRAINT loan_id_pk 
            PRIMARY KEY(id),
        CONSTRAINT loan_user_id_fk
            FOREIGN KEY(users_id)
            REFERENCES users(id) ON DELETE CASCADE,
        CONSTRAINT loan_book_isbn_fk
            FOREIGN KEY(book_isbn)
            REFERENCES book(isbn) ON DELETE CASCADE
)
    CREATE TABLE fine (
        id                             NUMBER NOT NULL,
        users_id                       NUMBER,
        fine_date                      DATE NOT NULL,
        fine_total                     NUMBER,
        CONSTRAINT fine_id_pk
            PRIMARY KEY(id),
        CONSTRAINT fine_users_id_fk
            FOREIGN KEY(users_id)
            REFERENCES users(id) ON DELETE CASCADE
)

    CREATE TABLE fine_payment (
        id                             NUMBER NOT NULL,
        users_id                       NUMBER,
        pay_date                       DATE,
        pay_amount                     VARCHAR2(4000),
        CONSTRAINT fine_payment_id_pk 
            PRIMARY KEY (id),
        CONSTRAINT fine_payment_users_id_fk
            FOREIGN KEY(users_id)  
            REFERENCES users ON DELETE CASCADE
)

-------------------------------ALTER ENUM-------------------------------

    ALTER TABLE reservation_status 
        ADD status_value VARCHAR2(6),
        CONSTRAINT status_type
        CHECK (status_value in('AVAILABLE','RESERVED'));
