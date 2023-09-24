const db = require('../db/dbConfig.js');

//index query
const getAllClientLessonsProgress = async () => {
  try {
    const allClientLessonsProgress = await db.any("SELECT * FROM client_lessons_progress ORDER BY id ASC");
    return { success: true, payload: allClientLessonsProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getAllClientLessonsProgressByClientId = async (id) => {
  try {
    const allClientLessonsProgressByClientId = await db.any("SELECT * FROM client_lessons_progress WHERE client_id=$1 ORDER BY id ASC;", id);
    return { success: true, payload: allClientLessonsProgressByClientId };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createClientLessonProgress = async (clientLessonProgressToAdd) => {
  const {
    client_id,
    lessons2_id,
    lesson_completion_status
  } = clientLessonProgressToAdd;

  try {
    const newClientLessonProgress = await db.one(
      "INSERT INTO client_lessons_progress (client_id, lessons2_id, lesson_completion_status) VALUES ($1, $2, $3) RETURNING *;",
      [client_id, lessons2_id, lesson_completion_status]
    );
    return { success: true, payload: newClientLessonProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteClientLessonProgress = async (id) => {
  try {
    const deletedClientLessonProgress = await db.one("DELETE FROM client_lessons_progress WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedClientLessonProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateClientLessonProgress = async (id, clientLessonProgressToUpdate) => {
  const { 
    client_id,
    lessons2_id,
    lesson_completion_status
  } = clientLessonProgressToUpdate;

  try {
    const updatedClientLessonProgress = await db.one(
      "UPDATE client_lessons_progress SET client_id=$1, lessons2_id=$2, lesson_completion_status=$3 WHERE id=$4 RETURNING *;",
      [client_id, lessons2_id, lesson_completion_status, id]
    );
    return { success: true, payload: updatedClientLessonProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllClientLessonsProgress,
  getAllClientLessonsProgressByClientId,
  createClientLessonProgress,
  deleteClientLessonProgress,
  updateClientLessonProgress
};