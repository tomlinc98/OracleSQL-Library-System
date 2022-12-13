------------------------------CREATE TABLES------------------------------
    CREATE TABLE genre (
        genre_id                       NUMBER NOT NULL,
        genre                          VARCHAR2(50),

        CONSTRAINT genre_id_pk
            PRIMARY KEY(genre_id)
);

    CREATE TABLE platform (
        platform_id                    NUMBER NOT NULL,
        platform                       VARCHAR2(50),

        CONSTRAINT platform_id_pk
            PRIMARY KEY(platform_id)
);

    CREATE TABLE daily_rates (
        rate_id                        NUMBER NOT NULL,
        rate_type                      VARCHAR2(50),
        rate_price                     NUMBER,

        CONSTRAINT rate_id_pk
            PRIMARY KEY(rate_id)
);
    
    CREATE TABLE catalogue (
        catalogue_id                   NUMBER NOT NULL,
        genre_id                       NUMBER NOT NULL,
        platform_id                    NUMBER NOT NULL,
        title                          VARCHAR2(50),
        no_disks                       NUMBER NOT NULL,
        age_rating                     NUMBER DEFAULT 3,
        release_date                   DATE,
        synopsis                       VARCHAR2(255),
        screenshots                    VARCHAR2(255),
        review                         VARCHAR2(255),
        rating                         NUMBER,
        developer                      VARCHAR2(50),
        rate_id                        NUMBER NOT NULL,
        CONSTRAINT catalogue_id_pk 
            PRIMARY KEY(catalogue_id),
        CONSTRAINT genre_id_fk
            FOREIGN KEY(genre_id)
            REFERENCES genre(genre_id),
        CONSTRAINT platform_id_fk
            FOREIGN KEY(platform_id)
            REFERENCES platform(platform_id),
        CONSTRAINT rate_id_fk
            FOREIGN KEY(rate_id)
            REFERENCES daily_rates(rate_id)
);

    CREATE TABLE stock (
        stock_id                       NUMBER NOT NULL,
        catalogue_id                   NUMBER NOT NULL,
        copies_held                    NUMBER,
        notes                          VARCHAR2(255),
      
        CONSTRAINT stock_id_pk 
            PRIMARY KEY(stock_id),
        CONSTRAINT catalogue_id_fk
            FOREIGN KEY(catalogue_id) 
            REFERENCES catalogue(catalogue_id)
);

  CREATE TABLE supplier (
      supplier_id                    NUMBER NOT NULL,
      supplier_name                  VARCHAR2(255),

      CONSTRAINT supplier_id_pk
          PRIMARY KEY(supplier_id)
);

  CREATE TABLE supplier_item (
      order_id                       NUMBER NOT NULL,  
      supplier_id                    NUMBER NOT NULL,
      stock_id                       NUMBER NOT NULL,
      cost                           NUMBER,
      date_aquired                   DATE,
      
      CONSTRAINT order_id_pk
          PRIMARY KEY(order_id),      
      CONSTRAINT supplier_id_fk
          FOREIGN KEY(supplier_id)
          REFERENCES supplier(supplier_id),
      CONSTRAINT sup_stock_id_fk
          FOREIGN KEY(stock_id)
          REFERENCES stock(stock_id)
);

    CREATE TABLE members (
        member_id                      NUMBER NOT NULL,
        first_name                     VARCHAR2(255) NOT NULL,
        last_name                      VARCHAR2(255) NOT NULL,
        email                          VARCHAR2(255) NOT NULL UNIQUE,
        date_of_birth                  DATE NOT NULL,
        address_1                      VARCHAR2(255) NOT NULL,
        address_2                      VARCHAR2(255),
        city                           VARCHAR2(50) NOT NULL,
        postcode                       VARCHAR2(8) NOT NULL,
        tel_no                         NUMBER(15),
        max_no_rentals                 NUMBER DEFAULT 4,
        create_date                    DATE NOT NULL,
        last_update                    DATE NOT NULL,
        active                         NUMBER(1) NOT NULL,
        CONSTRAINT member_id_pk 
            PRIMARY KEY(member_id),
        CONSTRAINT ck_mail 
            CHECK (regexp_like(email, '^(\S+)\@(\S+)\.(\S+)$'))
);

    CREATE TABLE fine (
        fine_id                        NUMBER NOT NULL,
        fine_date                      DATE NOT NULL,
        fine_debit                     NUMBER,
        fine_credit                    NUMBER,

        CONSTRAINT fine_id_pk
            PRIMARY KEY(fine_id)
);


    CREATE TABLE rental (
        member_id                      NUMBER NOT NULL,
        stock_id                       NUMBER NOT NULL,
        issue_date                     DATE NOT NULL,
        return_due                     DATE NOT NULL,
        return_date                    DATE NOT NULL,
        no_renewals                    NUMBER DEFAULT 0,
        rate_id                        NUMBER NOT NULL,
        fine_id                        NUMBER NULL,

        CONSTRAINT rental_id_pk 
            PRIMARY KEY(stock_id, issue_date),
        CONSTRAINT ren_member_id_fk
            FOREIGN KEY(member_id)
            REFERENCES members(member_id),
        CONSTRAINT ren_stock_id_fk
            FOREIGN KEY(stock_id)
            REFERENCES stock(stock_id),
        CONSTRAINT fine_id_fk
            FOREIGN KEY(fine_id)
            REFERENCES fine(fine_id)
);

    CREATE TABLE reservation (
        catalogue_id                   NUMBER NOT NULL,
        member_id                      NUMBER NOT NULL,
        date_requested                 DATE NOT NULL,
        date_issued                    DATE NULL,

        CONSTRAINT res_catalogue_id_fk
            FOREIGN KEY(catalogue_id)
            REFERENCES catalogue(catalogue_id),
        CONSTRAINT res_member_id_fk
            FOREIGN KEY(member_id)
            REFERENCES members(member_id),
        CONSTRAINT res_id_pk 
            PRIMARY KEY(catalogue_id, member_id, date_requested)
);
------------------------------INSERT INTO------------------------------
INSERT ALL
           INTO genre (genre_id, genre)
           VALUES ('1', 'Action')
           
           INTO genre (genre_id, genre)
           VALUES ('2', 'Adventure')	 
           
           INTO genre (genre_id, genre)
           VALUES ('3', 'Sports')
           
           INTO genre (genre_id, genre)
           VALUES ('4', 'Shooter')
           
