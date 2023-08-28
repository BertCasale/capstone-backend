const express = require('express');
const clientLessonsProgress = express.Router();

const { 
  getAllClientLessonsProgress,
  getAllClientLessonsProgressByClientId,
  createClientLessonProgress,
  deleteClientLessonProgress,
  updateClientLessonProgress
} = require('../queries/clientLessonsProgress.js');

//index route
clientLessonsProgress.get('/', async (req, res) => {
  const allClientLessonsProgress = await getAllClientLessonsProgress();

  if (allClientLessonsProgress.success) {
    res.status(200).json(allClientLessonsProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${allClientLessonsProgress.payload}` });
  }
})

//show route (replaced by index of client lesson progress by client)
clientLessonsProgress.get('/:id', async (req, res) => {
  const { id } = req.params;
  const allClientLessonsProgressByClientId = await getAllClientLessonsProgressByClientId(id);

  if (allClientLessonsProgressByClientId.success) {
    res.status(200).json(allClientLessonsProgressByClientId.payload);
  } else {
    res.status(400).json({ error: `Error: ${allClientLessonsProgressByClientId.payload}` });
  }
})

//create route
clientLessonsProgress.post('/', async (req, res) => {
  const newClientLessonProgress = req.body;
  const createdClientLessonProgress = await createClientLessonProgress(newClientLessonProgress);

  if (createdClientLessonProgress.success) {
    res.status(200).json(createdClientLessonProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdClientLessonProgress.payload}` });
  }
})

//delete route
clientLessonsProgress.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedClientLessonProgress = await deleteClientLessonProgress(id);

  if (deletedClientLessonProgress.success) {
    res.status(200).json(deletedClientLessonProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedClientLessonProgress.payload}` });
  }
})

//update route
clientLessonsProgress.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editClientLessonProgress = req.body;
  const updatedClientLessonProgress = await updateClientLessonProgress(id, editClientLessonProgress);

  if (updatedClientLessonProgress.success) {
    res.status(200).json(updatedClientLessonProgress.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedClientLessonProgress.payload}` });
  }
})


module.exports = clientLessonsProgress;