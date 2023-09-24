const db = require('../db/dbConfig.js');

//index query
const getAllLessons2 = async () => {
  try {
    const allLessons2 = await db.any("SELECT * FROM lessons2 ORDER BY id ASC");
    return { success: true, payload: allLessons2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getOneLesson2 = async (id) => {
  try {
    const oneLesson2 = await db.one("SELECT * FROM lessons2 WHERE id=$1;", id);
    return { success: true, payload: oneLesson2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createLesson2 = async (lesson2ToAdd) => {
  const {
    engcat,
    engtit,
    engmin
  } = lesson2ToAdd;

  try {
    const newLesson2 = await db.one(
      "INSERT INTO lessons2 (engcat, engtit, engmin) VALUES ($1, $2, $3) RETURNING *;",
      [engcat, engtit, engmin]
    );
    return { success: true, payload: newLesson2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteLesson2 = async (id) => {
  try {
    const deletedLesson2 = await db.one("DELETE FROM lessons2 WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedLesson2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateLesson2 = async (id, lessonToUpdate2) => {
  const {
    engcat,
    engtit,
    engmin
  } = lessonToUpdate2;

  try {
    const updatedLesson2 = await db.one(
      "UPDATE lessons2 SET engcat=$1, engtit=$2, engmin=$3 WHERE id=$4 RETURNING *;",
      [engcat, engtit, engmin, id]
    );
    return { success: true, payload: updatedLesson2 };
  } catch (error) {
    return { success: false, payload: error };
  }
}

module.exports = {
  getAllLessons2,
  getOneLesson2,
  createLesson2,
  deleteLesson2,
  updateLesson2
};