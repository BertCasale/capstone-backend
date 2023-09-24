const db = require('../db/dbConfig.js');

//index by language query
const getAllLessonSectionsByLanguage = async (language_id) => {
  try {
    const allLessonSectionsByLanguage = await db.any("SELECT * FROM lesson_sections WHERE language_id=$1 ORDER BY id ASC", language_id);
    return { success: true, payload: allLessonSectionsByLanguage };
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
const getAllLessonSectionsByLessonByLanguage = async (lesson_id, language_id) => {
  try {
    const allLessonSectionsByLessonIdByLanguage = await db.any("SELECT * FROM lesson_sections WHERE lesson_id=$1 AND language_id=$2 ORDER BY id ASC;", [lesson_id, language_id]);
    //console.log("INPUTS", lesson_id, language_id);
    //console.log("OUTPUTS", allLessonSectionsByLessonIdByLanguage);
    return { success: true, payload: allLessonSectionsByLessonIdByLanguage };
  } catch (error) {
    return { success: false, payload: error };
  }
}


//create query
const createLessonSectionByLanguage = async (lessonSectionToAdd) => {
  const {
    lesson_id,
    language_id,
    title,
    information_text,
    interactive_element,
    correct_feedback,
    incorrect_feedback,
    question,
    image_credit
  } = lessonSectionToAdd;

  try {
    const newLessonSectionByLanguage = await db.one(
      "INSERT INTO lesson_sections (lesson_id, language_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, question, image_credit) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *;",
      [lesson_id, language_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, question, image_credit]
    );
    return { success: true, payload: newLessonSectionByLanguage };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteLessonSectionByLanguage = async (id) => {
  try {
    const deletedLessonSectionByLanguage = await db.one("DELETE FROM lesson_sections WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedLessonSectionByLanguage };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateLessonSectionByLanguage = async (id, lessonSectionByLanguageToUpdate) => {
  const { 
    lesson_id,
    language_id,
    title,
    information_text,
    interactive_element,
    correct_feedback,
    incorrect_feedback,
    question,
    image_credit
  } = lessonSectionByLanguageToUpdate;

  try {
    const updatedLessonSection = await db.one(
      "UPDATE lesson_sections SET lesson_id=$1, language_id=$2, title=$3, information_text=$4, interactive_element=$5, correct_feedback=$6, incorrect_feedback=$7, question=$8, image_credit=$9 WHERE id=$10 RETURNING *;",
      [lesson_id, language_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, question, image_credit, id]
    );
    return { success: true, payload: updatedLessonSection };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllLessonSectionsByLanguage,
  getAllLessonSectionsByLessonByLanguage,
  createLessonSectionByLanguage,
  deleteLessonSectionByLanguage,
  updateLessonSectionByLanguage
};