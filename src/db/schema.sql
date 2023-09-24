-- psql -U postgres -f src/db/schema.sql

DROP TABLE IF EXISTS achievements CASCADE;
DROP TABLE IF EXISTS ads CASCADE;
DROP TABLE IF EXISTS clients CASCADE;
DROP TABLE IF EXISTS languages CASCADE;
DROP TABLE IF EXISTS lessons CASCADE;
DROP TABLE IF EXISTS lessons2 CASCADE;
DROP TABLE IF EXISTS client_achievements;
DROP TABLE IF EXISTS client_lessons_progress CASCADE;
DROP TABLE IF EXISTS lesson_sections CASCADE;
DROP TABLE IF EXISTS lesson_sections2 CASCADE;
DROP TABLE IF EXISTS lesson_topcontent2 CASCADE;

-- Create a table for "achievements"
CREATE TABLE achievements (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  description VARCHAR(120) NOT NULL,
  image VARCHAR(120) NOT NULL
);

-- Create a table for "ads"
CREATE TABLE ads (
  id SERIAL PRIMARY KEY,
  created_datetime DATE NOT NULL,
  title VARCHAR(120) NOT NULL,
  start_datetime DATE NOT NULL,
  end_datetime DATE NOT NULL,
  content_title VARCHAR(120) NOT NULL,
  content_text VARCHAR(800) NOT NULL,
  content_image VARCHAR(80) NOT NULL,
  content_map_data VARCHAR(800) NOT NULL
);

-- Create a table for "clients"
CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  providerid VARCHAR(80),
  registration_datetime DATE NOT NULL,
  username VARCHAR(80) NOT NULL,
  email VARCHAR(120),
  password VARCHAR(80) NOT NULL,
  profile_picture VARCHAR (120),
  role VARCHAR(40)
);

-- Create a table for "languages"
CREATE TABLE languages (
  id SERIAL PRIMARY KEY,
  created_datetime DATE NOT NULL,
  name VARCHAR(20) NOT NULL,
  image VARCHAR(80) NOT NULL
);

-- Create a table for "lessons"
CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  language_id INT REFERENCES languages (id) ON DELETE CASCADE NOT NULL,
  category VARCHAR(80) NOT NULL,
  title VARCHAR(80) NOT NULL,
  duration VARCHAR(40) NOT NULL,
  difficulty VARCHAR(15) NOT NULL,
  description VARCHAR(400) NOT NULL,
  materials VARCHAR(80),
  preview VARCHAR(80)
);

CREATE TABLE lessons2 (
  id SERIAL PRIMARY KEY,
  engcat VARCHAR(80) NOT NULL,
  engtit VARCHAR(80) NOT NULL,
  engmin INT
);

-- Create a table for "client achievements"
CREATE TABLE client_achievements (
  id SERIAL PRIMARY KEY,
  client_id INT REFERENCES clients (id) ON DELETE CASCADE NOT NULL,
  achievement_id INT REFERENCES achievements (id) ON DELETE CASCADE NOT NULL
);

-- Create a table for "client lessons progress"
CREATE TABLE client_lessons_progress (
  id SERIAL PRIMARY KEY,
  client_id INT REFERENCES clients (id) ON DELETE CASCADE NOT NULL,
  lessons2_id INT REFERENCES lessons (id) ON DELETE CASCADE NOT NULL,
  lesson_completion_status BOOLEAN DEFAULT FALSE
);

-- Create a table for "lesson sections"
CREATE TABLE lesson_sections (
  id SERIAL PRIMARY KEY,
  lesson_id INT REFERENCES lessons (id) ON DELETE CASCADE,
  language_id INT REFERENCES languages (id) ON DELETE CASCADE NOT NULL,
  title VARCHAR(200) NOT NULL,
  information_text VARCHAR(600) NOT NULL,
  interactive_element VARCHAR(200),
  correct_feedback VARCHAR(600),
  incorrect_feedback VARCHAR(600),
  question VARCHAR(800),
  image_credit VARCHAR (800)
);

-- Create a table for "lesson sections2"
CREATE TABLE lesson_sections2 (
  id SERIAL PRIMARY KEY,
  language_id INT REFERENCES languages (id) ON DELETE CASCADE NOT NULL,
  lessons2_id INT REFERENCES lessons2 (id) ON DELETE CASCADE,
  title VARCHAR(200) NOT NULL,
  information_text VARCHAR(600) NOT NULL,
  interactive_element VARCHAR(200),
  correct_feedback VARCHAR(600),
  incorrect_feedback VARCHAR(600),
  question VARCHAR(800),
  image_credit VARCHAR (800)
);

-- Create a table for "lesson_topconent2"
CREATE TABLE lesson_topcontent2 (
  id SERIAL PRIMARY KEY,
  language_id INT REFERENCES languages (id) ON DELETE CASCADE NOT NULL,
  lessons2_id INT REFERENCES lessons2 (id) ON DELETE CASCADE NOT NULL,
  category VARCHAR(80) NOT NULL,
  title VARCHAR(80) NOT NULL,
  duration VARCHAR(40) NOT NULL,
  difficulty VARCHAR(15) NOT NULL,
  description VARCHAR(400) NOT NULL,
  materials VARCHAR(80),
  preview VARCHAR(80)
);