-- psql -U postgres -f src/db/seed.sql

\c acorn_dev;

INSERT INTO achievements
(name, description, image)
VALUES
('Completed Elements of Art', 'Awarded on completing Elements of Art lesson', 'none'),           
('Completed Principles of Art', 'Awarded on completing Principles of Art lesson', 'none');

INSERT INTO clients
(registration_datetime, username, email, password, profile_picture, role)
VALUES
('2023-08-01', 'Alexia Apple', 'alexia@gmail.com', 'apassword', 'none', 'Administrator'),
('2023-08-02', 'Bartholomew Bagel', 'barty@gmail.com', 'bpassword', 'none', 'Student');

INSERT INTO lessons
(language_id, category, title, duration, difficulty, description, materials, preview)
VALUES
('English', 'Elements of Art', 'Lines', '15 Minutes', 'Very Easy', 'Start with the basics of art by learning about lines', 'Pen or Pencil, Paper', 'None');

INSERT INTO client_achievements
(client_id, achievement_id)
VALUES
(1,1),
(2,1);

INSERT INTO client_lessons_progress
(client_id, lesson_id, lesson_completion_status)
VALUES
(1, 1, TRUE),
(2, 1, TRUE);

INSERT INTO lesson_sections
(lesson_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback)
VALUES
(1, 'Introduction', 'Lines are one of the most basic art elements.  They are the underlying foundation of most art.  The qualities of a line can vary in length, direction, and thickness.', 'none', NULL, NULL),
(1, 'Converging Lines', 'Converging lines, or lines that point in the same direction, draw your eye in to the point where they meet.', 'ConvergingLines', 'Correct!  The lines of the bridge, bridge shadow, sidewalk, and even the building in the back seem to be directing your attention to the couple walking.', 'Hint: Follow the bridge and sidewalk lines to find the area where they meet.');