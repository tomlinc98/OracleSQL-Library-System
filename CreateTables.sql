    --CREATE TABLES--

--BOOK TABLE--
create table book (
    isbn                           number not null constraint book_isbn_pk primary key not null,
    title                          varchar2(255) not null,
    location_code                  varchar2(10) not null,
    publication_date               date,
    stock                          integer
);

--CATAGORY TABLE--
create table catagory (
    id                             number not null constraint catagory_id_pk primary key,
    book_id                        number
                                   constraint catagory_book_id_fk
                                   references book on delete cascade,
    cat_name                       varchar2(30)
);

--COPY TABLE--
create table copy (
    id                             number not null constraint copy_id_pk primary key,
    book_id                        number
                                   constraint copy_book_id_fk
                                   references book on delete cascade,
    date_aquired                   date,
    date_removed                   date
);

--AUTHOR TABLE--
create table author (
    id                             number not null constraint author_id_pk primary key,
    book_author_id                 number,
    first_name                     varchar2(50),
    last_name                      varchar2(50)
);

--PUBLISHER TABLE--
create table publisher (
    id                             number not null constraint publisher_id_pk primary key,
    book_publisher_id              number,
    pub_name                       varchar2(255)
);

--USERS TABLE--
create table users (
    student_id                     number not null constraint the_user_student_id_pk primary key not null,
    first_name                     varchar2(50) not null,
    last_name                      varchar2(50) not null
);

--RESERVATION TABLE--
create table reservation (
    id                             number not null constraint reservation_id_pk primary key,
    user_id                        number
                                   constraint reservation_user_id_fk
                                   references the_user on delete cascade,
    res_date                       timestamp not null,
    book_isbn                      number
                                   constraint reservation_book_isbn_fk
                                   references book on delete cascade
);

--RESERVATION_STATUS TABLE--
create table reservation_status (
    id                             number not null constraint reservation_status_id_pk primary key,
    reservation_id                 number
                                   constraint reservation_s_reservation_i_fk
                                   references reservation on delete cascade,
    status_value                   enum('Available', 'Reserved')
);

--LOAN TABLE--
create table loan (
    id                             number not null constraint loan_id_pk primary key,
    user_id                        number
                                   constraint loan_user_id_fk
                                   references the_user on delete cascade,
    loan_given                     timestamp not null,
    loan_return                    timestamp not null,
    book_isbn                      number
                                   constraint loan_book_isbn_fk
                                   references book on delete cascade
);

--FINE TABLE--
create table fine (
    id                             number not null constraint fine_id_pk primary key,
    user_id                        number
                                   constraint fine_user_id_fk
                                   references the_user on delete cascade,
    fine_date                      timestamp not null,
    fine_total                     number
);


    --TRIGGERS--
create or replace trigger author_biu
    before insert or update 
    on author
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end author_biu;
/

create or replace trigger book_biu
    before insert or update 
    on book
    for each row
begin
    if :new.isbn is null then
        :new.isbn := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end book_biu;
/

create or replace trigger publisher_biu
    before insert or update 
    on publisher
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end publisher_biu;
/

create or replace trigger the_user_biu
    before insert or update 
    on the_user
    for each row
begin
    if :new.student_id is null then
        :new.student_id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end the_user_biu;
/

create or replace trigger catagory_biu
    before insert or update 
    on catagory
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end catagory_biu;
/

create or replace trigger copy_biu
    before insert or update 
    on copy
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end copy_biu;
/

create or replace trigger fine_biu
    before insert or update 
    on fine
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end fine_biu;
/

create or replace trigger loan_biu
    before insert or update 
    on loan
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end loan_biu;
/

create or replace trigger reservation_biu
    before insert or update 
    on reservation
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end reservation_biu;
/

create or replace trigger reservation_status_biu
    before insert or update 
    on reservation_status
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end reservation_status_biu;
/
