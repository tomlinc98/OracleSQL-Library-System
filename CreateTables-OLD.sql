-- create tables
create table book (
    isbn                           number not null constraint book_isbn_pk primary key,
    title                          varchar2(255) not null,
    location_code                  varchar2(10) not null,
    publication_date               date,
    stock                          integer
)
;

create table catagory (
    id                             number not null constraint catagory_id_pk primary key,
    book_id                        number
                                   constraint catagory_book_id_fk
                                   references book on delete cascade,
    cat_name                       varchar2(30)
)
;

create table copy (
    id                             number not null constraint copy_id_pk primary key,
    book_id                        number
                                   constraint copy_book_id_fk
                                   references book on delete cascade,
    date_aquired                   date,
    date_removed                   date
)
;

create table author (
    id                             number not null constraint author_id_pk primary key,
    book_author_id                 number,
    first_name                     varchar2(50),
    last_name                      varchar2(50)
)
;

create table publisher (
    id                             number not null constraint publisher_id_pk primary key,
    book_publisher_id              number,
    pub_name                       varchar2(255)
)
;

create table users (
    student_id                     number not null constraint users_student_id_pk primary key not null,
    first_name                     varchar2(50) not null,
    last_name                      varchar2(50) not null
)
;

create table reservation (
    id                             number not null constraint reservation_id_pk primary key,
    user_id                        number
                                   constraint reservation_user_id_fk
                                   references users on delete cascade,
    res_date                       timestamp not null,
    book_isbn                      number
                                   constraint reservation_book_isbn_fk
                                   references book on delete cascade
)
;

create table reservation_status (
    id                             number not null constraint reservation_status_id_pk primary key,
    reservation_id                 number
                                   constraint reservation_s_reservation_i_fk
                                   references reservation on delete cascade,
    status_value                   enum('Available', 'Reserved')
)
;

create table loan (
    id                             number not null constraint loan_id_pk primary key,
    user_id                        number
                                   constraint loan_user_id_fk
                                   references users on delete cascade,
    loan_given                     timestamp not null,
    loan_return                    timestamp not null,
    book_isbn                      number
                                   constraint loan_book_isbn_fk
                                   references book on delete cascade
)
;

create table fine (
    id                             number not null constraint fine_id_pk primary key,
    user_id                        number
                                   constraint fine_user_id_fk
                                   references users on delete cascade,
    fine_date                      timestamp not null,
    fine_total                     number
)
;

create table fine_payment (
    id                             number not null constraint fine_payment_id_pk primary key,
    user_id                        number
                                   constraint fine_payment_user_id_fk
                                   references users on delete cascade,
    pay_date                       date,
    pay_amount                     varchar2(4000)
)
;


-- triggers
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

create or replace trigger users_biu
    before insert or update 
    on users
    for each row
begin
    if :new.student_id is null then
        :new.student_id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end users_biu;
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

create or replace trigger fine_payment_biu
    before insert or update 
    on fine_payment
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end fine_payment_biu;
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


-- indexes
create index catagory_i1 on catagory (book_id);
create index copy_i1 on copy (book_id);
create index fine_i1 on fine (user_id);
create index fine_payment_i1 on fine_payment (user_id);
create index loan_i1 on loan (book_isbn);
create index loan_i2 on loan (user_id);
create index reservation_i1 on reservation (book_isbn);
create index reservation_i2 on reservation (user_id);
create index reservation_status_i1 on reservation_status (reservation_id);
