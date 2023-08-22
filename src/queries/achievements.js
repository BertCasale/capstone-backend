const db = require('../db/dbConfig.js');

//index query
const getAllAchievements = async () => {
  try {
    const allAchievements = await db.any("SELECT * FROM achievements ORDER BY id ASC");
    return { success: true, payload: allAchievements };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getAchievementByName = async (id) => {
  try {
    const oneAchievement = await db.one("SELECT * FROM achievements WHERE name=$1;", id);
    return { success: true, payload: oneAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createAchievement = async (achievementToAdd) => {
  const {
    name,
    description,
    image 
  } = achievementToAdd;

  try {
    const newAchievement = await db.one(
      "INSERT INTO achievements (name, description, image) VALUES ($1, $2, $3) RETURNING *;",
      [name, description, image]
    );
    return { success: true, payload: newAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteAchievement = async (id) => {
  try {
    const deletedAchievement = await db.one("DELETE FROM achievements WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateAchievement = async (id, achievementToUpdate) => {
  const { 
    name,
    description,
    image
  } = achievementToUpdate;

  try {
    const updatedAchievement = await db.one(
      "UPDATE achievements SET name=$1, description=$2, image=$3 WHERE id=$4 RETURNING *;",
      [name, description, image, id]
    );
    return { success: true, payload: updatedAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllAchievements,
  getAchievementByName,
  createAchievement,
  deleteAchievement,
  updateAchievement
};