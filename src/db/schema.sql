-- psql -U postgres -f db/schema.sql

-- IF already exists, drop it.
DROP DATABASE IF EXISTS acorn_dev;

-- Create our database
CREATE DATABASE acorn_dev;

-- Connect to the db
\c acorn_dev;

-- Create a table for "achievements"
CREATE TABLE achievements (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  description VARCHAR(120) NOT NULL,
  image VARCHAR(120) NOT NULL
);

-- Create a table for "users achievements"
CREATE TABLE users_achievements (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES user (id) ON DELETE CASCADE,
  achievement_id INT REFERENCES achievements (id) ON DELETE CASCADE
);

-- Create a table for "user"
CREATE TABLE user (
  id SERIAL PRIMARY KEY,
  registration_datetime DATE NOT NULL,
  username VARCHAR(80) NOT NULL,
  email VARCHAR(120),
  password VARCHAR(80) NOT NULL,
  profile_picture VARCHAR (120)
);

-- Create a table for "user lesson progress"
CREATE TABLE user_lesson_progress (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES user (id) ON DELETE CASCADE,
  achievement_id INT REFERENCES achievements (id) ON DELETE CASCADE
  lesson_completion_status BOOLEAN DEFAULT FALSE
);

-- Create a table for "lessons"
CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  category VARCHAR(80) NOT NULL,
  title VARCHAR(80) NOT NULL,
  duration VARCHAR(40) NOT NULL,
  difficulty VARCHAR(15) NOT NULL,
  description VARCHAR(400) NOT NULL,
  materials VARCHAR(80)
);

-- Create a table for "lesson sections"
CREATE TABLE lesson_sections (
  id SERIAL PRIMARY KEY,
  lesson_id INT REFERENCES lessons (id) ON DELETE CASCADE,
  title VARCHAR(80) NOT NULL,
  information_text VARCHAR(300) NOT NULL,
  interactive_element VARCHAR(80),
  correct_feedback VARCHAR(120),
  incorrect_feedback VARCHAR(120),
  lesson_section_completion BOOLEAN DEFAULT FALSE
);