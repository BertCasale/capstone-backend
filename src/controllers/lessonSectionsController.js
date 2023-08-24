const express = require('express');
const lessonSections = express.Router();

const {
    getAllLessonSections,
    getAllLessonSectionsByLessonId,
    createLessonSection,
    deleteLessonSection,
    updateLessonSection
} = require('../queries/lessonSections.js');

//index route
lessonSections.get('/', async (req, res) => {
    const allLessonSections = await getAllLessonSections();

    if (allLessonSections.success) {
        res.status(200).json(allLessonSections.payload);
    } else {
        res.status(400).json({ error: `Error: ${allLessonSections.payload}` });
    }
})

//show route (changed to index of lesson sections, by lesson)
lessonSections.get('/:id', async (req, res) => {
    const { id } = req.params;
    const allLessonSectionsByLessonId = await getAllLessonSectionsByLessonId(id);

    if (allLessonSectionsByLessonId.success) {
        res.status(200).json(allLessonSectionsByLessonId.payload);
    } else {
        res.status(400).json({ error: `Error: ${allLessonSectionsByLessonId.payload}` });
    }
})

//create route
lessonSections.post('/', async (req, res) => {
    const newLessonSection = req.body;
    const createdLessonSection = await createLessonSection(newLessonSection);

    if (createdLessonSection.success) {
        res.status(200).json(createdLessonSection.payload);
    } else {
        res.status(400).json({ error: `Error: ${createdLessonSection.payload}` });
    }
})

//delete route
lessonSections.delete('/:id', async (req, res) => {
    const { id } = req.params;
    const deletedLessonSection = await deleteLessonSection(id);

    if (deletedLessonSection.success) {
        res.status(200).json(deletedLessonSection.payload);
    } else {
        res.status(400).json({ error: `Error: ${deletedLessonSection.payload}` });
    }
})

//update route
lessonSections.put('/:id', async (req, res) => {
    const { id } = req.params;
    const editLessonSection = req.body;
    const updatedLessonSection = await updateLessonSection(id, editLessonSection);

    if (updatedLessonSection.success) {
        res.status(200).json(updatedLessonSection.payload);
    } else {
        res.status(400).json({ error: `Error: ${updatedLessonSection.payload}` });
    }
})

module.exports = lessonSections;