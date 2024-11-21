CREATE TABLE classroom (
 classroom_id SERIAL UNIQUE NOT NULL,
 room_number INT UNIQUE NOT NULL
);

ALTER TABLE classroom ADD CONSTRAINT PK_classroom PRIMARY KEY (classroom_id);


CREATE TABLE contact_person (
 contact_person_id SERIAL UNIQUE NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 phone VARCHAR(50) NOT NULL,
 email VARCHAR(50),
 street_adress VARCHAR(50)
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (contact_person_id);


CREATE TABLE instructor (
 instructor_id SERIAL UNIQUE NOT NULL,
 ssn VARCHAR(12) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 street_address VARCHAR(50) NOT NULL,
 can_ensemble BOOLEAN,
 phone VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE instrument (
 instrument_id SERIAL UNIQUE NOT NULL,
 instrument_type VARCHAR(50) UNIQUE
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE price_scheme (
 price_id SERIAL UNIQUE NOT NULL,
 price INT,
 lesson_type VARCHAR(50) UNIQUE,
 discount VARCHAR(50),
 skill_level VARCHAR(50)
);

ALTER TABLE price_scheme ADD CONSTRAINT PK_price_scheme PRIMARY KEY (price_id);


CREATE TABLE rental_instrument (
 rental_instrument_id SERIAL UNIQUE NOT NULL,
 instrument_type VARCHAR(50) NOT NULL,
 price INT NOT NULL,
 brand VARCHAR(50)
);

ALTER TABLE rental_instrument ADD CONSTRAINT PK_rental_instrument PRIMARY KEY (rental_instrument_id);


CREATE TABLE student (
 student_id SERIAL UNIQUE NOT NULL,
 contact_person_id SERIAL,
 ssn VARCHAR(12) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 street_address VARCHAR(50) NOT NULL,
 phone VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE can_teach_instrument (
 instructor_id SERIAL NOT NULL,
 instrument_id SERIAL NOT NULL
);

ALTER TABLE can_teach_instrument ADD CONSTRAINT PK_can_teach_instrument PRIMARY KEY (instructor_id,instrument_id);


CREATE TABLE lesson (
 lesson_id SERIAL UNIQUE NOT NULL,
 classroom_id SERIAL,
 instructor_id SERIAL,
 price_id SERIAL,
 clock TIME(0),
 date DATE
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);


CREATE TABLE rental (
 rental_id SERIAL UNIQUE NOT NULL,
 student_id SERIAL,
 rental_instrument_id SERIAL,
 start_date DATE NOT NULL,
 end_date DATE NOT NULL
);

ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (rental_id);


CREATE TABLE sibling (
 sibling_id SERIAL UNIQUE NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_id);


CREATE TABLE ensemble_lesson (
 ensemble_lesson_id SERIAL UNIQUE NOT NULL,
 lesson_id SERIAL,
 genre VARCHAR(50),
 min_student INT,
 max_student INT
);

ALTER TABLE ensemble_lesson ADD CONSTRAINT PK_ensemble_lesson PRIMARY KEY (ensemble_lesson_id);


CREATE TABLE ensemble_lesson_student (
 ensemble_lesson_id SERIAL UNIQUE NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE ensemble_lesson_student ADD CONSTRAINT PK_ensemble_lesson_student PRIMARY KEY (ensemble_lesson_id,student_id);


CREATE TABLE group_lesson (
 group_lesson_id SERIAL UNIQUE NOT NULL,
 lesson_id SERIAL,
 instrument_type VARCHAR(50) NOT NULL,
 skill_level VARCHAR(50) NOT NULL,
 min_student INT NOT NULL,
 max_student INT NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id);


CREATE TABLE group_lesson_student (
 group_lesson_id SERIAL UNIQUE NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE group_lesson_student ADD CONSTRAINT PK_group_lesson_student PRIMARY KEY (group_lesson_id,student_id);


CREATE TABLE individual_lesson (
 individual_lesson_id SERIAL UNIQUE NOT NULL,
 lesson_id SERIAL,
 instrument_type VARCHAR(50) NOT NULL,
 skill_level VARCHAR(50),
 student_id SERIAL
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (contact_person_id) REFERENCES contact_person (contact_person_id);


ALTER TABLE can_teach_instrument ADD CONSTRAINT FK_can_teach_instrument_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE can_teach_instrument ADD CONSTRAINT FK_can_teach_instrument_1 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (classroom_id) REFERENCES classroom (classroom_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_2 FOREIGN KEY (price_id) REFERENCES price_scheme (price_id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE rental ADD CONSTRAINT FK_rental_1 FOREIGN KEY (rental_instrument_id) REFERENCES rental_instrument (rental_instrument_id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE ensemble_lesson ADD CONSTRAINT FK_ensemble_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE ensemble_lesson_student ADD CONSTRAINT FK_ensemble_lesson_student_0 FOREIGN KEY (ensemble_lesson_id) REFERENCES ensemble_lesson (ensemble_lesson_id);
ALTER TABLE ensemble_lesson_student ADD CONSTRAINT FK_ensemble_lesson_student_1 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE group_lesson_student ADD CONSTRAINT FK_group_lesson_student_0 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (group_lesson_id);
ALTER TABLE group_lesson_student ADD CONSTRAINT FK_group_lesson_student_1 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (student_id) REFERENCES student (student_id);


