const express = require('express');
const ads = express.Router();

const { 
    getAllAds,
    getOneAd,
    createAd,
    deleteAd,
    updateAd
} = require('../queries/ads.js');

//index route
ads.get('/', async (req, res) => {
  const allAds = await getAllAds();

  if (allAds.success) {
    res.status(200).json(allAds.payload);
  } else {
    res.status(400).json({ error: `Error: ${allAds.payload}` });
  }
})

//show route
ads.get('/:id', async (req, res) => {
  const { id } = req.params;
  const oneAd = await getOneAd(id);

  if (oneAd.success) {
    res.status(200).json(oneAd.payload);
  } else {
    res.status(400).json({ error: `Error: ${oneAd.payload}` });
  }
})

//create route
ads.post('/', async (req, res) => {
  const newAd = req.body;
  const createdAd = await createAd(newAd);

  if (createdAd.success) {
    res.status(200).json(createdAd.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdAd.payload}` });
  }
})

//delete route
ads.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedAd = await deleteAd(id);

  if (deletedAd.success) {
    res.status(200).json(deletedAd.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedAd.payload}` });
  }
})

//update route
ads.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editAd = req.body;
  const updatedAd = await updateAd(id, editAd);

  if (updatedAd.success) {
    res.status(200).json(updatedAd.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedAd.payload}` });
  }
})

module.exports = ads;