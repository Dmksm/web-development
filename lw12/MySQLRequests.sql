CREATE DATABASE University;
USE University;
CREATE TABLE faculty
(
    id          INT AUTO_INCREMENT NOT NULL,
    name        VARCHAR(255)       NOT NULL,
    PRIMARY KEY(id)
);
insert into faculty set name = 'FIiVT';
insert into faculty set name = 'BS';
insert into faculty set name = 'RTF';
select * from faculty;

CREATE TABLE class
(
    id            INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name          VARCHAR(255)       NOT NULL,
    facultyId     INT                NOT NULL,
    FOREIGN KEY (facultyId) REFERENCES faculty (Id)  
);
insert into class set name = 'PS1', facultyId = '1';
insert into class set name = 'PS2', facultyId = '1';
insert into class set name = 'PS3', facultyId = '1';
insert into class set name = 'GG1', facultyId = '2';
insert into class set name = 'GG2', facultyId = '2';
insert into class set name = 'GG3', facultyId = '2';
insert into class set name = 'LK1', facultyId = '3';
insert into class set name = 'LK2', facultyId = '3';
insert into class set name = 'LK3', facultyId = '3';
select * from class;

CREATE TABLE student
(
    id               INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    firstName        VARCHAR(255)       NOT NULL,
    lastName         VARCHAR(255)       NOT NULL,
    age              INT                NOT NULL,
    classId          INT                NOT NULL,
    FOREIGN KEY (classId) REFERENCES class (Id)
);
insert into student set age = '18', firstname = 'Maxim', lastname = 'Chernyadev', classId = '1';
insert into student set age = '19', firstname = 'Zayn', lastname = 'Mack', classId = '1';
insert into student set age = '19', firstname = 'Odin', lastname = 'Fraser', classId = '1';
insert into student set age = '20', firstname = 'Damian', lastname = 'Heath', classId = '1';
insert into student set age = '18', firstname = 'Kaylen', lastname = 'Fitzgerald', classId = '1';

insert into student set age = '21', firstname = 'Zena', lastname = 'Campos', classId = '2';
insert into student set age = '18', firstname = 'Gina', lastname = 'Jordan', classId = '2';
insert into student set age = '23', firstname = 'Hunter', lastname = 'Clayton', classId = '2';
insert into student set age = '23', firstname = 'Alastair', lastname = 'Broughton', classId = '2';
insert into student set age = '18', firstname = 'Saskia', lastname = 'Fuentes', classId = '2';

insert into student set age = '19', firstname = 'Joe', lastname = 'Benton', classId = '3';
insert into student set age = '19', firstname = 'Ishaaq', lastname = 'Hyde', classId = '3';
insert into student set age = '19', firstname = 'Etienne', lastname = 'Sears', classId = '3';
insert into student set age = '18', firstname = 'Raja', lastname = 'Mill', classId = '3';
insert into student set age = '18', firstname = 'Halima', lastname = 'Rennie', classId = '3';

insert into student set age = '18', firstname = 'Halima', lastname = 'Rennie', classId = '4';
insert into student set age = '18', firstname = 'Gina', lastname = 'Campos', classId = '4';
insert into student set age = '18', firstname = 'Zena', lastname = 'Benton', classId = '4';
insert into student set age = '18', firstname = 'Joe', lastname = 'Fuentes', classId = '4';
insert into student set age = '18', firstname = 'Saskia', lastname = 'Heath', classId = '4';

insert into student set age = '19', firstname = 'Zena', lastname = 'Campos', classId = '5';
insert into student set age = '18', firstname = 'Gina', lastname = 'Jordan', classId = '5';
insert into student set age = '18', firstname = 'Hunter', lastname = 'Clayton', classId = '5';
insert into student set age = '18', firstname = 'Alastair', lastname = 'Broughton', classId = '5';
insert into student set age = '18', firstname = 'Saskia', lastname = 'Fuentes', classId = '5';

insert into student set age = '18', firstname = 'Leon', lastname = 'Chernyadev', classId = '6';
insert into student set age = '18', firstname = 'Zayn', lastname = 'Mack', classId = '6';
insert into student set age = '19', firstname = 'Odin', lastname = 'Fraser', classId = '6';
insert into student set age = '18', firstname = 'Damian', lastname = 'Heath', classId = '6';
insert into student set age = '18', firstname = 'Kaylen', lastname = 'Fitzgerald', classId = '6';


insert into student set age = '18', firstname = 'Joe', lastname = 'Benton', classId = '7';
insert into student set age = '18', firstname = 'Ishaaq', lastname = 'Hyde', classId = '7';
insert into student set age = '18', firstname = 'Etienne', lastname = 'Sears', classId = '7';
insert into student set age = '18', firstname = 'Raja', lastname = 'Mill', classId = '7';
insert into student set age = '19', firstname = 'Halima', lastname = 'Rennie', classId = '7';

insert into student set age = '18', firstname = 'Zena', lastname = 'Campos', classId = '8';
insert into student set age = '18', firstname = 'Gina', lastname = 'Jordan', classId = '8';
insert into student set age = '20', firstname = 'Hunter', lastname = 'Clayton', classId = '8';
insert into student set age = '18', firstname = 'Alastair', lastname = 'Broughton', classId = '8';
insert into student set age = '18', firstname = 'Saskia', lastname = 'Fuentes', classId = '8';

insert into student set age = '18', firstname = 'Oleg', lastname = 'Chernyadev', classId = '9';
insert into student set age = '18', firstname = 'Zayn', lastname = 'Mack', classId = '9';
insert into student set age = '19', firstname = 'Odin', lastname = 'Fraser', classId = '9';
insert into student set age = '18', firstname = 'Damian', lastname = 'Heath', classId = '9';
insert into student set age = '24', firstname = 'Kaylen', lastname = 'Fitzgerald', classId = '9';
select * from student;

SELECT
    firstname,
    lastname,
    age
FROM
    student
WHERE
    age = '19';

SELECT
    *
FROM
    student
WHERE
    classId = '1';

SELECT
    *
FROM
    student   
LEFT JOIN class ON student.classId = class.id 
WHERE
    class.facultyId = '1';
    
SELECT
    student.firstName,
    student.lastName,
    class.name AS Class,
    faculty.name AS Faculty
FROM
    student
LEFT JOIN class ON student.classId = class.id 
LEFT JOIN faculty ON class.facultyId = faculty.id
WHERE
    student.id = '45';        
