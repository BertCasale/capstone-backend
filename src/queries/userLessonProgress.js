const db = require('../db/dbConfig.js');

//index query
const getAllUserLessonProgress = async () => {
  try {
    const allUserLessonProgress = await db.any("SELECT * FROM user_lesson_progress ORDER BY id ASC");
    return { success: true, payload: allUserLessonProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getAllUserLessonProgressByLessonId = async (id) => {
  try {
    const allUserLessonProgressByLessonId = await db.any("SELECT * FROM user_lesson_progress WHERE lesson_id=$1 ORDER BY id ASC;", id);
    return { success: true, payload: allUserLessonProgressByLessonId };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createUserLessonProgress = async (userLessonProgressToAdd) => {
  const {
    user_id,
    lesson_id,
    lesson_completion_status
  } = userLessonProgressToAdd;

  try {
    const newUserLessonProgress = await db.one(
      "INSERT INTO user_lesson_progress (user_id, lesson_id, lesson_completion_status) VALUES ($1, $2, $3) RETURNING *;",
      [user_id, lesson_id, lesson_completion_status]
    );
    return { success: true, payload: newUserLessonProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteUserLessonProgress = async (id) => {
  try {
    const deletedUserLessonProgress = await db.one("DELETE FROM user_lesson_progress WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedUserLessonProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateUserLessonProgress = async (id, userLessonProgressToUpdate) => {
  const { 
    user_id,
    lesson_id,
    lesson_completion_status
  } = userLessonProgressToUpdate;

  try {
    const updatedUserLessonProgress = await db.one(
      "UPDATE user_lesson_progress SET user_id=$1, lesson_id=$2, lesson_completion_status=$3 WHERE id=$4 RETURNING *;",
      [user_id, lesson_id, lesson_completion_status, id]
    );
    return { success: true, payload: updatedUserLessonProgress };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllUserLessonProgress,
  getAllUserLessonProgressByLessonId,
  createUserLessonProgress,
  deleteUserLessonProgress,
  updateUserLessonProgress
};