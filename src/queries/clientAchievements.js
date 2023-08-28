const db = require('../db/dbConfig.js');

//index query
const getAllClientAchievements = async () => {
  try {
    const allClientsAchievements = await db.any("SELECT * FROM client_achievements ORDER BY id ASC");
    return { success: true, payload: allClientsAchievements };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getAllClientAchievementsByClient = async (id) => {
  try {
    const allClientAchievementsByClient = await db.any("SELECT * FROM client_achievements WHERE client_id=$1 ORDER BY id ASC;", id);
    return { success: true, payload: allClientAchievementsByClient };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createClientAchievement = async (clientAchievementToAdd) => {
  const {
    client_id,
    achievement_id
  } = clientAchievementToAdd;

  try {
    const newClientAchievement = await db.one(
      "INSERT INTO client_achievements (client_id, achievement_id) VALUES ($1, $2) RETURNING *;",
      [client_id, achievement_id]
    );
    return { success: true, payload: newClientAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteClientAchievement = async (id) => {
  try {
    const deletedClientAchievement = await db.one("DELETE FROM client_achievements WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedClientAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateClientAchievement = async (id, clientAchievementToUpdate) => {
  const { 
    client_id,
    achievement_id
  } = clientAchievementToUpdate;

  try {
    const updatedClientAchievement = await db.one(
      "UPDATE client_achievements SET client_id=$1, achievement_id=$2 WHERE id=$3 RETURNING *;",
      [client_id, achievement_id, id]
    );
    return { success: true, payload: updatedClientAchievement };
  } catch (error) {
    return { success: false, payload: error };
  }
}

module.exports = {
  getAllClientAchievements,
  getAllClientAchievementsByClient,
  createClientAchievement,
  deleteClientAchievement,
  updateClientAchievement
};