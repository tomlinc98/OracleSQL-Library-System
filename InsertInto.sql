-------------------------INSERT CATAGORY VALUES--------------------------

INSERT ALL
           INTO category (id, cat_name)
           VALUES ('1', 'Lifestyle')
           
           INTO category (id, cat_name)
           VALUES ('2', 'Horror')
           
           INTO category (id, cat_name)
           VALUES ('3', 'Non-Fiction')
           
           INTO category (id, cat_name)
           VALUES ('4', 'Economics')
           
           INTO category (id, cat_name)
           VALUES ('5', 'Parenting')
           
           INTO category (id, cat_name)
           VALUES ('6', 'Asian-American Literature')
           
           INTO category (id, cat_name)
           VALUES ('7', 'Food & Nutrition')
           
           INTO category (id, cat_name)
           VALUES ('8', 'Crime')
           
           INTO category (id, cat_name)
           VALUES ('9', 'Nature')
           
           INTO category (id, cat_name)
           VALUES ('10', 'Religion')

SELECT 1 FROM dual;

---------------------------INSERT BOOK VALUES----------------------------

INSERT ALL
           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9781409189121', 'All the Young Men: How One Woman Risked It All To Care For The Dying', 'B1', TO_DATE('21-JAN-2021', 'DD-MON-YYYY'), '5', '1')

           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9780241529713', 'Why has nobody told me this before?', 'B4', TO_DATE('06-JAN-2022', 'DD-MON-YYYY'), '11', '1')

           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9781846274510', 'Behind the Beautiful Forevers: Life, Death and Hope in a Mumbai Undercity' , 'D8' , TO_DATE('07-FEB-2013', 'DD-MON-YYYY'), '6', '3')

           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9780141019017', 'Freakonomics: A Rogue Economist Explores The Hidden Side Of Everything' , 'E3' , TO_DATE('18-JUN-2007', 'DD-MON-YYYY'), '2', '4')
           
           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9780099460992', 'Far from the Tree: Parents, Children, and the Search for Identity' , 'J1' , TO_DATE('06-MAR-2014', 'DD-MON-YYYY'), '15', '5')

           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9781984820389', 'Minor Feelings: An Asian American Reckoning' , 'A8' , TO_DATE('05-MAR-2020', 'DD-MON-YYYY'), '9', '6')

           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9781594200823', 'The Omnivore’s Dilemma: A Natural History of Four Meals' , 'F3' , TO_DATE('11-APR-2006', 'DD-MON-YYYY'), '3', '7')
           
           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9780141006871', 'Fast Food Nation: What The All-American Meal Is Doing To The World' , 'F2' , TO_DATE('04-APR-2002', 'DD-MON-YYYY'), '1', '7')
           
           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9780195069976', 'The Sea around us', 'I2' , TO_DATE('02-JUL-1951', 'DD-MON-YYYY'), '1', '9')
           
           INTO book (isbn, title, location_code, publication_date, stock, category_id) 
           VALUES ('9781848250789', 'Pilgrim at Tinker creek' , 'R5' , TO_DATE('02-JUL-1974', 'DD-MON-YY'), '4', '10')
                   
SELECT 1 FROM dual;

---------------------------INSERT COPY VALUES----------------------------

