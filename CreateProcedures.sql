CREATE OR REPLACE PROCEDURE addAdmin(
		name in ADMIN.adminName%TYPE,
		address in ADMIN.adminAddress%TYPE,
		phone in ADMIN.adminPhone%TYPE,
		password in ADMIN.adminPassword%TYPE
		)
		IS
BEGIN
	INSERT INTO ADMIN (adminId,adminName,adminAddress,adminPhone,adminPassword) VALUES (seqAddAdmin.nextval,name,address,phone,password);	
	Commit;
END addAdmin;
/

    CREATE TABLE category (
        id                             NUMBER NOT NULL,
        cat_name                       VARCHAR2(30),
        CONSTRAINT category_id_pk 
            PRIMARY KEY(id)
);
