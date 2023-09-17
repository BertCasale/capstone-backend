-- psql -U postgres -f src/db/schema.sql

DROP TABLE IF EXISTS achievements;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS languages;
DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS client_achievements;
DROP TABLE IF EXISTS client_lessons_progress;
DROP TABLE IF EXISTS lesson_sections;

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
  lesson_id INT REFERENCES lessons (id) ON DELETE CASCADE NOT NULL,
  lesson_completion_status BOOLEAN DEFAULT FALSE
);

-- Create a table for "lesson sections"
CREATE TABLE lesson_sections (
  id SERIAL PRIMARY KEY,
  lesson_id INT REFERENCES lessons (id) ON DELETE CASCADE,
  language_id INT REFERENCES languages (id) ON DELETE CASCADE NOT NULL,
  title VARCHAR(80) NOT NULL,
  information_text VARCHAR(300) NOT NULL,
  interactive_element VARCHAR(80),
  correct_feedback VARCHAR(400),
  incorrect_feedback VARCHAR(400),
  question VARCHAR(400),
  image_credit VARCHAR (800)
);