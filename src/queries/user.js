const db = require('../db/dbConfig.js');

//index query
const getAllUsers = async () => {
  try {
    const allUser = await db.any("SELECT * FROM user ORDER BY id ASC");
    return { success: true, payload: allUser };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getOneUser = async (id) => {
  try {
    const oneUser = await db.one("SELECT * FROM user WHERE id=$1;", id);
    return { success: true, payload: oneUser };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createUser = async (userToAdd) => {
  const {
    registration_datetime,
    username,
    email,
    password,
    profile_picture
  } = userToAdd;

  try {
    const newUser = await db.one(
      "INSERT INTO user (registration_datetime, username, email, password, profile_picture) VALUES ($1, $2, $3, $4, $5) RETURNING *;",
      [registration_datetime, username, email, password, profile_picture]
    );
    return { success: true, payload: newUser };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteUser = async (id) => {
  try {
    const deletedUser = await db.one("DELETE FROM user WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedUser };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateUser = async (id, userToUpdate) => {
  const { 
    registration_datetime,
    username,
    email,
    password,
    profile_picture
  } = userToUpdate;

  try {
    const updatedUser = await db.one(
      "UPDATE user SET registration_datetime=$1, username=$2, email=$3, password=$4, profile_picture=$5 WHERE id=$6 RETURNING *;",
      [registration_datetime, username, email, password, profile_picture, id]
    );
    return { success: true, payload: updatedUser };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllUsers,
  getOneUser,
  createUser,
  deleteUser,
  updateUser
};