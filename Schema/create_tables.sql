CREATE TABLE students(
  student_id INT PRIMARY KEY,
  name TEXT,
  gender TEXT,
  class TEXT);

CREATE TABLE subjects(
  subject_id INT PRIMARY KEY,
  subject_name TEXT);

CREATE TABLE scores(
  score_id INT PRIMARY KEY,
  student_id INT,
  subject_id INT,
  score INT,
  term TEXT,
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (subject_id) REFERENCES subjects(subject_id));
