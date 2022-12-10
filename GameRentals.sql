------------------------------CREATE TABLES------------------------------
    CREATE TABLE genre (
        gen_id                         NUMBER NOT NULL,
        genre                          VARCHAR2(50),

        CONSTRAINT gen_id_pk
            PRIMARY KEY(gen_id)
);
    
    CREATE TABLE catalogue (
        cat_no                         NUMBER NOT NULL,
        genre_id                       NUMBER NOT NULL,
        title                          VARCHAR2(50),
        synopsis                       VARCHAR2(255),
        age_rating                     NUMBER,
        developer                      VARCHAR2(50),
        
        CONSTRAINT cat_no_pk 
            PRIMARY KEY(cat_no),
        CONSTRAINT genre_fk
            FOREIGN KEY(genre_id)
            REFERENCES genre
);

    CREATE TABLE pc_cat (
        cat_no                         NUMBER NOT NULL,
        platform                       VARCHAR(50),
        no_of_disks                    NUMBER,
        release_date                   DATE,
        screenshots                    VARCHAR2(255),
        
        CONSTRAINT pc_cat_no_fk
            FOREIGN KEY(cat_no)
            REFERENCES catalogue
);

    CREATE TABLE wii_cat (
        cat_no                         NUMBER NOT NULL,
        platform                       VARCHAR(50),
        no_of_disks                    NUMBER,
        release_date                   DATE,
        screenshots                    VARCHAR2(255),
        
        CONSTRAINT wii_cat_no_fk
            FOREIGN KEY(cat_no)
            REFERENCES catalogue
);

    CREATE TABLE ps_cat (
        cat_no                         NUMBER NOT NULL,
        platform                       VARCHAR(50),
        no_of_disks                    NUMBER,
        release_date                   DATE,
        screenshots                    VARCHAR2(255),
        
        CONSTRAINT ps_cat_no_fk
            FOREIGN KEY(cat_no)
            REFERENCES catalogue
);

    CREATE TABLE xbox_cat (
        cat_no                         NUMBER NOT NULL,
        platform                       VARCHAR(50),
        no_of_disks                    NUMBER,
        release_date                   DATE,
        screenshots                    VARCHAR2(255),
        
        CONSTRAINT xbox_cat_no_fk
            FOREIGN KEY(cat_no)
            REFERENCES catalogue
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
            REFERENCES catalogue(cat_no)
);

  CREATE TABLE supplier (
      supplier_id                    NUMBER NOT NULL,
      stock_no                       NUMBER NOT NULL,
      supplier_name                  VARCHAR2(255),

      CONSTRAINT supplier_id_pk
          PRIMARY KEY(supplier_id)
);

    CREATE TABLE member (
        member_id                      NUMBER NOT NULL,
        first_name                     VARCHAR2(255) NOT NULL,
        last_name                      VARCHAR2(255) NOT NULL,
        email                          VARCHAR2(255) NOT NULL UNIQUE,
        active                         NUMBER(1) NOT NULL,
        create_date                    DATE NOT NULL,
        last_update                    DATE NOT NULL,
        CONSTRAINT member_id_pk 
            PRIMARY KEY(member_id),
        CONSTRAINT ck_mail 
            CHECK (regexp_like(email, '^(\S+)\@(\S+)\.(\S+)$'))
);

    CREATE TABLE reservation (
        res_id                         NUMBER NOT NULL,
        stock_no                       NUMBER NOT NULL,
        member_id                      NUMBER NOT NULL,
        res_date                       DATE NOT NULL,

        CONSTRAINT res_id_pk 
            PRIMARY KEY(res_id),
        CONSTRAINT res_stock_no_fk
            FOREIGN KEY(stock_no)
            REFERENCES stock(stock_no),
        CONSTRAINT res_member_id_fk
            FOREIGN KEY(member_id)
            REFERENCES member(member_id)    
);


    CREATE TABLE rental (
        rental_id                      NUMBER NOT NULL,
        stock_no                       NUMBER NOT NULL,
        member_id                      NUMBER NOT NULL,
        rental_date                    DATE NOT NULL,
        return_date                    DATE NOT NULL,

        CONSTRAINT rental_id_pk 
            PRIMARY KEY(rental_id),
        CONSTRAINT ren_stock_no_fk
            FOREIGN KEY(stock_no)
            REFERENCES stock(stock_no),
        CONSTRAINT ren_member_id_fk
            FOREIGN KEY(member_id)
            REFERENCES member(member_id)
);

    CREATE TABLE daily_rates (
        rate_type                      VARCHAR2(50),
        rate_price                     NUMBER
);

    CREATE TABLE fine (
        rental_id                      NUMBER NOT NULL,
        fine_date                      DATE NOT NULL,
        fine_debit                     NUMBER,
        fine_credit                    NUMBER,

        CONSTRAINT fine_rental_id_fk
            FOREIGN KEY(rental_id)
            REFERENCES rental(rental_id)
);
