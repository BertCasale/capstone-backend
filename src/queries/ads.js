const db = require('../db/dbConfig.js');

//index query
const getAllAds = async () => {
  try {
    const allAds = await db.any("SELECT * FROM ads ORDER BY id ASC");
    return { success: true, payload: allAds };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getOneAd = async (id) => {
  try {
    const oneAd = await db.one("SELECT * FROM ads WHERE id=$1;", id);
    return { success: true, payload: oneAd };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createAd = async (adToAdd) => {
  const {
    created_datetime,
    title,
    start_datetime,
    end_datetime,
    content_title,
    content_text,
    content_image,
    content_map_data
  } = adToAdd;

  try {
    const newAd = await db.one(
      "INSERT INTO ads (created_datetime, title, start_datetime, end_datetime, content_title, content_text, content_image, content_map_data) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *;",
      [created_datetime, title, start_datetime, end_datetime, content_title, content_text, content_image, content_map_data]
    );
    return { success: true, payload: newAd };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteAd = async (id) => {
  try {
    const deletedAd = await db.one("DELETE FROM ads WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedAd };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateAd = async (id, adToUpdate) => {
  const { 
    created_datetime,
    title,
    start_datetime,
    end_datetime,
    content_title,
    content_text,
    content_image,
    content_map_data
  } = adToUpdate;

  try {
    const updatedAd = await db.one(
      "UPDATE ads SET created_datetime=$1, title=$2, start_datetime=$3, end_datetime=$4, content_title=$5, content_text=$6, content_image=$7, content_map_data=$8 WHERE id=$9 RETURNING *;",
      [created_datetime, title, start_datetime, end_datetime, content_title, content_text, content_image, content_map_data, id]
    );
    return { success: true, payload: updatedAd };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllAds,
  getOneAd,
  createAd,
  deleteAd,
  updateAd
};