const db = require('../db/dbConfig.js');

//index query
const getAllLessonSections = async () => {
  try {
    const allLessonSections = await db.any("SELECT * FROM lesson_sections ORDER BY id ASC");
    return { success: true, payload: allLessonSections };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
/*
2023 Aug 22 - "2023 Aug 20 MVP ERD"
contains no criteria to sort sections.
Used 'id' as placeholder.
*/
const getAllLessonSectionsByLessonId = async (id) => {
  try {
    const allLessonSectionsByLessonId = await db.any("SELECT * FROM lesson_sections WHERE lesson_id=$1 ORDER BY id ASC;", id);
    return { success: true, payload: allLessonSectionsByLessonId };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createLessonSection = async (lessonSectionToAdd) => {
  const {
    lesson_id,
    language_id,
    title,
    information_text,
    interactive_element,
    correct_feedback,
    incorrect_feedback
  } = lessonSectionToAdd;

  try {
    const newLessonSection = await db.one(
      "INSERT INTO lesson_sections (lesson_id, language_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *;",
      [lesson_id, language_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback]
    );
    return { success: true, payload: newLessonSection };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteLessonSection = async (id) => {
  try {
    const deletedLessonSection = await db.one("DELETE FROM lesson_sections WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedLessonSection };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateLessonSection = async (id, lessonSectionToUpdate) => {
  const { 
    lesson_id,
    language_id,
    title,
    information_text,
    interactive_element,
    correct_feedback,
    incorrect_feedback
  } = lessonSectionToUpdate;

  try {
    const updatedLessonSection = await db.one(
      "UPDATE lesson_sections SET lesson_id=$1, language_id=$2, title=$3, information_text=$4, interactive_element=$5, correct_feedback=$6, incorrect_feedback=$7 WHERE id=$8 RETURNING *;",
      [lesson_id, language_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, id]
    );
    return { success: true, payload: updatedLessonSection };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllLessonSections,
  getAllLessonSectionsByLessonId,
  createLessonSection,
  deleteLessonSection,
  updateLessonSection
};