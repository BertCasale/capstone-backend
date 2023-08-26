const express = require('express');
const userAchievements = express.Router();

const { 
  getAllUsersAchievements,
  getAllUserAchievementsByUser,
  createUserAchievement,
  deleteUserAchievement,
  updateUserAchievement
} = require('../queries/usersAchievements.js');

//index route
userAchievements.get('/', async (req, res) => {
  const allUserAchievements = await getAllUsersAchievements();

  if (allUserAchievements.success) {
    res.status(200).json(allUserAchievements.payload);
  } else {
    res.status(400).json({ error: `Error: ${allUserAchievements.payload}` });
  }
})

//show route
userAchievements.get('/:id', async (req, res) => {
  const { id } = req.params;
  const allUserAchievementsByUser= await getAllUserAchievementsByUser(id);

  if (allUserAchievementsByUser.success) {
    res.status(200).json(allUserAchievementsByUser.payload);
  } else {
    res.status(400).json({ error: `Error: ${allUserAchievementsByUser.payload}` });
  }
})

//create route
userAchievements.post('/', async (req, res) => {
  const newUserAchievement = req.body;
  const createdUserAchievement = await createUserAchievement(newUserAchievement);

  if (createdUserAchievement.success) {
    res.status(200).json(createdUserAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdUserAchievement.payload}` });
  }
})

//delete route
userAchievements.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedUserAchievement = await deleteUserAchievement(id);

  if (deletedUserAchievement.success) {
    res.status(200).json(deletedUserAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedUserAchievement.payload}` });
  }
})

//update route
userAchievements.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editUserAchievement = req.body;
  const updatedUserAchievement = await updateUserAchievement(id, editUserAchievement);

  if (updatedUserAchievement.success) {
    res.status(200).json(updatedUserAchievement.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedUserAchievement.payload}` });
  }
})


module.exports = userAchievements;