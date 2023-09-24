const express = require('express');
const lessons2 = express.Router();

const { 
    getAllLessons2,
    getOneLesson2,
    createLesson2,
    deleteLesson2,
    updateLesson2
} = require('../queries/lessons2.js');

//index route
lessons2.get('/', async (req, res) => {
  const allLessons2 = await getAllLessons2();

  if (allLessons2.success) {
    res.status(200).json(allLessons2.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLessons2.payload}` });
  }
})

//show route
lessons2.get('/:id', async (req, res) => {
  const { id } = req.params;
  const oneLesson2 = await getOneLesson2(id);

  if (oneLesson2.success) {
    res.status(200).json(oneLesson2.payload);
  } else {
    res.status(400).json({ error: `Error: ${oneLesson2.payload}` });
  }
})

//create route
lessons2.post('/', async (req, res) => {
  const newLesson2 = req.body;
  const createdLesson2 = await createLesson2(newLesson2);

  if (createdLesson2.success) {
    res.status(200).json(createdLesson2.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdLesson2.payload}` });
  }
})

//delete route
lessons2.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedLesson2 = await deleteLesson2(id);

  if (deletedLesson2.success) {
    res.status(200).json(deletedLesson2.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedLesson2.payload}` });
  }
})

//update route
lessons2.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editLesson2 = req.body;
  const updatedLesson2 = await updateLesson2(id, editLesson);

  if (updatedLesson2.success) {
    res.status(200).json(updatedLesson2.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedLesson2.payload}` });
  }
})

module.exports = lessons2;