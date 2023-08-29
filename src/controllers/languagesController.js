const express = require('express');
const languages = express.Router();

const { 
    getAllLanguages,
    getOneLanguage,
    createLanguage,
    deleteLanguage,
    updateLanguage
} = require('../queries/languages.js');

//index route
languages.get('/', async (req, res) => {
  const allLanguages = await getAllLanguages();

  if (allLanguages.success) {
    res.status(200).json(allLanguages.payload);
  } else {
    res.status(400).json({ error: `Error: ${allLanguages.payload}` });
  }
})

//show route
languages.get('/:id', async (req, res) => {
  const { id } = req.params;
  const oneLanguage = await getOneLanguage(id);

  if (oneLanguage.success) {
    res.status(200).json(oneLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${oneLanguage.payload}` });
  }
})

//create route
languages.post('/', async (req, res) => {
  const newLanguage = req.body;
  const createdLanguage = await createLanguage(newLanguage);

  if (createdLanguage.success) {
    res.status(200).json(createdLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdLanguage.payload}` });
  }
})

//delete route
languages.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedLanguage = await deleteLanguage(id);

  if (deletedLanguage.success) {
    res.status(200).json(deletedLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedLanguage.payload}` });
  }
})

//update route
languages.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editLanguage = req.body;
  const updatedLanguage = await updateLanguage(id, editLanguage);

  if (updatedLanguage.success) {
    res.status(200).json(updatedLanguage.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedLanguage.payload}` });
  }
})

module.exports = languages;