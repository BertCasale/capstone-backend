const express = require('express');
const clientAchievements = express.Router();

const { 
  getAllClientAchievements,
  getAllClientAchievementsByClient,
  createClientAchievement,
  deleteClientAchievement,
  updateClientAchievement
} = require('../queries/clientAchievements.js');

//index route
clientAchievements.get('/', async (req, res) => {
  const allClientAchievements = await getAllClientAchievements();

  if (allClientAchievements.success) {
    res.status(200).json(allClientAchievements.payload);
  } else {
    res.status(400).json({ error: `Error: ${allClientAchievements.payload}` });
  }
})

//show route
clientAchievements.get('/:id', async (req, res) => {
  const { id } = req.params;
  const allClientAchievementsByClient= await getAllClientAchievementsByClient(id);

  if (allClientAchievementsByClient.success) {
    res.status(200).json(allClientAchievementsByClient.payload);
  } else {
    res.status(400).json({ error: `Error: ${allClientAchievementsByClient.payload}` });
  }
})

//create route
clientAchievements.post('/', async (req, res) => {
  const newClientAchievement = req.body;
  const createdClientAchievement = await createClientAchievement(newClientAchievement);

  if (createdClientAchievement.success) {
    res.status(200).json(createdClientAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdClientAchievement.payload}` });
  }
})

//delete route
clientAchievements.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedClientAchievement = await deleteClientAchievement(id);

  if (deletedClientAchievement.success) {
    res.status(200).json(deletedClientAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedClientAchievement.payload}` });
  }
})

//update route
clientAchievements.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editClientAchievement = req.body;
  const updatedClientAchievement = await updateClientAchievement(id, editClientAchievement);

  if (updatedClientAchievement.success) {
    res.status(200).json(updatedClientAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedClientAchievement.payload}` });
  }
})


module.exports = clientAchievements;