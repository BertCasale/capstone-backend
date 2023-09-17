const express = require('express');
const lessonSectionsByLanguage = express.Router();

const {
  getAllLessonSectionsByLanguage,
  getAllLessonSectionsByLanguageByLessonId,
  createLessonSectionByLanguage,
  deleteLessonSectionByLanguage,
  updateLessonSectionByLanguage
} = require('../queries/lessonSectionsByLanguage.js');

//index route
lessonSectionsByLanguage.get('/:language_id', async (req, res) => {
  const { language_id } = req.params;
  const allLessonSectionsByLanguage = await getAllLessonSectionsByLanguage(language_id);

  if (allLessonSectionsByLanguage.success) {
    res.status(200).json(allLessonSectionsByLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLessonSectionsByLanguage.payload}` });
  }
})

//show route (changed to index of lesson sections, by lesson)
lessonSectionsByLessonIdByLanguage.get('/:lesson_id/:language_id', async (req, res) => {
  const { lesson_id, language_id } = req.params;
  const allLessonSectionsByLessonIdByLanguage = await getAllLessonSectionsByLanguageByLessonId(lesson_id, language_id);

  if (allLessonSectionsByLessonIdByLanguage.success) {
    res.status(200).json(allLessonSectionsByLessonIdByLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLessonSectionsByLessonIdByLanguage.payload}` });
  }
})

//create route
lessonSectionByLanguage.post('/', async (req, res) => {
  const newLessonSectionByLanguage = req.body;
  const createdLessonSectionByLanguage = await createLessonSectionByLanguage(newLessonSectionByLanguage);

  if (createdLessonSectionByLanguage.success) {
    res.status(200).json(createdLessonSectionByLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdLessonSectionByLanguage.payload}` });
  }
})

//delete route
lessonSectionByLanguage.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedLessonSectionByLanguage = await deleteLessonSectionByLanguage(id);

  if (deletedLessonSectionByLanguage.success) {
    res.status(200).json(deletedLessonSectionByLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedLessonSectionByLanguage.payload}` });
  }
})

//update route
lessonSectionByLanguage.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editLessonSectionByLanguage = req.body;
  const updatedLessonSectionByLanguage = await updateLessonSectionByLanguage(id, editLessonSectionByLanguage);

  if (updatedLessonSectionByLanguage.success) {
    res.status(200).json(updatedLessonSectionByLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedLessonSectionByLanguage.payload}` });
  }
})

module.exports = lessonSectionsByLanguage;