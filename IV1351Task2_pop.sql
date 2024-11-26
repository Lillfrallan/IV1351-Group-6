INSERT INTO instrument (instrument_type) VALUES ('Spoon');
INSERT INTO instrument (instrument_type) VALUES ('Scraper');
INSERT INTO instrument (instrument_type) VALUES ('Nose Flute');
INSERT INTO instrument (instrument_type) VALUES ('Triangle');
INSERT INTO instrument (instrument_type) VALUES ('Dideridoo');

INSERT INTO contact_person (first_name, last_name, phone, email, street_adress) VALUES ('Walton', 'Western', '475-601-0140', null, '884 Butterfield Lane');
INSERT INTO contact_person (first_name, last_name, phone, email, street_adress) VALUES ('Helaina', 'Mallon', '583-908-6769', 'hmallon1@cmu.edu', '41 Banding Road');
INSERT INTO contact_person (first_name, last_name, phone, email, street_adress) VALUES ('Hyman', 'Erswell', '308-896-4037', 'herswell2@quantcast.com', '64 Old Gate Drive');

INSERT INTO instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) VALUES ('892-99-6197', 'Dorothée', 'Scardifeild', '17 Harbort Plaza', true, '922-612-5341', 'cscardifeild0@amazon.com');
INSERT INTO instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) VALUES ('209-49-5523', 'Styrbjörn', 'Amott', '54 Sutteridge Point', false, '656-415-8574', 'ramott1@symantec.com');
INSERT INTO instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) VALUES ('187-71-6056', 'Bénédicte', 'Cronchey', '2502 Novick Center', true, '244-433-2733', 'jcronchey2@vistaprint.com');
INSERT INTO instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) VALUES ('420-83-9538', 'Noëlla', 'Steptowe', '8 Esker Hill', false, '433-551-1450', 'hsteptowe3@disqus.com');
INSERT INTO instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) VALUES ('827-81-8069', 'Yè', 'Fawks', '594 Arrowood Junction', true, '787-794-7423', 'vfawks4@scientificamerican.com');

INSERT INTO student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) VALUES (1, '759-99-7295', 'Mén', 'Ottewill', '75298 Sundown Alley', '317-243-6007', 'notnull@notnotnull.nullnot');
INSERT INTO student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) VALUES (1, '399-14-9036', 'Rachèle', 'Firbank', '7294 Kedzie Road', '887-944-4085', 'cfirbank1@disqus.com');
INSERT INTO student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) VALUES (2, '728-59-9822', 'Maëlle', 'Ludman', '86360 Carpenter Street', '887-944-4086', 'tludman2@wikispaces.com');
INSERT INTO student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) VALUES (1, '345-84-9604', 'Anaël', 'Ofener', '3 Blue Bill Park Circle', '887-944-4087', 'tofener3@addthis.com');
INSERT INTO student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) VALUES (1, '661-44-0051', 'Björn', 'Liebermann', '9915 Schiller Crossing', '800-702-5640', 'cliebermann4@foxnews.com');

INSERT INTO price_scheme (price, lesson_type, discount, skill_level) VALUES (63, 'group_lesson', false, 'beginner');
INSERT INTO price_scheme (price, lesson_type, discount, skill_level) VALUES (96, 'ensemble_lesson', true, 'intermediate');
INSERT INTO price_scheme (price, lesson_type, discount, skill_level) VALUES (68, 'individual_lesson', true, 'advanced');

INSERT INTO classroom (room_number) VALUES (64);
INSERT INTO classroom (room_number) VALUES (21); 
INSERT INTO classroom (room_number) VALUES (40);

INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 5, 2, '1:25:00', '2024-04-18');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 5, 1, '11:23:00', '2024-01-17');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 2, 2, '12:21:00', '2024-06-10');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 5, 1, '12:48:00', '2023-11-30');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 3, 3, '6:19:00', '2024-01-26');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 5, 2, '1:25:00', '2024-04-19');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 5, 1, '11:23:00', '2024-01-18');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 2, 2, '12:21:00', '2024-06-17');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 5, 1, '12:48:00', '2023-11-29');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 3, 3, '6:19:00', '2024-01-27');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 5, 2, '1:25:00', '2024-04-20');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 5, 1, '11:23:00', '2024-01-19');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 2, 2, '12:21:00', '2024-06-12');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 5, 1, '12:48:00', '2023-11-28');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 3, 3, '6:19:00', '2024-01-28');

