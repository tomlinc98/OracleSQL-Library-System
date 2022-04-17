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
        CONSTRAINT book_isbn_pk PRIMARY KEY(isbn)
);

    CREATE TABLE catagory (
        id                             NUMBER NOT NULL,
        book_isbn                      NUMBER,
        cat_name                       VARCHAR2(30),
        CONSTRAINT catagory_id_pk PRIMARY KEY(id),
        CONSTRAINT catagory_book_isbn_fk FOREIGN KEY(isbn) REFERENCES book ON DELETE CASCADE
);

    CREATE TABLE copy (
        id                             NUMBER NOT NULL CONSTRAINT copy_id_pk PRIMARY KEY,
        book_id                        NUMBER
                                       CONSTRAINT copy_book_id_fk
                                       REFERENCES book ON DELETE CASCADE,
        date_aquired                   DATE,
        date_removed                   DATE
)

    CREATE TABLE author (
        id                             NUMBER NOT NULL CONSTRAINT author_id_pk PRIMARY KEY,
        book_author_id                 NUMBER,
        first_name                     VARCHAR2(50),
        last_name                      VARCHAR2(50)
)

    CREATE TABLE publisher (
        id                             NUMBER NOT NULL CONSTRAINT publisher_id_pk PRIMARY KEY,
        book_publisher_id              NUMBER,
        pub_name                       VARCHAR2(255)
)

    CREATE TABLE users (
        student_id                     NUMBER NOT NULL CONSTRAINT users_student_id_pk PRIMARY KEY NOT NULL,
        first_name                     VARCHAR2(50) NOT NULL,
        last_name                      VARCHAR2(50) NOT NULL
)

    CREATE TABLE reservation (
        id                             NUMBER NOT NULL CONSTRAINT reservation_id_pk PRIMARY KEY,
        user_id                        NUMBER
                                       CONSTRAINT reservation_user_id_fk
                                       REFERENCES users ON DELETE CASCADE,
        res_date                       timestamp NOT NULL,
        book_isbn                      NUMBER
                                       CONSTRAINT reservation_book_isbn_fk
                                       REFERENCES book ON DELETE CASCADE
)

    CREATE TABLE reservation_status (
        id                             NUMBER NOT NULL CONSTRAINT reservation_status_id_pk PRIMARY KEY,
        reservation_id                 NUMBER
                                       CONSTRAINT reservation_s_reservation_i_fk
                                       REFERENCES reservation ON DELETE CASCADE,
        status_value                   enum('Available', 'Reserved')
)
    CREATE TABLE loan (
        id                             NUMBER NOT NULL CONSTRAINT loan_id_pk PRIMARY KEY,
        user_id                        NUMBER
                                       CONSTRAINT loan_user_id_fk
                                       REFERENCES users ON DELETE CASCADE,
        loan_given                     timestamp NOT NULL,
        loan_return                    timestamp NOT NULL,
        book_isbn                      NUMBER
                                       CONSTRAINT loan_book_isbn_fk
                                       REFERENCES book ON DELETE CASCADE
)
    CREATE TABLE fine (
        id                             NUMBER NOT NULL CONSTRAINT fine_id_pk PRIMARY KEY,
        user_id                        NUMBER
                                       CONSTRAINT fine_user_id_fk
                                       REFERENCES users ON DELETE CASCADE,
        fine_date                      timestamp NOT NULL,
        fine_total                     NUMBER
)

    CREATE TABLE fine_payment (
        id                             NUMBER NOT NULL CONSTRAINT fine_payment_id_pk PRIMARY KEY,
        user_id                        NUMBER
                                       CONSTRAINT fine_payment_user_id_fk
                                       REFERENCES users ON DELETE CASCADE,
        pay_date                       DATE,
        pay_amount                     VARCHAR2(4000)
)
