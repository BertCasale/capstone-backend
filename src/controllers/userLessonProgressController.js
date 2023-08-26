const express = require('express');
const userLessonProgress = express.Router();

const { 
  getAllUserLessonProgress,
  getAllUserLessonProgressByUserId,
  createUserLessonProgress,
  deleteUserLessonProgress,
  updateUserLessonProgress
} = require('../queries/userLessonProgress.js');

//index route
userLessonProgress.get('/', async (req, res) => {
  const allUserLessonProgress = await getAllUserLessonProgress();

  if (allUserLessonProgress.success) {
    res.status(200).json(allUserLessonProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${allUserLessonProgress.payload}` });
  }
})

//show route (replaced by index of user lesson progress by user)
userLessonProgress.get('/:id', async (req, res) => {
  const { id } = req.params;
  const allUserLessonProgressByUserId = await getAllUserLessonProgressByUserId(id);

  if (oneUserLessonProgress.success) {
    res.status(200).json(allUserLessonProgressByUserId.payload);
  } else {
    res.status(400).json({ error: `Error: ${allUserLessonProgressByUserId.payload}` });
  }
})

//create route
userLessonProgress.post('/', async (req, res) => {
  const newUserLessonProgress = req.body;
  const createdUserLessonProgress = await createUserLessonProgress(newUserLessonProgress);

  if (createdUserLessonProgress.success) {
    res.status(200).json(createdUserLessonProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdUserLessonProgress.payload}` });
  }
})

//delete route
userLessonProgress.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedUserLessonProgress = await deleteUserLessonProgress(id);

  if (deletedUserLessonProgress.success) {
    res.status(200).json(deletedUserLessonProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedUserLessonProgress.payload}` });
  }
})

//update route
userLessonProgress.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editUserLessonProgress = req.body;
  const updatedUserLessonProgress = await updateUserLessonProgress(id, editUserLessonProgress);

  if (updatedUserLessonProgress.success) {
    res.status(200).json(updatedUserLessonProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedUserLessonProgress.payload}` });
  }
})


module.exports = userLessonProgress;