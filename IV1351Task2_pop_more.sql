DO $$
BEGIN
    FOR i IN 1..100 LOOP
        INSERT INTO instrument (instrument_type)
        VALUES (CONCAT('Instrument_', i));
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..500 LOOP
        INSERT INTO contact_person (first_name, last_name, phone, email, street_adress)
        VALUES (
            CONCAT('FirstName_', i),
            CONCAT('LastName_', i),
            CONCAT('555-', LPAD(i::TEXT, 4, '0')),
            CONCAT('email', i, '@example.com'),
            CONCAT(i, ' Random Street')
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..200 LOOP
        INSERT INTO instructor (ssn, first_name, last_name, street_address, can_ensemble, phone, email)
        VALUES (
            CONCAT(LPAD((i % 999)::TEXT, 3, '0'), '-', LPAD((i % 99)::TEXT, 2, '0'), '-', LPAD((i % 9999)::TEXT, 4, '0')),
            CONCAT('InstructorFirst_', i),
            CONCAT('InstructorLast_', i),
            CONCAT(i, ' Teaching Lane'),
            (i % 2 = 0),
            CONCAT('555-', LPAD((2000 + i)::TEXT, 4, '0')),
            CONCAT('instructor', i, '@example.com')
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO student (contact_person_id, ssn, first_name, last_name, street_address, phone, email)
        VALUES (
            (i % 500) + 1, -- Assuming 500 contact persons
            CONCAT(LPAD((i % 999)::TEXT, 3, '0'), '-', LPAD((i % 99)::TEXT, 2, '0'), '-', LPAD((i % 9999)::TEXT, 4, '0')),
            CONCAT('StudentFirst_', i),
            CONCAT('StudentLast_', i),
            CONCAT(i, ' School Street'),
            CONCAT('555-', LPAD((3000 + i)::TEXT, 4, '0')),
            CONCAT('student', i, '@example.com')
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO price_scheme (price, lesson_type, discount, skill_level)
        VALUES (
            (i * 5) + 50,
            CASE WHEN i % 3 = 0 THEN 'group_lesson'
                 WHEN i % 3 = 1 THEN 'individual_lesson'
                 ELSE 'ensemble_lesson'
            END,
            (i % 2 = 0),
            CASE WHEN i % 4 = 0 THEN 'beginner'
                 WHEN i % 4 = 1 THEN 'intermediate'
                 ELSE 'advanced'
            END
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..100 LOOP
        INSERT INTO classroom (room_number)
        VALUES (i);
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO lesson (classroom_id, instructor_id, price_id, clock, date)
        VALUES (
            (i % 100) + 1, -- Assuming 100 classrooms
            (i % 200) + 1, -- Assuming 200 instructors
            (i % 50) + 1,  -- Assuming 50 price schemes
            TIME '09:00:00' + (i % 480) * INTERVAL '1 minute',
            CURRENT_DATE + (i % 365)
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..300 LOOP
        INSERT INTO rental_instrument (instrument_type, price, brand)
        VALUES (
            CONCAT('Instrument_', i),
            (i * 2) + 10,
            CASE WHEN i % 3 = 0 THEN 'Yamaha'
                 WHEN i % 3 = 1 THEN 'Thomann'
                 ELSE 'Kolberg'
            END
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO rental (student_id, rental_instrument_id, start_date, end_date)
        VALUES (
            (i % 1000) + 1, -- Assuming 1000 students
            (i % 300) + 1,  -- Assuming 300 rental instruments
            CURRENT_DATE + (i % 30),
            CURRENT_DATE + 365 + (i % 30)
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..500 LOOP
        INSERT INTO can_teach_instrument (instructor_id, instrument_id)
        VALUES (
            (i % 200) + 1, -- Assuming 200 instructors
            (i % 100) + 1  -- Assuming 100 instruments
        );
    END LOOP;
END $$;

DO $$
BEGIN
    FOR i IN 1..500 LOOP
        INSERT INTO sibling (student_id)
        VALUES ((i % 1000) + 1); -- Assuming 1000 students
    END LOOP;
END $$;
