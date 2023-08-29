const db = require('../db/dbConfig.js');

//index query
const getAllLanguages = async () => {
  try {
    const allLanguages = await db.any("SELECT * FROM languages ORDER BY id ASC");
    return { success: true, payload: allLanguages };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getOneLanguage = async (id) => {
  try {
    const oneLanguage = await db.one("SELECT * FROM languages WHERE id=$1;", id);
    return { success: true, payload: oneLanguage };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createLanguage = async (languageToAdd) => {
  const {
    created_datetime,
    name
  } = languageToAdd;

  try {
    const newLanguage = await db.one(
      "INSERT INTO languages (created_datetime, name) VALUES ($1, $2) RETURNING *;",
      [created_datetime, name]
    );
    return { success: true, payload: newLanguage };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteLanguage = async (id) => {
  try {
    const deletedLanguage = await db.one("DELETE FROM languages WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedLanguage };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateLanguage = async (id, languageToUpdate) => {
  const { 
    created_datetime,
    name
  } = languageToUpdate;

  try {
    const updatedLanguage = await db.one(
      "UPDATE languages SET created_datetime=$1, name=$2 WHERE id=$3 RETURNING *;",
      [created_datetime, name, id]
    );
    return { success: true, payload: updatedLanguage };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllLanguages,
  getOneLanguage,
  createLanguage,
  deleteLanguage,
  updateLanguage
};