INSERT INTO individual_lesson (lesson_id, student_id, instrument_type, skill_level) VALUES (1, 3, 'tringle', 'NULL');
INSERT INTO individual_lesson (lesson_id, student_id, instrument_type, skill_level) VALUES (2, 3, 'tringle', 'NULL');
INSERT INTO individual_lesson (lesson_id, student_id, instrument_type, skill_level) VALUES (3, 1, 'tringle', 'NULL');
INSERT INTO individual_lesson (lesson_id, student_id, instrument_type, skill_level) VALUES (4, 3, 'tringle', 'NULL');
INSERT INTO individual_lesson (lesson_id, student_id, instrument_type, skill_level) VALUES (5, 3, 'tringle', 'NULL');

INSERT INTO group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) VALUES (6, 'tringle', 'NULL', 3, 5);
INSERT INTO group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) VALUES (7, 'tringle', 'NULL', 3, 8);
INSERT INTO group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) VALUES (8, 'tringle', 'NULL', 3, 8);
INSERT INTO group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) VALUES (9, 'tringle', 'NULL', 3, 7);
INSERT INTO group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) VALUES (10, 'tringle', 'NULL', 3, 7);

INSERT INTO sibling (student_id) VALUES (1);
INSERT INTO sibling (student_id) VALUES (2);

INSERT INTO rental_instrument (instrument_type, price, brand) VALUES ('Spoon', 50, NULL);
INSERT INTO rental_instrument (instrument_type, price, brand) VALUES ('Scraper', 55, 'Thomann');
INSERT INTO rental_instrument (instrument_type, price, brand) VALUES ('Nose Flute', 10, 'Thomann');
INSERT INTO rental_instrument (instrument_type, price, brand) VALUES ('Triangle', 23, 'Kolberg');
INSERT INTO rental_instrument (instrument_type, price, brand) VALUES ('Dideridoo', 44, 'Thomann');

INSERT INTO rental (student_id, rental_instrument_id, start_date, end_date) VALUES (1, 2, '2024-01-17', '2025-01-17');

INSERT INTO can_teach_instrument (instructor_id, instrument_id) VALUES (1, 5);
INSERT INTO can_teach_instrument (instructor_id, instrument_id) VALUES (2, 4);
INSERT INTO can_teach_instrument (instructor_id, instrument_id) VALUES (3, 3);
INSERT INTO can_teach_instrument (instructor_id, instrument_id) VALUES (4, 2);
INSERT INTO can_teach_instrument (instructor_id, instrument_id) VALUES (5, 1);

INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 5, 2, '1:25:00', '2024-11-18');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 5, 1, '11:23:00', '2024-11-17');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 2, 2, '12:21:00', '2024-11-10');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 3, 3, '6:19:00', '2024-11-26');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 5, 2, '1:25:00', '2024-11-19');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 5, 1, '11:23:00', '2024-11-18');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 2, 2, '12:21:00', '2024-11-17');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 3, 3, '6:19:00', '2024-11-27');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (2, 5, 2, '1:25:00', '2024-11-20');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 5, 1, '11:23:00', '2024-11-19');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (1, 2, 2, '12:21:00', '2024-11-12');
INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date) VALUES (3, 3, 3, '6:19:00', '2024-11-28');

INSERT INTO ensemble_lesson (lesson_id, genre, min_student, max_student) VALUES (21, 'Jazz', 4, 8);
INSERT INTO ensemble_lesson (lesson_id, genre, min_student, max_student) VALUES (22, 'Pop', 4, 5);
INSERT INTO ensemble_lesson (lesson_id, genre, min_student, max_student) VALUES (23, 'Jazz', 3, 6);
INSERT INTO ensemble_lesson (lesson_id, genre, min_student, max_student) VALUES (24, 'Pop', 3, 5);
INSERT INTO ensemble_lesson (lesson_id, genre, min_student, max_student) VALUES (25, 'Jazz', 4, 5);

INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (1, 1);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (1, 2);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (1, 3);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (1, 4);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (1, 5);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (2, 1);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (2, 2);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (2, 3);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (2, 4);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (2, 5);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (3, 1);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (3, 2);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (3, 3);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (3, 4);
INSERT INTO ensemble_lesson_student (ensemble_lesson_id, student_id) VALUES (3, 5);
