insert into instrument (instrument_type) values ('Spoon');
insert into instrument (instrument_type) values ('Scraper');
insert into instrument (instrument_type) values ('Nose Flute');
insert into instrument (instrument_type) values ('Triangle');
insert into instrument (instrument_type) values ('Dideridoo');

insert into contact_person (first_name, last_name, phone, email, street_adress) values ('Walton', 'Western', '475-601-0140', null, '884 Butterfield Lane');
insert into contact_person (first_name, last_name, phone, email, street_adress) values ('Helaina', 'Mallon', '583-908-6769', 'hmallon1@cmu.edu', '41 Banding Road');
insert into contact_person (first_name, last_name, phone, email, street_adress) values ('Hyman', 'Erswell', '308-896-4037', 'herswell2@quantcast.com', '64 Old Gate Drive');

insert into instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) values ('892-99-6197', 'Dorothée', 'Scardifeild', '17 Harbort Plaza', true, '922-612-5341', 'cscardifeild0@amazon.com');
insert into instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) values ('209-49-5523', 'Styrbjörn', 'Amott', '54 Sutteridge Point', false, '656-415-8574', 'ramott1@symantec.com');
insert into instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) values ('187-71-6056', 'Bénédicte', 'Cronchey', '2502 Novick Center', true, '244-433-2733', 'jcronchey2@vistaprint.com');
insert into instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) values ('420-83-9538', 'Noëlla', 'Steptowe', '8 Esker Hill', false, '433-551-1450', 'hsteptowe3@disqus.com');
insert into instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email) values ('827-81-8069', 'Yè', 'Fawks', '594 Arrowood Junction', true, '787-794-7423', 'vfawks4@scientificamerican.com');

insert into student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) values (1, '759-99-7295', 'Mén', 'Ottewill', '75298 Sundown Alley', '317-243-6007', 'notnull@notnotnull.nullnot');
insert into student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) values (1, '399-14-9036', 'Rachèle', 'Firbank', '7294 Kedzie Road', '887-944-4085', 'cfirbank1@disqus.com');
insert into student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) values (2, '728-59-9822', 'Maëlle', 'Ludman', '86360 Carpenter Street', '887-944-4086', 'tludman2@wikispaces.com');
insert into student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) values (1, '345-84-9604', 'Anaël', 'Ofener', '3 Blue Bill Park Circle', '887-944-4087', 'tofener3@addthis.com');
insert into student (contact_person_id, ssn, first_name, last_name, street_address, phone, email) values (1, '661-44-0051', 'Björn', 'Liebermann', '9915 Schiller Crossing', '800-702-5640', 'cliebermann4@foxnews.com');

insert into price_scheme (price, lesson_type, discount, skill_level) values (63, 'group_lesson', false, 'beginner');
insert into price_scheme (price, lesson_type, discount, skill_level) values (96, 'ensemble_lesson', true, 'intermediate');
insert into price_scheme (price, lesson_type, discount, skill_level) values (68, 'individual_lesson', true, 'advanced');

insert into classroom (room_number) values (64);
insert into classroom (room_number) values (21); 
insert into classroom (room_number) values (40);

insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (1, 5, 2, '1:25:00', '2024-04-18');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (2, 5, 1, '11:23:00', '2024-01-17');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (3, 2, 2, '12:21:00', '2024-06-10');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (1, 5, 1, '12:48:00', '2023-11-30');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (2, 3, 3, '6:19:00', '2024-01-26');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (3, 5, 2, '1:25:00', '2024-04-19');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (1, 5, 1, '11:23:00', '2024-01-18');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (2, 2, 2, '12:21:00', '2024-06-17');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (3, 5, 1, '12:48:00', '2023-11-29');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (1, 3, 3, '6:19:00', '2024-01-27');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (2, 5, 2, '1:25:00', '2024-04-20');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (3, 5, 1, '11:23:00', '2024-01-19');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (1, 2, 2, '12:21:00', '2024-06-12');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (2, 5, 1, '12:48:00', '2023-11-28');
insert into lesson (classroom_id, instructor_id, price_id, clock, date) values (3, 3, 3, '6:19:00', '2024-01-28');

insert into individual_lesson (lesson_id, student_id, instrument_type, skill_level) values (1, 3, 'tringle', 'NULL');
insert into individual_lesson (lesson_id, student_id, instrument_type, skill_level) values (2, 3, 'tringle', 'NULL');
insert into individual_lesson (lesson_id, student_id, instrument_type, skill_level) values (3, 1, 'tringle', 'NULL');
insert into individual_lesson (lesson_id, student_id, instrument_type, skill_level) values (4, 3, 'tringle', 'NULL');
insert into individual_lesson (lesson_id, student_id, instrument_type, skill_level) values (5, 3, 'tringle', 'NULL');

insert into group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) values (6, 'tringle', 'NULL', 3, 5);
insert into group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) values (7, 'tringle', 'NULL', 3, 8);
insert into group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) values (8, 'tringle', 'NULL', 3, 8);
insert into group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) values (9, 'tringle', 'NULL', 3, 7);
insert into group_lesson (lesson_id, instrument_type, skill_level, min_student, max_student) values (10, 'tringle', 'NULL', 3, 7);

insert into ensemble_lesson (lesson_id, genre, min_student, max_student) values (11, 'NULL', 4, 8);
insert into ensemble_lesson (lesson_id, genre, min_student, max_student) values (12, 'NULL', 4, 5);
insert into ensemble_lesson (lesson_id, genre, min_student, max_student) values (13, 'NULL', 3, 6);
insert into ensemble_lesson (lesson_id, genre, min_student, max_student) values (14, 'NULL', 3, 5);
insert into ensemble_lesson (lesson_id, genre, min_student, max_student) values (15, 'NULL', 4, 5);

insert into sibling (student_id) values (1);
insert into sibling (student_id) values (2);

insert into rental_instrument (instrument_type, price, brand) values ('Spoon', 50, NULL);
insert into rental_instrument (instrument_type, price, brand) values ('Scraper', 55, 'Thomann');
insert into rental_instrument (instrument_type, price, brand) values ('Nose Flute', 10, 'Thomann');
insert into rental_instrument (instrument_type, price, brand) values ('Triangle', 23, 'Kolberg');
insert into rental_instrument (instrument_type, price, brand) values ('Dideridoo', 44, 'Thomann');

insert into rental (student_id, rental_instrument_id, start_date, end_date) values (1, 2, '2024-01-17', '2025-01-17');

insert into can_teach_instrument (instructor_id, instrument_id) values (1, 5);
insert into can_teach_instrument (instructor_id, instrument_id) values (2, 4);
insert into can_teach_instrument (instructor_id, instrument_id) values (3, 3);
insert into can_teach_instrument (instructor_id, instrument_id) values (4, 2);
insert into can_teach_instrument (instructor_id, instrument_id) values (5, 1);
