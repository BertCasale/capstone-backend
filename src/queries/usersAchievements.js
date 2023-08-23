const db = require('../db/dbConfig.js');

//index query
const getAllUsersAchievements = async () => {
  try {
    const allUsersAchievements = await db.any("SELECT * FROM users_achievements ORDER BY id ASC");
    return { success: true, payload: allUsersAchievements };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getAllUserAchievementsByUser = async (id) => {
  try {
    const allUserAchievementsByUser = await db.any("SELECT * FROM users_achievements WHERE user_id=$1 ORDER BY id ASC;", id);
    return { success: true, payload: allUserAchievementsByUser };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createUserAchievement = async (userAchievementToAdd) => {
  const {
    user_id,
    achievement_id
  } = userAchievementToAdd;

  try {
    const newUserAchievement = await db.one(
      "INSERT INTO users_achievements (user_id, achievement_id) VALUES ($1, $2) RETURNING *;",
      [user_id, achievement_id]
    );
    return { success: true, payload: newUserAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteUserAchievement = async (id) => {
  try {
    const deletedUserAchievement = await db.one("DELETE FROM users_achievements WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedUserAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateUserAchievement = async (id, userAchievementToUpdate) => {
  const { 
    user_id,
    achievement_id
  } = userAchievementToUpdate;

  try {
    const updatedUserAchievement = await db.one(
      "UPDATE users_achievements SET user_id=$1, achievement_id=$2 WHERE id=$3 RETURNING *;",
      [user_id, achievement_id, id]
    );
    return { success: true, payload: updatedUserAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

module.exports = {
  getAllUsersAchievements,
  getAllUserAchievementsByUser,
  createUserAchievement,
  deleteUserAchievement,
  updateUserAchievement
};