const express = require('express');
const clients = express.Router();

const { 
  getAllClients,
  getOneClient,
  createClient,
  deleteClient,
  updateClient
} = require('../queries/clients.js');

//index route
clients.get('/', async (req, res) => {
  const allClients = await getAllClients();

  if (allClients.success) {
    res.status(200).json(allClients.payload);
  } else {
    res.status(400).json({ error: `Error: ${allClients.payload}` });
  }
})

//show route
clients.get('/:id', async (req, res) => {
  const { id } = req.params;
  const oneClient = await getOneClient(id);

  if (oneClient.success) {
    res.status(200).json(oneClient.payload);
  } else {
    res.status(400).json({ error: `Error: ${oneClient.payload}` });
  }
})

//create route
clients.post('/', async (req, res) => {
  const newClient = req.body;
  const createdClient = await createClient(newClient);

  if (createdClient.success) {
    res.status(200).json(createdClient.payload);
  } else {
    res.status(400).json({ error: `Error: ${createdClient.payload}` });
  }
})

//delete route
clients.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const deletedClient = await deleteClient(id);

  if (deletedClient.success) {
    res.status(200).json(deletedClient.payload);
  } else {
    res.status(400).json({ error: `Error: ${deletedClient.payload}` });
  }
})

//update route
clients.put('/:id', async (req, res) => {
  const { id } = req.params;
  const editClient = req.body;
  const updatedClient = await updateClient(id, editClient);

  if (updatedClient.success) {
    res.status(200).json(updatedClient.payload);
  } else {
    res.status(400).json({ error: `Error: ${updatedClient.payload}` });
  }
})

module.exports = clients;