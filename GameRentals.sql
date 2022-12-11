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
      supplier_name                  VARCHAR2(255),

      CONSTRAINT supplier_id_pk
          PRIMARY KEY(supplier_id)
);

  CREATE TABLE supplier_item (
      supplier_id                    NUMBER NOT NULL,
      stock_no                       NUMBER NOT NULL,

      CONSTRAINT supplier_id_fk
          FOREIGN KEY(supplier_id)
          REFERENCES supplier(supplier_id),
      CONSTRAINT supi_stock_no_fk
          FOREIGN KEY(stock_no)
          REFERENCES stock(stock_no)
);

    CREATE TABLE member (
        member_id                      NUMBER NOT NULL,
        first_name                     VARCHAR2(255) NOT NULL,
        last_name                      VARCHAR2(255) NOT NULL,
        email                          VARCHAR2(255) NOT NULL UNIQUE,
        address                        VARCHAR2(255) NOT NULL,
        postcode                       VARCHAR2(8) NOT NULL,
        city                           VARCHAR2(50) NOT NULL,
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

------------------------------INSERT INTO------------------------------
INSERT ALL
           INTO genre (gen_id, genre)
           VALUES ('1', 'Action')
           
           INTO genre (gen_id, genre)
           VALUES ('2', 'Adventure')	 
           
           INTO genre (gen_id, genre)
           VALUES ('3', 'Sports')
           
           INTO genre (gen_id, genre)
           VALUES ('4', 'Shooter')
           
SELECT 1 FROM dual;

INSERT ALL
           INTO catalogue (cat_no, genre_id, title, synopsis, age_rating, developer)
           VALUES ('1', '1', 'Death Stranding', 'From legendary game creator Hideo Kojima comes an all-new, genre-defying experience. Carrying the disconnected remnants of our future in his hands, Sam Bridges embarks on a journey to reconnect the shattered world one step at a time.', '18', 'Kojima Productions')
           
           INTO catalogue (cat_no, genre_id, title, synopsis, age_rating, developer)
           VALUES ('2', '2', 'LEGO Star Wars: The Skywalker Saga', 'Friends and family can dive right into their favorite saga film and play through memorable Star Wars moments, reimagined with LEGO fun and humor.', '7', 'Warner Bros. Interactive Entertainment')	 
           
           INTO catalogue (cat_no, genre_id, title, synopsis, age_rating, developer)
           VALUES ('3', '3', 'Fifa 22', ' HYPERMOTION GAMEPLAY TECHNOLOGY: Brand new for EA SPORTS FIFA and on next generation consoles, HyperMotion combines two technologies for the first time ever, revolutionising football gameplay.', '3', 'Electronic Arts')
           
           INTO catalogue (cat_no, genre_id, title, synopsis, age_rating, developer)
           VALUES ('4', '4', 'Call of Duty: Black Ops', 'Former Marine Captain and CIA operative Alex Mason, upon interrogation by an unknown party, recounts his violent experiences with the Bay of Pigs, a radical Soviet conspiracy, and the Vietnam war.', '18', 'Treyarch')

SELECT 1 FROM dual;

INSERT ALL
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('1', 'PC', '1', '30-MAR-22', 'https://imgur.com/t/deathstranding/pGnbgdU')
           
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('2', 'PC', '1', '05-APR-22', 'https://imgur.com/gallery/4RNZCHN')	 
           
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('3', 'PC', '1', '30-SEP-21', 'https://imgur.com/gallery/9RnVeDH' )
           
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'PC', '1', '09-NOV-10', 'https://imgur.com/gallery/RX4C3cd' )

SELECT 1 FROM dual;

INSERT ALL      
           INTO wii_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'Wii', '1', '09-NOV-10', 'https://i0.wp.com/v1cdn.destructoid.com/188051_BlackOpsWii-620x.jpg?resize=620%2C460&ssl=1' )

SELECT 1 FROM dual;

INSERT ALL
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('1', 'PlayStation', '1', '08-NOV-19', 'https://imgur.com/t/deathstranding/pGnbgdU')
           
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('2', 'PlayStation', '1', '05-APR-22', 'https://imgur.com/gallery/4RNZCHN')	 
           
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('3', 'PlayStation', '1', '30-SEP-21', 'https://imgur.com/gallery/9RnVeDH' )
           
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'PlayStation', '1', '09-NOV-10', 'https://imgur.com/gallery/RX4C3cd' )

SELECT 1 FROM dual;

INSERT ALL
           INTO xbox_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('2', 'Xbox', '1', '05-APR-22', 'https://imgur.com/gallery/4RNZCHN')	 
           
           INTO xbox_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('3', 'Xbox', '1', '30-SEP-21', 'https://imgur.com/gallery/9RnVeDH' )
           
           INTO xbox_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'Xbox', '1', '09-NOV-10', 'https://imgur.com/gallery/RX4C3cd' )

SELECT 1 FROM dual;

INSERT ALL
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('1', '1', '05-APR-22', '')
           
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('2', '2', '25-OCT-21', '')
           
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('3', '2', '25-OCT-21', '')
           
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('4', '4', '09-DEC-10', '')

SELECT 1 FROM dual;

INSERT ALL
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('1', '1', 'games.com')
           
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('2', '2', 'gameswarehouse')
           
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('3', '3', 'supplier1')
           
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('4', '4', 'games.com')

SELECT 1 FROM dual;

INSERT ALL
           INTO member (member_id, first_name, last_name, email, address, postcode, city, active, create_date, last_update)
           VALUES ('1', 'Micheal', 'Bowhill', 'mb0whill@gmail.com', '24 address lane', 'AD1 RE5', 'Luton', '1', '10-DEC-21', '10-DEC-21')
           
           INTO member (member_id, first_name, last_name, email, address, postcode, city, active, create_date, last_update)
           VALUES ('2', 'Megan', 'Fraser', 'meg1fraser@gmail.com', '3 place hill', 'PL4 CEH', 'Bradford', '1', '05-FEB-22', '01-MAR-22')
           
           INTO member (member_id, first_name, last_name, email, address, postcode, city, active, create_date, last_update)
           VALUES ('3', 'Kira', 'Crawford', 'KiraCrawford@gmail.com', '12 somewhere road', 'SM44 WHR', 'Rugby', '1', '22-APR-22', '22-APR-22')

SELECT 1 FROM dual;


INSERT ALL
           INTO reservation (res_id, stock_no, member_id, res_date)
           VALUES ('1', '3', '1', '08-DEC-22')

SELECT 1 FROM dual;

INSERT ALL
           INTO rental (rental_id, stock_no, member_id, rental_date, return_date)
           VALUES ('1', '1', '2', '05-DEC-22', '19-DEC-22')
           
           INTO rental (rental_id, stock_no, member_id, rental_date, return_date)
           VALUES ('2', '3', '3', '16-NOV-22', '30-DEC-22')

SELECT 1 FROM dual;

INSERT ALL
           INTO daily_rates (rate_type, rate_price)
           VALUES ('Latest Games', '1' )
           
           INTO daily_rates (rate_type, rate_price)
           VALUES ('Old Games', '0.3' )

SELECT 1 FROM dual;

INSERT ALL
           INTO fine (rental_id, fine_date, fine_debit, fine_credit)
           VALUES ('2', '01-DEC-22', '6', '0')

SELECT 1 FROM dual;
