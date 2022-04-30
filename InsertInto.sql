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
           VALUES ('10', 'Annie', 'Dillard')

SELECT 1 FROM dual;

------------------------INSERT PUBLISHER VALUES--------------------------

INSERT ALL
           INTO publisher (id, pub_name)
           VALUES ('1', 'St.Greens Press')
           
           INTO publisher (id, pub_name)
           VALUES ('2', 'Houston Books')
           
           INTO publisher (id, pub_name)
           VALUES ('3', 'Sutton Publishing')
           
           INTO publisher (id, pub_name)
           VALUES ('4', 'Dr Wall States')
           
           INTO publisher (id, pub_name)
           VALUES ('5', 'Radley Press')
           
           INTO publisher (id, pub_name)
           VALUES ('6', 'J.B Elton')
           
           INTO publisher (id, pub_name)
           VALUES ('7', 'A&F Publishing')
           
           INTO publisher (id, pub_name)
           VALUES ('8', 'John Publishing')
           
           INTO publisher (id, pub_name)
           VALUES ('9', 'Ford Books')
           
           INTO publisher (id, pub_name)
           VALUES ('10', 'Bee Books')

SELECT 1 FROM dual;

-----------------------INSERT BOOK_AUTHOR VALUES-------------------------

INSERT ALL
           INTO book_author (book_isbn, author_id)
           VALUES ('9781409189121', '1')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9780241529713', '2')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9781846274510', '3')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9780141019017', '4')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9780099460992', '5')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9781984820389', '6')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9781594200823', '7')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9780141006871', '8')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9780195069976', '9')
           
           INTO book_author (book_isbn, author_id)
           VALUES ('9781848250789', '10')
           
SELECT 1 FROM dual;
           
----------------------INSERT BOOK_PUBLISHER VALUES-----------------------

INSERT ALL
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9781409189121', '1')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9780241529713', '2')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9781846274510', '3')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9780141019017', '4')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9780099460992', '5')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9781984820389', '6')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9781594200823', '7')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9780141006871', '8')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9780195069976', '9')
           
           INTO book_publisher (book_isbn, pub_id)
           VALUES ('9781848250789', '10')

SELECT 1 FROM dual;

-------------------------INSERT USER VALUES-----------------------------

INSERT ALL
           INTO users (id, first_name, last_name)
           VALUES ('1', 'Brett', 'Simmons')
           
           INTO users (id, first_name, last_name)
           VALUES ('2', 'Selena', 'Johnson')
           
           INTO users (id, first_name, last_name)
           VALUES ('3', 'Gary', 'Keaton')
           
           INTO users (id, first_name, last_name)
           VALUES ('4', 'Bobby', 'Vermon')
           
           INTO users (id, first_name, last_name)
           VALUES ('5', 'John', 'Black')
           
           INTO users (id, first_name, last_name)
           VALUES ('6', 'Megan', 'Frasher')
           
           INTO users (id, first_name, last_name)
           VALUES ('7', 'Samantha', 'Ruth')
           
           INTO users (id, first_name, last_name)
           VALUES ('8', 'Tory', 'Diaz')
           
           INTO users (id, first_name, last_name)
           VALUES ('9', 'Jason', 'Wayne')
           
           INTO users (id, first_name, last_name)
           VALUES ('10', 'Kira', 'Crawford')
           
SELECT 1 FROM dual;

---------------------INSERT RESERVATION VALUES------------------------

