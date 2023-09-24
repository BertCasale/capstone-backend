const express = require('express');
const lessonSections2 = express.Router();

const {
  getAllLessonSections2,
  getAllLessonSectionsByLanguageByLesson2,
  createLessonSection2,
  deleteLessonSection2,
  updateLessonSection2
} = require('../queries/lessonSections2.js');

//index route
lessonSections2.get('/', async (req, res) => {
  const allLessonSections2 = await getAllLessonSections2();

  if (allLessonSections2.success) {
    res.status(200).json(allLessonSections2.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLessonSections2.payload}` });
  }
})

//show route (changed to index of lesson sections, by lesson)
lessonSections2.get('/:language_id/:lessons2_id', async (req, res) => {
  const { language_id, lessons2_id } = req.params;
  //correctly prints to terminal
  //console.log("lessonID", lesson_id, "languageID", language_id);
  const allLessonSectionsByLanguageByLesson2 = await getAllLessonSectionsByLanguageByLesson2(language_id, lessons2_id);

  if (allLessonSectionsByLanguageByLesson2.success) {
    res.status(200).json(allLessonSectionsByLanguageByLesson2.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLessonSectionsByLanguageByLesson2.payload}` });
  }
})

//create route
lessonSections2.post('/', async (req, res) => {
  const newLessonSection2 = req.body;
  const createdLessonSection2 = await createLessonSection2(newLessonSection2);

  if (createdLessonSection2.success) {
    res.status(200).json(createdLessonSection2.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdLessonSection2.payload}` });
  }
})

//delete route
lessonSections2.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedLessonSection2 = await deleteLessonSection2(id);

  if (deletedLessonSection2.success) {
    res.status(200).json(deletedLessonSection2.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedLessonSection2.payload}` });
  }
})

//update route
lessonSections2.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editLessonSection2 = req.body;
  const updatedLessonSection2 = await updateLessonSection2(id, editLessonSection2);

  if (updatedLessonSection2.success) {
    res.status(200).json(updatedLessonSection2.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedLessonSection2.payload}` });
  }
})

module.exports = lessonSections2;