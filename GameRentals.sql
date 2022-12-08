------------------------------CREATE TABLES------------------------------
    
    CREATE TABLE catalogue (
        cat_no                         NUMBER NOT NULL,
        genre                          VARCHAR2(200),
        title                          VARCHAR2(200),
        synopsis                       VARCHAR2(200),
        age_rating                     NUMBER,
        developer                      VARCHAR2(200),
        rate_price                     NUMBER,
        
        CONSTRAINT cat_no_pk 
            PRIMARY KEY(cat_no),
        CONSTRAINT genre_fk
            FOREIGN KEY(genre)
            REFERENCES genre
);

    CREATE TABLE pc_cat (
        platform                       VARCHAR(200),
        no_of_disks                    NUMBER(200),
        release_date                   DATE(200),
        screenshots                    VARCHAR2(200),
);

    CREATE TABLE wii_cat (
        platform                       VARCHAR(200),
        no_of_disks                    NUMBER(200),
        release_date                   DATE(200),
        screenshots                    VARCHAR2(200),
);

    CREATE TABLE ps_cat (
        platform                       VARCHAR(200),
        no_of_disks                    NUMBER(200),
        release_date                   DATE(200),
        screenshots                    VARCHAR2(200),
);

    CREATE TABLE xbox_cat (
        platform                       VARCHAR(200),
        no_of_disks                    NUMBER(200),
        release_date                   DATE(200),
        screenshots                    VARCHAR2(200),
);

---------------------------CATALOGUE GENERALISATION---------------------------

    CREATE TABLE genre (
        gen_id                         NUMBER NOT NULL,
        genre                          VARCHAR2(200),

        CONSTRAINT gen_id_pk
            PRIMARY KEY(gen_id)
);

    CREATE TABLE stock (
        stock_no                       NUMBER NOT NULL,
        cat_no                         NUMBER NOT NULL,
        date_aquired                   DATE NOT NULL,
        date_removed                   DATE,
      
        CONSTRAINT stock_no_pk 
            PRIMARY KEY(stock_no),
        CONSTRAINT cat_no_fk 
            FOREIGN KEY(cat_no) 
            REFERENCES catalogue(cat_no) ON DELETE CASCADE
);

    CREATE TABLE daily_rates (
        rate_type                      NUMBER NOT NULL,
        rate_price                     NUMBER,
);

--  CREATE TABLE supplier (
--      stock_no                       NUMBER NOT NULL,
--      cat_no                         VARCHAR2(200),
--
--      CONSTRAINT gen_id_pk
--          PRIMARY KEY(gen_id)
--;)

    CREATE TABLE reservation (
        res_id                         NUMBER NOT NULL,
        stock_no                       NUMBER,
        member_id                      NUMBER,
        res_date                       DATE NOT NULL,

        CONSTRAINT res_id_pk 
            PRIMARY KEY(res_id),
        CONSTRAINT stock_no_fk
            FOREIGN KEY(stock_no)
            REFERENCES stock(stock_no) ON DELETE CASCADE,
        CONSTRAINT member_id_fk
            FOREIGN KEY(member_id)
            REFERENCES member(member_id) ON DELETE CASCADE
);


    CREATE TABLE rental (
        rental_id                      NUMBER NOT NULL,
        stock_no                       NUMBER,
        member_id                      NUMBER,
        rental_date                    DATE NOT NULL,
        return_date                    DATE NOT NULL,

        CONSTRAINT rental_id_pk 
            PRIMARY KEY(rental_id),
        CONSTRAINT stock_no_fk
            FOREIGN KEY(stock_no)
            REFERENCES stock(stock_no) ON DELETE CASCADE,
        CONSTRAINT member_id_fk
            FOREIGN KEY(member_id)
            REFERENCES member(member_id) ON DELETE CASCADE
);

    CREATE TABLE member (
        member_id                      NUMBER NOT NULL,
        first_name                     VARCHAR2(200) NOT NULL,
        last_name                      VARCHAR2(200) NOT NULL,
        email                          VARCHAR2(200) NOT NULL UNIQUE,
        active                         VARCHAR2(200) NOT NULL,
        create_date                    DATE NOT NULL,
        last_update                    DATE NOT NULL,
        CONSTRAINT member_id_pk 
            PRIMARY KEY(member_id),
        CONSTRAINT ck_mail 
            CHECK (regexp_like(email, '^(\S+)\@(\S+)\.(\S+)$'))
);

    CREATE TABLE fine (
        fine_id                        NUMBER NOT NULL,
        rental_id                      NUMBER,
        member_id                      NUMBER,
        fine_date                      DATE NOT NULL,
        fine_debit                     NUMBER,
        fine_credit                    NUMBER,

        CONSTRAINT fine_id_pk
            PRIMARY KEY(fine_id),
        CONSTRAINT member_id_fk
            FOREIGN KEY(member_id)
            REFERENCES members(member_id) ON DELETE CASCADE,
        CONSTRAINT rental_id_fk
            FOREIGN KEY(rental_id)
            REFERENCES rental(rental_id) ON DELETE CASCADE
);
