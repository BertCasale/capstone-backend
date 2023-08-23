const express = require('express');
const lessons = express.Router();

const { 
    getAllLessons,
    getOneLesson,
    createLesson,
    deleteLesson,
    updateLesson
} = require('../queries/lessons.js');

//index route
lessons.get('/', async (req, res) => {
  const allLessons = await getAllLessons();

  if (allLessons.success) {
    res.status(200).json(allLessons.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLessons.payload}` });
  }
})

//show route
lessons.get('/:id', async (req, res) => {
  const { id } = req.params;
  const oneLesson = await getOneLesson(id);

  if (oneLesson.success) {
    res.status(200).json(oneLesson.payload);
  } else {
    res.status(400).json({ error: `Error: ${oneLesson.payload}` });
  }
})

//create route
lessons.post('/', async (req, res) => {
  const newLesson = req.body;
  const createdLesson = await createLesson(newLesson);

  if (createdLesson.success) {
    res.status(200).json(createdLesson.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdLesson.payload}` });
  }
})

//delete route
lessons.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedLesson = await deleteLesson(id);

  if (deletedLesson.success) {
    res.status(200).json(deletedLesson.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedLesson.payload}` });
  }
})

//update route
lessons.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editLesson = req.body;
  const updatedLesson = await updateLesson(id, editLesson);

  if (updatedLesson.success) {
    res.status(200).json(updatedLesson.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedLesson.payload}` });
  }
})


module.exports = lessons;