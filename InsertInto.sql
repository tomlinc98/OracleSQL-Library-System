---------------------------INSERT BOOK VALUES----------------------------

INSERT INTO table book VALUES (‘9781409189121’, 'All the Young Men: How One Woman Risked It All To Care For The Dying', 'B1', ''21-jan-2021'', '5');Ruth cooker burks lifestyle
INSERT INTO TABLE book VALUES (‘9780241529713’, 'Why has nobody told me this before?', 'B4', ''06-jan-2022'', '11');Dr julie smith lifestyle
INSERT INTO TABLE book VALUES (‘9781846274510’, ‘behind the beautiful forevers: Life, death AND hope IN a mumbai undercity’ , ‘d8’ , “07-feb-2013“, ‘6’);Katherine boo non-fiction
INSERT INTO TABLE book VALUES (‘9780141019017’, ‘freakonomics: A rogue economist explores the hidden side OF everything’ , ‘e3’ , “18-jun-2007“, ‘2’);Steven d. levitt economics
INSERT INTO TABLE book VALUES (‘9780099460992’, ‘far FROM the tree: Parents, children, AND the search FOR identity’ , ‘j1’ , “06-mar-2014”, ‘15’);Andrew solomon parenting
INSERT INTO TABLE book VALUES (‘9781984820389’, ‘minor feelings: An asian american reckoning’ , ‘a8’ , “05-mar-2020”, ‘9’);Cathy park hong asian american literature
INSERT INTO TABLE book VALUES (‘9781594200823’, ‘the omnivore’s dilemma: A NATURAL history OF four meals’ , ‘f3’ , “11-apr-2006”, ‘3’);Michael pollen food & nutrition
INSERT INTO TABLE book VALUES (‘9780141006871’, ‘fast food nation: What the ALL-american meal IS doing TO the world’ , ‘f2’ , “04-apr-2002”, ‘1’);Eric schlosser food  & nutrition
INSERT INTO TABLE book VALUES (‘9780195069976’, ‘the sea around us’ , ‘i2’ , “2-jul-1951”, ‘1’);Rachel carson nature
INSERT INTO TABLE book VALUES (‘9781848250789’, ‘pilgrim AT tinker creek’ , ‘r5’ , “2-jul-1974”, ‘4’);Annie dillard religion

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
INSERT INTO table category VALUES (‘10’,‘9781848250789’, ‘religion’);

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
INSERT INTO table copy VALUES (‘10’,‘9781848250789’,);

--------------------------INSERT AUTHOR VALUES--------------------------
INSERT INTO table author VALUES (‘1’, ‘9781409189121’, ‘ruth cooker’, ‘burks’);
INSERT INTO table author VALUES (‘2’, ‘9780241529713’, 'Dr Julie', ‘smith’);
INSERT INTO table author VALUES (‘3’, ‘9781846274510’, ‘katherine’, ‘boo’);
INSERT INTO table author VALUES (‘4’, ‘9780141019017’, ‘steven d.’, ‘levitt’)
INSERT INTO table author VALUES (‘5’, ‘9780099460992’, ‘andrew’, ‘solomon’);
INSERT INTO table author VALUES (‘6’, ‘9781984820389’, ‘cathy park’, ‘hong’);
INSERT INTO table author VALUES (‘7’, ‘9781594200823’, ‘michael’, ‘pollen’);
INSERT INTO table author VALUES (‘8’, ‘9780141006871’, ‘eric’, ‘schlosser’);
INSERT INTO table author VALUES (‘9’, ‘9780195069976’, ‘rachel’, ‘carson’);
INSERT INTO table author VALUES (‘10’,‘9781848250789’, ‘annie’, ‘dillard’);

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

----------------------INSERT FINE PAYMENT VALUES------------------------

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
