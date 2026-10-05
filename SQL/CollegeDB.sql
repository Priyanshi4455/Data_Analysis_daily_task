CREATE DATABASE College;

USE College;

CREATE TABLE Library(
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100) NOT NULL,
    student_id VARCHAR(20),
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20)
);

CREATE TABLE Result(
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id VARCHAR(20) NOT NULL,
    student_name VARCHAR(100),
    course VARCHAR(50),
    semester INT,
    marks INT,
    max_marks INT,
    grade VARCHAR(5),
    result VARCHAR(20)
);

CREATE TABLE Fees(
    Fee_id INT PRIMARY KEY AUTO_INCREMENT,
    course VARCHAR(50) NOT NULL,
    tuition_fee DECIMAL(10,2),
    exam_fee DECIMAL(10,2),
    insurance_fee DECIMAL(10,2),
    total_fee DECIMAL(10,2),
    discount DECIMAL(10,2) DEFAULT 0,
    final_fee DECIMAL(10,2)
);

CREATE TABLE Academic (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    subject VARCHAR(100),
    day VARCHAR(20),
    start_time TIME,
    end_time TIME,
    total_hours DECIMAL(3,1),
    room_no VARCHAR(20)
);

INSERT INTO Library
(book_id, book_name, student_id, issue_date, return_date, status)
VALUES
(1, 'Database Management System', 'ST2026058', '2026-09-01', '2026-09-10', 'Returned'),
(2, 'Python Programming', 'ST2026069', '2026-09-03', '2026-09-12', 'Returned'),
(3, 'Data Structures and Algorithms', 'ST2026043', '2026-09-08', NULL, 'Issued'),
(4, 'Data Analytics', 'ST2026032', '2026-09-10', NULL, 'Issued');

INSERT INTO Result
(student_id, student_name, course, semester, marks, max_marks, grade, result)
VALUES
('ST2023487', 'Priyanshi Gangwar', 'BCA', 1, 96, 100, 'A+', 'Pass'),
('ST2023332', 'Adarsh Singh', 'B.Tech', 1, 87, 100, 'A', 'Pass'),
('ST2026069', 'Priya Sharma', 'MCA', 1, 73, 100, 'B', 'Pass'),
('ST2026058', 'Satyam Verma', 'BCA', 1, 64, 100, 'C', 'Pass');

INSERT INTO Fees
(course, tuition_fee, exam_fee, insurance_fee, total_fee, discount, final_fee)
VALUES
('BCA', 50000, 6000, 300, 56300, NULL, 56300),
('MCA', 65000, 6000, 300, 71300, 39000, 32300),
('BBA', 60000, 6000, 300, 66300, NULL, 56300),
('MBA', 100000, 6000, 300, 106300, 30000, 76300),
('B.Tech(CSE)', 100000, 6000, 300, 106300, NULL, 106300),
('M.Tech(CSE)', 150000, 6000, 300, 156300, 40000, 116300);

INSERT INTO Academic
(teacher_id, teacher_name, department, subject, day, start_time, end_time, total_hours, room_no)
VALUES
(101, 'Akhilesh Kumar', 'Computer Applications', 'Python Programming',
 'Monday', '09:00:00', '11:00:00', 2, 'Room 45'),

(107, 'Saurabh Mishra', 'Computer Applications', 'DSA',
 'Tuesday', '10:00:00', '11:00:00', 1, 'Room 46'),

(105, 'Neha Sharma', 'Management', 'Finance',
 'Friday', '02:00:00', '04:00:00', 2, 'Room 33'),

(109, 'Megha Sharma', 'Computer Applications', 'DBMS',
 'Thursday', '11:00:00', '02:00:00', 2, 'Room 57');