INSERT ALL
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('1', TO_DATE('16-JAN-2021', 'DD-MON-YYYY'), '1', '9781409189121')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('2', TO_DATE('08-JAN-2022', 'DD-MON-YYYY'), '2', '9780241529713')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('3', TO_DATE('20-FEB-2021', 'DD-MON-YYYY'), '3', '9781846274510')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('4', TO_DATE('07-JUL-2019', 'DD-MON-YYYY'), '4', '9780141019017')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('5', TO_DATE('04-MAY-2020', 'DD-MON-YYYY'), '5', '9780099460992')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('6', TO_DATE('27-AUG-2021', 'DD-MON-YYYY'), '6', '9781984820389')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('7', TO_DATE('30-SEP-2018', 'DD-MON-YYYY'), '7', '9781594200823')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('8', TO_DATE('05-MAR-2022', 'DD-MON-YYYY'), '1', '9780141006871')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('9', TO_DATE('19-OCT-2021', 'DD-MON-YYYY'), '2', '9780195069976')
           
           INTO reservation (id, res_date, users_id, book_isbn)
           VALUES ('10', TO_DATE('15-DEC-2019', 'DD-MON-YYYY'), '1', '9781848250789')

SELECT 1 FROM dual;

---------------------------INSERT LOAN VALUES----------------------------

INSERT ALL
           INTO loan (id, loan_given, loan_return, book_isbn, users_id)
           VALUES ('1', TO_DATE('15-NOV-2021', 'DD-MON-YYYY'), TO_DATE('15-DEC-2021', 'DD-MON-YYYY'), '9781848250789', '1')
           
           INTO loan (id, loan_given, loan_return, book_isbn, users_id)
           VALUES ('2', TO_DATE('11-DEC-2021', 'DD-MON-YYYY'), TO_DATE('11-JAN-2022', 'DD-MON-YYYY'), '9781848250789', '2')
           
           INTO loan (id, loan_given, loan_return, book_isbn, users_id)
           VALUES ('3', TO_DATE('06-JAN-2020', 'DD-MON-YYYY'), TO_DATE('06-FEB-2020', 'DD-MON-YYYY'), '9780099460992', '1')
           
           INTO loan (id, loan_given, loan_return, book_isbn, users_id)
           VALUES ('4', TO_DATE('25-MAY-2019', 'DD-MON-YYYY'), TO_DATE('25-JUN-2019', 'DD-MON-YYYY'), '9781594200823', '4')

SELECT 1 FROM dual;

---------------------------INSERT FINE VALUES----------------------------

INSERT ALL
           INTO fine 
           VALUES('1', '16-04-2022', 30)
           
           INTO fine 
           VALUES('2', '20-03-2022', 45)
           
           INTO fine 
           VALUES('3', '15-01-2020', 1000)
           
           INTO fine 
           VALUES('4', '01-01-1999', 80000)
           
           INTO fine 
           VALUES('5', '15-04-2022', 15)
           
           INTO fine 
           VALUES('6', '25-12-2021', 60)
           
           INTO fine 
           VALUES('7', '01-04-2022', 1000)
           
           INTO tblFine 
           VALUES('8', '13-11-2019', 2000)
           
           INTO tblfine 
           VALUES('9', '21-02-1863',90009)
           
           INTO tblfine 
           VALUES('10', '13-10-2018',80)
           
SELECT 1 FROM dual;

-----------------------INSERT FINE PAYMENT VALUES-------------------------

INSERT ALL
           INTO fine_payment 
           VALUES ('1','17-04-2022',30 ,1)
           
           INTO fine_payment 
           VALUES ('2','21-03-2022',45, 2)
           
           INTO fine_payment 
           VALUES ('3','18-01-2020',1000, 3)
           
           INTO fine_payment 
           VALUES ('4','11-11-2011',80000, 4)
           
           into fine_payment 
           VALUES ('5','16-04-2022',15, 5)
           
           INTO fine_payment 
           VALUES ('6','15-01-2022',60, 6)
           
           INTO fine_payment 
           VALUES ('7','02-04-2022',1000, 7)
           
           INTO fine_payment 
           VALUES ('8','14-11-2020',2000, 8)
           
           INTO fine_payment 
           VALUES ('9','21-02-2003',90009, 9)
           
           INTO fine_payment 
           VALUES ('10','15-10-2018',80, 10)
           
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
