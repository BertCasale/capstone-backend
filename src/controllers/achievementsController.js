const express = require('express');
const achievements = express.Router();

const { 
    getAllAchievements,
    getOneAchievement,
    createAchievement,
    deleteAchievement,
    updateAchievement
} = require('../queries/achievements.js');

//index route
achievements.get('/', async (req, res) => {
  const allAchievements = await getAllAchievements();

  if (allAchievements.success) {
    res.status(200).json(allAchievements.payload);
  } else {
    res.status(400).json({ error: `Error: ${allAchievements.payload}` });
  }
})

//show route
achievements.get('/:id', async (req, res) => {
  const { id } = req.params;
  const oneAchievement = await getOneAchievement(id);

  if (oneAchievement.success) {
    res.status(200).json(oneAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${oneAchievement.payload}` });
  }
})

//create route
achievements.post('/', async (req, res) => {
  const newAchievement = req.body;
  const createdAchievement = await createAchievement(newAchievement);

  if (createdAchievement.success) {
    res.status(200).json(createdAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdAchievement.payload}` });
  }
})

//delete route
achievements.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedAchievement = await deleteAchievement(id);

  if (deletedAchievement.success) {
    res.status(200).json(deletedAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedAchievement.payload}` });
  }
})

//update route
achievements.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editAchievement = req.body;
  const updatedAchievement = await updateAchievement(id, editAchievement);

  if (updatedAchievement.success) {
    res.status(200).json(updatedAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedAchievement.payload}` });
  }
})

module.exports = achievements;