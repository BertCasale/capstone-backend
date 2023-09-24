const db = require('../db/dbConfig.js');

//index query
const getAllLessonsTopContent2 = async () => {
  try {
    const allLessonsTopContent2 = await db.any("SELECT * FROM lesson_topcontent2 ORDER BY id ASC");
    return { success: true, payload: allLessonsTopContent2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getOneLessonTopContent2 = async (language_id, lesson_id) => {
  try {
    const oneLessonTopContent2 = await db.one("SELECT * FROM lesson_topcontent2 WHERE language_id=$1 AND lessons2_id=$2;", [language_id, lesson_id]);
    return { success: true, payload: oneLessonTopContent2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createLessonTopContent2 = async (lessonToAdd) => {
  const {
    language_id,
    lessons2_id,
    category,
    title,
    duration,
    difficulty,
    description,
    materials,
    preview
  } = lessonToAdd;

  try {
    const newLessonTopContent2 = await db.one(
      "INSERT INTO lesson_topcontent2 (language_id, lessons2_id, category, title, duration, difficulty, description, materials, preview) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *;",
      [language_id, lessons2_id, category, title, duration, difficulty, description, materials, preview]
    );
    return { success: true, payload: newLessonTopContent2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteLessonTopContent2 = async (id) => {
  try {
    const deletedLessonTopContent2 = await db.one("DELETE FROM lesson_topcontent2 WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedLessonTopContent2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateLessonTopContent2 = async (id, lessonToUpdate) => {
  const { 
    language_id,
    lessons2_id,
    category,
    title,
    duration,
    difficulty,
    description,
    materials,
    preview
  } = lessonToUpdate;

  try {
    const updatedLessonTopContent2 = await db.one(
      "UPDATE lesson_topcontent2 SET language_id=$1, lessons2_id=$2, category=$3, title=$4, duration=$5, difficulty=$6, description=$7, materials=$8, preview=$9 WHERE id=$10 RETURNING *;",
      [language_id, lessons2_id, category, title, duration, difficulty, description, materials, preview, id]
    );
    return { success: true, payload: updatedLessonTopContent2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

module.exports = {
  getAllLessonsTopContent2,
  getOneLessonTopContent2,
  createLessonTopContent2,
  deleteLessonTopContent2,
  updateLessonTopContent2
};