SELECT 1 FROM dual;

INSERT ALL
           INTO platform (platform_id, platform)
           VALUES ('1', 'PC')
           
           INTO platform (platform_id, platform)
           VALUES ('2', 'PlayStation')	 
           
           INTO platform (platform_id, platform)
           VALUES ('3', 'Xbox')
           
           INTO platform (platform_id, platform)
           VALUES ('4', 'Wii')
           
SELECT 1 FROM dual;

INSERT ALL
           INTO daily_rates (rate_id, rate_type, rate_price)
           VALUES ('1', 'Latest Games', '1')
           
           INTO daily_rates (rate_id, rate_type, rate_price)
           VALUES ('2', 'Old Games', '0.3')

SELECT 1 FROM dual;

INSERT ALL
           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('1', '1', '1', 'Death Stranding', '1', '18', '30-MAR-22', 'From legendary game creator Hideo Kojima comes an all-new, genre-defying experience. Carrying the disconnected remnants of our future in his hands, Sam Bridges embarks on a journey to reconnect the shattered world one step at a time.', 'https://imgur.com/t/deathstranding/pGnbgdU', 'https://www.metacritic.com/game/playstation-4/death-stranding', '7.4', 'Kojima Productions', '2')
 
           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('2', '1', '2', 'Death Stranding', '1', '18', '08-NOV-19', 'From legendary game creator Hideo Kojima comes an all-new, genre-defying experience. Carrying the disconnected remnants of our future in his hands, Sam Bridges embarks on a journey to reconnect the shattered world one step at a time.', 'https://imgur.com/t/deathstranding/pGnbgdU', 'https://www.metacritic.com/game/playstation-4/death-stranding', '7.4', 'Kojima Productions', '2')
 
           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('3', '2', '1', 'LEGO Star Wars: The Skywalker Saga', '1', '7', '05-APR-22', 'Friends and family can dive right into their favorite saga film and play through memorable Star Wars moments, reimagined with LEGO fun and humor.', 'https://imgur.com/gallery/4RNZCHN', 'https://www.metacritic.com/game/playstation-5/lego-star-wars-the-skywalker-saga', '8.1', 'Warner Bros. Interactive Entertainment', '2')	 

           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('4', '2', '2', 'LEGO Star Wars: The Skywalker Saga', '1', '7', '05-APR-22', 'Friends and family can dive right into their favorite saga film and play through memorable Star Wars moments, reimagined with LEGO fun and humor.', 'https://imgur.com/gallery/4RNZCHN', 'https://www.metacritic.com/game/playstation-5/lego-star-wars-the-skywalker-saga', '8.1', 'Warner Bros. Interactive Entertainment', '2')	 

           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('5', '2', '3', 'LEGO Star Wars: The Skywalker Saga', '1', '7', '05-APR-22', 'Friends and family can dive right into their favorite saga film and play through memorable Star Wars moments, reimagined with LEGO fun and humor.', 'https://imgur.com/gallery/4RNZCHN', 'https://www.metacritic.com/game/playstation-5/lego-star-wars-the-skywalker-saga', '8.1', 'Warner Bros. Interactive Entertainment', '2')	 
          
           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('6', '3', '1', 'Fifa 22', '1', '3', '30-SEP-21', 'HYPERMOTION GAMEPLAY TECHNOLOGY: Brand new for EA SPORTS FIFA and on next generation consoles, HyperMotion combines two technologies for the first time ever, revolutionising football gameplay.','https://imgur.com/gallery/9RnVeDH','https://www.metacritic.com/game/pc/fifa-22', '1.8', 'Electronic Arts', '2')

           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('7', '3', '2', 'Fifa 22', '1', '3', '30-SEP-21', 'HYPERMOTION GAMEPLAY TECHNOLOGY: Brand new for EA SPORTS FIFA and on next generation consoles, HyperMotion combines two technologies for the first time ever, revolutionising football gameplay.','https://imgur.com/gallery/9RnVeDH','https://www.metacritic.com/game/playstation-4/fifa-22', '2.1', 'Electronic Arts', '2')

           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('8', '3', '3', 'Fifa 22', '1', '3', '30-SEP-21', 'HYPERMOTION GAMEPLAY TECHNOLOGY: Brand new for EA SPORTS FIFA and on next generation consoles, HyperMotion combines two technologies for the first time ever, revolutionising football gameplay.','https://imgur.com/gallery/9RnVeDH','https://www.metacritic.com/game/xbox-one/fifa-22', '2.0', 'Electronic Arts', '2')
           
           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('9', '4', '1', 'Call of Duty: Black Ops', '1', '18', '09-NOV-10', 'Former Marine Captain and CIA operative Alex Mason, upon interrogation by an unknown party, recounts his violent experiences with the Bay of Pigs, a radical Soviet conspiracy, and the Vietnam war.', 'https://imgur.com/gallery/RX4C3cd', 'https://www.metacritic.com/game/pc/call-of-duty-black-ops', '5.8', 'Treyarch', '2')

           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('10', '4', '2', 'Call of Duty: Black Ops', '1', '18', '09-NOV-10', 'Former Marine Captain and CIA operative Alex Mason, upon interrogation by an unknown party, recounts his violent experiences with the Bay of Pigs, a radical Soviet conspiracy, and the Vietnam war.', 'https://imgur.com/gallery/RX4C3cd', 'https://www.metacritic.com/game/playstation-3/call-of-duty-black-ops', '6.9', 'Treyarch', '2')

           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('11', '4', '3', 'Call of Duty: Black Ops', '1', '18', '09-NOV-10', 'Former Marine Captain and CIA operative Alex Mason, upon interrogation by an unknown party, recounts his violent experiences with the Bay of Pigs, a radical Soviet conspiracy, and the Vietnam war.', 'https://imgur.com/gallery/RX4C3cd', 'https://www.metacritic.com/game/xbox-360/call-of-duty-black-ops', '6.7', 'Treyarch', '2')

           INTO catalogue (catalogue_id, genre_id, platform_id, title, no_disks, age_rating, release_date, synopsis, screenshots, review, rating, developer, rate_id)
           VALUES ('12', '4', '4', 'Call of Duty: Black Ops', '1', '18', '09-NOV-10', 'Former Marine Captain and CIA operative Alex Mason, upon interrogation by an unknown party, recounts his violent experiences with the Bay of Pigs, a radical Soviet conspiracy, and the Vietnam war.', 'https://i0.wp.com/v1cdn.destructoid.com/188051_BlackOpsWii-620x.jpg?resize=620%2C460&ssl=1', 'https://www.metacritic.com/game/wii/call-of-duty-black-ops', '6.1', 'Treyarch', '2')

