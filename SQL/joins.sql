create database school;

use school;

CREATE TABLE Courses (
    Course_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    credit DECIMAL,
    course_fees DECIMAL
);

INSERT INTO Courses (Course_id, name, credit, course_fees) 
VALUES
(101, 'Data Analysis', 4, 1500),
(102, 'Machine Learning', 3, 1800),
(103, 'Deep Learning ', 6, 1700),
(104, 'Data Science', 6, 2000),
(105, 'System Design', 5, 1200);

select * from Courses;

CREATE TABLE Students (
    std_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    age INT CHECK (age < 22),
    phone_no VARCHAR(15) UNIQUE,
    course_id INT
);

INSERT INTO Students (std_id, name, city, age, phone_no, course_id) 
VALUES
(1, 'Rahul Sharma', 'Delhi', 18, '9876543210',101),
(2, 'Priya Singh', 'Lucknow', 17, '9876543211',102),
(3, 'Aman Verma', 'Bareilly', 19, '9876543212',101),
(4, 'Neha Gupta', 'Noida', 18, '9876543213',103),
(5, 'Gayu Singh', 'Lucknow', 20, '9876543214',108),
(6, 'Anu Kaur', 'Nawwabganj', 18, '9876543215',107),
(7, 'Sweta Bhatt', 'Baheri', 17, '9876543216',109);

select * from Students;

select Students.name,Courses.name
from Students left join courses on
Students.course_id = Courses.course_id;

select Students.name,Courses.name
from Students right join Courses on
Students.course_id = Courses.course_id;

select Students.name,Courses.name
from Students inner join Courses on
students.course_id = courses.course_id;

select students.name,courses.name
from students left join courses on
students.course_id = courses.course_id
union
select students.name,courses.name
from students right join courses on
students.course_id = courses.course_id;

