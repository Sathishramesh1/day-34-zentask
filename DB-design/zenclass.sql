-- Create database
CREATE DATABASE zenclass;

-- Use the created database
USE zenclass;

-- Create table for student
CREATE TABLE students (
    id INT AUTO_INCREMENT,
    batch varchar(100)
  name varchar(100)
  email varchar(100)
  phone varchar(10)
  address varchar(255)
    PRIMARY KEY(id)
);

--tasks table
CREATE Table tasks {
  id integer [primary key]
 task_name varchar(100)
 task_date date
 completed_student_id array
}

--mentor table
 CREATE Table mentors {
  id integer [primary key]
  name varchar(100)
  email varchar(100)
  rating integer
  handling_batch varchar(10)  
}

--student_batch
CREATE Table student_batch{
  id integer [primary key]
  batch_name varchar(10) 
  batch_students array
  mentor_name varchar(100)
}

--class schedule
CREATE Table schedule {
  id integer [primary key]
  batch_id integer
  class_id integer
  class_title varchar(255)
  class_date date
}


--reference
Ref: students.id > tasks.completed_student_id
Ref:students.batch > student_batch.batch_name
Ref:student_batch.mentor_name > mentors.name

Ref:mentors.handling_batch > student_batch.batch_name
Ref:schedule.batch_id > student_batch.id