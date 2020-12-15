CREATE DATABASE ASSIGNMENT8;
USE ASSIGNMENT8;

CREATE TABLE EMPLOYEE(
EMP_ID INT(15) PRIMARY KEY,
EMP_FIRSTNAME VARCHAR(20),
EMP_LASTNAME VARCHAR(20),
SALARY INT(200),
DEPT VARCHAR(20)
);

INSERT INTO EMPLOYEE VALUES (1,'MANISH','CHOPRA',25000,'ANALYST'),(2,'SHIVTEJ','TAKWALE',350000,'ANALYST'),(3,'SHRAVANI','DUSANE',500000,'DEVELOPER')
,(4,'MANISH','PAL',85000,'TESTER');
INSERT INTO EMPLOYEE VALUES (5,'MANISHA','CHOPRA2',28000,'DEV'),(6,'SHIV','TARTE',390000,'ANALYST');
INSERT INTO EMPLOYEE VALUES (7,'DURA','SOFT',1000,'DEV'),(8,'NAVIN','REDDY',500,'PROGRAMMER');
SELECT * FROM EMPLOYEE;
-- QUEST 1
DELIMITER &&
CREATE PROCEDURE DISP_DETAILS ()
BEGIN
DECLARE FLAG INT DEFAULT 0;
DECLARE NAM VARCHAR (20);
DECLARE SAL INT DEFAULT 0;
DECLARE DISPLAY_CUR CURSOR FOR SELECT EMP_FIRSTNAME,SALARY FROM EMPLOYEE WHERE EMPLOYEE.DEPT = 'ANALYST';
DECLARE EXIT HANDLER FOR NOT FOUND SET FLAG = 1;
OPEN  DISPLAY_CUR;
WHILE (FLAG <> 1) DO 
FETCH  DISPLAY_CUR INTO NAM,SAL ;
SELECT NAM,SAL;
END WHILE;
CLOSE DISPLAY_CUR;
END &&
CALL  DISP_DETAILS();

-- QUEST 2
DELIMITER &&
CREATE PROCEDURE DISPLAYDETAILS ()
BEGIN
DECLARE FLAG INT DEFAULT 1;
DECLARE SALA INT DEFAULT 0;
DECLARE EMPID INT DEFAULT 0;
DECLARE NAM1 VARCHAR (20);
DECLARE DISPLAYDETAILS_CUR CURSOR FOR SELECT SALARY,EMP_ID,EMP_FIRSTNAME FROM EMPLOYEE ORDER BY SALARY DESC;
DECLARE EXIT HANDLER FOR NOT FOUND SET FLAG = 1;
OPEN DISPLAYDETAILS_CUR;
WHILE (FLAG < 6)
DO
FETCH DISPLAYDETAILS_CUR INTO SALA,EMPID,NAM1;
SELECT SALA,EMPID,NAM1;
END WHILE;
CLOSE DISPLAYDETAILS_CUR;
END &&
CALL DISPLAYDETAILS ();



-- QUEST 3
DELIMITER &&
CREATE PROCEDURE QUEST3()
BEGIN
DECLARE FLAG INT DEFAULT 0;
DECLARE FIRSTNAME VARCHAR (20);
DECLARE LASTNAME VARCHAR (20);
DECLARE DISPLAYNAMES_CUR CURSOR FOR SELECT EMP_FIRSTNAME,EMP_LASTNAME FROM EMPLOYEE;
DECLARE EXIT HANDLER FOR NOT FOUND SET FLAG = 1;
OPEN DISPLAYNAMES_CUR;
WHILE (FLAG =0)
DO
FETCH DISPLAYNAMES_CUR INTO FIRSTNAME,LASTNAME;
SELECT CONCAT(FIRSTNAME,LASTNAME);
END WHILE;
CLOSE DISPLAYNAMES_CUR;
END &&
CALL  QUEST3();
 
 
 -- QUEST4
DELIMITER &&
CREATE PROCEDURE DISP_FIRSTNAME ()
BEGIN
DECLARE FLAG INT DEFAULT 0;
DECLARE NAM VARCHAR (20);
DECLARE SAL INT DEFAULT 0;
DECLARE DEPARTMENT VARCHAR(20);
DECLARE DISPLAY_CUR CURSOR FOR SELECT EMP_FIRSTNAME,SALARY,DEPT FROM EMPLOYEE WHERE EMP_FIRSTNAME='MANISH';
DECLARE EXIT HANDLER FOR NOT FOUND SET FLAG = 1;
OPEN  DISPLAY_CUR;
WHILE (FLAG <> 1) DO 
FETCH  DISPLAY_CUR INTO NAM,SAL,DEPARTMENT ;
SELECT NAM,SAL,DEPARTMENT;
END WHILE;
CLOSE DISPLAY_CUR;
END &&
CALL  DISP_FIRSTNAME ();


-- QUEST5
DELIMITER &&
CREATE PROCEDURE QUEST5 ()
BEGIN
DECLARE FLAG INT DEFAULT 0;
DECLARE NAM VARCHAR (20);
DECLARE SAL INT DEFAULT 0;
DECLARE DEPARTMENT VARCHAR(20);
DECLARE DISPLAY_CUR CURSOR FOR SELECT SALARY FROM EMPLOYEE ;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET FLAG = 1;
OPEN  DISPLAY_CUR;
WHILE (FLAG <> 1) DO 
FETCH  DISPLAY_CUR INTO SAL ;
DELETE FROM EMPLOYEE WHERE SALARY <10000;
END WHILE;
CLOSE DISPLAY_CUR;
END &&
CALL  QUEST5 ();
SELECT * FROM EMPLOYEE;
