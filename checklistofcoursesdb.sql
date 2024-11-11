CREATE DATABASE IF NOT EXISTS checklistofcoursesdb;

USE checklistofcoursesdb;

CREATE TABLE IF NOT EXISTS student_information (
    student_info_id INT AUTO_INCREMENT PRIMARY KEY,
    student_number VARCHAR(20),
    name_of_student VARCHAR(50),
    address VARCHAR(100),
    date_of_admission DATE,
    contact_number VARCHAR(20),
    name_of_adviser VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS firstyear_firstsem (
    firstyear_firstsem_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(20),
    course_title VARCHAR(100),
    credit_unit_lecture INT,
    credit_unit_laboratory INT,
    pre_requisite VARCHAR(100),
    prof_instructor VARCHAR(50),
    final_grade VARCHAR (50),
    student_info_id INT,
    FOREIGN KEY (student_info_id) REFERENCES student_information(student_info_id)
);

CREATE TABLE IF NOT EXISTS firstyear_secondsem (
    firstyear_secondsem_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(20),
    course_title VARCHAR(100),
    credit_unit_lecture INT,
    credit_unit_laboratory INT,
    pre_requisite VARCHAR(100),
    prof_instructor VARCHAR(50),
    final_grade VARCHAR (50),
    student_info_id INT,
    FOREIGN KEY (student_info_id) REFERENCES student_information(student_info_id)
);

CREATE TABLE IF NOT EXISTS secondyear_firstsem (
    secondyear_firstsem_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(20),
    course_title VARCHAR(100),
    credit_unit_lecture INT,
    credit_unit_laboratory INT,
    pre_requisite VARCHAR(100),
    prof_instructor VARCHAR(50),
    final_grade VARCHAR (50),
    student_info_id INT,
    FOREIGN KEY (student_info_id) REFERENCES student_information(student_info_id)
);

CREATE TABLE IF NOT EXISTS secondyear_secondsem (
    secondyear_secondsem_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(20),
    course_title VARCHAR(100),
    credit_unit_lecture INT,
    credit_unit_laboratory INT,
    pre_requisite VARCHAR(100),
    prof_instructor VARCHAR(50),
    final_grade VARCHAR (50),
    student_info_id INT,
    FOREIGN KEY (student_info_id) REFERENCES student_information(student_info_id)
);

CREATE TABLE IF NOT EXISTS thirdyear_firstsem (
    thirdyear_firstsem_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(20),
    course_title VARCHAR(100),
    credit_unit_lecture INT,
    credit_unit_laboratory INT,
    pre_requisite VARCHAR(100),
    prof_instructor VARCHAR(50),
    final_grade VARCHAR (50),
    student_info_id INT,
    FOREIGN KEY (student_info_id) REFERENCES student_information(student_info_id)
);
