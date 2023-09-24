const express = require('express');
const lessonTopContent2 = express.Router();

const { 
  getAllLessonsTopContent2,
  getOneLessonTopContent2,
  createLessonTopContent2,
  deleteLessonTopContent2,
  updateLessonTopContent2
} = require('../queries/lessonTopContent2.js');

//index route
lessonTopContent2.get('/', async (req, res) => {
  const allLessonsTopContent2 = await getAllLessonsTopContent2();

  if (allLessonsTopContent2.success) {
    res.status(200).json(allLessonsTopContent2.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLessonsTopContent2.payload}` });
  }
})

//show route
lessonTopContent2.get('/:language_id/:lesson_id', async (req, res) => {
  const { language_id, lesson_id } = req.params;
  const oneLessonTopContent2 = await getOneLessonTopContent2(language_id, lesson_id);

  if (oneLessonTopContent2.success) {
    res.status(200).json(oneLessonTopContent2.payload);
  } else {
    res.status(400).json({ error: `Error: ${oneLessonTopContent2.payload}` });
  }
})

//create route
lessonTopContent2.post('/', async (req, res) => {
  const newLessonTopContent2 = req.body;
  const createdLessonTopContent2 = await createLessonTopContent2(newLessonTopContent2);

  if (createdLessonTopContent2.success) {
    res.status(200).json(createdLessonTopContent2.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdLessonTopContent2.payload}` });
  }
})

//delete route
lessonTopContent2.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedLessonTopContent2 = await deleteLessonTopContent2(id);

  if (deletedLessonTopContent2.success) {
    res.status(200).json(deletedLessonTopContent2.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedLessonTopContent2.payload}` });
  }
})

//update route
lessonTopContent2.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editLessonTopContent2 = req.body;
  const updatedLessonTopContent2 = await updateLessonTopContent2(id, editLessonTopContent2);

  if (updatedLessonTopContent2.success) {
    res.status(200).json(updatedLessonTopContent2.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedLessonTopContent2.payload}` });
  }
})


module.exports = lessonTopContent2;