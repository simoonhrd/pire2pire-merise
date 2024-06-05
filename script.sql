CREATE TABLE images(
   id_image INT,
   name VARCHAR(100) NOT NULL,
   url VARCHAR(255) NOT NULL,
   PRIMARY KEY(id_image)
);

CREATE TABLE tags(
   id_tag INT,
   name VARCHAR(255) NOT NULL,
   PRIMARY KEY(id_tag),
   UNIQUE(name)
);

CREATE TABLE localisation(
   id_localisation INT,
   adress VARCHAR(100) NOT NULL,
   city VARCHAR(100) NOT NULL,
   zip_code VARCHAR(10) NOT NULL,
   PRIMARY KEY(id_localisation)
);

CREATE TABLE status(
   id_status INT,
   name VARCHAR(20) NOT NULL,
   PRIMARY KEY(id_status),
   UNIQUE(name)
);

CREATE TABLE trainers(
   id_author INT,
   trainer_code VARCHAR(12) NOT NULL,
   firstname VARCHAR(100) NOT NULL,
   lastname VARCHAR(100) NOT NULL,
   email VARCHAR(255) NOT NULL,
   password VARCHAR(255) NOT NULL,
   id_localisation INT NOT NULL,
   PRIMARY KEY(id_author),
   UNIQUE(trainer_code),
   UNIQUE(email),
   FOREIGN KEY(id_localisation) REFERENCES localisation(id_localisation)
);

CREATE TABLE students(
   id_student INT,
   firstname VARCHAR(100) NOT NULL,
   lastname VARCHAR(100) NOT NULL,
   email VARCHAR(255) NOT NULL,
   password VARCHAR(255) NOT NULL,
   id_localisation INT NOT NULL,
   PRIMARY KEY(id_student),
   UNIQUE(email),
   FOREIGN KEY(id_localisation) REFERENCES localisation(id_localisation)
);

CREATE TABLE sections(
   id_section INT,
   title VARCHAR(255) NOT NULL,
   educational_objective TEXT NOT NULL,
   id_author INT NOT NULL,
   id_status INT NOT NULL,
   PRIMARY KEY(id_section),
   FOREIGN KEY(id_author) REFERENCES trainers(id_author),
   FOREIGN KEY(id_status) REFERENCES status(id_status)
);

CREATE TABLE trainings(
   id_training INT,
   title VARCHAR(255) NOT NULL,
   educational_objective TEXT NOT NULL,
   id_author INT NOT NULL,
   id_status INT NOT NULL,
   PRIMARY KEY(id_training),
   FOREIGN KEY(id_author) REFERENCES trainers(id_author),
   FOREIGN KEY(id_status) REFERENCES status(id_status)
);

CREATE TABLE lessons(
   id_lesson INT,
   title VARCHAR(255) NOT NULL,
   educational_objective TEXT NOT NULL,
   video_url VARCHAR(255) NOT NULL,
   text_content TEXT NOT NULL,
   id_status INT NOT NULL,
   id_author INT NOT NULL,
   PRIMARY KEY(id_lesson),
   UNIQUE(video_url),
   FOREIGN KEY(id_status) REFERENCES status(id_status),
   FOREIGN KEY(id_author) REFERENCES trainers(id_author)
);

CREATE TABLE section_lessons(
   id_lesson INT,
   id_section INT,
   PRIMARY KEY(id_lesson, id_section),
   FOREIGN KEY(id_lesson) REFERENCES lessons(id_lesson),
   FOREIGN KEY(id_section) REFERENCES sections(id_section)
);

CREATE TABLE training_sections(
   id_section INT,
   id_training INT,
   PRIMARY KEY(id_section, id_training),
   FOREIGN KEY(id_section) REFERENCES sections(id_section),
   FOREIGN KEY(id_training) REFERENCES trainings(id_training)
);

CREATE TABLE student_trainings(
   id_student INT,
   id_training INT,
   PRIMARY KEY(id_student, id_training),
   FOREIGN KEY(id_student) REFERENCES students(id_student),
   FOREIGN KEY(id_training) REFERENCES trainings(id_training)
);

CREATE TABLE lesson_tags(
   id_lesson INT,
   id_tag INT,
   PRIMARY KEY(id_lesson, id_tag),
   FOREIGN KEY(id_lesson) REFERENCES lessons(id_lesson),
   FOREIGN KEY(id_tag) REFERENCES tags(id_tag)
);

CREATE TABLE lesson_images(
   id_lesson INT,
   id_image INT,
   PRIMARY KEY(id_lesson, id_image),
   FOREIGN KEY(id_lesson) REFERENCES lessons(id_lesson),
   FOREIGN KEY(id_image) REFERENCES images(id_image)
);