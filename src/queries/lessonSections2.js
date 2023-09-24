const db = require('../db/dbConfig.js');

//index query
const getAllLessonSections2 = async () => {
  try {
    const allLessonSections2 = await db.any("SELECT * FROM lesson_sections2 ORDER BY id ASC");
    return { success: true, payload: allLessonSections2 };
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
const getAllLessonSectionsByLanguageByLesson2 = async (language_id, lesson_id) => {
  try {
    const allLessonSectionsByLessonByLanguage2 = await db.any("SELECT * FROM lesson_sections2 WHERE language_id=$1 AND lessons2_id=$2 ORDER BY id ASC;", [language_id, lesson_id]);
    //console.log("INPUTS", language_id, lesson_id);
    //console.log("OUTPUTS", allLessonSectionsByLessonIdByLanguage2);
    return { success: true, payload: allLessonSectionsByLessonByLanguage2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}


//create query
const createLessonSection2 = async (lessonSectionToAdd2) => {
  const {
    language_id,
    lessons2_id,
    title,
    information_text,
    interactive_element,
    correct_feedback,
    incorrect_feedback,
    question,
    image_credit
  } = lessonSectionToAdd2;

  try {
    const newLessonSection2 = await db.one(
      "INSERT INTO lesson_sections2 (language_id, lessons2_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, question, image_credit) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *;",
      [language_id, lessons2_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, question, image_credit]
    );
    return { success: true, payload: newLessonSection2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteLessonSection2 = async (id) => {
  try {
    const deletedLessonSection2 = await db.one("DELETE FROM lesson_sections2 WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedLessonSection2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateLessonSection2 = async (id, lessonSectionByLanguageToUpdate) => {
  const { 
    language_id,
    lessons2_id,
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
      "UPDATE lesson_sections2 SET language_id=$1, lessons2_id=$2, title=$3, information_text=$4, interactive_element=$5, correct_feedback=$6, incorrect_feedback=$7, question=$8, image_credit=$9 WHERE id=$10 RETURNING *;",
      [language_id, lessons2_id, title, information_text, interactive_element, correct_feedback, incorrect_feedback, question, image_credit, id]
    );
    return { success: true, payload: updatedLessonSection };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllLessonSections2,
  getAllLessonSectionsByLanguageByLesson2,
  createLessonSection2,
  deleteLessonSection2,
  updateLessonSection2
};