SELECT 1 FROM dual;

INSERT ALL
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('1', '1', '1', 'box damage on corner')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('2', '2', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('3', '3', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('4', '4', '1', 'missing manual')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('5', '5', '1', '')

           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('6', '6', '1', '')

           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('7', '7', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('8', '8', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('9', '9', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('10', '10', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('11', '11', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('12', '12', '1', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('13', '12', '2', '')
           
           INTO stock (stock_id, catalogue_id, copies_held, notes)
           VALUES ('14', '5', '2', '')

SELECT 1 FROM dual;
        
INSERT ALL
           INTO supplier (supplier_id, supplier_name)
           VALUES ('1', 'games.com')
           
           INTO supplier (supplier_id, supplier_name)
           VALUES ('2', 'gameswarehouse')
           
           INTO supplier (supplier_id, supplier_name)
           VALUES ('3', 'supplier1')

SELECT 1 FROM dual;

INSERT ALL
           INTO supplier_item (order_id, supplier_id, stock_id, cost, date_aquired)
           VALUES ('1', '1', '1', '14.99', '25-MAR-22')
           
           INTO supplier_item (order_id, supplier_id, stock_id, cost, date_aquired)
           VALUES ('2', '2', '5', '5.99', '16-SEP-11')
           
           INTO supplier_item (order_id, supplier_id, stock_id, cost, date_aquired)
           VALUES ('3', '2', '14', '5.99', '16-SEP-11')

SELECT 1 FROM dual;

INSERT ALL
           INTO members (member_id, first_name, last_name, email, date_of_birth, address_1, address_2, city, postcode, tel_no, max_no_rentals, create_date, last_update, active)
           VALUES ('1', 'Micheal', 'Bowhill', 'mb0whill@gmail.com', '17-MAY-1979', '24 address lane', '', 'Luton', 'AD1RE5', '07734734734', '4', '10-DEC-21', '10-DEC-21', '1')
           
           INTO members (member_id, first_name, last_name, email, date_of_birth, address_1, address_2, city, postcode, tel_no, max_no_rentals, create_date, last_update, active)
           VALUES ('2', 'Megan', 'Fraser', 'meg1fraser@gmail.com', '10-SEP-2001', '3 place hill', '', 'Bradford', 'PL4CEH', '07234234234', '4', '05-FEB-22', '01-MAR-22', '1')
           
           INTO members (member_id, first_name, last_name, email, date_of_birth, address_1, address_2, city, postcode, tel_no, max_no_rentals, create_date, last_update, active)
           VALUES ('3', 'Kira', 'Crawford', 'KiraCrawford@gmail.com', '30-JUN-1984', '12 somewhere road', '', 'Rugby', 'SM44WHR', '07991991991', '4', '22-APR-22', '22-APR-22', '1')

SELECT 1 FROM dual;


INSERT ALL
           INTO fine (fine_id, fine_date, fine_debit, fine_credit)
           VALUES ('1', '01-DEC-22', '6', '6')

SELECT 1 FROM dual;
        
INSERT ALL
           INTO rental (member_id, stock_id, issue_date, return_due, return_date, no_renewals, rate_id, fine_id)
           VALUES ('2', '1', '05-DEC-22', '19-DEC-22', '19-DEC-22', '0', '2', '')
           
           INTO rental (member_id, stock_id, issue_date, return_due, return_date, no_renewals, rate_id, fine_id)
           VALUES ('3', '3', '16-NOV-22', '28-DEC-22', '28-DEC-22', '4', '2', '')

SELECT 1 FROM dual;

INSERT ALL
           INTO reservation (catalogue_id, member_id, date_requested, date_issued)
           VALUES ('3', '1', '08-DEC-22', '')

SELECT 1 FROM dual;
