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
           VALUES ('1', '1', 'Death Stranding', 'From legendary game creator Hideo Kojima comes an all-new, genre-defying experience. Carrying the disconnected remnants of our future in his hands, Sam Bridges embarks on a journey to reconnect the shattered world one step at a time. With spectral creatures plaguing the landscape, and humanity on the verge of a mass extinction, it’s up to Sam to journey across the ravaged continent and save mankind from impending annihilation.', '18', 'Kojima Productions')
           
           INTO catalogue (cat_no, genre_id, title, synopsis, age_rating, developer)
           VALUES ('2', '2', 'LEGO Star Wars: The Skywalker Saga', 'Friends and family can dive right into their favorite saga film and play through memorable Star Wars moments, reimagined with LEGO fun and humor. Players can start at the beginning with Star Wars™: The Phantom Menace, begin the original trilogy with Star Wars™: A New Hope, or begin the sequel trilogy with Star Wars™: The Force Awakens . From the desert of Geonosis, to the swamps of Dagobah, to the snowfields of Starkiller Base – players will have the power to revisit any planet, at any time, in any order they wish. The entire galaxy is available to discover and play in.', '7', 'Warner Bros. Interactive Entertainment')	 
           
           INTO catalogue (cat_no, genre_id, title, synopsis, age_rating, developer)
           VALUES ('3', '3', 'Fifa 22', ' HYPERMOTION GAMEPLAY TECHNOLOGY: Brand new for EA SPORTS FIFA and on next generation consoles, HyperMotion combines two technologies for the first time ever, revolutionising football gameplay. GOALKEEPER REWRITE: A brand new goalkeeper system brings a new level of intelligence to the last line of defence, unlocking more reliable shot-stopping and smarter decision-making between the posts. In FIFA 22, goalkeeper positioning personality replicates the different styles of keepers throughout the game - to represent the lightning-fast reflexes of world-class shot stoppers. TRUE BALL PHYSICS: Real-world data imported into FIFA 22 takes the game’s ball physics to a new level of realism. Tuned parameters including speed, swerve, air drag, air resistance, ground friction, and rolling friction mean every touch, trap, shot, volley, pass, and dribble will look, move, and fly like the real thing', '3', 'Electronic Arts')
           
           INTO catalogue (cat_no, genre_id, title, synopsis, age_rating, developer)
           VALUES ('4', '4', 'Call of Duty: Black Ops', 'Former Marine Captain and CIA operative Alex Mason, upon interrogation by an unknown party, recounts his violent experiences with the Bay of Pigs, a radical Soviet conspiracy, and the Vietnam war.', '18', Treyarch)

SELECT 1 FROM dual;

INSERT ALL
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('1', 'PC', '1', '30/03/22', 'https://imgur.com/t/deathstranding/pGnbgdU')
           
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('2', 'PC', '1', '05/04/22', 'https://imgur.com/gallery/4RNZCHN')	 
           
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('3', 'PC', '1', '30/09/21', 'https://imgur.com/gallery/9RnVeDH' )
           
           INTO pc_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'PC', '1', '09/11/10', 'https://imgur.com/gallery/RX4C3cd' )

SELECT 1 FROM dual;

INSERT ALL      
           INTO wii_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'Wii', '1', '09/11/10', 'https://i0.wp.com/v1cdn.destructoid.com/188051_BlackOpsWii-620x.jpg?resize=620%2C460&ssl=1' )

SELECT 1 FROM dual;

INSERT ALL
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('1', 'PlayStation', '1', '08/11/19', 'https://imgur.com/t/deathstranding/pGnbgdU')
           
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('2', 'PlayStation', '1', '05/04/22', 'https://imgur.com/gallery/4RNZCHN')	 
           
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('3', 'PlayStation', '1', '30/09/21', 'https://imgur.com/gallery/9RnVeDH' )
           
           INTO ps_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'PlayStation', '1', '09/11/10', 'https://imgur.com/gallery/RX4C3cd' )

SELECT 1 FROM dual;

INSERT ALL
           INTO xbox_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('2', 'Xbox', '1', '05/04/22', 'https://imgur.com/gallery/4RNZCHN')	 
           
           INTO xbox_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('3', 'Xbox', '1', '30/09/21', 'https://imgur.com/gallery/9RnVeDH' )
           
           INTO xbox_cat (cat_no, platform, no_of_disks, release_date, screenshots)
           VALUES ('4', 'Xbox', '1', '09/11/10', 'https://imgur.com/gallery/RX4C3cd' )

SELECT 1 FROM dual;

INSERT ALL
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('1', '1', '05/04/22', '')
           
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('2', '2', '25/10/21', '')
           
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('3', '2', '25/10/21', '')
           
           INTO stock (stock_no, cat_no, date_aquired, date_removed)
           VALUES ('4', '4', '09/12/10', '')

SELECT 1 FROM dual;

INSERT ALL
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('1', '1', 'games.com', '')
           
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('1', '2', 'gameswarehouse', '')
           
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('1', '3', 'supplier1', '')
           
           INTO supplier (supplier_id, stock_no, supplier_name)
           VALUES ('1', '4', 'games.com', '')

SELECT 1 FROM dual;

INSERT ALL
           INTO member (member_id, first_name, last_name, email, address, postcode, city, active, create_date, last_update)
           VALUES ('1', 'Micheal', 'Bowhill', 'mb0whill@gmail.com', '24 address lane', 'AD1 RE5', 'Luton', '10/12/21', '')
           
           INTO member (member_id, first_name, last_name, email, address, postcode, city, active, create_date, last_update)
           VALUES ('2', 'Megan', 'Fraser', 'meg1fraser@gmail.com', '3 place hill', 'PL4 CEH', 'Bradford', '05/02/22', '01/04/22')
           
           INTO member (member_id, first_name, last_name, email, address, postcode, city, active, create_date, last_update)
           VALUES ('3', 'Kira', 'Crawford', 'KiraCrawford@gmail.com', '12 somewhere road', 'SM44 WHR', 'Rugby', '22/04/22', '')

SELECT 1 FROM dual;


INSERT ALL
           INTO reservation (res_id, stock_no, member_id, res_date)
           VALUES ('1', '3', '1', '08/12/22')

SELECT 1 FROM dual;

INSERT ALL
           INTO rental (rental_id, stock_no, member_id, rental_date, return_date)
           VALUES ('1', '1', '2', '05/12/22', '19/12/22')
           
           INTO rental (rental_id, stock_no, member_id, rental_date, return_date)
           VALUES ('2', '3', '3', '16/11/22', '30/11/22')

SELECT 1 FROM dual;

INSERT ALL
           INTO daily_rates (rate_type, rate_price)
           VALUES ('Latest Games', '1' )
           
           INTO daily_rates (rate_type, rate_price)
           VALUES ('Old Games', '0.3' )

SELECT 1 FROM dual;

INSERT ALL
           INTO fine (rental_id, fine_date, fine_debit, fine_credit)
           VALUES ('3', '01/12/22', '6', '0')

SELECT 1 FROM dual;

