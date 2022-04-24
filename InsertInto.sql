---------------------------INSERT BOOK VALUES----------------------------

INSERT INTO table book (isbn, title, location_code, publication_date, stock, catagory_id) VALUES ('9781409189121', 'All the Young Men: How One Woman Risked It All To Care For The Dying', 'B1', TO_DATE('21-JAN-2021', 'DD-MON-YYYY'), '5');
INSERT INTO TABLE book VALUES ('9780241529713', 'Why has nobody told me this before?', 'B4', TO_DATE('06-JAN-2022', 'DD-MON-YYYY'), '11');
INSERT INTO TABLE book VALUES ('9781846274510', 'Behind the Beautiful Forevers: Life, death and hope in a mumbai undercity' , 'D8' , TO_DATE('07-FEB-2013', 'DD-MON-YYYY'), '6');
INSERT INTO TABLE book VALUES ('9780141019017', 'Freakonomics: A rogue economist explores the hidden side of everything' , 'E3' , TO_DATE('18-JUN-2007', 'DD-MON-YYYY'), '2');
INSERT INTO TABLE book VALUES ('9780099460992', 'Far from the Tree: Parents, children, and the search for identity' , 'J1' , TO_DATE('06-MAR-2014', 'DD-MON-YYYY'), '15');
INSERT INTO TABLE book VALUES ('9781984820389', 'Minor feelings: An asian american reckoning' , 'A8' , TO_DATE('05-MAR-2020', 'DD-MON-YYYY'), '9');
INSERT INTO TABLE book VALUES ('9781594200823', 'The Omnivore’s Dilemma: A natural history of four meals' , 'F3' , TO_DATE('11-APR-2006', 'DD-MON-YYYY'), '3');
INSERT INTO TABLE book VALUES ('9780141006871', 'Fast Food Nation: What the all-american meal is doing to the world' , 'F2' , TO_DATE('04-APR-2002', 'DD-MON-YYYY'), '1');
INSERT INTO TABLE book VALUES ('9780195069976', 'The sea around us', 'I2' , TO_DATE('02-JUL-1951', 'DD-MON-YYYY', '1');
INSERT INTO TABLE book VALUES ('9781848250789', 'Pilgrim AT tinker creek' , 'R5' , TO_DATE('02-JUL-1974', 'DD-MON-YY', '4');

-------------------------INSERT CATAGORY VALUES--------------------------

INSERT INTO TABLE category VALUES (‘1’, ‘9781409189121’, ‘lifestyle’)
INSERT INTO table category VALUES (‘2’, ‘9780241529713’, 'Lifestyle');
INSERT INTO table category VALUES (‘3’, ‘9781846274510’, ‘non-fiction’);
INSERT INTO table category VALUES (‘4’, ‘9780141019017’, ‘economics’);
INSERT INTO table category VALUES (‘5’, ‘9780099460992’, ‘parenting’);
INSERT INTO table category VALUES (‘6’, ‘9781984820389’, ‘asian-american literature’);
INSERT INTO table category VALUES (‘7’, ‘9781594200823’, ‘food & nutrition’);
INSERT INTO table category VALUES (‘8’, ‘9780141006871’, ‘food & nutrition’);
INSERT INTO table category VALUES (‘9’, ‘9780195069976’, ‘nature’);
INSERT INTO table category VALUES (‘10’,’9781848250789’, ‘religion’);

---------------------------INSERT COPY VALUES----------------------------
INSERT INTO table copy VALUES (‘1’, ‘9781409189121’, ''25-jan-2021'', '''');
INSERT INTO table copy VALUES (‘2’, ‘9780241529713’,);
INSERT INTO table copy VALUES (‘3’, ‘9781846274510’, );
INSERT INTO table copy VALUES (‘4’, ‘9780141019017’,);
INSERT INTO table copy VALUES (‘5’, ‘9780099460992’,);
INSERT INTO table copy VALUES (‘6’, ‘9781984820389’, );
INSERT INTO table copy VALUES (‘7’, ‘9781594200823’,);
INSERT INTO table copy VALUES (‘8’, ‘9780141006871’, );
INSERT INTO table copy VALUES (‘9’, ‘9780195069976’, );
INSERT INTO table copy VALUES (‘10’,’9781848250789’,);

--------------------------INSERT AUTHOR VALUES--------------------------
INSERT INTO author (id, first_name, last_name) VALUES ('1', 'Ruth Cooker', 'Burks');
INSERT INTO author (id, first_name, last_name) VALUES ('2', 'Dr Julie', 'Smith');
INSERT INTO author (id, first_name, last_name) VALUES ('3', 'Katherine', 'Boo');
INSERT INTO author (id, first_name, last_name) VALUES ('4', 'Steven D.', 'Levitt')
INSERT INTO author (id, first_name, last_name) VALUES ('5', 'Andrew', 'Solomon');
INSERT INTO author (id, first_name, last_name) VALUES ('6', 'Cathy Park', 'Hong');
INSERT INTO author (id, first_name, last_name) VALUES ('7', 'Michael', 'Pollen');
INSERT INTO author (id, first_name, last_name) VALUES ('8', 'Eric', 'Schlosser');
INSERT INTO author (id, first_name, last_name) VALUES ('9', 'Rachel', 'Carson');
INSERT INTO author (id, first_name, last_name) VALUES ('10', 'Annie', 'Dillard');

---------------------------INSERT LOAN VALUES----------------------------

INSERT INTO tblloans VALUES(1,”00:00:01”, “15:45:06”, 1, 1)
INSERT INTO tblloans VALUES(2, “03:56:47”, 23:34:23”, 2, 2)
INSERT INTO tblloans VALUES(3, “12:30:54”, “19:59:34”, 3, 3)
INSERT INTO tblloans VALUES(4, “12:20:00”, “04:20:00”, 4, 4)
INSERT INTO tblloans VALUES(5, “10:23:02”, “21:23:43”, 5, 5)
INSERT INTO tblloans VALUES(6, “23:12:12”, “23:45:34”, 6, 6)
INSERT INTO tblloans VALUES(7, “04:20:00”, “04:20:01”, 7, 7)
INSERT INTO tblloans VALUES(8, “05:23:43”, “14:32:45”, 8, 8)
INSERT INTO tblloans VALUES(9, “13:34:21”, “23:34:54”, 9, 9)
INSERT INTO tblloans VALUES(10, “21:43:34”, “15:43:56”, 10, 10)

---------------------------INSERT FINE VALUES----------------------------

INSERT INTO tblfine VALUES(1, “16-04-2022", 30)
Insert into tblFine values(2, “20-03-2022", 45)
INSERT INTO tblfine VALUES(3, “15-01-2020", 1000)
Insert into tblFine values(4, “01-01-1999", 80000)
INSERT INTO tblfine VALUES(5, “15-04-2022", 15)
Insert into tblFine values(6, “25-12-2021", 60)
INSERT INTO tblfine VALUES(7, “01-04-2022", 1000)
Insert into tblFine values(8, “13-11-2019", 2000)
INSERT INTO tblfine VALUES(9, “21-02-1863”,90009)
INSERT INTO tblfine VALUES(10, “13-10-2018”,80)

-----------------------INSERT FINE PAYMENT VALUES-------------------------

INSERT INTO tblfine_payment VALUES (1,”17-04-2022”,30 ,1)
INSERT INTO tblfine_payment VALUES (2,”21-03-2022”,45, 2)’
INSERT INTO tblfine_payment VALUES (3,”18-01-2020”,1000, 3)
INSERT INTO tblfine_payment VALUES (4,”11-11-2011",80000, 4)
Insert into tblFine_payment values (5,”16-04-2022",15, 5)
INSERT INTO tblfine_payment VALUES (6,”15-01-2022”,60, 6)
INSERT INTO tblfine_payment VALUES (7,”02-04-2022”,1000, 7)
INSERT INTO tblfine_payment VALUES (8,”14-11-2020”,2000, 8)
INSERT INTO tblfine_payment VALUES (9,”21-02-2003”,90009, 9)
INSERT INTO tblfine_payment VALUES (10,”15-10-2018”,80, 10)

------------------------INSERT PUBLISHER VALUES--------------------------

insert into publisher values ('1', '045689','St.Greens Press');
insert into publisher values ('2', '032321','Houston Books');
insert into publisher values ('3', '077789','Sutton Publishing');
insert into publisher values ('4', '023498','Dr Wall States');
insert into publisher values ('5', '024567','Radley Press');
insert into publisher values ('6', '045689','J.B Elton');
insert into publisher values ('7', '066896','A&F Publishing');
insert into publisher values ('8', '099034','John Publishing');
insert into publisher values ('9', '020576','Ford Books');
insert into publisher values ('10', '068890','Bee Books');        

-------------------------INSERT USER VALUES-----------------------------


insert into users values ('1', 'Brett','Simmons');
insert into users values ('2', 'Selena','Johnson');
insert into users values ('3', 'Gary','Keaton');           
insert into users values ('4', 'Bobby','Vermon');
insert into users values ('5', 'John','Black');
insert into users values ('6', 'Megan','Frasher');           
insert into users values ('7', 'Samantha','Ruth');           
insert into users values ('8', 'Tory','Diaz');
insert into users values ('9', 'Jason','Wayne');           
insert into users values ('10', 'Kira','Crawford');

---------------------INSERT RESERVATION VALUES------------------------
           
insert into reservation values ('1','155662', '16-Jan-2021','9781409189121');
insert into reservation values ('2','186742', '8-Jan-2022','9780241529713');
insert into reservation values ('3','111674', '20-Feb-2021','9781846274510');
insert into reservation values ('4','1235500', '7-Jul-2019','9780141019017');
insert into reservation values ('5','144856','4-May-2020','9780099460992');
insert into reservation values ('6','121550','27-Aug-2021','9781984820389');
insert into reservation values ('7','100976','30-Sept-2018','9781594200823');
insert into reservation values ('8','140010','5-Mar-2022','9780141006871');
insert into reservation values ('9','192325','19-Oct-2021','9780195069976');
insert into reservation values ('10','130444','15-Dec-2019','9781848250789');

------------------INSERT RESERVATION STATUS VALUES--------------------
           
insert into reservation_status values ('1', '222946','Reserved');
insert into reservation_status values ('2', '254789','Available');
insert into reservation_status values ('3', '273554','Reserved');
insert into reservation_status values ('4', '244770','Available');
insert into reservation_status values ('5', '200069','Available');
insert into reservation_status values ('6', '201786','Available');
insert into reservation_status values ('7', '265093','Reserved');
insert into reservation_status values ('8', '203340','Available');
insert into reservation_status values ('9', '288885','Reserved');
insert into reservation_status values ('10', '220035','Reserved');
