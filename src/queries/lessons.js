const db = require('../db/dbConfig.js');

//index query
const getAllLessons = async () => {
  try {
    const allLessons = await db.any("SELECT * FROM lessons ORDER BY id ASC");
    return { success: true, payload: allLessons };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getOneLesson = async (id) => {
  try {
    const oneLesson = await db.one("SELECT * FROM lessons WHERE id=$1;", id);
    return { success: true, payload: oneLesson };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createLesson = async (lessonToAdd) => {
  const {
    category,
    title,
    duration,
    difficulty,
    description,
    materials,
    preview
  } = lessonToAdd;

  try {
    const newLesson = await db.one(
      "INSERT INTO lessons (category, title, duration, difficulty, description, materials, preview) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *;",
      [category, title, duration, difficulty, description, materials, preview]
    );
    return { success: true, payload: newLesson };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteLesson = async (id) => {
  try {
    const deletedLesson = await db.one("DELETE FROM lessons WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedLesson };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateLesson = async (id, lessonToUpdate) => {
  const { 
    category,
    title,
    duration,
    difficulty,
    description,
    materials,
    preview
  } = lessonToUpdate;

  try {
    const updatedLesson = await db.one(
      "UPDATE lessons SET category=$1, title=$2, duration=$3, difficulty=$4, description=$5, materials=$6, preview=$7 WHERE id=$8 RETURNING *;",
      [category, title, duration, difficulty, description, materials, preview, id]
    );
    return { success: true, payload: updatedLesson };
  } catch (error) {
    return { success: false, payload: error };
  }
}

module.exports = {
  getAllLessons,
  getOneLesson,
  createLesson,
  deleteLesson,
  updateLesson
};