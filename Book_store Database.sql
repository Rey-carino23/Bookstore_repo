CREATE TABLE BOOKS(
	ISBN VARCHAR(15) PRIMARY KEY NOT NULL,
	TITLE VARCHAR(100) NOT NULL,
	AUTHOR VARCHAR(100),
	GENRE VARCHAR(50),
	YEAR_OF_PUBLICATION DATE);

CREATE TABLE CUSTOMERS(
	CUST_ID VARCHAR(10) PRIMARY KEY NOT NULL,
	CUST_NAME VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(100),
	HOME_ADDRESS VARCHAR(100),
	PHONE_NO VARCHAR(11)
	);

CREATE TABLE PURCHASES(
	PURC_ID VARCHAR(10) PRIMARY KEY NOT NULL,
	ISBN VARCHAR(15) FOREIGN KEY REFERENCES BOOKS(ISBN),
	CUST_ID VARCHAR(10) FOREIGN KEY REFERENCES CUSTOMERS(CUST_ID),
	UNIT_PRICE FLOAT,
	QUANTITY INT,
	PURC_DATE DATE);

SELECT * FROM BOOKS;
SELECT * FROM CUSTOMERS;
SELECT * FROM PURCHASES;

INSERT INTO BOOKS
VALUES
('1233214566545', 'The lady is mine', 'Francine Rivers', 'Christain Romance', '2021'),
('0000123345789', 'Bridge to heaven', 'Francine Rivers', 'Christain Romance', '2019'),
('9334567812789', 'Harry Potter', 'J.K Rowlings', 'Fiction', '1997'),
('3321111234512', 'How to make friends and influence people', 'Dale Carnegie', 'Self help', '1936'),
('3321111346231', 'Eat that Frog', 'Brian Tracy', 'Self help', '2001');


INSERT INTO CUSTOMERS
VALUES
('CUST01', 'Magic Johnson', 'magicjohnson123@gmail.com', 'Ohio', '23312343511'),
('CUST02', 'O.C Phillips', 'ocphillips98@gmail.com', 'Los Angeles', '44453221233'),
('CUST03', 'Tim Butler', 'timmydbutler@gmail.com', 'Brooklyn', '67754556789');

INSERT INTO PURCHASES
VALUES
('PURC001', '9334567812789', 'CUST02', 12.00, 2, '2025-05-11'),
('PURC002', '3321111234512', 'CUST03', 12.00, 1, '2025-05-22'),
('PURC003', '1233214566545', 'CUST01', 10.50, 1, '2025-05-30'),
('PURC004', '0000123345789', 'CUST02', 9.20, 1, '2025-06-02');


--We are adding a new column(Gender) to the customers table
ALTER TABLE CUSTOMERS
ADD GENDER VARCHAR(10);

--We will add values into the GENDER column
UPDATE CUSTOMERS
SET GENDER ='Male'
WHERE CUST_ID ='CUST01';

UPDATE CUSTOMERS
SET GENDER ='Male'
WHERE CUST_ID ='CUST02';

UPDATE CUSTOMERS
SET GENDER ='Male'
WHERE CUST_ID ='CUST03';

--We will insert 3 more rows to our customers table
INSERT INTO CUSTOMERS
VALUES
('CUST04', 'Kehinde Fola', 'kkkfola316@gmail.com', 'Atlanta', '34554321411', 'Female'),
('CUST05', 'Philomina Titus', 'phili2titus@yahoo.com', 'Florida', '00002346651', 'Male'),
('CUST06', 'Sandra Jimmy', 'sandybaby214@gmail.com', 'Dallas', '22334887689', 'Female');

--We are adding a new column(Edition) to the Books table
ALTER TABLE BOOKS
ADD EDITION VARCHAR(10);

--We will add values into the EDITION column
UPDATE BOOKS
SET EDITION  ='First'
WHERE ISBN ='0000123345789';

UPDATE BOOKS
SET EDITION  ='First'
WHERE ISBN ='1233214566545';

UPDATE BOOKS
SET EDITION  ='Second'
WHERE ISBN ='3321111234512';

UPDATE BOOKS
SET EDITION  ='Third'
WHERE ISBN ='3321111346231';

UPDATE BOOKS
SET EDITION  ='Second'
WHERE ISBN ='9334567812789';

ALTER TABLE BOOKS
DROP COLUMN EDITON;

--We will insert 3 more rows to our Books table
INSERT INTO BOOKS
VALUES
('1233214563678', 'The Princess and the Frog', 'David Swiss', 'Fiction', '2000-03-07', 'First'),
('3326751234512', 'To the Beautiful You', 'Yang Lu Chen', 'Romance', '2005-07-13', 'Second');