INSERT ALL
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('1', '9781409189121', TO_DATE('25-JAN-2021', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('2', '9780241529713', TO_DATE('10-JUL-2020', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('3', '9781846274510', TO_DATE('05-SEP-2020', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('4', '9780141019017', TO_DATE('10-JUL-2020', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('5', '9780099460992', TO_DATE('12-DEC-2021', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('6', '9781984820389', TO_DATE('23-MAY-2019', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('7', '9781594200823', TO_DATE('01-FEB-2018', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('8', '9780141006871', TO_DATE('19-AUG-2021', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('9', '9780195069976', TO_DATE('21-JAN-2022', 'DD-MON-YYYY'))
           
           INTO copy (id, book_isbn, date_aquired)
           VALUES ('10', '9781848250789', TO_DATE('13-NOV-2021', 'DD-MON-YYYY'))
           
SELECT 1 FROM dual;

--------------------------INSERT AUTHOR VALUES--------------------------

INSERT ALL
           INTO author (id, first_name, last_name) 
           VALUES ('1', 'Ruth Cooker', 'Burks')
           
           INTO author (id, first_name, last_name) 
           VALUES ('2', 'Dr Julie', 'Smith')
           
           INTO author (id, first_name, last_name) 
           VALUES ('3', 'Katherine', 'Boo')
           
           INTO author (id, first_name, last_name)
           VALUES ('4', 'Steven D.', 'Levitt')
           
           INTO author (id, first_name, last_name) 
           VALUES ('5', 'Andrew', 'Solomon')
           
           INTO author (id, first_name, last_name) 
           VALUES ('6', 'Cathy Park', 'Hong')
           
           INTO author (id, first_name, last_name) 
           VALUES ('7', 'Michael', 'Pollen')
           
           INTO author (id, first_name, last_name) 
           VALUES ('8', 'Eric', 'Schlosser')
           
           INTO author (id, first_name, last_name) 
           VALUES ('9', 'Rachel', 'Carson')
           
           INTO author (id, first_name, last_name) 
           VALUES ('10', 'Annie', 'Dillard');

SELECT 1 FROM dual;

---------------------------INSERT LOAN VALUES----------------------------

INSERT ALL
           INTO tblloans 
           VALUES(1, '00:00:01', '15:45:06', 1, 1)
           
           INTO tblloans 
           VALUES(2, '03:56:47' '23:34:23' 2, 2)
           
           INTO tblloans 
           VALUES(3, '12:30:54', '19:59:34', 3, 3)
           
           INTO tblloans 
           VALUES(4, '12:20:00', '04:20:00', 4, 4)
           
           INTO tblloans 
           VALUES(5, '10:23:02', '1:23:43', 5, 5)
           
           INTO tblloans 
           VALUES(6, '3:12:12', '3:45:34', 6, 6)
           
           INTO tblloans 
           VALUES(7, '04:20:00', '04:20:01', 7, 7)
           
           INTO tblloans 
           VALUES(8, '05:23:43', '14:32:45', 8, 8)
           
           INTO tblloans 
           VALUES(9, '13:34:21', '23:34:54', 9, 9)
           
           INTO tblloans 
           VALUES(10, '21:43:34', '15:43:56', 10, 10)

SELECT 1 FROM dual;
---------------------------INSERT FINE VALUES----------------------------

INSERT ALL
           INTO tblfine 
           VALUES(1, '16-04-2022', 30)
           
           INTO tblFine 
           VALUES(2, '20-03-2022', 45)
           
           INTO tblfine 
           VALUES(3, '15-01-2020', 1000)
           
           INTO tblFine 
           VALUES(4, '01-01-1999', 80000)
           
           INTO tblfine 
           VALUES(5, '15-04-2022', 15)
           
           INTO tblFine 
           VALUES(6, '25-12-2021', 60)
           
           INTO tblfine 
           VALUES(7, '01-04-2022', 1000)
           
           INTO tblFine 
           VALUES(8, '13-11-2019', 2000)
           
           INTO tblfine 
           VALUES(9, '21-02-1863',90009)
           
           INTO tblfine 
           VALUES(10, '13-10-2018',80)
           
SELECT 1 FROM dual;

-----------------------INSERT FINE PAYMENT VALUES-------------------------

INSERT ALL
           INTO tblfine_payment 
           VALUES (1,'17-04-2022',30 ,1)
           
           INTO tblfine_payment 
           VALUES (2,'21-03-2022',45, 2)
           
           INTO tblfine_payment 
           VALUES (3,'18-01-2020',1000, 3)
           
           INTO tblfine_payment 
           VALUES (4,'11-11-2011',80000, 4)
           
           into tblFine_payment 
           VALUES (5,'16-04-2022',15, 5)
           
           INTO tblfine_payment 
           VALUES (6,'15-01-2022',60, 6)
           
           INTO tblfine_payment 
           VALUES (7,'02-04-2022',1000, 7)
           
           INTO tblfine_payment 
           VALUES (8,'14-11-2020',2000, 8)
           
           INTO tblfine_payment 
           VALUES (9,'21-02-2003',90009, 9)
           
           INTO tblfine_payment 
           VALUES (10,'15-10-2018',80, 10)
           
SELECT 1 FROM dual;


------------------------INSERT PUBLISHER VALUES--------------------------

INSERT ALL
           INTO publisher 
           VALUES ('1', '045689','St.Greens Press')
           
           INTO publisher 
           VALUES ('2', '032321','Houston Books')
           
           INTO publisher 
           VALUES ('3', '077789','Sutton Publishing')
           
           INTO publisher 
           VALUES ('4', '023498','Dr Wall States')
           
           INTO publisher 
           VALUES ('5', '024567','Radley Press')
           
           INTO publisher 
           VALUES ('6', '045689','J.B Elton')
           
           INTO publisher 
           VALUES ('7', '066896','A&F Publishing')
           
           INTO publisher 
           VALUES ('8', '099034','John Publishing')
           
           INTO publisher 
           VALUES ('9', '020576','Ford Books')
           
           INTO publisher 
           VALUES ('10', '068890','Bee Books')

SELECT 1 FROM dual;
-------------------------INSERT USER VALUES-----------------------------

INSERT ALL
           INTO users 
           VALUES ('1', 'Brett','Simmons')
           
           INTO users 
           VALUES ('2', 'Selena','Johnson')
           
           INTO users 
           VALUES ('3', 'Gary','Keaton')
           
           INTO users 
           VALUES ('4', 'Bobby','Vermon')
           
           INTO users 
           VALUES ('5', 'John','Black')
           
           INTO users 
           VALUES ('6', 'Megan','Frasher')
           
           INTO users 
           VALUES ('7', 'Samantha','Ruth')
           
           INTO users 
           VALUES ('8', 'Tory','Diaz')
           
           INTO users 
           VALUES ('9', 'Jason','Wayne')
           
           INTO users 
           VALUES ('10', 'Kira','Crawford')
           
SELECT 1 FROM dual;

---------------------INSERT RESERVATION VALUES------------------------

INSERT ALL
           INTO reservation 
           VALUES ('1','155662', '16-Jan-2021','9781409189121')
           
           INTO reservation 
           VALUES ('2','186742', '8-Jan-2022','9780241529713')
           
           INTO reservation 
           VALUES ('3','111674', '20-Feb-2021','9781846274510')
           
           INTO reservation 
           VALUES ('4','1235500', '7-Jul-2019','9780141019017')
           
           INTO reservation 
           VALUES ('5','144856','4-May-2020','9780099460992')
           
           INTO reservation 
           VALUES ('6','121550','27-Aug-2021','9781984820389')
           
           INTO reservation 
           VALUES ('7','100976','30-Sept-2018','9781594200823')
           
           INTO reservation 
           VALUES ('8','140010','5-Mar-2022','9780141006871')
           
           INTO reservation 
           VALUES ('9','192325','19-Oct-2021','9780195069976')
           
           INTO reservation 
           VALUES ('10','130444','15-Dec-2019','9781848250789')

SELECT 1 FROM dual;

------------------INSERT RESERVATION STATUS VALUES--------------------

INSERT ALL

           INTO reservation_status 
           VALUES ('1', '222946','Reserved')
           
           INTO reservation_status 
           VALUES ('2', '254789','Available')
           
           INTO reservation_status 
           VALUES ('3', '273554','Reserved')
           
           INTO reservation_status 
           VALUES ('4', '244770','Available')
           
           INTO reservation_status 
           VALUES ('5', '200069','Available')
           
           INTO reservation_status
           VALUES ('6', '201786','Available')
           
           INTO reservation_status 
           VALUES ('7', '265093','Reserved')
           
           INTO reservation_status 
           VALUES ('8', '203340','Available')
           
           INTO reservation_status 
           VALUES ('9', '288885','Reserved')
           
           INTO reservation_status 
           VALUES ('10', '220035','Reserved')

SELECT 1 FROM dual;
