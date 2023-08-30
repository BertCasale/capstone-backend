const db = require('../db/dbConfig.js');

//index query
const getAllClients = async () => {
  try {
    const allClients = await db.any("SELECT * FROM clients ORDER BY id ASC");
    return { success: true, payload: allClients };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//show query
const getOneClient = async (id) => {
  try {
    const oneClient = await db.one("SELECT * FROM clients WHERE id=$1;", id);
    return { success: true, payload: oneClient };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//create query
const createClient = async (clientToAdd) => {
  const {
    registration_datetime,
    username,
    email,
    password,
    profile_picture,
    role
  } = clientToAdd;

  try {
    const newClient = await db.one(
      "INSERT INTO clients (registration_datetime, username, email, password, profile_picture, role) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *;",
      [registration_datetime, username, email, password, profile_picture, role]
    );
    return { success: true, payload: newClient };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//delete query
const deleteClient = async (id) => {
  try {
    const deletedClient = await db.one("DELETE FROM clients WHERE id=$1 RETURNING *;", id);
    return { success: true, payload: deletedClient };
  } catch (error) {
    return { success: false, payload: error };
  }
}

//update query
const updateClient = async (id, clientToUpdate) => {
  const { 
    registration_datetime,
    username,
    email,
    password,
    profile_picture,
    role
  } = clientToUpdate;

  try {
    const updatedClient = await db.one(
      "UPDATE client SET registration_datetime=$1, username=$2, email=$3, password=$4, profile_picture=$5, role=$6 WHERE id=$7 RETURNING *;",
      [registration_datetime, username, email, password, profile_picture, role, id]
    );
    return { success: true, payload: updatedClient };
  } catch (error) {
    return { success: false, payload: error };
  }
}


module.exports = {
  getAllClients,
  getOneClient,
  createClient,
  deleteClient,
  updateClient
};